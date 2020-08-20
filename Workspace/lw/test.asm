# Que funciona correctamente multi#
###################################

# Pc debe valer 4 despues de ejecutarse jump -> no se debe ejecutar el add || en pipeline no se deben ejecutar nunca los add
li $t0, 1
multi $t0, 4    # LO debe tener 4
mflo $t1
multi $t0, $t0, 8    # t0 aun vale 1 ---> LO debe contener 8
mflo $t1
multi $t0, $t0, 0xFFFF    # LO debe tener 0000FFFF
mflo $t1
multi $t1, 2 #LO debe tener 0001FFFF

# Que las branches funcionan correctamente
start:
  li $t0, 3
  li $t1, 3
  beq $t0, $t1, equal
  add $t0, $t0, $t1
  sub $t0, $t0, $t1
equal:
  nop
  b start


## Que lwi funcione correctamente
sw 4, 16     #guardo el valor 4 en la posicion 16 de la memoria
addi $t0, 4
addi $t1, 4
lwi $t2, $t0, $t1, 3 # t2 <- (t0 + t1 * 3)(0)  ---> t2 debe contener 4
addi $t2, 1  #se deberia poder sumar correctamente y t2 = 5