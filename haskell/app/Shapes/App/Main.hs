module Main (main) where

import Shapes.Base.Commons
import Shapes.Base.Models
import Shapes.Client.Shell

main :: IO ()
main = do
    let program :: Runner = Runner {}

    let circle :: Circle = newCircle 15.25
    let rcircle = setColor circle "Red"
    printDescription rcircle

    run program
