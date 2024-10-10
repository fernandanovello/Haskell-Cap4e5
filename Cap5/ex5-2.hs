somaSePositivo :: (Num a, Ord a) => a -> a -> a
somaSePositivo x y = if x > 0 && y > 0 then x + y else 0
