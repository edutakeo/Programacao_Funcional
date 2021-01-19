--Parte C
--Hackerranck - Problem: Super Digit
module Aula where

import Data.Char

super_Digit [] = []
super_Digit (x:[]) = x:[]
super_Digit xs = super_Digit(show (soma xs))

soma xs = foldl (\a x -> a + (digitToInt x)) 0 xs

resolve n p = super_Digit (show ((soma n) * (read p)))

main = do
    ws <- getContents
    let xs = words ws
    putStrLn (resolve (head xs) (last xs))