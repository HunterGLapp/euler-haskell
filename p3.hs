--naive, brute force implementation
prime_factors n =
  case factors of
    [] -> [n]
    _  -> factors ++ prime_factors (n `div` (head factors))
  where factors = take 1 $ filter (divides n) possible where
          possible = 2 : [3, 5 .. floor(sqrt (fromInteger n))]
          divides n x = (n `mod` x == 0)

result n = maximum (prime_factors n)
