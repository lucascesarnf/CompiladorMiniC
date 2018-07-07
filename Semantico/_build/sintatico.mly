
%{
 open Lexing
 open Ast
 open Sast

 %}
 %token <string> LIB
 %token <int * Lexing.position> LITINT
 %token <float * Lexing.position> LITFLOAT
 %token <string * Lexing.position> LITSTRING
 %token <char * Lexing.position> LITCHAR
 %token <string * Lexing.position> ID

 %token <Lexing.position> APAR
 %token <Lexing.position> FPAR
 %token <Lexing.position> ACHAVE
 %token <Lexing.position> FCHAVE
 %token <Lexing.position> VIRGULA
 %token <Lexing.position> PONTOEV

 %token <Lexing.position> INTEIRO
 %token <Lexing.position> FLOAT
 %token <Lexing.position> CHAR
 %token <Lexing.position> STRING
 %token <Lexing.position> VOID
 %token <Lexing.position> ATRIB

 %token <Lexing.position> MAIS
 %token <Lexing.position> MENOS
 %token <Lexing.position> MULTIPLICA
 %token <Lexing.position> DIVIDE
 %token <Lexing.position> MOD

 %token <Lexing.position> IF
 %token <Lexing.position> ELSE
 %token <Lexing.position> WHILE
 %token <Lexing.position> FOR
 %token <Lexing.position> RETURN
 %token <Lexing.position> PRINT
 %token <Lexing.position> GETS
 %token <Lexing.position> INCLUDE

 %token <Lexing.position> MAIOR
 %token <Lexing.position> MENOR
 %token <Lexing.position> IGUAL
 %token <Lexing.position> DIFERENTE
 %token <Lexing.position> MAIORIGUAL
 %token <Lexing.position> MENORIGUAL
 %token <Lexing.position> NOT
 %token <Lexing.position> E
 %token <Lexing.position> OU

 %token EOF

 %left OU
 %left E
 %left IGUAL DIFERENTE
 %left MAIOR MENOR
 %left MAIS MENOS
 %left MAIORIGUAL MENORIGUAL
 %left MULTIPLICA DIVIDE MOD
 %left NOT

 %start <Sast.expressao Ast.programa> programa

 %%

 programa: bs = bibliotecas+ f=declaracoes+ EOF {Programa(bs,f)}

 bibliotecas: INCLUDE b=LIB { Lib b}

 declaracoes: v=dec_global { v }
 | f = funcao {f}

 dec_global: t=tipo
 ids= separated_nonempty_list(VIRGULA, ID) PONTOEV
 {Global (List.map (fun id -> DecGlobal(id,t)) ids)}

 declaracao: t=tipo
 ids = separated_nonempty_list(VIRGULA,ID) PONTOEV
 {List.map(fun id-> DecVar (id,t)) ids}

 funcao: t=tipo nome=ID APAR args=separated_list (VIRGULA, parametro) FPAR
 ACHAVE
 vlocais=declaracao*
 cs=comando*
 FCHAVE
 {Funcao{nome=nome; tipoRetorno=t; args=args; vlocais= List.flatten vlocais; cmds=cs}}

 parametro: tip=tipo i=ID { (i, tip) }

 tipo: t=tipo_simples { t }

 tipo_simples: INTEIRO { TipoInt }
 | FLOAT { TipoFloat }
 | CHAR { TipoChar }
 | VOID { TipoVoid }


 comando: c=comando_atribuicao { c }
 | c=comando_se { c } (*ok*)
 | c=comando_it { c } (*ok*)
 | c=comando_entrada { c } (*ok*)
 | c=comando_saida { c } (*ok*)
 | c=comando_funcao { c } (*ok*)
 | c=comando_retorno { c } (*ok*)


 comando_atribuicao: v=expressao ATRIB e=expressao PONTOEV {CmdAtrib (v,e)}

 comando_se: IF teste=expressao ACHAVE entao=comando+ FCHAVE
 senao=option(ELSE ACHAVE cs=comando+ FCHAVE {cs})
 {CmdSe(teste,entao,senao)}

 comando_it: WHILE e=expressao ACHAVE cs=comando+ FCHAVE {CmdWhile(e,cs)}
 |FOR APAR c1=comando_atribuicao PONTOEV e=expressao PONTOEV c2= separated_nonempty_list(VIRGULA, c=comando_atribuicao { c }) FPAR ACHAVE cs=comando+ FCHAVE {CmdFor(e, c1::cs@c2)}
 
  comando_entrada: GETS xs=expressao PONTOEV {CmdEntrada xs}

  comando_saida: PRINT cs=expressao PONTOEV {CmdSaida cs}
 
 
  comando_funcao: exp=chamada {CmdFun exp}
 
  comando_retorno: RETURN PONTOEV{ CmdRet None }
  | RETURN e=expressao PONTOEV { CmdRet (Some e) }
 
 
  expressao:
  v=variavel { ExpVar v }
  |i=LITINT { ExpInt i }
  |f=LITFLOAT { ExpFloat f }
  |c=LITCHAR {ExpChar c}
  |s=LITSTRING { ExpString s }
  |ee=expressao op=oper ea=expressao { ExpOp (op, ee, ea) }
  |APAR e=expressao FPAR { e }
  |c=chamada{c}
 
  chamada: nome_fun=ID APAR args=separated_list(VIRGULA, expressao)FPAR { ExpChamada(nome_fun,args)}
 
  %inline oper:
  | pos = MAIS { (Mais, pos) }
  | pos = MENOS { (Menos, pos) }
  | pos = MULTIPLICA { (Mult, pos) }
  | pos = DIVIDE { (Div, pos) }
  | pos = MENOR { (Menor, pos) }
  | pos = IGUAL { (Igual, pos) }
  | pos = DIFERENTE { (Difer, pos) }
  | pos = MAIOR { (Maior, pos) }
  | pos = E { (AND, pos) }
  | pos = OU { (Ou, pos) }
  | pos = NOT { (Not, pos) }
  | pos = MAIORIGUAL { (Maiorigual, pos)}
  | pos = MENORIGUAL { (Menorigual, pos)}
  | pos = MOD {(Mod, pos)}
 
  variavel: x=ID { VarSimples x }
 (*| ecomercial = ECOM x = ID { VarEnd (ecomercial,x) }*)