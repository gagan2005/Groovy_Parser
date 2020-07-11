/* A Bison parser, made by GNU Bison 3.4.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2019 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    ID = 258,
    REAL = 259,
    INT = 260,
    STRING = 261,
    CHAR = 262,
    IF = 263,
    FOR = 264,
    WHILE = 265,
    DO = 266,
    SWITCH = 267,
    RET = 268,
    BREAK = 269,
    TRUE = 270,
    FALSE = 271,
    _NULL = 272,
    CASE = 273,
    GOTO = 274,
    IMPORT = 275,
    VOID = 276,
    CONTINUE = 277,
    STATIC = 278,
    DEFAULT = 279,
    PRINTLN = 280,
    PRINT = 281,
    DEF = 282,
    IN = 283,
    ASSERT = 284,
    VOLATILE = 285,
    CONST = 286,
    CONSOLE = 287,
    SYSTEM = 288,
    TERM = 289,
    COLON = 290,
    NEW = 291,
    NEWREADER = 292,
    READLINE = 293,
    DOT = 294,
    NEG = 295,
    DT = 296,
    COMMA = 297,
    shift = 298,
    PLUS = 299,
    MIN = 300,
    MUL = 301,
    DIV = 302,
    POW = 303,
    EQ = 304,
    RELOP = 305,
    LOGOP = 306,
    BITOP = 307,
    QUES = 308,
    AS = 309,
    MOD = 310,
    AND = 311,
    OR = 312,
    NOT = 313,
    INC = 314,
    DEC = 315,
    NOELSE = 316,
    ELSE = 317
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
