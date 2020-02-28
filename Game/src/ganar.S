.globl ganar

.extern robots
.data
win: .asciiz "GANASTE :D"
.text
ganar:
 addi $sp, $sp, -4
    sw $ra, 0($sp)

    la $t0, robots
    lw $t0, 0($t0)
    move $a0, $t0
beq $a0, $zero, gano
j end

gano:
jal clear_screen
    addi $a0,$zero, 0x2
    addi $a1,$zero, 0x0
    jal set_color
    
    li $t0, 14
    li $t1, 37
    move $a0, $t0
    move $a1, $t1
    jal set_cursor
    la $a0, win
    jal puts


end:
lw $ra, 0($sp)
addi $sp, $sp, 4
jr $ra
