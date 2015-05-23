isPalindrome :: Eq a => [a] -> Bool
isPalindrome w = w == reverse w

possible = [(x * y) | x <- factors, y <- factors] where
  factors = [100 .. 999]

palindromes = filter (isPalindrome.show) possible

result = maximum palindromes
