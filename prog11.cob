       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG10.

      * programa para exibir mensagens. agora usando paragrafo

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  MINHA-MENSAGEM PIC X(80).
       01  ID-MENSAGEM PIC 9(2).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           MOVE 0 TO ID-MENSAGEM.
      *    PRIMEIRA ID-MENSAGEM

           MOVE " Maria marque uma reuniao com nossos fornecedores"
            TO MINHA-MENSAGEM.

           PERFORM ADICIONAR-ID-E-EXIBE.


      *    SEGUNDA MENSAGEM

           MOVE " PAULO AGORA VC E RESPONSAVEL PELO SETOR DE VENDAS"
           TO MINHA-MENSAGEM.

           PERFORM ADICIONAR-ID-E-EXIBE.

       PROGRAM-DONE.
           STOP RUN.

       ADICIONAR-ID-E-EXIBE.
           ADD 1 TO ID-MENSAGEM.
           DISPLAY
            ID-MENSAGEM
            MINHA-MENSAGEM.
