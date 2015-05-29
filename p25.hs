fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)

numDigits :: Integer -> Int
numDigits n = length (show n)



result = length (takeWhile shortish fibs) + 1 where
  shortish n = (numDigits n /= 1000)
