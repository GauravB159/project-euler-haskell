module Util.Primes where

isPrime' :: Int -> Int -> Bool
isPrime' x i
  | x < 2 = False
  | x == 2 = True
  | x == 3 = True
  | even x = False
  | mod x i == 0 = False
  | i*i >= x = True
  | otherwise = isPrime' x (i + 2)

isPrime :: Int -> Bool
isPrime x = isPrime' x 3