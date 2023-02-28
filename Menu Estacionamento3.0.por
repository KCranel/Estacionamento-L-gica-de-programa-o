programa
{
		cadeia placa[15]
		caracter carro[2][10]
		real caixa = 0.0
		
     funcao inicio()
     {
          caracter encerrar
          inteiro opcao
          caracter vaga
          caracter indis = 'X'
          caracter disp = 'V'
          caracter tipo='x'
          cadeia placaCarro="z"
          real caixaTotal = 0.0
          inteiro lin = 0
          inteiro col = 0
          inteiro hora = 0
          inteiro contVerifica = 0

          placa[0] = "hyt8896"
          placa[1] = "ubg8954"
          placa[2] = "jmq7432"
          placa[3] = "mkl2536"
          placa[4] = "opm2015"
          placa[5] = "blc2004"
          placa[6] = "fma2001"
          placa[7] = "hxh2011"
          placa[8] = "dbz1992"
          placa[9] = "aem1584"
          placa[10] = "lpn2122"
          placa[11] = "jjs6567"
          placa[12] = "mkj3229"
          placa[13] = "kkj2015"
          placa[14] = "lol2009"
          
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
          enquanto (encerrar != 'F') {
               escolha (encerrar) {
                    caso 'E':
                         entrada(tipo, placaCarro, col,contVerifica, indis, disp, hora)
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

     funcao entrada(caracter tipo,cadeia placaCarro, inteiro col, inteiro contVerifica, caracter indis, caracter disp, inteiro hora)
     {
     	caracter decisao
     	escreva("\nÉ mensalista ou avulso? (m/a) ")
		leia(tipo)

		//verificação se é 'm' ou 'a'
		se(tipo=='m'){
			
		escreva("\nDigite a placa do carro: ")
		leia(placaCarro)
			para(inteiro i = 0; i<15; i++){
				//se for igual, faz tudo oq ta dentro
				se(placaCarro==placa[i]){
					escreva("Em qual vaga você gostaria de adicionar? ")
					leia(col)
					carro[0][col] = indis
					contVerifica++
				}
				
			}
			//se fora só pra indicar q ta errada a placa
			se(contVerifica==0){
					escreva("\nO carro não é mensalista ou a placa está incorreta.")
					
				}
				
		}
		//inicio do se tipo=='as'
		se(tipo=='a'){
			caixa=caixa+15*hora
			escreva("\nEm qual vaga você gostaria de adicionar? ")
			leia(col)
			carro[1][col] = indis
			
		}

		escreva("\n\nDeseja registrar outro carro ou retornar ao menu? Digite 's' para continuar registrando ou 'n' para retornar ao menu: ")
			leia(decisao)
			se(decisao=='s'){
				retorne
			}senao
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
 * @POSICAO-CURSOR = 2870; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {placa, 3, 9, 5}-{carro, 4, 11, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */