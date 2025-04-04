module Shapes.Base.Commons.Displayable (Displayable (..)) where

class Displayable a where
    shouldDisplay :: a -> Bool
    shouldDisplay _ = True

    display :: a -> IO ()
    display shape =
        if shouldDisplay shape
            then putStrLn "Yes, this shape can be displayed."
            else putStrLn "No, this shape cannot be displayed."
