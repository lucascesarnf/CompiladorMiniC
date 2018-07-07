
(* The type of tokens. *)

type token = 
  | WHILE
  | VIRG
  | VEZES
  | TINT
  | TFLOAT
  | TCHAR
  | STRING of (string)
  | RETURN
  | PTV
  | PROLOGO
  | PRINTSTR
  | PRINTINT
  | PRINTFLOAT
  | PRINTCHAR
  | NOT
  | MENOS
  | MENORIGUAL
  | MENOR
  | MAIS
  | MAIORIGUAL
  | MAIOR
  | INT of (int)
  | IGUAL
  | IF
  | ID of (string)
  | FUNCAOMAIN
  | FPAR
  | FLOAT of (float)
  | FCOL
  | FCHAVE
  | EOF
  | ELSE
  | DIV
  | DIFERENTE
  | CHAR of (char)
  | ATRIB
  | APAR
  | ACOL
  | ACHAVE

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programa: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.modulo)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val programa: Lexing.position -> (Ast.modulo) MenhirInterpreter.checkpoint
  
end
