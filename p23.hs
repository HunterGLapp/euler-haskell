import Data.List
data NumStatus = Deficient | Perfect | Abundant deriving (Show, Eq)

status :: Integer -> NumStatus
status n
  |sum (divisors n) < n = Deficient
  |sum (divisors n) == n = Perfect
  |sum (divisors n) > n = Abundant where
    divisors n = filter (divides n) [1 .. n `div` 2] where
      divides n m = n `mod` m == 0
      
isAbundant :: Integer -> Bool
isAbundant n = status n == Abundant

abundants = filter isAbundant nats where nats = [1..]
                                      
sumOfAbundants = [(x + y) | x <- abundants, y <- abundants, x + y < 28123]

result = sum ((\\) [x | x <- [1 .. 28123]]  sumOfAbundants)
