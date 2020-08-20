# Que funciona correctamente multi#
###################################

# Pc debe valer 4 despues de ejecutarse jump -> no se debe ejecutar el add || en pipeline no se deben ejecutar nunca los add
li $t0, 1
multi $t0, 4    # LO debe tener 4
mflo $t1
multi  $t0, 8    # t0 aun vale 1 ---> LO debe contener 8
mflo $t1
multi $t1, 3    # LO debe tener 24
mflo $t1

## Que lwi funcione correctamente
li $t0, 8
sw $t0, 12     #guardo el valor 4 en la posicion 16 de la memoria
li $t0, 3
li $t1, 3
lwi $t2, $t0, $t1, 3 # t2 <- (t0 + t1 * 3)(0)  ---> t2 debe contener 4
addi $t2, $t2, 1  #se deberia poder sumar correctamente y t2 = 5