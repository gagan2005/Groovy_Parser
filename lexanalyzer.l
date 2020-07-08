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
    
    string s(yytext);
    Symbolfloat* i=InstallReal(s,lineno,colno);                //The InstallReal function(defined in functions.h) will put data to symbol table
    colno+=yyleng;
    Token t("REAL",i);                          
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return REAL;

}
[0-9]+  {
    
    string s(yytext);
    Symbolnum* i=InstallInt(s,lineno,colno); 
    colno+=yyleng;              
    Token t("INT",i);                          
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n"; 
	return INT;
}
\"[^\"]+\"    {
    Token t("STRING",yytext);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return STRING;
}

\'[^\"]\' {
	int a= yytext[1];
	Token t("CHAR",a);     //new addition of char
	colno+=yyleng;
	yylval=t;
	yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return CHAR;
}



%{ //Beginning of the keywords Section %}
if  {
    Token t("IF");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return IF;
}
else   {
    Token t("ELSE");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return ELSE;
}

for    {
    Token t("FOR");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return FOR;
}

while   {
    Token t("WHILE");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return WHILE;
}
do  {
    Token t("DO");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return DO;
}
switch  {
    Token t("SWITCH");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return SWITCH;
}
	
return  {
    Token t("RET");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return RET;
}
break	 { 
 	Token t("BREAK");
 	colno+=yyleng;
 	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return BREAK;
 }
true	 { 
 	Token t("TRUE");
 	colno+=yyleng;
 	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
     return TRUE;
 }
false	 { 
 	Token t("FALSE");
 	colno+=yyleng;
 	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
     return FALSE;
 }
null	 { 
 	Token t("NULL");
 	colno+=yyleng;
 	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
     return NULL;
 }
case	 { 
 	Token t("CASE");
 	colno+=yyleng;
 	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return CASE;
 }
goto	{
	Token t("GOTO");
	colno+=yyleng;
	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return GOTO;
 }
import  {
	Token t("IMPORT");
	colno+=yyleng;
	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return IMPORT;
 }
void	{
	Token t("VOID");
	colno+=yyleng;
	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return VOID;
 }
continue {
	Token t("CONTINUE");
	colno+=yyleng;
	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return CONTINUE;
 }
static {
	Token t("STATIC");
	colno+=yyleng;
	yylval=t;
 	yylval.print();
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return STATIC;
 }
default {	
	Token t("DEFAULT");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return DEFAULT;
 }
println {
	Token t("PRINTLN");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return PRINTLN;
 }
print   {
    Token t("PRINT");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return PRINT;
}
def {
	Token t("DEF");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return DEF;
 }
in {
	Token t("IN");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return IN;
 }
assert {
	Token t("ASSERT");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return ASSERT;
 }
volatile {
	Token t("VOLATILE");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return VOLATILE;
 }
const {
	Token t("CONST");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return CONST;
 }
console {
	Token t("CONSOLE");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return CONSOLE;
 }
system {
	Token t("SYSTEM");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return SYSTEM;
 }
; {
	Token t("TERMINATION");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return TERMINATION;
}
: {
	Token t("COLON");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return COLON;
}
new {
	Token t("NEW");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return NEW;
 }
newreader {
	Token t("NEWREADER");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return NEWREADER;
 }
readline {
	Token t("READLINE");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return READLINE;
}
\. {
	Token t("DOT");
	colno+=yyleng;
	yylval=t;
    	yylval.print();
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return DOT;
}

%{ /* End of keyword Section */ %}

%{/* Relational Operators Section */ %}

\=   {
    Token t("RELOP",1);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return RELOP;
}

!\=  {
    Token t("RELOP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return RELOP;
}

\<\=  {
    Token t("RELOP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RELOP;
}

\>\=  {
    Token t("RELOP",4);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RELOP;
}

\<  {
    Token t("RELOP",5);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RELOP;
}

\> {
    Token t("RELOP",6);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RELOP;
}

%{/* Operators Section */ %}

\+ {
    Token t("OP",1);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return OP;
}

\- {
    Token t("OP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return OP;
}

\* {
    Token t("OP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return OP;
}

\/ {
    Token t("OP",4);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return OP;
}

\% {
    Token t("OP",5);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    return OP;
}

%{/*Logical Operators Section */ %}

\&\& {
    Token t("LOGOP",1);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return LOGOP;
}

\|\| {
    Token t("LOGOP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return LOGOP;
}

\! {
    Token t("LOGOP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return LOGOP;
}

%{/* Bitwise Operators Section */ %}

\& {
    Token t("BITOP",1);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return BITOP;
}

\| {
    Token t("BITOP",2);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return BITOP;
}

\^ {
    Token t("BITOP",3);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return BITOP;
}

\~ {
    Token t("BITOP",4);
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return BITOP;
}

%{/* Brackets Section */ %}

\{  {
    Token t("CURLY_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return CBO;
}
\}  {
    Token t("CURLY_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return CBC;
}
\(  {
    Token t("ROUND_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RBO;
}
\)  {
    Token t("ROUND_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RBC;
}
\[  {
    Token t("SQ_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return SBO;
}
\]  {
    Token t("SQ_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return SBC;
}

%{/* DATA TYPE Section */ %}

int {
     Token t("DATA_TYPE","int");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}
char    {
    Token t("DATA_TYPE","char");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}
double  {
    Token t("DATA_TYPE","double");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}
float   {
    Token t("DATA_TYPE","float");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}
Boolean {
    Token t("DATA_TYPE","Boolean");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}
String  {
    Token t("DATA_TYPE","String");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}

byte {
	Token t("DATA_TYPE","byte");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}

short {
	Token t("DATA_TYPE","short");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}

long {
	Token t("DATA_TYPE","long");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}

enum {
	Token t("DATA_TYPE","enum");
    colno+=yyleng;
	yylval=t;
    	yylval.print();
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
        return DT;
}

\/\/.* {

}
\/\*.*\n.*\*\/ {
   
   
	for(int i=0;i<yyleng;i++)
    {
        cout<<yytext[i];
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
    Token t("COMMA");
    colno+=yyleng;
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return COMMA;
}


[a-zA-Z\$_][a-zA-Z0-9]*  {
   
    string s(yytext);
    
    Symbolid *i=InstallId(s,lineno,colno);      
     colno+=yyleng;
    Token t("ID",i);
    
    
    yylval=t;
    yylval.print();
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    // return 1;
    return ID;
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
