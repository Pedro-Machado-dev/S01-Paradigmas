pesoMaximo :: Double
pesoMaximo = 10.0
-- pesoMaximo = 15.0 -- se descomentar esta linha, o programa nao roda

data Encomenda = Encomenda
  { destinatario :: String
  , peso         :: Double
  , frete        :: Double
  }

descrever :: Encomenda -> String
descrever e =
  destinatario e ++ " - Peso: " ++ show (peso e) ++ " kg - Frete: R$ " ++ show (frete e)

-- filtra as encomendas que nãao ultrapassam o pesoMaximo
cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas =
  filter (\e -> peso e <= pesoMaximo) encomendas

-- calcula a soma dos fretes
totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas =
  sum (map frete encomendas)

-- main
main :: IO ()
main = do
  let enc1 = Encomenda { destinatario = "Gon ", peso = 4.5,  frete = 15.0 }
  let enc2 = Encomenda { destinatario = "Eren ",           peso = 12.0, frete = 30.0 }
  let enc3 = Encomenda { destinatario = "Ippo ",    peso = 8.0,  frete = 22.5 }
  let enc4 = Encomenda { destinatario = "Guts ",          peso = 15.5, frete = 40.0 }
  let enc5 = Encomenda { destinatario = "Tanjiro ",             peso = 2.0,  frete = 10.0 }

  let todasEncomendas = [enc1, enc2, enc3, enc4, enc5]
  let encomendasPossiveis = cabemNaVassoura todasEncomendas

  putStrLn " Todas as encomendas do dia "
  mapM_ putStrLn (map descrever todasEncomendas)

  putStrLn " Encomendas que cabem na vassoura "
  mapM_ putStrLn (map descrever encomendasPossiveis)

  let total = totalDeFretes encomendasPossiveis
  putStrLn ("Total de fretes das que cabem: R$ " ++ show total)
