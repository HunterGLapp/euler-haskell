
result stop = sum (filter isMult [1..(stop - 1)]) where
  isMult x = or [((x `mod` 3) == 0), ((x `mod` 5) == 0)]
