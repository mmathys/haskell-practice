split :: [a] -> Int -> ([a], [a])

split list k = (take k list, drop k list)