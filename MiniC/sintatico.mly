%{
  open ArvSint;;
%}

 %token <int> INT
 %token <float> FLOAT
 %token <char> CHAR
 %token <bool> BOOL
 %token TInt TFloat TChar TBool
 %token Perc PLinha
 %token <string> Ident
 %token <string> STRING
 %token Main
 %token Printf Scanf
 %token Atrib
 %token AParen FParen
 %token AChave FChave
 %token OpSoma OpSub OpMul OpDiv
 %token Virg PTVirg Aspas Apost Ponto DoisP
 %token Maior Menor Not ECom
 %token Comp MaiorI MenorI Dif
 %token Inc Or And True False
 %token If Else While For
 %token Switch Case Break Default
 %token Return
 %token <string> GetChar
 %token <string> Include
 %token <string> ID
 %token EOF

 %start programa /* simbolo inicial da gramatica */
 %type <ArvSint.programa> programa

 %%
 programa: includes funcoes EOF{ $2 }

 includes: /* nada */ { None}
         | Include { Some(Includes $1) };

 funcoes: /* nada */ { [] }
         | funcao funcoes { $1 :: $2 };

 funcao: TInt Main AParen argumentos FParen AChave comandos FChave { Funcao(TInt, ExpVar "main", [], $7 , ExpInt 1)}
 | tipo Ident AParen argumentos FParen AChave comandos Return expressao PTVirg FChave { Funcao($1 ,ExpVar $2 , $4, $7, $9)}

 tipo: TInt {TInt }
     | TFloat {TFloat}
     | TChar {TChar }
     | TBool {TBool }
     ;

 argumentos: /* nada */ { [] }
           | seq { $1 }

 seq: argumento { [$1] }
    | seq Virg argumento { $1 @ [$3] }

argumento: tipo Ident { CmdDec(ExpVar $2, $1, None) }

comandos: /* nada */ { [] }
        | comando PTVirg comandos { $1 :: $3 };
        | comando comandos { $1 :: $2 };

comando: cmd_atrib { $1 }
       | cmd_dec { $1 }
       | cmd_printf { $1 }
       | cmd_scanf { $1 }
       | cmd_for { $1 }
       | cmd_while { $1 }
       | cmd_if { $1 }
       | cmd_switch { $1 }
       | cmd_getc { $1 }
       | cmd_incr { $1 }
       ;

cmd_atrib: Ident Atrib expressao {CmdAtrib (ExpVar $1, $3) };

cmd_dec: tipo Ident inicial { CmdDec (ExpVar $2, $1, $3) };

 inicial: /* nada */ { None }
        | Atrib expressao { Some($2) }
        ;

cmd_printf: Printf AParen args FParen { CmdPrintf($3) };

cmd_scanf: Scanf AParen expressao Virg ECom Ident FParen { CmdScanf ($3, ExpVar $6) };

cmd_while: While AParen expressao FParen AChave comandos FChave { CmdWhile($3,$6) };

cmd_for: For AParen cmd_atrib PTVirg expressao PTVirg comando FParen AChave comandos FChave { CmdFor($3,$5,$7,$10) };

cmd_if: If AParen expressao FParen AChave comandos FChave elsee { CmdIf($3,$6,$8) };

cmd_incr: Ident Inc { CmdIncr(ExpVar $1) }

elsee: /* nada */ { None }
     | Else AChave comandos FChave { Some($3) };
     | Else cmd_if { Some([$2]) };
     ;

cmd_switch: Switch AParen expressao FParen AChave cases default FChave { CmdSwitch($3,$6,Some($7)) };


cases: /* nada */ { [] }
     | case cases { $1 :: $2 }
     ;

case: Case expressao DoisP comandos Break PTVirg { Case($2,$4) }
    | Case Apost expressao Apost DoisP comandos Break PTVirg { Case( $3,$6) }
    ;

default: Default DoisP comandos Break PTVirg { Default ($3) };

cmd_getc: GetChar { CmdGetC $1}

args: /* nada */ { [] }
    | seqs { $1 }
    ;

seqs: expressao { [$1] }
    | seqs Virg expressao { $1 @ [$3] }
    ;

expressao: expressao And expr10 { ExpBin(And, $1, $3) }
         | expressao Or expr10 { ExpBin(Or , $1, $3) }
         | expr10 { $1 }
         ;


expr10: expr10 Comp expr20 { ExpBin(Comp, $1, $3) }
      | expr10 Dif expr20 { ExpBin(Dif , $1, $3) }
      | expr20 { $1 }
      ;

expr20: expr20 Maior expr30 { ExpBin(Maior , $1, $3) }
      | expr20 Menor expr30 { ExpBin(Menor , $1, $3) }
      | expr20 MaiorI expr30 { ExpBin(MaiorI, $1, $3) }
      | expr20 MenorI expr30 { ExpBin(MenorI, $1, $3) }
      | expr30 { $1 }
      ;


expr30: expr30 OpSoma expr40 { ExpBin(Soma, $1, $3) }
      | expr30 OpSub expr40 { ExpBin(Sub , $1, $3) }
      | expr40 { $1 }
      ;


expr40: expr40 OpMul expr50 { ExpBin(Mul, $1, $3) }
      | expr40 OpDiv expr50 { ExpBin(Div, $1, $3) }
      | expr50 { $1 }
      ;


expr50: Not expr50 { ExpUn(Not,$2) }
      | expr60 { $1 }
      ;

expr60: INT { ExpInt $1 }
      | FLOAT { ExpFloat $1 }
      | CHAR { ExpChar $1 }
      | BOOL { ExpBool $1 }
      | STRING { ExpString $1 }
      | Ident { ExpVar $1 }
      | AParen expressao FParen { $2 }
      | chama_func { $1 }
      ;

chama_func: Ident AParen args FParen { ChamaFunc(ExpVar $1, $3) };