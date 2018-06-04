#include <iostream>
#include "huffman_library.h"

typedef huffman_tree::node node;

void set(std::vector<code_word> &result, uint64_t value, uint64_t cur_hight, std::shared_ptr<node> cur_node) {
    if (!cur_node) return;
    if (!cur_node->left && !cur_node->right) {
        result[cur_node->char_value] = { value, cur_hight };
    } else {
        set(result, value << 1, cur_hight + 1, cur_node->left);
        set(result, (value << 1) | 1, cur_hight + 1, cur_node->right);
    }
}

std::vector<code_word> create_code_list(huffman_tree &tree) {
    std::vector<code_word> result(CHARSET_SIZE);
    set(result, 0, 0, tree.root);
    tree.set_zero_code();
    return result;
}

