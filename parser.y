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
%token CBO
%token CBC
%token RBO
%token RBC
%token SBO
%token SBC
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

%nonassoc NOELSE
%nonassoc ELSE


%%

sstmts: sstmt sstmts
| cstmt sstmts
| sstmt
| cstmt    
; 
/* This list all the single line statements */
sstmt:  varDeclare  
| varAssign
| input
| ret 
| println
| print 
| import 
| const 	
| expr
| termination
;
/* COmpund statements */
cstmt: ifstmt      {cout<<"A compound statement found\n";}
    | while
    | dowhilestmt
    | forloop
; 

//while loop statement
while: WHILE RBO expr RBC CBO sstmts CBC
;
dowhilestmt: DO CBO sstmts CBC WHILE RBO expr RBC termination
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

varDeclare: DT ID E termination {printf("declaration");}
| DT ID EQ terms E termination {printf("declaration");}
| DT ID EQ expr E termination {printf("declaration");}
| DEF ID EQ terms E termination {printf("declaration");}
| DEF ID EQ expr E termination
| DEF ID E termination {printf("declaration");}
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
| DEF ID EQ SYSTEM DOT IN DOT CONSOLE RBO RBC DOT READLINE RBO RBC termination {printf("input");}
| DEF ID EQ ID DOT READLINE RBO RBC termination {printf("input");}
| ID EQ ID DOT READLINE RBO RBC termination {printf("input");}
| infunction {printf("input");}
| ID EQ infunction termination {printf("input");}
| ID EQ infunction AS  DT termination {printf("input");}
;
infunction: SYSTEM DOT IN DOT NEWREADER RBO RBC DOT READLINE RBO RBC
;
;
expr: aexpr
| bexpr
;


/*forloop, forin loop*/
forloop: FOR RBO forstmt RBC  forpart {printf("for");} 
;
forpart: CBO sstmts CBC
| sstmt
;
forstmt: a TERM  b TERM c 
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
c:
| incdec
| varAssign
;
var: ID
| arr
;
arr: ID dims
;
dims: dims dim
| dim
;
dim:SBO ID SBC
| SBO INT SBC
; 
incdec: var PLUS PLUS
| var MIN MIN
;

/*grammar written by devansh*/


/*
fundef: DT ID RBO varAssign RBC CBO sstmts CBC
| DEF ID RBO varAssign RBC CBO sstmts CBC
;
*/
ifstmt: IF RBO expr RBC then       %prec NOELSE  {cout<<"Simple if statement found\n";}
| IF RBO expr RBC then ELSE then                 {cout<<" if/else statement found\n";}
| IF RBO expr RBC then ELSE ifstmt                  {cout<<" if lse if statement found\n";}

then: CBO sstmts CBC 
| sstmt
;

/* Boolean and ARthimetic Expressions */

aexpr: aexpr_ op aexpr_ {cout<<"ARthimetic exp found\n";}
| aexpr_ BITOP aexpr_   
| RBO aexpr RBC    
;
aexpr_: terms
;
op: PLUS | MIN | DIV | MUL

;
bexpr: bexpr_ RELOP bexpr_
| bexpr_ LOGOP bexpr_
| RBO bexpr RBC
| aexpr RELOP aexpr
;
bexpr_: bexpr_ RELOP bexpr_ 
| bexpr_ LOGOP bexpr_
| terms
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
