programa
{
	inclua biblioteca Arquivos --> a
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{    
	     
	     escrever_arq()
		ler_arq()
	}
	funcao ler_arq(){
		cadeia linha = ""
		inteiro arq = a.abrir_arquivo("./clientes.txt", a.MODO_LEITURA)

		enquanto(nao a.fim_arquivo(arq)){
			linha = a.ler_linha(arq)
			escreva(linha, "\n")
		}
		a.fechar_arquivo(arq)
	}
	funcao escrever_arq(){
		inteiro arq = a.abrir_arquivo("./clientes.txt", a.MODO_ACRESCENTAR)
	     cadeia nascimento = " "
	     cadeia nome 
	     cadeia cidade 
	     cadeia estado
	     cadeia informacoes
	     escreva("Informe sua data de nascimento (no formato dd/mm/aaaa): ")
	     leia(nascimento)
	     escreva("Informe seu nome completo: ")
		leia(nome)
		nome = t.caixa_alta(nome)
		escreva("Informe sua cidade: ")
		leia(cidade)
		cidade = t.caixa_alta(cidade)
		escreva("Informe seu estado (ex: PR): ")
		leia(estado) 
		estado = t.caixa_alta(estado)
		informacoes = nascimento +  " ; "+ nome + " ;" + cidade + " ; " + estado
		a.escrever_linha(informacoes, arq)
		a.fechar_arquivo(arq)
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1073; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */