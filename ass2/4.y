%{
#include<stdio.h>
#include<stdlib.h>
int count=0;
%}

%token IF RELOP S NUMBER ID NL

%%
stmt: if_stmt NL {printf("No. of nested if statements=%d\n",count);exit(0);}
;
if_stmt : IF'('cond')''{'if_stmt'}' {count++;}
          |S
;
cond: x RELOP x 
;
x:ID | NUMBER
;
%%

#include "lex.yy.c"
main()
{
printf("enter the statement\n");
yyparse();
}
<<<<<<< HEAD

=======
yyerror()
{
printf(" Invalid Expresion!!!!\n"); exit(0);
}
>>>>>>> 1c644a300bc486e0f011332e47d983c0844194ea
