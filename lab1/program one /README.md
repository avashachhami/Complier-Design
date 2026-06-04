Theory

The C compilation process converts human-readable source code into an executable program through several stages in the GCC toolchain. Each stage performs a specific task to transform the program step by step.

1. **Preprocessing**
   The preprocessor handles directives such as `#include` and `#define`. It expands header files and replaces macros before passing the modified code to the compiler.

2. **Compilation**
   In this stage, the compiler translates the preprocessed C code into assembly language. It also checks for syntax and semantic errors in the program.

3. **Assembly**
   The assembler converts assembly language instructions into machine code and generates an object file (`.o`), which contains binary instructions understandable by the computer.

4. **Linking**
   The linker combines the object file with required system libraries and functions such as `printf()` and `scanf()` from the Standard C Library to produce the final executable file.

This compilation pipeline helps programmers understand how high-level C programs are transformed into executable machine-level instructions.

OUTPUT
lab 1 code 
<img width="1077" height="497" alt="1" src="https://github.com/user-attachments/assets/124a3966-cc5c-4f1a-9e40-67e6500f4b45" />




