module Util.Primes where

isPrime' :: Int -> Int -> Bool
isPrime' x i
  | x == i = True
  | mod x i == 0 = False
  | i*i >= x = True
  | otherwise = isPrime' x (i + 1)

isPrime :: Int -> Bool
isPrime x = isPrime' x 2