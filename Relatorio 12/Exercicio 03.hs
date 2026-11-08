-- esboco com os compos nomeados
data Esboco = Esboco
  { titulo  :: String
  , tecnica :: String
  , horas   :: Int
  }

-- retorna o esboço mais recente 
esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []    = "Aviso: O caderno esta vazio"
esbocoMaisRecente (e:_) =
  "Mais recente: " ++ titulo e ++ " (" ++ tecnica e ++ ")"

-- conta o numero de esbocos
contarEsbocos :: [Esboco] -> Int
contarEsbocos []        = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

-- soma o total de horas
horasDesenhando :: [Esboco] -> Int
horasDesenhando []        = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  -- criando um caderno com 3 esbocos ( 1 o mais recente)
  let esboco1 = Esboco { titulo = "Tokyo", tecnica = "Lapis apontado", horas = 5 }
  let esboco2 = Esboco { titulo = "Gon rage", tecnica = "Grafite e borracha",  horas = 3 }
  let esboco3 = Esboco { titulo = "The fight",  tecnica = "Caneta e lapis", horas = 4 }

  let caderno = [esboco1, esboco2, esboco3]

  putStrLn " Caderno Original "
  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Total de esbocos: " ++ show (contarEsbocos caderno))
  putStrLn ("Total de horas: " ++ show (horasDesenhando caderno))

  putStrLn " Testando Caderno Vazio "
  putStrLn (esbocoMaisRecente [])

  let novoDesenho = Esboco { titulo = "Floresta de Cinzas", tecnica = "Nanquim", horas = 6 }
  let cadernoNovo = novoDesenho : caderno

  putStrLn " Comparando Caderno Novo e Caderno Anterior "
  putStrLn ("Novo -> " ++ esbocoMaisRecente cadernoNovo)
  putStrLn ("Novo (quantidade): " ++ show (contarEsbocos cadernoNovo))
  putStrLn ("Anterior -> " ++ esbocoMaisRecente caderno)
  putStrLn ("Anterior (quantidade): " ++ show (contarEsbocos caderno))

  -- teste do erro em tempo
  -- putStrLn (titulo (head []))
