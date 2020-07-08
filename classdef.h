#pragma once
#include <stdio.h>
#include <iostream>
class Symbols
{
    public:
        int lineno;
        int colno;
    Symbols()
    {

    }
    
};
class Symbolid : public Symbols
{
public:
   string val;
   Symbolid(string a,int lno,int cno)
   {
     
       val=a;
       lineno=lno;
       colno=cno;
   }
   Symbolid()
   {

   }
};
class Symbolnum : public Symbols
{
public:
   int val;
   Symbolnum(string a,int lno,int cno)
   {
       
       lineno=lno;
       colno=cno;
       val=stoi(a);             //stores the integer value represented by the string
   }
   Symbolnum()
   {

   }
   
};
class Symbolfloat : public Symbols
{
    public:
   double val;
   Symbolfloat(string a,int lno,int cno)
   {
       
       lineno=lno;
       colno=cno;
       val=atof(a.c_str());            //stores the decimal value represented by the string
   }
   Symbolfloat()
   {

   }
};



class token
{
public:
    string name;
    int attr_type;
    string attr1;
    int attr2;
    Symbols *attr3;
    
    
    token(string n)
    {
        name = n;
        attr_type = -1; //This denotes no attribute
    }
    token(string n, string attr)
    {
        name = n;
        attr1 = attr;
        attr_type = 1; //This denotes attribute of attr_type string
    }
    token(string n, int attr)
    {
        name = n;
        attr2 = attr;
        attr_type = 2; //This denotes attribute of attr_type int
    }
    token(string n, Symbolid *attr)
    {
        name = n;
        attr3 = attr;
        attr_type = 3; //This denotes attribute of attr_type pointer to Symbol table for Id
    }
    token(string n, Symbolnum *attr)
    {
        name = n;
        attr3 = attr;
        attr_type = 4; //This denotes attribute of attr_type pointer to Symbol table for integer
    }
    token(string n, Symbolfloat *attr)
    {
        name = n;
        attr3 = attr;
        attr_type = 5; //This denotes attribute of attr_type pointer to Symbol table for Real
    }
    
    
    token() {}
    void print()
    {
        std::cout << "token name = " << name << "\n";
        std::cout << "Attribute-";
        if(attr_type==-1)cout<<"None";
        if(attr_type==1)cout<<attr1;
        if(attr_type==2)cout<<attr2;
        if(attr_type>=3)cout<<attr3;
        cout<<"\n";
        // cout<<endl;
    }
};
