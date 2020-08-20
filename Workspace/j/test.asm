# Que funciona correctamente #
##############################

# Pc debe valer 4 despues de ejecutarse jump -> no se debe ejecutar el add || en pipeline no se deben ejecutar nunca los add
li $t1, 2
li $t0, 3
j $t1,$t0 
add $t1, 2
sub $t0, 2
nop

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


# Que las branches y los jumps funcionen correctamente en conjunto
start:
  li $t0, 3
  li $t1, 3
  beq $t0, $t1, equal
  add $t0, $t0, $t1
  sub $t0, $t0, $t1
equal:
  nop
  li $t0, 0
  j $t0, $t0

start:
  li $t0, 3
  li $t1, 2
  j $t0, $t1
  add $t0, $t0, $t1
  sub $t0, $t0, $t1
equal:
  nop
  li $t0, 0
  beq $t0, $t0