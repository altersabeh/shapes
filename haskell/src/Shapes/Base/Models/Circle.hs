module Shapes.Base.Models.Circle (
    Circle (..),
    newCircle,
    getColor,
    setColor,
) where

import Data.Char
import Data.List (intercalate)
import Shapes.Base.Commons
import Text.Printf

data Circle where
    Circle :: {radius :: !Double, color :: !String} -> Circle
    deriving (Eq, Show)

instance Dimensional Circle where
    area (Circle radius _) = pi * radius * radius

    perimeter (Circle radius _) = 2 * pi * radius

instance Displayable Circle

instance BaseShape Circle where
    dimensions (Circle radius _) =
        [ ("radius", max radius 1),
          ("diameter", 2 * max radius 1),
          ("curvature", 1 / max radius 1)
        ]

    printDescription circle = do
        putStrLn ("Circle radius: " ++ show (radius circle))
        putStrLn ("Circle dimensions: " ++ formatDimensions (dimensions circle))
        putStrLn ("Circle color: " ++ color circle)
        putStrLn ("Circle area: " ++ show (area circle))
        putStrLn ("Circle perimeter: " ++ show (perimeter circle))
        putStrLn ("Circle is a displayable shape: " ++ show (shouldDisplay circle))
        putStrLn ("Circle is a shape: " ++ show (validateShape circle))

newCircle :: Double -> Circle
newCircle radius = Circle (max radius 1) "None"

getColor :: Circle -> String
getColor (Circle _ color) = color

setColor :: Circle -> String -> Circle
setColor (Circle radius _) = Circle radius

formatDimensions :: [(String, Double)] -> String
formatDimensions dimension = intercalate " | " parts
  where
    parts = [map toUpper key ++ ": " ++ printf "%.3f" value | (key, value) <- dimension]
