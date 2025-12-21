module Main where
import Util.Primes (isPrime)

limit = 20
primes = [x | x <- [1..limit], isPrime x]
maxFactors = [maximum [getFactorCount y x | y <- [1..limit]] | x <- primes]

getFactorCount :: Int -> Int -> Int
getFactorCount x y
    | mod x y /= 0 = 0
    | otherwise = 1 + getFactorCount (x `div` y) y

main = print (product [uncurry (^) x | x <- zip primes maxFactors])