%{

#include<bits/stdc++.h>
using namespace std;
#include "classdef.h"
#include<stdio.h>
#define YYSTYPE token
    int yyparse(void);
    int yylex(void);
    void yyerror(char const *);
extern int lineno;
extern int colno;
%}

%token ID
%token REAL
%token INT
%token STRING
%token CHAR
%token IF
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

%token '{'
%token '}'
%token '('
%token ')'
%token '['
%token ']'
%token DT
%token COMMA

%nonassoc shift
%left PLUS
%left MIN
%left MUL

%left DIV
%right POW
%right EQ
%left RELOP
%left LOGOP
%left BITOP
%token NEWLINE
%token AS
%right MOD
%token AND OR NOT
%token INC DEC

%nonassoc NOELSE
%nonassoc ELSE


%%
program: fundef
| sstmts 
| fundef sstmts
;
sstmts: sstmt sstmts
| cstmt sstmts
| sstmt
| cstmt    
; 
/* This list all the single line statements */
sstmt:  varDeclare
| varAssign termination
| input
| ret 
| println
| print 
| import 
| const
| incdec
| termination
;
/* COmpund statements */
cstmt: ifstmt      {cout<<"A compound statement found\n";}
    | while
    | dowhilestmt
    | forloop
; 

//while loop statement
while: WHILE '(' expr ')' '{' sstmts '}'
;
dowhilestmt: DO '{' sstmts '}' WHILE '(' expr ')' termination
;



/* Grammer for RETURN statement */
ret: RET comp termination 
;
comp:
| expr
;
expr:aexpr
| bexpr
| terms

;

// Grammer for PRINT statement

println: PRINTLN expr termination 

;

// Grammer for PRINTLN statement
print: PRINT expr termination

;
// Grammer for IMPORT statement
import:  IMPORT t termination | IMPORT STATIC t 
t:  ID DOT t
    | ID DOT MUL
    | ID termination
    | ID AS ID
;

//constant 
const: CONST ID EQ terms termination
;
/*var declare,assign,input*/

varDeclare: DT E termination  {printf("declaration\n");}
| DEF E termination {printf("declaration\n");}
| DEF ID EQ '['H']' termination {printf("declaration\n");}
| mulDeclare  {printf("muldeclaration\n");}
;
mulDeclare : DEF '('G')' EQ '[' H ']' termination
;
E: ID COMMA E 
| ID EQ expr COMMA E
| ID 
| ID EQ expr 
;
varAssign:  ID EQ expr  {printf("assign\n");}
| ID EQ '['H']'  {printf("assign\n");}
| mulAssign {printf("mulassign\n");}
| ID op EQ terms {printf("AssOp\n");}
;
mulAssign: '(' G ')' EQ '[' H ']' 
;
G: ID COMMA G
| DT ID COMMA G
| DT ID 
| ID
;
H: '[' H ']' COMMA H
| terms COMMA H
| terms
| '[' H ']'
;
input: DEF ID EQ infunction termination {printf("input\n");}
| DEF ID EQ infunction AS  DT termination {printf("input\n");}
| DEF ID EQ SYSTEM DOT IN DOT CONSOLE '(' ')' DOT READLINE '(' ')' termination {printf("input\n");}
| DEF ID EQ ID DOT READLINE '(' ')' termination {printf("input\n");}
| ID EQ ID DOT READLINE '(' ')' termination {printf("input\n");}
| infunction {printf("input\n");}
| ID EQ infunction termination {printf("input\n");}
| ID EQ infunction AS  DT termination {printf("input\n");}
;
infunction: SYSTEM DOT IN DOT NEWREADER '(' ')' DOT READLINE '(' ')'
; 
;


/*forloop, forin loop*/
forloop: FOR '(' forstmt ')'  forpart {printf("for");} 
;
forpart: '{' sstmts '}'
| sstmt
;
forstmt: a TERM  b TERM incdec
| a TERM  b TERM varAssign
| var IN var
;
a:
| var EQ terms
| DT var EQ terms
| DEF var EQ terms
;
b:
| bexpr
;
var: ID
| arr
;
arr: ID dims
;
dims: dims dim
| dim
;
dim:'[' ID ']'
| '[' INT ']'
; 
incdec: var INC
| var DEC
;

/*grammar written by devansh*/



fundef: DT ID '(' arglist ')' '{' sstmts '}'
| DEF ID '(' arglist ')' '{' sstmts '}'
;
arglist: arglist COMMA arg
| arg
;
arg: 
| DT ID
// | DT ID EQ terms 
| DT ID EQ expr
;
ifstmt: IF '(' expr ')' then       %prec NOELSE  {cout<<"Simple if statement found\n";}
| IF '(' expr ')' then ELSE then                 {cout<<" if/else statement found\n";}
| IF '(' expr ')' then ELSE ifstmt                  {cout<<" if lse if statement found\n";}

then: '{' sstmts '}' 
| sstmt
;

/* Boolean and ARthimetic Expressions */

aexpr: terms op terms {cout<<"ARthimetic exp found\n";}
| terms BITOP terms   
| '(' aexpr ')'  
| aexpr op aexpr %prec shift
| aexpr BITOP aexpr %prec shift
;
op: PLUS | MIN | DIV | MUL
;
bexpr: bexpr_ RELOP bexpr_
| bexpr_ logop bexpr_
| '(' bexpr ')'
| NOT bexpr_
;
bexpr_: bexpr_ RELOP bexpr_ 
| bexpr_ LOGOP bexpr_
| terms
| aexpr
;
logop: AND 
| OR 
;






/* Terms Section */
/* This section defines different terms */
/* All terms */
terms: INT
| REAL
| var
| TRUE
| FALSE
| STRING
;

termination: TERM {cout<<"Termination fournd\n";}
;
/*grammar written by devansh*/
%%

void yyerror(char const *s)  
{  
 printf("\nError at line no -%d and colno%d\n",lineno,colno);  
}
int main()
{
    yyparse();
    return 0;
}
// #include "lex.yy.c"
