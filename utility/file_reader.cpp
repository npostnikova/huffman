#include <iostream>
#include "file_reader.h"

file_reader::file_reader() : file_name(), reader(), opened(false), begin_index(0), end_index(0), eof(false) {}

file_reader::file_reader(const std::string &file_name) : file_name(file_name), reader(file_name,std::ifstream::binary),
                                                                 opened(true), begin_index(0), end_index(0) {
    if (!reader) {
        throw std::invalid_argument("the file can't be opened");
    }
    eof = (reader.peek() == std::ifstream::traits_type::eof());
}

file_reader::~file_reader() {
    if (is_opened()) {
        reader.close();
    }
}

bool file_reader::is_opened() {
    return opened;
}

void file_reader::open(const std::string &file_name) {
    if (is_opened()) {
        std::cerr << file_name << " was not opened.\n";
        std::cerr << "The file_reader is already busy with the file: " << this->file_name << std::endl;
        return;
    }
    this->file_name = file_name;
    reader.open(file_name, std::ifstream::binary);
    opened = true;
    eof = reader.eof();
    if (!reader) {
        throw std::invalid_argument("the file can't be opened");
    }
}

void file_reader::close() {
    if (is_opened()) {
        opened = false;
        begin_index = end_index = 0;
        eof = false;
        reader.close();
    }
}

void file_reader::buff_read() {
    if (begin_index == end_index) {
        begin_index = 0;
        reader.read(buffer, BUFFER_SIZE);
        eof = (end_index = static_cast<size_t>(reader.gcount())) != BUFFER_SIZE;
    }
}

unsigned char file_reader::get_next() {
    buff_read();
    return buffer[begin_index++];
}

bool file_reader::is_eof() {
    return begin_index == end_index && eof;
}

bool file_reader::is_end() {
    return is_eof();
}

file_reader& file_reader::operator>>(unsigned char &ch) {
    ch = get_next();
    return *this;
}