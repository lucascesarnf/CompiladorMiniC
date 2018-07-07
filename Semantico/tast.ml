 open Ast

 type expressao =
 ExpVar of (expressao variavel) * tipo
 | ExpInt of int * tipo
 | ExpVoid (*of unit * tipo*)
 | ExpFloat of float * tipo
 | ExpChar of char * tipo
 | ExpString of string * tipo
 | ExpOp of (oper * tipo) * (expressao * tipo) * (expressao * tipo)
 | ExpChamada of ident * (expressao expressoes) * tipo