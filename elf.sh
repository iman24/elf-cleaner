#!/data/data/com.termux/files/usr/bin/bash

OLD=$IFS
IFS=$'\n'

for i in $(find $PREFIX/lib/ -type f -iname "*.so*")
do
termux-elf-cleaner "$i"
done

IFS=$OLD

