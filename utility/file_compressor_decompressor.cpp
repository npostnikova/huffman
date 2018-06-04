#include <iostream>
#include <vector>
#include "huffman_compressor_decompressor.h"
#include "file_reader.h"
#include "file_writer.h"

void compress_file(std::string const& from_name, std::string const& to_name) {
    file_reader reader(from_name);
    file_writer writer(to_name);
    std::vector<uint64_t> vec = count(reader);
    reader.close();
    reader.open(from_name);

    compress(reader, writer, vec);

    reader.close();
    writer.close();
}

void decompress_file(std::string const& from_name, std::string const& to_name) {
    file_reader reader(from_name);
    file_writer writer(to_name);

    decompress(reader, writer);

    reader.close();
    writer.close();
}