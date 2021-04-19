       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTE.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  NOME PIC X(20).
       01  SINAL PIC X(20).
       01  NUMERO1 PIC 999.
       01  NUMERO2 PIC 999.
       01  RESULTADO PIC 999.
       01  RESPOSTAUSUARIO PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           PERFORM INICIALIZACAO.
           PERFORM PRIMEIRO-NUMERO.
           PERFORM SEGUNDO-NUMERO.
           PERFORM TIPO-DE-CONTA.
           PERFORM RESULTADO-FINAL.

           PROGRAM-DONE.
           STOP RUN.

       INICIALIZACAO.
           DISPLAY "Qual seu nome ? : "
           ACCEPT NOME.
           MOVE 0 TO NUMERO1.
           MOVE 0 TO NUMERO2.

       TIPO-DE-CONTA.
           DISPLAY "QUAL TIPO DE CONTA GOSTARIA DE FAZER"
           ACCEPT SINAL.
           PERFORM TIPO-DE-OPERADOR.

       PRIMEIRO-NUMERO.
           DISPLAY NOME "Digite seu numero : "
           ACCEPT NUMERO1.

       SEGUNDO-NUMERO.
           DISPLAY NOME "Digite o segundo numero :"
           ACCEPT NUMERO2.

       RESULTADO-FINAL.
           DISPLAY "GOSTARIA DE REINICIAR A APP (S/N) ?"
           ACCEPT RESPOSTAUSUARIO.
           IF RESPOSTAUSUARIO IS EQUAL "S" OR "s"
           GO TO REINICIAR.
           IF RESPOSTAUSUARIO EQUAL "N" OR "n"
               DISPLAY "Obrigado por utilizar o programa.".

       TIPO-DE-OPERADOR.
           IF SINAL IS EQUAL "SOMAR" OR "somar"
           PERFORM SOMAR.

           IF SINAL IS EQUAL "DIMINUIR" OR "diminuir"
           PERFORM DIMINUIR.

           IF SINAL IS EQUAL "MULTIPLICAR" OR "diminuir"
           PERFORM MULTIPLICAR.

           IF SINAL IS EQUAL "DIVISAO" OR "DIVISAO"
           PERFORM DIVIDIR.



       REINICIAR.
           MOVE 0 TO NUMERO1.
           MOVE 0 TO NUMERO2.
           PERFORM INICIALIZACAO.
           PERFORM TIPO-DE-CONTA.
           PERFORM PRIMEIRO-NUMERO.
           PERFORM SEGUNDO-NUMERO.
           PERFORM RESULTADO-FINAL.

       SOMAR.
           COMPUTE RESULTADO = NUMERO1 + NUMERO2.
           DISPLAY "SEU RESULTADO E : " RESULTADO.

       DIMINUIR.
           COMPUTE RESULTADO = NUMERO1 - NUMERO2.
           DISPLAY "SEU RESULTADO E : " RESULTADO.

       MULTIPLICAR.
           COMPUTE RESULTADO = NUMERO1 * NUMERO2.
           DISPLAY "SEU RESULTADO E : " RESULTADO.

       DIVIDIR.
           COMPUTE RESULTADO = NUMERO1 * NUMERO2.
           DISPLAY "SEU RESULTADO E : " RESULTADO.
