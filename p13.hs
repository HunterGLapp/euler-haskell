result :: IO String
result = do
  file <- readFile "p13nums"
  let strings = lines file
  let nums = (map read strings)
  let ans = take 10 (show (sum nums))
  return ans


