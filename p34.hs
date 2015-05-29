fact :: Integer -> Integer
fact 0 = 1
fact n = product [1..n]

myFact = map fact [0..9]

getFact :: Int -> Integer
getFact n = myFact !! n

digits :: Integer -> [Int]
digits n = map (read . (:[])) (show n)

factSum n = sum (map getFact (digits n))

isSpecial n = n == factSum n && length (digits n) > 1

specialNums = filter isSpecial [1..2000000]

result = sum specialNums

main = putStrLn (show result)
