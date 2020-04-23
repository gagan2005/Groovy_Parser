%{
#include<iostream>
#include<vector>
using namespace std;
#include "classdef.h"
Token yylval;

vector<Symbol> Stable;

#include "lexfunctions.h"
int lineno=1;
int colno=1;
%}
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


%{ /* End of keyword Section */ %}

%{/* Relational Operators Sectio */ %}

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

%{/* Brackets Section */ %}

\{  {
    Token t("CBO");
    yylval=t;
    yylval.print();
}


[A-za-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF$_][A-za-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF0-9]*  {
    Token t("ID",yytext);
    Symbol *i=InstallId();
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
