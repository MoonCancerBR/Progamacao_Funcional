def countNeg(xs):
    contador = 0
    for x in xs:
        if x < 0:
            contador += 1
    return contador
