#ifndef HUFFMAN_COUNTER_H
#define HUFFMAN_COUNTER_H

#include <cstdio>
#include <vector>
#include <cstdint>

struct counter {
    counter();

    ~counter();

    void inc(unsigned char ch);

    uint64_t get(unsigned char ch);

    std::vector<uint64_t> get_counted();

private:
    std::vector<uint64_t> frequencies;
};


#endif //HUFFMAN_COUNTER_H
