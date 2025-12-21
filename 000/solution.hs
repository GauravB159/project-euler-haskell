module Main where

isOddSquare :: Int -> Bool
isOddSquare x = odd (x*x)

sumOddSquares :: [Int] -> Int
sumOddSquares x
  | null x = 0
  | isOddSquare (head x) = (head x*head x) + sumOddSquares (tail x)
  | otherwise = sumOddSquares (tail x)

main = print (sumOddSquares [1..425000])