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
%token AS
%token EQ
%token NEWLINE


%%
program :  program aexpr TERM
| program bexpr TERM
| stmt
;
aexpr : aexpr_ OP aexpr_ {cout<<"ARthimetic exp found\n";}
| aexpr_ BITOP aexpr_   
| RBO aexpr RBC    
;
aexpr_ : aexpr_ OP aexpr_
| aexpr_ BITOP aexpr_ 
| aexprterm
| RBO aexprterm RBC
;
aexprterm : INT
| REAL
| ID
;
bexpr : bexpr_ RELOP bexpr_
| bexpr_ LOGOP bexpr_
| RBO bexpr RBC
| aexpr RELOP aexpr
;
bexpr_: bexpr_ RELOP bexpr_ 
| bexpr_ LOGOP bexpr_
| bexprterm
;
bexprterm : ID
| TRUE
| FALSE
| INT
| STRING
;

/*var declare,assign,input*/
stmt: varDeclare  
| varAssign
| input
;
varDeclare: DT ID E F {printf("declaration");}
| DT ID EQ val E F {printf("declaration");}
| DT ID EQ expr E F {printf("declaration");}
| DEF ID EQ val E F {printf("declaration");}
| DEF ID E F {printf("declaration");}
;
E: {}
|  COMMA ID E 
|  COMMA ID EQ val E 
|  COMMA ID EQ expr E
;
varAssign: ID EQ val F {printf("assign");}
| ID EQ expr F {printf("assign");}
;
input: DEF ID EQ infunction F {printf("input");}
| DEF ID EQ infunction AS  DT F {printf("input");}
| DEF ID EQ SYSTEM DOT IN DOT CONSOLE RBO RBC DOT READLINE RBO RBC F {printf("input");}
| DEF ID EQ ID DOT READLINE RBO RBC F {printf("input");}
| ID EQ ID DOT READLINE RBO RBC F {printf("input");}
| infunction {printf("input");}
| ID EQ infunction F {printf("input");}
| ID EQ infunction AS  DT F {printf("input");}
;
infunction : SYSTEM DOT IN DOT NEWREADER RBO RBC DOT READLINE RBO RBC
;
val: CHAR |REAL | INT | STRING 
;
expr: INT '+' INT   {printf("test\n");}
;
F: NEWLINE 
| TERM;
/*grammar written by devansh*/
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
