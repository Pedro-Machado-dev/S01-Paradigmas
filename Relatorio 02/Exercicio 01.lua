local function gerarTabelaPotencias(begin, stop, base)
  for i = begin, stop do
    print(base  .." ^ " .. i .. " = " .. (base ^ i))
    end
end


print("Insira o expoente inicial:")

local inicio = tonumber(io.read())


print("Insira o expoente final:")
local final = tonumber(io.read())

print("Insira a base:")
local base = tonumber(io.read())

gerarTabelaPotencias(inicio, final, base)
