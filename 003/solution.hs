module Main where
import Util.Primes ( isPrime )

largestPrimeFactor' :: Int -> Int -> Int
largestPrimeFactor' x i
  | x <= 0 = 0
  | i * i >= x = 0
  | mod x i /= 0 = largestPrimeFactor' x (i + 1)
  | not (isPrime i) = largestPrimeFactor' x (i + 1)
  | otherwise = max (max i (if isPrime complement then complement else 0)) (largestPrimeFactor' x (i + 1))
  where complement = x `div` i

largestPrimeFactor :: Int -> Int
largestPrimeFactor x = largestPrimeFactor' x 2

main = print (largestPrimeFactor 600851475143)