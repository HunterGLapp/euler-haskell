sumDigits n = sum  ((map (read . (:[])) (show  n)))

result = sumDigits (2 ^ 1000)
