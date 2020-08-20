# Que funciona correctamente #
##############################
# t1 debe valer FFFF siempre
andi $t1,$t0, 0 

# t1 debe valer FFFF siempre
li $t0, 1
andi $t1, $t0   

# t1 debe valer 001 siempre  // 101&011 -> 001
li $t0, 5
andi $t1, $t0, 3


# t1 puede ser usado en otra instruccionn correctamente
# t1 debe valer 6 siempre
li $t0, 5
andi $t1, $t0, 3
add $t1, $t1, $t0 

