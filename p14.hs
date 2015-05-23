import Data.Ord
import Data.List

collatzStep :: Int -> Int
collatzStep n
  | n == 1 = 1
  |even n = n `div` 2
  |otherwise = 3 * n + 1 where
    even n = n `mod` 2 == 0

collatzSeq :: Int -> [Int]
collatzSeq = iterate collatzStep

collatzSeqT :: Int -> [Int]
collatzSeqT n = takeWhile (/= 1) (iterate collatzStep n) ++ [1]

collatzLength n = length (collatzSeqT n)

nums = [1..1000000 - 1]
lengths = map collatzLength nums

together = zip nums lengths

maxIndex = fst . maximumBy (comparing snd)

result = maxIndex together

