#include "huffman_library.h"

counter::counter() : frequencies(CHARSET_SIZE, 0) {}

counter::~counter() {}

void counter::inc(unsigned char ch) {
    frequencies[ch]++;
}

uint64_t counter::get(unsigned char ch) {
    return frequencies[ch];
}

std::vector<uint64_t> counter::get_counted() {
    return frequencies;
}