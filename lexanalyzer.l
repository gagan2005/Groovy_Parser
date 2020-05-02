%{
// #include<iostream>
// #include<vector>
// #include<bits>
#include<bits/stdc++.h>
using namespace std;
#include "classdef.h"
Token yylval;

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
    colno+=yyleng;
    string s(yytext);
    Symbolfloat* i=InstallReal(s,lineno,colno);                //The InstallReal function(defined in functions.h) will put data to symbol table
    Token t("REAL",i);                          
    yylval=t;
    yylval.print();

}
[0-9]+  {
    colno+=yyleng;
    string s(yytext);
    Symbolnum* i=InstallInt(s,lineno,colno);               
    Token t("INT",i);                          
    yylval=t;
    yylval.print(); 
}
\"[^\"]+\"    {
    Token t("STRING",yytext);
    colno+=yyleng;
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
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
else   {
    Token t("ELSE");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
for    {
    Token t("FOR");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
while   {
    Token t("WHILE");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
do  {
    Token t("DO");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
switch  {
    Token t("SWITCH");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
	
return  {
    Token t("RET");
    colno+=yyleng;
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
println {
	Token t("PRINTLN");
	yylval=t;
    	yylval.print();
 }
def {
	Token t("DEF");
	yylval=t;
    	yylval.print();
 }
in {
	Token t("IN");
	yylval=t;
    	yylval.print();
 }
assert {
	Token t("ASSERT");
	yylval=t;
    	yylval.print();
 }


%{ /* End of keyword Section */ %}

%{/* Relational Operators Section */ %}

\=   {
    Token t("RELOP",1);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

!\=  {
    Token t("RELOP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\<\=  {
    Token t("RELOP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\>\=  {
    Token t("RELOP",4);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\<  {
    Token t("RELOP",5);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

> {
    Token t("RELOP",6);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

%{/* Operators Section */ %}

\+ {
    Token t("OP",1);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\- {
    Token t("OP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\* {
    Token t("OP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\/ {
    Token t("OP",4);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}


%{/*Logical Operators Section */ %}

\&\& {
    Token t("LOGOP",1);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\|\| {
    Token t("LOGOP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\! {
    Token t("LOGOP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

%{/* Bitwise Operators Section */ %}

\& {
    Token t("BITOP",1);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\| {
    Token t("BITOP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\^ {
    Token t("BITOP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

\~ {
    Token t("BITOP",4);
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

%{/* Brackets Section */ %}

\{  {
    Token t("CURLY_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
\}  {
    Token t("CURLY_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
\(  {
    Token t("ROUND_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
\)  {
    Token t("ROUND_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
\[  {
    Token t("SQ_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
\]  {
    Token t("SQ_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

%{/* DATA TYPE Section */ %}

int {
     Token t("DATA_TYPE","int");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
char    {
    Token t("DATA_TYPE","char");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
double  {
    Token t("DATA_TYPE","double");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
float   {
    Token t("DATA_TYPE","float");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
Boolean {
    Token t("DATA_TYPE","Boolean");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}
String  {
    Token t("DATA_TYPE","String");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

byte {
	Token t("DATA_TYPE","byte");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

short {
	Token t("DATA_TYPE","short");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

long {
	Token t("DATA_TYPE","long");
    colno+=yyleng;
    yylval=t;
    yylval.print();
}

enum {
	Token t("DATA_TYPE","enum");
    colno+=yyleng;
	yylval=t;
    	yylval.print();
}


[a-zA-Z\$_][a-zA-Z0-9]*  {
    colno+=yyleng;
    string s(yytext);
    Symbolid *i=InstallId(s,lineno,colno);      
    Token t("ID",i);
    
    
    yylval=t;
    yylval.print();
    // return 1;
}

%%
int main()
{
    
    yylex();
    cout<<"\t Symbol Table for Id"<<endl;
    cout<<"Line no | Column no | Value"<<endl;
    for(auto m:StableId)
    {
        cout<<m.second.lineno<<"\t"<<m.second.colno<<"\t"<<m.second.val;
        cout<<endl;
    }
    cout<<"------------------------------\n";
    cout<<"\t Symbol Table for Integers"<<endl;
    cout<<"Line no | Column no | Value"<<endl;
    for(auto m:StableNum)
    {
        cout<<m.second.lineno<<"\t"<<m.second.colno<<"\t"<<m.second.val;
        cout<<endl;
    }
    cout<<"------------------------------\n";
    cout<<"\t Symbol Table for Floats"<<endl;
    cout<<"Line no | Column no | Value"<<endl;
    for(auto m:StableFloat)
    {
        cout<<m.second.lineno<<"\t"<<m.second.colno<<"\t"<<m.second.val;
        cout<<endl;
    }
}
