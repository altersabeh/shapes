module Shapes.Base.Models.Square (Square (..), newSquare) where

import Shapes.Base.Commons

data Square = Square {side :: Double} deriving (Show, Eq)

instance Dimensional Square where
    area (Square side) = side * side
    perimeter (Square side) = side * 4

newSquare :: Double -> Square
newSquare side = Square (max side 1)
