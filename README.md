# Hvmon
High-Order Virtual Monsters is a Battle Showdown Game.


###  CALCULO DE DANO DOS HVMONs

 ```(((((2*64/5) * ATK * Atk_Move)/DEF)/64) * Move_type * WEAK_or_RES * BURN_or_FRZ)```
                                                      
   ** Move_type**: Se o move é iqual os tipo do HVmon (1 ou 1.25) 
   ** WEAK_or_RES**: Se o HVmon tem Fraqueza ou Resistencia (2/3 ou 3/2 ou 1)
   ** BURN_or_FRZ**: So Hvmon está afetado por algun efeito(0.5 ou 2 ou 1)

### CALCULO DE DESTRIBUIÇÂO DE ATRIBUTOS DOS HVMONs

* TOTAL – 1000 exp (500 fixo  + 500 variável)

* HP - 255 MAX 
    *   ** ```conversão 0 - 99 x1, 100 a 200 x1,5 e 200 a 250 x2```**
    Seria gasto 350 de exp para colocar no máximo
* ATK - 255 MAX 
    *   ** ```conversão 0 - 99 x1, 100 a 149 x1,5 e 150 a 199 x2 e 200 a 250 x2,5```**
*    Seria gasto 400 de exp para colocar no máximo
* DEF - 255 MAX 
    *   ** ```conversão 0 - 99 x1, 100 a 149 x1,5 e 150 a 199 x2 e 200 a 250 x2,5```**
    Seria gasto 400 de exp para colocar no máximo
* SPD - 255 MAX 
*   ** ```conversão 0 - 49 x1, 50 a 99 x1,5 e 100 a 149 x2 e 199 a 200 x2,5 e 200 - 250 x3 ```**
    Seria gasto 500 de exp para colocar no máximo