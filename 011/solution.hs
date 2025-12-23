module Main where

import Data.Map qualified as M
import Data.Maybe (catMaybes)
import Util.Grid (Grid, GridKey, GridValue, directionsEight, createGrid, move, scale)

main :: IO ()
main = do
  grid <- createGrid "input.txt"
  let result =
        maximum
          [ product (catMaybes members) | k <- M.keys grid, 
            direction <- directionsEight, 
            let members =
                    [ M.lookup chk grid
                        | x <- [0 .. 3],
                        let chk = move k $ scale direction x,
                        M.member chk grid
                    ], length members == 4
          ]
  print result