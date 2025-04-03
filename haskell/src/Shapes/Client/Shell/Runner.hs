module Shapes.Client.Shell.Runner (Runner, newRunner, run) where

import Data.Map qualified as Map

import Control.Monad (forever, when)
import Shapes.Client.Shell.Handler as Handler
import Shapes.Client.Shell.InputReader (readInput)
import System.Exit (exitSuccess)

data Runner = Runner {}

-- | Constructor equivalent to __init__
newRunner :: IO Runner
newRunner = do
    putStrLn (replicate 53 '=')
    putStrLn "Welcome to the Area and Perimeter Calculator!"
    putStrLn (replicate 53 '=')
    return Runner{}

startingMessage :: IO ()
startingMessage = do
    putStrLn "Choose a shape to calculate its area and perimeter."
    putStrLn "  [C] CIRCLE"
    putStrLn "  [R] RECTANGLE"
    putStrLn "  [S] SQUARE"
    putStrLn "Type '[E]XIT' to quit the program."

run :: Runner -> IO ()
run Runner{} = do
    let printThankYouMessage = \_ -> do
            putStrLn "Thank you for using the Shapes CLI!"
            putStrLn "P.S. Did you know? The secret code is 42!"

    let actions =
            Map.fromList
                [ ("circle", Handler.handleCircle)
                , ("c", Handler.handleCircle)
                , ("rectangle", Handler.handleRectangle)
                , ("r", Handler.handleRectangle)
                , ("square", Handler.handleSquare)
                , ("s", Handler.handleSquare)
                ]

    forever $ do
        startingMessage
        shape <- readInput
        when (shape == "q") $ do
            printThankYouMessage ()
            exitSuccess
        let action =
                Map.findWithDefault
                    ( do
                        putStrLn "Invalid input. Please try again."
                        putStrLn "Type one of the listed options."
                    )
                    shape
                    actions

        action
        putStrLn (replicate 53 '=')
