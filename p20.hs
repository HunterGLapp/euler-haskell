fact :: Integer -> Integer
fact n = product [1..n]

sumDigits :: Integer -> Integer
sumDigits n = sum (map (read . return) (show n)) 

result = sumDigits (fact 100)
