
module Posicao =
   struct
    type t = { lin_inicial : int;
               col_inicial: int;
               lin_final: int;
               col_final: int
    }

    let pos n =
      let pos_inicial = Parsing.rhs_start_pos n in
      let pos_final = Parsing.rhs_end_pos n in
      let linha_inicial = pos_inicial.Lexing.pos_lnum
      and coluna_inicial = pos_inicial.Lexing.pos_cnum -
                           pos_inicial.Lexing.pos_bol + 1
      and linha_final = pos_final.Lexing.pos_lnum
      and coluna_final = pos_final.Lexing.pos_cnum -
                         pos_final.Lexing.pos_bol in
      { lin_inicial = linha_inicial;
        col_inicial = coluna_inicial;
        lin_final = linha_final;
        col_final = coluna_final
      }

    let npos n =
       {  lin_inicial = Parsing.rhs_start(n);
          col_inicial = Parsing.rhs_end(n);
          lin_final = 0;
          col_final = 0
       }
end

 type modulo = Programa of funcao list
 and funcao = Funcao of tipo * nomefuncao * comando list * comando list * retorno
 and tipo = TInt
            | TChar
            | TFloat
            | TString
            | TBool
 and nomefuncao = string
 and comando = {vcmd: cmd; pcmd: Posicao.t}
 and cmd = CmdAtrib of expressao * expressao
   | CmdIf of expressao * comando list * comando list option
   | CmdWhile of expressao * comando list
   | PrintInt of expressao
   | PrintChar of expressao
   | PrintStr of expressao
   | PrintFloat of expressao
   | Bloco of comando list
   | DecVar of tipo * string * expressao
and tamanho = Tamanho of int
and expressao = { vexp: expr;
                  pexp: Posicao.t }
and expr = ExpInt of int
           | ExpChar of char
           | ExpFloat of float
           | ExpString of string
           | ExpVar of variavel
           | ExpBin of operador * expressao * expressao
           | ExpUna of operador * expressao
           | ExpFuncao of nomefuncao * expressao list
and variavel = VarSimples of string
               | VarVetor of string * expressao
and operador = Mais | Menos | Vezes | Div
              | Maior | Menor | Igual | Diferente | Maiorigual | Menorigual
              | Not
and retorno = Return of expressao
