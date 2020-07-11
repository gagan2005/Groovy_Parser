/* A Bison parser, made by GNU Bison 3.4.1.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.4.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parser.y"


#include<bits/stdc++.h>
using namespace std;
#include "classdef.h"
#include<stdio.h>
#define YYSTYPE token
    int yyparse(void);
    int yylex(void);
    void yyerror(char const *);
extern int lineno;
extern int colno;
extern char *yytext;

#line 85 "parser.tab.c"

# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
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



#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  108
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   683

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  69
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  63
/* YYNRULES -- Number of rules.  */
#define YYNRULES  166
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  379

#define YYUNDEFTOK  2
#define YYMAXUTOK   317

/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                                \
  ((unsigned) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
      43,    44,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    45,     2,    46,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    41,     2,    42,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    47,    48,    49,    50,
      51,    52,    53,    54,    55,    56,    57,    58,    59,    60,
      61,    62,    63,    64,    65,    66,    67,    68
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    86,    86,    87,    88,    90,    91,    92,    93,    96,
      97,    98,    99,   100,   101,   102,   103,   104,   105,   106,
     107,   108,   109,   110,   111,   112,   114,   117,   118,   119,
     123,   124,   125,   126,   127,   131,   133,   139,   141,   142,
     144,   145,   146,   147,   150,   151,   152,   156,   161,   165,
     165,   166,   167,   168,   169,   173,   176,   177,   178,   179,
     181,   183,   184,   185,   186,   188,   189,   190,   191,   192,
     194,   196,   197,   198,   199,   201,   202,   203,   204,   206,
     207,   208,   209,   210,   211,   212,   213,   215,   221,   222,
     224,   229,   231,   232,   234,   235,   236,   238,   239,   240,
     241,   243,   244,   246,   247,   249,   251,   252,   254,   255,
     257,   258,   260,   261,   263,   264,   266,   267,   268,   270,
     271,   273,   274,   277,   278,   279,   281,   282,   287,   289,
     290,   291,   293,   296,   298,   303,   304,   305,   306,   307,
     308,   311,   311,   311,   311,   311,   311,   313,   314,   315,
     316,   318,   319,   320,   321,   323,   324,   326,   328,   330,
     340,   341,   342,   343,   344,   345,   349
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "ID", "REAL", "INT", "STRING", "CHAR",
  "IF", "FOR", "WHILE", "DO", "SWITCH", "RET", "BREAK", "TRUE", "FALSE",
  "_NULL", "CASE", "GOTO", "IMPORT", "VOID", "CONTINUE", "STATIC",
  "DEFAULT", "PRINTLN", "PRINT", "DEF", "IN", "ASSERT", "VOLATILE",
  "CONST", "CONSOLE", "SYSTEM", "TERM", "COLON", "NEW", "NEWREADER",
  "READLINE", "DOT", "NEG", "'{'", "'}'", "'('", "')'", "'['", "']'", "DT",
  "COMMA", "shift", "PLUS", "MIN", "MUL", "DIV", "POW", "EQ", "RELOP",
  "LOGOP", "BITOP", "QUES", "AS", "MOD", "AND", "OR", "NOT", "INC", "DEC",
  "NOELSE", "ELSE", "$accept", "program", "sstmts", "sstmt", "label",
  "assert", "f", "cstmt", "while", "dowhilestmt", "ret", "comp", "expr",
  "terexp", "println", "print", "import", "t", "const", "varDeclare",
  "mulDeclare", "E", "varAssign", "mulAssign", "G", "H", "input",
  "infunction", "pattern", "find", "forloop", "forpart", "forstmt", "a",
  "b", "var", "arr", "dims", "dim", "incdec", "fundef", "arglist", "arg",
  "funcall", "argumentlist", "ifstmt", "then", "switchstmt", "default",
  "cases", "case", "breakstmt", "constmt", "aexpr", "op", "bexpr",
  "bexpr_", "logop", "terstmt", "elvisop", "elvisassignmentop", "terms",
  "termination", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   123,   125,    40,    41,    91,    93,   296,   297,   298,
     299,   300,   301,   302,   303,   304,   305,   306,   307,   308,
     309,   310,   311,   312,   313,   314,   315,   316,   317
};
# endif

#define YYPACT_NINF -183

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-183)))

#define YYTABLE_NINF -155

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     395,   325,   -12,    47,    67,   124,    77,   126,   145,    36,
     145,   126,   126,    14,   126,   185,   152,  -183,    11,   207,
     231,  -183,   436,   520,  -183,   436,  -183,  -183,  -183,  -183,
    -183,  -183,  -183,  -183,  -183,   145,  -183,  -183,  -183,  -183,
    -183,  -183,     2,  -183,  -183,   436,   145,  -183,  -183,  -183,
    -183,  -183,  -183,   311,   229,  -183,  -183,  -183,  -183,  -183,
      31,   182,  -183,   162,  -183,   184,   240,   126,    18,   126,
     436,   126,   162,  -183,  -183,  -183,  -183,  -183,   126,   329,
     145,   191,  -183,  -183,   582,  -183,   206,  -183,  -183,   596,
    -183,    79,   246,   145,  -183,   -10,   -10,   170,    11,   145,
      46,   196,   232,   209,   262,   226,   204,   145,  -183,    26,
     271,  -183,  -183,  -183,  -183,  -183,  -183,  -183,  -183,  -183,
      54,  -183,   233,   242,    17,   169,   191,   110,  -183,  -183,
     240,  -183,    99,   274,   274,   249,   252,    -5,   104,   254,
     109,   191,   253,   522,   256,   534,   329,   610,   144,   622,
    -183,   111,   329,   329,   329,   329,  -183,  -183,   329,   240,
     240,     9,   307,  -183,  -183,  -183,  -183,  -183,   266,   271,
     119,   278,  -183,   240,  -183,   240,   279,    11,   275,   269,
     266,   126,  -183,    56,    92,  -183,   240,  -183,  -183,   290,
     169,   283,   282,   291,  -183,  -183,   258,   284,   285,   488,
     190,   274,   240,   296,   332,   302,  -183,  -183,  -183,  -183,
     546,   558,   329,   240,   313,   610,   622,   610,   219,  -183,
     144,  -183,  -183,  -183,  -183,  -183,   346,   113,  -183,  -183,
      15,   312,    10,   169,   112,   116,   297,  -183,   145,   316,
    -183,    11,   314,   175,  -183,   315,   310,  -183,   169,   145,
     436,  -183,   293,   240,   240,   436,  -183,  -183,   190,   328,
    -183,  -183,  -183,   436,   320,  -183,   144,  -183,   240,   309,
     326,   266,   335,   334,   353,   145,   379,   337,   271,   338,
    -183,   343,  -183,   347,  -183,   169,   348,   358,   349,  -183,
    -183,   368,   195,  -183,  -183,   369,   546,   256,   558,    41,
     370,   126,   163,  -183,   126,   436,  -183,   375,   360,   352,
    -183,   366,   145,  -183,   145,   169,   381,   377,   436,   145,
     169,  -183,  -183,  -183,  -183,   570,  -183,  -183,  -183,   123,
     240,   397,   388,  -183,   191,   391,   390,   432,   160,   145,
    -183,  -183,   394,   398,  -183,   409,  -183,  -183,    37,   145,
     401,   436,  -183,  -183,   145,   399,   412,  -183,   145,   419,
    -183,  -183,   436,  -183,  -183,   145,   415,  -183,   417,  -183,
    -183,   425,   422,   430,  -183,   428,   429,   145,  -183
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,   103,     0,     0,     0,     0,     0,    38,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   166,     0,     0,
       0,     3,     7,     0,    22,     8,    31,    32,    12,    13,
      14,    15,    16,     9,    59,     0,    67,    11,    84,    25,
      24,    33,     0,   104,    17,     2,     0,    30,    34,    20,
      21,    18,    26,     0,     0,   141,   142,   144,   143,   146,
       0,     0,   145,   105,   107,     0,     0,     0,    97,     0,
       0,     0,   103,   161,   160,   165,   163,   164,     0,     0,
       0,    39,    43,   162,    40,    41,     0,    45,    46,    42,
     133,     0,     0,     0,   134,     0,     0,    63,     0,     0,
      28,     0,     0,    74,     0,     0,    63,     0,     1,     0,
       0,     5,    23,     6,    10,   110,   111,     4,    19,   120,
       0,   122,     0,     0,   103,     0,    65,     0,   159,   106,
       0,    69,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    43,   154,    41,   153,     0,   154,   150,   153,
      37,     0,     0,     0,     0,     0,   155,   156,     0,     0,
       0,     0,     0,    53,    50,    49,    47,    48,   116,     0,
       0,     0,    57,     0,    27,     0,     0,     0,    73,     0,
     116,     0,    56,    63,    63,   119,     0,   108,   109,     0,
       0,     0,    77,     0,    85,    68,     0,     0,     0,     0,
     101,     0,     0,     0,     0,     0,    44,   137,   149,   140,
       0,     0,     0,     0,     0,   139,     0,   138,   147,   152,
     148,   136,   135,    52,    51,    54,     0,     0,   115,    61,
     103,     0,     0,     0,    64,     0,     0,    29,     0,     0,
      71,     0,     0,     0,   121,     0,     0,    66,     0,     0,
       0,   127,   123,     0,     0,     0,    93,    91,     0,     0,
     102,    96,    98,     0,     0,   130,   151,   158,     0,   117,
       0,   116,     0,     0,     0,     0,     0,     0,     0,     0,
      79,     0,    55,     0,    72,     0,     0,     0,    78,    76,
      86,     0,     0,   100,    99,     0,   154,     0,   153,     0,
       0,     0,     0,   157,     0,     0,   114,     0,     0,     0,
      88,     0,     0,    62,     0,     0,     0,     0,     0,     0,
       0,   126,   125,   124,    92,   103,    95,    94,    35,     0,
       0,     0,     0,   131,   118,     0,     0,     0,     0,     0,
      58,    80,     0,     0,    70,     0,    83,    75,     0,     0,
       0,     0,   128,   113,     0,     0,     0,    89,     0,     0,
     112,    36,     0,   129,    82,     0,     0,    60,     0,   132,
      90,     0,     0,     0,    87,     0,     0,     0,    81
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -183,  -183,   -15,   -19,  -183,  -183,  -183,  -183,  -183,  -183,
    -183,  -183,     8,   400,  -183,  -183,  -183,   -83,  -183,  -183,
    -183,   -14,   173,  -183,   -85,  -182,  -183,   -49,  -183,  -183,
    -183,  -183,  -183,  -183,  -183,     3,  -183,  -183,   413,   176,
    -183,   300,   210,  -183,  -183,   192,   193,  -183,  -183,  -183,
    -183,  -183,  -183,   -46,     0,   -72,   -61,  -183,  -183,  -183,
    -183,   241,    -8
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    20,    21,    22,    23,    24,   174,    25,    26,    27,
      28,    80,   126,    82,    29,    30,    31,    93,    32,    33,
      34,    99,    35,    36,   105,   191,    37,    38,    39,    40,
      41,   257,   135,   136,   259,    83,    43,    63,    64,    44,
      45,   227,   228,    46,   120,    47,   252,    48,   332,   302,
     333,    49,    50,    84,   153,    85,    86,   158,    87,    88,
      66,    89,    51
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      90,    65,    94,    42,   112,   107,   144,   111,   246,   164,
     113,   127,    91,   171,   103,    81,   275,    97,   148,    95,
      96,    72,   100,   201,    17,    42,    42,   114,    42,   183,
     117,    67,   143,   147,   124,    73,    74,    75,   118,    91,
      72,    73,    74,    75,   325,   133,    76,    77,    42,   151,
     202,   277,    76,    77,   272,   139,   189,    98,   104,    92,
      54,   223,    54,   276,    16,   134,   289,   115,   116,    98,
     273,   137,   150,    42,    78,   132,   125,   138,   224,   140,
      78,   173,   125,   163,    18,   165,   141,   166,   167,   160,
      68,   172,   240,   218,   219,    79,   107,   220,   185,   182,
     210,    79,   186,   317,   169,   151,   215,   217,   147,   147,
      69,   170,   147,    17,    72,    73,    74,    75,   161,   194,
      71,   235,   230,    73,    74,    75,    76,    77,   260,    72,
      73,    74,    75,   342,    76,    77,   197,   198,   347,   162,
     169,    76,    77,   196,    17,   160,   213,   181,   203,   160,
      17,   266,   231,   205,   147,   229,   284,   270,   151,   232,
     278,   271,    78,   151,   233,    70,   147,   349,   151,    78,
     193,   151,    72,    73,    74,    75,   279,   251,   234,    17,
     256,   330,   151,    79,    76,    77,   297,   331,   101,   234,
      79,   102,   356,    72,    73,    74,    75,   283,     1,    42,
     212,   155,    42,     2,   261,    76,    77,    54,     7,     8,
     106,   160,   296,   168,   190,     9,   160,    10,   169,   286,
      11,    12,   109,   271,    14,   170,    15,   280,    16,    17,
     282,   108,   122,   258,   123,   291,   250,   128,    18,   130,
     295,   290,   110,    72,    73,    74,    75,   180,   300,    91,
     151,   175,   169,    42,    79,    76,    77,   177,    42,   181,
     176,     1,   154,   155,   313,   178,    42,   310,   156,   157,
     179,     7,     8,   251,   184,   212,   155,    72,     9,   187,
      10,  -151,  -151,    11,    12,   109,   200,    14,   188,    15,
     335,    16,    17,   199,   121,    42,   204,   206,   160,   250,
     208,    18,    42,   345,   340,   110,   341,   131,    42,   329,
     225,   346,   334,   226,    72,    73,    74,    75,   239,   145,
     149,    42,   236,   241,   242,    65,    76,    77,   245,   247,
     248,   357,    72,    73,    74,    75,   363,   263,   249,   253,
     254,   361,   264,   265,    76,    77,   364,   369,   268,   269,
     367,   274,   281,   283,    42,   119,   288,   370,   287,   285,
      52,   292,   299,   301,   304,    42,   192,   305,    53,   378,
      54,   195,   146,   307,   308,    55,    56,    57,    58,    59,
      60,   309,   311,   312,    61,   314,    62,   211,   315,   318,
     316,   338,   214,   216,   216,   149,   149,   320,     1,   149,
     221,   222,   319,     2,     3,     4,     5,     6,     7,     8,
     321,   324,   328,   337,   237,     9,   238,    10,   336,   339,
      11,    12,    13,   344,    14,   343,    15,   244,    16,    17,
     352,   192,   351,   353,   354,   355,   362,   359,    18,     1,
     358,   149,    19,   262,     2,     3,     4,     5,     6,     7,
       8,   360,   365,   149,   267,   366,     9,   368,    10,   371,
     372,    11,    12,   109,   373,    14,   374,    15,   375,    16,
      17,   376,   326,   377,   192,   327,   129,     0,   142,    18,
     243,   306,     0,   110,   322,   323,     0,     0,     0,   192,
       0,     1,     0,     0,   293,   294,     0,     0,     0,   298,
       0,     7,     8,     0,     0,     0,     0,     0,     9,   303,
      10,     0,     0,    11,    12,   109,     0,    14,     0,    15,
       0,    16,    17,     1,     0,     0,   192,     0,     0,   255,
       0,    18,     0,     7,     8,   110,     0,     0,     0,     0,
       9,     0,    10,     0,     0,    11,    12,   109,     0,    14,
       0,    15,     0,    16,    17,     0,   192,     0,     0,     0,
       0,   192,     0,    18,     0,     0,   207,   110,     0,     0,
       0,   350,    55,    56,    57,    58,    59,     0,   209,     0,
     152,   -40,     0,    62,    55,    56,    57,    58,    59,     0,
     207,     0,   159,   -42,     0,    62,    55,    56,    57,    58,
      59,     0,   209,     0,   152,     0,     0,    62,    55,    56,
      57,    58,    59,     0,     0,    54,   159,     0,     0,    62,
      55,    56,    57,    58,    59,   348,     0,     0,     0,    61,
       0,    62,    55,    56,    57,    58,    59,     0,  -154,  -154,
     152,     0,     0,    62,  -154,  -154,    55,    56,    57,    58,
      59,     0,  -153,  -153,   159,     0,     0,    62,  -153,  -153,
      55,    56,    57,    58,    59,     0,     0,     0,   152,     0,
       0,    62,    55,    56,    57,    58,    59,     0,     0,     0,
     159,     0,     0,    62
};

static const yytype_int16 yycheck[] =
{
       8,     1,    10,     0,    23,    19,    78,    22,   190,    92,
      25,    60,     3,    98,     3,     7,     6,     3,    79,    11,
      12,     3,    14,    28,    34,    22,    23,    35,    25,     3,
      45,    43,    78,    79,     3,     4,     5,     6,    46,     3,
       3,     4,     5,     6,     3,    27,    15,    16,    45,    59,
      55,   233,    15,    16,    39,    70,    39,    43,    47,    23,
      45,    52,    45,    53,    33,    47,   248,    65,    66,    43,
      55,    68,    80,    70,    43,    67,    45,    69,   161,    71,
      43,    35,    45,    91,    43,    93,    78,    95,    96,    89,
      43,    99,   177,   154,   155,    64,   110,   158,    44,   107,
     146,    64,    48,   285,    48,    59,   152,   153,   154,   155,
      43,    55,   158,    34,     3,     4,     5,     6,    39,   127,
      43,   170,     3,     4,     5,     6,    15,    16,   200,     3,
       4,     5,     6,   315,    15,    16,   133,   134,   320,    60,
      48,    15,    16,    44,    34,   145,    35,    55,    44,   149,
      34,   212,    33,    44,   200,   169,   241,    44,    59,    40,
      48,    48,    43,    59,    45,    41,   212,    44,    59,    43,
      60,    59,     3,     4,     5,     6,    60,   196,   170,    34,
     199,    18,    59,    64,    15,    16,   258,    24,     3,   181,
      64,    39,    32,     3,     4,     5,     6,    37,     3,   196,
      56,    57,   199,     8,   201,    15,    16,    45,    13,    14,
       3,   211,   258,    43,    45,    20,   216,    22,    48,    44,
      25,    26,    27,    48,    29,    55,    31,   235,    33,    34,
     238,     0,     3,    43,     5,   250,    41,    55,    43,    55,
     255,   249,    47,     3,     4,     5,     6,    43,   263,     3,
      59,    55,    48,   250,    64,    15,    16,    48,   255,    55,
      28,     3,    56,    57,   278,     3,   263,   275,    62,    63,
      44,    13,    14,   292,     3,    56,    57,     3,    20,    46,
      22,    62,    63,    25,    26,    27,    34,    29,    46,    31,
     305,    33,    34,    44,    53,   292,    42,    44,   298,    41,
      44,    43,   299,   318,   312,    47,   314,    66,   305,   301,
       3,   319,   304,    47,     3,     4,     5,     6,    39,    78,
      79,   318,    44,    48,    55,   325,    15,    16,    38,    46,
      48,   339,     3,     4,     5,     6,   351,    41,    47,    55,
      55,   349,    10,    41,    15,    16,   354,   362,    35,     3,
     358,    39,    55,    37,   351,    44,    46,   365,    43,    45,
      35,    68,    34,    43,    55,   362,   125,    41,    43,   377,
      45,   130,    43,    38,    40,    50,    51,    52,    53,    54,
      55,    28,     3,    46,    59,    47,    61,   146,    45,    41,
      43,    39,   151,   152,   153,   154,   155,    48,     3,   158,
     159,   160,    44,     8,     9,    10,    11,    12,    13,    14,
      42,    42,    42,    53,   173,    20,   175,    22,    43,    53,
      25,    26,    27,    46,    29,    44,    31,   186,    33,    34,
      42,   190,    35,    42,    44,     3,    35,    39,    43,     3,
      46,   200,    47,   202,     8,     9,    10,    11,    12,    13,
      14,    42,    53,   212,   213,    43,    20,    38,    22,    44,
      43,    25,    26,    27,    39,    29,    44,    31,    38,    33,
      34,    43,   299,    44,   233,   299,    63,    -1,    78,    43,
     180,   271,    -1,    47,   292,   292,    -1,    -1,    -1,   248,
      -1,     3,    -1,    -1,   253,   254,    -1,    -1,    -1,   258,
      -1,    13,    14,    -1,    -1,    -1,    -1,    -1,    20,   268,
      22,    -1,    -1,    25,    26,    27,    -1,    29,    -1,    31,
      -1,    33,    34,     3,    -1,    -1,   285,    -1,    -1,    41,
      -1,    43,    -1,    13,    14,    47,    -1,    -1,    -1,    -1,
      20,    -1,    22,    -1,    -1,    25,    26,    27,    -1,    29,
      -1,    31,    -1,    33,    34,    -1,   315,    -1,    -1,    -1,
      -1,   320,    -1,    43,    -1,    -1,    44,    47,    -1,    -1,
      -1,   330,    50,    51,    52,    53,    54,    -1,    44,    -1,
      58,    59,    -1,    61,    50,    51,    52,    53,    54,    -1,
      44,    -1,    58,    59,    -1,    61,    50,    51,    52,    53,
      54,    -1,    44,    -1,    58,    -1,    -1,    61,    50,    51,
      52,    53,    54,    -1,    -1,    45,    58,    -1,    -1,    61,
      50,    51,    52,    53,    54,    55,    -1,    -1,    -1,    59,
      -1,    61,    50,    51,    52,    53,    54,    -1,    56,    57,
      58,    -1,    -1,    61,    62,    63,    50,    51,    52,    53,
      54,    -1,    56,    57,    58,    -1,    -1,    61,    62,    63,
      50,    51,    52,    53,    54,    -1,    -1,    -1,    58,    -1,
      -1,    61,    50,    51,    52,    53,    54,    -1,    -1,    -1,
      58,    -1,    -1,    61
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     8,     9,    10,    11,    12,    13,    14,    20,
      22,    25,    26,    27,    29,    31,    33,    34,    43,    47,
      70,    71,    72,    73,    74,    76,    77,    78,    79,    83,
      84,    85,    87,    88,    89,    91,    92,    95,    96,    97,
      98,    99,   104,   105,   108,   109,   112,   114,   116,   120,
     121,   131,    35,    43,    45,    50,    51,    52,    53,    54,
      55,    59,    61,   106,   107,   123,   129,    43,    43,    43,
      41,    43,     3,     4,     5,     6,    15,    16,    43,    64,
      80,    81,    82,   104,   122,   124,   125,   127,   128,   130,
     131,     3,    23,    86,   131,    81,    81,     3,    43,    90,
      81,     3,    39,     3,    47,    93,     3,    90,     0,    27,
      47,    71,    72,    71,   131,    65,    66,    71,   131,    44,
     113,   130,     3,     5,     3,    45,    81,    96,    55,   107,
      55,   130,    81,    27,    47,   101,   102,   104,    81,    71,
      81,    81,    82,   122,   124,   130,    43,   122,   125,   130,
     131,    59,    58,   123,    56,    57,    62,    63,   126,    58,
     123,    39,    60,   131,    86,   131,   131,   131,    43,    48,
      55,    93,   131,    35,    75,    55,    28,    48,     3,    44,
      43,    55,   131,     3,     3,    44,    48,    46,    46,    39,
      45,    94,   130,    60,   131,   130,    44,   104,   104,    44,
      34,    28,    55,    44,    42,    44,    44,    44,    44,    44,
     122,   130,    56,    35,   130,   122,   130,   122,   125,   125,
     125,   130,   130,    52,    86,     3,    47,   110,   111,    90,
       3,    33,    40,    45,    81,    96,    44,   130,   130,    39,
      93,    48,    55,   110,   130,    38,    94,    46,    48,    47,
      41,    72,   115,    55,    55,    41,    72,   100,    43,   103,
     124,   104,   130,    41,    10,    41,   125,   130,    35,     3,
      44,    48,    39,    55,    39,     6,    53,    94,    48,    60,
     131,    55,   131,    37,    93,    45,    44,    43,    46,    94,
     131,    71,    68,   130,   130,    71,   122,   124,   130,    34,
      71,    43,   118,   130,    55,    41,   111,    38,    40,    28,
     131,     3,    46,    90,    47,    45,    43,    94,    41,    44,
      48,    42,   114,   115,    42,     3,    91,   108,    42,    81,
      18,    24,   117,   119,    81,    71,    43,    53,    39,    53,
     131,   131,    94,    44,    46,    71,   131,    94,    55,    44,
     130,    35,    42,    42,    44,     3,    32,   131,    46,    39,
      42,   131,    35,    71,   131,    53,    43,   131,    38,    71,
     131,    44,    43,    39,    44,    38,    43,    44,   131
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    69,    70,    70,    70,    71,    71,    71,    71,    72,
      72,    72,    72,    72,    72,    72,    72,    72,    72,    72,
      72,    72,    72,    72,    72,    72,    73,    74,    75,    75,
      76,    76,    76,    76,    76,    77,    78,    79,    80,    80,
      81,    81,    81,    81,    82,    82,    82,    83,    84,    85,
      85,    86,    86,    86,    86,    87,    88,    88,    88,    88,
      89,    90,    90,    90,    90,    91,    91,    91,    91,    91,
      92,    93,    93,    93,    93,    94,    94,    94,    94,    95,
      95,    95,    95,    95,    95,    95,    95,    96,    97,    97,
      98,    99,   100,   100,   101,   101,   101,   102,   102,   102,
     102,   103,   103,   104,   104,   105,   106,   106,   107,   107,
     108,   108,   109,   109,   110,   110,   111,   111,   111,   112,
     112,   113,   113,   114,   114,   114,   115,   115,   116,   117,
     118,   118,   119,   120,   121,   122,   122,   122,   122,   122,
     122,   123,   123,   123,   123,   123,   123,   124,   124,   124,
     124,   125,   125,   125,   125,   126,   126,   127,   128,   129,
     130,   130,   130,   130,   130,   130,   131
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     1,     2,     2,     2,     1,     1,     1,
       2,     1,     1,     1,     1,     1,     1,     1,     1,     2,
       1,     1,     1,     2,     1,     1,     2,     3,     0,     2,
       1,     1,     1,     1,     1,     7,     9,     3,     0,     1,
       1,     1,     1,     1,     3,     1,     1,     3,     3,     3,
       3,     3,     3,     2,     3,     5,     3,     3,     7,     1,
       9,     3,     5,     1,     3,     3,     5,     1,     4,     3,
       7,     3,     4,     2,     1,     5,     3,     1,     3,     5,
       7,    15,     9,     8,     1,     4,     6,    11,     6,     8,
      10,     5,     3,     1,     5,     5,     3,     0,     3,     4,
       4,     0,     1,     1,     1,     2,     2,     1,     3,     3,
       2,     2,     8,     8,     3,     1,     0,     2,     4,     4,
       3,     3,     1,     5,     7,     7,     3,     1,     8,     3,
       0,     2,     4,     2,     2,     3,     3,     3,     3,     3,
       3,     1,     1,     1,     1,     1,     1,     3,     3,     3,
       2,     3,     3,     1,     1,     1,     1,     5,     4,     2,
       1,     1,     1,     1,     1,     1,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyo, yytype, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &yyvsp[(yyi + 1) - (yynrhs)]
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return (YYSIZE_T) (yystpcpy (yyres, yystr) - yyres);
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
                    yysize = yysize1;
                  else
                    return 2;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
      yysize = yysize1;
    else
      return 2;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yynewstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  *yyssp = (yytype_int16) yystate;

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = (YYSIZE_T) (yyssp - yyss + 1);

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
# undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 30:
#line 123 "parser.y"
    {cout<<"A compound statement found\n";}
#line 1602 "parser.tab.c"
    break;

  case 56:
#line 176 "parser.y"
    {printf("declaration\n");}
#line 1608 "parser.tab.c"
    break;

  case 57:
#line 177 "parser.y"
    {printf("declaration\n");}
#line 1614 "parser.tab.c"
    break;

  case 58:
#line 178 "parser.y"
    {printf("declaration\n");}
#line 1620 "parser.tab.c"
    break;

  case 59:
#line 179 "parser.y"
    {printf("muldeclaration\n");}
#line 1626 "parser.tab.c"
    break;

  case 65:
#line 188 "parser.y"
    {printf("assign\n");}
#line 1632 "parser.tab.c"
    break;

  case 66:
#line 189 "parser.y"
    {printf("assign\n");}
#line 1638 "parser.tab.c"
    break;

  case 67:
#line 190 "parser.y"
    {printf("mulassign\n");}
#line 1644 "parser.tab.c"
    break;

  case 68:
#line 191 "parser.y"
    {printf("AssOp\n");}
#line 1650 "parser.tab.c"
    break;

  case 79:
#line 206 "parser.y"
    {printf("input\n");}
#line 1656 "parser.tab.c"
    break;

  case 80:
#line 207 "parser.y"
    {printf("input\n");}
#line 1662 "parser.tab.c"
    break;

  case 81:
#line 208 "parser.y"
    {printf("input\n");}
#line 1668 "parser.tab.c"
    break;

  case 82:
#line 209 "parser.y"
    {printf("input\n");}
#line 1674 "parser.tab.c"
    break;

  case 83:
#line 210 "parser.y"
    {printf("input\n");}
#line 1680 "parser.tab.c"
    break;

  case 84:
#line 211 "parser.y"
    {printf("input\n");}
#line 1686 "parser.tab.c"
    break;

  case 85:
#line 212 "parser.y"
    {printf("input\n");}
#line 1692 "parser.tab.c"
    break;

  case 86:
#line 213 "parser.y"
    {printf("input\n");}
#line 1698 "parser.tab.c"
    break;

  case 88:
#line 221 "parser.y"
    {printf("pattern\n");}
#line 1704 "parser.tab.c"
    break;

  case 89:
#line 222 "parser.y"
    {printf("pattern\n");}
#line 1710 "parser.tab.c"
    break;

  case 90:
#line 224 "parser.y"
    {printf("find\n");}
#line 1716 "parser.tab.c"
    break;

  case 91:
#line 229 "parser.y"
    {printf("for");}
#line 1722 "parser.tab.c"
    break;

  case 123:
#line 277 "parser.y"
    {cout<<"Simple if statement found\n";}
#line 1728 "parser.tab.c"
    break;

  case 124:
#line 278 "parser.y"
    {cout<<" if/else statement found\n";}
#line 1734 "parser.tab.c"
    break;

  case 125:
#line 279 "parser.y"
    {cout<<" if lse if statement found\n";}
#line 1740 "parser.tab.c"
    break;

  case 135:
#line 303 "parser.y"
    {cout<<"ARthimetic exp found\n";}
#line 1746 "parser.tab.c"
    break;

  case 147:
#line 313 "parser.y"
    {yyvsp[-1].print();}
#line 1752 "parser.tab.c"
    break;

  case 166:
#line 349 "parser.y"
    {cout<<"Termination fournd\n";}
#line 1758 "parser.tab.c"
    break;


#line 1762 "parser.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif


/*-----------------------------------------------------.
| yyreturn -- parsing is finished, return the result.  |
`-----------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 352 "parser.y"


void yyerror(char const *s)  
{  
 printf("\nSyntax Error at line no -%d and colno-%d\n",lineno,colno);  
 printf("Unexpected token- %s \n",yytext);
}
int main()
{
    yyparse();
    return 0;
}
// #include "lex.yy.c"
