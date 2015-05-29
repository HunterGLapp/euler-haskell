import Data.List

result :: Int
result = read (concat (map show ((sort (permutations [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])) !! (999999))))
