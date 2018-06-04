#include "huffman_library.h"
#include <utility>
#include <cstring>
#include <map>
#include <iostream>
#include <vector>

using namespace std;

typedef huffman_tree::node node;

vector<uint64_t> count(abstract_reader &reader) {
    counter num_of_symbols;

    while (!reader.is_end()) {
        unsigned char c;
        reader >> c;
        num_of_symbols.inc(c);
    }
    return num_of_symbols.get_counted();
}

void write64(abstract_writer &w, uint64_t buffer) {
    uint8_t tmp = 64;
    while (tmp >= 8) {
        tmp -= 8;
        w << (buffer >> tmp);
        buffer &= (1ull << tmp) - 1;
    }
}

void get_tree_structure(vector<bool> &structure, vector<unsigned char> &leafs, std::shared_ptr<node> cur) {
    if (cur->left) {
        structure.push_back(true);
        get_tree_structure(structure, leafs, cur->left);
        structure.push_back(false);
    } else {
        leafs.push_back(cur->char_value);
    }
    if (cur->right) {
        get_tree_structure(structure, leafs, cur->right);
    }
}

void print_tree(abstract_writer &writer, const huffman_tree &tree) {
    if (!tree.root) {
        writer << 0 << 0;
        return;
    }
    vector<bool> structure;
    vector<unsigned char> leafs;
    structure.reserve(CHARSET_SIZE * 4);
    leafs.reserve(CHARSET_SIZE);

    get_tree_structure(structure, leafs, tree.root);

    writer << structure.size() / 256 << (structure.size() % 256);

    size_t index = 0;

    for (size_t i = 0; i < structure.size() / 8 + (structure.size() % 8 > 0); i++) {
        uint8_t u = 0;
        for (size_t j = 8; j > 0; j--) {
            if (index < structure.size()) {
                u |= (structure[index++]  << (j - 1));
            }
        }
        writer << u;
    }
    for (auto leaf : leafs) {
        writer << leaf;
    }
}

void compress(abstract_reader &reader, abstract_writer &writer, vector<uint64_t> counted) {
    huffman_tree tree(counted);

    vector<code_word> codes(create_code_list(tree));

    print_tree(writer, tree);

    uint64_t len = 0;
    uint64_t mask = 0;
    unsigned char c;

    while (!reader.is_end()) {
        reader >> c;
        if (len + codes[c].len + !codes[c].value > 64) {
            mask <<= 64 - len;
            mask |= codes[c].value >> (codes[c].len - (64 - len));
            write64(writer, mask);
            mask = static_cast<uint64_t>(0) | (codes[c].value & ((1 << (codes[c].len - (64 - len))) - 1));
            if (!codes[c].value) {
                mask = (mask << 1) | 1;
            }
            len = codes[c].len - (64 - len) + !codes[c].value;
        } else {
            len += codes[c].len + !codes[c].value;
            mask <<= codes[c].len;
            if (!codes[c].value) {
                mask = (mask << 1) | 1;
            } else {
                mask |= codes[c].value;
            }
        }
    }
    if (len != 0) {
        mask <<= 64 - len;
        write64(writer, mask);
    }
}
