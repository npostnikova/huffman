#ifndef HUFFMAN_BITS_GETTER_H
#define HUFFMAN_BITS_GETTER_H

#include "abstract_reader.h"

struct bits_getter {
    bits_getter() = delete;

    explicit bits_getter(abstract_reader &f) : f(f), c(0), index(0) {}

    ~bits_getter() {}

    bits_getter& operator=(const bits_getter&) = delete;

    int get_bit() {
        if (index) {
            return (c & (1 << (--index))) > 0;
        } else {
            if (f.is_end()) return -1;
            f >> c;
            index = 8;
            return get_bit();
        }
    }
private:
    abstract_reader &f;

    unsigned char c;

    uint8_t index;
};


#endif //HUFFMAN_BITS_GETTER_H
