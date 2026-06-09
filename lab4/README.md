# Theory

An Arithmetic Expression Evaluator is a program that analyzes and computes mathematical expressions according to predefined grammar rules. Compiler construction tools such as Flex and Bison are commonly used to implement lexical analysis and syntax analysis phases.

Flex (Fast Lexical Analyzer Generator) is used to create a lexical analyzer that scans the input and converts it into tokens such as numbers, operators (+, -, *, /), and parentheses. These tokens are then passed to the parser.

Bison is a parser generator that uses context-free grammar rules to analyze the sequence of tokens produced by Flex. It checks whether the input expression follows the defined grammar and performs semantic actions to evaluate the expression.

The arithmetic evaluator supports:

Addition (+)
Subtraction (-)
Multiplication (*)
Division (/)
Parentheses for grouping expressions

The grammar is designed to maintain correct operator precedence and associativity, ensuring that multiplication and division are evaluated before addition and subtraction unless parentheses alter the order of evaluation.

For example:

2 + 3 * 4 = 14
(2 + 3) * 4 = 20

During parsing, semantic actions associated with grammar rules calculate intermediate and final results. Error handling mechanisms are also implemented to detect invalid syntax and runtime errors such as division by zero. This demonstrates the interaction between lexical analysis and syntax analysis in building a simple calculator and provides practical experience in compiler design concepts

output 
<img width="1145" height="917" alt="image" src="https://github.com/user-attachments/assets/8ab30a87-499f-4976-9c0d-c757a2add11d" />
.
output for y.y file
<img width="1862" height="1307" alt="image" src="https://github.com/user-attachments/assets/c1db6d62-d8d8-4cee-a1c3-a8837c8d2b31" />
