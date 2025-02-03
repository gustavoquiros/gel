%{ 
    #include <ctype.h> 
    #include <stdio.h> 
%} 

%token INTEGER
%token REAL
%token STRING
%token IDENTIFIER
%token OPERATOR

%%

expression:
    INTEGER |
    REAL |
    STRING |
    IDENTIFIER |
    '[' expression ']' |
    '{' expressions '}' |
    expression '(' expressions ')' |
    expression OPERATOR expression ;

expressions:
    |
    expression expressions ;

%% 

#include "lex.yy.c"
 
void yyerror (char * s)
{   
    fprintf(stderr, "%s\n", s);
} 
 
int main () 
{
    return yyparse();
}
