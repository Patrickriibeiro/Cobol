       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG3.
      *    programa que demonstra o uso de variavel
      *    programa para somar 2 números e exibir o resultado.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  PRIMEIRO-NUMERO PIC 9(2).
       01  SEGUNDO-NUMERO PICTURE 99.
       01  RESULTADO      PICTURE IS 999.
      *    RESULTADO      PICTURE IS 9(3).
       PROCEDURE DIVISION.

       PROGRAM-BEGIN.
           DISPLAY "INFORME O PRIMEIRO NUMERO".
           ACCEPT PRIMEIRO-NUMERO.

           DISPLAY "INFORME O SEGUNDO NUMERO".
           ACCEPT SEGUNDO-NUMERO.

           COMPUTE RESULTADO = PRIMEIRO-NUMERO + SEGUNDO-NUMERO;

           DISPLAY "O RESULTADO DO SEGUNDO DA SOMA E : " RESULTADO.
           PROGRAM-DONE.
           STOP RUN.
