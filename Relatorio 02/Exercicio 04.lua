local function calcularMedia(n1, n2)
  return ((n1 + n2)/2)
end

local function encontrarMaior(n1, n2)
  if n1 > n2 then
    return n1
  else
    return n2
  end
end

local function calcularDiferencaAbsoluta(n1, n2)
  return math.abs(n1 - n2)
end

local function analisarNumeros(num1, num2, oper)
  if oper == "media" then
    return calcularMedia(num1, num2)
  elseif oper == "maior" then
      return encontrarMaior(num1, num2)
    elseif oper == "diferenca" then
      return calcularDiferencaAbsoluta(num1, num2)
      else
        return "Operação inválida!"
    end
  end

print("Digite o primeiro numero: ")
local num1 = tonumber(io.read())


print("Digite o segundo numero: ")
local num2 = tonumber(io.read())


print("Digite a operacao: ")
local oper = io.read()

local resultado = analisarNumeros(num1, num2, oper)

print("Resultado: " .. resultado)
