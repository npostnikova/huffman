#ifndef HUFFMAN_BASE_READER_H
#define HUFFMAN_BASE_READER_H

#include <fstream>
#include <cstdlib>

struct abstract_reader {
    virtual ~abstract_reader() {}

    virtual unsigned char get_next() = 0;

    virtual bool is_end() = 0;

    virtual abstract_reader& operator>>(unsigned char &ch) = 0;
};


#endif //HUFFMAN_BASE_READER_H
