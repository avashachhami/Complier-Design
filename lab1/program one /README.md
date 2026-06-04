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

lab1.exe output
<img width="2541" height="1407" alt="image" src="https://github.com/user-attachments/assets/28eaa4fa-500d-46a3-bcb5-60bc41a1c612" />

lab1.i output
<img width="2177" height="1221" alt="image" src="https://github.com/user-attachments/assets/c2fed079-5933-4fe5-ae89-60049e4cf59d" />

lab1.o output
<img width="2141" height="996" alt="image" src="https://github.com/user-attachments/assets/b6b06a53-4d8a-4b49-9a29-36c8dbde8300" />

lab1.s output 
<img width="1987" height="1197" alt="image" src="https://github.com/user-attachments/assets/b461d318-6051-4593-9f4d-85bff72dbbf9" />

