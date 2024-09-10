/**
 * Escáner que detecta el lenguaje C_1
*/

package main.jflex;

import main.java.ClaseLexica;
import main.java.Token;

%%

%{

public Token actual;

%}

%public
%class Lexer
%standalone
%unicode

espacio=[ \t\n]
int=int
float=float
if=if
else=else
while=while
entero=[0-9]+
decimal={entero}\.[0-9]+
notcient={entero}\.[0-9]+e[0-9]+
numero={entero}|{decimal}|{notcient}
id=[a-zA-Z0-9_]+
pyc=;
coma=,
lpar=\(
rpar=\)

%%

{espacio} {/* La acción léxica puede ir vacía si queremos que el escáner ignore la regla */}
{int} { System.out.print("<INT, "+yytext()+">\n"); }
{float} { System.out.print("<FLOAT, "+yytext()+">\n"); }
{if} { System.out.print("<IF, "+yytext()+">\n"); }
{else} { System.out.print("<ELSE, "+yytext()+">\n"); }
{while} { System.out.print("<WHILE, "+yytext()+">\n"); }
{numero} { System.out.print("<NUMERO, "+yytext()+">\n"); }
{id} { System.out.print("<ID, "+yytext()+">\n"); }
{pyc} { System.out.print("<PYC, "+yytext()+">\n"); }
{coma} { System.out.print("<COMA, "+yytext()+">\n"); }
{lpar} { System.out.print("<LPAR, "+yytext()+">\n"); }
{rpar} { System.out.print("<RPAR, "+yytext()+">\n"); }

