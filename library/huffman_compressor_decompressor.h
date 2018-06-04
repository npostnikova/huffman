#ifndef HUFFMAN_HUFFMAN_COMPRESSOR_DECOMPRESSOR_H
#define HUFFMAN_HUFFMAN_COMPRESSOR_DECOMPRESSOR_H

#include <string>
#include <cstdlib>
#include <vector>
#include "abstract_reader.h"
#include "abstract_writer.h"

void compress(abstract_reader &reader, abstract_writer &writer, std::vector<uint64_t> counted);

void decompress(abstract_reader &reader, abstract_writer &writer);

std::vector<uint64_t> count(abstract_reader &reader);

#endif //HUFFMAN_HUFFMAN_COMPRESSOR_DECOMPRESSOR_H
