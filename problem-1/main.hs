import Data.Maybe

lst :: [a] -> Maybe a
lst []     = Nothing
lst [x]    = Just x
lst (_:xs) = lst xs