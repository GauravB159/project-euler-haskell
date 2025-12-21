module Main where

isMultipleOf :: Int -> Int -> Bool
isMultipleOf x y = mod x y == 0

sumMultiples :: [Int] -> Int
sumMultiples x 
  | null x = 0
  | isMultipleOf (head x) 3 || isMultipleOf (head x) 5 = head x + sumMultiples(tail x)
  | otherwise = sumMultiples(tail x)

main = print (sumMultiples [1..999])