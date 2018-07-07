{
 open Lexing
 open Printf
 open Sintatico

 exception Erro of string

  let incr_num_linha lexbuf =
    let pos = lexbuf.lex_curr_p in
      lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
  }
  let pos_atual lexbuf = lexbuf.lex_start_p
}

let digito = ['0' - '9']
let inteiro = digito+
let floatt = digito* '.' digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "//" [^ '\r' '\n' ]*

let biblioteca = ['"' '<'] letra+ '.' 'h' ['"' '>']
let caractere = ''' letra '''

rule token = parse
   brancos { token lexbuf }
   | novalinha { incr_num_linha lexbuf; token lexbuf }
   | comentario { token lexbuf }
   | inteiro as num { let numero = int_of_string num in LITINT (numero, pos_atual lexbuf) }
   | floatt as num { let f = float_of_string num in LITFLOAT (f,pos_atual lexbuf)}
   | "/*" {
       let pos = lexbuf.lex_curr_p in
       let lin = pos.pos_lnum
       and col = pos.pos_cnum - pos.pos_bol - 1 in
       comentario_bloco lin col 0 lexbuf }
   | '(' { APAR (pos_atual lexbuf)}
   | ')' { FPAR (pos_atual lexbuf)}
   | '{' { ACHAVE (pos_atual lexbuf)}
   | '}' { FCHAVE (pos_atual lexbuf)}
   | "=" { ATRIB (pos_atual lexbuf)}
   | ',' { VIRGULA (pos_atual lexbuf)}
   | ';' { PONTOEV (pos_atual lexbuf)}
   | "float" { FLOAT (pos_atual lexbuf)}
   | "int" { INTEIRO (pos_atual lexbuf)}
   | "char" { CHAR (pos_atual lexbuf)}
   | "void" { VOID (pos_atual lexbuf)}
   | "gets" { GETS (pos_atual lexbuf)}
   | "puts" { PUTS (pos_atual lexbuf)}
   | '+' { MAIS (pos_atual lexbuf)}
   | '-' { MENOS (pos_atual lexbuf)}
   | '/' { DIVIDE (pos_atual lexbuf)}
   (*| '&' { ECOM (pos_atual lexbuf)}*)
   | '*' { MULTIPLICA (pos_atual lexbuf)}
   | '%' { MOD (pos_atual lexbuf)}
   | '!' { NOT (pos_atual lexbuf)}
   | '>' { MAIOR (pos_atual lexbuf)}
   | '<' { MENOR (pos_atual lexbuf)}
   | "==" { IGUAL (pos_atual lexbuf)}
   | ">=" { MAIORIGUAL (pos_atual lexbuf)}
   | "<=" { MENORIGUAL (pos_atual lexbuf)}
   | "!=" { DIFERENTE (pos_atual lexbuf)}
   | "||" { OU (pos_atual lexbuf)}
   | "&&" { E (pos_atual lexbuf)}
   | "#include" { INCLUDE (pos_atual lexbuf)}
   | "if" { IF (pos_atual lexbuf)}
   | "else" { ELSE (pos_atual lexbuf)}
   | "while" { WHILE (pos_atual lexbuf)}
   | "for" { FOR (pos_atual lexbuf)}
   (*| "printf" { PRINTF (pos_atual lexbuf)}*)
   (*| "scanf" { SCANF (pos_atual lexbuf)}*)
   | "return" { RETURN (pos_atual lexbuf)}
   | biblioteca as lib { LIB (String.sub lib 1 ((String.length lib) - 2))}
   | caractere as car {LITCHAR (car.[1], pos_atual lexbuf)}
   | identificador as id { ID (id,pos_atual lexbuf) }
   | '"' { let pos = lexbuf.lex_curr_p in
           let lin = pos.pos_lnum
           and col = pos.pos_cnum - pos.pos_bol - 1 in
           let buffer = Buffer.create 1 in
           let str = leia_string lin col buffer lexbuf in
           LITSTRING (str,pos_atual lexbuf) }
   | _ { raise (Erro ("Caracter desconhecido: " ^Lexing.lexeme lexbuf))}
   | eof { EOF }
 
and comentario_bloco lin col n = parse
   "*/" { if n=0 then token lexbuf
          else comentario_bloco lin col (n-1) lexbuf }
   | "/*" { comentario_bloco lin col (n+1) lexbuf }
   | novalinha { incr_num_linha lexbuf; comentario_bloco lin col n lexbuf }
   | _ { comentario_bloco lin col n lexbuf }
   | eof { raise (Erro "Comentario nao fechado") }

and leia_string lin col buffer = parse
 '"' { Buffer.contents buffer}
   | "\\t" { Buffer.add_char buffer '\t'; leia_string lin col buffer lexbuf }
   | "\\n" { Buffer.add_char buffer '\n'; leia_string lin col buffer lexbuf }
   | '\\' '"' { Buffer.add_char buffer '"'; leia_string lin col buffer lexbuf }
   | '\\' '\\' { Buffer.add_char buffer '\\'; leia_string lin col buffer lexbuf }
   | _ as c { Buffer.add_char buffer c; leia_string lin col buffer lexbuf
}
   | eof { raise (Erro "A string nao foi fechada")}