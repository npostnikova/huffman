#include <string>
#include "huffman_library.h"

#ifndef HUFFMAN_FILE_COMPRESSOR_DECOMPRESSOR_H
#define HUFFMAN_FILE_COMPRESSOR_DECOMPRESSOR_H

void compress_file(std::string const& from_name, std::string const& to_name);

void decompress_file(std::string const& from_name, std::string const& to_name);

#endif //HUFFMAN_FILE_COMPRESSOR_DECOMPRESSOR_H
