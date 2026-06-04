Theory

A lexical analyzer is the first phase of a compiler that reads source code character by character and converts it into meaningful units called tokens. These tokens help the compiler understand the structure of the program.

Common token types in the C language include:

* Keywords (`int`, `float`, `if`, `return`)
* Identifiers (variable and function names)
* Operators (`+`, `-`, `*`, `/`, `=`)
* Numbers (`10`, `25`, etc.)
* Separators and special symbols (`;`, `(`, `)`, `{`, `}`)

Flex (Fast Lexical Analyzer Generator) is a tool used to automatically generate lexical analyzers. A Flex program uses regular expressions to define token patterns and corresponding actions. The `.l` file in Flex is divided into three sections:

1. Definitions
2. Rules
3. User Code

During execution, Flex scans the input program and matches patterns with predefined rules. When a token is recognized, the corresponding action is executed, such as printing the token type. The generated scanner helps in identifying and categorizing different components of source code efficiently.

output 
<img width="1227" height="1247" alt="image" src="https://github.com/user-attachments/assets/57170f9e-e771-4db8-a82f-ebbf5f336483" />
