.globl pintarobots




.extern rx
.extern ry
.extern rx1
.extern ry1
.extern rx2
.extern ry2
.extern rx3
.extern ry3
.extern rx4
.extern ry4
.data
.text


pintarobots:
     addi $sp, $sp, -28
    sw $ra, 0($sp)
    sw $s0, 4($sp)
    sw $s1, 8($sp)
    sw $a0, 12($sp)
    sw $a1, 16($sp)
    sw $t0, 20($sp)
    sw $t1, 24($sp)
 
    addi $a0,$zero, 0x2
    addi $a1,$zero, 0x0
 
    jal set_color

robot:
    la $s0, rx
    lw $t0, 0($s0)
    la $s1, ry
    lw $t1, 0($s1)
    move $a0, $t0
    move $a1, $t1

    jal set_cursor
    addi $a0, $zero, 3
    jal put_char

    move $a0, $t0
    move $a1, $t1  
    addi $a1, $a1, 1
    jal set_cursor
    addi $a0, $zero, 4
    jal put_char

robot1:
    la $s0, rx1
    lw $t0, 0($s0)
    la $s1, ry1
    lw $t1, 0($s1)
    move $a0, $t0
    move $a1, $t1

    jal set_cursor
    addi $a0, $zero, 3
    jal put_char

    move $a0, $t0
    move $a1, $t1  
    addi $a1, $a1, 1
    jal set_cursor
    addi $a0, $zero, 4
    jal put_char

robot2:
    la $s0, rx2
    lw $t0, 0($s0)
    la $s1, ry2
    lw $t1, 0($s1)
    move $a0, $t0
    move $a1, $t1

    jal set_cursor
    addi $a0, $zero, 3
    jal put_char

    move $a0, $t0
    move $a1, $t1  
    addi $a1, $a1, 1
    jal set_cursor
    addi $a0, $zero, 4
    jal put_char

robot3:
    la $s0, rx3
    lw $t0, 0($s0)
    la $s1, ry3
    lw $t1, 0($s1)
    move $a0, $t0
    move $a1, $t1

    jal set_cursor
    addi $a0, $zero, 3
    jal put_char

    move $a0, $t0
    move $a1, $t1  
    addi $a1, $a1, 1
    jal set_cursor
    addi $a0, $zero, 4
    jal put_char

robot4:
    la $s0, rx4
    lw $t0, 0($s0)
    la $s1, ry4
    lw $t1, 0($s1)
    move $a0, $t0
    move $a1, $t1

    jal set_cursor
    addi $a0, $zero, 3
    jal put_char

    move $a0, $t0
    move $a1, $t1  
    addi $a1, $a1, 1
    jal set_cursor
    addi $a0, $zero, 4
    jal put_char



lw $ra, 0($sp)
lw $s0, 4($sp)
lw $s1, 8($sp)
lw $a0, 12($sp)
lw $a1, 16($sp)
lw $t0, 20($sp)
lw $t1, 24($sp)
addi $sp, $sp, 28

jr $ra 