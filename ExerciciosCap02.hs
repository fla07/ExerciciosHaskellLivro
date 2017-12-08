module ExerciciosCap02 where

-- CAPITULO 02 - PRIMEIROS EXEMPLOS

-- 2.1) Gere as listas:

-- a) [1,11,121,1331,14641,161051,1771561]
listaA :: Int
listaA = [ 11^x | x <-[0..6]]

-- b) [1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,25,26,27,29,30,31,33,34,35,37,38,39]
listaB :: Int
listaB = [x+1 | x <- [0..38]]

-- c) ["AaBB", "AbBB", "AcBB", "AdBB", "AeBB", "AfBB","AgBB"]
listaC :: String
listaC = ["A" ++ x ++ "BB" | [x <- ["a","b","c","d","e","f","g"]]

-- d) [5,8,11,17,20,26,29,32,38,41]
listaD :: Int
listaD = [x+3 | x <-[2..10] ]

-- e) [1.0,0.5,0.25,0.125,0.0625,0.03125]
listaE :: Double
listaE = [ 0.5^x | x <-[0..6] ]


-- f) [1,10,19,28,37,46,55,64]
listaF :: Int
listaF = [ 1+(x-1)*9 | x<-[0..7] ]

-- g) [2,4,8,10,12,16,18,22,24,28,30]
listaG :: Int
listaG = [2*x | x <-[0..10] ]

-- h) ['@','A','C','D','E','G','J','L']
listaH :: Int
listaH = [x | x <- ['@'..'L'], x/= 'B', 'F', 'H' ]


-- 2.2) Crie uma função que verifique se o tamanho de uma String é par ou não. Use Bool como retorno.
ehPar :: String -> Bool
ehPar xs =  mod (length xs) 2 == 0

-- 2.3) Escreva uma função que receba um vetor de Strings e retorne uma lista com todos os elementos em ordem reversa.
reverteOrdem :: [String] -> [String]
reverteOrdem [xs] = reverse [xs]

-- 2.4) Escreva uma função que receba um vetor de Strings e retorne uma lista com o tamanho de cada String. 
-- As palavras de tamanho par devem ser excluídas da resposta.
tamanhoElementos :: [Strings] -> [Int]
tamanhoElementos xs = [ length x | x <- xs ]

-- 2.5) Escreva a função head como composição de duas outras.

-- 2.6) Faça uma função que receba uma String e retorne True se esta for um palíndromo; caso contrário, False .
ehPalindromo :: String -> Bool
ehPalindromo = x == reverse x

-- 2.7 Faça uma função que receba um inteiro e retorne uma tupla, contendo: o dobro deste número na primeira coordenada, o
-- triplo na segunda, o quádruplo na terceira e o quíntuplo na quarta.
multiplos :: Int -> (Int, Int, Int, Int)
multiplos x = (x^2,x^3,x^4,x^5)

