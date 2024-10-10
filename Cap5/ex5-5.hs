data Paridade = Par | Impar deriving (Show, Eq)

class ParImpar a where
    decide :: a -> Paridade

instance ParImpar Int where
    decide x = if even x then Par else Impar

instance ParImpar [a] where
    decide xs = if even (length xs) then Par else Impar

instance ParImpar Bool where
    decide False = Par
    decide True  = Impar
