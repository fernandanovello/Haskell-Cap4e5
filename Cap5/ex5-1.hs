data TipoProduto = Escritorio | Informatica | Livro | Filme | Total deriving (Show, Eq)

data Produto = Produto { valor :: Double, tp :: TipoProduto } 
             | Nada 
             deriving (Show, Eq)

instance Semigroup Produto where
    (Produto v1 _) <> (Produto v2 _) = Produto (v1 + v2) Total
    Nada <> p = p
    p <> Nada = p

instance Monoid Produto where
    mempty = Nada
