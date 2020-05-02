#include "classdef.h"
Symbolid *InstallId(string k, int ln, int cn)
{
     //put the given real number in symbol table and return a pointer to the entry
     if (!StableId.count(k)) //Checks if the symbol is already present in the table
     {
           Symbolid s(k, ln, cn); //if not present creates a new entry into the symbol table
           StableId[k] = s;
     }
     auto it = StableId.find(k);
     return (&(it->second));
}
Symbolfloat *InstallReal(string k, int ln, int cn)
{
     //put the given real number in symbol table and return a pointer to the entry
     if (!StableFloat.count(k))
     {
          Symbolfloat s(k, ln, cn);
          StableFloat[k] = s;
     }
     auto it = StableFloat.find(k);
     return (&(it->second));
}
Symbolnum *InstallInt(string k, int ln, int cn)
{

     if (!StableId.count(k))
     {
          Symbolnum s(k, ln, cn); 
          StableNum[k] =s; 
     }
          auto it = StableNum.find(k);
          return (&(it->second));
     

}