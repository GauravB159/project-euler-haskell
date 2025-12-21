module Main where
import Data.Array (Ix(range))

isOddSquare :: Int -> Bool
isOddSquare x = odd (x*x)

sumOddSquares :: [Int] -> Int
sumOddSquares x
  | null x = 0
  | isOddSquare (head x) = (head x*head x) + sumOddSquares (tail x)
  | otherwise = sumOddSquares (tail x)

main = print (sumOddSquares (range (1, 425000)))