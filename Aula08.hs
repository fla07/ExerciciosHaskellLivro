{-# LANGUAGE FlexibleInstances, UndecidableInstances #-}
module Aula8 where

import Data.Monoid

data And = And Bool deriving Show

instance Monoid And where
    mempty = And True
    -- mappend (And x) (And y) = And (x && y)
    mappend (And True) (And True) = And True
    mappend _ _ = And False
    
data Carteira a = Nada 
                | UmItem a 
                | DoisItens a a deriving Show

instance Monoid a => Monoid (Carteira a) where
    mempty = Nada
    mappend (UmItem x) (UmItem y) = UmItem (x <> y)
    mappend x Nada = x
    mappend Nada x = x

-- ab = EH SEMPRE UM FUNCAO Q TROCA a POR b
-- fmap :: (a -> b) -> Carteira a -> Carteira b
instance Functor Carteira where
    fmap _ Nada = Nada
    fmap ab (UmItem a) = UmItem (ab a)
    fmap ab (DoisItens a1 a2) = DoisItens (ab a1) (ab a2)

-- O Funtor Maybe
-- data Maybe a = Nothing | Just a
-- instance Functor Maybe where
--    fmap ab Nothing = Nothing
--    fmap ab (Just a) = Just (ab a)

-- Maybe conserta funcoes parcial
safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead xs = Just (head xs)




                                    
                                    
                                    
                                    
                                    