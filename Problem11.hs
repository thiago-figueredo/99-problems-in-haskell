import Problem9 (pack)

data Element a = Multiple Int a | Single a deriving (Show)

runLengthEncodeModified :: Eq a => [a] -> [Element a]
runLengthEncodeModified xs = map func (pack xs)
  where
    func [y] = Single y
    func ys = Multiple (length ys) (head ys)