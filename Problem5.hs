module Problem5 (reverseList) where

reverseList :: [a] -> [a]
reverseList [] = []
reverseList [x] = [x]
reverseList [x1, x2] = [x2, x1]
reverseList (x : xs) = reverseList xs ++ [x]