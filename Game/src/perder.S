.globl perder

.extern x
.extern y
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
lose: .asciiz "HAZ DEFRAUDADO A LA HUMANIDAD! :("
.text
perder:
    addi $sp, $sp, -28
    sw $ra, 0($sp)
    sw $s0, 4($sp)
    sw $s1, 8($sp)
    sw $a0, 12($sp)
    sw $a1, 16($sp)
    sw $t0, 20($sp)
    sw $t1, 24($sp)

     if1:
        la $s0, x
        lw $t0, 0($s0)
        la $s1, rx
        lw $t1, 0($s1)
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, and1 
        j if2
     
    and1:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry
        lw $t1, 0($s1)
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
            j and1_1
    and1_1:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry
        lw $t1, 0($s1)
        addi $t1, $t1, 1
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
            j and1_2

    and1_2:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry
        lw $t1, 0($s1)
        subu $t1, $t1, 1			
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
       

   if2:
        la $s0, x
        lw $t0, 0($s0)
        la $s1, rx1
        lw $t1, 0($s1)
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, and2
        j if3

    and2:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry1
        lw $t1, 0($s1)
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
            j and2_1

    and2_1:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry1
        lw $t1, 0($s1)
        addi $t1, $t1, 1
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
            j and2_2

    and2_2:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry1
        lw $t1, 0($s1)
        subu $t1, $t1, 1			
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
     
    if3:
        la $s0, x
        lw $t0, 0($s0)
        la $s1, rx2
        lw $t1, 0($s1)
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, and3
        j if4
     
    and3:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry2
        lw $t1, 0($s1)
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
            j and3_1

    and3_1:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry2
        lw $t1, 0($s1)
        addi $t1, $t1, 1
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
            j and3_2

    and3_2:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry2
        lw $t1, 0($s1)
        subu $t1, $t1, 1			
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
       
    if4:
        la $s0, x
        lw $t0, 0($s0)
        la $s1, rx3
        lw $t1, 0($s1)
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, and4
        j if5


    and4:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry3
        lw $t1, 0($s1)
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
            j and4_1
    and4_1:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry3
        lw $t1, 0($s1)
        addi $t1, $t1, 1
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
            j and4_2

    and4_2:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry3
        lw $t1, 0($s1)
        subu $t1, $t1, 1			
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
        
    if5:
        la $s0, x
        lw $t0, 0($s0)
        la $s1, rx4
        lw $t1, 0($s1)
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, and5
       li $v0, 0
       j end
     
    and5:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry4
        lw $t1, 0($s1)
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
            j and5_1
    and5_1:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry4
        lw $t1, 0($s1)
        addi $t1, $t1, 1
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
            j and5_2

    and5_2:
        la $s0, y
        lw $t0, 0($s0)
        la $s1, ry4
        lw $t1, 0($s1)
        subu $t1, $t1, 1			
        move $a0, $t0
        move $a1, $t1
        beq $a0, $a1, gameover
       
        li $v0, 0
        j end


   
gameover: 
    jal clear_screen
    addi $a0,$zero, 0x4
    addi $a1,$zero, 0x0
    jal set_color
    
    li $t0, 14
    li $t1, 27
    move $a0, $t0
    move $a1, $t1
    jal set_cursor
    la $a0, lose
    jal puts
    li $v0, 1


end:

lw $ra, 0($sp)
lw $s0, 4($sp)
lw $s1, 8($sp)
lw $a0, 12($sp)
lw $a1, 16($sp)
lw $t0, 20($sp)
lw $t1, 24($sp)
addi $sp, $sp, 28
jr $ra 