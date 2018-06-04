#ifndef HUFFMAN_BASE_WRITER_H
#define HUFFMAN_BASE_WRITER_H

#include <fstream>
#include <cstdlib>

struct abstract_writer {
    virtual ~abstract_writer() {}

    virtual void write(unsigned char ch) = 0;

    virtual abstract_writer& operator<<(unsigned char ch) = 0;
};


#endif //HUFFMAN_BASE_WRITER_H
