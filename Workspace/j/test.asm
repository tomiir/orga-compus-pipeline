# Que funciona correctamente #
##############################

# Pc debe valer 4 despues de ejecutarse jump -> no se debe ejecutar el add || en pipeline no se deben ejecutar nunca los add
li $t1, 8
li $t0, 16
j $t1,$t0 
addi $t1, $t0, 2
subi $t0, $t0, 2
addi $t0, $t0, 1

# Que las branches funcionan correctamente
start:
  li $t0, 3
  li $t1, 3
  beq $t0, $t1, equal
  add $t0, $t0, $t1
  sub $t0, $t0, $t1
equal:
  addi $t0, 1
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

start2:
  li $t0, 8
  li $t1, 12
  j $t0, $t1
  add $t0, $t0, $t1
  sub $t0, $t0, $t1
equal2:
  nop
  li $t0, 0
  beq $t0, $t0
