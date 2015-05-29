import Data.List
pandigital :: Int -> Bool
pandigital n = show n == nub (show n) && and (map ($ (show n)) (map elem ['1'..'9'])) && not (elem '0' (show n))

prod n m = concat (map show (map (*n) [1..m]))

prods :: Int -> [String]
prods n = map (prod n) [1..8]

pandigitals :: Int -> [Int]
pandigitals n
  |show n /= nub (show n) = []
  |otherwise = filter pandigital (map read (prods n))

result = maximum (concat (map pandigitals [1..99999]))

