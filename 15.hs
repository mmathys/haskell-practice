repli :: [a] -> Int -> [a]

repli list k = concatMap (\x -> (times' x k)) list where
  times' x 0 = []
  times' x i = times' x (i - 1) ++ [x]