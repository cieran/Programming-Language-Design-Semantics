import Data.List
import System.IO

-- basic operations
maxInt = maxBound :: Int
bigFloat = 3.99999999 + 0.000000005
sumOfNums = sum [1..1000]
addEx = 5 + 4
multEx = 5 * 4
modEx = mod 5 4
modEx2 = 5 `mod` 4
negNumEx = 5 + (-4)
num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

-- lists
listA = [1, 2, 3, 4, 5]
listB = [2, 3, 4, 5, 6]
primeNumbers = [3, 5, 7, 11]
morePrimes = primeNumbers ++ [13, 17, 19, 23, 29]
favNums = 2 : 7 : 21 : 66 : []
multList = [[3, 5, 7], [11, 13, 17]]
morePrimes2 = 2 : morePrimes
lenPrime = length morePrimes2
revPrime = reverse morePrimes2
isListEmpty = null morePrimes2
secondPrime = morePrimes2 !! 1
firstPrime = head morePrimes2
lastPrime = last morePrimes2
primeInit = init morePrimes2
first3Primes = take 3 morePrimes2
removedPrimes = drop 3 morePrimes2
is7InList = 7 `elem` morePrimes2
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2
newList = [2, 3, 5]
prodPrimes = product newList
zeroToTen = [0..10]
evenList = [2,4..50]
letterList = ['A', 'B' ..'Z']
{-	it's probably best not to run this..
	infinPow10 = [10,20..]
-}
many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycleList = take 10 (cycle [1, 2, 3, 4, 5])
listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]
sortedList = sort[9, 1, 7, 3, 8, 6]
sumOfLists = zipWith (+) listA listB
listBiggerThan5 = filter (>5) listB
evensUpTo20 = takeWhile (<=20) [2, 4..]
oddsUpTo50 = takeWhile (<=50) [1, 3..]
multOfList = foldl (*) 2 [2, 3, 4, 5]
multOfList2 = product [2, 3, 4, 5]

--list comprehension
pow3List = [3^n | n <- [1, 2, 3, 4, 5]]
multTable = [[x*y | y<-[1..10]] | x <- [1..10]]

--tuples
randTuple = (1, "Random Tuple")
bobSmith = ("Bob Smith", 52)
bobsName = fst bobSmith
bobsAge = snd bobSmith
names = ["Bob", "Mary", "Tom"]
location = ["DUB", "DON", "KER"]
rev_location = reverse location
namesNLocation = zip names rev_location

--functions
addMe :: Int -> Int -> Int
addMe x y = x + y
multMe x y = x * y
addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)
multTuples (x, y) (x2, y2) = (x * x2, y * y2)

whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
whatAge _ = "Nothing Important..."

--recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n-1)
prodFact n = product [1..n]

isOdd :: Int -> Bool
isOdd n
	| n `mod` 2 == 0 = False
	| otherwise = True

isEven n = n `mod` 2 == 0

whatGrade :: Integer -> String

whatGrade age
	| (age >= 5) && (age <=6) = "Kindergarten"
	| (age > 6) && (age <=10) = "Elementary School"
	| (age > 10) && (age <= 14) = "Middle School"
	| (age > 14) && (age <=18) = "High School"


batAvgRating :: Double -> Double -> String

batAvgRating hits atBats
	| avg <= 0.200 = "terrible"
	| avg <= 0.250 = "average"
	| avg <= 0.280 = "pretty good"
	| otherwise = "fab hun"
	where avg = hits/atBats

getListItems :: [Int] -> String
getListItems [] = "Empty List.."
getListItems (x:[]) = "Your list starts with.. " ++ show x
getListItems (x:y:[]) = "List contains.. " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "First item is " ++ show x ++ " and the rest are.. " ++ show xs

getFirstItem :: String -> String
getFirstItem [] = "Empty"
getFirstItem all@(x:xs) = "First letter in " ++ all ++ " is " ++ [x]


--higher order functions
times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1,2,3,4,5]
multby4 :: [Int] -> [Int]
multby4 [] = []
multby4 (x:xs) = times4 x : multby4 xs

areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

doMult :: (Int -> Int) -> Int
doMult func = func 3
num3Times4 = doMult times4

getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y
adds3 = getAddFunc 3
fourPlus3 = adds3 4

threePlusList = map adds3 [1,2,3,4,5]
dbl1to10 = map (\x -> x*2) [1..10]

doubleEvenNumber y =
 	if (y `mod` 2 /= 0)
 		then y
 	else y*2

getClass :: Int -> String
getClass n = case n of
	5 -> "Kindergarten"
	6 -> "Elementary"
	_ -> "Go away"


--enumerated types
data BaseballPlayer = Pitcher 
					| Catcher
					| Infielder
					| Outfield
				deriving (Show, Eq)

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True
barryInOF = print(barryBonds Outfield)

--custom types
data Customer = Customer String String Double
				deriving (Show, Eq)

tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Main" 20.50
cieranNeeson :: Customer
cieranNeeson = Customer "Cieran Neeson" "31 Cluain Aoibhinn" 20000.11

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

data RockPaperScissors = Rock | Paper | Scissors
shoot :: RockPaperScissors -> RockPaperScissors -> String
shoot Paper Rock = "Paper Wins!"
shoot Rock Paper = "Paper Wins!"
shoot Paper Scissors = "Scissors Wins!"
shoot Scissors Paper = "Scissors Wins!"
shoot Scissors Rock = "Rock Wins!"
shoot Rock Scissors = "Rock Wins!"
shoot Scissors Scissors = "Draw"
shoot Paper Paper = "Draw"
shoot Rock Rock = "Draw"
shoot _ _ = "Error"

data Shape = Circle Float Float Float
			| Rectangle Float Float Float Float
			deriving (Show, Eq)

area :: Shape -> Float
area (Circle _ _ r) = pi * r^2
area (Rectangle x y x2 y2) = (abs (x2 - x)) * (abs (y2 -y))
-- to eliminate parenthesis, use the $, anything after $ takes precedence to anything before the $
-- area (Rectangle x y x2 y2) = (abs $ x2 - x) * (abs $ y2 -y)

sumValue = putStrLn (show (1 + 2))
sumValue2 = putStrLn . show $ 1 + 2

areaOfCircle = area (Circle 50 60 20)
areaOfRect = area $ Rectangle 10 10 100 100

data Employee = Employee{ 	name :: String,
							position :: String,
							idNum :: Int
						}
						deriving(Show, Eq)

samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 2131}
pamMarx = Employee {name = "Pam Marx", position = "Sales", idNum = 2132}

isSamPam = samSmith == pamMarx
samSmithData = show samSmith

data ShirtSize = S | M | L

instance Eq ShirtSize where
	S == S = True
	M == M = True
	L == L = True
	_ == _ = False

instance Show ShirtSize where
	show S = "Small"
	show M = "Medium"
	show L = "Large"

smallAvail = S `elem` [S, M, L]
theSize = show S

class MyEq a where
	areEqual :: a -> a-> Bool

instance MyEq ShirtSize where
	areEqual S S = True
	areEqual M M = True
	areEqual L L = True
	areEqual _ _ = False


newSize = areEqual M M

-- some random stuff on read/write from files | unneccessary but interesting
sayHello = do
	putStrLn "What's yo name?"
	name <- getLine
	putStrLn $ "Hello " ++ name

writeToFile = do
	theFile <- openFile "test.txt" WriteMode
	putStrLn "What would you like to input?"
	textToEnter <- getLine
	hPutStrLn theFile textToEnter
	hClose theFile

readFromFile = do
	theFile2 <- openFile "test.txt" ReadMode
	contents <- hGetContents theFile2
	putStr contents
	hClose theFile2


fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]
nthFib :: Int -> Int
nthFib n = fib !! n

listOfFib :: Int -> [Int]
listOfFib n = take n fib


{- 2016 January Q2 -}
revCount :: [Char] -> [Int] -> [String]
revCount chars ints = reverse (repeater chars ints)
repeater chars ints = 
	if chars == []
		then []
	else
		replicate (head ints) (head chars) : repeater (tail chars)(tail ints)