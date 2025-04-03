module Main (main) where

import Fixtures
import Shapes.Base.Commons
import Test.Hspec

main :: IO ()
main = hspec $ do
    describe "Dimensional Type Class Tests" $ do
        it "Circle implements Dimensional" $ do
            let circle = setupCircle
            assertDimensional circle 754.767 97.389

        it "Rectangle implements Dimensional" $ do
            let rectangle = setupRectangle
            assertDimensional rectangle 756.437 112.0

        it "Square implements Dimensional" $ do
            let square = setupSquare
            assertDimensional square 105.062 41.0

assertDimensional :: Dimensional a => a -> Double -> Double -> Expectation
assertDimensional dimensionalShape expectedArea expectedPerimeter = do
    let areaDiff = abs (area dimensionalShape - expectedArea)
    let perimeterDiff = abs (perimeter dimensionalShape - expectedPerimeter)

    if areaDiff >= 0.001
        then expectationFailure "AREA NOT EQUAL"
        else return ()

    if perimeterDiff >= 0.001
        then expectationFailure "PERIMETER NOT EQUAL"
        else return ()
