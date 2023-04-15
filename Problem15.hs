repli :: [a] -> Int -> [a]
repli xs n = concatMap (replicate n) xs
