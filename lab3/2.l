%{
#include<stdio.h>
int count=0;
int i;
%}
keyword printf|scanf
%%

{keyword} {count++;}
. ;

%%

main()
{
	yylex();
	printf("no. of printf and scanf=%d\n",count);
	
}
