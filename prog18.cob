       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG16.
      *    PROGRAMA IF-ELSE.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  VALOR1 PIC 9(3).
       01  VALOR2 PIC 9(3).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY "---Uso do And----".
           DISPLAY "INFORME UM NUMERO MAIOR QUE 10 e".
           DISPLAY "MENOR QUE 100 (11-99)".

           ACCEPT VALOR1.

           IF VALOR1 > 10 AND VALOR1 < 100
               DISPLAY "O NUMERO ESTA NO INTERVALO"




           ELSE
               DISPLAY "O NUMERO EH INVALIDO".

           PROGRAM-DONE.
               STOP RUN.
