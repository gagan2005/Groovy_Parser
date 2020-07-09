%{

#include<bits/stdc++.h>
using namespace std;
#include "classdef.h"
#include<stdio.h>
#define YYSTYPE token
    int yyparse(void);
    int yylex(void);
    void yyerror(char const *);
%}

%token ID
%token REAL
%token INT
%token STRING
%token CHAR
%token IF
%token ELSE
%token FOR
%token WHILE
%token DO
%token SWITCH
%token RET
%token BREAK
%token TRUE
%token FALSE
%token _NULL
%token CASE
%token GOTO
%token IMPORT
%token VOID
%token CONTINUE
%token STATIC
%token DEFAULT
%token PRINTLN
%token PRINT
%token DEF
%token IN
%token ASSERT
%token VOLATILE
%token CONST
%token CONSOLE
%token SYSTEM
%token TERM
%token COLON
%token NEW
%token NEWREADER
%token READLINE
%token DOT
%token RELOP
%left OP
%token LOGOP
%token BITOP
%token CBO
%token CBC
%token RBO
%token RBC
%token SBO
%token SBC
%token DT
%token COMMA
%left PLUS


%%

// Grammer BY Swapnil
S: ret | println | print | import |const;
// Grammer for RETURN statement
ret : RET expr TERM | RET TERM
expr : INT | CHAR
// Grammer for PRINT statement

println : PRINTLN  e TERM 
e : e PLUS e | STRING | INT | CHAR | REAL |  TRUE | FALSE | ID 

// Grammer for PRINTLN statement
print : PRINT f TERM
f : f PLUS f | STRING | INT | CHAR | REAL |  TRUE | FALSE | ID 

// Grammer for IMPORT statement
import :  IMPORT t TERM
t :  ID DOT t | ID DOT * | ID

//constant 
const : CONST ID RELOP p TERM
p: INT | CHAR | STRING | TRUE | FALSE
%%

void yyerror(char const *s)  
{  
 printf("\nError\n");  
}
int main()
{
    yyparse();
    return 0;
}
// #include "lex.yy.c"