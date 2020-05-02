#pragma once
#include <string>
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



class Token
{
public:
    string name;
    int attr_type;
    string attr1;
    int attr2;
    Symbols *attr3;
    
    
    Token(string n)
    {
        name = n;
        attr_type = -1; //This denotes no attribute
    }
    Token(string n, string attr)
    {
        name = n;
        attr1 = attr;
        attr_type = 1; //This denotes attribute of attr_type string
    }
    Token(string n, int attr)
    {
        name = n;
        attr2 = attr;
        attr_type = 2; //This denotes attribute of attr_type int
    }
    Token(string n, Symbolid *attr)
    {
        name = n;
        attr3 = attr;
        attr_type = 3; //This denotes attribute of attr_type pointer to Symbol table for Id
    }
    Token(string n, Symbolnum *attr)
    {
        name = n;
        attr3 = attr;
        attr_type = 4; //This denotes attribute of attr_type pointer to Symbol table for integer
    }
    Token(string n, Symbolfloat *attr)
    {
        name = n;
        attr3 = attr;
        attr_type = 5; //This denotes attribute of attr_type pointer to Symbol table for Real
    }
    
    
    Token() {}
    void print()
    {
        std::cout << "Token name = " << name << "\t";
        std::cout << "Attribute-";
        if(attr_type==-1)cout<<"None";
        if(attr_type==1)cout<<attr1;
        if(attr_type==2)cout<<attr2;
        if(attr_type>=3)cout<<attr3;
        cout<<endl;
    }
};
