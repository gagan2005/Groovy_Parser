bison -d parser.y
flex lexanalyzer.l
g++  lex.yy.c parser.tab.c -lfl


