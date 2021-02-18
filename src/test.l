%{

#include <stdio.h>
#include <string.h>
#include <math.h>
#include "test.tab.h"
void showError();

%}

NUMBER                  [-]?[0-9]+("."[0-9]+)?
FUNCTION                ["f"|"F"]
EXPRESSION_OPEN_TAG      "<"
EXPRESSION_CLOSE_TAG     ">"
FUNCTION_OPEN_TAG       ["("]
FUNCTION_CLOSE_TAG      [")"]
IN_FUNCTION_COMMA       [","]
PERFORM_ACTION          ["="]
SUM                     ["+"]
SUBTRACTION              "-"
MULTIPLICATION          ["*"]
DIVISION                ["/"]
MODULO                  ["%"]
POWER                   ["^"]
LOG                     "log"
LOG_NATURAL             "logN"
SIN                     "sin"
COS                     "cos"
SQRT                    "root"


%%

{FUNCTION}                  { return (FUNCTION); }
{FUNCTION_OPEN_TAG}         { return (FUNCTION_OPEN_TAG); }
{IN_FUNCTION_COMMA}         { return (IN_FUNCTION_COMMA); }
{FUNCTION_CLOSE_TAG}        { return (FUNCTION_CLOSE_TAG); }
{EXPRESSION_OPEN_TAG}       { return (EXPRESSION_OPEN_TAG); }
{EXPRESSION_CLOSE_TAG}      { return (EXPRESSION_CLOSE_TAG); }
{PERFORM_ACTION}            { return (PERFORM_ACTION); }
{SUM}		                { return (SUM); }
{SUBTRACTION}	            { return (SUBTRACTION); }
{MULTIPLICATION}            { return (MULTIPLICATION); }
{DIVISION}                  { return (DIVISION); }
{MODULO}                    { return (MODULO);}
{POWER}                     { return (POWER); }
{LOG}                       { return (LOG); }
{LOG_NATURAL}               { return (LOG_NATURAL); }
{SIN}                       { return (SIN);  }
{COS}                       { return (COS);  }
"tan"                       { return (TAN);  }
"ctn"                       { return (CTN);  }
{SQRT}                      { return (SQRT); }

{NUMBER}                    {yylval.number = atof(yytext); return (NUM);}
" "                         { }
.      	                    {showError();}

%%

void showError(){
    printf("Other input");
}