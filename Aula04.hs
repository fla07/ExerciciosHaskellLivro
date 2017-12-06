module Aula04 where

data Correncia = Euro | Dollar | Real | Yen
        deriving Show


-- Record sintax -> dar nome aos campos de um value constructor
-- Cada nome dado vira uma função similar ao get() de POO
-- :t valor = Dinheiro -> Double
data Dinheiro = Dinheiro {valor :: Double, curr :: Correncia} 
        deriving Show

-- No caso usar _ aqui seria errado, pois o _ é o mesmo que "ignora"
converterDollar :: Dinheiro -> Dinheiro
converterDollar (Dinheiro x Real) = Dinheiro (0.32 * x) Dollar
converterDollar (Dinheiro x Euro) = Dinheiro (1.18 * x) Dollar
converterDollar (Dinheiro x Yen) = Dinheiro (0.01 * x) Dollar
converterDollar x = x


converterReal :: Dinheiro -> Dinheiro
converterReal (Dinheiro x Dollar) = Dinheiro (3.17 * x) Real
converterReal (Dinheiro x Euro) = Dinheiro (3.78 * x) Real
converterReal (Dinheiro x Yen) = Dinheiro (0.03 * x) Real
converterReal x = x

converterEuro :: Dinheiro -> Dinheiro
converterEuro (Dinheiro x Dollar) = Dinheiro (0.87 * x) Euro
converterEuro (Dinheiro x Real) = Dinheiro (0.27 * x) Euro
converterEuro (Dinheiro x Yen) = Dinheiro (0.008 * x) Euro
converterEuro x = x

-- Função parcial = evitar
somarDinheiro2 :: Dinheiro -> Dinheiro -> Dinheiro
somarDinheiro2 (Dinheiro x Dollar) (Dinheiro y Dollar) = Dinheiro (x+y) Dollar

somarDinheiro :: Dinheiro -> Dinheiro -> Dinheiro
somarDinheiro (Dinheiro x Dollar) y = Dinheiro(x + valor(converterDollar y)) Dollar
somarDinheiro (Dinheiro x Real) y = Dinheiro(x + valor(converterReal y)) Real

-- Melhor resolução
somarDollar :: Dinheiro -> Dinheiro -> Dinheiro
somarDollar x y = Dinheiro (valor(converterDollar x) + valor(converterDollar y)) Dollar


-- Lambda -> dunção sem nome
-- *Aula04> (2+) 7
-- 9

-- Uma funçao lambda pode ser chamada a qualquer momento
-- lambda é uma função sem nome
-- let maiorQue = (\x -> x > 0)

-- A diferença entre essas duas funções é apenas o nome. A ultima usa lambda e a primeira não
func :: String -> String -> String -> String
func x y z = x ++ "A" ++ y ++ "B" ++ reverse z 

-- (\x y z -> x ++ "A" ++ y ++ "B" ++ reverse z)

-- função de alta ordem = envolve uma ou mais funções passadas por função OU uma função que retorna outra
-- HIGH ORDER FUNCTION: Função de alta ordem que recebe uma função e retorna outra função 


-- 1° Exemplo 
-- pode parecer confuso, mas aqui o que vai no parenteses vale por um parametro apenas
-- a função f esta sendo colocada no valor
foo :: (Int -> Int) -> Int -> Int
foo f x = x + f 1

-- 4 + f 1(O mesmo que 4 + o dobro de 1):
-- *Aula04> foo (\x -> 2*x) 4
-- 6

-- 2º Exemplo
-- 
goo :: Int -> (Int -> Int)
goo x = \y -> 2*x - y

-- ele precisa de uma função ou dará erro
-- *Aula04> let f = goo 3
-- *Aula04> f 2
-- 4

-- ou então dessa forma
-- *Aula04> (goo 4) 2
-- 6

-- Obs: ctrl + l = limpar terminal

-- Curring o ato de manipular uma função com menos parametros ( argumentos passados) que o definido
-- Exemplo - uma função que recebe 3 parametros pode ser manipulada só com 2 argumentos

somar :: Int -> Int -> Int -> Int
somar x y z = x+y+z

-- O que ocorre abaixo só é possível graças ao curring, que faz com que o conceito de lazy do haskell seja aplicado,
-- segurando o valor. 
-- a conta só irá acontecer quando se der o valor que falta
--*Aula04> let g = somar 2 3
--*Aula04> g 3
-- 8


-- Os campos são parametros de uma função, logo, também podemos aplicar curring neles















