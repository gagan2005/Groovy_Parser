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
extern char *yytext;
bool err=false;
// HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
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
%token NEG

%nonassoc shift
%token '{'
%token '}'
%nonassoc '('
%token ')'
%token '['
%token ']'
%token DT
%token COMMA

%left PLUS
%left MIN
%left MUL

%left DIV
%right POW
%right EQ
%right RELOP
%left LOGOP
%left BITOP
%token QUES
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
| funcall termination
| breakstmt
| constmt
| assert
| label sstmt
| find
| pattern
;
label: ID COLON
;
//assert
assert: ASSERT expr f 
f:
| COLON terms
;

/* COmpund statements */
cstmt: ifstmt        
    | while
    | dowhilestmt
    | forloop
    | switchstmt
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
| terexp

;
terexp : '(' terexp ')'
| terstmt
| elvisop

// Grammer for PRINT statement

println: PRINTLN expr termination 

;

// Grammer for PRINTLN statement
print: PRINT expr termination

;
// Grammer for IMPORT statement
import:  IMPORT t | IMPORT STATIC t 
t:  ID DOT t
    | ID DOT MUL
    | ID 
    | ID AS ID
;

//constant 
const: CONST ID EQ terms termination
;
/*var declare,assign,input*/
varDeclare: DT E termination   
| DEF E termination  
| DEF ID EQ '['H']' termination  
| DT '[' ']' ID EQ '[' H ']' termination
| DT ID EQ NEW DT dims termination
| mulDeclare   
;
mulDeclare: DEF '(' G ')' EQ '[' H ']' termination
;
E: ID COMMA E 
| ID EQ expr COMMA E
| ID 
| ID EQ expr 
;
varAssign:  ID EQ expr   
| ID EQ '['H']' 
| arr EQ expr
| arr EQ '[' H ']'
| mulAssign  
| ID op EQ terms  
| arr op EQ terms
| ID elvisassignmentop terms
| arr elvisassignmentop terms
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
input: DEF ID EQ infunction termination  
| DEF ID EQ infunction AS  DT termination  
| DEF ID EQ SYSTEM DOT IN DOT CONSOLE '(' ')' DOT READLINE '(' ')' termination  
| DEF ID EQ ID DOT READLINE '(' ')' termination  
| ID EQ ID DOT READLINE '(' ')' termination  
| infunction  
| ID EQ infunction termination  
| ID EQ infunction AS  DT termination  
;
infunction: SYSTEM DOT IN DOT NEWREADER '(' ')' DOT READLINE '(' ')'
; 
;

//pattern matching

pattern: DEF ID EQ NEG STRING termination  
| DEF ID EQ NEG DIV ID DIV termination  
;
find: DEF ID EQ ID EQ NEG DIV ID DIV termination  
;
 

/*forloop, forin loop*/
forloop: FOR '(' forstmt ')'  forpart   
;
forpart: '{' sstmts '}'
| sstmt
;
forstmt: a TERM  b TERM incdec
| a TERM  b TERM varAssign
| var IN var
| DT var IN var
;
a:
| var EQ terms
| DT var EQ terms
| DEF var EQ terms
;
b:
| bexpr
;
var: ID %prec shift
| arr
| funcall
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
fundef: DT ID '(' arglist ')' '{' sstmts '}'
| DEF ID '(' arglist ')' '{' sstmts '}'
;
arglist: arglist COMMA arg
| arg
;
arg: 
| DT ID
| DT ID EQ expr
;
funcall: ID '(' argumentlist ')'
| ID '(' ')'
;
argumentlist:  argumentlist COMMA terms
| expr

;

ifstmt: IF '(' expr ')' then       %prec NOELSE    
| IF '(' expr ')' then ELSE then                   
| IF '(' expr ')' then ELSE ifstmt                    
;
then:'{' sstmts '}' 
| sstmt
;

/* Switch case */

switchstmt:SWITCH '(' expr ')' '{' cases default '}'
;
default: DEFAULT COLON sstmts;
|
cases:
|cases case;

case: CASE terms COLON sstmts;
;

breakstmt: BREAK termination
;
constmt: CONTINUE termination
;

/* Boolean and ARthimetic Expressions */

aexpr: terms op terms   
| terms BITOP terms   
| '(' aexpr ')'  
| aexpr op aexpr %prec shift
| aexpr BITOP aexpr %prec shift
| '(' terms ')'
// | NEG INT
;
op: PLUS | MIN | DIV | MUL | MOD | POW
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
terstmt:  expr QUES terms COLON terms
;
elvisop: expr QUES COLON terms
;
elvisassignmentop: QUES EQ
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
| CHAR

;

termination: TERM   
;

%%

void yyerror(char const *s)  
{  
    err=true;
 printf("\x1B[31m Syntax Error at line no -%d and colno-%d \033[0m\n",lineno,colno);  
 printf(" \x1B[31m Unexpected token- %s \n",yytext);
}
int main()
{
    
    yyparse();
    if(!err)
        cout<<"\x1B[32m No Syntax Error found in program\n";
    return 0;
}
// #include "lex.yy.c"
