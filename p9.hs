triplets = [(a, b, c) | a <- nats, b <- nats, c <- nats, a ^ 2 + b ^ 2 == c ^ 2, a + b + c == 1000] where nats = [1..1000]

result = prod3 (head triplets) where
  prod3 (a, b, c) = a * b * c
