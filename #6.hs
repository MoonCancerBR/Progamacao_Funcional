import Data.List (elemIndices)  
import Data.Char
--Tails
tails [] = [[]]
tails xs = xs : tails (tail xs)

--unique
unique xs = [x | (x,y) <- zip xs [0..], x `notElem` take y xs]

--ProdutoEscalar
produtoEscalar xs ys = sum [ x*y | (x,y) <- zip xs ys ]

--indices - busca posições do elemento
indices v xs = elemIndices v xs 

--concatMap - Data.List.concatMap
concatmap fn xs = concatMap fn xs

--upper
upper xs = [toUpper x|x <-xs]

--titulo


--selec - apenas as chaves selecionadas


--isPalind
isPalind xs
    |xs == reverse xs = True 
    |otherwise = False 
