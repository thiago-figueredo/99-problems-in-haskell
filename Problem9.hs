pack :: Eq a => [a] -> [[a]]
pack = foldr helper []
  where
    helper x [] = [[x]]
    helper x packs@(y : ys)
      | x == head y = (x : y) : ys
      | otherwise = [x] : packs