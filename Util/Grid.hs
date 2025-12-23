module Util.Grid where

import qualified Data.Map as M

type GridKey = (Int, Int)
type GridValue = Int
type Grid = M.Map GridKey GridValue

directionsFour :: [GridKey]
directionsFour = [(0, 1), (1, 0), (0, -1), (-1, 0)]

directionsEight :: [GridKey]
directionsEight = [(0, 1), (1, 0), (1, 1), (-1, 1), (1, 1), (1, -1), (-1, 1), (-1, -1)]


move :: GridKey -> GridKey -> GridKey
move (x, y) (dx, dy) = (x + dx, y + dy)

scale :: GridKey -> Int -> GridKey
scale (x, y) s = (s*x, s*y)

createGrid :: String -> IO Grid
createGrid path = do
    inp <- readFile path
    let datum = [[read y :: Int | y <- words x] | x <-lines inp]
    let maplist = [((x,y), (datum !! x) !! y) | y <- [0..(length (head datum) - 1)], x <- [0..(length datum - 1)]]
    return (M.fromList maplist)
