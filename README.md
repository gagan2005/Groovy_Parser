# Groovy_to_C

A bison and flex parser for Groovy
## build commands. 
- `bison -d parser.y`
- `flex lexanalyzer.l`
- `g++  lex.yy.c parser.tab.c -lfl`

OR

- chmod +x build.sh  
- ./build.sh
