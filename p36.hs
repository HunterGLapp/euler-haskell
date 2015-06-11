isPalindrome :: Eq a => [a] -> Bool
isPalindrome w = w == reverse w


toBinary :: Int -> String
toBinary 0 = "0"
toBinary n = tail (toBinary' n)

toBinary' :: Int -> String
toBinary' 0 =  "0"
toBinary' n = toBinary' (n `quot` 2) ++  show (n `rem` 2) 

isCandidate n = and (map isPalindrome [show n, toBinary n])

result = sum (filter isCandidate [1 .. 999999])
