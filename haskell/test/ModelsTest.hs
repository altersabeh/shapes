module Main (main) where

import Test.Hspec

import Shapes.Base.Commons

import Fixtures.Helper qualified as Helper

delta :: Double
delta = 0.001

main :: IO ()
main = hspec $ do
    describe "Models Tests" $ do
        circleTests
        rectangleTests
        squareTests

circleTests :: Spec
circleTests = describe "Circle Tests" $ do
    it "Test Circle Area" $ do
        let circle = Helper.setupCircle
        let result = area circle
        let expected = 754.767
        abs (result - expected) `shouldSatisfy` (< delta)

    it "Test Circle Perimeter" $ do
        let circle = Helper.setupCircle
        let result = perimeter circle
        let expected = 97.389
        abs (result - expected) `shouldSatisfy` (< delta)

rectangleTests :: Spec
rectangleTests = describe "Rectangle Tests" $ do
    it "Test Rectangle Area" $ do
        let rectangle = Helper.setupRectangle
        let result = area rectangle
        let expected = 756.437
        abs (result - expected) `shouldSatisfy` (< delta)

    it "Test Rectangle Perimeter" $ do
        let rectangle = Helper.setupRectangle
        let result = perimeter rectangle
        let expected = 112.0
        abs (result - expected) `shouldSatisfy` (< delta)

squareTests :: Spec
squareTests = describe "Square Tests" $ do
    it "Test Square Area" $ do
        let square = Helper.setupSquare
        let result = area square
        let expected = 105.062
        abs (result - expected) `shouldSatisfy` (< delta)

    it "Test Square Perimeter" $ do
        let square = Helper.setupSquare
        let result = perimeter square
        let expected = 41.0
        abs (result - expected) `shouldSatisfy` (< delta)
