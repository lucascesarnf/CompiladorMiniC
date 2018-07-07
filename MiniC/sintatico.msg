programa: Include ECom 
##
## Ends in an error in state: 3.
##
## programa -> includes . funcoes EOF [ # ]
##
## The known suffix of the stack is as follows:
## includes 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TFloat While 
##
## Ends in an error in state: 166.
##
## funcao -> tipo . Ident AParen argumentos FParen AChave comandos Return expressao PTVirg FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## tipo 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave GetChar FChave 
##
## Ends in an error in state: 172.
##
## funcao -> tipo Ident AParen argumentos FParen AChave comandos . Return expressao PTVirg FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## tipo Ident AParen argumentos FParen AChave comandos 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 121, spurious reduction of production comandos -> 
## In state 134, spurious reduction of production comandos -> comando comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return AParen STRING While 
##
## Ends in an error in state: 30.
##
## expr60 -> AParen expressao . FParen [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
## expressao -> expressao . And expr10 [ Or FParen And ]
## expressao -> expressao . Or expr10 [ Or FParen And ]
##
## The known suffix of the stack is as follows:
## AParen expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return AParen While 
##
## Ends in an error in state: 29.
##
## expr60 -> AParen . expressao FParen [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## AParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return Ident AParen While 
##
## Ends in an error in state: 24.
##
## chama_func -> Ident AParen . args FParen [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## Ident AParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return Ident True 
##
## Ends in an error in state: 23.
##
## chama_func -> Ident . AParen args FParen [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
## expr60 -> Ident . [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## Ident 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return Not While 
##
## Ends in an error in state: 22.
##
## expr50 -> Not . expr50 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## Not 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING And While 
##
## Ends in an error in state: 60.
##
## expressao -> expressao And . expr10 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or If Ident GetChar For FParen FChave DoisP Break Apost And ]
##
## The known suffix of the stack is as follows:
## expressao And 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING Comp While 
##
## Ends in an error in state: 57.
##
## expr10 -> expr10 Comp . expr20 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr10 Comp 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING Dif While 
##
## Ends in an error in state: 55.
##
## expr10 -> expr10 Dif . expr20 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr10 Dif 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING Maior While 
##
## Ends in an error in state: 52.
##
## expr20 -> expr20 Maior . expr30 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr20 Maior 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING MaiorI While 
##
## Ends in an error in state: 50.
##
## expr20 -> expr20 MaiorI . expr30 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr20 MaiorI 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING Menor While 
##
## Ends in an error in state: 48.
##
## expr20 -> expr20 Menor . expr30 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr20 Menor 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING MenorI While 
##
## Ends in an error in state: 46.
##
## expr20 -> expr20 MenorI . expr30 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr20 MenorI 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING OpDiv While 
##
## Ends in an error in state: 38.
##
## expr40 -> expr40 OpDiv . expr50 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr40 OpDiv 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING OpMul While 
##
## Ends in an error in state: 35.
##
## expr40 -> expr40 OpMul . expr50 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr40 OpMul 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING OpSoma STRING True 
##
## Ends in an error in state: 44.
##
## expr30 -> expr30 OpSoma expr40 . [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
## expr40 -> expr40 . OpMul expr50 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
## expr40 -> expr40 . OpDiv expr50 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr30 OpSoma expr40 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING OpSoma While 
##
## Ends in an error in state: 43.
##
## expr30 -> expr30 OpSoma . expr40 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr30 OpSoma 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING OpSub STRING True 
##
## Ends in an error in state: 42.
##
## expr30 -> expr30 OpSub expr40 . [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
## expr40 -> expr40 . OpMul expr50 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
## expr40 -> expr40 . OpDiv expr50 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr30 OpSub expr40 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING OpSub While 
##
## Ends in an error in state: 41.
##
## expr30 -> expr30 OpSub . expr40 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr30 OpSub 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING Or While 
##
## Ends in an error in state: 31.
##
## expressao -> expressao Or . expr10 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or If Ident GetChar For FParen FChave DoisP Break Apost And ]
##
## The known suffix of the stack is as follows:
## expressao Or 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING PTVirg While 
##
## Ends in an error in state: 175.
##
## funcao -> tipo Ident AParen argumentos FParen AChave comandos Return expressao PTVirg . FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## tipo Ident AParen argumentos FParen AChave comandos Return expressao PTVirg 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING True 
##
## Ends in an error in state: 34.
##
## expr30 -> expr40 . [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
## expr40 -> expr40 . OpMul expr50 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
## expr40 -> expr40 . OpDiv expr50 [ While Virg TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or OpSub OpSoma OpMul OpDiv MenorI Menor MaiorI Maior If Ident GetChar For FParen FChave DoisP Dif Comp Break Apost And ]
##
## The known suffix of the stack is as follows:
## expr40 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return STRING While 
##
## Ends in an error in state: 174.
##
## expressao -> expressao . And expr10 [ PTVirg Or And ]
## expressao -> expressao . Or expr10 [ PTVirg Or And ]
## funcao -> tipo Ident AParen argumentos FParen AChave comandos Return expressao . PTVirg FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## tipo Ident AParen argumentos FParen AChave comandos Return expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Return While 
##
## Ends in an error in state: 173.
##
## funcao -> tipo Ident AParen argumentos FParen AChave comandos Return . expressao PTVirg FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## tipo Ident AParen argumentos FParen AChave comandos Return 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen AChave Virg 
##
## Ends in an error in state: 171.
##
## funcao -> tipo Ident AParen argumentos FParen AChave . comandos Return expressao PTVirg FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## tipo Ident AParen argumentos FParen AChave 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen FParen While 
##
## Ends in an error in state: 170.
##
## funcao -> tipo Ident AParen argumentos FParen . AChave comandos Return expressao PTVirg FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## tipo Ident AParen argumentos FParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident AParen While 
##
## Ends in an error in state: 168.
##
## funcao -> tipo Ident AParen . argumentos FParen AChave comandos Return expressao PTVirg FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## tipo Ident AParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Ident While 
##
## Ends in an error in state: 167.
##
## funcao -> tipo Ident . AParen argumentos FParen AChave comandos Return expressao PTVirg FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## tipo Ident 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave FChave While 
##
## Ends in an error in state: 179.
##
## funcoes -> funcao . funcoes [ EOF ]
##
## The known suffix of the stack is as follows:
## funcao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For AParen Ident Atrib BOOL PTVirg STRING PTVirg GetChar FParen AChave GetChar Break 
##
## Ends in an error in state: 119.
##
## cmd_for -> For AParen cmd_atrib PTVirg expressao PTVirg comando FParen AChave comandos . FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## For AParen cmd_atrib PTVirg expressao PTVirg comando FParen AChave comandos 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 121, spurious reduction of production comandos -> 
## In state 134, spurious reduction of production comandos -> comando comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For AParen Ident Atrib BOOL PTVirg STRING PTVirg GetChar FParen AChave Virg 
##
## Ends in an error in state: 118.
##
## cmd_for -> For AParen cmd_atrib PTVirg expressao PTVirg comando FParen AChave . comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## For AParen cmd_atrib PTVirg expressao PTVirg comando FParen AChave 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For AParen Ident Atrib BOOL PTVirg STRING PTVirg GetChar FParen While 
##
## Ends in an error in state: 117.
##
## cmd_for -> For AParen cmd_atrib PTVirg expressao PTVirg comando FParen . AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## For AParen cmd_atrib PTVirg expressao PTVirg comando FParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For AParen Ident Atrib BOOL PTVirg STRING PTVirg GetChar While 
##
## Ends in an error in state: 116.
##
## cmd_for -> For AParen cmd_atrib PTVirg expressao PTVirg comando . FParen AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## For AParen cmd_atrib PTVirg expressao PTVirg comando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For AParen Ident Atrib BOOL PTVirg STRING PTVirg Virg 
##
## Ends in an error in state: 110.
##
## cmd_for -> For AParen cmd_atrib PTVirg expressao PTVirg . comando FParen AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## For AParen cmd_atrib PTVirg expressao PTVirg 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For AParen Ident Atrib BOOL PTVirg STRING While 
##
## Ends in an error in state: 109.
##
## cmd_for -> For AParen cmd_atrib PTVirg expressao . PTVirg comando FParen AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
## expressao -> expressao . And expr10 [ PTVirg Or And ]
## expressao -> expressao . Or expr10 [ PTVirg Or And ]
##
## The known suffix of the stack is as follows:
## For AParen cmd_atrib PTVirg expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For AParen Ident Atrib BOOL PTVirg While 
##
## Ends in an error in state: 108.
##
## cmd_for -> For AParen cmd_atrib PTVirg . expressao PTVirg comando FParen AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## For AParen cmd_atrib PTVirg 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For AParen Ident Atrib BOOL While 
##
## Ends in an error in state: 107.
##
## cmd_for -> For AParen cmd_atrib . PTVirg expressao PTVirg comando FParen AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## For AParen cmd_atrib 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
## In state 102, spurious reduction of production cmd_atrib -> Ident Atrib expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For AParen Ident While 
##
## Ends in an error in state: 106.
##
## cmd_atrib -> Ident . Atrib expressao [ PTVirg ]
##
## The known suffix of the stack is as follows:
## Ident 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For AParen While 
##
## Ends in an error in state: 105.
##
## cmd_for -> For AParen . cmd_atrib PTVirg expressao PTVirg comando FParen AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## For AParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave For While 
##
## Ends in an error in state: 104.
##
## cmd_for -> For . AParen cmd_atrib PTVirg expressao PTVirg comando FParen AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## For 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave GetChar Break 
##
## Ends in an error in state: 163.
##
## funcao -> TInt Main AParen argumentos FParen AChave comandos . FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## TInt Main AParen argumentos FParen AChave comandos 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 121, spurious reduction of production comandos -> 
## In state 134, spurious reduction of production comandos -> comando comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave GetChar PTVirg Virg 
##
## Ends in an error in state: 122.
##
## comandos -> comando PTVirg . comandos [ Return FChave Break ]
##
## The known suffix of the stack is as follows:
## comando PTVirg 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave GetChar Virg 
##
## Ends in an error in state: 121.
##
## comandos -> comando . PTVirg comandos [ Return FChave Break ]
## comandos -> comando . comandos [ Return FChave Break ]
##
## The known suffix of the stack is as follows:
## comando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Ident Atrib STRING Virg 
##
## Ends in an error in state: 102.
##
## cmd_atrib -> Ident Atrib expressao . [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
## expressao -> expressao . And expr10 [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or If Ident GetChar For FParen FChave Break And ]
## expressao -> expressao . Or expr10 [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or If Ident GetChar For FParen FChave Break And ]
##
## The known suffix of the stack is as follows:
## Ident Atrib expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Ident Atrib While 
##
## Ends in an error in state: 101.
##
## cmd_atrib -> Ident Atrib . expressao [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Ident Atrib 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Ident While 
##
## Ends in an error in state: 99.
##
## cmd_atrib -> Ident . Atrib expressao [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
## cmd_incr -> Ident . Inc [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Ident 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave If AParen STRING FParen AChave FChave Else AChave GetChar Break 
##
## Ends in an error in state: 139.
##
## elsee -> Else AChave comandos . FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Else AChave comandos 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 121, spurious reduction of production comandos -> 
## In state 134, spurious reduction of production comandos -> comando comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave If AParen STRING FParen AChave FChave Else AChave Virg 
##
## Ends in an error in state: 138.
##
## elsee -> Else AChave . comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Else AChave 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave If AParen STRING FParen AChave FChave Else While 
##
## Ends in an error in state: 137.
##
## elsee -> Else . AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
## elsee -> Else . cmd_if [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Else 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave If AParen STRING FParen AChave FChave Virg 
##
## Ends in an error in state: 136.
##
## cmd_if -> If AParen expressao FParen AChave comandos FChave . elsee [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## If AParen expressao FParen AChave comandos FChave 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave If AParen STRING FParen AChave GetChar Break 
##
## Ends in an error in state: 135.
##
## cmd_if -> If AParen expressao FParen AChave comandos . FChave elsee [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## If AParen expressao FParen AChave comandos 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 121, spurious reduction of production comandos -> 
## In state 134, spurious reduction of production comandos -> comando comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave If AParen STRING FParen AChave Virg 
##
## Ends in an error in state: 98.
##
## cmd_if -> If AParen expressao FParen AChave . comandos FChave elsee [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## If AParen expressao FParen AChave 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave If AParen STRING FParen While 
##
## Ends in an error in state: 97.
##
## cmd_if -> If AParen expressao FParen . AChave comandos FChave elsee [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## If AParen expressao FParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave If AParen STRING While 
##
## Ends in an error in state: 96.
##
## cmd_if -> If AParen expressao . FParen AChave comandos FChave elsee [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
## expressao -> expressao . And expr10 [ Or FParen And ]
## expressao -> expressao . Or expr10 [ Or FParen And ]
##
## The known suffix of the stack is as follows:
## If AParen expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave If AParen While 
##
## Ends in an error in state: 95.
##
## cmd_if -> If AParen . expressao FParen AChave comandos FChave elsee [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## If AParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave If While 
##
## Ends in an error in state: 94.
##
## cmd_if -> If . AParen expressao FParen AChave comandos FChave elsee [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## If 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Printf AParen STRING Virg STRING While 
##
## Ends in an error in state: 65.
##
## expressao -> expressao . And expr10 [ Virg Or FParen And ]
## expressao -> expressao . Or expr10 [ Virg Or FParen And ]
## seqs -> seqs Virg expressao . [ Virg FParen ]
##
## The known suffix of the stack is as follows:
## seqs Virg expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Printf AParen STRING Virg While 
##
## Ends in an error in state: 64.
##
## seqs -> seqs Virg . expressao [ Virg FParen ]
##
## The known suffix of the stack is as follows:
## seqs Virg 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Printf AParen STRING While 
##
## Ends in an error in state: 66.
##
## expressao -> expressao . And expr10 [ Virg Or FParen And ]
## expressao -> expressao . Or expr10 [ Virg Or FParen And ]
## seqs -> expressao . [ Virg FParen ]
##
## The known suffix of the stack is as follows:
## expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Printf AParen While 
##
## Ends in an error in state: 91.
##
## cmd_printf -> Printf AParen . args FParen [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Printf AParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Printf While 
##
## Ends in an error in state: 90.
##
## cmd_printf -> Printf . AParen args FParen [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Printf 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Scanf AParen STRING Virg ECom Ident While 
##
## Ends in an error in state: 88.
##
## cmd_scanf -> Scanf AParen expressao Virg ECom Ident . FParen [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Scanf AParen expressao Virg ECom Ident 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Scanf AParen STRING Virg ECom While 
##
## Ends in an error in state: 87.
##
## cmd_scanf -> Scanf AParen expressao Virg ECom . Ident FParen [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Scanf AParen expressao Virg ECom 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Scanf AParen STRING Virg While 
##
## Ends in an error in state: 86.
##
## cmd_scanf -> Scanf AParen expressao Virg . ECom Ident FParen [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Scanf AParen expressao Virg 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Scanf AParen STRING While 
##
## Ends in an error in state: 85.
##
## cmd_scanf -> Scanf AParen expressao . Virg ECom Ident FParen [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
## expressao -> expressao . And expr10 [ Virg Or And ]
## expressao -> expressao . Or expr10 [ Virg Or And ]
##
## The known suffix of the stack is as follows:
## Scanf AParen expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Scanf AParen While 
##
## Ends in an error in state: 84.
##
## cmd_scanf -> Scanf AParen . expressao Virg ECom Ident FParen [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Scanf AParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Scanf While 
##
## Ends in an error in state: 83.
##
## cmd_scanf -> Scanf . AParen expressao Virg ECom Ident FParen [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Scanf 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case Apost STRING Apost DoisP Break While 
##
## Ends in an error in state: 144.
##
## case -> Case Apost expressao Apost DoisP comandos Break . PTVirg [ Default Case ]
##
## The known suffix of the stack is as follows:
## Case Apost expressao Apost DoisP comandos Break 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case Apost STRING Apost DoisP GetChar Return 
##
## Ends in an error in state: 143.
##
## case -> Case Apost expressao Apost DoisP comandos . Break PTVirg [ Default Case ]
##
## The known suffix of the stack is as follows:
## Case Apost expressao Apost DoisP comandos 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 121, spurious reduction of production comandos -> 
## In state 134, spurious reduction of production comandos -> comando comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case Apost STRING Apost DoisP Virg 
##
## Ends in an error in state: 82.
##
## case -> Case Apost expressao Apost DoisP . comandos Break PTVirg [ Default Case ]
##
## The known suffix of the stack is as follows:
## Case Apost expressao Apost DoisP 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case Apost STRING Apost While 
##
## Ends in an error in state: 81.
##
## case -> Case Apost expressao Apost . DoisP comandos Break PTVirg [ Default Case ]
##
## The known suffix of the stack is as follows:
## Case Apost expressao Apost 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case Apost STRING While 
##
## Ends in an error in state: 80.
##
## case -> Case Apost expressao . Apost DoisP comandos Break PTVirg [ Default Case ]
## expressao -> expressao . And expr10 [ Or Apost And ]
## expressao -> expressao . Or expr10 [ Or Apost And ]
##
## The known suffix of the stack is as follows:
## Case Apost expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case Apost While 
##
## Ends in an error in state: 79.
##
## case -> Case Apost . expressao Apost DoisP comandos Break PTVirg [ Default Case ]
##
## The known suffix of the stack is as follows:
## Case Apost 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case STRING DoisP Break PTVirg While 
##
## Ends in an error in state: 159.
##
## cases -> case . cases [ Default ]
##
## The known suffix of the stack is as follows:
## case 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case STRING DoisP Break While 
##
## Ends in an error in state: 149.
##
## case -> Case expressao DoisP comandos Break . PTVirg [ Default Case ]
##
## The known suffix of the stack is as follows:
## Case expressao DoisP comandos Break 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case STRING DoisP GetChar Return 
##
## Ends in an error in state: 148.
##
## case -> Case expressao DoisP comandos . Break PTVirg [ Default Case ]
##
## The known suffix of the stack is as follows:
## Case expressao DoisP comandos 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 121, spurious reduction of production comandos -> 
## In state 134, spurious reduction of production comandos -> comando comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case STRING DoisP Virg 
##
## Ends in an error in state: 147.
##
## case -> Case expressao DoisP . comandos Break PTVirg [ Default Case ]
##
## The known suffix of the stack is as follows:
## Case expressao DoisP 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case STRING While 
##
## Ends in an error in state: 146.
##
## case -> Case expressao . DoisP comandos Break PTVirg [ Default Case ]
## expressao -> expressao . And expr10 [ Or DoisP And ]
## expressao -> expressao . Or expr10 [ Or DoisP And ]
##
## The known suffix of the stack is as follows:
## Case expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Case While 
##
## Ends in an error in state: 78.
##
## case -> Case . expressao DoisP comandos Break PTVirg [ Default Case ]
## case -> Case . Apost expressao Apost DoisP comandos Break PTVirg [ Default Case ]
##
## The known suffix of the stack is as follows:
## Case 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Default DoisP Break PTVirg While 
##
## Ends in an error in state: 157.
##
## cmd_switch -> Switch AParen expressao FParen AChave cases default . FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Switch AParen expressao FParen AChave cases default 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Default DoisP Break While 
##
## Ends in an error in state: 155.
##
## default -> Default DoisP comandos Break . PTVirg [ FChave ]
##
## The known suffix of the stack is as follows:
## Default DoisP comandos Break 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Default DoisP GetChar Return 
##
## Ends in an error in state: 154.
##
## default -> Default DoisP comandos . Break PTVirg [ FChave ]
##
## The known suffix of the stack is as follows:
## Default DoisP comandos 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 121, spurious reduction of production comandos -> 
## In state 134, spurious reduction of production comandos -> comando comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Default DoisP Virg 
##
## Ends in an error in state: 153.
##
## default -> Default DoisP . comandos Break PTVirg [ FChave ]
##
## The known suffix of the stack is as follows:
## Default DoisP 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave Default While 
##
## Ends in an error in state: 152.
##
## default -> Default . DoisP comandos Break PTVirg [ FChave ]
##
## The known suffix of the stack is as follows:
## Default 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen AChave While 
##
## Ends in an error in state: 77.
##
## cmd_switch -> Switch AParen expressao FParen AChave . cases default FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Switch AParen expressao FParen AChave 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING FParen While 
##
## Ends in an error in state: 76.
##
## cmd_switch -> Switch AParen expressao FParen . AChave cases default FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Switch AParen expressao FParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen STRING While 
##
## Ends in an error in state: 75.
##
## cmd_switch -> Switch AParen expressao . FParen AChave cases default FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
## expressao -> expressao . And expr10 [ Or FParen And ]
## expressao -> expressao . Or expr10 [ Or FParen And ]
##
## The known suffix of the stack is as follows:
## Switch AParen expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch AParen While 
##
## Ends in an error in state: 74.
##
## cmd_switch -> Switch AParen . expressao FParen AChave cases default FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Switch AParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Switch While 
##
## Ends in an error in state: 73.
##
## cmd_switch -> Switch . AParen expressao FParen AChave cases default FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Switch 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave TInt Ident Atrib STRING Virg 
##
## Ends in an error in state: 114.
##
## expressao -> expressao . And expr10 [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or If Ident GetChar For FParen FChave Break And ]
## expressao -> expressao . Or expr10 [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg Or If Ident GetChar For FParen FChave Break And ]
## inicial -> Atrib expressao . [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Atrib expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave TInt Ident Atrib While 
##
## Ends in an error in state: 113.
##
## inicial -> Atrib . expressao [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## Atrib 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave TInt Ident Virg 
##
## Ends in an error in state: 112.
##
## cmd_dec -> tipo Ident . inicial [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## tipo Ident 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave TInt While 
##
## Ends in an error in state: 111.
##
## cmd_dec -> tipo . Ident inicial [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## tipo 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave Virg 
##
## Ends in an error in state: 18.
##
## funcao -> TInt Main AParen argumentos FParen AChave . comandos FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## TInt Main AParen argumentos FParen AChave 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave While AParen STRING FParen AChave GetChar Break 
##
## Ends in an error in state: 161.
##
## cmd_while -> While AParen expressao FParen AChave comandos . FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## While AParen expressao FParen AChave comandos 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 121, spurious reduction of production comandos -> 
## In state 134, spurious reduction of production comandos -> comando comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave While AParen STRING FParen AChave Virg 
##
## Ends in an error in state: 72.
##
## cmd_while -> While AParen expressao FParen AChave . comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## While AParen expressao FParen AChave 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave While AParen STRING FParen While 
##
## Ends in an error in state: 71.
##
## cmd_while -> While AParen expressao FParen . AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## While AParen expressao FParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave While AParen STRING While 
##
## Ends in an error in state: 70.
##
## cmd_while -> While AParen expressao . FParen AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
## expressao -> expressao . And expr10 [ Or FParen And ]
## expressao -> expressao . Or expr10 [ Or FParen And ]
##
## The known suffix of the stack is as follows:
## While AParen expressao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 34, spurious reduction of production expr30 -> expr40 
## In state 40, spurious reduction of production expr20 -> expr30 
## In state 45, spurious reduction of production expr10 -> expr20 
## In state 62, spurious reduction of production expressao -> expr10 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave While AParen While 
##
## Ends in an error in state: 20.
##
## cmd_while -> While AParen . expressao FParen AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## While AParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen AChave While While 
##
## Ends in an error in state: 19.
##
## cmd_while -> While . AParen expressao FParen AChave comandos FChave [ While TInt TFloat TChar TBool Switch Scanf Return Printf PTVirg If Ident GetChar For FParen FChave Break ]
##
## The known suffix of the stack is as follows:
## While 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen FParen While 
##
## Ends in an error in state: 17.
##
## funcao -> TInt Main AParen argumentos FParen . AChave comandos FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## TInt Main AParen argumentos FParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen TInt Ident Virg While 
##
## Ends in an error in state: 14.
##
## seq -> seq Virg . argumento [ Virg FParen ]
##
## The known suffix of the stack is as follows:
## seq Virg 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen TInt Ident While 
##
## Ends in an error in state: 13.
##
## argumentos -> seq . [ FParen ]
## seq -> seq . Virg argumento [ Virg FParen ]
##
## The known suffix of the stack is as follows:
## seq 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen TInt While 
##
## Ends in an error in state: 11.
##
## argumento -> tipo . Ident [ Virg FParen ]
##
## The known suffix of the stack is as follows:
## tipo 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main AParen While 
##
## Ends in an error in state: 6.
##
## funcao -> TInt Main AParen . argumentos FParen AChave comandos FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## TInt Main AParen 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt Main While 
##
## Ends in an error in state: 5.
##
## funcao -> TInt Main . AParen argumentos FParen AChave comandos FChave [ TInt TFloat TChar TBool EOF ]
##
## The known suffix of the stack is as follows:
## TInt Main 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: TInt While 
##
## Ends in an error in state: 4.
##
## funcao -> TInt . Main AParen argumentos FParen AChave comandos FChave [ TInt TFloat TChar TBool EOF ]
## tipo -> TInt . [ Ident ]
##
## The known suffix of the stack is as follows:
## TInt 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: While 
##
## Ends in an error in state: 0.
##
## programa' -> . programa [ # ]
##
## The known suffix of the stack is as follows:
## 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

