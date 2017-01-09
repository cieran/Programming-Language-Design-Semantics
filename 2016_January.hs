{- 2016 January Q2 -}
revCount :: [Char] -> [Int] -> [String]
revCount chars ints = reverse (repeater chars ints)
repeater chars ints = 
    if chars == []
        then []
    else
        replicate (head ints) (head chars) : repeater (tail chars)(tail ints)

{- 2014 January Q2 -}
-- mapEveryOther(+1000)[0,1,2,3,4,5,6] => [1000, 1, 1002, 3, 1004, 5, 1006]
mapEveryOther :: (a->a) -> [a] -> [a]
mapEveryOther f list =
	zipWith($) (cycle [f, id]) list



{-
data Mebe a = Nada | Gotta a
	deriving (Eq, Show)

data Either a b = Left a | Right b
	deriving (Eq, Show)
find :: (a -> Bool)  -> [a] -> Mebe a
find f [] = Nada
find f (x:xs) = if f x
					then Gotta x
					else find f xs
-}