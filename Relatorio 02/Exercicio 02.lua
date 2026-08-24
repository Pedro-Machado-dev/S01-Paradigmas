local tabela= {}
local cont = 0

local function contarOcorrencias(tabela, alvo)
    for i=1, #tabela do
    if tabela[i] == alvo then 
      cont = cont + 1
    end
  end  

  return cont

  
end

print("Insira a quantidade de elementos:")
local elementos = tonumber(io.read())

for i = 1, elementos do
  print("Digite o elemento " .. i)
  table.insert(tabela, tonumber(io.read()))
  end 


print("Insira um numero a ser buscado")
local procurado = tonumber(io.read())

local ocorrencias = contarOcorrencias(tabela, procurado)

if ocorrencias ~= 0 then 
    print("O numero " .. procurado .. " aparece " .. ocorrencias .. " vez(es) na tabela")
  end
