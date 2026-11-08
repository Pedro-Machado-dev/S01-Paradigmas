
-- Ttpo cafe com campos posicionais
data Cafe = Cafe String Double Int

-- descricao
descrever :: Cafe -> String
descrever (Cafe nome preco _) =
  nome ++ " - R$ " ++ show preco

-- classifica
forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"

-- calcula o preco
precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) =
  if comLeite
    then preco + 2.0
    else preco

-- main
main :: IO ()
main = do
  -- criando 3 cafes, um em cada faixa 
  let cafeSuave       = Cafe "Cafezinho" 8.5 3
  let cafeEquilibrado = Cafe "Cafe" 12.0 6
  let cafeForte       = Cafe "Cafezao" 10.0 9

  putStrLn " Descricao dos Cafes "
  putStrLn (descrever cafeSuave)
  putStrLn (descrever cafeEquilibrado)
  putStrLn (descrever cafeForte)

  putStrLn " Forca dos Cafes "
  putStrLn (forca cafeSuave)
  putStrLn (forca cafeEquilibrado)
  putStrLn (forca cafeForte)

  putStrLn " Preco do Expresso Leblanc "
  print (precoDoPedido True cafeForte)
  print (precoDoPedido False cafeForte)
