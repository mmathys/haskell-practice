-- from 9.hs
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (a:as) = pack' [a] [] as where
  pack' cur res [] = res ++ [cur]
  pack' (c:cs) res (x:xs)
    | c == x = pack' (x:c:cs) res xs
    | otherwise = pack' [x] (res ++ [(c:cs)]) xs
  
-- real 10
encode list = map (\(x:xs) -> ((1 + length xs), x)) (pack list)