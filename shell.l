%{
	#include<stdio.h>
	#include<stdlib.h>
	#include"y.tab.h"
	extern int len;
%}
%option noyywrap
letter [a-zA-Z]+

%%
[^ \t\n][^ \t\n]*						{yylval.id=yytext;len=yyleng;return WORD;}
[ \t\n]							{;}
.							{return NOTOKEN;}

%%
