#!/bin/bash

# Compile each .c file into a .o file
gcc -c *.c

# Create the static library liball.a from all .o files
ar rc liball.a *.o

# Index the static library for faster symbol lookup
ranlib liball.a

# Clean up the intermediate .o files
rm *.o
