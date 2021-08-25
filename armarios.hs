import qualified Data.Map as Map
import Data.Either
import Data.Map
import Data.Maybe
data Estado = Alugado | Livre deriving (Show, Eq)
type Codigo = String
type Armario = (Estado, Codigo)
type Armarios = Map.Map Int (Estado, Codigo)

restaurado (Just z) = z

consulta indice armario =  atual
    where
        atual = Map.lookup indice armario

pegarArmario indice armarios
    | isNothing atual = Data.Either.Left "Armario nao existe"
    | otherwise = Data.Either.Right $ restaurado $ atual
    where
            atual =  consulta indice armarios

pegarCodigo indice armarios
    | isLeft eitherAtual = Data.Either.Left "Armario nao existe"
    | otherwise = rep
     where
        eitherAtual = pegarArmario indice armarios
        atual =  Data.Either.fromRight (Alugado,"") eitherAtual
        rep
            | fst atual == Livre = Data.Either.Right (snd atual)
            | otherwise = Data.Either.Left "ja esta ocupado"

aluguel indice armarios
    |isRight eitherAtual = Data.Either.Right g
    | otherwise =  Data.Either.Left "Armario ja esta ocupado"
    where
        eitherAtual = pegarCodigo indice armarios
        atual = Data.Either.fromRight "" eitherAtual

        g = Map.map (\b -> if snd b == atual then (Alugado,snd b) else b) armarios

devolucao indice codigo armarios
    |isLeft eitherAtual = Data.Either.Left "Armario nao existe"
    |otherwise = auxiliar
    where
        eitherAtual = pegarArmario indice armarios
        atual = Data.Either.fromRight (Livre,"") eitherAtual
        g = Map.map (\b -> if snd b == snd atual then (Livre,snd b) else b) armarios
        auxiliar
            | codigo /= snd atual = Data.Either.Left "Codigo incorreto"
            | fst atual == Livre = Data.Either.Left "nao esta alugado"
            | otherwise = Data.Either.Right g

lockers :: Armarios
lockers = Map.fromList
    [(100,(Alugado,"ZD39I"))
    ,(101,(Livre,"JAH3I"))
    ,(103,(Livre,"IQSA9"))
    ,(105,(Livre,"QOTSA"))
    ,(109,(Alugado,"893JJ"))
    ,(110,(Alugado,"99292"))
    ]
