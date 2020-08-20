# Que funciona correctamente #
##############################
# t1 vale 0 al hacer un and con un 0
addi $t1, $t0, 1
andi $t1,$t0, 0 

# t1 debe valer 1 siempre
li $t0, 1
andi $t1, $t0, 1  

# t1 debe valer 001 siempre  // 101&011 -> 001
li $t1, 0
li $t0, 5
andi $t1, $t0, 3


# t1 puede ser usado en otra instruccionn correctamente
# t1 debe valer 6 siempre
li $t0, 7
li $t1, 0
andi $t1, $t0, 3
add $t1, $t1, $t0 

