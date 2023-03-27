import Data.Maybe

listAt :: [a] -> Int -> Maybe a
listAt [] _                    = Nothing
listAt (x:xs) n
  | n < 0 || n > length (x:xs) = Nothing
  | n == 1                     = Just x
  | otherwise                  = listAt xs (n-1)