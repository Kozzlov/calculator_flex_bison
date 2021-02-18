
%{
#include <stdio.h>
#include <math.h>
int yylex();
int yyerror(char *s);

float x;
float y;

%}

%token FUNCTION
%token NUM

%token FUNCTION_OPEN_TAG
%token IN_FUNCTION_COMMA
%token FUNCTION_CLOSE_TAG
%token EXPRESSION_OPEN_TAG
%token EXPRESSION_CLOSE_TAG

%token PERFORM_ACTION
%token SIN
%token COS
%token TAN
%token CTN
%token LOG
%token LOG_NATURAL
%token POWER
%token SQRT
%token MULTIPLICATION
%token DIVISION
%token MODULO
%token SUM
%token SUBTRACTION

%start start
%type <number> NUM
%type <number> main_action_block_pair
%type <number> main_action_block_single
%type <number> action_pair
%type <number> action_single


%union{
    float number;
}

%%
start:
	| start main_function_block_pair PERFORM_ACTION main_action_block_pair     {printf("%.6g\n", $4)}
	| start main_function_block_single PERFORM_ACTION main_action_block_single {printf("%.6g\n", $4)}
;

main_function_block_pair:
	FUNCTION FUNCTION_OPEN_TAG action_logic_pair FUNCTION_CLOSE_TAG
;

main_action_block_pair:
	EXPRESSION_OPEN_TAG action_pair EXPRESSION_CLOSE_TAG {$$ = $2}
;

main_function_block_single:
	FUNCTION FUNCTION_OPEN_TAG action_logic_single FUNCTION_CLOSE_TAG
;

main_action_block_single:
	EXPRESSION_OPEN_TAG action_single EXPRESSION_CLOSE_TAG {$$ = $2}
;

action_logic_pair:
	NUM IN_FUNCTION_COMMA NUM { x = $1; y = $3; }
;

action_logic_single:
	NUM {x = $1}
;

action_pair:
		  POWER 			{$$ = pow(x, y);}
		  | MULTIPLICATION		{$$ = x * y;}
		  | DIVISION			{
		  					if(y!=0){$$ = x / y;}
		  					else{return 0;}
						}
		  | MODULO			{$$ = fmod(x, y);}
		  | SUM				{$$ = x + y;}
		  | SUBTRACTION			{$$ = x - y;}
		  | LOG				{
		  					if(log(y) != 0){$$ = log(x) / log(y);}
		  					if(y < 1){return 0;}
		  					else{return 0;}
		   				}
;

action_single:
		  LOG_NATURAL 	        	{$$ = log(x); }
		  | SIN				{$$ = sin(x); }
		  | COS				{$$ = cos(x); }
		  | TAN				{$$ = sin(x) / cos(x); }
		  | CTN 			{$$ = cos(x) / sin(x); }
		  | SQRT 			{
		  					if(x<0){$$ = sqrt(x);}
		  					else{return 0;}
		  				}
;

%%

int yyerror(char *s)
{
	printf("Syntax Error on line %s\n", s);
	return 0;
}

int main()
{
    yyparse();
    return 0;
}
