Theory

A lexical analyzer is an important phase of a compiler that scans source code and converts it into meaningful tokens. Besides recognizing tokens, a lexical analyzer can also count the occurrence of each token type, which helps in later compiler stages such as syntax analysis, optimization, and symbol table management.

In this experiment, Flex (Fast Lexical Analyzer Generator) is used to build a token counter for C-like source code. Flex uses regular expressions to define patterns for different token categories such as:

* Keywords
* Identifiers
* Numbers
* Operators
* Logical Operators
* Delimiters
* Comments
* Strings

Each time a token is matched, the corresponding Flex action is executed to print the token and increase its counter. Counters are maintained using integer variables declared in the definitions section of the Flex program.

The lexical analyzer processes the input code line by line and generates a summary showing the total number of each token type detected. This demonstrates how compilers analyze source code efficiently using pattern matching and automated scanner generation tools like Flex.

OUTPUT
<img width="1542" height="1140" alt="image" src="https://github.com/user-attachments/assets/9a377391-53b6-4fa1-a4c7-4f38048afa73" />
