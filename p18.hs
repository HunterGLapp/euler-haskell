getArr :: IO [[Int]]
getArr = do
  contents <- readFile "p18data"
  let myLines = lines contents
  let myWords = map words myLines
  let myInts = (map (map read) myWords)
  return myInts

nextIndices :: (Int, Int) -> [(Int, Int)]
nextIndices (row, col)
  |row == 14 = []
  |otherwise = [(row + 1, col), (row + 1, col + 1)]


start = (0, 0)

getIndexVal :: (Int, Int) -> [[Int]] -> Int
getIndexVal (row, col) arr = (arr !! row) !! col

maxPathSum :: (Int, Int) -> [[Int]] -> Int
maxPathSum startC arr = getIndexVal startC arr + maximum' (map ($ arr) (map maxPathSum (nextIndices startC))) where
  maximum' [] = 0
  maximum' x = maximum x

main = do
  arr <- getArr
  let result = maxPathSum start arr
  return result
  
