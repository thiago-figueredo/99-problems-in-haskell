-- this implementation uses a helper tail recursive helper function to optimize the performance
size :: [a] -> Int
size []     = 0
size [x]    = 1
size (x:xs) = size' xs 0 where 
  size' :: [a] -> Int -> Int
  size' [] n     = n+1
  size' (x:xs) n = size' xs (n+1)