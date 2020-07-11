%{
// #include<iostream>
// #include<vector>
// #include<bits>
#include<bits/stdc++.h>
using namespace std;
#include "classdef.h"
#define YYSTYPE token
#include "parser.tab.h"
// token yylval;

unordered_map<string,Symbolid> StableId;
unordered_map<string,Symbolnum> StableNum;              //Symbol tables
unordered_map<string,Symbolfloat> StableFloat;

#include "lexfunctions.h"
int lineno=1;
int colno=1;
%}
%option noyywrap
%%
\n  {lineno++;colno=1;}
[ ] {colno++;}
[0-9]+\.[0-9]+  {
    
    string s(yytext);
    Symbolfloat* i=InstallReal(s,lineno,colno);                //The InstallReal function(defined in functions.h) will put data to symbol table
    colno+=yyleng;
    token t("REAL",i);                          
    yylval=t;
    
    
    return REAL;

}
[0-9]+  {
    
    string s(yytext);
    Symbolnum* i=InstallInt(s,lineno,colno); 
    colno+=yyleng;              
    token t("INT",i);                          
    yylval=t;
    
     
	return INT;
}
\"[^\"]+\"    {
    token t("STRING",yytext);
    colno+=yyleng;
    yylval=t;
    
    
	return STRING;
}

\'[^\"]\' {
	int a= yytext[1];
	token t("CHAR",a);     //new addition of char
	colno+=yyleng;
	yylval=t;
	
    
	return CHAR;
}



%{ //Beginning of the keywords Section %}
if  {
    
    colno+=yyleng;
	return IF;
}
else   {
  
    colno+=yyleng;
    
	return ELSE;
}

for    {
    token t("FOR");
    colno+=yyleng;
    yylval=t;
    
    
	return FOR;
}

while   {
    token t("WHILE");
    colno+=yyleng;
    yylval=t;
    
    
	return WHILE;
}
do  {
    token t("DO");
    colno+=yyleng;
    yylval=t;
    
    
	return DO;
}
switch  {
    token t("SWITCH");
    colno+=yyleng;
    yylval=t;
    
    
	return SWITCH;
}
	
return  {
    token t("RET");
    colno+=yyleng;
    yylval=t;
    
    
	return RET;
}
break	 { 
 	token t("BREAK");
 	colno+=yyleng;
 	yylval=t;
 	
     
 	return BREAK;
 }
true	 { 
 	token t("TRUE");
 	colno+=yyleng;
 	yylval=t;
 	
     
     return TRUE;
 }
false	 { 
 	token t("FALSE");
 	colno+=yyleng;
 	yylval=t;
 	
     
     return FALSE;
 }
null	 { 
 	token t("NULL");
 	colno+=yyleng;
 	yylval=t;
 	
     
     return _NULL;
 }
case	 { 
 	token t("CASE");
 	colno+=yyleng;
 	yylval=t;
 	
     
 	return CASE;
 }
goto	{
	token t("GOTO");
	colno+=yyleng;
	yylval=t;
 	
     
 	return GOTO;
 }
import  {
	token t("IMPORT");
	colno+=yyleng;
	yylval=t;
 	
     
 	return IMPORT;
 }
void	{
	token t("VOID");
	colno+=yyleng;
	yylval=t;
 	
     
 	return VOID;
 }
continue {
	token t("CONTINUE");
	colno+=yyleng;
	yylval=t;
 	
     
 	return CONTINUE;
 }
static {
	token t("STATIC");
	colno+=yyleng;
	yylval=t;
 	
     
 	return STATIC;
 }
default {	
	token t("DEFAULT");
	colno+=yyleng;
	yylval=t;
    	
        
 	return DEFAULT;
 }
println {
	token t("PRINTLN");
	colno+=yyleng;
	yylval=t;
    	
        
 	return PRINTLN;
 }
print   {
    token t("PRINT");
	colno+=yyleng;
	yylval=t;
    	
        
	return PRINT;
}
def {
	token t("DEF");
	colno+=yyleng;
	yylval=t;
    	
        
 	return DEF;
 }
in {
	token t("IN");
	colno+=yyleng;
	yylval=t;
    	
        
 	return IN;
 }
assert {
	token t("ASSERT");
	colno+=yyleng;
	yylval=t;
    	
        
 	return ASSERT;
 }
volatile {
	token t("VOLATILE");
	colno+=yyleng;
	yylval=t;
    	
    	 
 	return VOLATILE;
 }
const {
	token t("CONST");
	colno+=yyleng;
	yylval=t;
    	
    	 
 	return CONST;
 }
console {
	token t("CONSOLE");
	colno+=yyleng;
	yylval=t;
    	
    	 
 	return CONSOLE;
 }
system {
	token t("SYSTEM");
	colno+=yyleng;
	yylval=t;
    	
    	 
 	return SYSTEM;
 }
; {
	token t("TERM");
	colno+=yyleng;
	yylval=t;
    	
    	 
	return TERM;
}
: {
	token t("COLON");
	colno+=yyleng;
	yylval=t;
    	
    	 
	return COLON;
}
new {
	token t("NEW");
	colno+=yyleng;
	yylval=t;
    	
    	 
 	return NEW;
 }
newreader {
	token t("NEWREADER");
	colno+=yyleng;
	yylval=t;
    	
    	 
 	return NEWREADER;
 }
readline {
	token t("READLINE");
	colno+=yyleng;
	yylval=t;
    	
    	 
	return READLINE;
}
\. {
	token t("DOT");
	colno+=yyleng;
	yylval=t;
    	
    	 
	return DOT;
}

%{ /* End of keyword Section */ %}

%{/* Relational Operators Section */ %}

\=\=\=  {
      token t("RELOP",0);
    colno+=yyleng;
    yylval=t;
    
    
	return RELOP;
}
\=\=  {
    token t("RELOP",1);
    colno+=yyleng;
    yylval=t;
    
    
	return RELOP;
}

!\=  {
    token t("RELOP",2);
    colno+=yyleng;
    yylval=t;
    
    
	return RELOP;
}

\<\=  {
    token t("RELOP",3);
    colno+=yyleng;
    yylval=t;
    
    
    return RELOP;
}

\>\=  {
    token t("RELOP",4);
    colno+=yyleng;
    yylval=t;
    
    
    return RELOP;
}

\<  {
    token t("RELOP",5);
    colno+=yyleng;
    yylval=t;
    
    
    return RELOP;
}

\> {
    token t("RELOP",6);
    colno+=yyleng;
    yylval=t;
    
    
    return RELOP;
}

%{/*Logical Operators Section */ %}

\&\& {
    token t("LOGOP",1);
    colno+=yyleng;
    yylval=t;
    
    
    return AND;
}

\|\| {
    token t("LOGOP",2);
    colno+=yyleng;
    yylval=t;
    
    
    return OR;
}

\! {
   
    colno+=yyleng;
  
    
    return NOT;
}

%{/* Bitwise Operators Section */ %}

\& {
    token t("BITOP",1);
    colno+=yyleng;
    yylval=t;
    
    
    return BITOP;
}

\| {
    token t("BITOP",2);
    colno+=yyleng;
    yylval=t;
    
    
    return BITOP;
}

\^ {
    token t("BITOP",3);
    colno+=yyleng;
    yylval=t;
    
    
    return BITOP;
}

\~ {
    token t("NEG");
    colno+=yyleng;
    yylval=t;
    
    
    return NEG;
}

%{/* Brackets Section */ %}

\{  {
  
    colno+=yyleng;
    return yytext[0];
}
\}  {
    
    colno+=yyleng;
    return yytext[0];
}
\(  {
   
    colno+=yyleng;
  
    return yytext[0];
}
\)  {
    
    colno+=yyleng;
    return yytext[0];
}
\[  {
    
    colno+=yyleng;
    return yytext[0];
}
\]  {
  
    colno+=yyleng;
  
    
    return yytext[0];
}

%{/* DATA TYPE Section */ %}

int {
     token t("DATA_TYPE","int");
    colno+=yyleng;
    yylval=t;
    
    
    return DT;
}
char    {
    token t("DATA_TYPE","char");
    colno+=yyleng;
    yylval=t;
    
    
    return DT;
}
double  {
    token t("DATA_TYPE","double");
    colno+=yyleng;
    yylval=t;
    
    
    return DT;
}
float   {
    token t("DATA_TYPE","float");
    colno+=yyleng;
    yylval=t;
    
    
    return DT;
}
Boolean {
    token t("DATA_TYPE","Boolean");
    colno+=yyleng;
    yylval=t;
    
    
    return DT;
}
String  {
    token t("DATA_TYPE","String");
    colno+=yyleng;
    yylval=t;
    
    
    return DT;
}

byte {
	token t("DATA_TYPE","byte");
    colno+=yyleng;
    yylval=t;
    
    
    return DT;
}

short {
	token t("DATA_TYPE","short");
    colno+=yyleng;
    yylval=t;
    
    
    return DT;
}

long {
	token t("DATA_TYPE","long");
    colno+=yyleng;
    yylval=t;
    return DT;
}

enum {
        colno+=yyleng;
        return DT;
}

\/\/.* {
    
      colno+=yyleng;
}

\/\*([^*]|\*+[^/])*\*+\/ {
   
   
	for(int i=0;i<yyleng;i++)
    {
      
        if(yytext[i]=='\n')
        {
            colno=1;
            lineno++;
        }
        else colno++;
        // cout<<"lineno"<<lineno;
    }
}
,   {
    
    colno+=yyleng;
   
    return COMMA;
}

\a\s  {
      colno+=yyleng;
	return AS;
}


[a-zA-Z\$_][a-zA-Z0-9]*  {
   
    string s(yytext);
    
    Symbolid *i=InstallId(s,lineno,colno);      
     colno+=yyleng;
    token t("ID",i);
    
    
    yylval=t;
    
    
    // return 1;
    return ID;
}


\=  {
  colno+=yyleng;
    return EQ;
}
\?  {
    colno+=yyleng;
    return QUES;
}


%{/* Operators Section */ %}
\+\+ {
    colno+=yyleng;
    return INC;
}
\-\- {
    colno+=yyleng;
    return DEC;
}
\+ {
    ;
    colno+=yyleng;
    return PLUS;
}

\- {
    
    colno+=yyleng;
   
    return MIN;
}
\*\*    {
    colno+=yyleng;
    return POW;
}
\* {
   
    colno+=yyleng;
    return MUL;
}

\/ {
  
    colno+=yyleng;
    return DIV;
}

\% {
    token t("OP",5);
    colno+=yyleng;
    yylval=t;
    
    return MOD;
}

%%
// int main()
// {
    
//     yylex();
//     cout<<"\t Symbol Table for Id"<<endl;
//     cout<<"Pointer \t Line no | Column no | Value"<<endl;
//     for(auto m=StableId.begin();m!=StableId.end();m++)
//     {   
//         cout<<&(m->second)<<"  \t"<<m->second.lineno<<"\t"<<m->second.colno<<"\t"<<m->second.val;
//         cout<<endl;
//     }
//     cout<<"------------------------------\n";
//     cout<<"\t Symbol Table for Integers"<<endl;
//     cout<<"Pointer \t Line no | Column no | Value"<<endl;
//     for(auto m=StableNum.begin();m!=StableNum.end();m++)
//     {
//         cout<<&(m->second)<<"  \t"<<m->second.lineno<<"\t"<<m->second.colno<<"\t"<<m->second.val;
//         cout<<endl;
//     }
//     cout<<"------------------------------\n";
//     cout<<"\t Symbol Table for Floats"<<endl;
//     cout<<"Pointer \t Line no | Column no | Value"<<endl;
//     for(auto m=StableFloat.begin();m!=StableFloat.end();m++)
//     {
//         cout<<&(m->second)<<"  \t"<<m->second.lineno<<"\t"<<m->second.colno<<"\t"<<m->second.val;
//         cout<<endl;
//     }
// }
