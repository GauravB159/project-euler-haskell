module Main where

main = do
    inp <- readFile "./input.txt"
    let numbers = [read x :: Integer | x <- lines inp]
    print (read $ take 10 (show $ sum numbers) :: Int)