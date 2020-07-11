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
%left RELOP
%left LOGOP
%left BITOP
%token '{'
%token '}'
%token '('
%token ')'
%token '['
%token ']'
%token DT
%token COMMA
%left PLUS
%left MIN
%left MUL
%right EQ
%left DIV
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
sstmt:  varDeclare termination
| varAssign 
| input
| ret 
| println
| print 
| import 
| const 	
| expr
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
| aexpr
| bexpr
| terms

;

// Grammer for PRINT statement

println: PRINTLN aexpr termination 
|PRINTLN terms termination
;

// Grammer for PRINTLN statement
print: PRINT aexpr termination
|PRINT terms termination
;
// Grammer for IMPORT statement
import:  IMPORT t termination | IMPORT STATIC t 
t:  ID DOT t
    | ID DOT MUL
    | ID termination
    | ID AS ID


//constant 
const: CONST ID EQ terms termination

/*var declare,assign,input*/

varDeclare: DT ID E  {printf("declaration");}
| DT ID EQ terms E {printf("declaration");}
| DT ID EQ expr E {printf("declaration");}
| DEF ID EQ terms E {printf("declaration");}
| DEF ID EQ expr E
| DEF ID E  {printf("declaration");}
;
E: {}
|  COMMA ID E 
|  COMMA ID EQ terms E 
|  COMMA ID EQ expr E
;
varAssign: ID EQ terms termination {printf("assign");}
| ID EQ expr termination {printf("assign");}
;
input: DEF ID EQ infunction termination {printf("input");}
| DEF ID EQ infunction AS  DT termination {printf("input");}
| DEF ID EQ SYSTEM DOT IN DOT CONSOLE '(' ')' DOT READLINE '(' ')' termination {printf("input");}
| DEF ID EQ ID DOT READLINE '(' ')' termination {printf("input");}
| ID EQ ID DOT READLINE '(' ')' termination {printf("input");}
| infunction {printf("input");}
| ID EQ infunction termination {printf("input");}
| ID EQ infunction AS  DT termination {printf("input");}
;
infunction: SYSTEM DOT IN DOT NEWREADER '(' ')' DOT READLINE '(' ')'
;
;
expr: aexpr
| bexpr
;


/*forloop, forin loop*/
forloop: FOR '(' forstmt ')'  forpart {printf("for");} 
;
forpart: '{' sstmts '}'
| sstmt
;
forstmt: a TERM  b TERM incdec
| a TERM  b TERM varAssign
| ID IN ID
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
| DT ID EQ terms 
| DT ID EQ expr
ifstmt: IF '(' expr ')' then       %prec NOELSE  {cout<<"Simple if statement found\n";}
| IF '(' expr ')' then ELSE then                 {cout<<" if/else statement found\n";}
| IF '(' expr ')' then ELSE ifstmt                  {cout<<" if lse if statement found\n";}

then: '{' sstmts '}' 
| sstmt
;

/* Boolean and ARthimetic Expressions */

aexpr: aexpr_ op aexpr_ {cout<<"ARthimetic exp found\n";}
| aexpr_ BITOP aexpr_   
| '(' aexpr ')'    
;
aexpr_: terms
;
op: PLUS | MIN | DIV | MUL

;
bexpr: bexpr_ RELOP bexpr_
| bexpr_ logop bexpr_
| '(' bexpr ')'
| aexpr RELOP aexpr
| NOT bexpr_
;
bexpr_: bexpr_ RELOP bexpr_ 
| bexpr_ LOGOP bexpr_
| terms
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

termination: TERM {cout<<"Termination fournd";}
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
