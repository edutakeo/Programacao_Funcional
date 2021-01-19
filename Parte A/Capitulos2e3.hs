--Parte A
--Exercícios dos Capítulos 2 e 3 do Livro
module Aula where

--Exercício 2.2 (Capítulo 2)
inverterElementos :: [String] -> [String]
inverterElementos s = [reverse x | x <- s]

inverterElementosMap:: [String] -> [String]
inverterElementosMap s = map reverse [x | x <- s]

--Exercício 2.3 (Capítulo 2)
tamanho :: [String] -> [Int]
tamanho s = [length x | x <- s, mod (length x) 2 /= 0]

tamanhoMap :: [String] -> [Int]
tamanhoMap s = map length [x | x <-s, mod (length x) 2 /= 0]

--Exercício 3.2 (Capítulo 3)
data Temperatura = Celsius | Farenheit | Kelvin deriving Eq

converterCelsius :: Double -> Temperatura -> Double
converterCelsius v t
                 | t == Farenheit = (v - 32)/1.8
                 | t == Kelvin = v - 273

converterKelvin :: Double -> Temperatura -> Double
converterKelvin v t
                 | t == Farenheit = 0.56*(v - 32) + 273
                 | t == Celsius = v + 273                   

converterFarenheit :: Double -> Temperatura -> Double
converterFarenheit v t
                 | t == Kelvin = 1.8*(v - 273) + 32
                 | t == Celsius = 1.8*v + 32 

--Exercício 3.11 (Capítulo 3)
data Binario = Zero | Um deriving Show

data Funcao = Soma2 | Maior | Menor | Mult2

aplicar :: Funcao -> Binario -> Binario -> Binario
aplicar Soma2 Zero Zero = Zero
aplicar Soma2 Zero Um = Um
aplicar Soma2 Um Zero = Um
aplicar Soma2 Um Um = Zero

aplicar Maior Zero Zero = Zero
aplicar Maior Zero Um = Um
aplicar Maior Um Zero = Um
aplicar Maior Um Um = Um

aplicar Menor Zero Zero = Zero
aplicar Menor Zero Um = Zero
aplicar Menor Um Zero = Zero
aplicar Menor Um Um = Um

aplicar Mult2 Zero Zero = Zero
aplicar Mult2 Zero Um = Zero
aplicar Mult2 Um Zero = Zero
aplicar Mult2 Um Um = Um

