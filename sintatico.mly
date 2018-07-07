%{
open Asa;;

let criaexp e n = 
   { vexp = e;
     pexp = Posicao.pos(n) }

let criacmd c n =
    { vcmd = c;
      pcmd = Posicao.pos(n) }

%}

%token PROLOGO FUNCAOMAIN
%token APAR FPAR PTV VIRG ACHAVE FCHAVE RETURN ATRIB ACOL FCOL
%token TINT TCHAR TFLOAT TSTRING
%token MAIS MENOS VEZES DIV
%token NOT
%token MAIOR MENOR IGUAL DIFERENTE MAIORIGUAL MENORIGUAL
%token IF ELSE WHILE
%token PRINTINT PRINTFLOAT PRINTCHAR PRINTSTR
%token <int> INT
%token <float> FLOAT
%token <char> CHAR
%token <string> STRING
%token <string> ID
%token EOF

%left ADD SUB
%left VEZES DIV

%start programa    /*simbolo inicial da gramatica */ /*(ponto de entrada)*/
%type <Asa.modulo> programa

%%

programa:
   PROLOGO
   funcoes
   funcaoMain { let p = $3 :: $2 in Programa (List.rev p) } 
   ;

funcoes:
   funcao funcoes { $1 :: $2 } 
   | funcao { [$1] }
   | /* nenhuma funcao */ { [] }
   ;
            
funcao:
    tipo ID APAR argumentos FPAR
    ACHAVE
      comandos
      RETURN expressao PTV
    FCHAVE  { Funcao($1,$2,$4,$7,Return($9)) }
    ;


funcaoMain:
    FUNCAOMAIN
    ACHAVE
    comandos
            RETURN expressao PTV
    FCHAVE               { Funcao(TInt,"main",[],$3,Return($5)) }
    ;
       
argumentos:
    argumento VIRG argumentos  { $1 :: $3 }
    | argumento                { [$1] }
    | /* nenhum parametro */   { [] }
    ;
  
  
  
argumento:
    TINT ID PTV { let e = criaexp(ExpInt(-1)) 1 in
                  criacmd(DecVar(TInt,$2,e)) 1 }
    | TFLOAT ID PTV { let e = criaexp(ExpFloat(-1.0)) 1 in
                      criacmd(DecVar(TFloat,$2,e)) 1 }
    | TCHAR ID PTV  { let e = criaexp(ExpChar('$')) 1 in
                      criacmd(DecVar(TChar,$2,e)) 1 }
    | tipo ID ACOL INT FCOL { let e = criaexp(ExpInt($4)) 1 in
                              criacmd(DecVar($1,$2,e)) 1 }

 tipo:
     TINT   { TInt }
     | TCHAR { TChar }
     | TFLOAT { TFloat }
     ;

expressoes: 
     /*nenhumaexpressao*/ { [] }
     | expressao          { [$1] }
     | expressao PTV expressoes { $1 :: $3 }
     | expressao VIRG expressoes { $1 :: $3 }
     ;
      
expressao:
       expressao MAIS expressao    { criaexp (ExpBin(Mais,$1,$3)) 2 }
       |expressao MENOS expressao  { criaexp (ExpBin(Menos,$1,$3)) 2 }
       |expressao VEZES expressao  { criaexp (ExpBin(Vezes,$1,$3)) 2 }
       |expressao DIV expressao    { criaexp (ExpBin(Div,$1,$3)) 2 }
       |ID APAR expressoes FPAR    { criaexp (ExpFuncao($1,$3)) 2 }
       |NOT expressao              { criaexp (ExpUna(Not,$2)) 1 }
       |ACHAVE expressao FCHAVE    { $2 }
       |operando                   { $1 }
 ;

operando:
     INT                    { criaexp (ExpInt($1)) 1 }
     | FLOAT                { criaexp (ExpFloat($1)) 1 }
     | CHAR                 { criaexp (ExpChar($1)) 1 }
     |STRING                { criaexp (ExpString($1)) 1 }
     |ID ACOL INT FCOL      { let p = criaexp(ExpInt($3)) 1 in
                              criaexp(ExpVar(VarVetor($1,p))) 2 }
     |ID                    { criaexp (ExpVar(VarSimples($1))) 1 }
     |APAR expressao FPAR   { $2}
     ;

comandos:
      /* nenhum comando */  { [] }
      | bloco               { [$1] }
      | comando             { [$1] }
      | comando comandos    { $1::$2 }
      ;

comando:
     comando_atrib     { $1}
     | comando_if      { $1}
     | comando_while   { $1}
     | comando_output  { $1}
     | declaracao      { $1}
     ;


bloco:
    ACHAVE comandos FCHAVE  { criacmd (Bloco($2)) 1 }
    ;

comando_atrib:
  ID ATRIB expressao PTV { let e = criaexp (ExpVar(VarSimples($1))) 1 in
                           criacmd (CmdAtrib(e, $3)) 2 }
  | ID ACOL INT FCOL ATRIB expressao PTV
                         { let p = criaexp (ExpInt($3)) 1 in   
                           let e = criaexp (ExpVar(VarVetor($1,p))) 2 in
                           criacmd(CmdAtrib(e,$6)) 2 }

  ;


comando_if:
    IF comparacao
       comando { criacmd (CmdIf($2, [$3], None)) 1 }
    | IF comparacao   
       bloco   { criacmd (CmdIf($2, [$3], None)) 1 }
    | IF comparacao
       comando 
      ELSE 
       comando { criacmd (CmdIf($2, [$3], Some([$5]))) 1 }
    | IF comparacao
       bloco
      ELSE 
       comando { criacmd (CmdIf($2, [$3], Some([$5]))) 1 }
    | IF comparacao
       comando
      ELSE 
       bloco  { criacmd (CmdIf($2, [$3], Some([$5]))) 1 }
    | IF comparacao
       bloco
      ELSE bloco { criacmd (CmdIf($2, [$3], Some([$5]))) 1 }
    ;


comparacao:
    APAR operando comparador operando FPAR  { criaexp (ExpBin($3,$2,$4)) 3 }
    ;

comparador:
    MENOR             { Menor } 
    | IGUAL           { Igual }
    | DIFERENTE       { Diferente }
    | MAIOR           { Maior }
    | MAIORIGUAL      { Maiorigual }
    | MENORIGUAL      { Menorigual }
    ;


comando_while:
    WHILE comparacao
      comando      { criacmd (CmdWhile($2,[$3])) 3 }
   | WHILE comparacao
      bloco { criacmd (CmdWhile($2,[$3])) 3 }
   ;
  
comando_output:
    PRINTINT APAR expressao FPAR PTV      { criacmd (PrintInt($3)) 1 }
    | PRINTCHAR APAR expressao FPAR PTV   { criacmd (PrintChar($3)) 1 }
    | PRINTFLOAT APAR expressao FPAR PTV  { criacmd (PrintFloat($3)) 1 }
    | PRINTSTR APAR expressao FPAR PTV    { criacmd (PrintStr($3)) 1 }
    ;

declaracao:
       TINT ID PTV                      { let e = criaexp(ExpInt(-1)) 1 in
                                           criacmd(DecVar(TInt,$2,e)) 1 }
       | TFLOAT ID PTV                  { let e = criaexp(ExpFloat(-1.0)) 1 in
                                           criacmd(DecVar(TFloat,$2,e)) 1 }
       | TCHAR ID PTV                   { let e = criaexp(ExpChar('$')) 1 in
                                           criacmd(DecVar(TChar,$2,e)) 1 }
       | tipo ID ACOL INT FCOL PTV      { let e = criaexp(ExpInt($4)) 1 in
                                          criacmd(DecVar($1,$2,e)) 1 }
       ;
