module Shapes.Base.Commons.BaseShape where

class BaseShape a where
    dimensions :: a -> [(String, Double)]

    printDescription :: a -> IO ()

    getDimensionAvailable :: a -> Int
    getDimensionAvailable shape = length (dimensions shape)

    isAShape :: a -> Bool
    isAShape _ = True
