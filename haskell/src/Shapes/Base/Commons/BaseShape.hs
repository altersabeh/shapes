module Shapes.Base.Commons.BaseShape (BaseShape (..)) where

class BaseShape a where
    dimensions :: a -> [(String, Double)]

    printDescription :: a -> IO ()

    showAvailableDimensionCount :: a -> Int
    showAvailableDimensionCount shape = length (dimensions shape)

    validateShape :: a -> Bool
    validateShape _ = True
