
(* This file was auto-generated based on "sintatico.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
  "Estado 0: Voceh nao tem um programa definido\n"
   | 1 ->
   "Estado 1: Erro nos includes\n"
   | 141 ->
   "Estado 141: Falta tipagem de funcao\n"
   | 10 ->
   "Estado 10: Erro nos parametros\n"
   | 11 ->
   "Estado 11: Erro nos parametros\n"
   | 12 ->
   "Estado 12: Erro nos parametros\n"
   | 13 ->
   "Estado 13: Erro em variaveis\n"
   | 138 ->
   "Estado 138: problema com declaracoes\n"
   | 15 ->
   "Estado 15: Erro nos parametros\n"
   | 16 ->
   "Estado 16: Erro tipagem do parametro\n"
   | 19 ->
   "Estado 19: Erro nos parametros\n"
   | 20 ->
   "Estado 20: Erro nos parametros\n"
   | 23 ->
   "Estado 23: Erro nos parametros\n"
   | 29 ->
   "Estado 29: Erro na expressao (talvez falta um '(' em seu while)\n"
   | 75 ->
   "Estado 75: Falta um ( ou { em seu while\n"
   | 76 ->
   "Estado 76: Erro em algum comando interno do while\n"
   | 112 ->
   "Estado 112: Erro em algum comando\n"
   | 25 ->
   "Estado 25: Erro em declaracao\n"
   | 131 ->
   "Estado 131: Erro em declaracao\n"
   | 24 ->
   "Estado 24: Erro nos comandos da funcao\n"
   | 77 ->
   "Estado 77: Erro no return\n"
   | 129 ->
   "Estado 129: Comando nao fechado (falta })\n"
   | 79 ->
   "Estado 79: Erro em return\n"
   | 81 ->
   "Estado 81: Faltou ( no print\n"
   | 82 ->
   "Estado 82: Faltou ) ou ( em print\n"
   | 92 ->
   "Estado 92: Erro em expressao\n"
   | 39 ->
   "Estado 39: Falta uma expressao apos comando OR\n"
   | 40 ->
   "Estado 40: Erro em expressao\n"
   | 41 ->
   "Estado 41: Falta uma expressao apos comando NOT\n"
   | 44 ->
   "Estado 44: Falta uma expressao apos Multiplicacao\n"
   | 45 ->
   "Estado 45: Erro em expressao\n"
   | 46 ->
   "Estado 46: Faltou uma expressao em MOD\n"
   | 47 ->
   "Estado 47: Erro em expressao\n"
   | 48 ->
   "Estado 48: Falto uma expressao em subtracao\n"
   | 49 ->
   "Estado 49: Erro em expressao\n"
   | 50 ->
   "Estado 50: Faltou uma expressao em <=\n"
   | 51 ->
   "Estado 51: Erro em expressao\n"
   | 56 ->
   "Estado 56: Faltou uma expressao em <\n"
   | 57 ->
   "Estado 57: Erro em expressao\n"
   | 58 ->
   "Estado 58: Falta expressao em Soma\n"
   | 59 ->
   "Estado 59: Erro em expressao\n"
   | 54 ->
   "Estado 54: Falta expressao em >=\n"
   | 55 ->
   "Estado 55: Erro em expressao\n"
   | 60 ->
   "Estado 60: Faltou expressao em >\n"
   | 61 ->
   "Estado 61: Erro em expressao\n"
   | 62 ->
   "Estado 62: Faltou expressao em ==\n"
   | 63 ->
   "Estado 63: Erro em expressao\n"
   | 64 ->
   "Estado 64: Faltou expressao em AND\n"
   | 65 ->
   "Estado 65: Erro em expressao\n"
   | 52 ->
   "Estado 52: Faltou expressao na divisao\n"
   | 53 ->
   "Estado 53: Erro em expressao\n"
   | 66 ->
   "Estado 66: Faltou expressao em !=\n"
   | 67 ->
   "Estado 67: Erro em expressao\n"
   | 93 ->
   "Estado 93: Faltou expressao a ser atribuida\n"
   | 94 ->
   "Estado 94: Erro em expressao\n"
   | 84 ->
   "Estado 84: Faltou ( ou ) em seu IF\n"
   | 85 ->
   "Estado 85: Falta { em seu if\n"
   | 86 ->
   "Estado 86: Erro em comando interno if\n"
   | 119 ->
   "Estado 119: Erro em Else\n"
   | 120 ->
   "Estado 120: Faltou { em else\n"
   | 121 ->
   "Estado 121: Erro em comando interno else\n"
   | 34 ->
    "Estado 34: Tipagem errada em atribuicao ou falta '='\n"
   | 35 ->
   "Estado 35: Erros em parametros da funcao\n"
   | 72 ->
   "Estado 72: Erro em expressao\n"
   | 73 ->
   "Estado 73: Erro em expressao\n"
   | 114 ->
   "Estado 114: Erro em chamada de funcao\n"
   | 87 ->
   "Estado 87: Faltou ( ou ) em gets\n"
   | 88 ->
   "Estado 88: faltou ; ou ( em gets\n"
   | 90 ->
   "Estado 90: Faltou ( ou ) em FOR\n"
   | 91 ->
   "Estado 91: Erros em atribuicao FOR\n"
   | 96 ->
   "Estado 96: Faltou ; em for\n"
   | 97 ->
   "Estado 97: Erro em expressao\n"
   | 98 ->
   "Estado 98: faltou ; em for\n"
   | 99 ->
   "Estado 99: Faltou Expressao em for\n"
   | 115 ->
   "Estado 115: Atribuicao com erros\n"
   | 116 ->
   "Estado 116: erro em atribuicao\n"
   | 101 ->
   "Estado 101: Falta { em for\n"
   | 102 ->
   "Estado 102: Erros em comandos internos FOR\n"
   | 36 ->
   "Estado 36: Erro em expressao\n"
   | 38 ->
   "Estado 38: Falta )\n"
   | _ ->
   raise Not_found