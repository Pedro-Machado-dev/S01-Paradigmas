-- tipo etapa com opcoes
data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

--tipo atendimento com campos nomeados
data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor   :: Double
  , etapa   :: Etapa
  }

descrever :: Atendimento -> String
descrever a =
  cliente a ++ " - " ++ servico a ++ " (" ++ show (etapa a) ++ ")"

--cria um atendimento novo
concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

-- soma o valor dos atendimentos concluidos
arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\a -> etapa a == Concluido) atendimentos))

main :: IO ()
main = do
  -- instanciando 3 atendimentos iniciais
  let atend1 = Atendimento { cliente = "Kurapika", servico = "Banho imperial",  valor = 500.0, etapa = NoBanho }
  let atend2 = Atendimento { cliente = "Guts",       servico = "Banho de pedras",  valor = 800.0, etapa = NaFila  }
  let atend3 = Atendimento { cliente = "Thorfinn",   servico = "Vapor Relaxante", valor = 150.0, etapa = NoBanho }

  let listaOriginal = [atend1, atend2, atend3]

  let listaAtualizada = [concluir atend1, atend2, concluir atend3]

  -- exibindo as 2 listas e o total arrecadado em cada uma
  putStrLn " Atendimentos "
  mapM_ putStrLn (map descrever listaOriginal)
  putStrLn ("Arrecadado na original: R$ " ++ show (arrecadado listaOriginal))

  putStrLn " Atendimentos "
  mapM_ putStrLn (map descrever listaAtualizada)
  putStrLn ("Arrecadado na atualizada: R$ " ++ show (arrecadado listaAtualizada))

  putStrLn " Conferindo se a Lista Original continuou igual "
  mapM_ putStrLn (map descrever listaOriginal)
