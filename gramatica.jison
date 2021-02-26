%lex
%%

\s+                   /* skip whitespace */
[0-9]+("."[0-9]+)?\b        return 'NUMBER'
"*"                         return '*'
"/"                         return '/'
"-"                         return '-'
"+"                         return '+'
"^"                         return '^'
"("                         return '('
")"                         return ')'
"="                         return '='
"int"                       return 'int'

";"                         return "FIN"
([a-zA-Z])[a-zA-Z0-9_]*	    return 'id';

<<EOF>>               return 'EOF'

.                     return 'INVALID'

/lex

%left '+' '-'
%left '*' '/'

%left UMINUS

%start programa

%% /* language grammar */

programa
    :lSetnecias EOF  
;

lSetnecias
    :lSetnecias sentencias
    |sentencias
;

sentencias
    : expresion   FIN       {agregarC3D("La respuesta es :"+$expresion+"\n");}
    |  expresion          {agregarC3D("La respuesta es :"+$expresion+"\n");}
;

expresion
    : expresion '+' expresion       {$$=new_temp(); agregarC3D($$ + '=' + $1 +'+' + $3);}
    | expresion '-' expresion       {$$=new_temp(); agregarC3D($$ + '=' + $1 +'-' + $3);}
    | expresion '*' expresion       {$$=new_temp(); agregarC3D($$ + '=' + $1 +'*' + $3);}
    | expresion '/' expresion       {$$=new_temp(); agregarC3D($$ + '=' + $1 +'/' + $3);}

    | '(' expresion ')'             {$$ = $expresion;} 

    | NUMBER                        {$$=new_temp(); agregarC3D($$ + '=' + $NUMBER); }
    | id                            {$$ = yytext; }
    
;