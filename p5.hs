divides n m = m `mod` n == 0

fns = map divides [11 .. 20]

divByAll n = and (map ($ n) fns)

result = head (filter divByAll [1 ..])
