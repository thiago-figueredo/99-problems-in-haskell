-- This implementation is not optimized because can have stack overflow
size :: [a] -> Int
size []     = 0
size [x]    = 1
size (x:xs) = 1 + size xs