import Data.List
ns = [11..99] :: [Int]
results = [(a, b) | a <- ns, b <-ns, a `rem` b == 0, a `div` b == cancel a b || b `div` a == cancel a b, noZeroes a] where
  noZeroes n = not ('0' `elem` (show n))

cancel :: Int -> Int -> Int
cancel a b = readDef ((show a) \\ (show b)) where
  readDef [] = 0
  readDef x = read x
 
