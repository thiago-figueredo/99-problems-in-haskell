compress :: Eq a => [a] -> [a]
compress = foldr skipIfEqual []
  where
    skipIfEqual x [] = [x]
    skipIfEqual x compressed_list@(y : ys)
      | y == x = compressed_list
      | otherwise = x : compressed_list