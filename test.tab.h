/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

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

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     FUNCTION = 258,
     NUM = 259,
     FUNCTION_OPEN_TAG = 260,
     IN_FUNCTION_COMMA = 261,
     FUNCTION_CLOSE_TAG = 262,
     EXPRESSION_OPEN_TAG = 263,
     EXPRESSION_CLOSE_TAG = 264,
     PERFORM_ACTION = 265,
     SIN = 266,
     COS = 267,
     TAN = 268,
     CTN = 269,
     LOG = 270,
     LOG_NATURAL = 271,
     POWER = 272,
     SQRT = 273,
     MULTIPLICATION = 274,
     DIVISION = 275,
     MODULO = 276,
     SUM = 277,
     SUBTRACTION = 278
   };
#endif
/* Tokens.  */
#define FUNCTION 258
#define NUM 259
#define FUNCTION_OPEN_TAG 260
#define IN_FUNCTION_COMMA 261
#define FUNCTION_CLOSE_TAG 262
#define EXPRESSION_OPEN_TAG 263
#define EXPRESSION_CLOSE_TAG 264
#define PERFORM_ACTION 265
#define SIN 266
#define COS 267
#define TAN 268
#define CTN 269
#define LOG 270
#define LOG_NATURAL 271
#define POWER 272
#define SQRT 273
#define MULTIPLICATION 274
#define DIVISION 275
#define MODULO 276
#define SUM 277
#define SUBTRACTION 278




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 45 "src/test.y"
{
    float number;
}
/* Line 1529 of yacc.c.  */
#line 99 "test.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

