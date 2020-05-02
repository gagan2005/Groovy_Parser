%{
#include<iostream>
#include<vector>
#include<map>
using namespace std;
#include "classdef.h"
Token yylval;

unordered_map<String,SymbolId> StableID;
unordered_map<String,SymbolNum> StableNum;              //Symbol tables
unordered_map<String,SymbolFloat> StableFloat;

#include "lexfunctions.h"
int lineno=1;
int colno=1;
%}
%option noyywrap
%%
[0-9]+\.[0-9]+  {
    Symbol* i=InstallReal();                //The InstallReal function(defined in functions.h) will put data to symbol table
    Token t("REAL",i);                          
    yylval=t;
    yylval.print();
}
[0-9]+  {
    Symbol* i=InstallInt();               
    Token t("INT",i);                          
    yylval=t;
    yylval.print(); 
}
\"[^\"]+\"    {
    Token t("STRING",yytext);
    yylval=t;
    yylval.print();
}

\'[^\"]\' {
	int a= yytext[1];
	Token t("CHAR",a);     //new addition of char
	yylval=t;
	yylval.print();
}



%{ //Beginning of the keywords Section %}
if  {
    Token t("IF");
    yylval=t;
    yylval.print();
}
else   {
    Token t("ELSE");
    yylval=t;
    yylval.print();
}
for    {
    Token t("FOR");
    yylval=t;
    yylval.print();
}
while   {
    Token t("WHILE");
    yylval=t;
    yylval.print();
}
do  {
    Token t("DO");
    yylval=t;
    yylval.print();
}
switch  {
    Token t("SWITCH");
    yylval=t;
    yylval.print();
}
	
return  {
    Token t("RET");
    yylval=t;
    yylval.print();
}
break	 { 
 	Token t("BREAK");
 	yylval=t;
 	yylval.print();
 }
true	 { 
 	Token t("TRUE");
 	yylval=t;
 	yylval.print();
 }
false	 { 
 	Token t("FALSE");
 	yylval=t;
 	yylval.print();
 }
null	 { 
 	Token t("NULL");
 	yylval=t;
 	yylval.print();
 }
case	 { 
 	Token t("CASE");
 	yylval=t;
 	yylval.print();
 }
goto	{
	Token t("GOTO");
	yylval=t;
 	yylval.print();
 }
import  {
	Token t("IMPORT");
	yylval=t;
 	yylval.print();
 }
void	{
	Token t("VOID");
	yylval=t;
 	yylval.print();
 }
continue {
	Token t("CONTINUE");
	yylval=t;
 	yylval.print();
 }
static {
	Token t("STATIC");
	yylval=t;
 	yylval.print();
 }
default {	
	Token t("DEFAULT");
	yylval=t;
    	yylval.print();
 }


%{ /* End of keyword Section */ %}

%{/* Relational Operators Section */ %}

\=   {
    Token t("RELOP",1);
    yylval=t;
    yylval.print();
}

!\=  {
    Token t("RELOP",2);
    yylval=t;
    yylval.print();
}

\<\=  {
    Token t("RELOP",3);
    yylval=t;
    yylval.print();
}

\>\=  {
    Token t("RELOP",4);
    yylval=t;
    yylval.print();
}

\<  {
    Token t("RELOP",5);
    yylval=t;
    yylval.print();
}

> {
    Token t("RELOP",6);
    yylval=t;
    yylval.print();
}

%{/* Operators Section */ %}

\+ {
    Token t("OP",1);
    yylval=t;
    yylval.print();
}

\- {
    Token t("OP",2);
    yylval=t;
    yylval.print();
}

\* {
    Token t("OP",3);
    yylval=t;
    yylval.print();
}

\/ {
    Token t("OP",4);
    yylval=t;
    yylval.print();
}


%{/*Logical Operators Section */ %}

\&\& {
    Token t("LOGOP",1);
    yylval=t;
    yylval.print();
}

\|\| {
    Token t("LOGOP",2);
    yylval=t;
    yylval.print();
}

\! {
    Token t("LOGOP",3);
    yylval=t;
    yylval.print();
}

%{/* Bitwise Operators Section */ %}

\& {
    Token t("BITOP",1);
    yylval=t;
    yylval.print();
}

\| {
    Token t("BITOP",2);
    yylval=t;
    yylval.print();
}

\^ {
    Token t("BITOP",3);
    yylval=t;
    yylval.print();
}

\~ {
    Token t("BITOP",4);
    yylval=t;
    yylval.print();
}

%{/* Brackets Section */ %}

\{  {
    Token t("CURLY_BRACKET_O");
    yylval=t;
    yylval.print();
}
\}  {
    Token t("CURLY_BRACKET_C");
    yylval=t;
    yylval.print();
}
\(  {
    Token t("ROUND_BRACKET_O");
    yylval=t;
    yylval.print();
}
\)  {
    Token t("ROUND_BRACKET_C");
    yylval=t;
    yylval.print();
}
\[  {
    Token t("SQ_BRACKET_O");
    yylval=t;
    yylval.print();
}
\]  {
    Token t("SQ_BRACKET_C");
    yylval=t;
    yylval.print();
}

%{/* DATA TYPE Section */ %}

int {
     Token t("DATA_TYPE","int");
    yylval=t;
    yylval.print();
}
char    {
    Token t("DATA_TYPE","char");
    yylval=t;
    yylval.print();
}
double  {
    Token t("DATA_TYPE","double");
    yylval=t;
    yylval.print();
}
float   {
    Token t("DATA_TYPE","float");
    yylval=t;
    yylval.print();
}
Boolean {
    Token t("DATA_TYPE","Boolean");
    yylval=t;
    yylval.print();
}
String  {
    Token t("DATA_TYPE","String");
    yylval=t;
    yylval.print();
}

byte {
	Token t("DATA_TYPE","byte");
    yylval=t;
    yylval.print();
}

short {
	Token t("DATA_TYPE","short");
    yylval=t;
    yylval.print();
}

long {
	Token t("DATA_TYPE","long");
    yylval=t;
    yylval.print();
}

enum {
	Token t("DATA_TYPE","enum");
	yylval=t;
    	yylval.print();
}


[A-za-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF$_][A-za-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF0-9]*  {
    
    Symbol *i=InstallId();      
    Token t("ID",i);
    
    yylval=t;
    yylval.print();
    // return 1;
}

%%
int main()
{
    
    yylex();
    cout<<"Symbols--"<<endl;
    for(int i=0;i<Stable.size();i++)Stable[i].print();
}
