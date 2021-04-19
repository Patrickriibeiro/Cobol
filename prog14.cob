       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG14.
      *    pergunta se usuário gosta de churraco
      *    resolve problema das letras em minústro.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  RESPOSTA PIC X.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           PERFORM PERGUNTA.

           PERFORM CONVERTE-PARA-MAIUSCULO.

           PERFORM EXIBE-RESPOSTA.

       PROGRAM-DONE.
           STOP-RUN.

       PERGUNTA.
           DISPLAY "VOCE GOSTA DE CHURRASCO SIM OU NAO? (S/N)"
           ACCEPT RESPOSTA.

       EXIBE-RESPOSTA.

           IF RESPOSTA IS EQUAL "S"
               DISPLAY "REALMENTE E MUITO BOM !".

           IF RESPOSTA IS EQUAL "N"
               DISPLAY "QUE PENA ! TALVEZ VOCE SEJA VEGETARIANO.".

       CONVERTE-PARA-MAISCULO.

           IF RESPOSTA IS EQUAL "s"
               MOVE "S" TO RESPOSTA.

           IF RESPOSTA IS EQUAL "n"
               MOVE "N" TO RESPOSTA.
