getString :: Int -> String
getString 0 = ""
getString 1 = "one"
getString 2 = "two"
getString 3 = "three"
getString 4 = "four"
getString 5 = "five"
getString 6 = "six"
getString 7 = "seven"
getString 8 = "eight"
getString 9 = "nine"
getString 10 = "ten"
getString 11 = "eleven"
getString 12 = "twelve"
getString 13 = "thirteen"
getString 14 = "fourteen"
getString 15 = "fifteen"
getString 16 = "sixteen"
getString 17 = "seventeen"
getString 18 = "eighteen"
getString 19 = "nineteen"
getString 20 = "twenty"
getString 30 = "thirty"
getString 40 = "forty"
getString 50 = "fifty"
getString 60 = "sixty"
getString 70 = "seventy"
getString 80 = "eighty"
getString 90 = "ninety"
getString 1000 = "onethousand"

getString n
  | n < 100 = (getString (n - (n `mod` 10))) ++ (getString (n `mod` 10))
  | n `mod` 100 == 0 = (getString ((n - n `mod` 100) `div` 100)) ++ "hundred"
  | n < 1000 = (getString ((n - n `mod` 100) `div` 100) ++ "hundredand" ++ getString (n `mod` 100))

result = length (concat (map getString [1..1000]))
