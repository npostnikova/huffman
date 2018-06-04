@echo off

for /r %%i in (*) do (Huffman compress %%i 1
Huffman decompress 1 2
@fc %%i 2)