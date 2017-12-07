module ExerciciosCap01 where

-- Capitulo 01 -> Programação Funcional
-- Aqui vou colocar alguns exemplos simples sobre o que é o Haskell,
-- e como usar o GHCI. O livro em si não possui exercicios no capítulo 1.

-- Tudo o que vem a seguir pode ser testado no GHCI

-- Exemplo do conceito de lazyness do livro:
-- A linguagem só calcula algo quando for extremamente necessário
-- Isso poupa tempo e processamento
let a = [3, 6 , 7, 3*10^89,0] ++ [-1,9]

-- O terminal pode ser usado para realizar operações matemáticas de modo 
-- convencional
let b = 3
let c = 4
let d = b + c
let e = c - b
let f = b*c
let g = d / b
let h = b^2

-- Note que não existem variáveis, o que temos são funções que uma vez que
-- adquirem um valor, não mudam.

-- Exemplo de Olá Mundo no ghci
"Olá " ++ "Mundo!"