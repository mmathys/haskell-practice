isPalindrome :: Eq a => [a] -> Bool

isPalindrome a = allEqual a (reverse a) where
  allEqual (x:xs) (y:ys)
    | x == y = allEqual xs ys
    | otherwise = False
  allEqual [] [] = True