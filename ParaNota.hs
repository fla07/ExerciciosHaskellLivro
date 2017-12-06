module ParaNota where
    
-- 3.17 Faça um tipo Cripto que possua dois values constructors: Mensagem e Cifrado,
-- ambos com um campo String e um value constructor Erro. Faça as funções encriptar
-- e descriptar, seguindo cada exemplo a seguir:
-- encriptar (Mensagem "FATEC")
-- Cifrado "GBUFD"
-- descriptar (Cifrado "DBTB")
-- Mensagem "CASA"
-- Veja que a encriptação deve empurrar cada letra para a frente e a descriptação
-- faz o inverso, empurrando uma letra para trás. Use as funções succ e pred, e 
-- também list compreeshions. Não é possível encriptar mensagens cifradas e decriptar mensagens.

data Cripto = Mensagem String | Cifrado String | Erro
        deriving (Show, Eq)
        
encriptar :: Cripto -> Cripto
encriptar (Mensagem xs) = (Cifrado [succ x | x <- xs])
encriptar _ = Erro

descriptar :: Cripto -> Cripto
decriptar (Cifrado xs) = (Mensagem [pred x | x <- xs])
descriptar _ = Erro