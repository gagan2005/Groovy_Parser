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
%left RELOP
%left OP
%left LOGOP
%left BITOP
%token CBO
%token CBC
%token RBO
%token RBC
%token SBO
%token SBC
%token DT
%token COMMA



%%
program :  aexpr
| bexpr
;
aexpr : aexpr OP aexpr 
| aexpr BITOP aexpr
| ID
| RBO aexpr RBC   
| INT       
| REAL         
;

bexpr : bexpr RELOP bexpr
| bexpr LOGOP bexpr
| STRING RELOP STRING
| INT RELOP REAL
| CHAR RELOP CHAR
| CHAR RELOP INT
| REAL RELOP INT
| aexpr RELOP aexpr
| ID RELOP ID
| RBO bexpr RBC
| TRUE
| FALSE
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