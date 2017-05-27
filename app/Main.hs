module Main where

import Lib
import System.IO
import Graphics.EasyPlot

main :: IO ()
main = do
   putStrLn "Geef me een grootteverdeling a la [[1,2,3],[4,5]] om mee te werken"
   grootteverdeling <- getLine
   let a = read grootteverdeling :: [[Int]]
   let resultaat = myFunc a
   print resultaat
   putStrLn ("Hi, je grootteverdeling is verwerkt.")
   handleinputfile <- openFile "inputfile.txt" ReadMode
   contents <- hGetContents handleinputfile
   let contentsparsed = read contents :: [[Int]]
   let contentsresultaat = myFunc contentsparsed
   print contentsresultaat
   hClose handleinputfile
   -- nu schrijven naar een outputfile
   -- contentsresultaat is nu nog geen string
   let contentsresultaatstring = show contentsresultaat
   writeFile "outputfile.txt" contentsresultaatstring
   putStrLn ("Hi, heb resultaat naar outputfile geschreven.")
   -- dat werkt allemaal.
   plot Aqua $ Data2D [Title "Probeersel"] [] [(1,2),(2,3),(3,4)]
   print teststring
