data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado deriving (Eq, Show)

filtraTerca :: [Dia] -> [Dia]
filtraTerca = filter (== Terca)
