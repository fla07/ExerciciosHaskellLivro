module Aula7 where

import Data.Monoid

data Carteira a = Nada | UmItem a deriving Show

instance Monoid a => Monoid (Carteira a) where
    mempty = Nada
    mappend Nada x = x
    mappend x Nada = x
    mappend (UmItem x) (UmItem y) = UmItem (x <> y)

data Or = Or Bool deriving Show

instance Monoid Or where 
    mempty = Or False
    mappend (Or False) (Or False) = Or False
    mappend _ _ = Or True