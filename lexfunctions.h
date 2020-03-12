/* All the actions to be taken when a token is found will be stored here */
#include "classdef.h"
Symbol* InstallReal()
{
    //put the given real number in symbol table and return a pointer to the entry
    Symbol s("REAL",yytext);
    Stable.push_back(s);
    return Stable.data()+Stable.size()-1;
}
Symbol* InstallInt()
{
     Symbol s("INT",yytext);
     Stable.push_back(s);
     return Stable.data()+Stable.size()-1;
}
Symbol* InstallId()
{
     Symbol s("INT",yytext);
     Stable.push_back(s);
     return Stable.data()+Stable.size()-1;
}