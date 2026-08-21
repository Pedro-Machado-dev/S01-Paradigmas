local tabela = {}


local function filtrarMaiores(tabela, limit) 
  
  local tabelamaior = {}
  
  for i = 1, #tabela do
    if tabela[i] > limit then
      table.insert(tabelamaior, tabela[i])
    end
  end

  return tabelamaior
end
  

print("Insira a quantidade de elementos:")
local elementos = tonumber(io.read())

for i = 1, elementos do
  print("digite o elemento " .. i)
  table.insert(tabela, tonumber(io.read()))
  end 

print("Digite o número limite:")
local limit = tonumber(io.read())

local tabelabig = filtrarMaiores(tabela, limit)

print("Elementos maiores que " .. limit)

if #tabelabig == 0 then
    print("Nao tem elementos maiores.")
else
    for i = 1, #tabelabig do
        print(tabelabig[i])
    end
end
