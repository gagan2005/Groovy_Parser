bison -d parser.y
flex lexanalyzer.l
g++ parser.tab.c lex.yy.c 


