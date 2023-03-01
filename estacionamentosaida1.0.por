programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Calendario --> calend
	inclua biblioteca Texto --> txt
		cadeia placa[15]
		caracter carro[2][10]
		cadeia placaEstacionados [2][10]
		real caixa = 0.0 
		inteiro carroTot = 0, avulsos = 0, mensalistas = 0, mensalAtivos = 0
		
     funcao inicio()
     {
          caracter encerrar
          inteiro opcao
          caracter vaga, decisao = 's'
          caracter indis = 'X'
          caracter disp = 'V'
          caracter tipo='x'
          cadeia placaCarro="z"
          real caixaTotal = 0.0
          inteiro col = 0
          inteiro hora = calend.hora_atual(falso)
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
		escreva("\n------------------------")
          
          enquanto (encerrar != 'F') {
               escolha (encerrar) {
                    caso 'E':
                         entrada(tipo, placaCarro, col, contVerifica, indis, disp, hora, decisao)
                         pare
                    caso 'S':
                         saida(tipo, col, indis, disp, decisao)
                    caso 'T':
                         totCarros(decisao)
                    caso 'V':
                         valCaixa()
                    caso 'M':
                         mensalista(decisao)
                    caso 'F':
                         fim()
               }
          }
     }

     funcao entrada(caracter tipo,cadeia placaCarro, inteiro col, inteiro contVerifica, caracter indis, caracter disp, inteiro hora, caracter decisao)
     {
 
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
					se(carro[0][col] != indis){
						placaEstacionados[0][col] = placaCarro
						carro[0][col] = indis
						escreva("Carro adicionado!")
						mensalistas++
						mensalAtivos++
						contVerifica++
					}
					senao{
						escreva("A vaga em questão já está sendo utilizada! Digite outra")
						contVerifica++
					}
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
			escreva("Digite a placa do seu carro: ")
			leia(placaCarro)
				se(carro[1][col] != indis){
					carro[1][col] = indis
					placaEstacionados[1][col] = placaCarro
					escreva("Carro adicionado!")
					avulsos++
				}
				senao{
					escreva("A vaga em questão já está sendo utilizada! Digite outra")
				}
			
		}

		escreva("\n\nDeseja registrar outro carro ou retornar ao menu? Digite 's' para continuar registrando ou 'n' para retornar ao menu: ")
			leia(decisao)
			se(decisao=='s'){
				retorne
			}
			senao{
          inicio()
		}
     }

     funcao saida(caracter tipo, inteiro col, caracter indis, caracter disp, caracter decisao)
     {
     	escreva("O carro que vai sair é mensalista ou avulso? (m/a) ")
     	leia(tipo)
			se (tipo=='m'){
				escreva("Qual vaga o carro se encontra? ")
				leia(col)
					se(carro[0][col]==indis){
						carro[0][col]=disp
						placaEstacionados[0][col] = ""
						mensalAtivos--
						escreva("Carro removido! Por ser mensalista, nenhum valor será cobrado no momento.")
					} senao {
						escreva("Não há um carro estacionado nesta vaga.")
						retorne
					}
				
			} se (tipo=='a'){
				escreva("Qual vaga o carro se encontra? ")
				leia(col)
					se(carro[1][col]==indis){
						carro[1][col]=disp
						placaEstacionados[1][col] = ""
						escreva("\nCarro removido! O valor cobrado sobre o cliente é de")
					} senao {
						escreva("\nNão há um carro estacionado nesta vaga.")
						retorne
						
					}
			}
          escreva("\n\nDeseja retirar outro carro ou retornar ao menu? Digite 's' para retirar outro carro ou 'n' para retornar ao menu: ")
			leia(decisao)
			se(decisao=='s'){
				retorne
			}
			senao{
          inicio()
		}
     }

     funcao totCarros(caracter decisao)
     {

		carroTot = avulsos+mensalistas
     	
     	escreva("\nO total de carros avulsos que estacionaram até o momento é de ", avulsos, ".\n")
     	escreva("O total de carros mensalistas que estacionaram até o momento é de ", mensalistas, ".\n\n")
     	escreva("-------------------Total de Carros-------------------\n\n")
     	escreva(avulsos, " (avulsos) + ", mensalistas, " (mensalistas) = ", carroTot)

     	escreva("\n\n\nDeseja retornar para o menu principal? (s/n) ")
     	leia(decisao)
     	se(decisao=='s'){
     		inicio()
     	} senao {
     		retorne
     	}
     }

     funcao valCaixa()
     {
          inicio()
     }

     funcao mensalista(caracter decisao)
     {
     	escreva("\n\nNo momento há ", mensalAtivos, " carros mensalistas estacionados.")

     	escreva("\nGostaria de retornar ao menu? Digite 's' para retornar ao menu. ")
     	leia(decisao)

     		se(decisao=='s'){
     			inicio()
     		} senao{
     			retorne
     		}
          
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
 * @POSICAO-CURSOR = 6098; 
 * @DOBRAMENTO-CODIGO = [180, 199, 219];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {carro, 7, 11, 5}-{placaEstacionados, 8, 9, 17};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */