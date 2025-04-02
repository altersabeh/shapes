module Shapes.Base.Commons.Displayable where

class Displayable a where
    isDisplayable :: a -> Bool
    isDisplayable _ = True

    display :: a -> IO ()
    display shape =
        if isDisplayable shape
            then putStrLn "Yes, this shape can be displayed."
            else putStrLn "No, this shape cannot be displayed."
