programa
{

     funcao inicio()
     {
          caracter encerrar
          inteiro opcao
          escreva("Estacionamento SenacChat")
          escreva("\n------------------------")
          escreva("\n\nM e n u  P r i n c i p a l")
          escreva("\n\n------------------------")
          escreva("\n\n(E)ntrada")
          escreva("\n(S)aída")
          escreva("\n(T)otal carros")
          escreva("\n(V)alor caixa")
          escreva("\n(M)ensalistas no pátio")
          escreva("\n\n(F)im\n")
          leia(encerrar)
          
          enquanto(encerrar!='F'){
          	escolha(encerrar){
          		caso 'E':
          			entrada()
          			pare
          		caso 'S':
          			saida()
          		caso 'T':
          			totCarros()
          		caso 'V':
          			valCaixa()
          		caso 'M':
          			mensalista()
          		caso 'F':
          			fim()
          	}
          	
          }
     }

     funcao entrada()
     {
		inicio()
     }

     funcao saida()
     {
		inicio()
     }
     funcao totCarros()
     {
     	inicio()
     }
     funcao valCaixa()
     {
     	inicio()
     }
     funcao mensalista()
     {
     	inicio()
     }
     funcao fim()
     {
     	
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1251; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */