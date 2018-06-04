#ifndef HUFFMAN_CODE_WORD_H
#define HUFFMAN_CODE_WORD_H

#include <cstdlib>

struct code_word {
    uint64_t value;

    uint64_t len;

    code_word(uint64_t value = 0, uint64_t len = 0) : value(value), len(len) {}

    ~code_word() {}
};

#endif //HUFFMAN_CODE_LIST_H
