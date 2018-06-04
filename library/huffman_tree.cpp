#include "huffman_tree.h"
#include <set>
#include <iostream>
#include <cstdlib>

typedef huffman_tree::node node;

huffman_tree::huffman_tree() : root(nullptr) {}

huffman_tree::huffman_tree(const std::vector<uint64_t> &freq) : root(nullptr) {
    build(freq);
}

huffman_tree::~huffman_tree() {}

auto cmp = [] (std::shared_ptr<node> l, std::shared_ptr<node> r) {
    return l->freq < r->freq;
};

void sort(const std::vector<uint64_t> &freq, std::multiset<std::shared_ptr<node>, decltype(cmp)> &nodes) {
    for (size_t i = 0; i < freq.size(); i++) {
        if (freq[i]) {
            nodes.insert(std::make_shared<node>(node(i, freq[i])));
        }
    }
}

void huffman_tree::build(const std::vector<uint64_t> &freq) {
    std::multiset<std::shared_ptr<node>, decltype(cmp)> sorted_freq(cmp);
    sort(freq, sorted_freq);
    while (sorted_freq.size() > 1) {
        std::shared_ptr<node> l = *sorted_freq.begin();
        sorted_freq.erase(sorted_freq.begin());

        std::shared_ptr<node> r = *sorted_freq.begin();
        sorted_freq.erase(sorted_freq.begin());

        sorted_freq.insert(std::make_shared<node>(node(0, l->freq + r->freq, l, r)));
    }
    root = *sorted_freq.begin();
}

void huffman_tree::set_zero_code() {
    if (!root)
        return;
    std::shared_ptr<node> cur_node = root;
    while (cur_node->left) {
        cur_node = cur_node->left;
    }
    zero_code = cur_node->char_value;
}