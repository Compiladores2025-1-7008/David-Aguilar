/**
 * Escáner que detecta números y palabras 
*/

%%

%public
%class Lexer
%standalone

// Definitions
digito=[0-9]
letra=[a-zA-Z]
palabraReservada="if"|"else"|"while"|"for"|"class"
identificador={letra}({letra}|{digito}){0,30}
hexDigito=[0-9a-fA-F]
hexadecimal=0[xX]{hexDigito}{1,16}
espacio=[ \t\n\r\f]

%%

{espacio}+    { /* Ignorar */ }
{palabraReservada}   { System.out.println("Palabra reservada: " + yytext()); }
{hexadecimal}    { System.out.println("Hexadecimal: " + yytext()); }
{identificador}     { System.out.println("Identificador: " + yytext()); }
