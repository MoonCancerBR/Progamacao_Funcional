import math
def quadperf(n):
    raiz = int(math.sqrt(n))
    if (n == 0):
        return "??"
    if (math.pow(raiz, 2)) == n:
        return True
    else: 
        return False
