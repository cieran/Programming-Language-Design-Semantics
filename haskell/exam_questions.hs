import Data.List

{- 2016 January -}
revCount :: [Char] -> [Int] -> [String]
revCount chars ints = reverse (repeater chars ints)
repeater chars ints = 
	if chars == []
		then []
	else
		replicate (head ints) (head chars) : repeater (tail chars)(tail ints)

{- 2014 January -}
mapEveryOther :: (a -> a) -> [a] -> [a]
mapEveryOther f list = zipWith ($) (cycle[f,id]) list

{- 2016 Autumn -}
tr :: [[a]]->[[a]]
tr ([]:_) = []
tr x = (map head x) : tr (map tail x)

afterFilter :: (a -> Bool) -> [a] -> [a]
afterFilter f [] = []
afterFilter f [x] = []
afterFilter f (x:y:xs) =
		let rest = afterFilter f (y:xs)
		in (if f x then y:rest else rest)

sorting :: (a -> a -> Bool) -> [a] -> [a]
sorting _ [] = []
sorting p (n:ns) =
    let left = sorting p (filter (p n) ns)
    	right = sorting p (filter (not . p n ) ns)
    in left ++ [n] ++ right


manus :: [Char] -> Int -> [String]
manus [] _ = []
manus chars n =
	replicate (n) (head chars) : manus (tail chars) (n+1)
