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
%require "3.2"
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
%token OP
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



%%

program : INT TERM
;

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