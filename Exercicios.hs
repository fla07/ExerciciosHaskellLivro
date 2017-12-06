module Exercicios where

-- LISTA 1




-- LISTA 2



-- LISTA 3

-- Exercício 
-- 3.1 Crie o tipo Pergunta com os value constructors Sim ou Nao. Faça
-- as funções abaixo determinando seus tipos explicitamente
-- 1. pergNum: recebe via parâmetro uma Pergunta e retorne 0 para Nao e 1
-- para Sim;
-- 2. listPergs: recebe via parâmetro uma lista de Perguntas e retorna 0’s e 1’s
-- correspondentes aos constructores contidos na lista;
-- 3. and’: recebe duas Perguntas como parâmetro e retorna a tabela verdade do
-- and lógico usando Sim como verdadeiro e Nao como falso.
-- 4. or’: Idem acima, porém, deve ser usado o ou lógico.
-- 5. not’: Idem aos anteriores, porém, usando o not lógico.


-- Exercício 3.7 Faça uma função que receba uma String e retorne True se esta for
-- um palíndromo, False caso contrário.

ehpalindromo :: String -> Bool
ehpalindromo p = p == (reverse p)

-- Exercício 3.11 Crie o tipo de dado Binario que pode ser Zero ou Um. Crie também
-- o tipo de dado Funcao que pode ser Soma2, Maior, Menor e Mult2. Faça a
-- função aplicar que recebe uma Funcao e dois Binarios seu retorno consiste em
-- executar a operação desejada. Exemplo:
--              aplicar Soma2 Um Um = Zero 


