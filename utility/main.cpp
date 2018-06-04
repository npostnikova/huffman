#include <iostream>
#include "huffman_compressor_decompressor.h"
#include "file_compressor_decompressor.h"

using namespace std;


int main(int argc, char ** argv) {
    if (argc != 4) {
        cerr << "Please, enter <mode = compress|decompress> <input_file_name> <output_file_name>" << argc << endl;
        return 0;
    }

    string mode = argv[1];
    string input = argv[2];
    string output = argv[3];

    try {
        if (mode == "compress") {
            compress_file(input, output);
        } else if (mode == "decompress") {
            decompress_file(input, output);
        } else {
            cerr << "Incorrect mode: " << mode << endl;
            return 0;
        }
    } catch (std::invalid_argument const &e) {
        cerr << "Please, check correctness of entered file names" << endl;
        return 0;
    }

    cout << "==========================\n";
    cout << "Huffman " << mode << "ions of the file " << input << " is in the file " << output << endl;
}