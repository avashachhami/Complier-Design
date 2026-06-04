%{
    #include<stdio.h>
    int keywordCount = 0;
    int identifierCount = 0;
    int numberCount = 0;
    int stringCount = 0;
    int logicalCount = 0;
    int operatorCount = 0; /* Fixed typo in variable name 'opeartorCount' */
    int delimiterCount = 0;
    int commentCount = 0;
    int unknownCount = 0;
%}

%%
VV[^\n]* { commentCount++; printf("COMMENT: %s\n", yytext); }
V\*([^*]|\*+[^*/])*\*+V                     { commentCount++; printf("COMMENT: %s\n", yytext); }
int|float|char|double|void|if|else|while|for|return|do|break|continue|switch|case|default { 
                                                keywordCount++; 
                                                printf("KEYWORD: %s\n", yytext); 
                                            }
[a-zA-Z_][a-zA-Z0-9_]* { identifierCount++; printf("IDENTIFIER: %s\n", yytext); }
[0-9]+(\.[0-9]+)?                           { numberCount++; printf("NUMBER: %s\n", yytext); }
\"([^\"\\]|\\.)*\"                          { stringCount++; printf("STRING: %s\n", yytext); }
&&|\|\|                                     { logicalCount++; printf("LOGICAL OP: %s\n", yytext); }
==|!=|<=|>=|<|>|[+\-*V%]=?|=                { operatorCount++; printf("OPERATOR: %s\n", yytext); }
[{};,\[\]()]                                { delimiterCount++; printf("DELIMITER: %s\n", yytext); }
[\t\n ]+                                    { /* Ignore whitespace */ }
.                                           { unknownCount++; printf("UNKNOWN: %s\n", yytext); }
%%

int main(){
    printf("Enter the code (Ctrl+Z then enter to end input):\n");
    yylex();
    printf("\n-- Token Counts --\n");
    printf("Keywords    : %d\n", keywordCount);
    printf("Identifiers : %d\n", identifierCount);
    printf("Numbers     : %d\n", numberCount);
    printf("Strings     : %d\n", stringCount);
    printf("Logical Ops : %d\n", logicalCount);
    printf("Operators   : %d\n", operatorCount);
    printf("Delimiters  : %d\n", delimiterCount);
    printf("Comments    : %d\n", commentCount);
    printf("Unknown     : %d\n", unknownCount);
    return 0;
}

int yywrap() { return 1; }