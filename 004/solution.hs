module Main where

main = print (maximum [prod | x <- [100 .. 999], y <- [x .. 999], let prod = x * y, show prod == reverse (show prod)])