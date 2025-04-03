module Shapes.Base.Models.Circle (Circle (..), newCircle, getColor, setColor) where

import Shapes.Base.Commons

data Circle = Circle {radius :: Double, color :: String} deriving (Show, Eq)

instance Dimensional Circle where
    area (Circle radius _) = pi * radius * radius

    perimeter (Circle radius _) = 2 * pi * radius

instance Displayable Circle

instance BaseShape Circle where
    dimensions (Circle radius _) = [("radius", max radius 1), ("diameter", 2 * max radius 1), ("curvature", 1 / max radius 1)]

    printDescription circle = do
        putStrLn ("Circle radius: " ++ show (radius circle))
        putStrLn ("Circle dimensions: " ++ formatDimensions (dimensions circle))
        putStrLn ("Circle color: " ++ color circle)
        putStrLn ("Circle area: " ++ show (area circle))
        putStrLn ("Circle perimeter: " ++ show (perimeter circle))
        putStrLn ("Circle is a shape: " ++ show (isAShape circle))

    getDimensionAvailable circle = length (dimensions circle)

newCircle :: Double -> Circle
newCircle radius = Circle (max radius 1) "None"

getColor :: Circle -> String
getColor (Circle _ color) = color

setColor :: Circle -> String -> Circle
setColor (Circle radius _) = Circle radius

formatDimensions :: [(String, Double)] -> String
formatDimensions dims =
    let formatted = unwords [key ++ ": " ++ show value ++ " |" | (key, value) <- dims]
     in if not (null formatted) then init (init formatted) else formatted
