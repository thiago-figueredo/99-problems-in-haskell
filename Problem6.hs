import Problem5 (reverseList)

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = reverseList xs == xs
