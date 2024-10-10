ehPrimo :: Int -> Bool
ehPrimo n = null [x | x <- [2..n-1], n `mod` x == 0]

filtraPrimos :: [Int] -> [Int]
filtraPrimos = filter ehPrimo
