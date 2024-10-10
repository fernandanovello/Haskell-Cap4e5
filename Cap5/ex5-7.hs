data Arvore a = Nula | Folha a | Raiz a (Arvore a) (Arvore a) deriving (Show)

mapa :: (a -> b) -> Arvore a -> Arvore b
mapa _ Nula = Nula
mapa f (Folha x) = Folha (f x)
mapa f (Raiz x esq dir) = Raiz (f x) (mapa f esq) (mapa f dir)
