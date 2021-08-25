--countNeg 
countNeg xs
    |null xs = 0
    |otherwise = length ( filter (<0) xs )

--final
final n xs
    |n == 0 && null xs = []
    |otherwise = reverse (take n (reverse xs))

--iguais - verificar se duas listas são iguais
iguais x y z
    | x == y && y == z = 3
    | x == y && y /= z = 2
    | x == z && y /= z = 2
    | z == y && y /= x = 2
    | otherwise = 0

--interior - miolo da lista
interior xs = head (tail xs)

--gangorra
gangorra a b c d
    | (a * b) > (c * d) = - 1
    | (a * b) < (c * d) = 1
    | otherwise = 0

--min2
min2 x y
    |x < y = x
    |otherwise = y

--min3
min3 x y z
    |x < y && x < z = x
    |y < x && y < z = y
    |otherwise = z

--soma2
soma x y = x + y

--somaimpares
somaimpares xs = sum(filter modularimpares xs)
modularimpares xs = mod xs 2 == 1

--max3
max3 x y z
    |x > y && x > z = x
    |y > x && y > z = y
    |otherwise = z

--fatorial
fatorial xs
    |xs == 0 = 1
    |xs == 1 = 1
    |otherwise = fatorial(xs - 1) * xs

-- elemento
elemento n xs
    | n >= 0 = xs !! n
    | otherwise = reverse xs !! abs (n +1)

--pertence
pertence n xs = elem n xs

--total 
total [] = 0
total [x] = 1
total xs = sum (map (const 1) xs)

--maior
maior xs
    |null xs = []
    |length xs == 1 = xs
maior (x:y:resto)
    | x > y = maior (x: resto)
    | otherwise = maior (y: resto)

--corpo
corpo xs
    | null xs = []
    | otherwise = init xs

--divide
divide xs n
    |n == 0 = ([], xs)
    |n == length xs = (xs,[])
    |otherwise = (take n xs , auxiliar_divide xs n)
auxiliar_divide xs n = reverse (take (length xs - n) (reverse xs))

--uniao
uniao xs ys = xs ++ filter (\y -> notElem y xs) (ys)

--intersec - intercessão entre listas
intersec xs [] = []
intersec [] ys = []
intersec (x:xs) ys
    |pertence x ys = x:intersec xs ys
    |otherwise = intersec xs ys

--splitints (ajustar)
splitints xs = (filter modularimpares xs , filter modularpares xs)
modularpares xs = mod xs 2 == 0

--sublist
sublist a b xs
    | a >= 0 && b >= 0 = take (b - a) (drop a xs)
    | a < 0 && b >= 0 && (c + a) < b = sublist (c + a) b xs
    | a >= 0 && b < 0 && (c + b) > a = sublist a (c + b) xs
    | a < 0 && b < 0 && a < b = sublist (c + a) (c + b) xs
    where
        c = length xs

--paridade
paridade xs
    |null xs = False
    |otherwise = modtrue xs
countrue xs = length ( filter ( == True ) xs )
modtrue xs
    |(countrue xs `mod` 2 ) == 1 = True
    |otherwise = False

--swap - trocando dois elementos de uma lista
swap :: [Int ] -> Int -> Int -> [Int]
swap xs a b
    |null xs = []
    |a > length xs || b > length xs = xs
    |otherwise = inicio ++ (xs!!b):meio ++ (xs!!a):fim
     where
        inicio = take a xs
        meio = take (b - a - 1) (drop (a + 1) xs)
        fim = drop (b + 1) xs

--euler1 - soma dos múltiplos de 3 e 5
euler1 n = sum(filter (\x -> teste x) [1..(n-1)])
teste n = (mod n 3) == 0 || (mod n 5) == 0
