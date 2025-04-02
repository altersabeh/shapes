module Main where

import Shapes.Base.Commons
import Shapes.Base.Models

main :: IO ()
main = do
    let circle = Circle 5 "RED"
    putStrLn $ "Circle area: " ++ show (area circle)
