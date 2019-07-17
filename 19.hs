rotate' list 0 = list
rotate' (x:xs) k = rotate' (xs ++ [x]) (k-1)

rotate :: [a] -> Int -> [a]
rotate list k
  | k == 0 = list
  | k > 0 = rotate' list k
  | k < 0 = rotate' list ((length list) + k)

