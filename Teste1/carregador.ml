#load "sintatico.cmo";;
#load "lexico.cmo";;
#load "ast.cmo";;
open Ast;;
open Semantico;;
open Printf;;

let sintatico lexbuf =
 try
 Sintatico.programa Lexico.token lexbuf
 with exn ->
   begin
     let tok = Lexing.lexeme lexbuf in
     let pos = lexbuf.Lexing.lex_curr_p in
     let nlin = pos.Lexing.pos_lnum in
     let ncol = pos.Lexing.pos_cnum - pos.Lexing.pos_bol - String.length tok in
     let msgOne = sprintf "\nErro na linha %d, coluna %d" nlin ncol in
     let msgTwo = sprintf "A palavra \"%s\" nao era esperada aqui\n" tok in
         print_endline msgOne;
         print_endline msgTwo;
         flush stdout;
         raise exn
     end