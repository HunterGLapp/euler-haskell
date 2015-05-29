powSum :: Int -> Int
powSum n =sum (map (^ 5) (digits n)) where
  digits =  map (read . (:[])) . show

isSpecial n = powSum n == n

specialNums = filter isSpecial [2..400000]

result = sum specialNums
