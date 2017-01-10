-- A collection of questions and sample answers from https://wiki.haskell.org/99_questions/1_to_10

concat :: [[a]] -> [a]
concat xss = foldr (++) [] xss

-- Find the last element of a list
-- myLast[1,2,3,4] -> 4
-- myLast['x', 'y', 'z'] -> 'z'
myLast :: [a] -> a
myLast [] = error "empty"
myLast [x] = x
myLast (_:xs) = myLast xs


-- Find the number of elements in a list
-- myLength[123, 456, 789] -> 3
-- myLength "Hello, World!" -> 13
myLengthUsingCount :: [a] -> Int
myLengthUsingCount [] = 0
myLengthUsingCount (_:xs) = 1 + myLengthUsingCount xs

myLengthUsingFoldr :: [a] -> Int
myLengthUsingFoldr [] = 0
myLengthUsingFoldr xs = foldr (\_ n -> 1 + n) 0 xs

myLengthUsingMap :: [a] -> Int
myLengthUsingMap = sum . map (\_->1)

-- Find the kth element of a list, first element is 1.
-- elementAt[1,2,3] 2 -> 2
-- elementAt "haskell" 5 -> 'e'
elementAt :: [a] -> Int -> a
elementAt [] _ = error "empty"
elementAt list i = list !! (i-1)

-- Reverse a list
-- myReverse [1,2,3,4] -> [4,3,2,1]
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- Find out if a list is palindromic
-- isPalindrome [1,2,3] -> False
-- isPalindrom "navan" -> True
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = False
isPalindrome [x] = False
isPalindrome x =
	(reverse x) == x

-- Duplicate the elements of a list
-- duplicate [1,2,3] -> [1,1,2,2,3,3]
duplicate [] =[]
duplicate (x:xs) =
	x:x:duplicate xs















