module Shapes.Client.Shell.InputReader (readInput, readNumber) where

import Data.Char (toLower)
import System.Exit (exitSuccess)
import System.IO (hFlush, stdout)

readInput :: IO String
readInput = do
    putStr "Your Answer >>> "
    hFlush stdout
    userInput <- fmap (map toLower . trim) getLine
    readExit userInput
    return userInput

readNumber :: IO Double
readNumber = do
    userInput <- readInput
    case reads userInput :: [(Double, String)] of
        [(number, "")] -> return number
        _ -> do
            putStrLn "Invalid number. Please try again."
            readNumber

readExit :: String -> IO ()
readExit input
    | input `elem` ["exit", "e"] = do
        putStrLn "Thank you for using the Shapes CLI!"
        exitSuccess
    | otherwise = return ()

trim :: String -> String
trim = unwords . words
