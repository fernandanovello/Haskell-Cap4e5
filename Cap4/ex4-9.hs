contaNegativos :: [Int] -> Int
contaNegativos = foldl (\acc x -> if x < 0 then acc + 1 else acc) 0

contaLetraP :: String -> Int
contaLetraP = foldl (\acc c -> if c == 'P' then acc + 1 else acc) 0
