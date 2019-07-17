removeAt :: Int -> [a] -> (a, [a])

removeAt k (x:xs) = removeAt' x k [] (x:xs) where
  removeAt' t _ res [] = (t, res)
  removeAt' t i res (x:xs)
    | i == 1    = removeAt' x (i - 1) res xs
    | otherwise = removeAt' t (i - 1) (res ++ [x]) xs