
myLength :: [a] -> Int
myLength list = go list 0 where
  go (x:[]) i = i + 1
  go (x:xs) i = go xs (i+1)
