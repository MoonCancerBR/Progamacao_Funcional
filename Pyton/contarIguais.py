def iguais (x, y, z):
    if (x == y and y == z):
        return 3
    if((x == y and y != z) or (x == z and y != z) or (z == y and y != x)):
        return 2
    else:
        return 0
