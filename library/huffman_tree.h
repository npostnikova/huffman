#ifndef HUFFMAN_HUFFMAN_TREE_H
#define HUFFMAN_HUFFMAN_TREE_H

#include <cstdint>
#include <cstdlib>
#include <memory>
#include <vector>

struct huffman_tree {
    struct node {
        unsigned char char_value;

        size_t freq;

        std::shared_ptr<node> left;

        std::shared_ptr<node> right;

        node() : char_value(0), freq(0), left(nullptr), right(nullptr) {}

        node(unsigned char value, size_t freq, std::shared_ptr<node> l = nullptr, std::shared_ptr<node> r = nullptr) : char_value(value), freq(freq), left(l), right(r) {}

        ~node() {}
    };

    huffman_tree();

    explicit huffman_tree(const std::vector<uint64_t> &freq);

    ~huffman_tree();

    huffman_tree& operator=(const huffman_tree&) = delete;

    void build(const std::vector<uint64_t> &freq);

    void set_zero_code();

    unsigned char zero_code = 0;

    std::shared_ptr<node> root;
};

#endif //HUFFMAN_HUFFMAN_TREE_H
