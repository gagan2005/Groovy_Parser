%{
#include<iostream>
using namespace std;
#include "lexfunctions.h"
int lineno=1;
int colno=1;
%}
%%
\n  {colno=1;lineno++;}
.   {colno++;}
[0-9]+\.[0-9]+  {
    Reall();            
}
\"[^\"]+\"    {
    cout<<"Double quoted string FOund at lin no-"<<lineno<<":"<<colno;
}
\'[^\'']+\''

%%
int main()
{
    yylex();
}