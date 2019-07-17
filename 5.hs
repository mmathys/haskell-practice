

myReverse :: [a] -> [a]
myReverse list = rev list [] where
  rev [] res = res
  rev (x:xs) res = rev xs (x:res)