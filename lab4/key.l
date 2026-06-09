%{
    #include "y.tab.h"
    #include <stdlib.h>
%}

%%

[0-9]+ {
    yylval.num = atoi(yytext);
    return NUMBER;
}

[\t ]+ ; /* Skip whitespace and tabs */

\n {
    return '\n'; /* Note the single quotes here */
}

[()+\-*/] {
    return yytext[0];
}

. {
    printf("Unknown Character : %s\n", yytext);
}

%%

int yywrap(void) {
    return 1;
}
