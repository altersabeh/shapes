module Main (main) where

import Control.Monad
import Test.Hspec

import Shapes.Base.Commons

import Fixtures qualified

main :: IO ()
main = hspec $ do
    describe "Dimensional Type Class Tests" $ do
        it "Circle implements Dimensional" $ do
            let circle = Fixtures.setupCircle
            assertDimensional circle 754.767 97.389

        it "Rectangle implements Dimensional" $ do
            let rectangle = Fixtures.setupRectangle
            assertDimensional rectangle 756.437 112.0

        it "Square implements Dimensional" $ do
            let square = Fixtures.setupSquare
            assertDimensional square 105.062 41.0

assertDimensional :: (Dimensional a) => a -> Double -> Double -> Expectation
assertDimensional
    dimensionalShape
    expectedArea
    expectedPerimeter = do
        let areaDiff = abs (area dimensionalShape - expectedArea)
        let perimeterDiff = abs (perimeter dimensionalShape - expectedPerimeter)

        when (areaDiff >= 0.001) $ expectationFailure "AREA NOT EQUAL"

        when (perimeterDiff >= 0.001) $ expectationFailure "PERIMETER NOT EQUAL"
