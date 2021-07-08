import Data.List
import Data.Char
--gerador1 
gerador1 = 0: concat [[x,-x]| x <-[1..]]
--gerador2
gerador2 = 0:[if even x then -x else  x| x <-[1..]]
--gerador3
gerador3 = iterate (* 2) 1
--gerador4
gerador4 x = takeWhile (>0) (iterate (`div`2) x)
--gerador5
gerador5 = unfoldr (\b -> if b == 0 then Nothing else Just (b, b `div` 2))
--digitos
digitos x = reverse (unfoldr (\b -> if b == 0 then Nothing else Just (b `mod` 10, b `div` 10)) x)
--criptografia
auxiliar = zip ['A'..'Z'] [0..]
auxi2 index = fst $ head $  filter (\x -> index == snd x) auxiliar
auxi3 char = snd $ head $  filter (\x -> char == fst x) auxiliar
teste p k = auxi2 ((auxi3 p + auxi3 k) `mod` 26)
vigerene p k = zipWith teste p (cycle k) 