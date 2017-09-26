%{
#include<stdio.h>
int count=0;
%}

ALPHA[a-zA-Z]
DIGIT[0-9]
SPACE[\t\n]
%%

({DIGIT}|{ALPHA})*ab  {count++;}
%%

main()
{
	yylex();
	printf("count=%d\n", count);
}
