def iguais(a, b, c):
    if(a == b and b == c):
        return 3
    if(a == b or a == c or b == c):
        return 2
    else:
        return 0
