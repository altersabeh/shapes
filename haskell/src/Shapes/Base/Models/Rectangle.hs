module Shapes.Base.Models.Rectangle (
    Rectangle (..),
    newRectangle,
) where

import Shapes.Base.Commons

data Rectangle where
    Rectangle :: {width :: !Double, height :: !Double} -> Rectangle
    deriving (Eq, Show)

instance Dimensional Rectangle where
    area (Rectangle width height) = width * height
    perimeter (Rectangle width height) = (width + height) * 2

newRectangle :: Double -> Double -> Rectangle
newRectangle width height = Rectangle (max width 1) (max height 1)
