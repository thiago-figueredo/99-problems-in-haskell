data NestedList a = Elem a | List [NestedList a]

instance Foldable NestedList where
  foldMap f (Elem x) = f x
  foldMap f (List xs) = foldMap (foldMap f) xs

flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem x) = [x]
flatten xs = foldl (\list x -> list ++ [x]) [] xs