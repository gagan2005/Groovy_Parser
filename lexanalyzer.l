%{
#include<iostream>
using namespace std;
#include "lexfunctions.h"
%}
%%
[0-9]+\.[0-9]+ {
    Reall();            
}

%%
int main()
{
    yylex();
}