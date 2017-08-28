%{
	int vowels=0;
	int cons=0;
%}

%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {cons++;}
%%

main()
{
printf("Enter the string\n");
yylex();
printf("No of vowels=%d\nNo of consonants=%d\n", vowels,cons);
}
