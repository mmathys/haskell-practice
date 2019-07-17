slice :: [a] -> Int -> Int -> [a]

slice list a b = take (b-a+1) (drop (a-1) list)