module Shapes.Client.Shell.Handler (handleCircle, handleRectangle, handleSquare) where

import Shapes.Base.Commons
import Shapes.Base.Models
import Shapes.Client.Shell.InputReader (readNumber)
import Text.Printf (printf)

handleCircle :: IO ()
handleCircle = do
    putStrLn "What is the radius of the circle?"
    radius <- readNumber
    let circle = newCircle radius
    printf "Area: %.3f\n" (area circle)
    printf "Perimeter: %.3f\n" (perimeter circle)

handleRectangle :: IO ()
handleRectangle = do
    putStrLn "What is the width of the rectangle?"
    width <- readNumber
    putStrLn "What is the height of the rectangle?"
    height <- readNumber
    let rectangle = newRectangle width height
    printf "Area: %.3f\n" (area rectangle)
    printf "Perimeter: %.3f\n" (perimeter rectangle)

handleSquare :: IO ()
handleSquare = do
    putStrLn "What is the side of the square?"
    side <- readNumber
    let square = newSquare side
    printf "Area: %.3f\n" (area square)
    printf "Perimeter: %.3f\n" (perimeter square)
