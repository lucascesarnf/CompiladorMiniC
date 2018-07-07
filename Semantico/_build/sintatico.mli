
(* The type of tokens. *)

type token = 
  | WHILE of (Lexing.position)
  | VOID of (Lexing.position)
  | VIRGULA of (Lexing.position)
  | STRING of (Lexing.position)
  | RETURN of (Lexing.position)
  | PRINT of (Lexing.position)
  | PONTOEV of (Lexing.position)
  | OU of (Lexing.position)
  | NOT of (Lexing.position)
  | MULTIPLICA of (Lexing.position)
  | MOD of (Lexing.position)
  | MENOS of (Lexing.position)
  | MENORIGUAL of (Lexing.position)
  | MENOR of (Lexing.position)
  | MAIS of (Lexing.position)
  | MAIORIGUAL of (Lexing.position)
  | MAIOR of (Lexing.position)
  | LITSTRING of (string * Lexing.position)
  | LITINT of (int * Lexing.position)
  | LITFLOAT of (float * Lexing.position)
  | LITCHAR of (char * Lexing.position)
  | LIB of (string)
  | INTEIRO of (Lexing.position)
  | INCLUDE of (Lexing.position)
  | IGUAL of (Lexing.position)
  | IF of (Lexing.position)
  | ID of (string * Lexing.position)
  | GETS of (Lexing.position)
  | FPAR of (Lexing.position)
  | FOR of (Lexing.position)
  | FLOAT of (Lexing.position)
  | FCHAVE of (Lexing.position)
  | EOF
  | ELSE of (Lexing.position)
  | E of (Lexing.position)
  | DIVIDE of (Lexing.position)
  | DIFERENTE of (Lexing.position)
  | CHAR of (Lexing.position)
  | ATRIB of (Lexing.position)
  | APAR of (Lexing.position)
  | ACHAVE of (Lexing.position)

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programa: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Sast.expressao Ast.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val programa: Lexing.position -> (Sast.expressao Ast.programa) MenhirInterpreter.checkpoint
  
end
