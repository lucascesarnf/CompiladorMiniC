
(* The type of tokens. *)

type token = 
  | While
  | Virg
  | True
  | TInt
  | TFloat
  | TChar
  | TBool
  | Switch
  | Scanf
  | STRING of (string)
  | Return
  | Printf
  | Ponto
  | Perc
  | PTVirg
  | PLinha
  | Or
  | OpSub
  | OpSoma
  | OpMul
  | OpDiv
  | Not
  | MenorI
  | Menor
  | MaiorI
  | Maior
  | Main
  | Include of (string)
  | Inc
  | If
  | Ident of (string)
  | INT of (int)
  | ID of (string)
  | GetChar of (string)
  | For
  | False
  | FParen
  | FLOAT of (float)
  | FChave
  | Else
  | EOF
  | ECom
  | DoisP
  | Dif
  | Default
  | Comp
  | Case
  | CHAR of (char)
  | Break
  | BOOL of (bool)
  | Atrib
  | Aspas
  | Apost
  | And
  | AParen
  | AChave

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programa: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (ArvSint.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val programa: Lexing.position -> (ArvSint.programa) MenhirInterpreter.checkpoint
  
end
