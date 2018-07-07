programa: PROLOGO FUNCAOMAIN ACHAVE ACHAVE ACHAVE FCHAVE WHILE 
##
## Ends in an error in state: 121.
##
## bloco -> ACHAVE comandos . FCHAVE [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## ACHAVE comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE ACHAVE FCHAVE WHILE 
##
## Ends in an error in state: 151.
##
## funcaoMain -> FUNCAOMAIN ACHAVE comandos . RETURN expressao PTV FCHAVE [ # ]
##
## The known suffix of the stack is as follows:
## FUNCAOMAIN ACHAVE comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE ACHAVE VIRG 
##
## Ends in an error in state: 113.
##
## bloco -> ACHAVE . comandos FCHAVE [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## ACHAVE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE ID ACOL INT FCOL ATRIB STRING WHILE 
##
## Ends in an error in state: 111.
##
## comando_atrib -> ID ACOL INT FCOL ATRIB expressao . PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## expressao -> expressao . MAIS expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . MENOS expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . VEZES expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . DIV expressao [ VEZES PTV MENOS MAIS DIV ]
##
## The known suffix of the stack is as follows:
## ID ACOL INT FCOL ATRIB expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE ID ACOL INT FCOL ATRIB WHILE 
##
## Ends in an error in state: 110.
##
## comando_atrib -> ID ACOL INT FCOL ATRIB . expressao PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## ID ACOL INT FCOL ATRIB 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE ID ACOL INT FCOL WHILE 
##
## Ends in an error in state: 109.
##
## comando_atrib -> ID ACOL INT FCOL . ATRIB expressao PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## ID ACOL INT FCOL 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE ID ACOL INT WHILE 
##
## Ends in an error in state: 108.
##
## comando_atrib -> ID ACOL INT . FCOL ATRIB expressao PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## ID ACOL INT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE ID ACOL WHILE 
##
## Ends in an error in state: 107.
##
## comando_atrib -> ID ACOL . INT FCOL ATRIB expressao PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## ID ACOL 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE ID ATRIB STRING WHILE 
##
## Ends in an error in state: 105.
##
## comando_atrib -> ID ATRIB expressao . PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## expressao -> expressao . MAIS expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . MENOS expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . VEZES expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . DIV expressao [ VEZES PTV MENOS MAIS DIV ]
##
## The known suffix of the stack is as follows:
## ID ATRIB expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE ID ATRIB WHILE 
##
## Ends in an error in state: 104.
##
## comando_atrib -> ID ATRIB . expressao PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## ID ATRIB 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE ID WHILE 
##
## Ends in an error in state: 103.
##
## comando_atrib -> ID . ATRIB expressao PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_atrib -> ID . ACOL INT FCOL ATRIB expressao PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE IF APAR CHAR MENORIGUAL STRING FPAR ACHAVE FCHAVE ELSE VIRG 
##
## Ends in an error in state: 135.
##
## comando_if -> IF comparacao bloco ELSE . comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao bloco ELSE . bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## IF comparacao bloco ELSE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE IF APAR CHAR MENORIGUAL STRING FPAR ACHAVE FCHAVE VIRG 
##
## Ends in an error in state: 134.
##
## comando_if -> IF comparacao bloco . [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao bloco . ELSE comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao bloco . ELSE bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## IF comparacao bloco 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE IF APAR CHAR MENORIGUAL STRING FPAR TINT ID PTV ELSE VIRG 
##
## Ends in an error in state: 131.
##
## comando_if -> IF comparacao comando ELSE . comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao comando ELSE . bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## IF comparacao comando ELSE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE IF APAR CHAR MENORIGUAL STRING FPAR TINT ID PTV VIRG 
##
## Ends in an error in state: 130.
##
## comando_if -> IF comparacao comando . [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao comando . ELSE comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao comando . ELSE bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## IF comparacao comando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE IF APAR CHAR MENORIGUAL STRING FPAR VIRG 
##
## Ends in an error in state: 102.
##
## comando_if -> IF comparacao . comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao . bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao . comando ELSE comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao . bloco ELSE comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao . comando ELSE bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF comparacao . bloco ELSE bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## IF comparacao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE IF WHILE 
##
## Ends in an error in state: 101.
##
## comando_if -> IF . comparacao comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF . comparacao bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF . comparacao comando ELSE comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF . comparacao bloco ELSE comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF . comparacao comando ELSE bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_if -> IF . comparacao bloco ELSE bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## IF 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTCHAR APAR STRING FPAR WHILE 
##
## Ends in an error in state: 99.
##
## comando_output -> PRINTCHAR APAR expressao FPAR . PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTCHAR APAR expressao FPAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTCHAR APAR STRING WHILE 
##
## Ends in an error in state: 98.
##
## comando_output -> PRINTCHAR APAR expressao . FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## expressao -> expressao . MAIS expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . MENOS expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . VEZES expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . DIV expressao [ VEZES MENOS MAIS FPAR DIV ]
##
## The known suffix of the stack is as follows:
## PRINTCHAR APAR expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTCHAR APAR WHILE 
##
## Ends in an error in state: 97.
##
## comando_output -> PRINTCHAR APAR . expressao FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTCHAR APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTCHAR WHILE 
##
## Ends in an error in state: 96.
##
## comando_output -> PRINTCHAR . APAR expressao FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTCHAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTFLOAT APAR STRING FPAR WHILE 
##
## Ends in an error in state: 94.
##
## comando_output -> PRINTFLOAT APAR expressao FPAR . PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTFLOAT APAR expressao FPAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTFLOAT APAR STRING WHILE 
##
## Ends in an error in state: 93.
##
## comando_output -> PRINTFLOAT APAR expressao . FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## expressao -> expressao . MAIS expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . MENOS expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . VEZES expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . DIV expressao [ VEZES MENOS MAIS FPAR DIV ]
##
## The known suffix of the stack is as follows:
## PRINTFLOAT APAR expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTFLOAT APAR WHILE 
##
## Ends in an error in state: 92.
##
## comando_output -> PRINTFLOAT APAR . expressao FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTFLOAT APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTFLOAT WHILE 
##
## Ends in an error in state: 91.
##
## comando_output -> PRINTFLOAT . APAR expressao FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTFLOAT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTINT APAR STRING FPAR WHILE 
##
## Ends in an error in state: 89.
##
## comando_output -> PRINTINT APAR expressao FPAR . PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTINT APAR expressao FPAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTINT APAR STRING WHILE 
##
## Ends in an error in state: 88.
##
## comando_output -> PRINTINT APAR expressao . FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## expressao -> expressao . MAIS expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . MENOS expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . VEZES expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . DIV expressao [ VEZES MENOS MAIS FPAR DIV ]
##
## The known suffix of the stack is as follows:
## PRINTINT APAR expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTINT APAR WHILE 
##
## Ends in an error in state: 87.
##
## comando_output -> PRINTINT APAR . expressao FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTINT APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTINT WHILE 
##
## Ends in an error in state: 86.
##
## comando_output -> PRINTINT . APAR expressao FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTINT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTSTR APAR STRING FPAR WHILE 
##
## Ends in an error in state: 84.
##
## comando_output -> PRINTSTR APAR expressao FPAR . PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTSTR APAR expressao FPAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTSTR APAR STRING WHILE 
##
## Ends in an error in state: 83.
##
## comando_output -> PRINTSTR APAR expressao . FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## expressao -> expressao . MAIS expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . MENOS expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . VEZES expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . DIV expressao [ VEZES MENOS MAIS FPAR DIV ]
##
## The known suffix of the stack is as follows:
## PRINTSTR APAR expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTSTR APAR WHILE 
##
## Ends in an error in state: 82.
##
## comando_output -> PRINTSTR APAR . expressao FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTSTR APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE PRINTSTR WHILE 
##
## Ends in an error in state: 81.
##
## comando_output -> PRINTSTR . APAR expressao FPAR PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## PRINTSTR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN ACHAVE STRING WHILE 
##
## Ends in an error in state: 41.
##
## expressao -> expressao . MAIS expressao [ VEZES MENOS MAIS FCHAVE DIV ]
## expressao -> expressao . MENOS expressao [ VEZES MENOS MAIS FCHAVE DIV ]
## expressao -> expressao . VEZES expressao [ VEZES MENOS MAIS FCHAVE DIV ]
## expressao -> expressao . DIV expressao [ VEZES MENOS MAIS FCHAVE DIV ]
## expressao -> ACHAVE expressao . FCHAVE [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## ACHAVE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN ACHAVE WHILE 
##
## Ends in an error in state: 39.
##
## expressao -> ACHAVE . expressao FCHAVE [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## ACHAVE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN APAR STRING WHILE 
##
## Ends in an error in state: 59.
##
## expressao -> expressao . MAIS expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . MENOS expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . VEZES expressao [ VEZES MENOS MAIS FPAR DIV ]
## expressao -> expressao . DIV expressao [ VEZES MENOS MAIS FPAR DIV ]
## operando -> APAR expressao . FPAR [ VIRG VEZES PTV MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR FCHAVE DIV DIFERENTE ]
##
## The known suffix of the stack is as follows:
## APAR expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN APAR WHILE 
##
## Ends in an error in state: 35.
##
## operando -> APAR . expressao FPAR [ VIRG VEZES PTV MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR FCHAVE DIV DIFERENTE ]
##
## The known suffix of the stack is as follows:
## APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN ID ACOL INT WHILE 
##
## Ends in an error in state: 31.
##
## operando -> ID ACOL INT . FCOL [ VIRG VEZES PTV MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR FCHAVE DIV DIFERENTE ]
##
## The known suffix of the stack is as follows:
## ID ACOL INT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN ID ACOL WHILE 
##
## Ends in an error in state: 30.
##
## operando -> ID ACOL . INT FCOL [ VIRG VEZES PTV MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR FCHAVE DIV DIFERENTE ]
##
## The known suffix of the stack is as follows:
## ID ACOL 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN ID APAR STRING PTV WHILE 
##
## Ends in an error in state: 56.
##
## expressoes -> expressao PTV . expressoes [ FPAR ]
##
## The known suffix of the stack is as follows:
## expressao PTV 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN ID APAR STRING VIRG WHILE 
##
## Ends in an error in state: 54.
##
## expressoes -> expressao VIRG . expressoes [ FPAR ]
##
## The known suffix of the stack is as follows:
## expressao VIRG 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN ID APAR STRING WHILE 
##
## Ends in an error in state: 53.
##
## expressao -> expressao . MAIS expressao [ VIRG VEZES PTV MENOS MAIS FPAR DIV ]
## expressao -> expressao . MENOS expressao [ VIRG VEZES PTV MENOS MAIS FPAR DIV ]
## expressao -> expressao . VEZES expressao [ VIRG VEZES PTV MENOS MAIS FPAR DIV ]
## expressao -> expressao . DIV expressao [ VIRG VEZES PTV MENOS MAIS FPAR DIV ]
## expressoes -> expressao . [ FPAR ]
## expressoes -> expressao . PTV expressoes [ FPAR ]
## expressoes -> expressao . VIRG expressoes [ FPAR ]
##
## The known suffix of the stack is as follows:
## expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN ID APAR WHILE 
##
## Ends in an error in state: 38.
##
## expressao -> ID APAR . expressoes FPAR [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## ID APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN ID WHILE 
##
## Ends in an error in state: 37.
##
## expressao -> ID . APAR expressoes FPAR [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## operando -> ID . ACOL INT FCOL [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## operando -> ID . [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN NOT STRING WHILE 
##
## Ends in an error in state: 58.
##
## expressao -> expressao . MAIS expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . MENOS expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . VEZES expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . DIV expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> NOT expressao . [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## NOT expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN NOT WHILE 
##
## Ends in an error in state: 36.
##
## expressao -> NOT . expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## NOT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN STRING DIV STRING WHILE 
##
## Ends in an error in state: 49.
##
## expressao -> expressao . MAIS expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . MENOS expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . VEZES expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . DIV expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao DIV expressao . [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## expressao DIV expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN STRING DIV WHILE 
##
## Ends in an error in state: 48.
##
## expressao -> expressao DIV . expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## expressao DIV 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN STRING MAIS STRING WHILE 
##
## Ends in an error in state: 47.
##
## expressao -> expressao . MAIS expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao MAIS expressao . [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . MENOS expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . VEZES expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . DIV expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## expressao MAIS expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN STRING MAIS WHILE 
##
## Ends in an error in state: 46.
##
## expressao -> expressao MAIS . expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## expressao MAIS 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN STRING MENOS STRING WHILE 
##
## Ends in an error in state: 45.
##
## expressao -> expressao . MAIS expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . MENOS expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao MENOS expressao . [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . VEZES expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . DIV expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## expressao MENOS expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN STRING MENOS WHILE 
##
## Ends in an error in state: 44.
##
## expressao -> expressao MENOS . expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## expressao MENOS 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN STRING PTV WHILE 
##
## Ends in an error in state: 154.
##
## funcaoMain -> FUNCAOMAIN ACHAVE comandos RETURN expressao PTV . FCHAVE [ # ]
##
## The known suffix of the stack is as follows:
## FUNCAOMAIN ACHAVE comandos RETURN expressao PTV 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN STRING VEZES STRING WHILE 
##
## Ends in an error in state: 43.
##
## expressao -> expressao . MAIS expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . MENOS expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . VEZES expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao VEZES expressao . [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
## expressao -> expressao . DIV expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## expressao VEZES expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN STRING VEZES WHILE 
##
## Ends in an error in state: 42.
##
## expressao -> expressao VEZES . expressao [ VIRG VEZES PTV MENOS MAIS FPAR FCHAVE DIV ]
##
## The known suffix of the stack is as follows:
## expressao VEZES 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN STRING WHILE 
##
## Ends in an error in state: 153.
##
## expressao -> expressao . MAIS expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . MENOS expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . VEZES expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . DIV expressao [ VEZES PTV MENOS MAIS DIV ]
## funcaoMain -> FUNCAOMAIN ACHAVE comandos RETURN expressao . PTV FCHAVE [ # ]
##
## The known suffix of the stack is as follows:
## FUNCAOMAIN ACHAVE comandos RETURN expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE RETURN WHILE 
##
## Ends in an error in state: 152.
##
## funcaoMain -> FUNCAOMAIN ACHAVE comandos RETURN . expressao PTV FCHAVE [ # ]
##
## The known suffix of the stack is as follows:
## FUNCAOMAIN ACHAVE comandos RETURN 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE TCHAR ID WHILE 
##
## Ends in an error in state: 79.
##
## declaracao -> TCHAR ID . PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## TCHAR ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE TCHAR WHILE 
##
## Ends in an error in state: 78.
##
## declaracao -> TCHAR . ID PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## tipo -> TCHAR . [ ID ]
##
## The known suffix of the stack is as follows:
## TCHAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE TFLOAT ID WHILE 
##
## Ends in an error in state: 76.
##
## declaracao -> TFLOAT ID . PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## TFLOAT ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE TFLOAT WHILE 
##
## Ends in an error in state: 75.
##
## declaracao -> TFLOAT . ID PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## tipo -> TFLOAT . [ ID ]
##
## The known suffix of the stack is as follows:
## TFLOAT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE TINT ID PTV VIRG 
##
## Ends in an error in state: 127.
##
## comandos -> comando . [ RETURN FCHAVE ]
## comandos -> comando . comandos [ RETURN FCHAVE ]
##
## The known suffix of the stack is as follows:
## comando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE TINT ID WHILE 
##
## Ends in an error in state: 73.
##
## declaracao -> TINT ID . PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## TINT ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE TINT WHILE 
##
## Ends in an error in state: 72.
##
## declaracao -> TINT . ID PTV [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## tipo -> TINT . [ ID ]
##
## The known suffix of the stack is as follows:
## TINT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE VIRG 
##
## Ends in an error in state: 150.
##
## funcaoMain -> FUNCAOMAIN ACHAVE . comandos RETURN expressao PTV FCHAVE [ # ]
##
## The known suffix of the stack is as follows:
## FUNCAOMAIN ACHAVE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE WHILE APAR ID WHILE 
##
## Ends in an error in state: 29.
##
## operando -> ID . ACOL INT FCOL [ MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR DIFERENTE ]
## operando -> ID . [ MENORIGUAL MENOR MAIORIGUAL MAIOR IGUAL FPAR DIFERENTE ]
##
## The known suffix of the stack is as follows:
## ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE WHILE APAR STRING MENORIGUAL STRING FPAR VIRG 
##
## Ends in an error in state: 71.
##
## comando_while -> WHILE comparacao . comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_while -> WHILE comparacao . bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## WHILE comparacao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE WHILE APAR STRING MENORIGUAL STRING WHILE 
##
## Ends in an error in state: 69.
##
## comparacao -> APAR operando comparador operando . FPAR [ WHILE TINT TFLOAT TCHAR PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID ACHAVE ]
##
## The known suffix of the stack is as follows:
## APAR operando comparador operando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE WHILE APAR STRING MENORIGUAL WHILE 
##
## Ends in an error in state: 68.
##
## comparacao -> APAR operando comparador . operando FPAR [ WHILE TINT TFLOAT TCHAR PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID ACHAVE ]
##
## The known suffix of the stack is as follows:
## APAR operando comparador 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE WHILE APAR STRING WHILE 
##
## Ends in an error in state: 61.
##
## comparacao -> APAR operando . comparador operando FPAR [ WHILE TINT TFLOAT TCHAR PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID ACHAVE ]
##
## The known suffix of the stack is as follows:
## APAR operando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE WHILE APAR WHILE 
##
## Ends in an error in state: 26.
##
## comparacao -> APAR . operando comparador operando FPAR [ WHILE TINT TFLOAT TCHAR PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID ACHAVE ]
##
## The known suffix of the stack is as follows:
## APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN ACHAVE WHILE WHILE 
##
## Ends in an error in state: 25.
##
## comando_while -> WHILE . comparacao comando [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
## comando_while -> WHILE . comparacao bloco [ WHILE TINT TFLOAT TCHAR RETURN PRINTSTR PRINTINT PRINTFLOAT PRINTCHAR IF ID FCHAVE ELSE ACHAVE ]
##
## The known suffix of the stack is as follows:
## WHILE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO FUNCAOMAIN WHILE 
##
## Ends in an error in state: 149.
##
## funcaoMain -> FUNCAOMAIN . ACHAVE comandos RETURN expressao PTV FCHAVE [ # ]
##
## The known suffix of the stack is as follows:
## FUNCAOMAIN 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR FPAR ACHAVE ACHAVE FCHAVE WHILE 
##
## Ends in an error in state: 140.
##
## funcao -> tipo ID APAR argumentos FPAR ACHAVE comandos . RETURN expressao PTV FCHAVE [ TINT TFLOAT TCHAR FUNCAOMAIN ]
##
## The known suffix of the stack is as follows:
## tipo ID APAR argumentos FPAR ACHAVE comandos 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR FPAR ACHAVE RETURN CHAR PTV FCHAVE WHILE 
##
## Ends in an error in state: 157.
##
## funcoes -> funcao . funcoes [ FUNCAOMAIN ]
## funcoes -> funcao . [ FUNCAOMAIN ]
##
## The known suffix of the stack is as follows:
## funcao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR FPAR ACHAVE RETURN STRING PTV WHILE 
##
## Ends in an error in state: 143.
##
## funcao -> tipo ID APAR argumentos FPAR ACHAVE comandos RETURN expressao PTV . FCHAVE [ TINT TFLOAT TCHAR FUNCAOMAIN ]
##
## The known suffix of the stack is as follows:
## tipo ID APAR argumentos FPAR ACHAVE comandos RETURN expressao PTV 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR FPAR ACHAVE RETURN STRING WHILE 
##
## Ends in an error in state: 142.
##
## expressao -> expressao . MAIS expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . MENOS expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . VEZES expressao [ VEZES PTV MENOS MAIS DIV ]
## expressao -> expressao . DIV expressao [ VEZES PTV MENOS MAIS DIV ]
## funcao -> tipo ID APAR argumentos FPAR ACHAVE comandos RETURN expressao . PTV FCHAVE [ TINT TFLOAT TCHAR FUNCAOMAIN ]
##
## The known suffix of the stack is as follows:
## tipo ID APAR argumentos FPAR ACHAVE comandos RETURN expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR FPAR ACHAVE RETURN WHILE 
##
## Ends in an error in state: 141.
##
## funcao -> tipo ID APAR argumentos FPAR ACHAVE comandos RETURN . expressao PTV FCHAVE [ TINT TFLOAT TCHAR FUNCAOMAIN ]
##
## The known suffix of the stack is as follows:
## tipo ID APAR argumentos FPAR ACHAVE comandos RETURN 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR FPAR ACHAVE VIRG 
##
## Ends in an error in state: 24.
##
## funcao -> tipo ID APAR argumentos FPAR ACHAVE . comandos RETURN expressao PTV FCHAVE [ TINT TFLOAT TCHAR FUNCAOMAIN ]
##
## The known suffix of the stack is as follows:
## tipo ID APAR argumentos FPAR ACHAVE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR FPAR WHILE 
##
## Ends in an error in state: 23.
##
## funcao -> tipo ID APAR argumentos FPAR . ACHAVE comandos RETURN expressao PTV FCHAVE [ TINT TFLOAT TCHAR FUNCAOMAIN ]
##
## The known suffix of the stack is as follows:
## tipo ID APAR argumentos FPAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR TCHAR ID WHILE 
##
## Ends in an error in state: 15.
##
## argumento -> TCHAR ID . PTV [ VIRG FPAR ]
##
## The known suffix of the stack is as follows:
## TCHAR ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR TCHAR WHILE 
##
## Ends in an error in state: 14.
##
## argumento -> TCHAR . ID PTV [ VIRG FPAR ]
## tipo -> TCHAR . [ ID ]
##
## The known suffix of the stack is as follows:
## TCHAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR TFLOAT ID WHILE 
##
## Ends in an error in state: 12.
##
## argumento -> TFLOAT ID . PTV [ VIRG FPAR ]
##
## The known suffix of the stack is as follows:
## TFLOAT ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR TFLOAT WHILE 
##
## Ends in an error in state: 11.
##
## argumento -> TFLOAT . ID PTV [ VIRG FPAR ]
## tipo -> TFLOAT . [ ID ]
##
## The known suffix of the stack is as follows:
## TFLOAT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR TINT ID PTV VIRG WHILE 
##
## Ends in an error in state: 146.
##
## argumentos -> argumento VIRG . argumentos [ FPAR ]
##
## The known suffix of the stack is as follows:
## argumento VIRG 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR TINT ID PTV WHILE 
##
## Ends in an error in state: 145.
##
## argumentos -> argumento . VIRG argumentos [ FPAR ]
## argumentos -> argumento . [ FPAR ]
##
## The known suffix of the stack is as follows:
## argumento 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR TINT ID WHILE 
##
## Ends in an error in state: 9.
##
## argumento -> TINT ID . PTV [ VIRG FPAR ]
##
## The known suffix of the stack is as follows:
## TINT ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR TINT WHILE 
##
## Ends in an error in state: 8.
##
## argumento -> TINT . ID PTV [ VIRG FPAR ]
## tipo -> TINT . [ ID ]
##
## The known suffix of the stack is as follows:
## TINT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID APAR WHILE 
##
## Ends in an error in state: 7.
##
## funcao -> tipo ID APAR . argumentos FPAR ACHAVE comandos RETURN expressao PTV FCHAVE [ TINT TFLOAT TCHAR FUNCAOMAIN ]
##
## The known suffix of the stack is as follows:
## tipo ID APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT ID WHILE 
##
## Ends in an error in state: 6.
##
## funcao -> tipo ID . APAR argumentos FPAR ACHAVE comandos RETURN expressao PTV FCHAVE [ TINT TFLOAT TCHAR FUNCAOMAIN ]
##
## The known suffix of the stack is as follows:
## tipo ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO TINT WHILE 
##
## Ends in an error in state: 5.
##
## funcao -> tipo . ID APAR argumentos FPAR ACHAVE comandos RETURN expressao PTV FCHAVE [ TINT TFLOAT TCHAR FUNCAOMAIN ]
##
## The known suffix of the stack is as follows:
## tipo 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: PROLOGO WHILE 
##
## Ends in an error in state: 1.
##
## programa -> PROLOGO . funcoes funcaoMain [ # ]
##
## The known suffix of the stack is as follows:
## PROLOGO 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

programa: WHILE 
##
## Ends in an error in state: 0.
##
## programa' -> . programa [ # ]
##
## The known suffix of the stack is as follows:
## 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

