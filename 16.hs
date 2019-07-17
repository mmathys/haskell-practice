dropEvery :: [a] -> Int -> [a]

dropEvery list k = go [] list 1 where
  go res [] _ = res
  go res (x:xs) i
    | (i `mod` k) == 0 = go res xs (i+1)
    | otherwise = [x] ++ go res xs (i+1)