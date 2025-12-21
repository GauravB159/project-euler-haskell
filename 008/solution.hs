module Main where
import System.IO ( stdout, hSetBuffering, BufferMode(NoBuffering) )
import Data.List ( tails )

main = do
    hSetBuffering stdout NoBuffering
    putStr "Enter the number of digits (default 13): "
    userN <- getLine 
    let n = if null userN then 13 else read userN
    inp <- readFile "./input.txt"
    let digits = [read [x] :: Int | x <- inp]
    let result = maximum [product (take n x) | x <- tails digits, length x >= n]
    putStrLn ("Solution: " ++ show result)
    