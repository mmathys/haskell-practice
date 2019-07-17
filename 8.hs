compress :: Eq a => [a] -> [a]
compress [] = []
compress (x:xs) = compress' x [x] xs where
  compress' _ res [] = res
  compress' cur res (x:xs)
    | x == cur = compress' x res xs
    | otherwise = compress' x (res ++ [x]) xs