{
  open Sintatico 
  open Lexing
  open Printf
 
  exception Erro of string

  let incr_nlinha lexbuf =
   let pos = lexbuf.lex_curr_p in
   lexbuf.lex_curr_p <- { pos with
      pos_lnum = pos.pos_lnum + 1;
      pos_bol = pos.pos_cnum;
   }

   let msg_erro lexbuf c =
     let pos = lexbuf.lex_curr_p in
     let lin = pos.pos_lnum
     and col = pos.pos_cnum - pos.pos_bol - 1 in
     sprintf "%d-%d: caracter desconhecido %c" lin col c
   }


let digito = ['-']? ['0' - '9']
let identificador = ['a'-'z' 'A'-'Z'] ['_' 'a'-'z' 'A'-'Z' '0'-'9']*


rule token = parse
   [' ' '\t' ] { token lexbuf }
   | ['\n' ] { incr_nlinha lexbuf; token lexbuf }
   | "//" [^ '\n']* { token lexbuf } 
   | "/*" { comentario 0 lexbuf;} 
   | '(' { APAR }
   | ')' { FPAR }
   | '{' { ACHAVE }
   | '}' { FCHAVE }
   | '[' { ACOL }
   | ']' { FCOL }
   | ';' { PTV }
   | ',' { VIRG }
   | '=' { ATRIB }
   | '+' { MAIS }
   | '-' { MENOS }
   | '*' { VEZES }
   | '/' { DIV }
   | '>' { MAIOR }
   | '<' { MENOR }
   | "==" { IGUAL }
   | ">=" { MAIORIGUAL }
   | "<=" { MENORIGUAL }
   | "!=" { DIFERENTE }
   | '!' { NOT }
   | digito+ as num { INT (int_of_string num) }
   | ('.' digito+ | digito+ '.' | digito+ '.' digito+ as f) { FLOAT (float_of_string f) }
   | ''' ([^ '\r'] | '\r' as c) ''' { CHAR (c) }
   | '"' ([^ '\n']* ['\n']* as s) '"' { STRING (s) }
   | "#include <stdio.h>\n#include <stdlib.h>" { incr_nlinha lexbuf; PROLOGO }
   | "int main" [' ']* "()" { FUNCAOMAIN }
   | "int" { TINT }
   | "char" { TCHAR }
   | "float" { TFLOAT }
   | "if" { IF }
   | "else" { ELSE }
   | "while" { WHILE }
   | "printint" { PRINTINT }
   | "printchar" { PRINTCHAR }
   | "printfloat" { PRINTFLOAT }
   | "printstr" { PRINTSTR }
   | "return" { RETURN }
   | identificador as id { ID (id) }
   | _ as unknow { failwith (msg_erro lexbuf unknow); }
   | eof { EOF }
   and comentario nivel = parse
   "*/" { if nivel=0 then token lexbuf
   else comentario (nivel - 1) lexbuf }
   | "/*" { comentario (nivel + 1) lexbuf; }
   | _ { comentario nivel lexbuf } (* ignora comentarios *)
   | eof { raise (Erro "Comentario nao terminado") }
