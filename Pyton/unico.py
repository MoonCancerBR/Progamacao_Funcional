def unico(n, xs):
    contador = 0
    for x in xs:
        if (x == n):
            contador += 1
    if(contador == 1):
        return True
    else:
        return False
