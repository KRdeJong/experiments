module Lib
    ( someFunc
    , myFunc
    , teststring
    ) where

import System.Random

someFunc :: IO ()
someFunc = putStrLn "someFunc"

myFunc :: [[Int]] -> [[Int]]
myFunc x = reverse x

teststring = take 100 $ randomRs (1,400) (mkStdGen 3) :: [Int]
