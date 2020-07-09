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
program :  program aexpr TERM
| program bexpr TERM
|
;
aexpr : aexpr_ OP aexpr_ {cout<<"ARthimetic exp found\n";}
| aexpr_ BITOP aexpr_   
| RBO aexpr RBC    
;
aexpr_ : aexpr_ OP aexpr_
| aexpr_ BITOP aexpr_ 
| aexprterm
| RBO aexprterm RBC
aexprterm : INT
| REAL
| ID
;
bexpr : bexpr_ RELOP bexpr_
| bexpr_ LOGOP bexpr_
;
bexpr_: bexpr_ RELOP bexpr_ 
| bexpr_ LOGOP bexpr_
| bexprterm
| aexpr
| RBO bexprterm RBC
;
bexprterm : ID
| TRUE
| FALSE
| INT
| STRING
;


whilestmt : WHILE RBO bexpr
%%

void yyerror(char const *s)  
{  
 printf("\nSyntax Error\n");  
}
int main()
{
    yyparse();
    return 0;
}
// #include "lex.yy.c"