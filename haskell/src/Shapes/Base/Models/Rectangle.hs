module Shapes.Base.Models.Rectangle where

import Shapes.Base.Commons

data Rectangle = Rectangle {width :: Double, height :: Double} deriving (Show, Eq)

instance Dimensional Rectangle where
    area (Rectangle width height) = width * height
    perimeter (Rectangle width height) = (width + height) * 2

mkRectangle :: Double -> Double -> Rectangle
mkRectangle width height = Rectangle (max width 1) (max height 1)
