.globl pintarmapa

.data

Robotron: .asciiz "Robotron"
Oleada: .asciiz "Wave 1"

.text

pintarmapa:
addi $sp, $sp, -20
   
    sw $ra, 0($sp)
    sw $s0, 4($sp)
    sw $s1, 8($sp)
    sw $a0, 12($sp)
    sw $a1, 16($sp)
    
robotron:
    li $s0, 1
    li $s1, 35
    addi $a0,$zero, 0xf
    addi $a1,$zero, 0x0
    jal set_color   
    move $a0, $s0
    move $a1, $s1
    jal set_cursor
    la $a0, Robotron
    jal puts
  
    
wave:
    li $s0, 29
    li $s1, 37
    addi $a0,$zero, 0xf
    addi $a1,$zero, 0x0
    jal set_color   
    move $a0, $s0
    move $a1, $s1
    jal set_cursor
    la $a0, Oleada
    jal puts
 

li $s0, 2
li $s1, 29 
for:  
    addi $a0,$zero, 0x5
    addi $a1,$zero, 0x0
    jal set_color   
    
    move $a0, $s0
    move $a1, $zero
    jal set_cursor
    addi $a0, $zero, 9
    jal put_char
    
    addi $s0, $s0, 1
    bne $s0, $s1, for

    li $s0, 2
    li $s1, 29
    li $t1, 79
for2: 
    addi $a0,$zero, 0x5
    addi $a1,$zero, 0x0
    jal set_color   
    
    move $a0, $s0
    move $a1, $t1
    jal set_cursor
    addi $a0, $zero, 9
    jal put_char
    
    addi $s0, $s0, 1
    bne $s0, $s1, for2

    li $s0, 1
    li $s1, 79
    li $t1, 2
for3:
    addi $a0,$zero, 0x5
    addi $a1,$zero, 0x0
    jal set_color   
    
    move $a0, $t1
    move $a1, $s0
    jal set_cursor
    addi $a0, $zero, 16
    jal put_char
    
    addi $s0, $s0, 1
    bne $s0, $s1, for3

    li $s0, 1
    li $s1, 79
    li $t1, 28
for4:
    addi $a0,$zero, 0x5
    addi $a1,$zero, 0x0
    jal set_color   
    
    move $a0, $t1
    move $a1, $s0
    jal set_cursor
    addi $a0, $zero, 16
    jal put_char
    
    addi $s0, $s0, 1
    bne $s0, $s1, for4


    lw $ra, 0($sp)
    lw $s0, 4($sp)
    lw $s1, 8($sp)
    lw $a0, 12($sp)
    lw $a1, 16($sp)
    
addi $sp, $sp, 20
jr $ra
   

