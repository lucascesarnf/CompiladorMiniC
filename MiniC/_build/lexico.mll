{
 open Sintatico 
 open Lexing
 open Printf
 
 exception Erro of string

 let incr_num_linha lexbuf =
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
 
 let digito = ['0' - '9']
 let inteiro = '-'? digito+
 let float = ( '-'? digito+ '.' digito+ | '.' digito+ )
 let identificador = ['a'-'z' 'A'-'Z'] ['_' 'a'-'z' 'A'-'Z' '0'-'9']*
 let includee = "#include<stdio.h>"
 let getchar = "getchar()"

rule token = parse
  [' ' '\t' ] { token lexbuf }
  | ['\r' '\n' ] { incr_num_linha lexbuf; token lexbuf }
  | inteiro as num {INT ( int_of_string num) }
  | float as num { FLOAT ( float_of_string num) }
  | '=' {Atrib }
  | '\'' ([^ '\r'] | '\r' as c) '\'' { CHAR (c) }
  | "==" { Comp }
  | "!=" {Dif }
  | ">=" { MaiorI }
  | "<=" { MenorI }
  | "++" { Inc }
  | "||" { Or }
  | "&&" { And }
  | '+' { OpSoma }
  | '-' { OpSub }
  | '%' { Perc }
  | '*' { OpMul }
  | "/*" { multilinha lexbuf }
  | '/' { OpDiv }
  | '"' { let buffer = Buffer.create 1 in STRING (cadeia buffer lexbuf) }
  | "//" [^ '\n']* { token lexbuf }
  | '(' { AParen }
  | ')' { FParen }
  | '{' { AChave }
  | '}' { FChave }
  | ';' { PTVirg }
  | ',' { Virg }
  | '.' { Ponto }
  | ':' { DoisP }
  | "’" { Apost }
  | '>' { Maior }
  | '!' { Not }
  | '<' { Menor }
  | "true" { True }
  | "false" { False }
  | '&' { ECom }
  | "main" { Main }
  | "int" { TInt }
  | "float" { TFloat }
  | "char" { TChar }
  | "bool" { TBool }
  | "if" { If }
  | "else" { Else }
  | "while" { While }
  | "for" { For }
  | "switch" { Switch }
  | "case" { Case }
  | "break" { Break }
  | "default" { Default}
  | "printf" { Printf }
  | "scanf" { Scanf }
  | "return" { Return }
  | getchar as gc { GetChar (gc) }
  | includee as incl { Include (incl)}
  | identificador as id { Ident (id) }
  | _ as c { failwith (msg_erro lexbuf c); }
  | eof { EOF }

and multilinha = parse
  | "*/" { token lexbuf }
  | _ { multilinha lexbuf }
  | eof { failwith "comentario n fechado" }

and cadeia buffer = parse
  | '"' { Buffer.contents buffer }
  | "\\t" { Buffer.add_char buffer '\t'; cadeia buffer lexbuf }
  | "\\n" { Buffer.add_char buffer '\n'; cadeia buffer lexbuf }
  | '\\' '"' { Buffer.add_char buffer '"'; cadeia buffer lexbuf }
  | '\\' '\\' { Buffer.add_char buffer '\\'; cadeia buffer lexbuf }
  | _ as c { Buffer.add_char buffer c; cadeia buffer lexbuf }
  | eof { failwith "String nao foi fechada" }