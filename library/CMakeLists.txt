cmake_minimum_required(VERSION 3.8)

project(HUFFMAN_LIBRARY)

set(CMAKE_CXX_STANDARD 11)

set(LIBRARY_FILES
        counter.h
        counter.cpp
        huffman_tree.cpp
        huffman_tree.h
        code_word.h
        code_list.cpp
        code_list.h
        huffman_library.h
        huffman_compressor.cpp
        huffman_decompressor.cpp
        huffman_compressor_decompressor.h

        abstract_reader.h
        abstract_writer.h
        bits_getter.h
        )

add_library(huffman_lib STATIC ${LIBRARY_FILES} )
