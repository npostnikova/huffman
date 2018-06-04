#ifndef HUFFMAN_CODE_LIST_H
#define HUFFMAN_CODE_LIST_H

#include <vector>
#include "code_word.h"
#include "huffman_tree.h"

std::vector<code_word> create_code_list(huffman_tree &tree);

#endif //HUFFMAN_CODE_LIST_H
