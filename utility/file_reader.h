#ifndef HUFFMAN_FILE_READER_H
#define HUFFMAN_FILE_READER_H


#include <fstream>
#include "abstract_reader.h"

struct file_reader : abstract_reader {
    file_reader();

    explicit file_reader(const std::string &file_name);

    ~file_reader();

    void open(const std::string &file_name);
    
    void close();

    bool is_opened();

    bool is_eof();

    void buff_read();

    unsigned char get_next();

    bool is_end();

    file_reader& operator>>(unsigned char &ch);

private:
    static const size_t BUFFER_SIZE = 131072; // 2^17

    std::string file_name;

    std::ifstream reader;

    bool opened;

    char buffer[BUFFER_SIZE];

    size_t begin_index;

    size_t end_index;

    bool eof;
};


#endif //HUFFMAN_FILE_READER_H
