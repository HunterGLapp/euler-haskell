fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)

result upto = sum (filter isEven (takeWhile (<= upto) fibs)) where
  isEven n = (n `mod` 2) == 0
