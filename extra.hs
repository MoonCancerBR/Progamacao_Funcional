--sdig
sdig x
    | x == 0 = 0
    | x < 0 = sdig ((-1) * x)
    | otherwise = lastdig x + sdig (x `div` 10)
lastdig x
    | x < 0 = ((-1) * x) `rem` 10
    | otherwise = x `rem` 10

--rev
rev x
    | x < 10 = x
    | otherwise = read . reverse . show $ x

--base
--base b n 
texto n = (['0'..'9']++['A'..'Z']) !! n
resto b n = n `mod` b
base b n = texto resto(b n) + base (b n)

--ehPrimo
ehPrimo n = primo [2..]
    where
    primo (x:xs)
        |n < 2 = False
        |n == 2 = True
        |(n`mod`x) == 0 = False
        |(n`mod`x) /= 0 = True
        |otherwise = primo xs

--facts 

listaPrimo n = [p | p <- [1..n],ehPrimo p]

divisoes 0 _ _ = 0
divisoes n d q |n `mod` d/= 0 = q
                 | otherwise = divisoes (div n d) d(q+1)

fatoresolvidos _ [] = []
fatoresolvidos 0 _ = []
fatoresolvidos n (p:l) | divisoes n p 0 == 0 = fatoresolvidos n l
                  | otherwise = (p,divisoes n p 0) : fatoresolvidos (div n (p^divisoes n p 0)) l

factors n = fatoresolvidos n (listaPrimo n)