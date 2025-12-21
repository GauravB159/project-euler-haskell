module Main where

limit = 100
sumSquares = sum [1..limit] ^ 2
squaresSum = sum([x^2 | x <- [1..limit]])
main = print (sumSquares - squaresSum )