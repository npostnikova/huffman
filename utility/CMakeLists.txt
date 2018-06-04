cmake_minimum_required(VERSION 3.8)
project(UTILITY)

include_directories(${HUFFMAN_LIBRARY_SOURCE_DIR})

set(CMAKE_CXX_STANDARD 11)

set(UTIL_SOURCE
        main.cpp
        file_reader.cpp
        file_reader.h
        file_writer.cpp
        file_writer.h
        file_compressor_decompressor.cpp
        file_compressor_decompressor.h
        )
add_executable(Huffman ${UTIL_SOURCE})
target_link_libraries(Huffman huffman_lib)

