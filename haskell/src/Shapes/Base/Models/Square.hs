module Shapes.Base.Models.Square where

import Shapes.Base.Commons

data Square = Square {side :: Double} deriving (Show, Eq)

instance Dimensional Square where
    area (Square side) = side * side
    perimeter (Square side) = side * 4

mkSquare :: Double -> Square
mkSquare side = Square (max side 1)
