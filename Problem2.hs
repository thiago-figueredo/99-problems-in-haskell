import Data.Maybe

lastButOne :: [a] -> Maybe a
lastButOne []          = Nothing
lastButOne [x]         = Nothing
lastButOne [x1, x2]    = Just x1
lastButOne (_:xs)      = lastButOne xs