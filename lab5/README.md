## Theory

An Arithmetic Expression Evaluator is a program that analyzes and computes mathematical expressions according to predefined grammar rules. Compiler construction tools such as Flex and Bison are commonly used to implement lexical analysis and syntax analysis phases.

### Lexical Analysis (Flex)
The lexical analyzer scans the source input stream character by character, matching sequences against regular expressions to produce semantic tokens. For a conditional block, it isolates keywords (`IF`, `ELSE`), identifiers (`ID`), relational operators (`RELOP`), assignments (`ASSIGN`), and numeric literals (`NUM`).

### Syntax Analysis (Bison)
The parser utilizes a Context-Free Grammar (CFG) to validate the stream of tokens produced by the lexer. It ensures that the structural arrangement conforms to language rules (e.g., matching parentheses around conditions, requiring semicolons after assignments).

Consider:
if (cond1) if (cond2) stmt1; else stmt2;

Bison resolves this shift/reduce conflict using token precedence. By specifying %nonassoc LOWER_THAN_ELSE and %nonassoc ELSE along with a %prec directive on the open if rule, the grammar enforces that an else always binds tightly to the nearest open if statement.

code 
<img width="1075" height="690" alt="image" src="https://github.com/user-attachments/assets/a9209332-3ee8-4829-87df-54baaaf39f8e" />

<img width="1181" height="1287" alt="image" src="https://github.com/user-attachments/assets/af863639-0264-4c79-bfa7-2e146c378e25" />

output 

<img width="1045" height="392" alt="image" src="https://github.com/user-attachments/assets/68dcee8d-3d19-4a27-a227-9f48f8ed8886" />

