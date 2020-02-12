
robotron.elf:     formato del fichero elf32-bigmips


Desensamblado de la sección .text:

00400000 <start>:
  400000:	3c1d7fff 	lui	sp,0x7fff
  400004:	37bdfffc 	ori	sp,sp,0xfffc
  400008:	0c100122 	jal	400488 <main>
  40000c:	08100003 	j	40000c <start+0xc>

00400010 <pintarmapa>:
  400010:	27bdffd0 	addiu	sp,sp,-48
  400014:	00002825 	move	a1,zero
  400018:	24040007 	li	a0,7
  40001c:	afbf002c 	sw	ra,44(sp)
  400020:	afb30028 	sw	s3,40(sp)
  400024:	afb10020 	sw	s1,32(sp)
  400028:	afb0001c 	sw	s0,28(sp)
  40002c:	afb20024 	sw	s2,36(sp)
  400030:	0c10079c 	jal	401e70 <set_color>
  400034:	24050023 	li	a1,35
  400038:	24040001 	li	a0,1
  40003c:	0c1007aa 	jal	401ea8 <set_cursor>
  400040:	3c041001 	lui	a0,0x1001
  400044:	24840000 	addiu	a0,a0,0
  400048:	0c1007d4 	jal	401f50 <puts>
  40004c:	00002825 	move	a1,zero
  400050:	24040007 	li	a0,7
  400054:	0c10079c 	jal	401e70 <set_color>
  400058:	24050025 	li	a1,37
  40005c:	2404001d 	li	a0,29
  400060:	0c1007aa 	jal	401ea8 <set_cursor>
  400064:	3c041001 	lui	a0,0x1001
  400068:	2484000c 	addiu	a0,a0,12
  40006c:	0c1007d4 	jal	401f50 <puts>
  400070:	3c111001 	lui	s1,0x1001
  400074:	27a50010 	addiu	a1,sp,16
  400078:	27a40011 	addiu	a0,sp,17
  40007c:	0c1007a2 	jal	401e88 <get_color>
  400080:	24100002 	li	s0,2
  400084:	26310014 	addiu	s1,s1,20
  400088:	2413001d 	li	s3,29
  40008c:	321200ff 	andi	s2,s0,0xff
  400090:	00002825 	move	a1,zero
  400094:	24040005 	li	a0,5
  400098:	0c10079c 	jal	401e70 <set_color>
  40009c:	00002825 	move	a1,zero
  4000a0:	02402025 	move	a0,s2
  4000a4:	0c1007aa 	jal	401ea8 <set_cursor>
  4000a8:	02202025 	move	a0,s1
  4000ac:	0c1007d4 	jal	401f50 <puts>
  4000b0:	00002825 	move	a1,zero
  4000b4:	24040005 	li	a0,5
  4000b8:	0c10079c 	jal	401e70 <set_color>
  4000bc:	2405004f 	li	a1,79
  4000c0:	02402025 	move	a0,s2
  4000c4:	0c1007aa 	jal	401ea8 <set_cursor>
  4000c8:	26100001 	addiu	s0,s0,1
  4000cc:	02202025 	move	a0,s1
  4000d0:	0c1007d4 	jal	401f50 <puts>
  4000d4:	1613ffed 	bne	s0,s3,40008c <pintarmapa+0x7c>
  4000d8:	3c111001 	lui	s1,0x1001
  4000dc:	24100001 	li	s0,1
  4000e0:	26310018 	addiu	s1,s1,24
  4000e4:	2413004f 	li	s3,79
  4000e8:	321200ff 	andi	s2,s0,0xff
  4000ec:	00002825 	move	a1,zero
  4000f0:	24040005 	li	a0,5
  4000f4:	0c10079c 	jal	401e70 <set_color>
  4000f8:	02402825 	move	a1,s2
  4000fc:	24040002 	li	a0,2
  400100:	0c1007aa 	jal	401ea8 <set_cursor>
  400104:	02202025 	move	a0,s1
  400108:	0c1007d4 	jal	401f50 <puts>
  40010c:	00002825 	move	a1,zero
  400110:	24040005 	li	a0,5
  400114:	0c10079c 	jal	401e70 <set_color>
  400118:	02402825 	move	a1,s2
  40011c:	2404001c 	li	a0,28
  400120:	0c1007aa 	jal	401ea8 <set_cursor>
  400124:	26100001 	addiu	s0,s0,1
  400128:	02202025 	move	a0,s1
  40012c:	0c1007d4 	jal	401f50 <puts>
  400130:	1613ffed 	bne	s0,s3,4000e8 <pintarmapa+0xd8>
  400134:	8fbf002c 	lw	ra,44(sp)
  400138:	8fb30028 	lw	s3,40(sp)
  40013c:	8fb20024 	lw	s2,36(sp)
  400140:	8fb10020 	lw	s1,32(sp)
  400144:	8fb0001c 	lw	s0,28(sp)
  400148:	27bd0030 	addiu	sp,sp,48
  40014c:	03e00008 	jr	ra

00400150 <pintarobots>:
  400150:	27bdffe0 	addiu	sp,sp,-32
  400154:	27a50010 	addiu	a1,sp,16
  400158:	27a40011 	addiu	a0,sp,17
  40015c:	afbf001c 	sw	ra,28(sp)
  400160:	afb00018 	sw	s0,24(sp)
  400164:	0c1007a2 	jal	401e88 <get_color>
  400168:	00002825 	move	a1,zero
  40016c:	24040002 	li	a0,2
  400170:	0c10079c 	jal	401e70 <set_color>
  400174:	3c021001 	lui	v0,0x1001
  400178:	90450097 	lbu	a1,151(v0)
  40017c:	3c021001 	lui	v0,0x1001
  400180:	9044009b 	lbu	a0,155(v0)
  400184:	3c101001 	lui	s0,0x1001
  400188:	0c1007aa 	jal	401ea8 <set_cursor>
  40018c:	2604001c 	addiu	a0,s0,28
  400190:	0c1007d4 	jal	401f50 <puts>
  400194:	3c021001 	lui	v0,0x1001
  400198:	9045008f 	lbu	a1,143(v0)
  40019c:	3c021001 	lui	v0,0x1001
  4001a0:	90440093 	lbu	a0,147(v0)
  4001a4:	0c1007aa 	jal	401ea8 <set_cursor>
  4001a8:	2604001c 	addiu	a0,s0,28
  4001ac:	0c1007d4 	jal	401f50 <puts>
  4001b0:	3c021001 	lui	v0,0x1001
  4001b4:	90450087 	lbu	a1,135(v0)
  4001b8:	3c021001 	lui	v0,0x1001
  4001bc:	9044008b 	lbu	a0,139(v0)
  4001c0:	0c1007aa 	jal	401ea8 <set_cursor>
  4001c4:	2604001c 	addiu	a0,s0,28
  4001c8:	0c1007d4 	jal	401f50 <puts>
  4001cc:	3c021001 	lui	v0,0x1001
  4001d0:	9045007f 	lbu	a1,127(v0)
  4001d4:	3c021001 	lui	v0,0x1001
  4001d8:	90440083 	lbu	a0,131(v0)
  4001dc:	0c1007aa 	jal	401ea8 <set_cursor>
  4001e0:	2604001c 	addiu	a0,s0,28
  4001e4:	0c1007d4 	jal	401f50 <puts>
  4001e8:	3c021001 	lui	v0,0x1001
  4001ec:	90450077 	lbu	a1,119(v0)
  4001f0:	3c021001 	lui	v0,0x1001
  4001f4:	9044007b 	lbu	a0,123(v0)
  4001f8:	0c1007aa 	jal	401ea8 <set_cursor>
  4001fc:	2604001c 	addiu	a0,s0,28
  400200:	0c1007d4 	jal	401f50 <puts>
  400204:	3c021001 	lui	v0,0x1001
  400208:	9045006f 	lbu	a1,111(v0)
  40020c:	3c021001 	lui	v0,0x1001
  400210:	90440073 	lbu	a0,115(v0)
  400214:	0c1007aa 	jal	401ea8 <set_cursor>
  400218:	2604001c 	addiu	a0,s0,28
  40021c:	0c1007d4 	jal	401f50 <puts>
  400220:	3c021001 	lui	v0,0x1001
  400224:	90450067 	lbu	a1,103(v0)
  400228:	3c021001 	lui	v0,0x1001
  40022c:	9044006b 	lbu	a0,107(v0)
  400230:	0c1007aa 	jal	401ea8 <set_cursor>
  400234:	2604001c 	addiu	a0,s0,28
  400238:	0c1007d4 	jal	401f50 <puts>
  40023c:	3c021001 	lui	v0,0x1001
  400240:	9045005f 	lbu	a1,95(v0)
  400244:	3c021001 	lui	v0,0x1001
  400248:	90440063 	lbu	a0,99(v0)
  40024c:	0c1007aa 	jal	401ea8 <set_cursor>
  400250:	2604001c 	addiu	a0,s0,28
  400254:	0c1007d4 	jal	401f50 <puts>
  400258:	93a50010 	lbu	a1,16(sp)
  40025c:	93a40011 	lbu	a0,17(sp)
  400260:	0c10079c 	jal	401e70 <set_color>
  400264:	8fbf001c 	lw	ra,28(sp)
  400268:	8fb00018 	lw	s0,24(sp)
  40026c:	27bd0020 	addiu	sp,sp,32
  400270:	03e00008 	jr	ra

00400274 <ganar>:
  400274:	1480000e 	bnez	a0,4002b0 <ganar+0x3c>
  400278:	27bdffe8 	addiu	sp,sp,-24
  40027c:	afbf0014 	sw	ra,20(sp)
  400280:	0c1007e2 	jal	401f88 <clear_screen>
  400284:	00002825 	move	a1,zero
  400288:	24040002 	li	a0,2
  40028c:	0c10079c 	jal	401e70 <set_color>
  400290:	2404000e 	li	a0,14
  400294:	24050023 	li	a1,35
  400298:	0c1007aa 	jal	401ea8 <set_cursor>
  40029c:	8fbf0014 	lw	ra,20(sp)
  4002a0:	3c041001 	lui	a0,0x1001
  4002a4:	24840020 	addiu	a0,a0,32
  4002a8:	27bd0018 	addiu	sp,sp,24
  4002ac:	081007d4 	j	401f50 <puts>
  4002b0:	03e00008 	jr	ra

004002b4 <perder>:
  4002b4:	3c021001 	lui	v0,0x1001
  4002b8:	8c4300e4 	lw	v1,228(v0)
  4002bc:	3c021001 	lui	v0,0x1001
  4002c0:	8c420098 	lw	v0,152(v0)
  4002c4:	14620019 	bne	v1,v0,40032c <perder+0x78>
  4002c8:	3c021001 	lui	v0,0x1001
  4002cc:	8c4400f4 	lw	a0,244(v0)
  4002d0:	3c021001 	lui	v0,0x1001
  4002d4:	8c420094 	lw	v0,148(v0)
  4002d8:	10820004 	beq	a0,v0,4002ec <perder+0x38>
  4002dc:	24450001 	addiu	a1,v0,1
  4002e0:	10850002 	beq	a0,a1,4002ec <perder+0x38>
  4002e4:	2442ffff 	addiu	v0,v0,-1
  4002e8:	14820010 	bne	a0,v0,40032c <perder+0x78>
  4002ec:	27bdffe8 	addiu	sp,sp,-24
  4002f0:	afbf0014 	sw	ra,20(sp)
  4002f4:	0c1007e2 	jal	401f88 <clear_screen>
  4002f8:	00002825 	move	a1,zero
  4002fc:	24040004 	li	a0,4
  400300:	0c10079c 	jal	401e70 <set_color>
  400304:	2405001b 	li	a1,27
  400308:	2404000e 	li	a0,14
  40030c:	0c1007aa 	jal	401ea8 <set_cursor>
  400310:	3c041001 	lui	a0,0x1001
  400314:	24840030 	addiu	a0,a0,48
  400318:	0c1007d4 	jal	401f50 <puts>
  40031c:	8fbf0014 	lw	ra,20(sp)
  400320:	24020001 	li	v0,1
  400324:	27bd0018 	addiu	sp,sp,24
  400328:	03e00008 	jr	ra
  40032c:	3c021001 	lui	v0,0x1001
  400330:	8c420090 	lw	v0,144(v0)
  400334:	14620009 	bne	v1,v0,40035c <perder+0xa8>
  400338:	3c021001 	lui	v0,0x1001
  40033c:	8c4400f4 	lw	a0,244(v0)
  400340:	3c021001 	lui	v0,0x1001
  400344:	8c42008c 	lw	v0,140(v0)
  400348:	1082ffe8 	beq	a0,v0,4002ec <perder+0x38>
  40034c:	24450001 	addiu	a1,v0,1
  400350:	1085ffe6 	beq	a0,a1,4002ec <perder+0x38>
  400354:	2442ffff 	addiu	v0,v0,-1
  400358:	1082ffe4 	beq	a0,v0,4002ec <perder+0x38>
  40035c:	3c021001 	lui	v0,0x1001
  400360:	8c420088 	lw	v0,136(v0)
  400364:	14620009 	bne	v1,v0,40038c <perder+0xd8>
  400368:	3c021001 	lui	v0,0x1001
  40036c:	8c4400f4 	lw	a0,244(v0)
  400370:	3c021001 	lui	v0,0x1001
  400374:	8c420084 	lw	v0,132(v0)
  400378:	1082ffdc 	beq	a0,v0,4002ec <perder+0x38>
  40037c:	24450001 	addiu	a1,v0,1
  400380:	1085ffda 	beq	a0,a1,4002ec <perder+0x38>
  400384:	2442ffff 	addiu	v0,v0,-1
  400388:	1082ffd8 	beq	a0,v0,4002ec <perder+0x38>
  40038c:	3c021001 	lui	v0,0x1001
  400390:	8c420080 	lw	v0,128(v0)
  400394:	14620009 	bne	v1,v0,4003bc <perder+0x108>
  400398:	3c021001 	lui	v0,0x1001
  40039c:	8c4400f4 	lw	a0,244(v0)
  4003a0:	3c021001 	lui	v0,0x1001
  4003a4:	8c42007c 	lw	v0,124(v0)
  4003a8:	1082ffd0 	beq	a0,v0,4002ec <perder+0x38>
  4003ac:	24450001 	addiu	a1,v0,1
  4003b0:	1085ffce 	beq	a0,a1,4002ec <perder+0x38>
  4003b4:	2442ffff 	addiu	v0,v0,-1
  4003b8:	1082ffcc 	beq	a0,v0,4002ec <perder+0x38>
  4003bc:	3c021001 	lui	v0,0x1001
  4003c0:	8c420078 	lw	v0,120(v0)
  4003c4:	14620009 	bne	v1,v0,4003ec <perder+0x138>
  4003c8:	3c021001 	lui	v0,0x1001
  4003cc:	8c4400f4 	lw	a0,244(v0)
  4003d0:	3c021001 	lui	v0,0x1001
  4003d4:	8c420074 	lw	v0,116(v0)
  4003d8:	1082ffc4 	beq	a0,v0,4002ec <perder+0x38>
  4003dc:	24450001 	addiu	a1,v0,1
  4003e0:	1085ffc2 	beq	a0,a1,4002ec <perder+0x38>
  4003e4:	2442ffff 	addiu	v0,v0,-1
  4003e8:	1082ffc0 	beq	a0,v0,4002ec <perder+0x38>
  4003ec:	3c021001 	lui	v0,0x1001
  4003f0:	8c420070 	lw	v0,112(v0)
  4003f4:	14620009 	bne	v1,v0,40041c <perder+0x168>
  4003f8:	3c021001 	lui	v0,0x1001
  4003fc:	8c4400f4 	lw	a0,244(v0)
  400400:	3c021001 	lui	v0,0x1001
  400404:	8c42006c 	lw	v0,108(v0)
  400408:	1082ffb8 	beq	a0,v0,4002ec <perder+0x38>
  40040c:	24450001 	addiu	a1,v0,1
  400410:	1085ffb6 	beq	a0,a1,4002ec <perder+0x38>
  400414:	2442ffff 	addiu	v0,v0,-1
  400418:	1082ffb4 	beq	a0,v0,4002ec <perder+0x38>
  40041c:	3c021001 	lui	v0,0x1001
  400420:	8c420068 	lw	v0,104(v0)
  400424:	14620009 	bne	v1,v0,40044c <perder+0x198>
  400428:	3c021001 	lui	v0,0x1001
  40042c:	8c4400f4 	lw	a0,244(v0)
  400430:	3c021001 	lui	v0,0x1001
  400434:	8c420064 	lw	v0,100(v0)
  400438:	1082ffac 	beq	a0,v0,4002ec <perder+0x38>
  40043c:	24450001 	addiu	a1,v0,1
  400440:	1085ffaa 	beq	a0,a1,4002ec <perder+0x38>
  400444:	2442ffff 	addiu	v0,v0,-1
  400448:	1082ffa8 	beq	a0,v0,4002ec <perder+0x38>
  40044c:	3c021001 	lui	v0,0x1001
  400450:	8c440060 	lw	a0,96(v0)
  400454:	00001025 	move	v0,zero
  400458:	1464000a 	bne	v1,a0,400484 <perder+0x1d0>
  40045c:	3c031001 	lui	v1,0x1001
  400460:	8c6400f4 	lw	a0,244(v1)
  400464:	3c031001 	lui	v1,0x1001
  400468:	8c63005c 	lw	v1,92(v1)
  40046c:	1083ff9f 	beq	a0,v1,4002ec <perder+0x38>
  400470:	24650001 	addiu	a1,v1,1
  400474:	1085ff9d 	beq	a0,a1,4002ec <perder+0x38>
  400478:	2463ffff 	addiu	v1,v1,-1
  40047c:	1083ff9b 	beq	a0,v1,4002ec <perder+0x38>
  400480:	03e00008 	jr	ra
  400484:	03e00008 	jr	ra

00400488 <main>:
  400488:	27bdffb0 	addiu	sp,sp,-80
  40048c:	afbf004c 	sw	ra,76(sp)
  400490:	afb40038 	sw	s4,56(sp)
  400494:	afb30034 	sw	s3,52(sp)
  400498:	afb20030 	sw	s2,48(sp)
  40049c:	afb00028 	sw	s0,40(sp)
  4004a0:	3c131001 	lui	s3,0x1001
  4004a4:	afbe0048 	sw	s8,72(sp)
  4004a8:	afb70044 	sw	s7,68(sp)
  4004ac:	afb60040 	sw	s6,64(sp)
  4004b0:	afb5003c 	sw	s5,60(sp)
  4004b4:	afb1002c 	sw	s1,44(sp)
  4004b8:	0c1007e2 	jal	401f88 <clear_screen>
  4004bc:	0c100004 	jal	400010 <pintarmapa>
  4004c0:	0c100054 	jal	400150 <pintarobots>
  4004c4:	24020027 	li	v0,39
  4004c8:	3c101001 	lui	s0,0x1001
  4004cc:	ae6200f4 	sw	v0,244(s3)
  4004d0:	3c141001 	lui	s4,0x1001
  4004d4:	2402000e 	li	v0,14
  4004d8:	00002825 	move	a1,zero
  4004dc:	24040007 	li	a0,7
  4004e0:	ae8200e4 	sw	v0,228(s4)
  4004e4:	ae0000e8 	sw	zero,232(s0)
  4004e8:	0c10079c 	jal	401e70 <set_color>
  4004ec:	926500f7 	lbu	a1,247(s3)
  4004f0:	928400e7 	lbu	a0,231(s4)
  4004f4:	3c020708 	lui	v0,0x708
  4004f8:	afa20010 	sw	v0,16(sp)
  4004fc:	a7a00014 	sh	zero,20(sp)
  400500:	0c1007aa 	jal	401ea8 <set_cursor>
  400504:	27a40010 	addiu	a0,sp,16
  400508:	0c1007d4 	jal	401f50 <puts>
  40050c:	0c10076d 	jal	401db4 <keypad_init>
  400510:	afb00020 	sw	s0,32(sp)
  400514:	3c021001 	lui	v0,0x1001
  400518:	3c101001 	lui	s0,0x1001
  40051c:	26120054 	addiu	s2,s0,84
  400520:	afa20018 	sw	v0,24(sp)
  400524:	0c100771 	jal	401dc4 <keypad_getkey>
  400528:	00002825 	move	a1,zero
  40052c:	24040007 	li	a0,7
  400530:	afa2001c 	sw	v0,28(sp)
  400534:	0c10079c 	jal	401e70 <set_color>
  400538:	8fa2001c 	lw	v0,28(sp)
  40053c:	24030001 	li	v1,1
  400540:	14430080 	bne	v0,v1,400744 <main+0x2bc>
  400544:	8e6500f4 	lw	a1,244(s3)
  400548:	24020002 	li	v0,2
  40054c:	10a20015 	beq	a1,v0,4005a4 <main+0x11c>
  400550:	8fa20020 	lw	v0,32(sp)
  400554:	928400e7 	lbu	a0,231(s4)
  400558:	30a500ff 	andi	a1,a1,0xff
  40055c:	ac4300e8 	sw	v1,232(v0)
  400560:	0c1007aa 	jal	401ea8 <set_cursor>
  400564:	02402025 	move	a0,s2
  400568:	0c1007d4 	jal	401f50 <puts>
  40056c:	8e6500f4 	lw	a1,244(s3)
  400570:	24a5ffff 	addiu	a1,a1,-1
  400574:	928400e7 	lbu	a0,231(s4)
  400578:	ae6500f4 	sw	a1,244(s3)
  40057c:	30a500ff 	andi	a1,a1,0xff
  400580:	0c1007aa 	jal	401ea8 <set_cursor>
  400584:	27a40010 	addiu	a0,sp,16
  400588:	0c1007d4 	jal	401f50 <puts>
  40058c:	8e8300e4 	lw	v1,228(s4)
  400590:	3c021001 	lui	v0,0x1001
  400594:	ac4300ec 	sw	v1,236(v0)
  400598:	8e6300f4 	lw	v1,244(s3)
  40059c:	3c021001 	lui	v0,0x1001
  4005a0:	ac4300f0 	sw	v1,240(v0)
  4005a4:	8fa20020 	lw	v0,32(sp)
  4005a8:	3c041001 	lui	a0,0x1001
  4005ac:	8c4300e8 	lw	v1,232(v0)
  4005b0:	24020003 	li	v0,3
  4005b4:	3c161001 	lui	s6,0x1001
  4005b8:	3c171001 	lui	s7,0x1001
  4005bc:	3c111001 	lui	s1,0x1001
  4005c0:	afa40024 	sw	a0,36(sp)
  4005c4:	14620093 	bne	v1,v0,400814 <main+0x38c>
  4005c8:	8fa3001c 	lw	v1,28(sp)
  4005cc:	24020008 	li	v0,8
  4005d0:	14620090 	bne	v1,v0,400814 <main+0x38c>
  4005d4:	3c021001 	lui	v0,0x1001
  4005d8:	8ec300b8 	lw	v1,184(s6)
  4005dc:	8c4200bc 	lw	v0,188(v0)
  4005e0:	00431025 	or	v0,v0,v1
  4005e4:	8ee300b4 	lw	v1,180(s7)
  4005e8:	00431025 	or	v0,v0,v1
  4005ec:	14400089 	bnez	v0,400814 <main+0x38c>
  4005f0:	8fa20018 	lw	v0,24(sp)
  4005f4:	24030001 	li	v1,1
  4005f8:	ac4300c0 	sw	v1,192(v0)
  4005fc:	3c021001 	lui	v0,0x1001
  400600:	8c4200ec 	lw	v0,236(v0)
  400604:	3c031001 	lui	v1,0x1001
  400608:	24420001 	addiu	v0,v0,1
  40060c:	ac6200b0 	sw	v0,176(v1)
  400610:	3c021001 	lui	v0,0x1001
  400614:	8c4300f0 	lw	v1,240(v0)
  400618:	3c021001 	lui	v0,0x1001
  40061c:	ac4300ac 	sw	v1,172(v0)
  400620:	3c021001 	lui	v0,0x1001
  400624:	3c1e1001 	lui	s8,0x1001
  400628:	ac4000bc 	sw	zero,188(v0)
  40062c:	8fc200b0 	lw	v0,176(s8)
  400630:	aec000b8 	sw	zero,184(s6)
  400634:	2842001c 	slti	v0,v0,28
  400638:	aee000b4 	sw	zero,180(s7)
  40063c:	10400079 	beqz	v0,400824 <main+0x39c>
  400640:	2404000a 	li	a0,10
  400644:	0c100762 	jal	401d88 <delay_ms>
  400648:	926500f7 	lbu	a1,247(s3)
  40064c:	928400e7 	lbu	a0,231(s4)
  400650:	3c151001 	lui	s5,0x1001
  400654:	0c1007aa 	jal	401ea8 <set_cursor>
  400658:	27a40010 	addiu	a0,sp,16
  40065c:	0c1007d4 	jal	401f50 <puts>
  400660:	92a500af 	lbu	a1,175(s5)
  400664:	93c400b3 	lbu	a0,179(s8)
  400668:	0c1007aa 	jal	401ea8 <set_cursor>
  40066c:	02402025 	move	a0,s2
  400670:	0c1007d4 	jal	401f50 <puts>
  400674:	8fc400b0 	lw	a0,176(s8)
  400678:	92a500af 	lbu	a1,175(s5)
  40067c:	24840001 	addiu	a0,a0,1
  400680:	afc400b0 	sw	a0,176(s8)
  400684:	308400ff 	andi	a0,a0,0xff
  400688:	0c1007aa 	jal	401ea8 <set_cursor>
  40068c:	3c041001 	lui	a0,0x1001
  400690:	24840058 	addiu	a0,a0,88
  400694:	0c1007d4 	jal	401f50 <puts>
  400698:	3c031001 	lui	v1,0x1001
  40069c:	8fc200b0 	lw	v0,176(s8)
  4006a0:	8c640098 	lw	a0,152(v1)
  4006a4:	144400b9 	bne	v0,a0,40098c <main+0x504>
  4006a8:	3c031001 	lui	v1,0x1001
  4006ac:	8ea600ac 	lw	a2,172(s5)
  4006b0:	8c650094 	lw	a1,148(v1)
  4006b4:	10c50004 	beq	a2,a1,4006c8 <main+0x240>
  4006b8:	24a70001 	addiu	a3,a1,1
  4006bc:	10c70002 	beq	a2,a3,4006c8 <main+0x240>
  4006c0:	24a7ffff 	addiu	a3,a1,-1
  4006c4:	14c700b1 	bne	a2,a3,40098c <main+0x504>
  4006c8:	30a500ff 	andi	a1,a1,0xff
  4006cc:	308400ff 	andi	a0,a0,0xff
  4006d0:	afa30024 	sw	v1,36(sp)
  4006d4:	0c1007aa 	jal	401ea8 <set_cursor>
  4006d8:	26040054 	addiu	a0,s0,84
  4006dc:	0c1007d4 	jal	401f50 <puts>
  4006e0:	8fa30024 	lw	v1,36(sp)
  4006e4:	3c021001 	lui	v0,0x1001
  4006e8:	ac400098 	sw	zero,152(v0)
  4006ec:	ac600094 	sw	zero,148(v1)
  4006f0:	8e22009c 	lw	v0,156(s1)
  4006f4:	92a500af 	lbu	a1,175(s5)
  4006f8:	93c400b3 	lbu	a0,179(s8)
  4006fc:	2442ffff 	addiu	v0,v0,-1
  400700:	ae22009c 	sw	v0,156(s1)
  400704:	0c1007aa 	jal	401ea8 <set_cursor>
  400708:	26040054 	addiu	a0,s0,84
  40070c:	0c1007d4 	jal	401f50 <puts>
  400710:	8fa20018 	lw	v0,24(sp)
  400714:	ac4000c0 	sw	zero,192(v0)
  400718:	8fc300b0 	lw	v1,176(s8)
  40071c:	2402001b 	li	v0,27
  400720:	14620040 	bne	v1,v0,400824 <main+0x39c>
  400724:	8fa20018 	lw	v0,24(sp)
  400728:	92a500af 	lbu	a1,175(s5)
  40072c:	2404001b 	li	a0,27
  400730:	ac4000c0 	sw	zero,192(v0)
  400734:	0c1007aa 	jal	401ea8 <set_cursor>
  400738:	26040054 	addiu	a0,s0,84
  40073c:	0c1007d4 	jal	401f50 <puts>
  400740:	10000038 	b	400824 <main+0x39c>
  400744:	8fa3001c 	lw	v1,28(sp)
  400748:	24020002 	li	v0,2
  40074c:	10620012 	beq	v1,v0,400798 <main+0x310>
  400750:	24020003 	li	v0,3
  400754:	1062001e 	beq	v1,v0,4007d0 <main+0x348>
  400758:	8fa4001c 	lw	a0,28(sp)
  40075c:	24030004 	li	v1,4
  400760:	1483ff90 	bne	a0,v1,4005a4 <main+0x11c>
  400764:	8e8400e4 	lw	a0,228(s4)
  400768:	1082ff8e 	beq	a0,v0,4005a4 <main+0x11c>
  40076c:	8fa20020 	lw	v0,32(sp)
  400770:	8fa3001c 	lw	v1,28(sp)
  400774:	926500f7 	lbu	a1,247(s3)
  400778:	308400ff 	andi	a0,a0,0xff
  40077c:	ac4300e8 	sw	v1,232(v0)
  400780:	0c1007aa 	jal	401ea8 <set_cursor>
  400784:	02402025 	move	a0,s2
  400788:	0c1007d4 	jal	401f50 <puts>
  40078c:	8e8400e4 	lw	a0,228(s4)
  400790:	2484ffff 	addiu	a0,a0,-1
  400794:	1000001b 	b	400804 <main+0x37c>
  400798:	8e6500f4 	lw	a1,244(s3)
  40079c:	2402004d 	li	v0,77
  4007a0:	10a2ff80 	beq	a1,v0,4005a4 <main+0x11c>
  4007a4:	8fa20020 	lw	v0,32(sp)
  4007a8:	8fa3001c 	lw	v1,28(sp)
  4007ac:	928400e7 	lbu	a0,231(s4)
  4007b0:	30a500ff 	andi	a1,a1,0xff
  4007b4:	ac4300e8 	sw	v1,232(v0)
  4007b8:	0c1007aa 	jal	401ea8 <set_cursor>
  4007bc:	02402025 	move	a0,s2
  4007c0:	0c1007d4 	jal	401f50 <puts>
  4007c4:	8e6500f4 	lw	a1,244(s3)
  4007c8:	24a50001 	addiu	a1,a1,1
  4007cc:	1000ff69 	b	400574 <main+0xec>
  4007d0:	8e8400e4 	lw	a0,228(s4)
  4007d4:	2402001b 	li	v0,27
  4007d8:	1082ff72 	beq	a0,v0,4005a4 <main+0x11c>
  4007dc:	8fa20020 	lw	v0,32(sp)
  4007e0:	8fa3001c 	lw	v1,28(sp)
  4007e4:	926500f7 	lbu	a1,247(s3)
  4007e8:	308400ff 	andi	a0,a0,0xff
  4007ec:	ac4300e8 	sw	v1,232(v0)
  4007f0:	0c1007aa 	jal	401ea8 <set_cursor>
  4007f4:	02402025 	move	a0,s2
  4007f8:	0c1007d4 	jal	401f50 <puts>
  4007fc:	8e8400e4 	lw	a0,228(s4)
  400800:	24840001 	addiu	a0,a0,1
  400804:	ae8400e4 	sw	a0,228(s4)
  400808:	926500f7 	lbu	a1,247(s3)
  40080c:	308400ff 	andi	a0,a0,0xff
  400810:	1000ff5b 	b	400580 <main+0xf8>
  400814:	8fa20018 	lw	v0,24(sp)
  400818:	24030001 	li	v1,1
  40081c:	8c4200c0 	lw	v0,192(v0)
  400820:	1043ff7f 	beq	v0,v1,400620 <main+0x198>
  400824:	8fa20020 	lw	v0,32(sp)
  400828:	8c4300e8 	lw	v1,232(v0)
  40082c:	24020004 	li	v0,4
  400830:	146200f0 	bne	v1,v0,400bf4 <main+0x76c>
  400834:	8fa3001c 	lw	v1,28(sp)
  400838:	24020008 	li	v0,8
  40083c:	146200ed 	bne	v1,v0,400bf4 <main+0x76c>
  400840:	8fa20018 	lw	v0,24(sp)
  400844:	8ec300b8 	lw	v1,184(s6)
  400848:	8c4200c0 	lw	v0,192(v0)
  40084c:	00431025 	or	v0,v0,v1
  400850:	8ee300b4 	lw	v1,180(s7)
  400854:	00431025 	or	v0,v0,v1
  400858:	144000e6 	bnez	v0,400bf4 <main+0x76c>
  40085c:	3c021001 	lui	v0,0x1001
  400860:	24030001 	li	v1,1
  400864:	ac4300bc 	sw	v1,188(v0)
  400868:	3c021001 	lui	v0,0x1001
  40086c:	8c4200ec 	lw	v0,236(v0)
  400870:	3c031001 	lui	v1,0x1001
  400874:	2442ffff 	addiu	v0,v0,-1
  400878:	ac6200b0 	sw	v0,176(v1)
  40087c:	3c021001 	lui	v0,0x1001
  400880:	8c4300f0 	lw	v1,240(v0)
  400884:	3c021001 	lui	v0,0x1001
  400888:	ac4300ac 	sw	v1,172(v0)
  40088c:	8fa20018 	lw	v0,24(sp)
  400890:	aec000b8 	sw	zero,184(s6)
  400894:	ac4000c0 	sw	zero,192(v0)
  400898:	3c021001 	lui	v0,0x1001
  40089c:	8c4200ec 	lw	v0,236(v0)
  4008a0:	aee000b4 	sw	zero,180(s7)
  4008a4:	28420004 	slti	v0,v0,4
  4008a8:	144000d6 	bnez	v0,400c04 <main+0x77c>
  4008ac:	2404000a 	li	a0,10
  4008b0:	0c100762 	jal	401d88 <delay_ms>
  4008b4:	926500f7 	lbu	a1,247(s3)
  4008b8:	928400e7 	lbu	a0,231(s4)
  4008bc:	3c151001 	lui	s5,0x1001
  4008c0:	0c1007aa 	jal	401ea8 <set_cursor>
  4008c4:	3c1e1001 	lui	s8,0x1001
  4008c8:	27a40010 	addiu	a0,sp,16
  4008cc:	0c1007d4 	jal	401f50 <puts>
  4008d0:	93c500af 	lbu	a1,175(s8)
  4008d4:	92a400b3 	lbu	a0,179(s5)
  4008d8:	0c1007aa 	jal	401ea8 <set_cursor>
  4008dc:	02402025 	move	a0,s2
  4008e0:	0c1007d4 	jal	401f50 <puts>
  4008e4:	8ea400b0 	lw	a0,176(s5)
  4008e8:	93c500af 	lbu	a1,175(s8)
  4008ec:	2484ffff 	addiu	a0,a0,-1
  4008f0:	aea400b0 	sw	a0,176(s5)
  4008f4:	308400ff 	andi	a0,a0,0xff
  4008f8:	0c1007aa 	jal	401ea8 <set_cursor>
  4008fc:	3c041001 	lui	a0,0x1001
  400900:	24840058 	addiu	a0,a0,88
  400904:	0c1007d4 	jal	401f50 <puts>
  400908:	3c031001 	lui	v1,0x1001
  40090c:	8ea200b0 	lw	v0,176(s5)
  400910:	8c640098 	lw	a0,152(v1)
  400914:	14440115 	bne	v0,a0,400d6c <main+0x8e4>
  400918:	3c031001 	lui	v1,0x1001
  40091c:	8fc600ac 	lw	a2,172(s8)
  400920:	8c650094 	lw	a1,148(v1)
  400924:	10c50004 	beq	a2,a1,400938 <main+0x4b0>
  400928:	24a70001 	addiu	a3,a1,1
  40092c:	10c70002 	beq	a2,a3,400938 <main+0x4b0>
  400930:	24a7ffff 	addiu	a3,a1,-1
  400934:	14c7010d 	bne	a2,a3,400d6c <main+0x8e4>
  400938:	30a500ff 	andi	a1,a1,0xff
  40093c:	308400ff 	andi	a0,a0,0xff
  400940:	afa30024 	sw	v1,36(sp)
  400944:	0c1007aa 	jal	401ea8 <set_cursor>
  400948:	26040054 	addiu	a0,s0,84
  40094c:	0c1007d4 	jal	401f50 <puts>
  400950:	8fa30024 	lw	v1,36(sp)
  400954:	3c021001 	lui	v0,0x1001
  400958:	ac400098 	sw	zero,152(v0)
  40095c:	ac600094 	sw	zero,148(v1)
  400960:	8e22009c 	lw	v0,156(s1)
  400964:	93c500af 	lbu	a1,175(s8)
  400968:	92a400b3 	lbu	a0,179(s5)
  40096c:	2442ffff 	addiu	v0,v0,-1
  400970:	ae22009c 	sw	v0,156(s1)
  400974:	0c1007aa 	jal	401ea8 <set_cursor>
  400978:	26040054 	addiu	a0,s0,84
  40097c:	0c1007d4 	jal	401f50 <puts>
  400980:	3c021001 	lui	v0,0x1001
  400984:	ac4000bc 	sw	zero,188(v0)
  400988:	1000009e 	b	400c04 <main+0x77c>
  40098c:	3c031001 	lui	v1,0x1001
  400990:	8c640090 	lw	a0,144(v1)
  400994:	14440013 	bne	v0,a0,4009e4 <main+0x55c>
  400998:	3c031001 	lui	v1,0x1001
  40099c:	8ea600ac 	lw	a2,172(s5)
  4009a0:	8c65008c 	lw	a1,140(v1)
  4009a4:	10c50004 	beq	a2,a1,4009b8 <main+0x530>
  4009a8:	24a70001 	addiu	a3,a1,1
  4009ac:	10c70002 	beq	a2,a3,4009b8 <main+0x530>
  4009b0:	24a7ffff 	addiu	a3,a1,-1
  4009b4:	14c7000b 	bne	a2,a3,4009e4 <main+0x55c>
  4009b8:	30a500ff 	andi	a1,a1,0xff
  4009bc:	308400ff 	andi	a0,a0,0xff
  4009c0:	afa30024 	sw	v1,36(sp)
  4009c4:	0c1007aa 	jal	401ea8 <set_cursor>
  4009c8:	26040054 	addiu	a0,s0,84
  4009cc:	0c1007d4 	jal	401f50 <puts>
  4009d0:	8fa30024 	lw	v1,36(sp)
  4009d4:	3c021001 	lui	v0,0x1001
  4009d8:	ac400090 	sw	zero,144(v0)
  4009dc:	ac60008c 	sw	zero,140(v1)
  4009e0:	1000ff43 	b	4006f0 <main+0x268>
  4009e4:	3c031001 	lui	v1,0x1001
  4009e8:	8c640088 	lw	a0,136(v1)
  4009ec:	14440013 	bne	v0,a0,400a3c <main+0x5b4>
  4009f0:	3c031001 	lui	v1,0x1001
  4009f4:	8ea600ac 	lw	a2,172(s5)
  4009f8:	8c650084 	lw	a1,132(v1)
  4009fc:	10c50004 	beq	a2,a1,400a10 <main+0x588>
  400a00:	24a70001 	addiu	a3,a1,1
  400a04:	10c70002 	beq	a2,a3,400a10 <main+0x588>
  400a08:	24a7ffff 	addiu	a3,a1,-1
  400a0c:	14c7000b 	bne	a2,a3,400a3c <main+0x5b4>
  400a10:	30a500ff 	andi	a1,a1,0xff
  400a14:	308400ff 	andi	a0,a0,0xff
  400a18:	afa30024 	sw	v1,36(sp)
  400a1c:	0c1007aa 	jal	401ea8 <set_cursor>
  400a20:	26040054 	addiu	a0,s0,84
  400a24:	0c1007d4 	jal	401f50 <puts>
  400a28:	8fa30024 	lw	v1,36(sp)
  400a2c:	3c021001 	lui	v0,0x1001
  400a30:	ac400088 	sw	zero,136(v0)
  400a34:	ac600084 	sw	zero,132(v1)
  400a38:	1000ff2d 	b	4006f0 <main+0x268>
  400a3c:	3c031001 	lui	v1,0x1001
  400a40:	8c640080 	lw	a0,128(v1)
  400a44:	14440013 	bne	v0,a0,400a94 <main+0x60c>
  400a48:	3c031001 	lui	v1,0x1001
  400a4c:	8ea600ac 	lw	a2,172(s5)
  400a50:	8c65007c 	lw	a1,124(v1)
  400a54:	10c50004 	beq	a2,a1,400a68 <main+0x5e0>
  400a58:	24a70001 	addiu	a3,a1,1
  400a5c:	10c70002 	beq	a2,a3,400a68 <main+0x5e0>
  400a60:	24a7ffff 	addiu	a3,a1,-1
  400a64:	14c7000b 	bne	a2,a3,400a94 <main+0x60c>
  400a68:	30a500ff 	andi	a1,a1,0xff
  400a6c:	308400ff 	andi	a0,a0,0xff
  400a70:	afa30024 	sw	v1,36(sp)
  400a74:	0c1007aa 	jal	401ea8 <set_cursor>
  400a78:	26040054 	addiu	a0,s0,84
  400a7c:	0c1007d4 	jal	401f50 <puts>
  400a80:	8fa30024 	lw	v1,36(sp)
  400a84:	3c021001 	lui	v0,0x1001
  400a88:	ac400080 	sw	zero,128(v0)
  400a8c:	ac60007c 	sw	zero,124(v1)
  400a90:	1000ff17 	b	4006f0 <main+0x268>
  400a94:	3c031001 	lui	v1,0x1001
  400a98:	8c640078 	lw	a0,120(v1)
  400a9c:	14440013 	bne	v0,a0,400aec <main+0x664>
  400aa0:	3c031001 	lui	v1,0x1001
  400aa4:	8ea600ac 	lw	a2,172(s5)
  400aa8:	8c650074 	lw	a1,116(v1)
  400aac:	10c50004 	beq	a2,a1,400ac0 <main+0x638>
  400ab0:	24a70001 	addiu	a3,a1,1
  400ab4:	10c70002 	beq	a2,a3,400ac0 <main+0x638>
  400ab8:	24a7ffff 	addiu	a3,a1,-1
  400abc:	14c7000b 	bne	a2,a3,400aec <main+0x664>
  400ac0:	30a500ff 	andi	a1,a1,0xff
  400ac4:	308400ff 	andi	a0,a0,0xff
  400ac8:	afa30024 	sw	v1,36(sp)
  400acc:	0c1007aa 	jal	401ea8 <set_cursor>
  400ad0:	26040054 	addiu	a0,s0,84
  400ad4:	0c1007d4 	jal	401f50 <puts>
  400ad8:	8fa30024 	lw	v1,36(sp)
  400adc:	3c021001 	lui	v0,0x1001
  400ae0:	ac400078 	sw	zero,120(v0)
  400ae4:	ac600074 	sw	zero,116(v1)
  400ae8:	1000ff01 	b	4006f0 <main+0x268>
  400aec:	3c031001 	lui	v1,0x1001
  400af0:	8c640070 	lw	a0,112(v1)
  400af4:	14440013 	bne	v0,a0,400b44 <main+0x6bc>
  400af8:	3c031001 	lui	v1,0x1001
  400afc:	8ea600ac 	lw	a2,172(s5)
  400b00:	8c65006c 	lw	a1,108(v1)
  400b04:	10c50004 	beq	a2,a1,400b18 <main+0x690>
  400b08:	24a70001 	addiu	a3,a1,1
  400b0c:	10c70002 	beq	a2,a3,400b18 <main+0x690>
  400b10:	24a7ffff 	addiu	a3,a1,-1
  400b14:	14c7000b 	bne	a2,a3,400b44 <main+0x6bc>
  400b18:	30a500ff 	andi	a1,a1,0xff
  400b1c:	308400ff 	andi	a0,a0,0xff
  400b20:	afa30024 	sw	v1,36(sp)
  400b24:	0c1007aa 	jal	401ea8 <set_cursor>
  400b28:	26040054 	addiu	a0,s0,84
  400b2c:	0c1007d4 	jal	401f50 <puts>
  400b30:	8fa30024 	lw	v1,36(sp)
  400b34:	3c021001 	lui	v0,0x1001
  400b38:	ac400070 	sw	zero,112(v0)
  400b3c:	ac60006c 	sw	zero,108(v1)
  400b40:	1000feeb 	b	4006f0 <main+0x268>
  400b44:	3c031001 	lui	v1,0x1001
  400b48:	8c640068 	lw	a0,104(v1)
  400b4c:	14440013 	bne	v0,a0,400b9c <main+0x714>
  400b50:	3c031001 	lui	v1,0x1001
  400b54:	8ea600ac 	lw	a2,172(s5)
  400b58:	8c650064 	lw	a1,100(v1)
  400b5c:	10c50004 	beq	a2,a1,400b70 <main+0x6e8>
  400b60:	24a70001 	addiu	a3,a1,1
  400b64:	10c70002 	beq	a2,a3,400b70 <main+0x6e8>
  400b68:	24a7ffff 	addiu	a3,a1,-1
  400b6c:	14c7000b 	bne	a2,a3,400b9c <main+0x714>
  400b70:	30a500ff 	andi	a1,a1,0xff
  400b74:	308400ff 	andi	a0,a0,0xff
  400b78:	afa30024 	sw	v1,36(sp)
  400b7c:	0c1007aa 	jal	401ea8 <set_cursor>
  400b80:	26040054 	addiu	a0,s0,84
  400b84:	0c1007d4 	jal	401f50 <puts>
  400b88:	8fa30024 	lw	v1,36(sp)
  400b8c:	3c021001 	lui	v0,0x1001
  400b90:	ac400068 	sw	zero,104(v0)
  400b94:	ac600064 	sw	zero,100(v1)
  400b98:	1000fed5 	b	4006f0 <main+0x268>
  400b9c:	3c031001 	lui	v1,0x1001
  400ba0:	8c640060 	lw	a0,96(v1)
  400ba4:	1444fedc 	bne	v0,a0,400718 <main+0x290>
  400ba8:	3c021001 	lui	v0,0x1001
  400bac:	8ea300ac 	lw	v1,172(s5)
  400bb0:	8c45005c 	lw	a1,92(v0)
  400bb4:	10650004 	beq	v1,a1,400bc8 <main+0x740>
  400bb8:	24a60001 	addiu	a2,a1,1
  400bbc:	10660002 	beq	v1,a2,400bc8 <main+0x740>
  400bc0:	24a6ffff 	addiu	a2,a1,-1
  400bc4:	1466fed4 	bne	v1,a2,400718 <main+0x290>
  400bc8:	30a500ff 	andi	a1,a1,0xff
  400bcc:	308400ff 	andi	a0,a0,0xff
  400bd0:	afa20024 	sw	v0,36(sp)
  400bd4:	0c1007aa 	jal	401ea8 <set_cursor>
  400bd8:	26040054 	addiu	a0,s0,84
  400bdc:	0c1007d4 	jal	401f50 <puts>
  400be0:	3c021001 	lui	v0,0x1001
  400be4:	ac400060 	sw	zero,96(v0)
  400be8:	8fa20024 	lw	v0,36(sp)
  400bec:	ac40005c 	sw	zero,92(v0)
  400bf0:	1000febf 	b	4006f0 <main+0x268>
  400bf4:	3c021001 	lui	v0,0x1001
  400bf8:	8c4200bc 	lw	v0,188(v0)
  400bfc:	24030001 	li	v1,1
  400c00:	1043ff22 	beq	v0,v1,40088c <main+0x404>
  400c04:	8fa20020 	lw	v0,32(sp)
  400c08:	8c4300e8 	lw	v1,232(v0)
  400c0c:	24020002 	li	v0,2
  400c10:	146200fa 	bne	v1,v0,400ffc <main+0xb74>
  400c14:	8fa3001c 	lw	v1,28(sp)
  400c18:	24020008 	li	v0,8
  400c1c:	146200f7 	bne	v1,v0,400ffc <main+0xb74>
  400c20:	8fa20018 	lw	v0,24(sp)
  400c24:	3c031001 	lui	v1,0x1001
  400c28:	8c6300bc 	lw	v1,188(v1)
  400c2c:	8c4200c0 	lw	v0,192(v0)
  400c30:	00431025 	or	v0,v0,v1
  400c34:	8ee300b4 	lw	v1,180(s7)
  400c38:	00431025 	or	v0,v0,v1
  400c3c:	144000ef 	bnez	v0,400ffc <main+0xb74>
  400c40:	24020001 	li	v0,1
  400c44:	aec200b8 	sw	v0,184(s6)
  400c48:	3c021001 	lui	v0,0x1001
  400c4c:	8c4200f0 	lw	v0,240(v0)
  400c50:	3c031001 	lui	v1,0x1001
  400c54:	24420001 	addiu	v0,v0,1
  400c58:	ac6200ac 	sw	v0,172(v1)
  400c5c:	3c021001 	lui	v0,0x1001
  400c60:	8c4300ec 	lw	v1,236(v0)
  400c64:	3c021001 	lui	v0,0x1001
  400c68:	ac4300b0 	sw	v1,176(v0)
  400c6c:	8fa20018 	lw	v0,24(sp)
  400c70:	aee000b4 	sw	zero,180(s7)
  400c74:	ac4000c0 	sw	zero,192(v0)
  400c78:	3c021001 	lui	v0,0x1001
  400c7c:	ac4000bc 	sw	zero,188(v0)
  400c80:	3c021001 	lui	v0,0x1001
  400c84:	8c4200ec 	lw	v0,236(v0)
  400c88:	2842004f 	slti	v0,v0,79
  400c8c:	104000de 	beqz	v0,401008 <main+0xb80>
  400c90:	2404000a 	li	a0,10
  400c94:	0c100762 	jal	401d88 <delay_ms>
  400c98:	926500f7 	lbu	a1,247(s3)
  400c9c:	928400e7 	lbu	a0,231(s4)
  400ca0:	3c151001 	lui	s5,0x1001
  400ca4:	0c1007aa 	jal	401ea8 <set_cursor>
  400ca8:	3c1e1001 	lui	s8,0x1001
  400cac:	27a40010 	addiu	a0,sp,16
  400cb0:	0c1007d4 	jal	401f50 <puts>
  400cb4:	92a500af 	lbu	a1,175(s5)
  400cb8:	93c400b3 	lbu	a0,179(s8)
  400cbc:	0c1007aa 	jal	401ea8 <set_cursor>
  400cc0:	02402025 	move	a0,s2
  400cc4:	0c1007d4 	jal	401f50 <puts>
  400cc8:	8ea500ac 	lw	a1,172(s5)
  400ccc:	93c400b3 	lbu	a0,179(s8)
  400cd0:	24a50001 	addiu	a1,a1,1
  400cd4:	aea500ac 	sw	a1,172(s5)
  400cd8:	30a500ff 	andi	a1,a1,0xff
  400cdc:	0c1007aa 	jal	401ea8 <set_cursor>
  400ce0:	3c041001 	lui	a0,0x1001
  400ce4:	24840058 	addiu	a0,a0,88
  400ce8:	0c1007d4 	jal	401f50 <puts>
  400cec:	3c021001 	lui	v0,0x1001
  400cf0:	8fc300b0 	lw	v1,176(s8)
  400cf4:	8c440098 	lw	a0,152(v0)
  400cf8:	1464011c 	bne	v1,a0,40116c <main+0xce4>
  400cfc:	3c021001 	lui	v0,0x1001
  400d00:	8ea600ac 	lw	a2,172(s5)
  400d04:	8c450094 	lw	a1,148(v0)
  400d08:	10c50004 	beq	a2,a1,400d1c <main+0x894>
  400d0c:	24a70001 	addiu	a3,a1,1
  400d10:	10c70002 	beq	a2,a3,400d1c <main+0x894>
  400d14:	24a7ffff 	addiu	a3,a1,-1
  400d18:	14c70114 	bne	a2,a3,40116c <main+0xce4>
  400d1c:	30a500ff 	andi	a1,a1,0xff
  400d20:	308400ff 	andi	a0,a0,0xff
  400d24:	afa20024 	sw	v0,36(sp)
  400d28:	0c1007aa 	jal	401ea8 <set_cursor>
  400d2c:	26040054 	addiu	a0,s0,84
  400d30:	0c1007d4 	jal	401f50 <puts>
  400d34:	3c021001 	lui	v0,0x1001
  400d38:	ac400098 	sw	zero,152(v0)
  400d3c:	8fa20024 	lw	v0,36(sp)
  400d40:	ac400094 	sw	zero,148(v0)
  400d44:	8e22009c 	lw	v0,156(s1)
  400d48:	92a500af 	lbu	a1,175(s5)
  400d4c:	93c400b3 	lbu	a0,179(s8)
  400d50:	2442ffff 	addiu	v0,v0,-1
  400d54:	ae22009c 	sw	v0,156(s1)
  400d58:	0c1007aa 	jal	401ea8 <set_cursor>
  400d5c:	26040054 	addiu	a0,s0,84
  400d60:	0c1007d4 	jal	401f50 <puts>
  400d64:	aec000b8 	sw	zero,184(s6)
  400d68:	100000a7 	b	401008 <main+0xb80>
  400d6c:	3c031001 	lui	v1,0x1001
  400d70:	8c640090 	lw	a0,144(v1)
  400d74:	14440013 	bne	v0,a0,400dc4 <main+0x93c>
  400d78:	3c031001 	lui	v1,0x1001
  400d7c:	8fc600ac 	lw	a2,172(s8)
  400d80:	8c65008c 	lw	a1,140(v1)
  400d84:	10c50004 	beq	a2,a1,400d98 <main+0x910>
  400d88:	24a70001 	addiu	a3,a1,1
  400d8c:	10c70002 	beq	a2,a3,400d98 <main+0x910>
  400d90:	24a7ffff 	addiu	a3,a1,-1
  400d94:	14c7000b 	bne	a2,a3,400dc4 <main+0x93c>
  400d98:	30a500ff 	andi	a1,a1,0xff
  400d9c:	308400ff 	andi	a0,a0,0xff
  400da0:	afa30024 	sw	v1,36(sp)
  400da4:	0c1007aa 	jal	401ea8 <set_cursor>
  400da8:	26040054 	addiu	a0,s0,84
  400dac:	0c1007d4 	jal	401f50 <puts>
  400db0:	8fa30024 	lw	v1,36(sp)
  400db4:	3c021001 	lui	v0,0x1001
  400db8:	ac400090 	sw	zero,144(v0)
  400dbc:	ac60008c 	sw	zero,140(v1)
  400dc0:	1000fee7 	b	400960 <main+0x4d8>
  400dc4:	3c031001 	lui	v1,0x1001
  400dc8:	8c640088 	lw	a0,136(v1)
  400dcc:	14440013 	bne	v0,a0,400e1c <main+0x994>
  400dd0:	3c031001 	lui	v1,0x1001
  400dd4:	8fc600ac 	lw	a2,172(s8)
  400dd8:	8c650084 	lw	a1,132(v1)
  400ddc:	10c50004 	beq	a2,a1,400df0 <main+0x968>
  400de0:	24a70001 	addiu	a3,a1,1
  400de4:	10c70002 	beq	a2,a3,400df0 <main+0x968>
  400de8:	24a7ffff 	addiu	a3,a1,-1
  400dec:	14c7000b 	bne	a2,a3,400e1c <main+0x994>
  400df0:	30a500ff 	andi	a1,a1,0xff
  400df4:	308400ff 	andi	a0,a0,0xff
  400df8:	afa30024 	sw	v1,36(sp)
  400dfc:	0c1007aa 	jal	401ea8 <set_cursor>
  400e00:	26040054 	addiu	a0,s0,84
  400e04:	0c1007d4 	jal	401f50 <puts>
  400e08:	8fa30024 	lw	v1,36(sp)
  400e0c:	3c021001 	lui	v0,0x1001
  400e10:	ac400088 	sw	zero,136(v0)
  400e14:	ac600084 	sw	zero,132(v1)
  400e18:	1000fed1 	b	400960 <main+0x4d8>
  400e1c:	3c031001 	lui	v1,0x1001
  400e20:	8c640080 	lw	a0,128(v1)
  400e24:	14440013 	bne	v0,a0,400e74 <main+0x9ec>
  400e28:	3c031001 	lui	v1,0x1001
  400e2c:	8fc600ac 	lw	a2,172(s8)
  400e30:	8c65007c 	lw	a1,124(v1)
  400e34:	10c50004 	beq	a2,a1,400e48 <main+0x9c0>
  400e38:	24a70001 	addiu	a3,a1,1
  400e3c:	10c70002 	beq	a2,a3,400e48 <main+0x9c0>
  400e40:	24a7ffff 	addiu	a3,a1,-1
  400e44:	14c7000b 	bne	a2,a3,400e74 <main+0x9ec>
  400e48:	30a500ff 	andi	a1,a1,0xff
  400e4c:	308400ff 	andi	a0,a0,0xff
  400e50:	afa30024 	sw	v1,36(sp)
  400e54:	0c1007aa 	jal	401ea8 <set_cursor>
  400e58:	26040054 	addiu	a0,s0,84
  400e5c:	0c1007d4 	jal	401f50 <puts>
  400e60:	8fa30024 	lw	v1,36(sp)
  400e64:	3c021001 	lui	v0,0x1001
  400e68:	ac400080 	sw	zero,128(v0)
  400e6c:	ac60007c 	sw	zero,124(v1)
  400e70:	1000febb 	b	400960 <main+0x4d8>
  400e74:	3c031001 	lui	v1,0x1001
  400e78:	8c640078 	lw	a0,120(v1)
  400e7c:	14440013 	bne	v0,a0,400ecc <main+0xa44>
  400e80:	3c031001 	lui	v1,0x1001
  400e84:	8fc600ac 	lw	a2,172(s8)
  400e88:	8c650074 	lw	a1,116(v1)
  400e8c:	10c50004 	beq	a2,a1,400ea0 <main+0xa18>
  400e90:	24a70001 	addiu	a3,a1,1
  400e94:	10c70002 	beq	a2,a3,400ea0 <main+0xa18>
  400e98:	24a7ffff 	addiu	a3,a1,-1
  400e9c:	14c7000b 	bne	a2,a3,400ecc <main+0xa44>
  400ea0:	30a500ff 	andi	a1,a1,0xff
  400ea4:	308400ff 	andi	a0,a0,0xff
  400ea8:	afa30024 	sw	v1,36(sp)
  400eac:	0c1007aa 	jal	401ea8 <set_cursor>
  400eb0:	26040054 	addiu	a0,s0,84
  400eb4:	0c1007d4 	jal	401f50 <puts>
  400eb8:	8fa30024 	lw	v1,36(sp)
  400ebc:	3c021001 	lui	v0,0x1001
  400ec0:	ac400078 	sw	zero,120(v0)
  400ec4:	ac600074 	sw	zero,116(v1)
  400ec8:	1000fea5 	b	400960 <main+0x4d8>
  400ecc:	3c031001 	lui	v1,0x1001
  400ed0:	8c640070 	lw	a0,112(v1)
  400ed4:	14440013 	bne	v0,a0,400f24 <main+0xa9c>
  400ed8:	3c031001 	lui	v1,0x1001
  400edc:	8fc600ac 	lw	a2,172(s8)
  400ee0:	8c65006c 	lw	a1,108(v1)
  400ee4:	10c50004 	beq	a2,a1,400ef8 <main+0xa70>
  400ee8:	24a70001 	addiu	a3,a1,1
  400eec:	10c70002 	beq	a2,a3,400ef8 <main+0xa70>
  400ef0:	24a7ffff 	addiu	a3,a1,-1
  400ef4:	14c7000b 	bne	a2,a3,400f24 <main+0xa9c>
  400ef8:	30a500ff 	andi	a1,a1,0xff
  400efc:	308400ff 	andi	a0,a0,0xff
  400f00:	afa30024 	sw	v1,36(sp)
  400f04:	0c1007aa 	jal	401ea8 <set_cursor>
  400f08:	26040054 	addiu	a0,s0,84
  400f0c:	0c1007d4 	jal	401f50 <puts>
  400f10:	8fa30024 	lw	v1,36(sp)
  400f14:	3c021001 	lui	v0,0x1001
  400f18:	ac400070 	sw	zero,112(v0)
  400f1c:	ac60006c 	sw	zero,108(v1)
  400f20:	1000fe8f 	b	400960 <main+0x4d8>
  400f24:	3c031001 	lui	v1,0x1001
  400f28:	8c640068 	lw	a0,104(v1)
  400f2c:	14440013 	bne	v0,a0,400f7c <main+0xaf4>
  400f30:	3c031001 	lui	v1,0x1001
  400f34:	8fc600ac 	lw	a2,172(s8)
  400f38:	8c650064 	lw	a1,100(v1)
  400f3c:	10c50004 	beq	a2,a1,400f50 <main+0xac8>
  400f40:	24a70001 	addiu	a3,a1,1
  400f44:	10c70002 	beq	a2,a3,400f50 <main+0xac8>
  400f48:	24a7ffff 	addiu	a3,a1,-1
  400f4c:	14c7000b 	bne	a2,a3,400f7c <main+0xaf4>
  400f50:	30a500ff 	andi	a1,a1,0xff
  400f54:	308400ff 	andi	a0,a0,0xff
  400f58:	afa30024 	sw	v1,36(sp)
  400f5c:	0c1007aa 	jal	401ea8 <set_cursor>
  400f60:	26040054 	addiu	a0,s0,84
  400f64:	0c1007d4 	jal	401f50 <puts>
  400f68:	8fa30024 	lw	v1,36(sp)
  400f6c:	3c021001 	lui	v0,0x1001
  400f70:	ac400068 	sw	zero,104(v0)
  400f74:	ac600064 	sw	zero,100(v1)
  400f78:	1000fe79 	b	400960 <main+0x4d8>
  400f7c:	3c031001 	lui	v1,0x1001
  400f80:	8c640060 	lw	a0,96(v1)
  400f84:	14440013 	bne	v0,a0,400fd4 <main+0xb4c>
  400f88:	3c031001 	lui	v1,0x1001
  400f8c:	8fc600ac 	lw	a2,172(s8)
  400f90:	8c65005c 	lw	a1,92(v1)
  400f94:	10c50004 	beq	a2,a1,400fa8 <main+0xb20>
  400f98:	24a70001 	addiu	a3,a1,1
  400f9c:	10c70002 	beq	a2,a3,400fa8 <main+0xb20>
  400fa0:	24a7ffff 	addiu	a3,a1,-1
  400fa4:	14c7000b 	bne	a2,a3,400fd4 <main+0xb4c>
  400fa8:	30a500ff 	andi	a1,a1,0xff
  400fac:	308400ff 	andi	a0,a0,0xff
  400fb0:	afa30024 	sw	v1,36(sp)
  400fb4:	0c1007aa 	jal	401ea8 <set_cursor>
  400fb8:	26040054 	addiu	a0,s0,84
  400fbc:	0c1007d4 	jal	401f50 <puts>
  400fc0:	8fa30024 	lw	v1,36(sp)
  400fc4:	3c021001 	lui	v0,0x1001
  400fc8:	ac400060 	sw	zero,96(v0)
  400fcc:	ac60005c 	sw	zero,92(v1)
  400fd0:	1000fe63 	b	400960 <main+0x4d8>
  400fd4:	24030003 	li	v1,3
  400fd8:	1443ff0a 	bne	v0,v1,400c04 <main+0x77c>
  400fdc:	93c500af 	lbu	a1,175(s8)
  400fe0:	3c021001 	lui	v0,0x1001
  400fe4:	24040003 	li	a0,3
  400fe8:	ac4000bc 	sw	zero,188(v0)
  400fec:	0c1007aa 	jal	401ea8 <set_cursor>
  400ff0:	26040054 	addiu	a0,s0,84
  400ff4:	0c1007d4 	jal	401f50 <puts>
  400ff8:	1000ff02 	b	400c04 <main+0x77c>
  400ffc:	8ec200b8 	lw	v0,184(s6)
  401000:	24030001 	li	v1,1
  401004:	1043ff19 	beq	v0,v1,400c6c <main+0x7e4>
  401008:	8fa20020 	lw	v0,32(sp)
  40100c:	24030001 	li	v1,1
  401010:	8c4200e8 	lw	v0,232(v0)
  401014:	144300f2 	bne	v0,v1,4013e0 <main+0xf58>
  401018:	8fa3001c 	lw	v1,28(sp)
  40101c:	24020008 	li	v0,8
  401020:	146200ef 	bne	v1,v0,4013e0 <main+0xf58>
  401024:	8fa20018 	lw	v0,24(sp)
  401028:	3c031001 	lui	v1,0x1001
  40102c:	8c6300bc 	lw	v1,188(v1)
  401030:	8c4200c0 	lw	v0,192(v0)
  401034:	00431025 	or	v0,v0,v1
  401038:	8ec300b8 	lw	v1,184(s6)
  40103c:	00431025 	or	v0,v0,v1
  401040:	144000e7 	bnez	v0,4013e0 <main+0xf58>
  401044:	24020001 	li	v0,1
  401048:	aee200b4 	sw	v0,180(s7)
  40104c:	3c021001 	lui	v0,0x1001
  401050:	8c4200f0 	lw	v0,240(v0)
  401054:	3c031001 	lui	v1,0x1001
  401058:	2442ffff 	addiu	v0,v0,-1
  40105c:	ac6200ac 	sw	v0,172(v1)
  401060:	3c021001 	lui	v0,0x1001
  401064:	8c4300ec 	lw	v1,236(v0)
  401068:	3c021001 	lui	v0,0x1001
  40106c:	ac4300b0 	sw	v1,176(v0)
  401070:	8fa20018 	lw	v0,24(sp)
  401074:	aec000b8 	sw	zero,184(s6)
  401078:	ac4000c0 	sw	zero,192(v0)
  40107c:	3c021001 	lui	v0,0x1001
  401080:	ac4000bc 	sw	zero,188(v0)
  401084:	3c021001 	lui	v0,0x1001
  401088:	8c4200ec 	lw	v0,236(v0)
  40108c:	28420003 	slti	v0,v0,3
  401090:	144000d6 	bnez	v0,4013ec <main+0xf64>
  401094:	2404000a 	li	a0,10
  401098:	0c100762 	jal	401d88 <delay_ms>
  40109c:	926500f7 	lbu	a1,247(s3)
  4010a0:	928400e7 	lbu	a0,231(s4)
  4010a4:	3c151001 	lui	s5,0x1001
  4010a8:	0c1007aa 	jal	401ea8 <set_cursor>
  4010ac:	3c161001 	lui	s6,0x1001
  4010b0:	27a40010 	addiu	a0,sp,16
  4010b4:	0c1007d4 	jal	401f50 <puts>
  4010b8:	92a500af 	lbu	a1,175(s5)
  4010bc:	92c400b3 	lbu	a0,179(s6)
  4010c0:	0c1007aa 	jal	401ea8 <set_cursor>
  4010c4:	02402025 	move	a0,s2
  4010c8:	0c1007d4 	jal	401f50 <puts>
  4010cc:	8ea500ac 	lw	a1,172(s5)
  4010d0:	92c400b3 	lbu	a0,179(s6)
  4010d4:	24a5ffff 	addiu	a1,a1,-1
  4010d8:	aea500ac 	sw	a1,172(s5)
  4010dc:	30a500ff 	andi	a1,a1,0xff
  4010e0:	0c1007aa 	jal	401ea8 <set_cursor>
  4010e4:	3c041001 	lui	a0,0x1001
  4010e8:	24840058 	addiu	a0,a0,88
  4010ec:	0c1007d4 	jal	401f50 <puts>
  4010f0:	3c021001 	lui	v0,0x1001
  4010f4:	8ec300b0 	lw	v1,176(s6)
  4010f8:	8c440098 	lw	a0,152(v0)
  4010fc:	146401d3 	bne	v1,a0,40184c <main+0x13c4>
  401100:	3c021001 	lui	v0,0x1001
  401104:	8ea600ac 	lw	a2,172(s5)
  401108:	8c450094 	lw	a1,148(v0)
  40110c:	0040f025 	move	s8,v0
  401110:	10c50004 	beq	a2,a1,401124 <main+0xc9c>
  401114:	24a20001 	addiu	v0,a1,1
  401118:	10c20002 	beq	a2,v0,401124 <main+0xc9c>
  40111c:	24a2ffff 	addiu	v0,a1,-1
  401120:	14c201ca 	bne	a2,v0,40184c <main+0x13c4>
  401124:	30a500ff 	andi	a1,a1,0xff
  401128:	308400ff 	andi	a0,a0,0xff
  40112c:	0c1007aa 	jal	401ea8 <set_cursor>
  401130:	26040054 	addiu	a0,s0,84
  401134:	0c1007d4 	jal	401f50 <puts>
  401138:	3c021001 	lui	v0,0x1001
  40113c:	ac400098 	sw	zero,152(v0)
  401140:	afc00094 	sw	zero,148(s8)
  401144:	8e22009c 	lw	v0,156(s1)
  401148:	92a500af 	lbu	a1,175(s5)
  40114c:	92c400b3 	lbu	a0,179(s6)
  401150:	2442ffff 	addiu	v0,v0,-1
  401154:	ae22009c 	sw	v0,156(s1)
  401158:	0c1007aa 	jal	401ea8 <set_cursor>
  40115c:	26040054 	addiu	a0,s0,84
  401160:	0c1007d4 	jal	401f50 <puts>
  401164:	aee000b4 	sw	zero,180(s7)
  401168:	100000a0 	b	4013ec <main+0xf64>
  40116c:	3c021001 	lui	v0,0x1001
  401170:	8c440090 	lw	a0,144(v0)
  401174:	8ea200ac 	lw	v0,172(s5)
  401178:	14640012 	bne	v1,a0,4011c4 <main+0xd3c>
  40117c:	3c061001 	lui	a2,0x1001
  401180:	8cc5008c 	lw	a1,140(a2)
  401184:	10450004 	beq	v0,a1,401198 <main+0xd10>
  401188:	24a70001 	addiu	a3,a1,1
  40118c:	10470002 	beq	v0,a3,401198 <main+0xd10>
  401190:	24a7ffff 	addiu	a3,a1,-1
  401194:	1447000b 	bne	v0,a3,4011c4 <main+0xd3c>
  401198:	30a500ff 	andi	a1,a1,0xff
  40119c:	308400ff 	andi	a0,a0,0xff
  4011a0:	afa60024 	sw	a2,36(sp)
  4011a4:	0c1007aa 	jal	401ea8 <set_cursor>
  4011a8:	26040054 	addiu	a0,s0,84
  4011ac:	0c1007d4 	jal	401f50 <puts>
  4011b0:	8fa60024 	lw	a2,36(sp)
  4011b4:	3c021001 	lui	v0,0x1001
  4011b8:	ac400090 	sw	zero,144(v0)
  4011bc:	acc0008c 	sw	zero,140(a2)
  4011c0:	1000fee0 	b	400d44 <main+0x8bc>
  4011c4:	3c041001 	lui	a0,0x1001
  4011c8:	8c840088 	lw	a0,136(a0)
  4011cc:	14640012 	bne	v1,a0,401218 <main+0xd90>
  4011d0:	3c061001 	lui	a2,0x1001
  4011d4:	8cc50084 	lw	a1,132(a2)
  4011d8:	10450004 	beq	v0,a1,4011ec <main+0xd64>
  4011dc:	24a70001 	addiu	a3,a1,1
  4011e0:	10470002 	beq	v0,a3,4011ec <main+0xd64>
  4011e4:	24a7ffff 	addiu	a3,a1,-1
  4011e8:	1447000b 	bne	v0,a3,401218 <main+0xd90>
  4011ec:	30a500ff 	andi	a1,a1,0xff
  4011f0:	308400ff 	andi	a0,a0,0xff
  4011f4:	afa60024 	sw	a2,36(sp)
  4011f8:	0c1007aa 	jal	401ea8 <set_cursor>
  4011fc:	26040054 	addiu	a0,s0,84
  401200:	0c1007d4 	jal	401f50 <puts>
  401204:	8fa60024 	lw	a2,36(sp)
  401208:	3c021001 	lui	v0,0x1001
  40120c:	ac400088 	sw	zero,136(v0)
  401210:	acc00084 	sw	zero,132(a2)
  401214:	1000fecb 	b	400d44 <main+0x8bc>
  401218:	3c041001 	lui	a0,0x1001
  40121c:	8c840080 	lw	a0,128(a0)
  401220:	14640012 	bne	v1,a0,40126c <main+0xde4>
  401224:	3c061001 	lui	a2,0x1001
  401228:	8cc5007c 	lw	a1,124(a2)
  40122c:	10450004 	beq	v0,a1,401240 <main+0xdb8>
  401230:	24a70001 	addiu	a3,a1,1
  401234:	10470002 	beq	v0,a3,401240 <main+0xdb8>
  401238:	24a7ffff 	addiu	a3,a1,-1
  40123c:	1447000b 	bne	v0,a3,40126c <main+0xde4>
  401240:	30a500ff 	andi	a1,a1,0xff
  401244:	308400ff 	andi	a0,a0,0xff
  401248:	afa60024 	sw	a2,36(sp)
  40124c:	0c1007aa 	jal	401ea8 <set_cursor>
  401250:	26040054 	addiu	a0,s0,84
  401254:	0c1007d4 	jal	401f50 <puts>
  401258:	8fa60024 	lw	a2,36(sp)
  40125c:	3c021001 	lui	v0,0x1001
  401260:	ac400080 	sw	zero,128(v0)
  401264:	acc0007c 	sw	zero,124(a2)
  401268:	1000feb6 	b	400d44 <main+0x8bc>
  40126c:	3c041001 	lui	a0,0x1001
  401270:	8c840078 	lw	a0,120(a0)
  401274:	14640012 	bne	v1,a0,4012c0 <main+0xe38>
  401278:	3c061001 	lui	a2,0x1001
  40127c:	8cc50074 	lw	a1,116(a2)
  401280:	10450004 	beq	v0,a1,401294 <main+0xe0c>
  401284:	24a70001 	addiu	a3,a1,1
  401288:	10470002 	beq	v0,a3,401294 <main+0xe0c>
  40128c:	24a7ffff 	addiu	a3,a1,-1
  401290:	1447000b 	bne	v0,a3,4012c0 <main+0xe38>
  401294:	30a500ff 	andi	a1,a1,0xff
  401298:	308400ff 	andi	a0,a0,0xff
  40129c:	afa60024 	sw	a2,36(sp)
  4012a0:	0c1007aa 	jal	401ea8 <set_cursor>
  4012a4:	26040054 	addiu	a0,s0,84
  4012a8:	0c1007d4 	jal	401f50 <puts>
  4012ac:	8fa60024 	lw	a2,36(sp)
  4012b0:	3c021001 	lui	v0,0x1001
  4012b4:	ac400078 	sw	zero,120(v0)
  4012b8:	acc00074 	sw	zero,116(a2)
  4012bc:	1000fea1 	b	400d44 <main+0x8bc>
  4012c0:	3c041001 	lui	a0,0x1001
  4012c4:	8c840070 	lw	a0,112(a0)
  4012c8:	14640012 	bne	v1,a0,401314 <main+0xe8c>
  4012cc:	3c061001 	lui	a2,0x1001
  4012d0:	8cc5006c 	lw	a1,108(a2)
  4012d4:	10450004 	beq	v0,a1,4012e8 <main+0xe60>
  4012d8:	24a70001 	addiu	a3,a1,1
  4012dc:	10470002 	beq	v0,a3,4012e8 <main+0xe60>
  4012e0:	24a7ffff 	addiu	a3,a1,-1
  4012e4:	1447000b 	bne	v0,a3,401314 <main+0xe8c>
  4012e8:	30a500ff 	andi	a1,a1,0xff
  4012ec:	308400ff 	andi	a0,a0,0xff
  4012f0:	afa60024 	sw	a2,36(sp)
  4012f4:	0c1007aa 	jal	401ea8 <set_cursor>
  4012f8:	26040054 	addiu	a0,s0,84
  4012fc:	0c1007d4 	jal	401f50 <puts>
  401300:	8fa60024 	lw	a2,36(sp)
  401304:	3c021001 	lui	v0,0x1001
  401308:	ac400070 	sw	zero,112(v0)
  40130c:	acc0006c 	sw	zero,108(a2)
  401310:	1000fe8c 	b	400d44 <main+0x8bc>
  401314:	3c041001 	lui	a0,0x1001
  401318:	8c840068 	lw	a0,104(a0)
  40131c:	14640012 	bne	v1,a0,401368 <main+0xee0>
  401320:	3c061001 	lui	a2,0x1001
  401324:	8cc50064 	lw	a1,100(a2)
  401328:	10450004 	beq	v0,a1,40133c <main+0xeb4>
  40132c:	24a70001 	addiu	a3,a1,1
  401330:	10470002 	beq	v0,a3,40133c <main+0xeb4>
  401334:	24a7ffff 	addiu	a3,a1,-1
  401338:	1447000b 	bne	v0,a3,401368 <main+0xee0>
  40133c:	30a500ff 	andi	a1,a1,0xff
  401340:	308400ff 	andi	a0,a0,0xff
  401344:	afa60024 	sw	a2,36(sp)
  401348:	0c1007aa 	jal	401ea8 <set_cursor>
  40134c:	26040054 	addiu	a0,s0,84
  401350:	0c1007d4 	jal	401f50 <puts>
  401354:	8fa60024 	lw	a2,36(sp)
  401358:	3c021001 	lui	v0,0x1001
  40135c:	ac400068 	sw	zero,104(v0)
  401360:	acc00064 	sw	zero,100(a2)
  401364:	1000fe77 	b	400d44 <main+0x8bc>
  401368:	3c041001 	lui	a0,0x1001
  40136c:	8c840060 	lw	a0,96(a0)
  401370:	14640012 	bne	v1,a0,4013bc <main+0xf34>
  401374:	3c061001 	lui	a2,0x1001
  401378:	8cc5005c 	lw	a1,92(a2)
  40137c:	10450004 	beq	v0,a1,401390 <main+0xf08>
  401380:	24a70001 	addiu	a3,a1,1
  401384:	10470002 	beq	v0,a3,401390 <main+0xf08>
  401388:	24a7ffff 	addiu	a3,a1,-1
  40138c:	1447000b 	bne	v0,a3,4013bc <main+0xf34>
  401390:	30a500ff 	andi	a1,a1,0xff
  401394:	308400ff 	andi	a0,a0,0xff
  401398:	afa60024 	sw	a2,36(sp)
  40139c:	0c1007aa 	jal	401ea8 <set_cursor>
  4013a0:	26040054 	addiu	a0,s0,84
  4013a4:	0c1007d4 	jal	401f50 <puts>
  4013a8:	8fa60024 	lw	a2,36(sp)
  4013ac:	3c021001 	lui	v0,0x1001
  4013b0:	ac400060 	sw	zero,96(v0)
  4013b4:	acc0005c 	sw	zero,92(a2)
  4013b8:	1000fe62 	b	400d44 <main+0x8bc>
  4013bc:	2404004d 	li	a0,77
  4013c0:	1444ff11 	bne	v0,a0,401008 <main+0xb80>
  4013c4:	306400ff 	andi	a0,v1,0xff
  4013c8:	2405004d 	li	a1,77
  4013cc:	aec000b8 	sw	zero,184(s6)
  4013d0:	0c1007aa 	jal	401ea8 <set_cursor>
  4013d4:	26040054 	addiu	a0,s0,84
  4013d8:	0c1007d4 	jal	401f50 <puts>
  4013dc:	1000ff0a 	b	401008 <main+0xb80>
  4013e0:	8ee200b4 	lw	v0,180(s7)
  4013e4:	24030001 	li	v1,1
  4013e8:	1043ff21 	beq	v0,v1,401070 <main+0xbe8>
  4013ec:	3c021001 	lui	v0,0x1001
  4013f0:	8c420098 	lw	v0,152(v0)
  4013f4:	1040001f 	beqz	v0,401474 <main+0xfec>
  4013f8:	3c151001 	lui	s5,0x1001
  4013fc:	8ea20094 	lw	v0,148(s5)
  401400:	1040001c 	beqz	v0,401474 <main+0xfec>
  401404:	28430003 	slti	v1,v0,3
  401408:	146001a6 	bnez	v1,401aa4 <main+0x161c>
  40140c:	3c031001 	lui	v1,0x1001
  401410:	8c6400e0 	lw	a0,224(v1)
  401414:	148001a3 	bnez	a0,401aa4 <main+0x161c>
  401418:	24040003 	li	a0,3
  40141c:	14440002 	bne	v0,a0,401428 <main+0xfa0>
  401420:	24020001 	li	v0,1
  401424:	ac6200e0 	sw	v0,224(v1)
  401428:	00002825 	move	a1,zero
  40142c:	24040002 	li	a0,2
  401430:	0c10079c 	jal	401e70 <set_color>
  401434:	3c021001 	lui	v0,0x1001
  401438:	92a50097 	lbu	a1,151(s5)
  40143c:	9044009b 	lbu	a0,155(v0)
  401440:	0c1007aa 	jal	401ea8 <set_cursor>
  401444:	02402025 	move	a0,s2
  401448:	0c1007d4 	jal	401f50 <puts>
  40144c:	8ea50094 	lw	a1,148(s5)
  401450:	24a5ffff 	addiu	a1,a1,-1
  401454:	3c021001 	lui	v0,0x1001
  401458:	9044009b 	lbu	a0,155(v0)
  40145c:	aea50094 	sw	a1,148(s5)
  401460:	30a500ff 	andi	a1,a1,0xff
  401464:	0c1007aa 	jal	401ea8 <set_cursor>
  401468:	3c041001 	lui	a0,0x1001
  40146c:	2484001c 	addiu	a0,a0,28
  401470:	0c1007d4 	jal	401f50 <puts>
  401474:	3c021001 	lui	v0,0x1001
  401478:	8c420080 	lw	v0,128(v0)
  40147c:	1040001f 	beqz	v0,4014fc <main+0x1074>
  401480:	3c151001 	lui	s5,0x1001
  401484:	8ea2007c 	lw	v0,124(s5)
  401488:	1040001c 	beqz	v0,4014fc <main+0x1074>
  40148c:	28430003 	slti	v1,v0,3
  401490:	14600199 	bnez	v1,401af8 <main+0x1670>
  401494:	3c031001 	lui	v1,0x1001
  401498:	8c6400dc 	lw	a0,220(v1)
  40149c:	14800196 	bnez	a0,401af8 <main+0x1670>
  4014a0:	24040003 	li	a0,3
  4014a4:	14440002 	bne	v0,a0,4014b0 <main+0x1028>
  4014a8:	24020001 	li	v0,1
  4014ac:	ac6200dc 	sw	v0,220(v1)
  4014b0:	00002825 	move	a1,zero
  4014b4:	24040002 	li	a0,2
  4014b8:	0c10079c 	jal	401e70 <set_color>
  4014bc:	3c021001 	lui	v0,0x1001
  4014c0:	92a5007f 	lbu	a1,127(s5)
  4014c4:	90440083 	lbu	a0,131(v0)
  4014c8:	0c1007aa 	jal	401ea8 <set_cursor>
  4014cc:	02402025 	move	a0,s2
  4014d0:	0c1007d4 	jal	401f50 <puts>
  4014d4:	8ea5007c 	lw	a1,124(s5)
  4014d8:	24a5ffff 	addiu	a1,a1,-1
  4014dc:	3c021001 	lui	v0,0x1001
  4014e0:	90440083 	lbu	a0,131(v0)
  4014e4:	aea5007c 	sw	a1,124(s5)
  4014e8:	30a500ff 	andi	a1,a1,0xff
  4014ec:	0c1007aa 	jal	401ea8 <set_cursor>
  4014f0:	3c041001 	lui	a0,0x1001
  4014f4:	2484001c 	addiu	a0,a0,28
  4014f8:	0c1007d4 	jal	401f50 <puts>
  4014fc:	3c021001 	lui	v0,0x1001
  401500:	8c420060 	lw	v0,96(v0)
  401504:	1040001f 	beqz	v0,401584 <main+0x10fc>
  401508:	3c151001 	lui	s5,0x1001
  40150c:	8ea2005c 	lw	v0,92(s5)
  401510:	1040001c 	beqz	v0,401584 <main+0x10fc>
  401514:	28430003 	slti	v1,v0,3
  401518:	1460018c 	bnez	v1,401b4c <main+0x16c4>
  40151c:	3c031001 	lui	v1,0x1001
  401520:	8c6400d8 	lw	a0,216(v1)
  401524:	14800189 	bnez	a0,401b4c <main+0x16c4>
  401528:	24040003 	li	a0,3
  40152c:	14440002 	bne	v0,a0,401538 <main+0x10b0>
  401530:	24020001 	li	v0,1
  401534:	ac6200d8 	sw	v0,216(v1)
  401538:	00002825 	move	a1,zero
  40153c:	24040002 	li	a0,2
  401540:	0c10079c 	jal	401e70 <set_color>
  401544:	3c021001 	lui	v0,0x1001
  401548:	92a5005f 	lbu	a1,95(s5)
  40154c:	90440063 	lbu	a0,99(v0)
  401550:	0c1007aa 	jal	401ea8 <set_cursor>
  401554:	02402025 	move	a0,s2
  401558:	0c1007d4 	jal	401f50 <puts>
  40155c:	8ea5005c 	lw	a1,92(s5)
  401560:	24a5ffff 	addiu	a1,a1,-1
  401564:	3c021001 	lui	v0,0x1001
  401568:	90440063 	lbu	a0,99(v0)
  40156c:	aea5005c 	sw	a1,92(s5)
  401570:	30a500ff 	andi	a1,a1,0xff
  401574:	0c1007aa 	jal	401ea8 <set_cursor>
  401578:	3c041001 	lui	a0,0x1001
  40157c:	2484001c 	addiu	a0,a0,28
  401580:	0c1007d4 	jal	401f50 <puts>
  401584:	3c021001 	lui	v0,0x1001
  401588:	8c420090 	lw	v0,144(v0)
  40158c:	1040001f 	beqz	v0,40160c <main+0x1184>
  401590:	3c151001 	lui	s5,0x1001
  401594:	8ea2008c 	lw	v0,140(s5)
  401598:	1040001c 	beqz	v0,40160c <main+0x1184>
  40159c:	28430003 	slti	v1,v0,3
  4015a0:	1460017f 	bnez	v1,401ba0 <main+0x1718>
  4015a4:	3c031001 	lui	v1,0x1001
  4015a8:	8c6400d4 	lw	a0,212(v1)
  4015ac:	1480017c 	bnez	a0,401ba0 <main+0x1718>
  4015b0:	24040003 	li	a0,3
  4015b4:	14440002 	bne	v0,a0,4015c0 <main+0x1138>
  4015b8:	24020001 	li	v0,1
  4015bc:	ac6200d4 	sw	v0,212(v1)
  4015c0:	00002825 	move	a1,zero
  4015c4:	24040002 	li	a0,2
  4015c8:	0c10079c 	jal	401e70 <set_color>
  4015cc:	3c021001 	lui	v0,0x1001
  4015d0:	92a5008f 	lbu	a1,143(s5)
  4015d4:	90440093 	lbu	a0,147(v0)
  4015d8:	0c1007aa 	jal	401ea8 <set_cursor>
  4015dc:	02402025 	move	a0,s2
  4015e0:	0c1007d4 	jal	401f50 <puts>
  4015e4:	8ea5008c 	lw	a1,140(s5)
  4015e8:	24a5ffff 	addiu	a1,a1,-1
  4015ec:	3c021001 	lui	v0,0x1001
  4015f0:	90440093 	lbu	a0,147(v0)
  4015f4:	aea5008c 	sw	a1,140(s5)
  4015f8:	30a500ff 	andi	a1,a1,0xff
  4015fc:	0c1007aa 	jal	401ea8 <set_cursor>
  401600:	3c041001 	lui	a0,0x1001
  401604:	2484001c 	addiu	a0,a0,28
  401608:	0c1007d4 	jal	401f50 <puts>
  40160c:	3c021001 	lui	v0,0x1001
  401610:	8c420068 	lw	v0,104(v0)
  401614:	1040001f 	beqz	v0,401694 <main+0x120c>
  401618:	3c151001 	lui	s5,0x1001
  40161c:	8ea30064 	lw	v1,100(s5)
  401620:	1060001c 	beqz	v1,401694 <main+0x120c>
  401624:	28430004 	slti	v1,v0,4
  401628:	14600172 	bnez	v1,401bf4 <main+0x176c>
  40162c:	3c031001 	lui	v1,0x1001
  401630:	8c6400d0 	lw	a0,208(v1)
  401634:	1480016f 	bnez	a0,401bf4 <main+0x176c>
  401638:	24040004 	li	a0,4
  40163c:	14440002 	bne	v0,a0,401648 <main+0x11c0>
  401640:	24020001 	li	v0,1
  401644:	ac6200d0 	sw	v0,208(v1)
  401648:	00002825 	move	a1,zero
  40164c:	24040002 	li	a0,2
  401650:	0c10079c 	jal	401e70 <set_color>
  401654:	3c021001 	lui	v0,0x1001
  401658:	9044006b 	lbu	a0,107(v0)
  40165c:	92a50067 	lbu	a1,103(s5)
  401660:	0c1007aa 	jal	401ea8 <set_cursor>
  401664:	02402025 	move	a0,s2
  401668:	0c1007d4 	jal	401f50 <puts>
  40166c:	3c021001 	lui	v0,0x1001
  401670:	8c440068 	lw	a0,104(v0)
  401674:	2484ffff 	addiu	a0,a0,-1
  401678:	92a50067 	lbu	a1,103(s5)
  40167c:	ac440068 	sw	a0,104(v0)
  401680:	308400ff 	andi	a0,a0,0xff
  401684:	0c1007aa 	jal	401ea8 <set_cursor>
  401688:	3c041001 	lui	a0,0x1001
  40168c:	2484001c 	addiu	a0,a0,28
  401690:	0c1007d4 	jal	401f50 <puts>
  401694:	3c021001 	lui	v0,0x1001
  401698:	8c420088 	lw	v0,136(v0)
  40169c:	1040001f 	beqz	v0,40171c <main+0x1294>
  4016a0:	3c151001 	lui	s5,0x1001
  4016a4:	8ea30084 	lw	v1,132(s5)
  4016a8:	1060001c 	beqz	v1,40171c <main+0x1294>
  4016ac:	28430004 	slti	v1,v0,4
  4016b0:	14600166 	bnez	v1,401c4c <main+0x17c4>
  4016b4:	3c031001 	lui	v1,0x1001
  4016b8:	8c6400cc 	lw	a0,204(v1)
  4016bc:	14800163 	bnez	a0,401c4c <main+0x17c4>
  4016c0:	24040004 	li	a0,4
  4016c4:	14440002 	bne	v0,a0,4016d0 <main+0x1248>
  4016c8:	24020001 	li	v0,1
  4016cc:	ac6200cc 	sw	v0,204(v1)
  4016d0:	00002825 	move	a1,zero
  4016d4:	24040002 	li	a0,2
  4016d8:	0c10079c 	jal	401e70 <set_color>
  4016dc:	3c021001 	lui	v0,0x1001
  4016e0:	9044008b 	lbu	a0,139(v0)
  4016e4:	92a50087 	lbu	a1,135(s5)
  4016e8:	0c1007aa 	jal	401ea8 <set_cursor>
  4016ec:	02402025 	move	a0,s2
  4016f0:	0c1007d4 	jal	401f50 <puts>
  4016f4:	3c021001 	lui	v0,0x1001
  4016f8:	8c440088 	lw	a0,136(v0)
  4016fc:	2484ffff 	addiu	a0,a0,-1
  401700:	92a50087 	lbu	a1,135(s5)
  401704:	ac440088 	sw	a0,136(v0)
  401708:	308400ff 	andi	a0,a0,0xff
  40170c:	0c1007aa 	jal	401ea8 <set_cursor>
  401710:	3c041001 	lui	a0,0x1001
  401714:	2484001c 	addiu	a0,a0,28
  401718:	0c1007d4 	jal	401f50 <puts>
  40171c:	3c021001 	lui	v0,0x1001
  401720:	8c420070 	lw	v0,112(v0)
  401724:	1040001f 	beqz	v0,4017a4 <main+0x131c>
  401728:	3c151001 	lui	s5,0x1001
  40172c:	8ea3006c 	lw	v1,108(s5)
  401730:	1060001c 	beqz	v1,4017a4 <main+0x131c>
  401734:	28430004 	slti	v1,v0,4
  401738:	1460015a 	bnez	v1,401ca4 <main+0x181c>
  40173c:	3c031001 	lui	v1,0x1001
  401740:	8c6400c8 	lw	a0,200(v1)
  401744:	14800157 	bnez	a0,401ca4 <main+0x181c>
  401748:	24040004 	li	a0,4
  40174c:	14440002 	bne	v0,a0,401758 <main+0x12d0>
  401750:	24020001 	li	v0,1
  401754:	ac6200c8 	sw	v0,200(v1)
  401758:	00002825 	move	a1,zero
  40175c:	24040002 	li	a0,2
  401760:	0c10079c 	jal	401e70 <set_color>
  401764:	3c021001 	lui	v0,0x1001
  401768:	90440073 	lbu	a0,115(v0)
  40176c:	92a5006f 	lbu	a1,111(s5)
  401770:	0c1007aa 	jal	401ea8 <set_cursor>
  401774:	02402025 	move	a0,s2
  401778:	0c1007d4 	jal	401f50 <puts>
  40177c:	3c021001 	lui	v0,0x1001
  401780:	8c440070 	lw	a0,112(v0)
  401784:	2484ffff 	addiu	a0,a0,-1
  401788:	92a5006f 	lbu	a1,111(s5)
  40178c:	ac440070 	sw	a0,112(v0)
  401790:	308400ff 	andi	a0,a0,0xff
  401794:	0c1007aa 	jal	401ea8 <set_cursor>
  401798:	3c041001 	lui	a0,0x1001
  40179c:	2484001c 	addiu	a0,a0,28
  4017a0:	0c1007d4 	jal	401f50 <puts>
  4017a4:	3c021001 	lui	v0,0x1001
  4017a8:	8c420078 	lw	v0,120(v0)
  4017ac:	1040001f 	beqz	v0,40182c <main+0x13a4>
  4017b0:	3c151001 	lui	s5,0x1001
  4017b4:	8ea30074 	lw	v1,116(s5)
  4017b8:	1060001c 	beqz	v1,40182c <main+0x13a4>
  4017bc:	28430004 	slti	v1,v0,4
  4017c0:	1460014e 	bnez	v1,401cfc <main+0x1874>
  4017c4:	3c031001 	lui	v1,0x1001
  4017c8:	8c6400c4 	lw	a0,196(v1)
  4017cc:	1480014b 	bnez	a0,401cfc <main+0x1874>
  4017d0:	24040004 	li	a0,4
  4017d4:	14440002 	bne	v0,a0,4017e0 <main+0x1358>
  4017d8:	24020001 	li	v0,1
  4017dc:	ac6200c4 	sw	v0,196(v1)
  4017e0:	00002825 	move	a1,zero
  4017e4:	24040002 	li	a0,2
  4017e8:	0c10079c 	jal	401e70 <set_color>
  4017ec:	3c021001 	lui	v0,0x1001
  4017f0:	9044007b 	lbu	a0,123(v0)
  4017f4:	92a50077 	lbu	a1,119(s5)
  4017f8:	0c1007aa 	jal	401ea8 <set_cursor>
  4017fc:	02402025 	move	a0,s2
  401800:	0c1007d4 	jal	401f50 <puts>
  401804:	3c021001 	lui	v0,0x1001
  401808:	8c440078 	lw	a0,120(v0)
  40180c:	2484ffff 	addiu	a0,a0,-1
  401810:	92a50077 	lbu	a1,119(s5)
  401814:	ac440078 	sw	a0,120(v0)
  401818:	308400ff 	andi	a0,a0,0xff
  40181c:	0c1007aa 	jal	401ea8 <set_cursor>
  401820:	3c041001 	lui	a0,0x1001
  401824:	2484001c 	addiu	a0,a0,28
  401828:	0c1007d4 	jal	401f50 <puts>
  40182c:	8e24009c 	lw	a0,156(s1)
  401830:	0c10009d 	jal	400274 <ganar>
  401834:	0c1000ad 	jal	4002b4 <perder>
  401838:	24030001 	li	v1,1
  40183c:	10430145 	beq	v0,v1,401d54 <main+0x18cc>
  401840:	24040050 	li	a0,80
  401844:	0c100762 	jal	401d88 <delay_ms>
  401848:	1000fb36 	b	400524 <main+0x9c>
  40184c:	3c021001 	lui	v0,0x1001
  401850:	8c440090 	lw	a0,144(v0)
  401854:	8ea200ac 	lw	v0,172(s5)
  401858:	1464000f 	bne	v1,a0,401898 <main+0x1410>
  40185c:	3c051001 	lui	a1,0x1001
  401860:	8ca5008c 	lw	a1,140(a1)
  401864:	10450002 	beq	v0,a1,401870 <main+0x13e8>
  401868:	24a50001 	addiu	a1,a1,1
  40186c:	14450010 	bne	v0,a1,4018b0 <main+0x1428>
  401870:	3c1e1001 	lui	s8,0x1001
  401874:	93c5008f 	lbu	a1,143(s8)
  401878:	308400ff 	andi	a0,a0,0xff
  40187c:	0c1007aa 	jal	401ea8 <set_cursor>
  401880:	26040054 	addiu	a0,s0,84
  401884:	0c1007d4 	jal	401f50 <puts>
  401888:	3c021001 	lui	v0,0x1001
  40188c:	ac400090 	sw	zero,144(v0)
  401890:	afc0008c 	sw	zero,140(s8)
  401894:	1000fe2b 	b	401144 <main+0xcbc>
  401898:	2485ffff 	addiu	a1,a0,-1
  40189c:	14650004 	bne	v1,a1,4018b0 <main+0x1428>
  4018a0:	3c051001 	lui	a1,0x1001
  4018a4:	8ca5008c 	lw	a1,140(a1)
  4018a8:	24a5ffff 	addiu	a1,a1,-1
  4018ac:	1000ffef 	b	40186c <main+0x13e4>
  4018b0:	3c041001 	lui	a0,0x1001
  4018b4:	8c840088 	lw	a0,136(a0)
  4018b8:	1464000f 	bne	v1,a0,4018f8 <main+0x1470>
  4018bc:	3c061001 	lui	a2,0x1001
  4018c0:	8cc50084 	lw	a1,132(a2)
  4018c4:	00c0f025 	move	s8,a2
  4018c8:	10450002 	beq	v0,a1,4018d4 <main+0x144c>
  4018cc:	24a6ffff 	addiu	a2,a1,-1
  4018d0:	14460009 	bne	v0,a2,4018f8 <main+0x1470>
  4018d4:	30a500ff 	andi	a1,a1,0xff
  4018d8:	308400ff 	andi	a0,a0,0xff
  4018dc:	0c1007aa 	jal	401ea8 <set_cursor>
  4018e0:	26040054 	addiu	a0,s0,84
  4018e4:	0c1007d4 	jal	401f50 <puts>
  4018e8:	3c021001 	lui	v0,0x1001
  4018ec:	ac400088 	sw	zero,136(v0)
  4018f0:	afc00084 	sw	zero,132(s8)
  4018f4:	1000fe13 	b	401144 <main+0xcbc>
  4018f8:	3c041001 	lui	a0,0x1001
  4018fc:	8c840080 	lw	a0,128(a0)
  401900:	1464000f 	bne	v1,a0,401940 <main+0x14b8>
  401904:	3c061001 	lui	a2,0x1001
  401908:	8cc5007c 	lw	a1,124(a2)
  40190c:	00c0f025 	move	s8,a2
  401910:	10450002 	beq	v0,a1,40191c <main+0x1494>
  401914:	24a6ffff 	addiu	a2,a1,-1
  401918:	14460009 	bne	v0,a2,401940 <main+0x14b8>
  40191c:	30a500ff 	andi	a1,a1,0xff
  401920:	308400ff 	andi	a0,a0,0xff
  401924:	0c1007aa 	jal	401ea8 <set_cursor>
  401928:	26040054 	addiu	a0,s0,84
  40192c:	0c1007d4 	jal	401f50 <puts>
  401930:	3c021001 	lui	v0,0x1001
  401934:	ac400080 	sw	zero,128(v0)
  401938:	afc0007c 	sw	zero,124(s8)
  40193c:	1000fe01 	b	401144 <main+0xcbc>
  401940:	3c041001 	lui	a0,0x1001
  401944:	8c840078 	lw	a0,120(a0)
  401948:	14640011 	bne	v1,a0,401990 <main+0x1508>
  40194c:	3c061001 	lui	a2,0x1001
  401950:	8cc50074 	lw	a1,116(a2)
  401954:	00c0f025 	move	s8,a2
  401958:	10450004 	beq	v0,a1,40196c <main+0x14e4>
  40195c:	24a60001 	addiu	a2,a1,1
  401960:	10460002 	beq	v0,a2,40196c <main+0x14e4>
  401964:	24a6ffff 	addiu	a2,a1,-1
  401968:	14460009 	bne	v0,a2,401990 <main+0x1508>
  40196c:	30a500ff 	andi	a1,a1,0xff
  401970:	308400ff 	andi	a0,a0,0xff
  401974:	0c1007aa 	jal	401ea8 <set_cursor>
  401978:	26040054 	addiu	a0,s0,84
  40197c:	0c1007d4 	jal	401f50 <puts>
  401980:	3c021001 	lui	v0,0x1001
  401984:	ac400078 	sw	zero,120(v0)
  401988:	afc00074 	sw	zero,116(s8)
  40198c:	1000fded 	b	401144 <main+0xcbc>
  401990:	3c041001 	lui	a0,0x1001
  401994:	8c840070 	lw	a0,112(a0)
  401998:	14640011 	bne	v1,a0,4019e0 <main+0x1558>
  40199c:	3c061001 	lui	a2,0x1001
  4019a0:	8cc5006c 	lw	a1,108(a2)
  4019a4:	00c0f025 	move	s8,a2
  4019a8:	10450004 	beq	v0,a1,4019bc <main+0x1534>
  4019ac:	24a60001 	addiu	a2,a1,1
  4019b0:	10460002 	beq	v0,a2,4019bc <main+0x1534>
  4019b4:	24a6ffff 	addiu	a2,a1,-1
  4019b8:	14460009 	bne	v0,a2,4019e0 <main+0x1558>
  4019bc:	30a500ff 	andi	a1,a1,0xff
  4019c0:	308400ff 	andi	a0,a0,0xff
  4019c4:	0c1007aa 	jal	401ea8 <set_cursor>
  4019c8:	26040054 	addiu	a0,s0,84
  4019cc:	0c1007d4 	jal	401f50 <puts>
  4019d0:	3c021001 	lui	v0,0x1001
  4019d4:	ac400070 	sw	zero,112(v0)
  4019d8:	afc0006c 	sw	zero,108(s8)
  4019dc:	1000fdd9 	b	401144 <main+0xcbc>
  4019e0:	3c041001 	lui	a0,0x1001
  4019e4:	8c840068 	lw	a0,104(a0)
  4019e8:	14640011 	bne	v1,a0,401a30 <main+0x15a8>
  4019ec:	3c061001 	lui	a2,0x1001
  4019f0:	8cc50064 	lw	a1,100(a2)
  4019f4:	00c0f025 	move	s8,a2
  4019f8:	10450004 	beq	v0,a1,401a0c <main+0x1584>
  4019fc:	24a60001 	addiu	a2,a1,1
  401a00:	10460002 	beq	v0,a2,401a0c <main+0x1584>
  401a04:	24a6ffff 	addiu	a2,a1,-1
  401a08:	14460009 	bne	v0,a2,401a30 <main+0x15a8>
  401a0c:	30a500ff 	andi	a1,a1,0xff
  401a10:	308400ff 	andi	a0,a0,0xff
  401a14:	0c1007aa 	jal	401ea8 <set_cursor>
  401a18:	26040054 	addiu	a0,s0,84
  401a1c:	0c1007d4 	jal	401f50 <puts>
  401a20:	3c021001 	lui	v0,0x1001
  401a24:	ac400068 	sw	zero,104(v0)
  401a28:	afc00064 	sw	zero,100(s8)
  401a2c:	1000fdc5 	b	401144 <main+0xcbc>
  401a30:	3c041001 	lui	a0,0x1001
  401a34:	8c840060 	lw	a0,96(a0)
  401a38:	14640011 	bne	v1,a0,401a80 <main+0x15f8>
  401a3c:	3c061001 	lui	a2,0x1001
  401a40:	8cc5005c 	lw	a1,92(a2)
  401a44:	00c0f025 	move	s8,a2
  401a48:	10450004 	beq	v0,a1,401a5c <main+0x15d4>
  401a4c:	24a60001 	addiu	a2,a1,1
  401a50:	10460002 	beq	v0,a2,401a5c <main+0x15d4>
  401a54:	24a6ffff 	addiu	a2,a1,-1
  401a58:	14460009 	bne	v0,a2,401a80 <main+0x15f8>
  401a5c:	30a500ff 	andi	a1,a1,0xff
  401a60:	308400ff 	andi	a0,a0,0xff
  401a64:	0c1007aa 	jal	401ea8 <set_cursor>
  401a68:	26040054 	addiu	a0,s0,84
  401a6c:	0c1007d4 	jal	401f50 <puts>
  401a70:	3c021001 	lui	v0,0x1001
  401a74:	ac400060 	sw	zero,96(v0)
  401a78:	afc0005c 	sw	zero,92(s8)
  401a7c:	1000fdb1 	b	401144 <main+0xcbc>
  401a80:	24040002 	li	a0,2
  401a84:	1444fe59 	bne	v0,a0,4013ec <main+0xf64>
  401a88:	306400ff 	andi	a0,v1,0xff
  401a8c:	24050002 	li	a1,2
  401a90:	aee000b4 	sw	zero,180(s7)
  401a94:	0c1007aa 	jal	401ea8 <set_cursor>
  401a98:	26040054 	addiu	a0,s0,84
  401a9c:	0c1007d4 	jal	401f50 <puts>
  401aa0:	1000fe52 	b	4013ec <main+0xf64>
  401aa4:	2843004d 	slti	v1,v0,77
  401aa8:	1060fe72 	beqz	v1,401474 <main+0xfec>
  401aac:	3c031001 	lui	v1,0x1001
  401ab0:	8c6400e0 	lw	a0,224(v1)
  401ab4:	24050001 	li	a1,1
  401ab8:	1485fe6e 	bne	a0,a1,401474 <main+0xfec>
  401abc:	2404004c 	li	a0,76
  401ac0:	14440001 	bne	v0,a0,401ac8 <main+0x1640>
  401ac4:	ac6000e0 	sw	zero,224(v1)
  401ac8:	00002825 	move	a1,zero
  401acc:	24040002 	li	a0,2
  401ad0:	0c10079c 	jal	401e70 <set_color>
  401ad4:	3c021001 	lui	v0,0x1001
  401ad8:	92a50097 	lbu	a1,151(s5)
  401adc:	9044009b 	lbu	a0,155(v0)
  401ae0:	0c1007aa 	jal	401ea8 <set_cursor>
  401ae4:	02402025 	move	a0,s2
  401ae8:	0c1007d4 	jal	401f50 <puts>
  401aec:	8ea50094 	lw	a1,148(s5)
  401af0:	24a50001 	addiu	a1,a1,1
  401af4:	1000fe57 	b	401454 <main+0xfcc>
  401af8:	2843004d 	slti	v1,v0,77
  401afc:	1060fe7f 	beqz	v1,4014fc <main+0x1074>
  401b00:	3c031001 	lui	v1,0x1001
  401b04:	8c6400dc 	lw	a0,220(v1)
  401b08:	24050001 	li	a1,1
  401b0c:	1485fe7b 	bne	a0,a1,4014fc <main+0x1074>
  401b10:	2404004c 	li	a0,76
  401b14:	14440001 	bne	v0,a0,401b1c <main+0x1694>
  401b18:	ac6000dc 	sw	zero,220(v1)
  401b1c:	00002825 	move	a1,zero
  401b20:	24040002 	li	a0,2
  401b24:	0c10079c 	jal	401e70 <set_color>
  401b28:	3c021001 	lui	v0,0x1001
  401b2c:	92a5007f 	lbu	a1,127(s5)
  401b30:	90440083 	lbu	a0,131(v0)
  401b34:	0c1007aa 	jal	401ea8 <set_cursor>
  401b38:	02402025 	move	a0,s2
  401b3c:	0c1007d4 	jal	401f50 <puts>
  401b40:	8ea5007c 	lw	a1,124(s5)
  401b44:	24a50001 	addiu	a1,a1,1
  401b48:	1000fe64 	b	4014dc <main+0x1054>
  401b4c:	2843004d 	slti	v1,v0,77
  401b50:	1060fe8c 	beqz	v1,401584 <main+0x10fc>
  401b54:	3c031001 	lui	v1,0x1001
  401b58:	8c6400d8 	lw	a0,216(v1)
  401b5c:	24050001 	li	a1,1
  401b60:	1485fe88 	bne	a0,a1,401584 <main+0x10fc>
  401b64:	2404004c 	li	a0,76
  401b68:	14440001 	bne	v0,a0,401b70 <main+0x16e8>
  401b6c:	ac6000d8 	sw	zero,216(v1)
  401b70:	00002825 	move	a1,zero
  401b74:	24040002 	li	a0,2
  401b78:	0c10079c 	jal	401e70 <set_color>
  401b7c:	3c021001 	lui	v0,0x1001
  401b80:	92a5005f 	lbu	a1,95(s5)
  401b84:	90440063 	lbu	a0,99(v0)
  401b88:	0c1007aa 	jal	401ea8 <set_cursor>
  401b8c:	02402025 	move	a0,s2
  401b90:	0c1007d4 	jal	401f50 <puts>
  401b94:	8ea5005c 	lw	a1,92(s5)
  401b98:	24a50001 	addiu	a1,a1,1
  401b9c:	1000fe71 	b	401564 <main+0x10dc>
  401ba0:	2843004d 	slti	v1,v0,77
  401ba4:	1060fe99 	beqz	v1,40160c <main+0x1184>
  401ba8:	3c031001 	lui	v1,0x1001
  401bac:	8c6400d4 	lw	a0,212(v1)
  401bb0:	24050001 	li	a1,1
  401bb4:	1485fe95 	bne	a0,a1,40160c <main+0x1184>
  401bb8:	2404004c 	li	a0,76
  401bbc:	14440001 	bne	v0,a0,401bc4 <main+0x173c>
  401bc0:	ac6000d4 	sw	zero,212(v1)
  401bc4:	00002825 	move	a1,zero
  401bc8:	24040002 	li	a0,2
  401bcc:	0c10079c 	jal	401e70 <set_color>
  401bd0:	3c021001 	lui	v0,0x1001
  401bd4:	92a5008f 	lbu	a1,143(s5)
  401bd8:	90440093 	lbu	a0,147(v0)
  401bdc:	0c1007aa 	jal	401ea8 <set_cursor>
  401be0:	02402025 	move	a0,s2
  401be4:	0c1007d4 	jal	401f50 <puts>
  401be8:	8ea5008c 	lw	a1,140(s5)
  401bec:	24a50001 	addiu	a1,a1,1
  401bf0:	1000fe7e 	b	4015ec <main+0x1164>
  401bf4:	2843001b 	slti	v1,v0,27
  401bf8:	1060fea6 	beqz	v1,401694 <main+0x120c>
  401bfc:	3c031001 	lui	v1,0x1001
  401c00:	8c6400d0 	lw	a0,208(v1)
  401c04:	24050001 	li	a1,1
  401c08:	1485fea2 	bne	a0,a1,401694 <main+0x120c>
  401c0c:	2404001a 	li	a0,26
  401c10:	14440001 	bne	v0,a0,401c18 <main+0x1790>
  401c14:	ac6000d0 	sw	zero,208(v1)
  401c18:	00002825 	move	a1,zero
  401c1c:	24040002 	li	a0,2
  401c20:	0c10079c 	jal	401e70 <set_color>
  401c24:	3c021001 	lui	v0,0x1001
  401c28:	9044006b 	lbu	a0,107(v0)
  401c2c:	92a50067 	lbu	a1,103(s5)
  401c30:	0c1007aa 	jal	401ea8 <set_cursor>
  401c34:	02402025 	move	a0,s2
  401c38:	0c1007d4 	jal	401f50 <puts>
  401c3c:	3c021001 	lui	v0,0x1001
  401c40:	8c440068 	lw	a0,104(v0)
  401c44:	24840001 	addiu	a0,a0,1
  401c48:	1000fe8b 	b	401678 <main+0x11f0>
  401c4c:	2843001b 	slti	v1,v0,27
  401c50:	1060feb2 	beqz	v1,40171c <main+0x1294>
  401c54:	3c031001 	lui	v1,0x1001
  401c58:	8c6400cc 	lw	a0,204(v1)
  401c5c:	24050001 	li	a1,1
  401c60:	1485feae 	bne	a0,a1,40171c <main+0x1294>
  401c64:	2404001a 	li	a0,26
  401c68:	14440001 	bne	v0,a0,401c70 <main+0x17e8>
  401c6c:	ac6000cc 	sw	zero,204(v1)
  401c70:	00002825 	move	a1,zero
  401c74:	24040002 	li	a0,2
  401c78:	0c10079c 	jal	401e70 <set_color>
  401c7c:	3c021001 	lui	v0,0x1001
  401c80:	9044008b 	lbu	a0,139(v0)
  401c84:	92a50087 	lbu	a1,135(s5)
  401c88:	0c1007aa 	jal	401ea8 <set_cursor>
  401c8c:	02402025 	move	a0,s2
  401c90:	0c1007d4 	jal	401f50 <puts>
  401c94:	3c021001 	lui	v0,0x1001
  401c98:	8c440088 	lw	a0,136(v0)
  401c9c:	24840001 	addiu	a0,a0,1
  401ca0:	1000fe97 	b	401700 <main+0x1278>
  401ca4:	2843001b 	slti	v1,v0,27
  401ca8:	1060febe 	beqz	v1,4017a4 <main+0x131c>
  401cac:	3c031001 	lui	v1,0x1001
  401cb0:	8c6400c8 	lw	a0,200(v1)
  401cb4:	24050001 	li	a1,1
  401cb8:	1485feba 	bne	a0,a1,4017a4 <main+0x131c>
  401cbc:	2404001a 	li	a0,26
  401cc0:	14440001 	bne	v0,a0,401cc8 <main+0x1840>
  401cc4:	ac6000c8 	sw	zero,200(v1)
  401cc8:	00002825 	move	a1,zero
  401ccc:	24040002 	li	a0,2
  401cd0:	0c10079c 	jal	401e70 <set_color>
  401cd4:	3c021001 	lui	v0,0x1001
  401cd8:	90440073 	lbu	a0,115(v0)
  401cdc:	92a5006f 	lbu	a1,111(s5)
  401ce0:	0c1007aa 	jal	401ea8 <set_cursor>
  401ce4:	02402025 	move	a0,s2
  401ce8:	0c1007d4 	jal	401f50 <puts>
  401cec:	3c021001 	lui	v0,0x1001
  401cf0:	8c440070 	lw	a0,112(v0)
  401cf4:	24840001 	addiu	a0,a0,1
  401cf8:	1000fea3 	b	401788 <main+0x1300>
  401cfc:	2843001b 	slti	v1,v0,27
  401d00:	1060feca 	beqz	v1,40182c <main+0x13a4>
  401d04:	3c031001 	lui	v1,0x1001
  401d08:	8c6400c4 	lw	a0,196(v1)
  401d0c:	24050001 	li	a1,1
  401d10:	1485fec6 	bne	a0,a1,40182c <main+0x13a4>
  401d14:	2404001a 	li	a0,26
  401d18:	14440001 	bne	v0,a0,401d20 <main+0x1898>
  401d1c:	ac6000c4 	sw	zero,196(v1)
  401d20:	00002825 	move	a1,zero
  401d24:	24040002 	li	a0,2
  401d28:	0c10079c 	jal	401e70 <set_color>
  401d2c:	3c021001 	lui	v0,0x1001
  401d30:	9044007b 	lbu	a0,123(v0)
  401d34:	92a50077 	lbu	a1,119(s5)
  401d38:	0c1007aa 	jal	401ea8 <set_cursor>
  401d3c:	02402025 	move	a0,s2
  401d40:	0c1007d4 	jal	401f50 <puts>
  401d44:	3c021001 	lui	v0,0x1001
  401d48:	8c440078 	lw	a0,120(v0)
  401d4c:	24840001 	addiu	a0,a0,1
  401d50:	1000feaf 	b	401810 <main+0x1388>
  401d54:	8fbf004c 	lw	ra,76(sp)
  401d58:	8fbe0048 	lw	s8,72(sp)
  401d5c:	8fb70044 	lw	s7,68(sp)
  401d60:	8fb60040 	lw	s6,64(sp)
  401d64:	8fb5003c 	lw	s5,60(sp)
  401d68:	8fb40038 	lw	s4,56(sp)
  401d6c:	8fb30034 	lw	s3,52(sp)
  401d70:	8fb20030 	lw	s2,48(sp)
  401d74:	8fb1002c 	lw	s1,44(sp)
  401d78:	8fb00028 	lw	s0,40(sp)
  401d7c:	00001025 	move	v0,zero
  401d80:	27bd0050 	addiu	sp,sp,80
  401d84:	03e00008 	jr	ra

00401d88 <delay_ms>:
  401d88:	3c08ffff 	lui	t0,0xffff
  401d8c:	8d090008 	lw	t1,8(t0)
  401d90:	00000000 	nop
  401d94:	01244820 	add	t1,t1,a0

00401d98 <.dm_loop>:
  401d98:	8d0a0008 	lw	t2,8(t0)
  401d9c:	00000000 	nop
  401da0:	0149582b 	sltu	t3,t2,t1
  401da4:	1560fffc 	bnez	t3,401d98 <.dm_loop>
  401da8:	00000000 	nop
  401dac:	03e00008 	jr	ra
  401db0:	00000000 	nop

00401db4 <keypad_init>:
  401db4:	3c081001 	lui	t0,0x1001
  401db8:	ad0000a0 	sw	zero,160(t0)
  401dbc:	03e00008 	jr	ra
  401dc0:	00000000 	nop

00401dc4 <keypad_getkey>:
  401dc4:	3c08ffff 	lui	t0,0xffff
  401dc8:	81080004 	lb	t0,4(t0)
  401dcc:	24090008 	li	t1,8
  401dd0:	240b0001 	li	t3,1
  401dd4:	00005025 	move	t2,zero

00401dd8 <.gk_loop>:
  401dd8:	11490018 	beq	t2,t1,401e3c <.gk_end_loop>
  401ddc:	00000000 	nop
  401de0:	010b6024 	and	t4,t0,t3
  401de4:	000b5840 	sll	t3,t3,0x1
  401de8:	11800011 	beqz	t4,401e30 <.gk_inc_loop>
  401dec:	00000000 	nop
  401df0:	3c081001 	lui	t0,0x1001
  401df4:	8d0800a0 	lw	t0,160(t0)
  401df8:	3c09ffff 	lui	t1,0xffff
  401dfc:	8d290008 	lw	t1,8(t1)
  401e00:	00000000 	nop
  401e04:	0128582b 	sltu	t3,t1,t0
  401e08:	11600002 	beqz	t3,401e14 <.set_key>
  401e0c:	00000000 	nop
  401e10:	00001025 	move	v0,zero

00401e14 <.set_key>:
  401e14:	252900c8 	addiu	t1,t1,200
  401e18:	3c081001 	lui	t0,0x1001
  401e1c:	ad0900a0 	sw	t1,160(t0)
  401e20:	01401025 	move	v0,t2
  401e24:	24420001 	addiu	v0,v0,1
  401e28:	03e00008 	jr	ra
  401e2c:	00000000 	nop

00401e30 <.gk_inc_loop>:
  401e30:	254a0001 	addiu	t2,t2,1
  401e34:	08100776 	j	401dd8 <.gk_loop>
  401e38:	00000000 	nop

00401e3c <.gk_end_loop>:
  401e3c:	00001025 	move	v0,zero
  401e40:	03e00008 	jr	ra
  401e44:	00000000 	nop

00401e48 <divide>:
  401e48:	acc00000 	sw	zero,0(a2)
  401e4c:	0085102b 	sltu	v0,a0,a1
  401e50:	10400002 	beqz	v0,401e5c <divide+0x14>
  401e54:	ace40000 	sw	a0,0(a3)
  401e58:	03e00008 	jr	ra
  401e5c:	8cc20000 	lw	v0,0(a2)
  401e60:	00852023 	subu	a0,a0,a1
  401e64:	24420001 	addiu	v0,v0,1
  401e68:	acc20000 	sw	v0,0(a2)
  401e6c:	1000fff7 	b	401e4c <divide+0x4>

00401e70 <set_color>:
  401e70:	00052900 	sll	a1,a1,0x4
  401e74:	3084000f 	andi	a0,a0,0xf
  401e78:	00a42825 	or	a1,a1,a0
  401e7c:	3c021001 	lui	v0,0x1001
  401e80:	a04500fa 	sb	a1,250(v0)
  401e84:	03e00008 	jr	ra

00401e88 <get_color>:
  401e88:	3c031001 	lui	v1,0x1001
  401e8c:	906200fa 	lbu	v0,250(v1)
  401e90:	3042000f 	andi	v0,v0,0xf
  401e94:	a0820000 	sb	v0,0(a0)
  401e98:	906200fa 	lbu	v0,250(v1)
  401e9c:	00021102 	srl	v0,v0,0x4
  401ea0:	a0a20000 	sb	v0,0(a1)
  401ea4:	03e00008 	jr	ra

00401ea8 <set_cursor>:
  401ea8:	2c820028 	sltiu	v0,a0,40
  401eac:	10400006 	beqz	v0,401ec8 <set_cursor+0x20>
  401eb0:	2ca20050 	sltiu	v0,a1,80
  401eb4:	10400004 	beqz	v0,401ec8 <set_cursor+0x20>
  401eb8:	3c021001 	lui	v0,0x1001
  401ebc:	a04400f9 	sb	a0,249(v0)
  401ec0:	3c021001 	lui	v0,0x1001
  401ec4:	a04500f8 	sb	a1,248(v0)
  401ec8:	03e00008 	jr	ra

00401ecc <put_char>:
  401ecc:	3c071001 	lui	a3,0x1001
  401ed0:	2403000a 	li	v1,10
  401ed4:	90e200f9 	lbu	v0,249(a3)
  401ed8:	3c061001 	lui	a2,0x1001
  401edc:	14830006 	bne	a0,v1,401ef8 <put_char+0x2c>
  401ee0:	2c430027 	sltiu	v1,v0,39
  401ee4:	10600002 	beqz	v1,401ef0 <put_char+0x24>
  401ee8:	24420001 	addiu	v0,v0,1
  401eec:	a0e200f9 	sb	v0,249(a3)
  401ef0:	a0c000f8 	sb	zero,248(a2)
  401ef4:	03e00008 	jr	ra
  401ef8:	3c031001 	lui	v1,0x1001
  401efc:	906300fa 	lbu	v1,250(v1)
  401f00:	90c500f8 	lbu	a1,248(a2)
  401f04:	00031a00 	sll	v1,v1,0x8
  401f08:	00642025 	or	a0,v1,a0
  401f0c:	00021880 	sll	v1,v0,0x2
  401f10:	00621821 	addu	v1,v1,v0
  401f14:	00031900 	sll	v1,v1,0x4
  401f18:	00651821 	addu	v1,v1,a1
  401f1c:	00031840 	sll	v1,v1,0x1
  401f20:	3408b800 	li	t0,0xb800
  401f24:	01031821 	addu	v1,t0,v1
  401f28:	a4640000 	sh	a0,0(v1)
  401f2c:	2ca3004f 	sltiu	v1,a1,79
  401f30:	10600003 	beqz	v1,401f40 <put_char+0x74>
  401f34:	24a50001 	addiu	a1,a1,1
  401f38:	a0c500f8 	sb	a1,248(a2)
  401f3c:	03e00008 	jr	ra
  401f40:	24420001 	addiu	v0,v0,1
  401f44:	a0c000f8 	sb	zero,248(a2)
  401f48:	a0e200f9 	sb	v0,249(a3)
  401f4c:	03e00008 	jr	ra

00401f50 <puts>:
  401f50:	00804825 	move	t1,a0
  401f54:	80840000 	lb	a0,0(a0)
  401f58:	14800001 	bnez	a0,401f60 <puts+0x10>
  401f5c:	03e00008 	jr	ra
  401f60:	27bdffe8 	addiu	sp,sp,-24
  401f64:	afbf0014 	sw	ra,20(sp)
  401f68:	308400ff 	andi	a0,a0,0xff
  401f6c:	25290001 	addiu	t1,t1,1
  401f70:	0c1007b3 	jal	401ecc <put_char>
  401f74:	81240000 	lb	a0,0(t1)
  401f78:	1480fffb 	bnez	a0,401f68 <puts+0x18>
  401f7c:	8fbf0014 	lw	ra,20(sp)
  401f80:	27bd0018 	addiu	sp,sp,24
  401f84:	03e00008 	jr	ra

00401f88 <clear_screen>:
  401f88:	3c021001 	lui	v0,0x1001
  401f8c:	904200fa 	lbu	v0,250(v0)
  401f90:	3403b800 	li	v1,0xb800
  401f94:	00021200 	sll	v0,v0,0x8
  401f98:	34420020 	ori	v0,v0,0x20
  401f9c:	3404cac0 	li	a0,0xcac0
  401fa0:	a4620000 	sh	v0,0(v1)
  401fa4:	24630002 	addiu	v1,v1,2
  401fa8:	1464fffd 	bne	v1,a0,401fa0 <clear_screen+0x18>
  401fac:	3c021001 	lui	v0,0x1001
  401fb0:	a04000f9 	sb	zero,249(v0)
  401fb4:	3c021001 	lui	v0,0x1001
  401fb8:	a04000f8 	sb	zero,248(v0)
  401fbc:	03e00008 	jr	ra

Desensamblado de la sección .data:

10010000 <ry7-0x5c>:
10010000:	524f424f 	0x524f424f
10010004:	54524f4e 	0x54524f4e
10010008:	21000000 	addi	zero,t0,0
1001000c:	57415645 	0x57415645
10010010:	20310000 	addi	s1,at,0
10010014:	09000000 	j	14000000 <chr_attr+0x3feff06>
10010018:	16000000 	bnez	s0,1001001c <clear_screen+0xfc0e094>
1001001c:	03040000 	0x3040000
10010020:	48415a20 	0x48415a20
10010024:	47414e41 	c1	0x1414e41
10010028:	444f2120 	0x444f2120
1001002c:	3a440000 	xori	a0,s2,0x0
10010030:	48415a20 	0x48415a20
10010034:	44454652 	0x44454652
10010038:	41554441 	0x41554441
1001003c:	444f2041 	0x444f2041
10010040:	204c4120 	addi	t4,v0,16672
10010044:	48554d41 	0x48554d41
10010048:	4e494441 	c3	0x494441
1001004c:	4421203a 	0x4421203a
10010050:	28000000 	slti	zero,zero,0
10010054:	01010000 	0x1010000
10010058:	16160000 	bne	s0,s6,1001005c <ry7>

1001005c <ry7>:
1001005c:	00000013 	mtlo	zero

10010060 <rx7>:
10010060:	00000015 	0x15

10010064 <ry6>:
10010064:	0000003c 	0x3c

10010068 <rx6>:
10010068:	00000018 	mult	zero,zero

1001006c <ry5>:
1001006c:	00000048 	0x48

10010070 <rx5>:
10010070:	00000006 	srlv	zero,zero,zero

10010074 <ry4>:
10010074:	00000014 	0x14

10010078 <rx4>:
10010078:	00000010 	mfhi	zero

1001007c <ry3>:
1001007c:	0000002e 	0x2e

10010080 <rx3>:
10010080:	0000000a 	0xa

10010084 <ry2>:
10010084:	00000023 	negu	zero,zero

10010088 <rx2>:
10010088:	00000016 	0x16

1001008c <ry1>:
1001008c:	00000038 	0x38

10010090 <rx1>:
10010090:	0000000c 	syscall

10010094 <ry>:
10010094:	0000000f 	0xf

10010098 <rx>:
10010098:	00000008 	jr	zero

1001009c <robots>:
1001009c:	00000008 	jr	zero

100100a0 <next_key_time>:
100100a0:	00000000 	nop

100100a4 <bala3>:
	...

100100a5 <bala2>:
	...

100100a6 <bala1>:
	...

100100a7 <bala>:
	...

100100a8 <contadorBala>:
100100a8:	00000000 	nop

100100ac <posby>:
100100ac:	00000000 	nop

100100b0 <posbx>:
100100b0:	00000000 	nop

100100b4 <estado4>:
100100b4:	00000000 	nop

100100b8 <estado3>:
100100b8:	00000000 	nop

100100bc <estado2>:
100100bc:	00000000 	nop

100100c0 <estado1>:
100100c0:	00000000 	nop

100100c4 <mov7>:
100100c4:	00000000 	nop

100100c8 <mov6>:
100100c8:	00000000 	nop

100100cc <mov5>:
100100cc:	00000000 	nop

100100d0 <mov4>:
100100d0:	00000000 	nop

100100d4 <mov3>:
100100d4:	00000000 	nop

100100d8 <mov2>:
100100d8:	00000000 	nop

100100dc <mov1>:
100100dc:	00000000 	nop

100100e0 <mov>:
100100e0:	00000000 	nop

Desensamblado de la sección .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	41000000 	bc0f	4 <_gp+0x4>
   4:	0f676e75 	jal	d9db9d4 <clear_screen+0xd5d9a4c>
   8:	00010000 	sll	zero,at,0x0
   c:	00070401 	0x70401

Desensamblado de la sección .bss:

100100e4 <x>:
100100e4:	00000000 	nop

100100e8 <last>:
100100e8:	00000000 	nop

100100ec <dx>:
100100ec:	00000000 	nop

100100f0 <dy>:
100100f0:	00000000 	nop

100100f4 <y>:
100100f4:	00000000 	nop

100100f8 <cursor_col>:
	...

100100f9 <cursor_row>:
	...

100100fa <chr_attr>:
	...
