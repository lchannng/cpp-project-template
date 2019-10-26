#!/bin/sh

find src samples tests \
    \( -name '*.cc' -o -name '*.cpp' -o -name '*.hpp' -o -name '*.ipp' -o -name '*.c' -o -name '*.h' \) \
    -not \( \
        -path 'src/dir1/*' \
        -o -path 'src/dir2/*' \
    \) \
    -exec clang-format -i {} ';'
    #-exec echo {} ';'
