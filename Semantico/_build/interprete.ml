 module Amb = AmbInterp
 module A = Ast
 module S = Sast
 module T = Tast


 exception Valor_de_retorno of T.expressao

 let obtem_nome_tipo_var exp = let open T in
 match exp with
 | ExpVar (v,tipo) ->
 (match v with
 | A.VarSimples (nome,_) -> (nome,tipo)
 (*| _ -> failwith "obtem_nome_tipo_var: nao implementado"*)
 )
 | _ -> failwith "obtem_nome_tipo_var: nao eh variavel!!!"

 let pega_int exp =
 match exp with
 | T.ExpInt (i,_) -> i
 | _ -> failwith "pega_int: nao eh inteiro"

 let pega_string exp =
 match exp with
 | T.ExpString (s,_) -> s
 | _ -> failwith "pega_string: nao eh string"

 let pega_char exp =
 match exp with
 | T.ExpChar (c,_) -> c
 | _ -> failwith "pega_char: nao eh char"

 let pega_float exp =
 match exp with
 | T.ExpFloat (f,_) -> f
 | _ -> failwith "pega_float: nao eh float"

 let converte_bool exp =
 match exp with
  | true -> 1
  | false -> 0
 (*| _ -> failwith "converte_bool: erro nao esperado"*)

 let volta_bool exp =
 match exp with
 | 0 -> false
 | _ -> true

 type classe_op = Aritmetico | Relacional | Logico

 let classifica op =
 let open A in
 match op with
 Ou
 | AND -> Logico
 | Menor
 | Maior
 | Igual
 | Difer
 | Maiorigual
 | Menorigual -> Relacional
 | Mais
 | Menos
 | Mult
 | Div
 | Mod -> Aritmetico

 let rec interpreta_exp amb exp =
 let open A in
 let open T in
 match exp with
 | ExpVoid
 | ExpInt _
 | ExpString _
 | ExpChar _
 | ExpFloat _ -> exp
 | ExpVar _ ->
 let (id,tipo) = obtem_nome_tipo_var exp in
 (* Tenta encontrar o valor da variável no escopo local, se não *)
 (* encontrar, tenta novamente no escopo que engloba o atual. Prossegue-se *)
 (* assim até encontrar o valor em algum escopo englobante ou até *)
 (* encontrar o escopo global. Se em algum lugar for encontrado, *)
 (* devolve-se o valor. Em caso contrário, devolve uma exceção *)
 (match (Amb.busca amb id) with
 | Amb.EntVar (tipo, v) ->
 (match v with
 | None -> failwith ("variável nao inicializada: " ^ id)
 | Some valor -> valor
 )
 | _ -> failwith "interpreta_exp: expvar"
 )
 | ExpOp ((op, top), (esq, tesq), (dir, tdir)) ->
 let vesq = interpreta_exp amb esq
  and vdir = interpreta_exp amb dir in
 let interpreta_aritmetico () =
 ( match tesq with
 | TipoInt ->
 (match op with
 | Mais -> ExpInt (pega_int vesq + pega_int vdir, top)
 | Menos -> ExpInt (pega_int vesq - pega_int vdir, top)
 | Mult -> ExpInt (pega_int vesq * pega_int vdir, top)
 | Div -> ExpInt (pega_int vesq / pega_int vdir, top)
 | Mod -> ExpInt (pega_int vesq mod pega_int vdir, top)
 | _ -> failwith "interpreta_aritmetico"
 )
 | TipoChar ->
 (match op with
 | Mais -> ExpChar (char_of_int (int_of_char (pega_char vesq) + int_of_char (pega_char vdir)), top)
 | Menos -> ExpChar (char_of_int (int_of_char (pega_char vesq) - int_of_char (pega_char vdir)), top)
 | Mult -> ExpChar (char_of_int (int_of_char (pega_char vesq) * int_of_char (pega_char vdir)), top)
 | Div -> ExpChar (char_of_int (int_of_char (pega_char vesq) / int_of_char (pega_char vdir)), top)
 | Mod -> ExpChar (char_of_int (int_of_char (pega_char vesq) mod int_of_char (pega_char vdir)), top)
 | _ -> failwith "interpreta_aritmetico"
 )
 | TipoFloat ->
 (match op with
 | Mais -> ExpFloat (pega_float vesq +. pega_float vdir, top)
 | Menos -> ExpFloat (pega_float vesq -. pega_float vdir, top)
 | Mult -> ExpFloat (pega_float vesq *. pega_float vdir, top)
 | Div -> ExpFloat (pega_float vesq /. pega_float vdir, top)
 | Mod -> ExpFloat (mod_float (pega_float vesq) ( pega_float vdir), top)
 | _ -> failwith "interpreta_aritmetico"
 )
 | _ -> failwith "interpreta_aritmetico"
 )

 and interpreta_relacional () =
 ( match tesq with
 | TipoInt ->
 (match op with
 | Menor -> ExpInt (converte_bool (pega_int vesq < pega_int vdir), top)
 | Maior -> ExpInt (converte_bool (pega_int vesq > pega_int vdir), top)
 | Igual -> ExpInt (converte_bool (pega_int vesq == pega_int vdir), top)
 | Difer -> ExpInt (converte_bool (pega_int vesq != pega_int vdir), top)
 | Maiorigual -> ExpInt (converte_bool (pega_int vesq >= pega_int vdir), top)
 | Menorigual -> ExpInt (converte_bool (pega_int vesq <= pega_int vdir), top)
 | _ -> failwith "interpreta_relacional"
 )
 | TipoFloat ->
 (match op with
 | Menor -> ExpInt (converte_bool (pega_float vesq < pega_float vdir), top)
 | Maior -> ExpInt (converte_bool (pega_float vesq > pega_float vdir), top)
 | Igual -> ExpInt (converte_bool (pega_float vesq == pega_float vdir), top)
 | Difer -> ExpInt (converte_bool (pega_float vesq != pega_float vdir), top)
 | Maiorigual -> ExpInt (converte_bool (pega_float vesq >= pega_float vdir), top)
 | Menorigual -> ExpInt (converte_bool (pega_float vesq <= pega_float vdir), top)
 | _ -> failwith "interpreta_relacional"
 )
 | TipoChar ->
 (match op with
 | Menor -> ExpInt (converte_bool (pega_char vesq < pega_char vdir), top)
 | Maior -> ExpInt (converte_bool (pega_char vesq > pega_char vdir), top)
 | Igual -> ExpInt (converte_bool (pega_char vesq == pega_char vdir), top)
 | Difer -> ExpInt (converte_bool (pega_char vesq != pega_char vdir), top)
 | Maiorigual -> ExpInt (converte_bool (pega_string vesq >= pega_string vdir), top)
 | Menorigual -> ExpInt (converte_bool (pega_string vesq <= pega_string vdir), top)
 | _ -> failwith "interpreta_relacional"
 )
 | _ -> failwith "interpreta_relacional"
 )

 and interpreta_logico () =
 ( match tesq with
 | TipoInt ->
 ( match op with
 | Ou -> ExpInt (converte_bool (volta_bool (pega_int vesq) || volta_bool (pega_int vdir)), top) 
 | AND -> ExpInt (converte_bool (volta_bool (pega_int vesq) && volta_bool (pega_int vdir)), top)
 | _ -> failwith "interpreta_logico"
 )
 | _ -> failwith "interpreta_logico"
 )
 in
 let valor = ( match (classifica op) with
 Aritmetico -> interpreta_aritmetico ()
 | Relacional -> interpreta_relacional ()
 | Logico -> interpreta_logico ()
 )
 in
 valor
 | ExpChamada (id, args, tipo) ->
 let open Amb in
  ( match (Amb.busca amb id) with
 | Amb.EntFun {tipo_fn; formais; locais; corpo} ->
 (* Interpreta cada um dos argumentos *)
 let vargs = List.map (interpreta_exp amb) args in
 (* Associa os argumentos aos parâmetros formais *)
 let vformais = List.map2 (fun (n,t) v -> (n, t, Some v)) formais vargs
 in interpreta_fun amb id vformais locais corpo
 | _ -> failwith "interpreta_exp: expchamada"
 )

 and interpreta_fun amb fn_nome fn_formais fn_locais fn_corpo = (* <------------------------*)
 let open A in
 (* Estende o ambiente global, adicionando um ambiente local *)
 let ambfn = Amb.novo_escopo amb in
 let insere_local d =
 match d with
 (DecVar (v,t)) -> Amb.insere_local ambfn (fst v) t None
 in
 (* Associa os argumentos aos parâmetros e insere no novo ambiente *)
 let insere_parametro (n,t,v) = Amb.insere_param ambfn n t v in
 let _ = List.iter insere_parametro fn_formais in
 (* Insere as variáveis locais no novo ambiente *)
 let _ = List.iter insere_local fn_locais in
 (* Interpreta cada comando presente no corpo da função usando o novo
 ambiente *)
 try
 let _ = List.iter (interpreta_cmd ambfn) fn_corpo in T.ExpVoid
 with
 Valor_de_retorno expret -> expret

 and interpreta_cmd amb cmd =
 let open A in
 let open T in
 match cmd with
 CmdRet exp ->
 (* Levantar uma exceção foi necessária pois, pela semântica do comando de
 retorno, sempre que ele for encontrado em uma função, a computação
deve parar retornando o valor indicado, sem realizar os demais comandos.
 *)
 ( match exp with
 (* Se a função não retornar nada, então retorne ExpVoid *)
 None -> raise (Valor_de_retorno ExpVoid)
 | Some e ->
 (* Avalia a expressão e retorne o resultado *)
 let e1 = interpreta_exp amb e in
 raise (Valor_de_retorno e1)
 )

 | CmdSe (teste, entao, senao) ->
 let teste1 = interpreta_exp amb teste in
 (match teste1 with
 ExpInt (1,_) ->
 (* Interpreta cada comando do bloco 'então' *)
 List.iter (interpreta_cmd amb) entao
  | _ ->
 (* Interpreta cada comando do bloco 'senão', se houver *)
 ( match senao with
 None -> ()
 | Some bloco -> List.iter (interpreta_cmd amb) bloco
 )
 )

 | CmdWhile (teste, entao) ->
 let rec iteracao amb teste entao =
 let teste1 = interpreta_exp amb teste in
 match teste1 with
 ExpInt (1,_) -> let _ = List.iter (interpreta_cmd amb) entao in
 iteracao amb teste entao
 | _ -> ()
 in
 iteracao amb teste entao
 | CmdFor (teste, e1::entao) ->
 let resto = [] in
 (*let _ = interpreta_cmd amb e1::resto in *)
 let rec iteracao amb teste entao =
 let teste1 = interpreta_exp amb teste in
 match teste1 with
 ExpInt (1,_) -> let _ = List.iter (interpreta_cmd amb) entao in
 iteracao amb teste entao
 | _ -> ()
 in
 iteracao amb teste entao

 | CmdAtrib (elem, exp) ->
 (* Interpreta o lado direito da atribuição *)
 let exp = interpreta_exp amb exp
 (* Faz o mesmo para o lado esquerdo *)
 and (elem1, tipo) = obtem_nome_tipo_var elem in
 Amb.atualiza_var amb elem1 tipo (Some exp)

 | CmdFun exp -> ignore(interpreta_exp amb exp)

 | CmdEntrada exps ->
 (* Obtem os nomes e os tipos de cada um dos argumentos *)
 let nts = obtem_nome_tipo_var exps in
 let leia_var (nome,tipo) =
 let valor =
 ( match tipo with
 | A.TipoInt -> T.ExpInt (read_int (), tipo)
 | A.TipoChar -> T.ExpChar (char_of_int (read_int()), tipo)
 | A.TipoFloat -> T.ExpFloat (read_float (), tipo)
 | A.TipoString -> T.ExpString (read_line (), tipo)
 | _ -> failwith "leia_var: nao implementado"
 )
 in Amb.atualiza_var amb nome tipo (Some valor)
 in
 (* Lê o valor para cada argumento e atualiza o ambiente *)
 leia_var nts

 | CmdSaida exps ->
 (* Interpreta cada argumento da função 'saida' *)
 let exps = interpreta_exp amb exps in
 let imprima exp =
 (match exp with
 | T.ExpInt (n,_) -> let _ = print_int n in print_string ""
 | T.ExpString (s,_) -> let _ = print_string s in print_string ""
 | T.ExpChar (c,_) -> let _ = print_char c in print_string ""
 | T.ExpFloat (f,_) -> let _ = print_float f in print_string ""
 | _ -> failwith "imprima: nao implementado"
 )
 in
 let _ = imprima exps in
 print_newline ()

 and interpreta_main amb fn_nome fn_formais fn_locais fn_corpo = (* <------------------------*)
 let open A in
 (* Estende o ambiente global, adicionando um ambiente local *)
 let ambfn = Amb.novo_escopo amb in
 let insere_local d =
 match d with
 (DecVar (v,t)) -> Amb.insere_local ambfn (fst v) t None
 in
 let _ = List.iter insere_local fn_locais in
 (* Interpreta cada comando presente no corpo da função usando o novo ambiente *)
 let resultado = List.iter (interpreta_cmd ambfn) fn_corpo
 in
 resultado

 let debug corpo =
 Printf.sprintf "aaaa"

 let busca_main amb =
 let open Amb in
 ( match (Amb.busca amb "main") with
 | Amb.EntFun {tipo_fn; formais; locais; corpo} -> failwith "main"
 (* | _ -> failwith "interpreta_main!"*)
 )

 let insere_declaracao_var amb dec =
 match dec with
 A.DecGlobal (nome, tipo) -> Amb.insere_local amb (fst nome) tipo None

 let insere_declaracao amb dec =
 let open A in
 match dec with
 A.Funcao {nome; tipoRetorno; args; vlocais; cmds} ->
 let nome = fst nome in
 let formais = List.map (fun (n,t) -> ((fst n), t)) args in
 Amb.insere_fun amb nome formais vlocais tipoRetorno cmds
 | A.Global decs_globais ->
 List.iter (insere_declaracao_var amb) decs_globais

 let busca_main amb =
 let open Amb in
 ( match (Amb.busca amb "main") with
 	 | Amb.EntFun {tipo_fn; formais; locais; corpo} ->
 let resultado = interpreta_main amb "main" formais locais corpo in
 resultado
 | _ -> failwith "interpreta_main! "
 )


 (* Lista de cabeçalhos das funções pré definidas *)
 let fn_predefs = let open A in [
 ("entrada", [("x", TipoInt); ("y", TipoInt)], TipoVoid, []);
 ("saida", [("x", TipoInt); ("y", TipoInt)], TipoVoid, []);
 ]

 (* insere as funções pré definidas no ambiente global *)
 let declara_predefinidas amb =
 List.iter (fun (n,ps,tr,c) -> Amb.insere_fun amb n ps [] tr c) fn_predefs

 let interprete tast =
 (* cria ambiente global inicialmente vazio *)
 let amb_global = Amb.novo_amb [] in
 let _ = declara_predefinidas amb_global in
 let (A.Programa (bibliotecas, declaracoes)) = tast in
 let _ = List.iter (insere_declaracao amb_global) declaracoes in
 let resultado = busca_main amb_global in
 resultado