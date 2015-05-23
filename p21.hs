result = sum [m+n | m <- [1..10000], let n = divisorsSum m, amicable m n]
    where amicable m n = m < n && n < 10000 && divisorsSum n == m
          divisorsSum n  = sum (divisors n)
          divisors n = [j | j <- [1..n `div` 2], n `mod` j == 0]
