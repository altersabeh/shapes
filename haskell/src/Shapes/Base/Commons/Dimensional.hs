module Shapes.Base.Commons.Dimensional where

class Dimensional a where
    area :: a -> Double
    perimeter :: a -> Double
