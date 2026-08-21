# Pedro Henrique Silva Machado GES - 805

--

Usei IA para saber como realizar uma parte do exercicio 2

-como se cria uma tabela em lua?

--{
Para criar uma tabela vazia em Lua (que servirá como o seu vetor), você usa apenas chaves {}.

local vetor = {}

-- table.insert(nome_da_tabela, valor_a_ser_adicionado)
table.insert(vetor, 15) -- Adiciona o número 15 na primeira posição
table.insert(vetor, 30) -- Adiciona o número 30 na segunda posição
}

-{
for i = 0, elementos do

  table.insert(estrutura, tonumber(io.read())

  end 

posso ler desse jeito?
}

--{
Lua começa a contar do 1 (e não do 0): Diferente de linguagens como C ou C++, os vetores (tabelas) em Lua começam no índice 1. Se o usuário pedir 5 elementos e você fizer de 0 a 5, o seu loop vai rodar 6 vezes. O correto é for i = 1, elementos do.

Falta de um parêntese: Você abriu dois parênteses em table.insert( e tonumber(, mas só fechou o do io.read(). Falta fechar o do insert.
}
