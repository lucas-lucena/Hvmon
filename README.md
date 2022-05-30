# Hvmon
High-Order Virtual Monsters is a Battle Showdown Game.


#  CALCULO DE DANO DOS HVMONs

                                            move         tipo         status
                                          1 or 1.25     weak = 1.5    BURN = 0.5
(((((2*64/5) * Atk * Atk_Move)/DEF)/64) * Move_type * WEAK_or_RES * BURN_or_FRZ)
                                                        res = 0.75    FRZ = 2


 # CALCULO DE DESTRIBUIÇÂO DE ATRIBUTOS DOS HVMONs

TOTAL – 1000 max exp (500 fixo  + 500 variável)
1000 pontos - 1650 exp 		        
HP - 250 MAX  200 pontos  / 250 exp  = 350 de exp para colocar no máximo
conversão 0 - 99 x1, 100 a 200 x1,5 e 200 a 250 x2
ATK - 250 MAX  187,5 pontos / 250 exp = 400 de exp para colocar no máximo
conversão 0 - 99 x1, 100 a 149 x1,5 e 150 a 199 x2 e 200 a 250 x2,5
 DEF - 250 MAX  187,5 pontos  / 250 exp = 400 de exp para colocar no máximo
conversão 0 - 99 x1, 100 a 149 x1,5 e 150 a 199 x2 e 200 a 250 x2,5
SPD - 250 MAX  160 pontos  / 250 exp = 500 de exp para colocar no máximo
conversão 0 - 49 x1, 50 a 99 x1,5 e 100 a 149 x2 e 199 a 200 x2,5 e 200 - 250 x3 