#pragma once
#include <string>
#include <iostream>
class Symbol
{
public:
    string type;
    string val;
    Symbol(string t, string v)
    {
        type = t;
        val = v;
    }
    void print()
    {
        cout<<"Symbol type = "<<type;
        cout<<"Symbol value="<<val;
    }
};
class Token
{
public:
    string name;
    int type;
    string attr1;
    int attr2;
    Symbol *attr3;
    Token(string n)
    {
        name = n;
        type = -1; //This denotes no attribute
    }
    Token(string n, string attr)
    {
        name = n;
        attr1 = attr;
        type = 1; //This denotes attribute of type string
    }
    Token(string n, int attr)
    {
        name = n;
        attr2 = attr;
        type = 2; //This denotes attribute of type int
    }
    Token(string n, Symbol *attr)
    {
        name = n;
        attr3 = attr;
        type = 3; //This denotes attribute of type pointer to Symbol tab;e
    }
    Token() {}
    void print()
    {
        std::cout << "Token name = " << name << endl;
        std::cout << "Attribute-";
        if (type==0)cout<<"None";
        if(type==1)cout<<attr1;
        if(type==2)cout<<attr2;
        if(type==3)cout<<attr3;
        cout<<endl;
    }
};