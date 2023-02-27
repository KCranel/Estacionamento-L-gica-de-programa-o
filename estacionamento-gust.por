programa
{
	
	funcao inicio()
	{
		caracter carro[2][10]
		caracter vaga, tipo, indis='X', disp='V'
		cadeia placaCarro, placa[15]
		real caixa = 0.0, caixaTotal = 0.0
		inteiro lin=0, col=0, hora=0, contVerifica=0


		//placas
 		placa[0]="hyt8896"
          placa[1]="ubg8954"
          placa[2]="jmq7432"
          placa[3]="mkl2536"
          placa[4]="opm2015"
          placa[5]="blc2004"
          placa[6]="fma2001"
          placa[7]="hxh2011"
          placa[8]="dbz1992"
          placa[9]="aem1584"
          placa[10]="lpn2122"
          placa[11]="jjs6567"
          placa[12]="mkj3229"
          placa[13]="kkj2015"
          placa[14]="lol2009"

          
		//escreva("Você deseja estacionar ou retirar um veículo? 's' para estacionar ou 'n'")
		//leia(vaga)

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
			escreva("\nEm qual vaga você gostaria de adicionar?")
			leia(col)
			carro[1][col] = indis
			
		}
		
		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1387; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {carro, 6, 11, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */