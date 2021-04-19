       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG21.
      *    UTILIZAÇÃO DO PERFORM VARYING FROM I++.
      *    PROGRAMA PARA FAZER UMA TABUADA.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  NUMERO PIC 99.
       01  MULTIPLICADOR PIC 999.
       01  PRODUTO PIC 9(4).
       01  QUANTOS PIC 99.


       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           PERFORM INICIALIZACAO-PROGRAMA.
           PERFORM PEGA-TABUADA.
           PERFORM EXIBIR-TABUADA.
       PROGRAM-DONE.
           STOP RUN.

       INICIALIZACAO-PROGRAMA.
           MOVE 0 TO MULTIPLICADOR.

       PEGA-TABUADA.
           DISPLAY "QUAL A TABUADA DE MULTIPLICACAO(01-99)"
           ACCEPT NUMERO.


       EXIBIR-TABUADA.
           DISPLAY " A TABUADA DE MULTIPLICACAO DE " NUMERO "E :".
           PERFORM CALCULA-E-EXIBE
           VARYING MULTIPLICADOR
              FROM 2 BY 3
                UNTIL MULTIPLICADOR > QUANTOS.

       CALCULA-E-EXIBE.
           COMPUTE PRODUTO = NUMERO * MULTIPLICADOR.
           DISPLAY
            NUMERO " * " MULTIPLICADOR " = " PRODUTO.
