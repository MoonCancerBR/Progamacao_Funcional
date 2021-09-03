def gangorra(P1,C1,P2,C2):
    if((P1*C1) < (P2*C2)):
        return 1
    if((P1*C1) > (P2*C2)):
        return -1 
    else:
        return 0
