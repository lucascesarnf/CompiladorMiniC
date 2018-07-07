{
 open Lexing
 open Printf
 

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
 sprintf "%d-%d: caracter desconhecido ou faltando %c" lin col c

  let erro lin col msg =
    let mensagem = sprintf "%d-%d: %s" lin col msg in
       failwith mensagem

 let msg_erro_comentario lexbuf s =
   let pos = lexbuf.lex_curr_p in
   let lin = pos.pos_lnum
   and col = pos.pos_cnum - pos.pos_bol -1 in
   sprintf "%d-%d: final de comentario %s utilizado errado" lin col s


type tokens = BOOL of bool
	    |TSTRING of string
	    |ATRIB
	    |IF
	    |ELSE
	    |WHILE
	    |FOR
	    |PTVIRG
	    |VIRGULA
	    |MAIOR
	    |MENOR
	    |MENORIGUAL
	    |MAIORIGUAL
	    |IGUAL
	    |DIFERENTE
	    |AND
            |ECOM
	    |OR
	    |INCREMENTA
	    |DECREMENTA
	    |MAIS
	    |MENOS
	    |VEZES
	    |DIVISAO
	    |RESTO
	    |APARENT
	    |TINT of int
	    |TFLOAT of float
	    |TCHAR
	    |TVOID
	    |FPARENT
	    |ACHAVE
            |FCHAVE
	    |MAIN
	    |RETURN
	    |INCLUDE
	    |PRINTS
	    |ID of string
            |EOF
}

 let booleano = "true" | "false"
 let digito = ['0' - '9']
 let identificador = ['a'-'z' 'A'-'Z'] ['_' 'a'-'z' 'A'-'Z' '0'-'9']*
 let novalinha = '\r' | '\n' | "\r\n"
 let comentario = "//" [^ '\r' '\n' ]*
 

 rule token = parse
 | "/*" {comentario_bloco 0 lexbuf}
 |"*/"  {failwith (msg_erro_comentario lexbuf "*/");} (*fecha comentario*)
 | [' ' '\t' ] { token lexbuf } (* ignora espaços *)
 | ['\n' ] { incr_nlinha lexbuf; token lexbuf } (* ignora fim de linha *)
 | booleano as bol	{ let bol = bool_of_string bol in BOOL bol }
 | digito+ as num	{ let num = int_of_string num in TINT num }
 | ('.' digito+ | digito+ '.' | digito+ '.' digito+ as f) {	TFLOAT (float_of_string f) }
 (*| '\'' ([^ '\r'] | '\r' as c) '\'' { CHAR (c) }*)
 | '"' ([^ '\n']* ['\n']* as s) '"' { TSTRING (s) }
 | "//" [^ '\n']* { token lexbuf }
 | "=" { ATRIB }
 | "if" { IF }
 | "else" { ELSE }
 | "while" { WHILE }
 | "for" { FOR }
 | ';' { PTVIRG }
 | ',' { VIRGULA }
 | '>' { MAIOR }
 | '<' { MENOR }
 | "<=" { MENORIGUAL }
 | "=>" { MAIORIGUAL }
 | "==" { IGUAL }
 | "!=" { DIFERENTE }
 | "&&" { AND }
 | "&" {ECOM}
 | "||" { OR }
 | "++" { INCREMENTA }
 | "--" { DECREMENTA }
 | '+' { MAIS }
 | '-' { MENOS }
 | '*' { VEZES }
 | '/' { DIVISAO }
 | '%' { RESTO }
 | '(' { APARENT }
 (*| "int" { TINT }*)
 (*| "float" { TFLOAT }*)
 | "char" { TCHAR }
 | "void" { TVOID }
 | ')' { FPARENT }
 | '{' { ACHAVE }
 | '}' { FCHAVE }
 | "main" { MAIN }
 | "return" { RETURN }
 | "#include <stdio.h>\n#include <stdlib.h>" { INCLUDE }
 | "printf" { PRINTS }
 | identificador as id { ID (id) }
 | _ as c { failwith (msg_erro lexbuf c); }
 | eof { EOF }
(*Passar linha e colina*)
(* regra para tratar comentarios de varias linhas *)
and comentario_bloco n = parse
    "*/"  { if n=0 then token lexbuf
           else comentario_bloco (n-1) lexbuf }
  | "/*"  { comentario_bloco (n+1) lexbuf }
  | novalinha { incr_nlinha lexbuf; comentario_bloco n lexbuf }
  | _     { comentario_bloco n lexbuf }
  | eof   { failwith "Comentario nao fechado" }

(* regra para tratar strings literais *)
(*Ver porque esta caindo na exessão anterior*)
and leia_string lin col buffer = parse
  '"'       { Buffer.contents buffer}
| "\\t"     { Buffer.add_char buffer '\t'; leia_string lin col buffer lexbuf }
| "\\n"     { Buffer.add_char buffer '\n'; leia_string lin col buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string lin col buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string lin col buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string lin col buffer lexbuf }
| eof { erro lin col "A string nao foi fechada"}
