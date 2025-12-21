module Main where

fibonacci :: Int -> Int
fibonacci = (map fib [0 .. ] !!)
    where 
        fib 0 = 0
        fib 1 = 1
        fib n = fibonacci (n - 1) + fibonacci (n - 2)

solution :: Int -> Int -> Int
solution x limit
    | fibval > limit = 0
    | even fibval = fibval + solution (x + 1) limit
    | otherwise = solution (x + 1) limit
    where fibval = fibonacci x

main = print (solution 0 4_000_000)