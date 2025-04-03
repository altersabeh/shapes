module Shapes.Base.Models.Circle where

import Shapes.Base.Commons

data Circle = Circle {radius :: Double, color :: String} deriving (Show, Eq)

instance Dimensional Circle where
    area (Circle radius _) = pi * radius * radius
    perimeter (Circle radius _) = 2 * pi * radius

instance Displayable Circle

newCircle :: Double -> Circle
newCircle radius = Circle (max radius 1) "None"
