module Aula05 where

import Control.Applicative

data Produto = Produto {
    produtoNome:: String,
    produtoPreco :: Double,
    produtoEstoque :: Int
} deriving Show