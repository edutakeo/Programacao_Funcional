{-# LANGUAGE TemplateHaskell #-}

import Control.Monad
import Data.List
import Data.List.Split
import System.IO

main = do
  let list = []
  handle <- openFile "input.txt" ReadMode
  contents <- hGetContents handle
  let list = splitOn "\n" contents
  let count = foldl (\a x -> if validar $ parse x then a + 1 else a) 0 list
  print count
  hClose handle

parse :: String -> (Int, Int, Char, String)
parse "" = (0, 0, '\0', "")
parse string = (read x :: Int, read y :: Int, head z, t)
  where
    [x, y, z, t] = splitOneOf " -" string

validar :: (Int, Int, Char, String) -> Bool
validar (0, 0, '\0', "") = False
validar (min, max, char, xs) = count >= min && count <= max
  where
    count = length $ filter (== char) xs