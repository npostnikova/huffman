#include "huffman_library.h"
#include <utility>
#include <cstring>
#include <map>
#include <cstdlib>
#include <iostream>
#include <bitset>

typedef huffman_tree::node node;

void create_tree(std::vector<bool> &tree_structure, size_t &index, std::shared_ptr<node> cur_node, abstract_reader &reader) {
    if (index + 1 < tree_structure.size() && tree_structure[index++]) {
        cur_node->left = std::make_shared<node>();
        create_tree(tree_structure, index, cur_node->left, reader);
    } else {
        cur_node->char_value = reader.get_next();
        return;
    }
    cur_node->right = std::make_shared<node>();
    create_tree(tree_structure, index, cur_node->right, reader);
}

void decode_tree(huffman_tree &tree, abstract_reader &reader) {
    unsigned char a, c;
    uint16_t number_of_bits;
    reader >> a >> c;
    number_of_bits = (static_cast<uint16_t>(a) << 8) + c;
    auto number_of_blocks = static_cast<size_t>(number_of_bits / 8 + (number_of_bits % 8 > 0));
    if (!number_of_bits) {
        return;
    }
    std::vector<unsigned char> tmp(number_of_blocks);
    std::vector<bool> bits;
    bits.reserve(number_of_blocks * 8);

    for (size_t i = 0; i < number_of_blocks; i++) {
        tmp[i] = reader.get_next();
    }
    for (size_t i = 0; i < number_of_blocks; i++) {
        for (size_t j = 8; j > 0; j--) {
            bits.push_back(static_cast<bool>(tmp[i] & (1 << (j - 1))));
        }
    }
    bits.erase(bits.begin() + number_of_bits, bits.end());

    tree.root = std::make_shared<node>();
    size_t index = 0;
    create_tree(bits, index, tree.root, reader);
    tree.set_zero_code();
}

void decompress(abstract_reader &reader, abstract_writer &writer) {
    huffman_tree tree;
    decode_tree(tree, reader);
    std::shared_ptr<node> cur_node = tree.root;

    int bit;

    bits_getter get_structure(reader);

    while ((bit = get_structure.get_bit()) != -1) {
        if (!cur_node->left) {
            if (cur_node->char_value == tree.zero_code) {
                if (bit) {
                    writer << cur_node->char_value;
                }
                cur_node = tree.root;
                continue;
            }
            writer << cur_node->char_value;
            cur_node = tree.root;
        }
        if (bit) {
            cur_node = cur_node->right;
        } else {
            cur_node = cur_node->left;
        }
    }
    if (cur_node && cur_node->char_value != tree.zero_code && !cur_node->left) {
        writer << cur_node->char_value;
    }
}





