import Problem9 (pack)

runLengthEncode :: Eq a => [a] -> [(Int, a)]
runLengthEncode xs = map (\x -> (length x, head x)) $ pack xs