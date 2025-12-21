module Main where
import Util.Primes (isPrime)


getNthPrime' :: Int -> Int -> Int
getNthPrime' x n
    | n == 0 = x - 1
    | isPrime x = getNthPrime' (x + 1) (n - 1)
    | otherwise = getNthPrime' (x + 1) n

getNthPrime :: Int -> Int
getNthPrime = getNthPrime' 0

main = print (getNthPrime 10001)