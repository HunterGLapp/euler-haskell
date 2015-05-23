import Data.List

triangleNums :: [Int]
triangleNums = scanl1 (+) [1..]

divisors :: Int -> [Int]
divisors n = lowFactors ++ (reverse (map (div n) lowFactors))
    where lowFactors =  [m | m <- [1.. truncate (sqrt (fromIntegral n))], n `mod` m == 0]

numberFound :: Int -> Bool
numberFound n = length (divisors n) > 500

result :: Int
result = head (filter (numberFound) triangleNums)
