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
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return REAL;

}
[0-9]+  {
    
    string s(yytext);
    Symbolnum* i=InstallInt(s,lineno,colno); 
    colno+=yyleng;              
    token t("INT",i);                          
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n"; 
	return INT;
}
\"[^\"]+\"    {
    token t("STRING",yytext);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return STRING;
}

\'[^\"]\' {
	int a= yytext[1];
	token t("CHAR",a);     //new addition of char
	colno+=yyleng;
	yylval=t;
	
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return CHAR;
}



%{ //Beginning of the keywords Section %}
if  {
    token t("IF");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return IF;
}
else   {
    token t("ELSE");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return ELSE;
}

for    {
    token t("FOR");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return FOR;
}

while   {
    token t("WHILE");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return WHILE;
}
do  {
    token t("DO");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return DO;
}
switch  {
    token t("SWITCH");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return SWITCH;
}
	
return  {
    token t("RET");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return RET;
}
break	 { 
 	token t("BREAK");
 	colno+=yyleng;
 	yylval=t;
 	
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return BREAK;
 }
true	 { 
 	token t("TRUE");
 	colno+=yyleng;
 	yylval=t;
 	
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
     return TRUE;
 }
false	 { 
 	token t("FALSE");
 	colno+=yyleng;
 	yylval=t;
 	
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
     return FALSE;
 }
null	 { 
 	token t("NULL");
 	colno+=yyleng;
 	yylval=t;
 	
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
     return _NULL;
 }
case	 { 
 	token t("CASE");
 	colno+=yyleng;
 	yylval=t;
 	
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return CASE;
 }
goto	{
	token t("GOTO");
	colno+=yyleng;
	yylval=t;
 	
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return GOTO;
 }
import  {
	token t("IMPORT");
	colno+=yyleng;
	yylval=t;
 	
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return IMPORT;
 }
void	{
	token t("VOID");
	colno+=yyleng;
	yylval=t;
 	
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return VOID;
 }
continue {
	token t("CONTINUE");
	colno+=yyleng;
	yylval=t;
 	
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return CONTINUE;
 }
static {
	token t("STATIC");
	colno+=yyleng;
	yylval=t;
 	
     cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return STATIC;
 }
default {	
	token t("DEFAULT");
	colno+=yyleng;
	yylval=t;
    	
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return DEFAULT;
 }
println {
	token t("PRINTLN");
	colno+=yyleng;
	yylval=t;
    	
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return PRINTLN;
 }
print   {
    token t("PRINT");
	colno+=yyleng;
	yylval=t;
    	
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return PRINT;
}
def {
	token t("DEF");
	colno+=yyleng;
	yylval=t;
    	
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return DEF;
 }
in {
	token t("IN");
	colno+=yyleng;
	yylval=t;
    	
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return IN;
 }
assert {
	token t("ASSERT");
	colno+=yyleng;
	yylval=t;
    	
        cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return ASSERT;
 }
volatile {
	token t("VOLATILE");
	colno+=yyleng;
	yylval=t;
    	
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return VOLATILE;
 }
const {
	token t("CONST");
	colno+=yyleng;
	yylval=t;
    	
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return CONST;
 }
console {
	token t("CONSOLE");
	colno+=yyleng;
	yylval=t;
    	
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return CONSOLE;
 }
system {
	token t("SYSTEM");
	colno+=yyleng;
	yylval=t;
    	
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return SYSTEM;
 }
; {
	token t("TERM");
	colno+=yyleng;
	yylval=t;
    	
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return TERM;
}
: {
	token t("COLON");
	colno+=yyleng;
	yylval=t;
    	
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return COLON;
}
new {
	token t("NEW");
	colno+=yyleng;
	yylval=t;
    	
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return NEW;
 }
newreader {
	token t("NEWREADER");
	colno+=yyleng;
	yylval=t;
    	
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
 	return NEWREADER;
 }
readline {
	token t("READLINE");
	colno+=yyleng;
	yylval=t;
    	
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return READLINE;
}
\. {
	token t("DOT");
	colno+=yyleng;
	yylval=t;
    	
    	 cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return DOT;
}

%{ /* End of keyword Section */ %}

%{/* Relational Operators Section */ %}

\=   {
    token t("RELOP",1);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return RELOP;
}

!\=  {
    token t("RELOP",2);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
	return RELOP;
}

\<\=  {
    token t("RELOP",3);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RELOP;
}

\>\=  {
    token t("RELOP",4);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RELOP;
}

\<  {
    token t("RELOP",5);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RELOP;
}

\> {
    token t("RELOP",6);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RELOP;
}

%{/* Operators Section */ %}

\+ {
    token t("PLUS",1);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return PLUS;
}

\- {
    token t("OP",2);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return OP;
}

\* {
    token t("OP",3);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return OP;
}

\/ {
    token t("OP",4);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return OP;
}

\% {
    token t("OP",5);
    colno+=yyleng;
    yylval=t;
    
    return OP;
}

%{/*Logical Operators Section */ %}

\&\& {
    token t("LOGOP",1);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return LOGOP;
}

\|\| {
    token t("LOGOP",2);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return LOGOP;
}

\! {
    token t("LOGOP",3);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return LOGOP;
}

%{/* Bitwise Operators Section */ %}

\& {
    token t("BITOP",1);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return BITOP;
}

\| {
    token t("BITOP",2);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return BITOP;
}

\^ {
    token t("BITOP",3);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return BITOP;
}

\~ {
    token t("BITOP",4);
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return BITOP;
}

%{/* Brackets Section */ %}

\{  {
    token t("CURLY_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return CBO;
}
\}  {
    token t("CURLY_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return CBC;
}
\(  {
    token t("ROUND_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RBO;
}
\)  {
    token t("ROUND_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return RBC;
}
\[  {
    token t("SQ_BRACKET_O");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return SBO;
}
\]  {
    token t("SQ_BRACKET_C");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return SBC;
}

%{/* DATA TYPE Section */ %}

int {
     token t("DATA_TYPE","int");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}
char    {
    token t("DATA_TYPE","char");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}
double  {
    token t("DATA_TYPE","double");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}
float   {
    token t("DATA_TYPE","float");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}
Boolean {
    token t("DATA_TYPE","Boolean");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}
String  {
    token t("DATA_TYPE","String");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}

byte {
	token t("DATA_TYPE","byte");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}

short {
	token t("DATA_TYPE","short");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}

long {
	token t("DATA_TYPE","long");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return DT;
}

enum {
	token t("DATA_TYPE","enum");
    colno+=yyleng;
	yylval=t;
    	
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
    token t("COMMA");
    colno+=yyleng;
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    return COMMA;
}


[a-zA-Z\$_][a-zA-Z0-9]*  {
   
    string s(yytext);
    
    Symbolid *i=InstallId(s,lineno,colno);      
     colno+=yyleng;
    token t("ID",i);
    
    
    yylval=t;
    
    cout<<"Text-"<<yytext<<endl<<"-------------------------\n";
    // return 1;
    return ID;
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
