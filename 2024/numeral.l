 %{
    int nlin = 0;
 %}

 %% // regra    ação
 ^[.*]+\n    printf("%4d: %s", ++nlin, yytext);

%%

int yywrap () { return 1; }

int main (int argc, char *argv[])
{
    /* printf("Primeiro parametro: %s\n", argv[0]);
    printf("Segundo parametro: %s\n", argv[1]); */
    
    yyin = fopen (argv[1], "r");
    if (!yyin)
        {
            puts("Tem que definir o arquivo");
        }
    yylex();
    fclose(yyin);
}

/* CODIGO INCOMPLETO */
