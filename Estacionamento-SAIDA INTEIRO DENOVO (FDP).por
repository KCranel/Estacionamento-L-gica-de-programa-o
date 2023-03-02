programa
{
	inclua biblioteca Tipos --> tp
	inclua biblioteca Matematica --> mat
	inclua biblioteca Calendario --> calend
	inclua biblioteca Texto --> txt
		cadeia placa[15]
		caracter carro[2][10], identifica[2][10]
		cadeia placaEstacionados [2][10]
		real caixa = 0.0 
		inteiro carroTot = 0, avulsos = 0, mensalistas = 0, mensalAtivos = 0, hora = 7, carroHoras[10], valorTot = 0
		
     funcao inicio()
     {
          caracter encerrar
          cadeia apoioEncerrar
          inteiro opcao
          inteiro horaSub=0, horaEnt=0, horaSaida=0
          caracter vaga, decisao = 's'
          caracter indis = 'X'
          caracter disp = 'V'
          caracter tipo='x'
          cadeia placaCarro="z"
          real caixaTotal = 0.0
          inteiro col = 0
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
		apoioEncerrar = tp.caracter_para_cadeia(encerrar)
		apoioEncerrar = txt.caixa_alta(apoioEncerrar)
		encerrar = tp.cadeia_para_caracter(apoioEncerrar)
          
          enquanto (encerrar != 'F') {
               escolha (encerrar) {
                    caso 'E':
                         entrada(tipo, placaCarro, col, contVerifica, indis, disp, decisao, horaEnt)
                         pare
                    caso 'S':
                         saida(tipo, col, indis, disp, decisao, horaSub, horaEnt, horaSaida)
                    caso 'T':
                         totCarros(decisao)
                    caso 'V':
                         valCaixa()
                    caso 'H':
                       	horas()
                    caso 'M':
                         mensalista(decisao)
                    caso 'F':
                         fim()
               }
          }
     }

     funcao entrada(caracter tipo,cadeia placaCarro, inteiro col, inteiro contVerifica, caracter indis, caracter disp, caracter decisao, inteiro horaEnt)
     {
 		cadeia apoiar
     	escreva("\nÉ mensalista ou avulso? (m/a) ")
		leia(tipo)
		apoiar = tp.caracter_para_cadeia(tipo)
		apoiar = txt.caixa_baixa(apoiar)
		tipo = tp.cadeia_para_caracter(apoiar)

		//verificação se é 'm' ou 'a'
		se(tipo=='m'){
			
		     escreva("\nDigite a placa do carro: ")
		     leia(placaCarro)
		      para(inteiro linha = 0; linha<2; linha++){
				para( inteiro vaga = 0; vaga<10; vaga++){
					se(placaCarro == placaEstacionados[linha][vaga]){
						escreva("-=-=-=-=-=-=-=-=-=-=-=-=-")
						escreva("\n       ERRO!!!\n")
						escreva("-=-=-=-=-=-=-=-=-=-=-=-=-\n")
						escreva("A placa digitada pertence à um veículo já estacionado. Tente cadastrar outra placa.\n")
						retorne
						}
					}
				}
			para(inteiro i = 0; i<15; i++){
				//se for igual, faz tudo oq ta dentro
				se(placaCarro==placa[i]){
					escreva("Em qual vaga você gostaria de adicionar? ")
					leia(col)
					se(carro[0][col] != indis){
						placaEstacionados[0][col] = placaCarro
						carro[0][col] = indis
						identifica[0][col] = 'm'
						escreva("O veículo da placa '",placaCarro,"' foi estacionado na vaga de número: ",col, " no pátio dos clientes mensalistas")
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
			escreva("Digite a placa do seu carro: ")
			leia(placaCarro)
			para(inteiro linha = 0; linha<2; linha++){
			para( inteiro vaga = 0; vaga<10; vaga++){
				se(placaCarro == placaEstacionados[linha][vaga]){
					escreva("-=-=-=-=-=-=-=-=-=-=-=-=-")
					escreva("\n       ERRO!!!\n")
					escreva("-=-=-=-=-=-=-=-=-=-=-=-=-\n")
					escreva("A placa digitada pertence à um veículo já estacionado. Tente cadastrar outra placa.\n")
					retorne
					}
				}
			}
			escreva("\nEm qual vaga você gostaria de adicionar? ")
			leia(col)
				se(carro[1][col] != indis){
					horaEnt = hora
					carro[1][col] = indis
					placaEstacionados[1][col] = placaCarro
					identifica[1][col] = 'a'
					carroHoras[col] = horaEnt
					escreva("O veículo da placa '",placaCarro,"' foi estacionado na vaga de número: ",col)
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

     funcao saida(caracter tipo, inteiro col, caracter indis, caracter disp, caracter decisao, inteiro horaSub, inteiro horaSaida, inteiro horaEnt)
     {
     	inteiro verifPlaca = 0
     	cadeia placaComp
     	escreva("\nQual a placa do carro? ")
     	leia(placaComp)
     		para(inteiro j = 0; j<9; j++) {
     			para(inteiro i = 0; i<2; i++){
     			se(placaComp==placaEstacionados[i][j]){
     				verifPlaca++
     			} se(verifPlaca==1){
     				escreva("Em qual vaga se encontra? ")
     				leia(col)
						se(carro[i][col]==indis){
							carro[i][col]=disp
							placaEstacionados[i][col] = ""
							mensalAtivos--
							escreva("Carro removido!")
							verifPlaca--
					} 	senao {
							escreva("\nNão há um carro estacionado nesta vaga.")
							retorne
					}
						se(identifica[1][col]=='a'){
							inteiro valorAvulso = 0
							horaEnt = carroHoras[col]
							horaSaida = hora
							horaSub = horaSaida-horaEnt
							valorAvulso = 15*horaSub
								se(valorAvulso==0){
									valorAvulso=15
								}
							escreva("\nPor ser um carro avulso, ele terá que pagar R$",valorAvulso,".")
							valorTot = valorTot+valorAvulso
						}
     			}
				
			} /*se (tipo=='a'){
				escreva("Qual vaga o carro se encontra? ")
				leia(col)
					se(carro[1][col]==indis){
						carro[1][col]=disp
						placaEstacionados[1][col] = ""
						escreva("\nCarro removido! O valor cobrado sobre o cliente é de")
					}*/
				}
     		//}
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
     funcao horas(){
     	inteiro num
		escreva("Digite as horas: ")
		leia(num)
		hora=num
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
 * @POSICAO-CURSOR = 2971; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {placa, 7, 9, 5}-{carro, 8, 11, 5}-{identifica, 8, 25, 10}-{placaEstacionados, 9, 9, 17}-{hora, 11, 72, 4}-{carroHoras, 11, 82, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */