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
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";

}
[0-9]+  {
    colno+=yyleng;
    string s(yytext);
    Symbolnum* i=InstallInt(s,lineno,colno);               
    Token t("INT",i);                          
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n"; 
}
\"[^\"]+\"    {
    Token t("STRING",yytext);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\'[^\"]\' {
	int a= yytext[1];
	Token t("CHAR",a);     //new addition of char
	yylval=t;
	yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}



%{ //Beginning of the keywords Section %}
if  {
    Token t("IF");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
else   {
    Token t("ELSE");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

for    {
    Token t("FOR");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
while   {
    Token t("WHILE");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
do  {
    Token t("DO");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
switch  {
    Token t("SWITCH");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
	
return  {
    Token t("RET");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
break	 { 
 	Token t("BREAK");
 	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
true	 { 
 	Token t("TRUE");
 	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
false	 { 
 	Token t("FALSE");
 	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
null	 { 
 	Token t("NULL");
 	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
case	 { 
 	Token t("CASE");
 	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
goto	{
	Token t("GOTO");
	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
import  {
	Token t("IMPORT");
	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
void	{
	Token t("VOID");
	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
continue {
	Token t("CONTINUE");
	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
static {
	Token t("STATIC");
	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
default {	
	Token t("DEFAULT");
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
println {
	Token t("PRINTLN");
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
print   {
    Token t("PRINT");
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
def {
	Token t("DEF");
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
in {
	Token t("IN");
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
assert {
	Token t("ASSERT");
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 }
volatile {
	Token t("VOLATILE");
	yylval=t;
    	yylval.print();
 }
const {
	Token t("CONST");
	yylval=t;
    	yylval.print();
 }
console {
	Token t("CONSOLE");
	yylval=t;
    	yylval.print();
 }
system {
	Token t("SYSTEM");
	yylval=t;
    	yylval.print();
 }
; {
	Token t("TERMINATION");
	yylval=t;
    	yylval.print();
}
new {
	Token t("NEW");
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
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

!\=  {
    Token t("RELOP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\<\=  {
    Token t("RELOP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\>\=  {
    Token t("RELOP",4);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\<  {
    Token t("RELOP",5);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

> {
    Token t("RELOP",6);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

%{/* Operators Section */ %}

\+ {
    Token t("OP",1);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\- {
    Token t("OP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\* {
    Token t("OP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\/ {
    Token t("OP",4);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\% {
    Token t("OP",5);
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
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\|\| {
    Token t("LOGOP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\! {
    Token t("LOGOP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

%{/* Bitwise Operators Section */ %}

\& {
    Token t("BITOP",1);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\| {
    Token t("BITOP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\^ {
    Token t("BITOP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

\~ {
    Token t("BITOP",4);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

%{/* Brackets Section */ %}

\{  {
    Token t("CURLY_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
\}  {
    Token t("CURLY_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
\(  {
    Token t("ROUND_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
\)  {
    Token t("ROUND_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
\[  {
    Token t("SQ_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
\]  {
    Token t("SQ_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

%{/* DATA TYPE Section */ %}

int {
     Token t("DATA_TYPE","int");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
char    {
    Token t("DATA_TYPE","char");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
double  {
    Token t("DATA_TYPE","double");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
float   {
    Token t("DATA_TYPE","float");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
Boolean {
    Token t("DATA_TYPE","Boolean");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
String  {
    Token t("DATA_TYPE","String");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

byte {
	Token t("DATA_TYPE","byte");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

short {
	Token t("DATA_TYPE","short");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

long {
	Token t("DATA_TYPE","long");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}

enum {
	Token t("DATA_TYPE","enum");
    colno+=yyleng;
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}
\/\/.* {

}
\/\*.*\n.*\*\/ {
    cout<<yytext;
}

,   {
    Token t("COMMA");
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
}


[a-zA-Z\$_][a-zA-Z0-9]*  {
    colno+=yyleng;
    string s(yytext);
    Symbolid *i=InstallId(s,lineno,colno);      
    Token t("ID",i);
    
    
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    // return 1;
}

%%
int main()
{
    
    yylex();
    cout<<"\t Symbol Table for Id"<<endl;
    cout<<"Pointer \t Line no | Column no | Value"<<endl;
    for(auto m=StableId.begin();m!=StableId.end();m++)
    {   
        cout<<&(m->second)<<"  \t"<<m->second.lineno<<"\t"<<m->second.colno<<"\t"<<m->second.val;
        cout<<endl;
    }
    cout<<"------------------------------\n";
    cout<<"\t Symbol Table for Integers"<<endl;
    cout<<"Pointer \t Line no | Column no | Value"<<endl;
    for(auto m=StableNum.begin();m!=StableNum.end();m++)
    {
        cout<<&(m->second)<<"  \t"<<m->second.lineno<<"\t"<<m->second.colno<<"\t"<<m->second.val;
        cout<<endl;
    }
    cout<<"------------------------------\n";
    cout<<"\t Symbol Table for Floats"<<endl;
    cout<<"Pointer \t Line no | Column no | Value"<<endl;
    for(auto m=StableFloat.begin();m!=StableFloat.end();m++)
    {
        cout<<&(m->second)<<"  \t"<<m->second.lineno<<"\t"<<m->second.colno<<"\t"<<m->second.val;
        cout<<endl;
    }
}
