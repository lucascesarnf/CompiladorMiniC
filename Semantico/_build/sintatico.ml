
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20180530

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE of (
# 37 "sintatico.mly"
        (Lexing.position)
# 16 "sintatico.ml"
  )
    | VOID of (
# 26 "sintatico.mly"
        (Lexing.position)
# 21 "sintatico.ml"
  )
    | VIRGULA of (
# 19 "sintatico.mly"
        (Lexing.position)
# 26 "sintatico.ml"
  )
    | STRING of (
# 25 "sintatico.mly"
        (Lexing.position)
# 31 "sintatico.ml"
  )
    | RETURN of (
# 39 "sintatico.mly"
        (Lexing.position)
# 36 "sintatico.ml"
  )
    | PUTS of (
# 40 "sintatico.mly"
        (Lexing.position)
# 41 "sintatico.ml"
  )
    | PONTOEV of (
# 20 "sintatico.mly"
        (Lexing.position)
# 46 "sintatico.ml"
  )
    | OU of (
# 52 "sintatico.mly"
        (Lexing.position)
# 51 "sintatico.ml"
  )
    | NOT of (
# 50 "sintatico.mly"
        (Lexing.position)
# 56 "sintatico.ml"
  )
    | MULTIPLICA of (
# 31 "sintatico.mly"
        (Lexing.position)
# 61 "sintatico.ml"
  )
    | MOD of (
# 33 "sintatico.mly"
        (Lexing.position)
# 66 "sintatico.ml"
  )
    | MENOS of (
# 30 "sintatico.mly"
        (Lexing.position)
# 71 "sintatico.ml"
  )
    | MENORIGUAL of (
# 49 "sintatico.mly"
        (Lexing.position)
# 76 "sintatico.ml"
  )
    | MENOR of (
# 45 "sintatico.mly"
        (Lexing.position)
# 81 "sintatico.ml"
  )
    | MAIS of (
# 29 "sintatico.mly"
        (Lexing.position)
# 86 "sintatico.ml"
  )
    | MAIORIGUAL of (
# 48 "sintatico.mly"
        (Lexing.position)
# 91 "sintatico.ml"
  )
    | MAIOR of (
# 44 "sintatico.mly"
        (Lexing.position)
# 96 "sintatico.ml"
  )
    | LITSTRING of (
# 11 "sintatico.mly"
        (string * Lexing.position)
# 101 "sintatico.ml"
  )
    | LITINT of (
# 9 "sintatico.mly"
        (int * Lexing.position)
# 106 "sintatico.ml"
  )
    | LITFLOAT of (
# 10 "sintatico.mly"
        (float * Lexing.position)
# 111 "sintatico.ml"
  )
    | LITCHAR of (
# 12 "sintatico.mly"
        (char * Lexing.position)
# 116 "sintatico.ml"
  )
    | LIB of (
# 8 "sintatico.mly"
        (string)
# 121 "sintatico.ml"
  )
    | INTEIRO of (
# 22 "sintatico.mly"
        (Lexing.position)
# 126 "sintatico.ml"
  )
    | INCLUDE of (
# 42 "sintatico.mly"
        (Lexing.position)
# 131 "sintatico.ml"
  )
    | IGUAL of (
# 46 "sintatico.mly"
        (Lexing.position)
# 136 "sintatico.ml"
  )
    | IF of (
# 35 "sintatico.mly"
        (Lexing.position)
# 141 "sintatico.ml"
  )
    | ID of (
# 13 "sintatico.mly"
        (string * Lexing.position)
# 146 "sintatico.ml"
  )
    | GETS of (
# 41 "sintatico.mly"
        (Lexing.position)
# 151 "sintatico.ml"
  )
    | FPAR of (
# 16 "sintatico.mly"
        (Lexing.position)
# 156 "sintatico.ml"
  )
    | FOR of (
# 38 "sintatico.mly"
        (Lexing.position)
# 161 "sintatico.ml"
  )
    | FLOAT of (
# 23 "sintatico.mly"
        (Lexing.position)
# 166 "sintatico.ml"
  )
    | FCHAVE of (
# 18 "sintatico.mly"
        (Lexing.position)
# 171 "sintatico.ml"
  )
    | EOF
    | ELSE of (
# 36 "sintatico.mly"
        (Lexing.position)
# 177 "sintatico.ml"
  )
    | E of (
# 51 "sintatico.mly"
        (Lexing.position)
# 182 "sintatico.ml"
  )
    | DIVIDE of (
# 32 "sintatico.mly"
        (Lexing.position)
# 187 "sintatico.ml"
  )
    | DIFERENTE of (
# 47 "sintatico.mly"
        (Lexing.position)
# 192 "sintatico.ml"
  )
    | CHAR of (
# 24 "sintatico.mly"
        (Lexing.position)
# 197 "sintatico.ml"
  )
    | ATRIB of (
# 27 "sintatico.mly"
        (Lexing.position)
# 202 "sintatico.ml"
  )
    | APAR of (
# 15 "sintatico.mly"
        (Lexing.position)
# 207 "sintatico.ml"
  )
    | ACHAVE of (
# 17 "sintatico.mly"
        (Lexing.position)
# 212 "sintatico.ml"
  )
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 2 "sintatico.mly"
  
 open Lexing
 open Ast
 open Sast

 
# 229 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ACHAVE _ ->
          41
      | APAR _ ->
          40
      | ATRIB _ ->
          39
      | CHAR _ ->
          38
      | DIFERENTE _ ->
          37
      | DIVIDE _ ->
          36
      | E _ ->
          35
      | ELSE _ ->
          34
      | EOF ->
          33
      | FCHAVE _ ->
          32
      | FLOAT _ ->
          31
      | FOR _ ->
          30
      | FPAR _ ->
          29
      | GETS _ ->
          28
      | ID _ ->
          27
      | IF _ ->
          26
      | IGUAL _ ->
          25
      | INCLUDE _ ->
          24
      | INTEIRO _ ->
          23
      | LIB _ ->
          22
      | LITCHAR _ ->
          21
      | LITFLOAT _ ->
          20
      | LITINT _ ->
          19
      | LITSTRING _ ->
          18
      | MAIOR _ ->
          17
      | MAIORIGUAL _ ->
          16
      | MAIS _ ->
          15
      | MENOR _ ->
          14
      | MENORIGUAL _ ->
          13
      | MENOS _ ->
          12
      | MOD _ ->
          11
      | MULTIPLICA _ ->
          10
      | NOT _ ->
          9
      | OU _ ->
          8
      | PONTOEV _ ->
          7
      | PUTS _ ->
          6
      | RETURN _ ->
          5
      | STRING _ ->
          4
      | VIRGULA _ ->
          3
      | VOID _ ->
          2
      | WHILE _ ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | ACHAVE _v ->
          Obj.repr _v
      | APAR _v ->
          Obj.repr _v
      | ATRIB _v ->
          Obj.repr _v
      | CHAR _v ->
          Obj.repr _v
      | DIFERENTE _v ->
          Obj.repr _v
      | DIVIDE _v ->
          Obj.repr _v
      | E _v ->
          Obj.repr _v
      | ELSE _v ->
          Obj.repr _v
      | EOF ->
          Obj.repr ()
      | FCHAVE _v ->
          Obj.repr _v
      | FLOAT _v ->
          Obj.repr _v
      | FOR _v ->
          Obj.repr _v
      | FPAR _v ->
          Obj.repr _v
      | GETS _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | IF _v ->
          Obj.repr _v
      | IGUAL _v ->
          Obj.repr _v
      | INCLUDE _v ->
          Obj.repr _v
      | INTEIRO _v ->
          Obj.repr _v
      | LIB _v ->
          Obj.repr _v
      | LITCHAR _v ->
          Obj.repr _v
      | LITFLOAT _v ->
          Obj.repr _v
      | LITINT _v ->
          Obj.repr _v
      | LITSTRING _v ->
          Obj.repr _v
      | MAIOR _v ->
          Obj.repr _v
      | MAIORIGUAL _v ->
          Obj.repr _v
      | MAIS _v ->
          Obj.repr _v
      | MENOR _v ->
          Obj.repr _v
      | MENORIGUAL _v ->
          Obj.repr _v
      | MENOS _v ->
          Obj.repr _v
      | MOD _v ->
          Obj.repr _v
      | MULTIPLICA _v ->
          Obj.repr _v
      | NOT _v ->
          Obj.repr _v
      | OU _v ->
          Obj.repr _v
      | PONTOEV _v ->
          Obj.repr _v
      | PUTS _v ->
          Obj.repr _v
      | RETURN _v ->
          Obj.repr _v
      | STRING _v ->
          Obj.repr _v
      | VIRGULA _v ->
          Obj.repr _v
      | VOID _v ->
          Obj.repr _v
      | WHILE _v ->
          Obj.repr _v
  
  and default_reduction =
    (8, "\000\000\002\001\000LIJKH\000\000\000\000A\000\000>5\000\000G\000\000\000\000\000\021\000\000\028\025\026\027\000\000\000\024\000\000\000\000',\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000+3\000\003\000\000E\000\000\000\016\000\017\000\000\018\000\000\000\000\000\012\000\000\000\000\000\011\000\000\000\000\000\000\000\000\015\005\b\n\006\t\007\004\0009\000\000\000C\000\000\000\000\000=\019\000\014\000-\000/\0001\000\020\000?\023\000;\022\0007")
  
  and error =
    (42, "\000\000\000\128\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000 \000\001\001\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000D\000\000\000\002\000\000\000\016\000\004@\000\000\000\000\000\000\000\000\000\128\000\004\020\b\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\016\000 \000\001\001\002\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\001f\000=;\130\128\000\000\004\000\000\016\000\000\000\000\000\000\000\000\000F\000<:\128\128\000\015\004\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\031\252\004A\220\000\000\240P\002\000\000<\016\000\128\000\000\000\000\000\015\252\004A\192\000\000\240@\002\017\255\192D\029@\000\015\004\000 \000\000\000\000\000\000\000\000\000\000\000\000<\016\000\132\127\240\017\007P\000\003\193\000\bG\255\001\016u\000\000<\016\000\132\127\240\017\007P\000\003\193\000\bG\255\001\016u\000\000<\016\000\132\127\240\017\007P\000\003\193\000\bG\255\001\016u\000\000<\016\000\132\127\240\017\007P\000\003\193\000\bG\255\001\016u\000\000<\016\000\132\127\240\017\007P\000\003\193\000\bG\255\001\016u\000\000<\016\000\132\127\240\017\007P\000\003\193\000\bG\255\001\016u\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\016\255\192D\028\000\000\015\004\000 \000\000\000\000\000\003\255\001\000qF\000<:\000\128@\015\004\000 \000\000\000\000\000\007\255\001\000p\000\000\000\000\000\000\000\015\004\000 \031\252\004\001\192\000\000\000\000\000\000\000<\016\000\128?\240\016\007\020`\003\195\160\b\000\000\240@\002\001\255\192@\028\000\000\000\000\000\000\000\000\000\000\b\000\000\240@\002\000\255\192@\029\000\000\015\004\000 \031\252\004\001\192\000\000\000\000\000\001\000\000\000\000\000\000\015\004\000 \031\252\004\001\192\000\000\240@\002\000\000\000\004\000\000\000\000\000\000\020`\003\195\160\b\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000F\000<:\128\128\000\000\000\000\004o\255\199\169\216@\000\000\016\000\000\000<\016\000\128\000\000\000\000\000\000\000\000\b\001\024\000\240\234\130\000\000\000\000\000Q\128\015\014\128 \000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\017\128\015\014\160 \000\000\000\000\001\152\000\244\238\n\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\002\000\000\016\020 \000\000\000\000\000\000\000\000\000\000\b\000\000`@\128\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000/\000'\000\000\000\000\001\012\000\000\000\000\000\000\000\000\000\000\000\r\000j\000\011\000\003\000\000\001\012\000\t\000\000\000\000\000J\001\012\000\000\000\003\000\023\004\004\000\011\0004\000\000\006.\000\164\000\000\000\000\000\000\000\000\000D\005\006\000\164\000\000\004\130\000\164\000\138\000\164\000\000\000\000\000\164\000\208\000\164\001\022\000\164\001\\\000\164\001\162\000\164\001\232\000\164\002.\000\164\002t\000\164\002\186\000\164\003\000\000\164\003F\000\164\003\140\000\164\003\210\000\000\000\000\000.\000\000\004F\000\164\000\000\004\130\006.\000\164\000\000\004\200\000\000\000\164\005\006\000\000\000\164\005\006\006.\000\164\005L\000\000\000\030\000\164\004\130\000\164\005\138\000\000\000d\000\164\005\200\000\164\000:\000.\006.\000B\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006f\000\000\000\003\000v\000\164\000\000\000F\005\242\000\\\006.\000t\000\000\000\000\000v\000\000\000x\000\000\006.\000\000\004\004\000\000\000\176\000\000\000~\000\000\000\000\001\012\000\000\000\000\000<\000\000"), (16, "\0001\000\006\0002\000\n\0001\0001\000\253\000\173\000\173\000\173\000\173\000\173\000\173\000\173\000\173\000\173\000\173\0001\0001\0001\0001\000.\0006\000F\000\173\0001\0001\0001\000^\0001\000b\0001\000\213\000n\000\173\000\173\000\173\0011\000\173\0001\000R\0011\0011\0011\0011\0011\0011\0011\0011\0011\0011\0011\001\030\000\213\000\006\001n\0002\001\134\001\150\0011\000\253\000\213\001\210\0011\001\154\001\162\001\021\001\222\000\213\0011\0011\0011\000\149\0011\000\142\0011\000\149\000\149\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\001\230\001\005\001:\001\238\001\250\002\002\000>\000\250\002\026\002#\000\000\000\149\000\000\000z\000~\000\130\000\134\001\002\000\210\001\n\000y\000\149\000\138\000\149\000y\000y\000\166\000y\000y\000y\000y\000y\000y\000y\000y\000\146\000\000\000\000\000\000\000\000\000\000\000\000\000y\000\000\000\000\000\000\000y\000\000\000\000\000\022\000\000\000\000\000y\000y\000y\000\165\000y\000\000\000y\000\165\000\165\000\166\000\165\000\165\000\165\000\165\000\165\000\165\000\165\000\165\000\026\000\000\000\000\000\000\000\000\000\000\000\205\000\165\000\030\000\000\000\229\000\165\000\000\000\000\000\000\000\"\000\000\000\165\000\165\000\165\000u\000\165\000\000\000\165\000u\000u\000\166\000\178\000\186\000u\000\202\000u\000u\000\218\000u\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000u\000\000\000\000\000\000\000u\000\000\000\000\000\000\000\000\000\000\000u\000\210\000u\000\161\000u\000\000\000u\000\161\000\161\000\166\000\178\000\186\000\161\000\161\000\161\000\161\000\161\000\161\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\161\000\000\000\000\000\000\000\161\000\000\000\000\000\000\000\000\000\000\000\161\000\210\000\161\000}\000\161\000\000\000\161\000}\000}\000\166\000}\000}\000}\000}\000}\000}\000}\000}\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000}\000\000\000\000\000\000\000}\000\000\000\000\000\000\000\000\000\000\000}\000}\000}\000\157\000}\000\000\000}\000\157\000\157\000\166\000\178\000\186\000\157\000\157\000\157\000\157\000\157\000\157\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\157\000\000\000\000\000\000\000\157\000\000\000\000\000\000\000\000\000\000\000\157\000\210\000\157\000\129\000\157\000\000\000\157\000\129\000\129\000\166\000\178\000\186\000\194\000\202\000\129\000\234\000\218\000\129\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\129\000\000\000\000\000\000\000\129\000\000\000\000\000\000\000\000\000\000\000\129\000\210\000\129\000q\000\129\000\000\000\129\000q\000q\000\166\000\178\000\186\000q\000\202\000q\000q\000\218\000q\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000q\000\000\000\000\000\000\000q\000\000\000\000\000\000\000\000\000\000\000q\000\210\000q\000\141\000q\000\000\000q\000\141\000\141\000\166\000\178\000\186\000\194\000\202\000\141\000\234\000\218\000\141\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\141\000\000\000\000\000\000\000\141\000\000\000\000\000\000\000\000\000\000\000\141\000\210\000\141\000\133\000\141\000\000\000\141\000\133\000\133\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\133\000\000\000\000\000\000\000\133\000\000\000\000\000\000\000\000\000\000\000\133\000\210\000\133\000\145\000\133\000\000\000\133\000\145\000\145\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\145\000\000\000\000\000\000\000\000\000\000\000\145\000\210\001\n\000\137\000\145\000\000\000\145\000\137\000\137\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\137\000\189\000\022\000\000\000\137\000\189\000\189\000\000\000\000\000\000\000\137\000\210\000\137\000\000\000\137\000\000\000\137\000\000\000\189\000\189\000\189\000\189\000\000\000\026\000\000\000\000\000\189\000\189\000\189\000\000\000\189\000\030\000\189\000\000\000\000\000\000\001&\000\000\000\"\000\000\000\189\000\158\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\001\r\000\000\000\000\000\000\000\000\000\000\001\002\000\210\001\n\000\158\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\001\018\000\000\000\000\000\000\000\000\000\000\001\002\000\210\001\n\000\000\001v\000\000\0012\001B\000\158\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\002\000\210\001\n\001N\000\158\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\000z\000~\000\130\000\134\000\000\000\000\000\000\000\250\000\000\000\138\000\000\000\197\000\000\000\000\000\000\000\000\000\000\001\002\000\210\001\n\000\000\000\000\000\146\001Z\001f\000\158\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\002\000\210\001\n\001~\000\158\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\002\000\210\001\n\001\142\000\158\000\166\000\178\000\186\000\194\000\202\000\226\000\234\000\218\000\242\000\000\000\000\000\000\000\000\000\237\000\000\000\000\000\250\000\237\000\237\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\002\000\210\001\n\000\000\000\237\000\237\000\237\000\237\000\000\000\000\000\000\000\000\000\237\000\237\000\237\000\000\000\237\000v\000\237\000\000\001\226\0016\001F\000\000\000\000\000\000\000\237\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000z\000~\000\130\000\134\000\000\000\000\000\000\000\000\001R\000\138\001^\000v\001j\000\000\000\181\0016\001F\000\000\000\000\000\000\000\000\000\000\000\146\000\000\000\000\000\000\000\000\000\000\000z\000~\000\130\000\134\000\000\000\000\000\000\000\000\001R\000\138\001^\000\000\001j\000\000\000\221\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\146"))
  
  and lhs =
    (8, "\000 \031\030\030\030\030\030\030\030\029\028\027\026\026\025\025\024\023\022\021\020\020\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\018\017\017\016\016\015\015\014\014\r\r\012\012\011\011\n\n\t\b\007\007\006\006\005\005\004\004\003\002\002\002\002\001")
  
  and goto =
    ((16, "\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\t\000\000\000\000\000\000\000\000\001&\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\001V\000\004\000\000\000\000\000\003\001`\000\000\000\000\000\000\000\000\000\000\0010\001p\000\000\000\000\001|\000\000\001\138\000\000\000\000\001\142\000\000\001\144\000\000\001\146\000\000\001\150\000\000\001\164\000\000\001\176\000\000\001\190\000\000\001\192\000\000\001\194\000\000\001\196\000\000\001\208\000\000\001\222\000\000\000\000\000\000\000\000\000\000\000\000\001\\\000\000\000\000\000&\001\234\000\000\000\000\000\000\001\238\000\000\000\000\001\240\000\000\000N\001\242\000\000\000\000\000\000\001b\000\000\001\248\000\000\000\000\000\000\002\004\000\000\0012\000\000\000\000\000v\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\158\000\000\000\000\000\000\001:\000\000\000\000\000\004\000\000\000\198\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\228\000\000\001d\000\000\000\000\000\000\000\000\000\000\000\000\001 \000\000\000\000\000\002\000\000"), (8, "&\n\011\134\n\017\022\015\004\027\136\020}\005\143\000\128\138]\139&\141jklmnop\130s~\142\142\000\000\000\000]\000&\000jklmnopqsw\000\000\000\000\000\000]\000&\000jklmnopqsh\000\000\000\000\000\000]\000&\000jklmnopqsr\000\000\000\000\000\000]\000&\000jklmnopqs{\000\000\000&\000\000]\000\000\000jklmnopqs\131\000]\000\000\000jklmnop\130s\n\011\000\n\017\019\000&&\140\020F&e\000\023\138v\139\000\141G\000\000\000I]\n\026&]&&K\n\026t,,&t\029,\000\000&\132I\133L]\000&\132&&&'&,a,,)\000&\000\000\000,+&.02,4\000&&&&,6,,,&,8\000\000\000\000&,:<>@&,&&&B\000&,,,,D&\000\000\000,P\000SVY\000,_\000\000\000\000,c,,,\000\000,\000\000\000\000\000,"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = b;
          MenhirLib.EngineTypes.startp = _startpos_b_;
          MenhirLib.EngineTypes.endp = _endpos_b_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let b : (
# 8 "sintatico.mly"
        (string)
# 447 "sintatico.ml"
        ) = Obj.magic b in
        let _1 : (
# 42 "sintatico.mly"
        (Lexing.position)
# 452 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_b_ in
        let _v : (Ast.biblioteca) = 
# 71 "sintatico.mly"
                            ( Lib b)
# 460 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = xs0;
            MenhirLib.EngineTypes.startp = _startpos_xs0_;
            MenhirLib.EngineTypes.endp = _endpos_xs0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = nome_fun;
                MenhirLib.EngineTypes.startp = _startpos_nome_fun_;
                MenhirLib.EngineTypes.endp = _endpos_nome_fun_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 16 "sintatico.mly"
        (Lexing.position)
# 496 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs0 : (Sast.expressao Ast.expressoes) = Obj.magic xs0 in
        let _2 : (
# 15 "sintatico.mly"
        (Lexing.position)
# 502 "sintatico.ml"
        ) = Obj.magic _2 in
        let nome_fun : (
# 13 "sintatico.mly"
        (string * Lexing.position)
# 507 "sintatico.ml"
        ) = Obj.magic nome_fun in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_nome_fun_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao) = let args =
          let xs = xs0 in
          
# 206 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 517 "sintatico.ml"
          
        in
        
# 140 "sintatico.mly"
                                                                        ( ExpChamada(nome_fun,args))
# 523 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 101 "sintatico.mly"
                               ( c )
# 548 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 102 "sintatico.mly"
                ( c )
# 573 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 103 "sintatico.mly"
                ( c )
# 598 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 104 "sintatico.mly"
                     ( c )
# 623 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 105 "sintatico.mly"
                   ( c )
# 648 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 106 "sintatico.mly"
                    ( c )
# 673 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 107 "sintatico.mly"
                     ( c )
# 698 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = v;
                MenhirLib.EngineTypes.startp = _startpos_v_;
                MenhirLib.EngineTypes.endp = _endpos_v_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 20 "sintatico.mly"
        (Lexing.position)
# 734 "sintatico.ml"
        ) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (
# 27 "sintatico.mly"
        (Lexing.position)
# 740 "sintatico.ml"
        ) = Obj.magic _2 in
        let v : (Sast.expressao) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.comando) = 
# 110 "sintatico.mly"
                                                           (CmdAtrib (v,e))
# 749 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 20 "sintatico.mly"
        (Lexing.position)
# 780 "sintatico.ml"
        ) = Obj.magic _3 in
        let xs : (Sast.expressao) = Obj.magic xs in
        let _1 : (
# 41 "sintatico.mly"
        (Lexing.position)
# 786 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.comando) = 
# 119 "sintatico.mly"
                                             (CmdEntrada xs)
# 794 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = exp;
          MenhirLib.EngineTypes.startp = _startpos_exp_;
          MenhirLib.EngineTypes.endp = _endpos_exp_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_exp_ in
        let _endpos = _endpos_exp_ in
        let _v : (Sast.expressao Ast.comando) = 
# 124 "sintatico.mly"
                              (CmdFun exp)
# 819 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = e;
                MenhirLib.EngineTypes.startp = _startpos_e_;
                MenhirLib.EngineTypes.endp = _endpos_e_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 18 "sintatico.mly"
        (Lexing.position)
# 860 "sintatico.ml"
        ) = Obj.magic _5 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _3 : (
# 17 "sintatico.mly"
        (Lexing.position)
# 866 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 37 "sintatico.mly"
        (Lexing.position)
# 872 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 116 "sintatico.mly"
                                                         (CmdWhile(e,cs))
# 880 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _11;
          MenhirLib.EngineTypes.startp = _startpos__11_;
          MenhirLib.EngineTypes.endp = _endpos__11_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _9;
              MenhirLib.EngineTypes.startp = _startpos__9_;
              MenhirLib.EngineTypes.endp = _endpos__9_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _8;
                MenhirLib.EngineTypes.startp = _startpos__8_;
                MenhirLib.EngineTypes.endp = _endpos__8_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = c2;
                  MenhirLib.EngineTypes.startp = _startpos_c2_;
                  MenhirLib.EngineTypes.endp = _endpos_c2_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _6;
                    MenhirLib.EngineTypes.startp = _startpos__6_;
                    MenhirLib.EngineTypes.endp = _endpos__6_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = e;
                      MenhirLib.EngineTypes.startp = _startpos_e_;
                      MenhirLib.EngineTypes.endp = _endpos_e_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = _4;
                        MenhirLib.EngineTypes.startp = _startpos__4_;
                        MenhirLib.EngineTypes.endp = _endpos__4_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.semv = c1;
                          MenhirLib.EngineTypes.startp = _startpos_c1_;
                          MenhirLib.EngineTypes.endp = _endpos_c1_;
                          MenhirLib.EngineTypes.next = {
                            MenhirLib.EngineTypes.semv = _2;
                            MenhirLib.EngineTypes.startp = _startpos__2_;
                            MenhirLib.EngineTypes.endp = _endpos__2_;
                            MenhirLib.EngineTypes.next = {
                              MenhirLib.EngineTypes.state = _menhir_s;
                              MenhirLib.EngineTypes.semv = _1;
                              MenhirLib.EngineTypes.startp = _startpos__1_;
                              MenhirLib.EngineTypes.endp = _endpos__1_;
                              MenhirLib.EngineTypes.next = _menhir_stack;
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _11 : (
# 18 "sintatico.mly"
        (Lexing.position)
# 951 "sintatico.ml"
        ) = Obj.magic _11 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _9 : (
# 17 "sintatico.mly"
        (Lexing.position)
# 957 "sintatico.ml"
        ) = Obj.magic _9 in
        let _8 : (
# 16 "sintatico.mly"
        (Lexing.position)
# 962 "sintatico.ml"
        ) = Obj.magic _8 in
        let c2 : (Sast.expressao Ast.comando list) = Obj.magic c2 in
        let _6 : (
# 20 "sintatico.mly"
        (Lexing.position)
# 968 "sintatico.ml"
        ) = Obj.magic _6 in
        let e : (Sast.expressao) = Obj.magic e in
        let _4 : (
# 20 "sintatico.mly"
        (Lexing.position)
# 974 "sintatico.ml"
        ) = Obj.magic _4 in
        let c1 : (Sast.expressao Ast.comando) = Obj.magic c1 in
        let _2 : (
# 15 "sintatico.mly"
        (Lexing.position)
# 980 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 38 "sintatico.mly"
        (Lexing.position)
# 985 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__11_ in
        let _v : (Sast.expressao Ast.comando) = 
# 117 "sintatico.mly"
                                                                                                                                                             (CmdFor(e, c1::cs@c2))
# 993 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (
# 20 "sintatico.mly"
        (Lexing.position)
# 1019 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 39 "sintatico.mly"
        (Lexing.position)
# 1024 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.comando) = 
# 126 "sintatico.mly"
                                 ( CmdRet None )
# 1032 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 20 "sintatico.mly"
        (Lexing.position)
# 1063 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 39 "sintatico.mly"
        (Lexing.position)
# 1069 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.comando) = 
# 127 "sintatico.mly"
                               ( CmdRet (Some e) )
# 1077 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 20 "sintatico.mly"
        (Lexing.position)
# 1108 "sintatico.ml"
        ) = Obj.magic _3 in
        let cs : (Sast.expressao) = Obj.magic cs in
        let _1 : (
# 40 "sintatico.mly"
        (Lexing.position)
# 1114 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.comando) = 
# 121 "sintatico.mly"
                                           (CmdSaida cs)
# 1122 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = senao;
          MenhirLib.EngineTypes.startp = _startpos_senao_;
          MenhirLib.EngineTypes.endp = _endpos_senao_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _5;
            MenhirLib.EngineTypes.startp = _startpos__5_;
            MenhirLib.EngineTypes.endp = _endpos__5_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = entao;
              MenhirLib.EngineTypes.startp = _startpos_entao_;
              MenhirLib.EngineTypes.endp = _endpos_entao_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _3;
                MenhirLib.EngineTypes.startp = _startpos__3_;
                MenhirLib.EngineTypes.endp = _endpos__3_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = teste;
                  MenhirLib.EngineTypes.startp = _startpos_teste_;
                  MenhirLib.EngineTypes.endp = _endpos_teste_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = _1;
                    MenhirLib.EngineTypes.startp = _startpos__1_;
                    MenhirLib.EngineTypes.endp = _endpos__1_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let senao : (Sast.expressao Ast.comandos option) = Obj.magic senao in
        let _5 : (
# 18 "sintatico.mly"
        (Lexing.position)
# 1169 "sintatico.ml"
        ) = Obj.magic _5 in
        let entao : (Sast.expressao Ast.comandos) = Obj.magic entao in
        let _3 : (
# 17 "sintatico.mly"
        (Lexing.position)
# 1175 "sintatico.ml"
        ) = Obj.magic _3 in
        let teste : (Sast.expressao) = Obj.magic teste in
        let _1 : (
# 35 "sintatico.mly"
        (Lexing.position)
# 1181 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_senao_ in
        let _v : (Sast.expressao Ast.comando) = 
# 114 "sintatico.mly"
 (CmdSe(teste,entao,senao))
# 1189 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = ids;
            MenhirLib.EngineTypes.startp = _startpos_ids_;
            MenhirLib.EngineTypes.endp = _endpos_ids_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = t;
              MenhirLib.EngineTypes.startp = _startpos_t_;
              MenhirLib.EngineTypes.endp = _endpos_t_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 20 "sintatico.mly"
        (Lexing.position)
# 1220 "sintatico.ml"
        ) = Obj.magic _3 in
        let ids : (Ast.ident Ast.pos list) = Obj.magic ids in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.declaracao) = 
# 78 "sintatico.mly"
 (Global (List.map (fun id -> DecGlobal(id,t)) ids))
# 1230 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = ids;
            MenhirLib.EngineTypes.startp = _startpos_ids_;
            MenhirLib.EngineTypes.endp = _endpos_ids_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = t;
              MenhirLib.EngineTypes.startp = _startpos_t_;
              MenhirLib.EngineTypes.endp = _endpos_t_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 20 "sintatico.mly"
        (Lexing.position)
# 1261 "sintatico.ml"
        ) = Obj.magic _3 in
        let ids : (Ast.ident Ast.pos list) = Obj.magic ids in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos__3_ in
        let _v : (Ast.declara_variavel list) = 
# 82 "sintatico.mly"
 (List.map(fun id-> DecVar (id,t)) ids)
# 1271 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (Sast.expressao Ast.declaracao) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Sast.expressao Ast.declaracao) = 
# 73 "sintatico.mly"
                           ( v )
# 1296 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = f;
          MenhirLib.EngineTypes.startp = _startpos_f_;
          MenhirLib.EngineTypes.endp = _endpos_f_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let f : (Sast.expressao Ast.declaracao) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sast.expressao Ast.declaracao) = 
# 74 "sintatico.mly"
              (f)
# 1321 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Sast.expressao) = 
# 131 "sintatico.mly"
             ( ExpVar v )
# 1346 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let i : (
# 9 "sintatico.mly"
        (int * Lexing.position)
# 1367 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) = 
# 132 "sintatico.mly"
            ( ExpInt i )
# 1375 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = f;
          MenhirLib.EngineTypes.startp = _startpos_f_;
          MenhirLib.EngineTypes.endp = _endpos_f_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let f : (
# 10 "sintatico.mly"
        (float * Lexing.position)
# 1396 "sintatico.ml"
        ) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sast.expressao) = 
# 133 "sintatico.mly"
              ( ExpFloat f )
# 1404 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (
# 12 "sintatico.mly"
        (char * Lexing.position)
# 1425 "sintatico.ml"
        ) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao) = 
# 134 "sintatico.mly"
             (ExpChar c)
# 1433 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let s : (
# 11 "sintatico.mly"
        (string * Lexing.position)
# 1454 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sast.expressao) = 
# 135 "sintatico.mly"
               ( ExpString s )
# 1462 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 29 "sintatico.mly"
        (Lexing.position)
# 1494 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 143 "sintatico.mly"
               ( (Mais, pos) )
# 1505 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 1511 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 30 "sintatico.mly"
        (Lexing.position)
# 1543 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 144 "sintatico.mly"
                ( (Menos, pos) )
# 1554 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 1560 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 31 "sintatico.mly"
        (Lexing.position)
# 1592 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 145 "sintatico.mly"
                     ( (Mult, pos) )
# 1603 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 1609 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 32 "sintatico.mly"
        (Lexing.position)
# 1641 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 146 "sintatico.mly"
                 ( (Div, pos) )
# 1652 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 1658 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 45 "sintatico.mly"
        (Lexing.position)
# 1690 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 147 "sintatico.mly"
                ( (Menor, pos) )
# 1701 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 1707 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 46 "sintatico.mly"
        (Lexing.position)
# 1739 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 148 "sintatico.mly"
                ( (Igual, pos) )
# 1750 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 1756 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 47 "sintatico.mly"
        (Lexing.position)
# 1788 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 149 "sintatico.mly"
                    ( (Difer, pos) )
# 1799 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 1805 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 44 "sintatico.mly"
        (Lexing.position)
# 1837 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 150 "sintatico.mly"
                ( (Maior, pos) )
# 1848 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 1854 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 51 "sintatico.mly"
        (Lexing.position)
# 1886 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 151 "sintatico.mly"
            ( (AND, pos) )
# 1897 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 1903 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 52 "sintatico.mly"
        (Lexing.position)
# 1935 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 152 "sintatico.mly"
             ( (Ou, pos) )
# 1946 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 1952 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 50 "sintatico.mly"
        (Lexing.position)
# 1984 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 153 "sintatico.mly"
              ( (Not, pos) )
# 1995 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 2001 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 48 "sintatico.mly"
        (Lexing.position)
# 2033 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 154 "sintatico.mly"
                     ( (Maiorigual, pos))
# 2044 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 2050 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 49 "sintatico.mly"
        (Lexing.position)
# 2082 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 155 "sintatico.mly"
                     ( (Menorigual, pos))
# 2093 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 2099 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = ea;
          MenhirLib.EngineTypes.startp = _startpos_ea_;
          MenhirLib.EngineTypes.endp = _endpos_ea_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ee;
              MenhirLib.EngineTypes.startp = _startpos_ee_;
              MenhirLib.EngineTypes.endp = _endpos_ee_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let ea : (Sast.expressao) = Obj.magic ea in
        let pos0 : (
# 33 "sintatico.mly"
        (Lexing.position)
# 2131 "sintatico.ml"
        ) = Obj.magic pos0 in
        let ee : (Sast.expressao) = Obj.magic ee in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ee_ in
        let _endpos = _endpos_ea_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 156 "sintatico.mly"
              ((Mod, pos))
# 2142 "sintatico.ml"
          
        in
        
# 136 "sintatico.mly"
                                     ( ExpOp (op, ee, ea) )
# 2148 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 16 "sintatico.mly"
        (Lexing.position)
# 2179 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 15 "sintatico.mly"
        (Lexing.position)
# 2185 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao) = 
# 137 "sintatico.mly"
                         ( e )
# 2193 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao) = 
# 138 "sintatico.mly"
            (c)
# 2218 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _9;
          MenhirLib.EngineTypes.startp = _startpos__9_;
          MenhirLib.EngineTypes.endp = _endpos__9_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = vlocais;
              MenhirLib.EngineTypes.startp = _startpos_vlocais_;
              MenhirLib.EngineTypes.endp = _endpos_vlocais_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _6;
                MenhirLib.EngineTypes.startp = _startpos__6_;
                MenhirLib.EngineTypes.endp = _endpos__6_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _5;
                  MenhirLib.EngineTypes.startp = _startpos__5_;
                  MenhirLib.EngineTypes.endp = _endpos__5_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = xs0;
                    MenhirLib.EngineTypes.startp = _startpos_xs0_;
                    MenhirLib.EngineTypes.endp = _endpos_xs0_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _3;
                      MenhirLib.EngineTypes.startp = _startpos__3_;
                      MenhirLib.EngineTypes.endp = _endpos__3_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = nome;
                        MenhirLib.EngineTypes.startp = _startpos_nome_;
                        MenhirLib.EngineTypes.endp = _endpos_nome_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.state = _menhir_s;
                          MenhirLib.EngineTypes.semv = t;
                          MenhirLib.EngineTypes.startp = _startpos_t_;
                          MenhirLib.EngineTypes.endp = _endpos_t_;
                          MenhirLib.EngineTypes.next = _menhir_stack;
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _9 : (
# 18 "sintatico.mly"
        (Lexing.position)
# 2279 "sintatico.ml"
        ) = Obj.magic _9 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let vlocais : (Ast.declara_variavel list list) = Obj.magic vlocais in
        let _6 : (
# 17 "sintatico.mly"
        (Lexing.position)
# 2286 "sintatico.ml"
        ) = Obj.magic _6 in
        let _5 : (
# 16 "sintatico.mly"
        (Lexing.position)
# 2291 "sintatico.ml"
        ) = Obj.magic _5 in
        let xs0 : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic xs0 in
        let _3 : (
# 15 "sintatico.mly"
        (Lexing.position)
# 2297 "sintatico.ml"
        ) = Obj.magic _3 in
        let nome : (
# 13 "sintatico.mly"
        (string * Lexing.position)
# 2302 "sintatico.ml"
        ) = Obj.magic nome in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos__9_ in
        let _v : (Sast.expressao Ast.declaracao) = let args =
          let xs = xs0 in
          
# 206 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 2313 "sintatico.ml"
          
        in
        
# 89 "sintatico.mly"
 (Funcao{nome=nome; tipoRetorno=t; args=args; vlocais= List.flatten vlocais; cmds=cs})
# 2319 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.comandos) = 
# 185 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2337 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.comandos) = Obj.magic xs in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 187 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2368 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.declara_variavel list list) = 
# 185 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2386 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.declara_variavel list list) = Obj.magic xs in
        let x : (Ast.declara_variavel list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.declara_variavel list list) = 
# 187 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2417 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.expressoes) = 
# 128 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2435 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.expressoes) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 130 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x )
# 2460 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 128 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2478 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 130 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x )
# 2503 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Ast.biblioteca) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.bibliotecas) = 
# 195 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2528 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.bibliotecas) = Obj.magic xs in
        let x : (Ast.biblioteca) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.bibliotecas) = 
# 197 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2559 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 195 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2584 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.comandos) = Obj.magic xs in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 197 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2615 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.declaracao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.declaracoes) = 
# 195 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2640 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.declaracoes) = Obj.magic xs in
        let x : (Sast.expressao Ast.declaracao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.declaracoes) = 
# 197 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2671 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.comandos option) = 
# 100 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( None )
# 2689 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _40;
          MenhirLib.EngineTypes.startp = _startpos__40_;
          MenhirLib.EngineTypes.endp = _endpos__40_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs0;
            MenhirLib.EngineTypes.startp = _startpos_cs0_;
            MenhirLib.EngineTypes.endp = _endpos_cs0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _20;
              MenhirLib.EngineTypes.startp = _startpos__20_;
              MenhirLib.EngineTypes.endp = _endpos__20_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = _10;
                MenhirLib.EngineTypes.startp = _startpos__10_;
                MenhirLib.EngineTypes.endp = _endpos__10_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _40 : (
# 18 "sintatico.mly"
        (Lexing.position)
# 2725 "sintatico.ml"
        ) = Obj.magic _40 in
        let cs0 : (Sast.expressao Ast.comandos) = Obj.magic cs0 in
        let _20 : (
# 17 "sintatico.mly"
        (Lexing.position)
# 2731 "sintatico.ml"
        ) = Obj.magic _20 in
        let _10 : (
# 36 "sintatico.mly"
        (Lexing.position)
# 2736 "sintatico.ml"
        ) = Obj.magic _10 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__10_ in
        let _endpos = _endpos__40_ in
        let _v : (Sast.expressao Ast.comandos option) = let x =
          let _4 = _40 in
          let cs = cs0 in
          let _2 = _20 in
          let _1 = _10 in
          
# 113 "sintatico.mly"
                                             (cs)
# 2749 "sintatico.ml"
          
        in
        
# 102 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( Some x )
# 2755 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = tip;
            MenhirLib.EngineTypes.startp = _startpos_tip_;
            MenhirLib.EngineTypes.endp = _endpos_tip_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let i : (
# 13 "sintatico.mly"
        (string * Lexing.position)
# 2781 "sintatico.ml"
        ) = Obj.magic i in
        let tip : (Ast.tipo) = Obj.magic tip in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_tip_ in
        let _endpos = _endpos_i_ in
        let _v : (Ast.ident Ast.pos * Ast.tipo) = 
# 91 "sintatico.mly"
                          ( (i, tip) )
# 2790 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = f;
            MenhirLib.EngineTypes.startp = _startpos_f_;
            MenhirLib.EngineTypes.endp = _endpos_f_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = bs;
              MenhirLib.EngineTypes.startp = _startpos_bs_;
              MenhirLib.EngineTypes.endp = _endpos_bs_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let f : (Sast.expressao Ast.declaracoes) = Obj.magic f in
        let bs : (Ast.bibliotecas) = Obj.magic bs in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_bs_ in
        let _endpos = _endpos__3_ in
        let _v : (
# 65 "sintatico.mly"
        (Sast.expressao Ast.programa)
# 2827 "sintatico.ml"
        ) = 
# 69 "sintatico.mly"
                                                (Programa(bs,f))
# 2831 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 13 "sintatico.mly"
        (string * Lexing.position)
# 2852 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.ident Ast.pos list) = 
# 215 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2860 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Ast.ident Ast.pos list) = Obj.magic xs in
        let _2 : (
# 19 "sintatico.mly"
        (Lexing.position)
# 2892 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (
# 13 "sintatico.mly"
        (string * Lexing.position)
# 2897 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.ident Ast.pos list) = 
# 217 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2905 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c0;
          MenhirLib.EngineTypes.startp = _startpos_c0_;
          MenhirLib.EngineTypes.endp = _endpos_c0_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c0 : (Sast.expressao Ast.comando) = Obj.magic c0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c0_ in
        let _endpos = _endpos_c0_ in
        let _v : (Sast.expressao Ast.comando list) = let x =
          let c = c0 in
          
# 117 "sintatico.mly"
                                                                                                                       ( c )
# 2932 "sintatico.ml"
          
        in
        
# 215 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2938 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = c0;
              MenhirLib.EngineTypes.startp = _startpos_c0_;
              MenhirLib.EngineTypes.endp = _endpos_c0_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.comando list) = Obj.magic xs in
        let _2 : (
# 19 "sintatico.mly"
        (Lexing.position)
# 2970 "sintatico.ml"
        ) = Obj.magic _2 in
        let c0 : (Sast.expressao Ast.comando) = Obj.magic c0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c0_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comando list) = let x =
          let c = c0 in
          
# 117 "sintatico.mly"
                                                                                                                       ( c )
# 2981 "sintatico.ml"
          
        in
        
# 217 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 2987 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 215 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 3012 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 19 "sintatico.mly"
        (Lexing.position)
# 3044 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 217 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 3053 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Ast.ident Ast.pos * Ast.tipo) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 215 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 3078 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic xs in
        let _2 : (
# 19 "sintatico.mly"
        (Lexing.position)
# 3110 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Ast.ident Ast.pos * Ast.tipo) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 217 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 3119 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.tipo) = 
# 93 "sintatico.mly"
                      ( t )
# 3144 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 22 "sintatico.mly"
        (Lexing.position)
# 3165 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 95 "sintatico.mly"
                       ( TipoInt )
# 3173 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 23 "sintatico.mly"
        (Lexing.position)
# 3194 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 96 "sintatico.mly"
         ( TipoFloat )
# 3202 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 24 "sintatico.mly"
        (Lexing.position)
# 3223 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 97 "sintatico.mly"
        ( TipoChar )
# 3231 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 26 "sintatico.mly"
        (Lexing.position)
# 3252 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 98 "sintatico.mly"
        ( TipoVoid )
# 3260 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 13 "sintatico.mly"
        (string * Lexing.position)
# 3281 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 158 "sintatico.mly"
                 ( VarSimples x )
# 3289 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
    |]
  
  and trace =
    None
  
end

module MenhirInterpreter = struct
  
  module ET = MenhirLib.TableInterpreter.MakeEngineTable (Tables)
  
  module TI = MenhirLib.Engine.Make (ET)
  
  include TI
  
end

let programa =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry 0 lexer lexbuf) : (
# 65 "sintatico.mly"
        (Sast.expressao Ast.programa)
# 3320 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 65 "sintatico.mly"
        (Sast.expressao Ast.programa)
# 3330 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 219 "/Users/lucascesarnf/.opam/system/lib/menhir/standard.mly"
  


# 3339 "sintatico.ml"
