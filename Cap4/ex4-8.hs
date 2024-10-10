data Correncia = Real | Dolar deriving (Eq, Show)
data Dinheiro = Dinheiro { valor :: Double, correncia :: Correncia } deriving (Show)

converteParaDolar :: Dinheiro -> Dinheiro
converteParaDolar (Dinheiro v Real) = Dinheiro (v / 5.0) Dolar  -- Exemplo de conversão
converteParaDolar d = d

converteParaReal :: Dinheiro -> Dinheiro
converteParaReal (Dinheiro v Dolar) = Dinheiro (v * 5.0) Real
converteParaReal d = d

converterListaParaDolar :: [Dinheiro] -> [Dinheiro]
converterListaParaDolar = map converteParaDolar

converterListaParaReal :: [Dinheiro] -> [Dinheiro]
converterListaParaReal = map converteParaReal
