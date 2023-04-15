import Problem11 (Element (Multiple, Single))

decodeElement (1, x) = Single x
decodeElement (n, x) = Multiple n x

runLengthEncodeDirect :: Eq a => [a] -> [Element a]
runLengthEncodeDirect = map decodeElement . foldr encodeDirect []
  where
    encodeDirect x [] = [(1, x)]
    encodeDirect x (y@(count, el) : ys)
      | x == el = (1 + count, el) : ys
      | otherwise = (1, x) : y : ys
