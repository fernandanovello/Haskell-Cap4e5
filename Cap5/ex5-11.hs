preOrdem :: Arvore a -> [a]
preOrdem Nula = []
preOrdem (Folha x) = [x]
preOrdem (Raiz x esq dir) = [x] ++ preOrdem esq ++ preOrdem dir

posOrdem :: Arvore a -> [a]
posOrdem Nula = []
posOrdem (Folha x) = [x]
posOrdem (Raiz x esq dir) = posOrdem esq ++ posOrdem dir ++ [x]
