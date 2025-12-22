module Main where
import System.IO ( stdout, hSetBuffering, BufferMode(NoBuffering) )
import Util.Primes (isPrime)


main = do
    hSetBuffering stdout NoBuffering
    putStr "Enter the limit (default 2000000): "
    userN <- getLine
    let n = if not (null userN) then read userN else 2000000
    let result = sum [x | x <- [2..n], isPrime x]
    print result