--fib
fib num
    |num == 0 = 0
    |num == 1 = 1
    |otherwise = fib (num-1) + fib(num-2)

--frequencia
frequencia n xs
    | null xs = 0
    | n `notElem` xs = 0
    | otherwise = length (filter (== n ) xs)

--unico
unico n xs
    |frequencia n xs == 1 = True
    |otherwise = False

--maioresque
maioresQue n = filter (>n)

--concatena
concatena xs ys = xs ++ ys

--menores (incompleto)
menores n xs = take n (quicksort xs)
quicksort [] = []
quicksort (y:ys) = quicksort menor ++ [y] ++ quicksort maior
    where
        menor = filter (< y) ys
        maior = filter (>= y) ys

--alter
alter n = intercal [1..n] (negativos n)
negativos n = reverse [(n-(n*2))..(-1)]

--reverso
reverso = reverse

--intercal
intercal xs [] = xs
intercal [] ys = ys
intercal (x:xs) (y:ys) = x : y : intercal xs ys

--sequencia
sequencia x y = [y .. x + y - 1]

--rotesq
rotEsq n xs
    |n == 0 = xs
    |otherwise = rotEsq(n-1) (tail xs ++ [head xs])

--rotdir
rotDir n xs
    |n == 0 = xs
    |otherwise = rotDir(n-1) ( last xs : init xs) 

--quadperf
quadperf n = perfeito [0..]
    where 
    perfeito (x:xs)
        |(x * x) == n = True
        |(x * x) > n = False
        |otherwise = perfeito xs

--deletee
deletee _ [] = []
deletee n (x:xs)
    | n == x = xs
    | otherwise = x : deletee n xs

--listacc
listacc xs = auxiliar xs 0
    where auxiliar [] n = []
          auxiliar (x:xs) n = (n+x) : auxiliar xs (n+x)

--line
line n
    |n == 0 = []
    |n == 1 = [1]
    |otherwise = [(last (line (n-1))+1)..(last (line (n-1))+n)]

--triangle
triangle' n i
  | i <= n = line i:triangle' n (i+1)
  |otherwise = []
triangle n =  triangle' n 1