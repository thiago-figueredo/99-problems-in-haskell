dupli :: [a] -> [a]
dupli = foldr dupElement []
  where
    dupElement y [] = [y, y]
    dupElement y ys = [y, y] ++ ys
