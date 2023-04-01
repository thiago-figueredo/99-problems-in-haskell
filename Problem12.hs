module Problem12 (decodeElement) where

import Problem11 (Element (Multiple, Single))

decodeModified :: Eq a => [Element a] -> [a]
decodeModified = foldr decode []
  where
    decode x acc = case decodeElement x of
      Left c -> c : acc
      Right xs -> xs ++ acc

decodeElement :: Eq a => Element a -> Either a [a]
decodeElement (Single c) = Left c
decodeElement (Multiple n c) = Right (replicate n c)