sumSquares n = sum (map (\x -> x ^ 2) [1 .. n])

squareSum n = (sum [1 .. n]) ^ 2

difference n = squareSum n - sumSquares n

result = difference 100
