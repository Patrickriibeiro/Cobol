       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG31.
      *    VARIAVEIS NIVEL 66 , NIVEL 77 , NIVEL 88.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77  NOME PIC X(10).

       01  PESSOA.
           05 PESSOA-ESCOLARIEDADE PIC X.
           88 ENSINO-FUNDAMENTAL VALUE "F".
           88 ENSINO-MEDIO VALUE "H".
           88 ENSINO-SUPERIOR VALUE "S".

       01  FUNCIONARIO.
           05 COD PIC 99.
           05 FILLER PIC X(1) VALUE "*".
           05 IDADE PIC 99.
           05 FILLER PIC X(1) VALUE "*".
           05 ENDERECO PIC X(20).

       66  FUNCIONARIO-DETALHES RENAMES COD THRU IDADE.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY "===== VARIAVEIS NIVEL 77 E 88".
           DISPLAY "QUAL SEU NOME ?".
           ACCEPT NOME.
           DISPLAY "QUAL E SUA ESCOLARIEDADE ? ".
           DISPLAY "F=ENSINO-FUNDAMENTAL/M=MEDIO/S=SUPERIOR".
           ACCEPT PESSOA-ESCOLARIEDADE.

           IF PESSOA-ESCOLARIEDADE = "F"
               DISPLAY NOME " VOCE AINDA ESTA NO INICIO DOS ESTUDOS".

           IF PESSOA-ESCOLARIEDADE = "M"
               DISPLAY NOME "VOCE ESTA NA UNIVERSIDADE".

           IF PESSOA-ESCOLARIEDADE = "S"
               DISPLAY NOME "VOCE ESTA NA UNIVERSIDADE".

           DISPLAY "=== VARIAVEL NIVEL 66 =====".
           DISPLAY "INFORME O CODIGO DO FUNCIONARIO"
           ACCEPT COD.
           DISPLAY "INFORME A IDADE DO FUNCIONARIO".
           ACCEPT IDADE.
           DISPLAY "INFORME O ENDERECO DO FUNCIONARIO".
           ACCEPT FUNCIONARIO-DETALHES.

           PROGRAM-DONE.
               STOP RUN.