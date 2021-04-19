       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG10.

      * programa para exibir mensagens.

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
           ADD 1 TO ID-MENSAGEM.
           DISPLAY  ID-MENSAGEM MINHA-MENSAGEM.

      *    SEGUNDA MENSAGEM

           MOVE " PAULO AGORA VC É RESPONSAVEL PELO SETOR DE VENDAS"
           TO MINHA-MENSAGEM.

           ADD 1 TO ID-MENSAGEM.
           DISPLAY
            ID-MENSAGEM
            MINHA-MENSAGEM.

           PROGRAM-DONE.
               STOP RUN.
