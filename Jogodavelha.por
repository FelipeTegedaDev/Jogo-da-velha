programa {
  funcao inicio() 
  {

    inteiro jogador = 1, linha, coluna, numeroJogadas = 0, vencedor = 0
		caracter tabuleiro[3][3]
		

    escreva("Olá! Este é um jogo da velha! Você deve jogar com outra pessoa!\n")
		escreva("Digite a posição da sua jogada na seguinte forma: (linha,coluna).\nOu seja, linha 2 e coluna 2 será: (1,1)\n")
		escreva("Antes de começarmos veja as posições para as jogadas:\n")
		escreva("[ (0,0) ]\t[ (0,1) ]\t[ (0,2) ]\n")
		escreva("[ (1,0) ]\t[ (1,1) ]\t[ (1,2) ]\n")
		escreva("[ (2,0) ]\t[ (2,1) ]\t[ (2,2) ]\n")
		escreva("\n")
		escreva("A primeira pessoa que jogar será (X) e a segunda pessoa que jogar será (O).\n")
		escreva("Ganha quem fizer linha, coluna ou diagonal. Bom jogo!\n")

    para(inteiro i = 0; i < 3; i ++)
    {
      para(inteiro j = 0; j < 3; j++)
      {
        tabuleiro[i][j] = ' '
      }
    }

    escreva("--------------------------------------\n")
		escreva("Este é o nosso tabuleiro, Vamos jogar!\n")
		escreva("--------------------------------------\n")

    para(inteiro i = 0; i < 3; i++)
    {
      para(inteiro j = 0; j < 3; j++)
      {
        escreva("[",tabuleiro[i][j],"]")
      }
      escreva("\n")
    }

    enquanto((vencedor == 0)e(numeroJogadas <9))
    {
      se(jogador == 1)
      {
        escreva("\nVocê é o jogador ", jogador," Faça sua jogada\n")
        escreva("Digite uma linha: ")
        leia(linha)
        escreva("Digite uma coluna: ")
        leia(coluna) 

        se((linha < 3)e(coluna < 3)e(tabuleiro[linha][coluna] == ' '))
        {
          tabuleiro[linha][coluna] = 'X'
          jogador = 2

          para(inteiro i = 0; i < 3; i++)
          {
            para(inteiro j = 0; j < 3; j++)
            {
              escreva("[",tabuleiro[i][j],"]")
            }
            escreva("\n")
          }
        }  
      }

      senao se(jogador == 2)
      {
        escreva("\nVocê é o jogador ", jogador," Faça sua jogada\n")
        escreva("\nDigite uma linha: ")
        leia(linha)
        escreva("\nDigite uma coluna: ")
        leia(coluna)
        se((linha < 3)e(coluna < 3)e(tabuleiro[linha][coluna] == ' '))
        {
          tabuleiro[linha][coluna] = 'O'
          jogador = 1

          para(inteiro i = 0; i < 3; i++)
          {
            para(inteiro j = 0; j < 3; j++)
            {
              escreva("[",tabuleiro[i][j],"]")
            }
            escreva("\n")
          }
        }
      }

      senao
      {
        escreva("\nVocê digitou uma opção inválida, tente novamente\n")
        para(inteiro i = 0; i < 3; i++)
        {
          para(inteiro j = 0; j <3; j++)
          {
            escreva("[",tabuleiro[i][j],"]")
          }
          escreva("\n")
        }
      }

      escreva("\n\n")

      se(vencedor == 0)
      {
        para(inteiro i = 0; i < 3; i++)
        {
          se((tabuleiro[i][0] == 'X')e(tabuleiro[i][1] == 'X')e(tabuleiro[i][2] == 'X')){vencedor = 1}
          senao se((tabuleiro[i][0] == 'O')e(tabuleiro[i][1] == 'O')e(tabuleiro[i][2] == 'O')){vencedor = 2}
        }
      }

      se(vencedor == 0)
      {
        para(inteiro i = 0; i < 3; i++)
        {
          se((tabuleiro[0][i] == 'X')e(tabuleiro[1][i] == 'X')e(tabuleiro[2][i] == 'X')){vencedor = 1}
          senao se((tabuleiro[0][i] == 'O')e(tabuleiro[1][i] == 'O')e(tabuleiro[2][i] == 'O')){vencedor = 2}
        }
      }

      se((tabuleiro[0][0] == 'X')e(tabuleiro[1][1] == 'X')e(tabuleiro[2][2] == 'X')){vencedor = 1}

      senao se((tabuleiro[0][0] == 'O')e(tabuleiro[1][1] == 'O')e(tabuleiro[2][2] == 'O')){vencedor = 2}

      se((tabuleiro[0][2] == 'X')e(tabuleiro[1][1] == 'X')e(tabuleiro[2][0] == 'X')){vencedor = 1}

      senao se((tabuleiro[0][2] == 'O')e(tabuleiro[1][1] == 'O')e(tabuleiro[2][0] == 'O')){vencedor = 2}

      numeroJogadas = numeroJogadas++
      
    }

    se(vencedor == 1){
		    escreva("\nA pessoa que escolheu (X) venceu!\n")
		}
		senao se(vencedor == 2){
		    escreva("\nA pessoa que escolheu (O) venceu!\n")
		}
		senao{
		    escreva("\nDeu VELHA! Jogue novamente!\n")
		}

  }
}
