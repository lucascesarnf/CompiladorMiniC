 (* The type of the abstract syntax tree (AST). *)
 open Lexing

 type ident = string
 type 'a pos = 'a * Lexing.position

 type 'expr programa = Programa of bibliotecas * ('expr declaracoes)
 and bibliotecas = biblioteca list
 and biblioteca = Lib of string
 and declara_variaveis = declara_variavel list
 and declara_variavel = DecVar of (ident pos) * tipo
 and 'expr comandos = ('expr comando) list
 and globais = global list
 and global = DecGlobal of (ident pos) * tipo

and 'expr declaracao =
     Funcao of ('expr registrofun)
     |Global of globais

and 'expr declaracoes = ('expr declaracao) list

and 'expr registrofun = {nome: ident pos;
 tipoRetorno: tipo;
 args: (ident pos * tipo) list;
 vlocais: declara_variaveis;
 cmds: 'expr comandos;}


 and tipo = TipoInt
 | TipoChar
 | TipoFloat
 | TipoVoid
 | TipoString

 and 'expr comando = CmdAtrib of 'expr * 'expr
 | CmdSe of 'expr * ('expr comandos) * ('expr comandos option)
 | CmdFor of 'expr * ('expr comandos)
 | CmdWhile of 'expr * ('expr comandos)
 | CmdEntrada of 'expr
 | CmdSaida of 'expr
 | CmdRet of 'expr option
 | CmdFun of 'expr 
 | CmdPrintf of 'expr 
 | CmdScanf of 'expr * 'expr 

 and 'expr expressoes = 'expr list

 and 'expr variaveis = ('expr variavel) list
 and 'expr variavel =
 VarSimples of ident pos

 and oper = Mais
 | Menos
 | Mult
 | Div
 | Menor
 | Igual
 | Difer
 | Maior
 | AND
 | Ou
 | Not
 | Maiorigual
 | Menorigual
 | Mod