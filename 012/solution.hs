module Main where
import Data.List (find)

numDivisors' :: Int -> Int -> Int
numDivisors' n x
    | n*n > x = 0
    | mod x n /= 0 = numDivisors' (n+1) x
    | x `div` n == n = 1 + numDivisors' (n+1) x
    | otherwise = 2 + numDivisors' (n+1) x

numDivisors :: Int -> Int
numDivisors = numDivisors' 1

main = do
    let limit = 500
    let result = find (\x -> snd x >= limit) [(num, numDivisors num) | x <- [1..], let num = x*(x+1) `div` 2]
    case result of
        Just a -> print $ fst a
        Nothing -> print "Not found"