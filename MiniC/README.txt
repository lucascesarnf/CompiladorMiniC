//to fonfig .ocamlinit

ls -a

emacs .ocamlinit

//To use menhir

ocamlbuild -use-menhir main.byte

//To open OCaml
rlwrap ocaml



//With Errors:

rm -rf *.msg *.conflicts *.automaton erroSint.ml _build main.byte sintaticoTest.byte

eval `opam config env`

menhir -v --list-errors sintatico.mly > sintatico.msg

menhir sintatico.mly --compile-errors sintatico.msg > erroSint.ml

ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib sintaticoTest.byte