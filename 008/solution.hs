module Main where
import System.IO ( stdout, hSetBuffering, BufferMode(NoBuffering) )

main = do
    hSetBuffering stdout NoBuffering
    putStr "Enter the number of digits (default 13): "
    userN <- getLine 
    let n = if null userN then 13 else read userN
    inp <- readFile "./input.txt"
    let digits = [read [x] :: Int | x <- inp]
    let result = maximum [product[digits !! (x + y) | y <- [0..n-1]] | x <- [0..length digits - n - 1]]
    putStrLn ("Solution: " ++ show result)
    