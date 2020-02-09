
robotron.elf:     formato del fichero elf32-bigmips


Desensamblado de la sección .text:

00400000 <start>:
  400000:	3c1d7fff 	lui	sp,0x7fff
  400004:	37bdfffc 	ori	sp,sp,0xfffc
  400008:	0c100346 	jal	400d18 <main>
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
  400030:	0c100787 	jal	401e1c <set_color>
  400034:	24050023 	li	a1,35
  400038:	24040001 	li	a0,1
  40003c:	0c100795 	jal	401e54 <set_cursor>
  400040:	3c041001 	lui	a0,0x1001
  400044:	24840000 	addiu	a0,a0,0
  400048:	0c1007bf 	jal	401efc <puts>
  40004c:	00002825 	move	a1,zero
  400050:	24040007 	li	a0,7
  400054:	0c100787 	jal	401e1c <set_color>
  400058:	24050025 	li	a1,37
  40005c:	2404001d 	li	a0,29
  400060:	0c100795 	jal	401e54 <set_cursor>
  400064:	3c041001 	lui	a0,0x1001
  400068:	2484000c 	addiu	a0,a0,12
  40006c:	0c1007bf 	jal	401efc <puts>
  400070:	3c111001 	lui	s1,0x1001
  400074:	27a50010 	addiu	a1,sp,16
  400078:	27a40011 	addiu	a0,sp,17
  40007c:	0c10078d 	jal	401e34 <get_color>
  400080:	24100002 	li	s0,2
  400084:	26310014 	addiu	s1,s1,20
  400088:	2413001d 	li	s3,29
  40008c:	321200ff 	andi	s2,s0,0xff
  400090:	00002825 	move	a1,zero
  400094:	24040005 	li	a0,5
  400098:	0c100787 	jal	401e1c <set_color>
  40009c:	00002825 	move	a1,zero
  4000a0:	02402025 	move	a0,s2
  4000a4:	0c100795 	jal	401e54 <set_cursor>
  4000a8:	02202025 	move	a0,s1
  4000ac:	0c1007bf 	jal	401efc <puts>
  4000b0:	00002825 	move	a1,zero
  4000b4:	24040005 	li	a0,5
  4000b8:	0c100787 	jal	401e1c <set_color>
  4000bc:	2405004f 	li	a1,79
  4000c0:	02402025 	move	a0,s2
  4000c4:	0c100795 	jal	401e54 <set_cursor>
  4000c8:	26100001 	addiu	s0,s0,1
  4000cc:	02202025 	move	a0,s1
  4000d0:	0c1007bf 	jal	401efc <puts>
  4000d4:	1613ffed 	bne	s0,s3,40008c <pintarmapa+0x7c>
  4000d8:	3c111001 	lui	s1,0x1001
  4000dc:	24100001 	li	s0,1
  4000e0:	26310018 	addiu	s1,s1,24
  4000e4:	2413004f 	li	s3,79
  4000e8:	321200ff 	andi	s2,s0,0xff
  4000ec:	00002825 	move	a1,zero
  4000f0:	24040005 	li	a0,5
  4000f4:	0c100787 	jal	401e1c <set_color>
  4000f8:	02402825 	move	a1,s2
  4000fc:	24040002 	li	a0,2
  400100:	0c100795 	jal	401e54 <set_cursor>
  400104:	02202025 	move	a0,s1
  400108:	0c1007bf 	jal	401efc <puts>
  40010c:	00002825 	move	a1,zero
  400110:	24040005 	li	a0,5
  400114:	0c100787 	jal	401e1c <set_color>
  400118:	02402825 	move	a1,s2
  40011c:	2404001c 	li	a0,28
  400120:	0c100795 	jal	401e54 <set_cursor>
  400124:	26100001 	addiu	s0,s0,1
  400128:	02202025 	move	a0,s1
  40012c:	0c1007bf 	jal	401efc <puts>
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
  400164:	0c10078d 	jal	401e34 <get_color>
  400168:	00002825 	move	a1,zero
  40016c:	24040002 	li	a0,2
  400170:	0c100787 	jal	401e1c <set_color>
  400174:	3c021001 	lui	v0,0x1001
  400178:	90450097 	lbu	a1,151(v0)
  40017c:	3c021001 	lui	v0,0x1001
  400180:	9044009b 	lbu	a0,155(v0)
  400184:	3c101001 	lui	s0,0x1001
  400188:	0c100795 	jal	401e54 <set_cursor>
  40018c:	2604001c 	addiu	a0,s0,28
  400190:	0c1007bf 	jal	401efc <puts>
  400194:	3c021001 	lui	v0,0x1001
  400198:	9045008f 	lbu	a1,143(v0)
  40019c:	3c021001 	lui	v0,0x1001
  4001a0:	90440093 	lbu	a0,147(v0)
  4001a4:	0c100795 	jal	401e54 <set_cursor>
  4001a8:	2604001c 	addiu	a0,s0,28
  4001ac:	0c1007bf 	jal	401efc <puts>
  4001b0:	3c021001 	lui	v0,0x1001
  4001b4:	90450087 	lbu	a1,135(v0)
  4001b8:	3c021001 	lui	v0,0x1001
  4001bc:	9044008b 	lbu	a0,139(v0)
  4001c0:	0c100795 	jal	401e54 <set_cursor>
  4001c4:	2604001c 	addiu	a0,s0,28
  4001c8:	0c1007bf 	jal	401efc <puts>
  4001cc:	3c021001 	lui	v0,0x1001
  4001d0:	9045007f 	lbu	a1,127(v0)
  4001d4:	3c021001 	lui	v0,0x1001
  4001d8:	90440083 	lbu	a0,131(v0)
  4001dc:	0c100795 	jal	401e54 <set_cursor>
  4001e0:	2604001c 	addiu	a0,s0,28
  4001e4:	0c1007bf 	jal	401efc <puts>
  4001e8:	3c021001 	lui	v0,0x1001
  4001ec:	90450077 	lbu	a1,119(v0)
  4001f0:	3c021001 	lui	v0,0x1001
  4001f4:	9044007b 	lbu	a0,123(v0)
  4001f8:	0c100795 	jal	401e54 <set_cursor>
  4001fc:	2604001c 	addiu	a0,s0,28
  400200:	0c1007bf 	jal	401efc <puts>
  400204:	3c021001 	lui	v0,0x1001
  400208:	9045006f 	lbu	a1,111(v0)
  40020c:	3c021001 	lui	v0,0x1001
  400210:	90440073 	lbu	a0,115(v0)
  400214:	0c100795 	jal	401e54 <set_cursor>
  400218:	2604001c 	addiu	a0,s0,28
  40021c:	0c1007bf 	jal	401efc <puts>
  400220:	3c021001 	lui	v0,0x1001
  400224:	90450067 	lbu	a1,103(v0)
  400228:	3c021001 	lui	v0,0x1001
  40022c:	9044006b 	lbu	a0,107(v0)
  400230:	0c100795 	jal	401e54 <set_cursor>
  400234:	2604001c 	addiu	a0,s0,28
  400238:	0c1007bf 	jal	401efc <puts>
  40023c:	3c021001 	lui	v0,0x1001
  400240:	9045005f 	lbu	a1,95(v0)
  400244:	3c021001 	lui	v0,0x1001
  400248:	90440063 	lbu	a0,99(v0)
  40024c:	0c100795 	jal	401e54 <set_cursor>
  400250:	2604001c 	addiu	a0,s0,28
  400254:	0c1007bf 	jal	401efc <puts>
  400258:	93a50010 	lbu	a1,16(sp)
  40025c:	93a40011 	lbu	a0,17(sp)
  400260:	0c100787 	jal	401e1c <set_color>
  400264:	8fbf001c 	lw	ra,28(sp)
  400268:	8fb00018 	lw	s0,24(sp)
  40026c:	27bd0020 	addiu	sp,sp,32
  400270:	03e00008 	jr	ra

00400274 <ganar>:
  400274:	1480000e 	bnez	a0,4002b0 <ganar+0x3c>
  400278:	27bdffe8 	addiu	sp,sp,-24
  40027c:	afbf0014 	sw	ra,20(sp)
  400280:	0c1007cd 	jal	401f34 <clear_screen>
  400284:	00002825 	move	a1,zero
  400288:	24040002 	li	a0,2
  40028c:	0c100787 	jal	401e1c <set_color>
  400290:	2404000e 	li	a0,14
  400294:	24050023 	li	a1,35
  400298:	0c100795 	jal	401e54 <set_cursor>
  40029c:	8fbf0014 	lw	ra,20(sp)
  4002a0:	3c041001 	lui	a0,0x1001
  4002a4:	24840020 	addiu	a0,a0,32
  4002a8:	27bd0018 	addiu	sp,sp,24
  4002ac:	081007bf 	j	401efc <puts>
  4002b0:	03e00008 	jr	ra

004002b4 <perder>:
  4002b4:	27bdffe8 	addiu	sp,sp,-24
  4002b8:	3c021001 	lui	v0,0x1001
  4002bc:	afb00010 	sw	s0,16(sp)
  4002c0:	3c101001 	lui	s0,0x1001
  4002c4:	8e0300a4 	lw	v1,164(s0)
  4002c8:	8c420098 	lw	v0,152(v0)
  4002cc:	afbf0014 	sw	ra,20(sp)
  4002d0:	14620013 	bne	v1,v0,400320 <perder+0x6c>
  4002d4:	3c021001 	lui	v0,0x1001
  4002d8:	8c4300b4 	lw	v1,180(v0)
  4002dc:	3c021001 	lui	v0,0x1001
  4002e0:	8c420094 	lw	v0,148(v0)
  4002e4:	10620004 	beq	v1,v0,4002f8 <perder+0x44>
  4002e8:	24440001 	addiu	a0,v0,1
  4002ec:	10640002 	beq	v1,a0,4002f8 <perder+0x44>
  4002f0:	2442ffff 	addiu	v0,v0,-1
  4002f4:	1462000a 	bne	v1,v0,400320 <perder+0x6c>
  4002f8:	0c1007cd 	jal	401f34 <clear_screen>
  4002fc:	00002825 	move	a1,zero
  400300:	24040004 	li	a0,4
  400304:	0c100787 	jal	401e1c <set_color>
  400308:	2404000e 	li	a0,14
  40030c:	2405001b 	li	a1,27
  400310:	0c100795 	jal	401e54 <set_cursor>
  400314:	3c041001 	lui	a0,0x1001
  400318:	24840030 	addiu	a0,a0,48
  40031c:	0c1007bf 	jal	401efc <puts>
  400320:	3c021001 	lui	v0,0x1001
  400324:	8e0300a4 	lw	v1,164(s0)
  400328:	8c420090 	lw	v0,144(v0)
  40032c:	14620013 	bne	v1,v0,40037c <perder+0xc8>
  400330:	3c021001 	lui	v0,0x1001
  400334:	8c4300b4 	lw	v1,180(v0)
  400338:	3c021001 	lui	v0,0x1001
  40033c:	8c42008c 	lw	v0,140(v0)
  400340:	10620004 	beq	v1,v0,400354 <perder+0xa0>
  400344:	24440001 	addiu	a0,v0,1
  400348:	10640002 	beq	v1,a0,400354 <perder+0xa0>
  40034c:	2442ffff 	addiu	v0,v0,-1
  400350:	1462000a 	bne	v1,v0,40037c <perder+0xc8>
  400354:	0c1007cd 	jal	401f34 <clear_screen>
  400358:	00002825 	move	a1,zero
  40035c:	24040004 	li	a0,4
  400360:	0c100787 	jal	401e1c <set_color>
  400364:	2404000e 	li	a0,14
  400368:	2405001b 	li	a1,27
  40036c:	0c100795 	jal	401e54 <set_cursor>
  400370:	3c041001 	lui	a0,0x1001
  400374:	24840030 	addiu	a0,a0,48
  400378:	0c1007bf 	jal	401efc <puts>
  40037c:	3c021001 	lui	v0,0x1001
  400380:	8e0300a4 	lw	v1,164(s0)
  400384:	8c420088 	lw	v0,136(v0)
  400388:	14620013 	bne	v1,v0,4003d8 <perder+0x124>
  40038c:	3c021001 	lui	v0,0x1001
  400390:	8c4300b4 	lw	v1,180(v0)
  400394:	3c021001 	lui	v0,0x1001
  400398:	8c420084 	lw	v0,132(v0)
  40039c:	10620004 	beq	v1,v0,4003b0 <perder+0xfc>
  4003a0:	24440001 	addiu	a0,v0,1
  4003a4:	10640002 	beq	v1,a0,4003b0 <perder+0xfc>
  4003a8:	2442ffff 	addiu	v0,v0,-1
  4003ac:	1462000a 	bne	v1,v0,4003d8 <perder+0x124>
  4003b0:	0c1007cd 	jal	401f34 <clear_screen>
  4003b4:	00002825 	move	a1,zero
  4003b8:	24040004 	li	a0,4
  4003bc:	0c100787 	jal	401e1c <set_color>
  4003c0:	2404000e 	li	a0,14
  4003c4:	2405001b 	li	a1,27
  4003c8:	0c100795 	jal	401e54 <set_cursor>
  4003cc:	3c041001 	lui	a0,0x1001
  4003d0:	24840030 	addiu	a0,a0,48
  4003d4:	0c1007bf 	jal	401efc <puts>
  4003d8:	3c021001 	lui	v0,0x1001
  4003dc:	8e0300a4 	lw	v1,164(s0)
  4003e0:	8c420080 	lw	v0,128(v0)
  4003e4:	14620013 	bne	v1,v0,400434 <perder+0x180>
  4003e8:	3c021001 	lui	v0,0x1001
  4003ec:	8c4300b4 	lw	v1,180(v0)
  4003f0:	3c021001 	lui	v0,0x1001
  4003f4:	8c42007c 	lw	v0,124(v0)
  4003f8:	10620004 	beq	v1,v0,40040c <perder+0x158>
  4003fc:	24440001 	addiu	a0,v0,1
  400400:	10640002 	beq	v1,a0,40040c <perder+0x158>
  400404:	2442ffff 	addiu	v0,v0,-1
  400408:	1462000a 	bne	v1,v0,400434 <perder+0x180>
  40040c:	0c1007cd 	jal	401f34 <clear_screen>
  400410:	00002825 	move	a1,zero
  400414:	24040004 	li	a0,4
  400418:	0c100787 	jal	401e1c <set_color>
  40041c:	2404000e 	li	a0,14
  400420:	2405001b 	li	a1,27
  400424:	0c100795 	jal	401e54 <set_cursor>
  400428:	3c041001 	lui	a0,0x1001
  40042c:	24840030 	addiu	a0,a0,48
  400430:	0c1007bf 	jal	401efc <puts>
  400434:	3c021001 	lui	v0,0x1001
  400438:	8e0300a4 	lw	v1,164(s0)
  40043c:	8c420078 	lw	v0,120(v0)
  400440:	14620013 	bne	v1,v0,400490 <perder+0x1dc>
  400444:	3c021001 	lui	v0,0x1001
  400448:	8c4300b4 	lw	v1,180(v0)
  40044c:	3c021001 	lui	v0,0x1001
  400450:	8c420074 	lw	v0,116(v0)
  400454:	10620004 	beq	v1,v0,400468 <perder+0x1b4>
  400458:	24440001 	addiu	a0,v0,1
  40045c:	10640002 	beq	v1,a0,400468 <perder+0x1b4>
  400460:	2442ffff 	addiu	v0,v0,-1
  400464:	1462000a 	bne	v1,v0,400490 <perder+0x1dc>
  400468:	0c1007cd 	jal	401f34 <clear_screen>
  40046c:	00002825 	move	a1,zero
  400470:	24040004 	li	a0,4
  400474:	0c100787 	jal	401e1c <set_color>
  400478:	2404000e 	li	a0,14
  40047c:	2405001b 	li	a1,27
  400480:	0c100795 	jal	401e54 <set_cursor>
  400484:	3c041001 	lui	a0,0x1001
  400488:	24840030 	addiu	a0,a0,48
  40048c:	0c1007bf 	jal	401efc <puts>
  400490:	3c021001 	lui	v0,0x1001
  400494:	8e0300a4 	lw	v1,164(s0)
  400498:	8c420070 	lw	v0,112(v0)
  40049c:	14620013 	bne	v1,v0,4004ec <perder+0x238>
  4004a0:	3c021001 	lui	v0,0x1001
  4004a4:	8c4300b4 	lw	v1,180(v0)
  4004a8:	3c021001 	lui	v0,0x1001
  4004ac:	8c42006c 	lw	v0,108(v0)
  4004b0:	10620004 	beq	v1,v0,4004c4 <perder+0x210>
  4004b4:	24440001 	addiu	a0,v0,1
  4004b8:	10640002 	beq	v1,a0,4004c4 <perder+0x210>
  4004bc:	2442ffff 	addiu	v0,v0,-1
  4004c0:	1462000a 	bne	v1,v0,4004ec <perder+0x238>
  4004c4:	0c1007cd 	jal	401f34 <clear_screen>
  4004c8:	00002825 	move	a1,zero
  4004cc:	24040004 	li	a0,4
  4004d0:	0c100787 	jal	401e1c <set_color>
  4004d4:	2404000e 	li	a0,14
  4004d8:	2405001b 	li	a1,27
  4004dc:	0c100795 	jal	401e54 <set_cursor>
  4004e0:	3c041001 	lui	a0,0x1001
  4004e4:	24840030 	addiu	a0,a0,48
  4004e8:	0c1007bf 	jal	401efc <puts>
  4004ec:	3c021001 	lui	v0,0x1001
  4004f0:	8e0300a4 	lw	v1,164(s0)
  4004f4:	8c420068 	lw	v0,104(v0)
  4004f8:	14620015 	bne	v1,v0,400550 <perder+0x29c>
  4004fc:	3c021001 	lui	v0,0x1001
  400500:	8c4300b4 	lw	v1,180(v0)
  400504:	3c021001 	lui	v0,0x1001
  400508:	8c420064 	lw	v0,100(v0)
  40050c:	10620006 	beq	v1,v0,400528 <perder+0x274>
  400510:	3c021001 	lui	v0,0x1001
  400514:	8c42006c 	lw	v0,108(v0)
  400518:	24440001 	addiu	a0,v0,1
  40051c:	10640002 	beq	v1,a0,400528 <perder+0x274>
  400520:	2442ffff 	addiu	v0,v0,-1
  400524:	1462000a 	bne	v1,v0,400550 <perder+0x29c>
  400528:	0c1007cd 	jal	401f34 <clear_screen>
  40052c:	00002825 	move	a1,zero
  400530:	24040004 	li	a0,4
  400534:	0c100787 	jal	401e1c <set_color>
  400538:	2404000e 	li	a0,14
  40053c:	2405001b 	li	a1,27
  400540:	0c100795 	jal	401e54 <set_cursor>
  400544:	3c041001 	lui	a0,0x1001
  400548:	24840030 	addiu	a0,a0,48
  40054c:	0c1007bf 	jal	401efc <puts>
  400550:	3c021001 	lui	v0,0x1001
  400554:	8e0300a4 	lw	v1,164(s0)
  400558:	8c420060 	lw	v0,96(v0)
  40055c:	14620016 	bne	v1,v0,4005b8 <perder+0x304>
  400560:	3c021001 	lui	v0,0x1001
  400564:	8c4300b4 	lw	v1,180(v0)
  400568:	3c021001 	lui	v0,0x1001
  40056c:	8c42005c 	lw	v0,92(v0)
  400570:	10620004 	beq	v1,v0,400584 <perder+0x2d0>
  400574:	24440001 	addiu	a0,v0,1
  400578:	10640002 	beq	v1,a0,400584 <perder+0x2d0>
  40057c:	2442ffff 	addiu	v0,v0,-1
  400580:	1462000d 	bne	v1,v0,4005b8 <perder+0x304>
  400584:	0c1007cd 	jal	401f34 <clear_screen>
  400588:	00002825 	move	a1,zero
  40058c:	24040004 	li	a0,4
  400590:	0c100787 	jal	401e1c <set_color>
  400594:	2404000e 	li	a0,14
  400598:	2405001b 	li	a1,27
  40059c:	0c100795 	jal	401e54 <set_cursor>
  4005a0:	8fbf0014 	lw	ra,20(sp)
  4005a4:	8fb00010 	lw	s0,16(sp)
  4005a8:	3c041001 	lui	a0,0x1001
  4005ac:	24840030 	addiu	a0,a0,48
  4005b0:	27bd0018 	addiu	sp,sp,24
  4005b4:	081007bf 	j	401efc <puts>
  4005b8:	8fbf0014 	lw	ra,20(sp)
  4005bc:	8fb00010 	lw	s0,16(sp)
  4005c0:	27bd0018 	addiu	sp,sp,24
  4005c4:	03e00008 	jr	ra

004005c8 <moveRobotsArriba>:
  4005c8:	27bdffe0 	addiu	sp,sp,-32
  4005cc:	afb00014 	sw	s0,20(sp)
  4005d0:	3c101001 	lui	s0,0x1001
  4005d4:	8e020098 	lw	v0,152(s0)
  4005d8:	24030003 	li	v1,3
  4005dc:	afbf001c 	sw	ra,28(sp)
  4005e0:	afb10018 	sw	s1,24(sp)
  4005e4:	10430016 	beq	v0,v1,400640 <moveRobotsArriba+0x78>
  4005e8:	10400015 	beqz	v0,400640 <moveRobotsArriba+0x78>
  4005ec:	3c111001 	lui	s1,0x1001
  4005f0:	8e220094 	lw	v0,148(s1)
  4005f4:	10400012 	beqz	v0,400640 <moveRobotsArriba+0x78>
  4005f8:	00002825 	move	a1,zero
  4005fc:	24040002 	li	a0,2
  400600:	0c100787 	jal	401e1c <set_color>
  400604:	92250097 	lbu	a1,151(s1)
  400608:	9204009b 	lbu	a0,155(s0)
  40060c:	0c100795 	jal	401e54 <set_cursor>
  400610:	3c041001 	lui	a0,0x1001
  400614:	24840054 	addiu	a0,a0,84
  400618:	0c1007bf 	jal	401efc <puts>
  40061c:	8e040098 	lw	a0,152(s0)
  400620:	92250097 	lbu	a1,151(s1)
  400624:	2484ffff 	addiu	a0,a0,-1
  400628:	ae040098 	sw	a0,152(s0)
  40062c:	308400ff 	andi	a0,a0,0xff
  400630:	0c100795 	jal	401e54 <set_cursor>
  400634:	3c041001 	lui	a0,0x1001
  400638:	2484001c 	addiu	a0,a0,28
  40063c:	0c1007bf 	jal	401efc <puts>
  400640:	3c101001 	lui	s0,0x1001
  400644:	8e020090 	lw	v0,144(s0)
  400648:	24030003 	li	v1,3
  40064c:	10430016 	beq	v0,v1,4006a8 <moveRobotsArriba+0xe0>
  400650:	10400015 	beqz	v0,4006a8 <moveRobotsArriba+0xe0>
  400654:	3c111001 	lui	s1,0x1001
  400658:	8e22008c 	lw	v0,140(s1)
  40065c:	10400012 	beqz	v0,4006a8 <moveRobotsArriba+0xe0>
  400660:	00002825 	move	a1,zero
  400664:	24040002 	li	a0,2
  400668:	0c100787 	jal	401e1c <set_color>
  40066c:	9225008f 	lbu	a1,143(s1)
  400670:	92040093 	lbu	a0,147(s0)
  400674:	0c100795 	jal	401e54 <set_cursor>
  400678:	3c041001 	lui	a0,0x1001
  40067c:	24840054 	addiu	a0,a0,84
  400680:	0c1007bf 	jal	401efc <puts>
  400684:	8e040090 	lw	a0,144(s0)
  400688:	9225008f 	lbu	a1,143(s1)
  40068c:	2484ffff 	addiu	a0,a0,-1
  400690:	ae040090 	sw	a0,144(s0)
  400694:	308400ff 	andi	a0,a0,0xff
  400698:	0c100795 	jal	401e54 <set_cursor>
  40069c:	3c041001 	lui	a0,0x1001
  4006a0:	2484001c 	addiu	a0,a0,28
  4006a4:	0c1007bf 	jal	401efc <puts>
  4006a8:	3c101001 	lui	s0,0x1001
  4006ac:	8e020088 	lw	v0,136(s0)
  4006b0:	24030003 	li	v1,3
  4006b4:	10430016 	beq	v0,v1,400710 <moveRobotsArriba+0x148>
  4006b8:	10400015 	beqz	v0,400710 <moveRobotsArriba+0x148>
  4006bc:	3c111001 	lui	s1,0x1001
  4006c0:	8e220084 	lw	v0,132(s1)
  4006c4:	10400012 	beqz	v0,400710 <moveRobotsArriba+0x148>
  4006c8:	00002825 	move	a1,zero
  4006cc:	24040002 	li	a0,2
  4006d0:	0c100787 	jal	401e1c <set_color>
  4006d4:	92250087 	lbu	a1,135(s1)
  4006d8:	9204008b 	lbu	a0,139(s0)
  4006dc:	0c100795 	jal	401e54 <set_cursor>
  4006e0:	3c041001 	lui	a0,0x1001
  4006e4:	24840054 	addiu	a0,a0,84
  4006e8:	0c1007bf 	jal	401efc <puts>
  4006ec:	8e040088 	lw	a0,136(s0)
  4006f0:	92250087 	lbu	a1,135(s1)
  4006f4:	2484ffff 	addiu	a0,a0,-1
  4006f8:	ae040088 	sw	a0,136(s0)
  4006fc:	308400ff 	andi	a0,a0,0xff
  400700:	0c100795 	jal	401e54 <set_cursor>
  400704:	3c041001 	lui	a0,0x1001
  400708:	2484001c 	addiu	a0,a0,28
  40070c:	0c1007bf 	jal	401efc <puts>
  400710:	3c101001 	lui	s0,0x1001
  400714:	8e020080 	lw	v0,128(s0)
  400718:	24030003 	li	v1,3
  40071c:	1043001a 	beq	v0,v1,400788 <moveRobotsArriba+0x1c0>
  400720:	10400019 	beqz	v0,400788 <moveRobotsArriba+0x1c0>
  400724:	3c111001 	lui	s1,0x1001
  400728:	8e22007c 	lw	v0,124(s1)
  40072c:	10400016 	beqz	v0,400788 <moveRobotsArriba+0x1c0>
  400730:	00002825 	move	a1,zero
  400734:	24040002 	li	a0,2
  400738:	0c100787 	jal	401e1c <set_color>
  40073c:	9225007f 	lbu	a1,127(s1)
  400740:	92040083 	lbu	a0,131(s0)
  400744:	0c100795 	jal	401e54 <set_cursor>
  400748:	3c041001 	lui	a0,0x1001
  40074c:	24840054 	addiu	a0,a0,84
  400750:	0c1007bf 	jal	401efc <puts>
  400754:	8e040080 	lw	a0,128(s0)
  400758:	9225007f 	lbu	a1,127(s1)
  40075c:	2484ffff 	addiu	a0,a0,-1
  400760:	ae040080 	sw	a0,128(s0)
  400764:	308400ff 	andi	a0,a0,0xff
  400768:	0c100795 	jal	401e54 <set_cursor>
  40076c:	8fbf001c 	lw	ra,28(sp)
  400770:	8fb10018 	lw	s1,24(sp)
  400774:	8fb00014 	lw	s0,20(sp)
  400778:	3c041001 	lui	a0,0x1001
  40077c:	2484001c 	addiu	a0,a0,28
  400780:	27bd0020 	addiu	sp,sp,32
  400784:	081007bf 	j	401efc <puts>
  400788:	8fbf001c 	lw	ra,28(sp)
  40078c:	8fb10018 	lw	s1,24(sp)
  400790:	8fb00014 	lw	s0,20(sp)
  400794:	27bd0020 	addiu	sp,sp,32
  400798:	03e00008 	jr	ra

0040079c <moveRobotsAbajo>:
  40079c:	27bdffe0 	addiu	sp,sp,-32
  4007a0:	afb00014 	sw	s0,20(sp)
  4007a4:	3c101001 	lui	s0,0x1001
  4007a8:	8e020098 	lw	v0,152(s0)
  4007ac:	2403001b 	li	v1,27
  4007b0:	afbf001c 	sw	ra,28(sp)
  4007b4:	afb10018 	sw	s1,24(sp)
  4007b8:	10430016 	beq	v0,v1,400814 <moveRobotsAbajo+0x78>
  4007bc:	10400015 	beqz	v0,400814 <moveRobotsAbajo+0x78>
  4007c0:	3c111001 	lui	s1,0x1001
  4007c4:	8e220094 	lw	v0,148(s1)
  4007c8:	10400012 	beqz	v0,400814 <moveRobotsAbajo+0x78>
  4007cc:	00002825 	move	a1,zero
  4007d0:	24040002 	li	a0,2
  4007d4:	0c100787 	jal	401e1c <set_color>
  4007d8:	92250097 	lbu	a1,151(s1)
  4007dc:	9204009b 	lbu	a0,155(s0)
  4007e0:	0c100795 	jal	401e54 <set_cursor>
  4007e4:	3c041001 	lui	a0,0x1001
  4007e8:	24840054 	addiu	a0,a0,84
  4007ec:	0c1007bf 	jal	401efc <puts>
  4007f0:	8e040098 	lw	a0,152(s0)
  4007f4:	92250097 	lbu	a1,151(s1)
  4007f8:	24840001 	addiu	a0,a0,1
  4007fc:	ae040098 	sw	a0,152(s0)
  400800:	308400ff 	andi	a0,a0,0xff
  400804:	0c100795 	jal	401e54 <set_cursor>
  400808:	3c041001 	lui	a0,0x1001
  40080c:	2484001c 	addiu	a0,a0,28
  400810:	0c1007bf 	jal	401efc <puts>
  400814:	3c101001 	lui	s0,0x1001
  400818:	8e020090 	lw	v0,144(s0)
  40081c:	2403001b 	li	v1,27
  400820:	10430016 	beq	v0,v1,40087c <moveRobotsAbajo+0xe0>
  400824:	10400015 	beqz	v0,40087c <moveRobotsAbajo+0xe0>
  400828:	3c111001 	lui	s1,0x1001
  40082c:	8e22008c 	lw	v0,140(s1)
  400830:	10400012 	beqz	v0,40087c <moveRobotsAbajo+0xe0>
  400834:	00002825 	move	a1,zero
  400838:	24040002 	li	a0,2
  40083c:	0c100787 	jal	401e1c <set_color>
  400840:	9225008f 	lbu	a1,143(s1)
  400844:	92040093 	lbu	a0,147(s0)
  400848:	0c100795 	jal	401e54 <set_cursor>
  40084c:	3c041001 	lui	a0,0x1001
  400850:	24840054 	addiu	a0,a0,84
  400854:	0c1007bf 	jal	401efc <puts>
  400858:	8e040090 	lw	a0,144(s0)
  40085c:	9225008f 	lbu	a1,143(s1)
  400860:	24840001 	addiu	a0,a0,1
  400864:	ae040090 	sw	a0,144(s0)
  400868:	308400ff 	andi	a0,a0,0xff
  40086c:	0c100795 	jal	401e54 <set_cursor>
  400870:	3c041001 	lui	a0,0x1001
  400874:	2484001c 	addiu	a0,a0,28
  400878:	0c1007bf 	jal	401efc <puts>
  40087c:	3c101001 	lui	s0,0x1001
  400880:	8e020088 	lw	v0,136(s0)
  400884:	2403001b 	li	v1,27
  400888:	10430016 	beq	v0,v1,4008e4 <moveRobotsAbajo+0x148>
  40088c:	10400015 	beqz	v0,4008e4 <moveRobotsAbajo+0x148>
  400890:	3c111001 	lui	s1,0x1001
  400894:	8e220084 	lw	v0,132(s1)
  400898:	10400012 	beqz	v0,4008e4 <moveRobotsAbajo+0x148>
  40089c:	00002825 	move	a1,zero
  4008a0:	24040002 	li	a0,2
  4008a4:	0c100787 	jal	401e1c <set_color>
  4008a8:	92250087 	lbu	a1,135(s1)
  4008ac:	9204008b 	lbu	a0,139(s0)
  4008b0:	0c100795 	jal	401e54 <set_cursor>
  4008b4:	3c041001 	lui	a0,0x1001
  4008b8:	24840054 	addiu	a0,a0,84
  4008bc:	0c1007bf 	jal	401efc <puts>
  4008c0:	8e040088 	lw	a0,136(s0)
  4008c4:	92250087 	lbu	a1,135(s1)
  4008c8:	24840001 	addiu	a0,a0,1
  4008cc:	ae040088 	sw	a0,136(s0)
  4008d0:	308400ff 	andi	a0,a0,0xff
  4008d4:	0c100795 	jal	401e54 <set_cursor>
  4008d8:	3c041001 	lui	a0,0x1001
  4008dc:	2484001c 	addiu	a0,a0,28
  4008e0:	0c1007bf 	jal	401efc <puts>
  4008e4:	3c101001 	lui	s0,0x1001
  4008e8:	8e020080 	lw	v0,128(s0)
  4008ec:	2403001b 	li	v1,27
  4008f0:	1043001a 	beq	v0,v1,40095c <moveRobotsAbajo+0x1c0>
  4008f4:	10400019 	beqz	v0,40095c <moveRobotsAbajo+0x1c0>
  4008f8:	3c111001 	lui	s1,0x1001
  4008fc:	8e22007c 	lw	v0,124(s1)
  400900:	10400016 	beqz	v0,40095c <moveRobotsAbajo+0x1c0>
  400904:	00002825 	move	a1,zero
  400908:	24040002 	li	a0,2
  40090c:	0c100787 	jal	401e1c <set_color>
  400910:	9225007f 	lbu	a1,127(s1)
  400914:	92040083 	lbu	a0,131(s0)
  400918:	0c100795 	jal	401e54 <set_cursor>
  40091c:	3c041001 	lui	a0,0x1001
  400920:	24840054 	addiu	a0,a0,84
  400924:	0c1007bf 	jal	401efc <puts>
  400928:	8e040080 	lw	a0,128(s0)
  40092c:	9225007f 	lbu	a1,127(s1)
  400930:	24840001 	addiu	a0,a0,1
  400934:	ae040080 	sw	a0,128(s0)
  400938:	308400ff 	andi	a0,a0,0xff
  40093c:	0c100795 	jal	401e54 <set_cursor>
  400940:	8fbf001c 	lw	ra,28(sp)
  400944:	8fb10018 	lw	s1,24(sp)
  400948:	8fb00014 	lw	s0,20(sp)
  40094c:	3c041001 	lui	a0,0x1001
  400950:	2484001c 	addiu	a0,a0,28
  400954:	27bd0020 	addiu	sp,sp,32
  400958:	081007bf 	j	401efc <puts>
  40095c:	8fbf001c 	lw	ra,28(sp)
  400960:	8fb10018 	lw	s1,24(sp)
  400964:	8fb00014 	lw	s0,20(sp)
  400968:	27bd0020 	addiu	sp,sp,32
  40096c:	03e00008 	jr	ra

00400970 <moveRobotsIzquierda>:
  400970:	27bdffe0 	addiu	sp,sp,-32
  400974:	afb10018 	sw	s1,24(sp)
  400978:	3c111001 	lui	s1,0x1001
  40097c:	8e220078 	lw	v0,120(s1)
  400980:	afbf001c 	sw	ra,28(sp)
  400984:	afb00014 	sw	s0,20(sp)
  400988:	10400017 	beqz	v0,4009e8 <moveRobotsIzquierda+0x78>
  40098c:	3c101001 	lui	s0,0x1001
  400990:	8e030074 	lw	v1,116(s0)
  400994:	2402fffd 	li	v0,-3
  400998:	00431024 	and	v0,v0,v1
  40099c:	10400012 	beqz	v0,4009e8 <moveRobotsIzquierda+0x78>
  4009a0:	00002825 	move	a1,zero
  4009a4:	24040002 	li	a0,2
  4009a8:	0c100787 	jal	401e1c <set_color>
  4009ac:	92050077 	lbu	a1,119(s0)
  4009b0:	9224007b 	lbu	a0,123(s1)
  4009b4:	0c100795 	jal	401e54 <set_cursor>
  4009b8:	3c041001 	lui	a0,0x1001
  4009bc:	24840054 	addiu	a0,a0,84
  4009c0:	0c1007bf 	jal	401efc <puts>
  4009c4:	8e050074 	lw	a1,116(s0)
  4009c8:	9224007b 	lbu	a0,123(s1)
  4009cc:	24a5ffff 	addiu	a1,a1,-1
  4009d0:	ae050074 	sw	a1,116(s0)
  4009d4:	30a500ff 	andi	a1,a1,0xff
  4009d8:	0c100795 	jal	401e54 <set_cursor>
  4009dc:	3c041001 	lui	a0,0x1001
  4009e0:	2484001c 	addiu	a0,a0,28
  4009e4:	0c1007bf 	jal	401efc <puts>
  4009e8:	3c111001 	lui	s1,0x1001
  4009ec:	8e220070 	lw	v0,112(s1)
  4009f0:	10400017 	beqz	v0,400a50 <moveRobotsIzquierda+0xe0>
  4009f4:	3c101001 	lui	s0,0x1001
  4009f8:	8e03006c 	lw	v1,108(s0)
  4009fc:	2402fffd 	li	v0,-3
  400a00:	00431024 	and	v0,v0,v1
  400a04:	10400012 	beqz	v0,400a50 <moveRobotsIzquierda+0xe0>
  400a08:	00002825 	move	a1,zero
  400a0c:	24040002 	li	a0,2
  400a10:	0c100787 	jal	401e1c <set_color>
  400a14:	9205006f 	lbu	a1,111(s0)
  400a18:	92240073 	lbu	a0,115(s1)
  400a1c:	0c100795 	jal	401e54 <set_cursor>
  400a20:	3c041001 	lui	a0,0x1001
  400a24:	24840054 	addiu	a0,a0,84
  400a28:	0c1007bf 	jal	401efc <puts>
  400a2c:	8e05006c 	lw	a1,108(s0)
  400a30:	92240073 	lbu	a0,115(s1)
  400a34:	24a5ffff 	addiu	a1,a1,-1
  400a38:	ae05006c 	sw	a1,108(s0)
  400a3c:	30a500ff 	andi	a1,a1,0xff
  400a40:	0c100795 	jal	401e54 <set_cursor>
  400a44:	3c041001 	lui	a0,0x1001
  400a48:	2484001c 	addiu	a0,a0,28
  400a4c:	0c1007bf 	jal	401efc <puts>
  400a50:	3c111001 	lui	s1,0x1001
  400a54:	8e220068 	lw	v0,104(s1)
  400a58:	10400017 	beqz	v0,400ab8 <moveRobotsIzquierda+0x148>
  400a5c:	3c101001 	lui	s0,0x1001
  400a60:	8e030064 	lw	v1,100(s0)
  400a64:	2402fffd 	li	v0,-3
  400a68:	00431024 	and	v0,v0,v1
  400a6c:	10400012 	beqz	v0,400ab8 <moveRobotsIzquierda+0x148>
  400a70:	00002825 	move	a1,zero
  400a74:	24040002 	li	a0,2
  400a78:	0c100787 	jal	401e1c <set_color>
  400a7c:	92050067 	lbu	a1,103(s0)
  400a80:	9224006b 	lbu	a0,107(s1)
  400a84:	0c100795 	jal	401e54 <set_cursor>
  400a88:	3c041001 	lui	a0,0x1001
  400a8c:	24840054 	addiu	a0,a0,84
  400a90:	0c1007bf 	jal	401efc <puts>
  400a94:	8e050064 	lw	a1,100(s0)
  400a98:	9224006b 	lbu	a0,107(s1)
  400a9c:	24a5ffff 	addiu	a1,a1,-1
  400aa0:	ae050064 	sw	a1,100(s0)
  400aa4:	30a500ff 	andi	a1,a1,0xff
  400aa8:	0c100795 	jal	401e54 <set_cursor>
  400aac:	3c041001 	lui	a0,0x1001
  400ab0:	2484001c 	addiu	a0,a0,28
  400ab4:	0c1007bf 	jal	401efc <puts>
  400ab8:	3c111001 	lui	s1,0x1001
  400abc:	8e220060 	lw	v0,96(s1)
  400ac0:	1040001b 	beqz	v0,400b30 <moveRobotsIzquierda+0x1c0>
  400ac4:	3c101001 	lui	s0,0x1001
  400ac8:	8e03005c 	lw	v1,92(s0)
  400acc:	2402fffd 	li	v0,-3
  400ad0:	00431024 	and	v0,v0,v1
  400ad4:	10400016 	beqz	v0,400b30 <moveRobotsIzquierda+0x1c0>
  400ad8:	00002825 	move	a1,zero
  400adc:	24040002 	li	a0,2
  400ae0:	0c100787 	jal	401e1c <set_color>
  400ae4:	9205005f 	lbu	a1,95(s0)
  400ae8:	92240063 	lbu	a0,99(s1)
  400aec:	0c100795 	jal	401e54 <set_cursor>
  400af0:	3c041001 	lui	a0,0x1001
  400af4:	24840054 	addiu	a0,a0,84
  400af8:	0c1007bf 	jal	401efc <puts>
  400afc:	8e05005c 	lw	a1,92(s0)
  400b00:	92240063 	lbu	a0,99(s1)
  400b04:	24a5ffff 	addiu	a1,a1,-1
  400b08:	ae05005c 	sw	a1,92(s0)
  400b0c:	30a500ff 	andi	a1,a1,0xff
  400b10:	0c100795 	jal	401e54 <set_cursor>
  400b14:	8fbf001c 	lw	ra,28(sp)
  400b18:	8fb10018 	lw	s1,24(sp)
  400b1c:	8fb00014 	lw	s0,20(sp)
  400b20:	3c041001 	lui	a0,0x1001
  400b24:	2484001c 	addiu	a0,a0,28
  400b28:	27bd0020 	addiu	sp,sp,32
  400b2c:	081007bf 	j	401efc <puts>
  400b30:	8fbf001c 	lw	ra,28(sp)
  400b34:	8fb10018 	lw	s1,24(sp)
  400b38:	8fb00014 	lw	s0,20(sp)
  400b3c:	27bd0020 	addiu	sp,sp,32
  400b40:	03e00008 	jr	ra

00400b44 <moveRobotsDerecha>:
  400b44:	27bdffe0 	addiu	sp,sp,-32
  400b48:	afb00014 	sw	s0,20(sp)
  400b4c:	3c101001 	lui	s0,0x1001
  400b50:	8e020074 	lw	v0,116(s0)
  400b54:	2403004d 	li	v1,77
  400b58:	afbf001c 	sw	ra,28(sp)
  400b5c:	afb10018 	sw	s1,24(sp)
  400b60:	10430016 	beq	v0,v1,400bbc <moveRobotsDerecha+0x78>
  400b64:	3c111001 	lui	s1,0x1001
  400b68:	8e230078 	lw	v1,120(s1)
  400b6c:	10600013 	beqz	v1,400bbc <moveRobotsDerecha+0x78>
  400b70:	10400012 	beqz	v0,400bbc <moveRobotsDerecha+0x78>
  400b74:	00002825 	move	a1,zero
  400b78:	24040002 	li	a0,2
  400b7c:	0c100787 	jal	401e1c <set_color>
  400b80:	92050077 	lbu	a1,119(s0)
  400b84:	9224007b 	lbu	a0,123(s1)
  400b88:	0c100795 	jal	401e54 <set_cursor>
  400b8c:	3c041001 	lui	a0,0x1001
  400b90:	24840054 	addiu	a0,a0,84
  400b94:	0c1007bf 	jal	401efc <puts>
  400b98:	8e050074 	lw	a1,116(s0)
  400b9c:	9224007b 	lbu	a0,123(s1)
  400ba0:	24a50001 	addiu	a1,a1,1
  400ba4:	ae050074 	sw	a1,116(s0)
  400ba8:	30a500ff 	andi	a1,a1,0xff
  400bac:	0c100795 	jal	401e54 <set_cursor>
  400bb0:	3c041001 	lui	a0,0x1001
  400bb4:	2484001c 	addiu	a0,a0,28
  400bb8:	0c1007bf 	jal	401efc <puts>
  400bbc:	3c101001 	lui	s0,0x1001
  400bc0:	8e02006c 	lw	v0,108(s0)
  400bc4:	2403004d 	li	v1,77
  400bc8:	10430016 	beq	v0,v1,400c24 <moveRobotsDerecha+0xe0>
  400bcc:	3c111001 	lui	s1,0x1001
  400bd0:	8e230070 	lw	v1,112(s1)
  400bd4:	10600013 	beqz	v1,400c24 <moveRobotsDerecha+0xe0>
  400bd8:	10400012 	beqz	v0,400c24 <moveRobotsDerecha+0xe0>
  400bdc:	00002825 	move	a1,zero
  400be0:	24040002 	li	a0,2
  400be4:	0c100787 	jal	401e1c <set_color>
  400be8:	9205006f 	lbu	a1,111(s0)
  400bec:	92240073 	lbu	a0,115(s1)
  400bf0:	0c100795 	jal	401e54 <set_cursor>
  400bf4:	3c041001 	lui	a0,0x1001
  400bf8:	24840054 	addiu	a0,a0,84
  400bfc:	0c1007bf 	jal	401efc <puts>
  400c00:	8e05006c 	lw	a1,108(s0)
  400c04:	92240073 	lbu	a0,115(s1)
  400c08:	24a50001 	addiu	a1,a1,1
  400c0c:	ae05006c 	sw	a1,108(s0)
  400c10:	30a500ff 	andi	a1,a1,0xff
  400c14:	0c100795 	jal	401e54 <set_cursor>
  400c18:	3c041001 	lui	a0,0x1001
  400c1c:	2484001c 	addiu	a0,a0,28
  400c20:	0c1007bf 	jal	401efc <puts>
  400c24:	3c101001 	lui	s0,0x1001
  400c28:	8e020064 	lw	v0,100(s0)
  400c2c:	2403004d 	li	v1,77
  400c30:	10430016 	beq	v0,v1,400c8c <moveRobotsDerecha+0x148>
  400c34:	3c111001 	lui	s1,0x1001
  400c38:	8e230068 	lw	v1,104(s1)
  400c3c:	10600013 	beqz	v1,400c8c <moveRobotsDerecha+0x148>
  400c40:	10400012 	beqz	v0,400c8c <moveRobotsDerecha+0x148>
  400c44:	00002825 	move	a1,zero
  400c48:	24040002 	li	a0,2
  400c4c:	0c100787 	jal	401e1c <set_color>
  400c50:	92050067 	lbu	a1,103(s0)
  400c54:	9224006b 	lbu	a0,107(s1)
  400c58:	0c100795 	jal	401e54 <set_cursor>
  400c5c:	3c041001 	lui	a0,0x1001
  400c60:	24840054 	addiu	a0,a0,84
  400c64:	0c1007bf 	jal	401efc <puts>
  400c68:	8e050064 	lw	a1,100(s0)
  400c6c:	9224006b 	lbu	a0,107(s1)
  400c70:	24a50001 	addiu	a1,a1,1
  400c74:	ae050064 	sw	a1,100(s0)
  400c78:	30a500ff 	andi	a1,a1,0xff
  400c7c:	0c100795 	jal	401e54 <set_cursor>
  400c80:	3c041001 	lui	a0,0x1001
  400c84:	2484001c 	addiu	a0,a0,28
  400c88:	0c1007bf 	jal	401efc <puts>
  400c8c:	3c101001 	lui	s0,0x1001
  400c90:	8e02005c 	lw	v0,92(s0)
  400c94:	2403004d 	li	v1,77
  400c98:	1043001a 	beq	v0,v1,400d04 <moveRobotsDerecha+0x1c0>
  400c9c:	3c111001 	lui	s1,0x1001
  400ca0:	8e230060 	lw	v1,96(s1)
  400ca4:	10600017 	beqz	v1,400d04 <moveRobotsDerecha+0x1c0>
  400ca8:	10400016 	beqz	v0,400d04 <moveRobotsDerecha+0x1c0>
  400cac:	00002825 	move	a1,zero
  400cb0:	24040002 	li	a0,2
  400cb4:	0c100787 	jal	401e1c <set_color>
  400cb8:	9205005f 	lbu	a1,95(s0)
  400cbc:	92240063 	lbu	a0,99(s1)
  400cc0:	0c100795 	jal	401e54 <set_cursor>
  400cc4:	3c041001 	lui	a0,0x1001
  400cc8:	24840054 	addiu	a0,a0,84
  400ccc:	0c1007bf 	jal	401efc <puts>
  400cd0:	8e05005c 	lw	a1,92(s0)
  400cd4:	92240063 	lbu	a0,99(s1)
  400cd8:	24a50001 	addiu	a1,a1,1
  400cdc:	ae05005c 	sw	a1,92(s0)
  400ce0:	30a500ff 	andi	a1,a1,0xff
  400ce4:	0c100795 	jal	401e54 <set_cursor>
  400ce8:	8fbf001c 	lw	ra,28(sp)
  400cec:	8fb10018 	lw	s1,24(sp)
  400cf0:	8fb00014 	lw	s0,20(sp)
  400cf4:	3c041001 	lui	a0,0x1001
  400cf8:	2484001c 	addiu	a0,a0,28
  400cfc:	27bd0020 	addiu	sp,sp,32
  400d00:	081007bf 	j	401efc <puts>
  400d04:	8fbf001c 	lw	ra,28(sp)
  400d08:	8fb10018 	lw	s1,24(sp)
  400d0c:	8fb00014 	lw	s0,20(sp)
  400d10:	27bd0020 	addiu	sp,sp,32
  400d14:	03e00008 	jr	ra

00400d18 <main>:
  400d18:	27bdffb8 	addiu	sp,sp,-72
  400d1c:	afbf0044 	sw	ra,68(sp)
  400d20:	afb60038 	sw	s6,56(sp)
  400d24:	afb50034 	sw	s5,52(sp)
  400d28:	afb40030 	sw	s4,48(sp)
  400d2c:	afb3002c 	sw	s3,44(sp)
  400d30:	afb10024 	sw	s1,36(sp)
  400d34:	afb00020 	sw	s0,32(sp)
  400d38:	3c131001 	lui	s3,0x1001
  400d3c:	afbe0040 	sw	s8,64(sp)
  400d40:	afb7003c 	sw	s7,60(sp)
  400d44:	afb20028 	sw	s2,40(sp)
  400d48:	0c1007cd 	jal	401f34 <clear_screen>
  400d4c:	0c100004 	jal	400010 <pintarmapa>
  400d50:	0c100054 	jal	400150 <pintarobots>
  400d54:	24020027 	li	v0,39
  400d58:	ae6200b4 	sw	v0,180(s3)
  400d5c:	3c141001 	lui	s4,0x1001
  400d60:	2402000e 	li	v0,14
  400d64:	00002825 	move	a1,zero
  400d68:	24040007 	li	a0,7
  400d6c:	3c151001 	lui	s5,0x1001
  400d70:	ae8200a4 	sw	v0,164(s4)
  400d74:	aea000a8 	sw	zero,168(s5)
  400d78:	0c100787 	jal	401e1c <set_color>
  400d7c:	926500b7 	lbu	a1,183(s3)
  400d80:	928400a7 	lbu	a0,167(s4)
  400d84:	3c020708 	lui	v0,0x708
  400d88:	afa20010 	sw	v0,16(sp)
  400d8c:	a7a00014 	sh	zero,20(sp)
  400d90:	3c101001 	lui	s0,0x1001
  400d94:	0c100795 	jal	401e54 <set_cursor>
  400d98:	3c161001 	lui	s6,0x1001
  400d9c:	27a40010 	addiu	a0,sp,16
  400da0:	0c1007bf 	jal	401efc <puts>
  400da4:	26100054 	addiu	s0,s0,84
  400da8:	0c100758 	jal	401d60 <keypad_init>
  400dac:	26d60058 	addiu	s6,s6,88
  400db0:	3c111001 	lui	s1,0x1001
  400db4:	0c10075c 	jal	401d70 <keypad_getkey>
  400db8:	00002825 	move	a1,zero
  400dbc:	24040007 	li	a0,7
  400dc0:	0040b825 	move	s7,v0
  400dc4:	0c100787 	jal	401e1c <set_color>
  400dc8:	24020001 	li	v0,1
  400dcc:	16e20115 	bne	s7,v0,401224 <main+0x50c>
  400dd0:	8e6500b4 	lw	a1,180(s3)
  400dd4:	24020002 	li	v0,2
  400dd8:	10a20014 	beq	a1,v0,400e2c <main+0x114>
  400ddc:	928400a7 	lbu	a0,167(s4)
  400de0:	30a500ff 	andi	a1,a1,0xff
  400de4:	aeb700a8 	sw	s7,168(s5)
  400de8:	0c100795 	jal	401e54 <set_cursor>
  400dec:	02002025 	move	a0,s0
  400df0:	0c1007bf 	jal	401efc <puts>
  400df4:	8e6500b4 	lw	a1,180(s3)
  400df8:	928400a7 	lbu	a0,167(s4)
  400dfc:	24a5ffff 	addiu	a1,a1,-1
  400e00:	ae6500b4 	sw	a1,180(s3)
  400e04:	30a500ff 	andi	a1,a1,0xff
  400e08:	0c100795 	jal	401e54 <set_cursor>
  400e0c:	27a40010 	addiu	a0,sp,16
  400e10:	0c1007bf 	jal	401efc <puts>
  400e14:	8e8300a4 	lw	v1,164(s4)
  400e18:	3c021001 	lui	v0,0x1001
  400e1c:	ac4300ac 	sw	v1,172(v0)
  400e20:	8e6300b4 	lw	v1,180(s3)
  400e24:	3c021001 	lui	v0,0x1001
  400e28:	ac4300b0 	sw	v1,176(v0)
  400e2c:	0c1002d1 	jal	400b44 <moveRobotsDerecha>
  400e30:	8ea300a8 	lw	v1,168(s5)
  400e34:	24020003 	li	v0,3
  400e38:	1462003e 	bne	v1,v0,400f34 <main+0x21c>
  400e3c:	24020008 	li	v0,8
  400e40:	16e200b9 	bne	s7,v0,401128 <main+0x410>
  400e44:	3c1e1001 	lui	s8,0x1001
  400e48:	8fc300ac 	lw	v1,172(s8)
  400e4c:	3c121001 	lui	s2,0x1001
  400e50:	24630001 	addiu	v1,v1,1
  400e54:	afc300ac 	sw	v1,172(s8)
  400e58:	2862001c 	slti	v0,v1,28
  400e5c:	10400035 	beqz	v0,400f34 <main+0x21c>
  400e60:	24040028 	li	a0,40
  400e64:	afa30018 	sw	v1,24(sp)
  400e68:	0c10074d 	jal	401d34 <delay_ms>
  400e6c:	8fc400ac 	lw	a0,172(s8)
  400e70:	8fa30018 	lw	v1,24(sp)
  400e74:	0083102a 	slt	v0,a0,v1
  400e78:	1040000e 	beqz	v0,400eb4 <main+0x19c>
  400e7c:	924500b3 	lbu	a1,179(s2)
  400e80:	308400ff 	andi	a0,a0,0xff
  400e84:	0c100795 	jal	401e54 <set_cursor>
  400e88:	02002025 	move	a0,s0
  400e8c:	0c1007bf 	jal	401efc <puts>
  400e90:	8fc400ac 	lw	a0,172(s8)
  400e94:	924500b3 	lbu	a1,179(s2)
  400e98:	24840001 	addiu	a0,a0,1
  400e9c:	afc400ac 	sw	a0,172(s8)
  400ea0:	308400ff 	andi	a0,a0,0xff
  400ea4:	0c100795 	jal	401e54 <set_cursor>
  400ea8:	02c02025 	move	a0,s6
  400eac:	0c1007bf 	jal	401efc <puts>
  400eb0:	8fa30018 	lw	v1,24(sp)
  400eb4:	3c051001 	lui	a1,0x1001
  400eb8:	8fc200ac 	lw	v0,172(s8)
  400ebc:	8ca40098 	lw	a0,152(a1)
  400ec0:	00a03825 	move	a3,a1
  400ec4:	14440127 	bne	v0,a0,401364 <main+0x64c>
  400ec8:	3c061001 	lui	a2,0x1001
  400ecc:	8e4800b0 	lw	t0,176(s2)
  400ed0:	8cc50094 	lw	a1,148(a2)
  400ed4:	11050004 	beq	t0,a1,400ee8 <main+0x1d0>
  400ed8:	24a90001 	addiu	t1,a1,1
  400edc:	11090002 	beq	t0,t1,400ee8 <main+0x1d0>
  400ee0:	24a9ffff 	addiu	t1,a1,-1
  400ee4:	1509011f 	bne	t0,t1,401364 <main+0x64c>
  400ee8:	30a500ff 	andi	a1,a1,0xff
  400eec:	308400ff 	andi	a0,a0,0xff
  400ef0:	afa6001c 	sw	a2,28(sp)
  400ef4:	afa70018 	sw	a3,24(sp)
  400ef8:	0c100795 	jal	401e54 <set_cursor>
  400efc:	02002025 	move	a0,s0
  400f00:	0c1007bf 	jal	401efc <puts>
  400f04:	8fa70018 	lw	a3,24(sp)
  400f08:	8fa6001c 	lw	a2,28(sp)
  400f0c:	ace00098 	sw	zero,152(a3)
  400f10:	acc00094 	sw	zero,148(a2)
  400f14:	8e22009c 	lw	v0,156(s1)
  400f18:	93c400af 	lbu	a0,175(s8)
  400f1c:	924500b3 	lbu	a1,179(s2)
  400f20:	2442ffff 	addiu	v0,v0,-1
  400f24:	ae22009c 	sw	v0,156(s1)
  400f28:	0c100795 	jal	401e54 <set_cursor>
  400f2c:	02002025 	move	a0,s0
  400f30:	0c1007bf 	jal	401efc <puts>
  400f34:	8ea300a8 	lw	v1,168(s5)
  400f38:	24020004 	li	v0,4
  400f3c:	1462003e 	bne	v1,v0,401038 <main+0x320>
  400f40:	24020008 	li	v0,8
  400f44:	16e200b1 	bne	s7,v0,40120c <main+0x4f4>
  400f48:	3c1e1001 	lui	s8,0x1001
  400f4c:	8fc300ac 	lw	v1,172(s8)
  400f50:	3c121001 	lui	s2,0x1001
  400f54:	2463ffff 	addiu	v1,v1,-1
  400f58:	afc300ac 	sw	v1,172(s8)
  400f5c:	28620003 	slti	v0,v1,3
  400f60:	14400035 	bnez	v0,401038 <main+0x320>
  400f64:	24040028 	li	a0,40
  400f68:	afa30018 	sw	v1,24(sp)
  400f6c:	0c10074d 	jal	401d34 <delay_ms>
  400f70:	8fc400ac 	lw	a0,172(s8)
  400f74:	8fa30018 	lw	v1,24(sp)
  400f78:	0064102a 	slt	v0,v1,a0
  400f7c:	1040000e 	beqz	v0,400fb8 <main+0x2a0>
  400f80:	924500b3 	lbu	a1,179(s2)
  400f84:	308400ff 	andi	a0,a0,0xff
  400f88:	0c100795 	jal	401e54 <set_cursor>
  400f8c:	02002025 	move	a0,s0
  400f90:	0c1007bf 	jal	401efc <puts>
  400f94:	8fc400ac 	lw	a0,172(s8)
  400f98:	924500b3 	lbu	a1,179(s2)
  400f9c:	2484ffff 	addiu	a0,a0,-1
  400fa0:	afc400ac 	sw	a0,172(s8)
  400fa4:	308400ff 	andi	a0,a0,0xff
  400fa8:	0c100795 	jal	401e54 <set_cursor>
  400fac:	02c02025 	move	a0,s6
  400fb0:	0c1007bf 	jal	401efc <puts>
  400fb4:	8fa30018 	lw	v1,24(sp)
  400fb8:	3c051001 	lui	a1,0x1001
  400fbc:	8fc200ac 	lw	v0,172(s8)
  400fc0:	8ca40098 	lw	a0,152(a1)
  400fc4:	00a03825 	move	a3,a1
  400fc8:	14440198 	bne	v0,a0,40162c <main+0x914>
  400fcc:	3c061001 	lui	a2,0x1001
  400fd0:	8e4800b0 	lw	t0,176(s2)
  400fd4:	8cc50094 	lw	a1,148(a2)
  400fd8:	11050004 	beq	t0,a1,400fec <main+0x2d4>
  400fdc:	24a90001 	addiu	t1,a1,1
  400fe0:	11090002 	beq	t0,t1,400fec <main+0x2d4>
  400fe4:	24a9ffff 	addiu	t1,a1,-1
  400fe8:	15090190 	bne	t0,t1,40162c <main+0x914>
  400fec:	30a500ff 	andi	a1,a1,0xff
  400ff0:	308400ff 	andi	a0,a0,0xff
  400ff4:	afa6001c 	sw	a2,28(sp)
  400ff8:	afa70018 	sw	a3,24(sp)
  400ffc:	0c100795 	jal	401e54 <set_cursor>
  401000:	02002025 	move	a0,s0
  401004:	0c1007bf 	jal	401efc <puts>
  401008:	8fa70018 	lw	a3,24(sp)
  40100c:	8fa6001c 	lw	a2,28(sp)
  401010:	ace00098 	sw	zero,152(a3)
  401014:	acc00094 	sw	zero,148(a2)
  401018:	8e22009c 	lw	v0,156(s1)
  40101c:	93c400af 	lbu	a0,175(s8)
  401020:	924500b3 	lbu	a1,179(s2)
  401024:	2442ffff 	addiu	v0,v0,-1
  401028:	ae22009c 	sw	v0,156(s1)
  40102c:	0c100795 	jal	401e54 <set_cursor>
  401030:	02002025 	move	a0,s0
  401034:	0c1007bf 	jal	401efc <puts>
  401038:	8ea300a8 	lw	v1,168(s5)
  40103c:	24020002 	li	v0,2
  401040:	14620039 	bne	v1,v0,401128 <main+0x410>
  401044:	24020008 	li	v0,8
  401048:	16e20070 	bne	s7,v0,40120c <main+0x4f4>
  40104c:	3c121001 	lui	s2,0x1001
  401050:	8e4200b0 	lw	v0,176(s2)
  401054:	3c1e1001 	lui	s8,0x1001
  401058:	24420002 	addiu	v0,v0,2
  40105c:	ae4200b0 	sw	v0,176(s2)
  401060:	2843004e 	slti	v1,v0,78
  401064:	10600030 	beqz	v1,401128 <main+0x410>
  401068:	24040014 	li	a0,20
  40106c:	afa20018 	sw	v0,24(sp)
  401070:	0c10074d 	jal	401d34 <delay_ms>
  401074:	8e4500b0 	lw	a1,176(s2)
  401078:	8fa20018 	lw	v0,24(sp)
  40107c:	00a2182a 	slt	v1,a1,v0
  401080:	1060000e 	beqz	v1,4010bc <main+0x3a4>
  401084:	93c400af 	lbu	a0,175(s8)
  401088:	30a500ff 	andi	a1,a1,0xff
  40108c:	0c100795 	jal	401e54 <set_cursor>
  401090:	02002025 	move	a0,s0
  401094:	0c1007bf 	jal	401efc <puts>
  401098:	8e4500b0 	lw	a1,176(s2)
  40109c:	93c400af 	lbu	a0,175(s8)
  4010a0:	24a50001 	addiu	a1,a1,1
  4010a4:	ae4500b0 	sw	a1,176(s2)
  4010a8:	30a500ff 	andi	a1,a1,0xff
  4010ac:	0c100795 	jal	401e54 <set_cursor>
  4010b0:	02c02025 	move	a0,s6
  4010b4:	0c1007bf 	jal	401efc <puts>
  4010b8:	8fa20018 	lw	v0,24(sp)
  4010bc:	3c061001 	lui	a2,0x1001
  4010c0:	8fc400ac 	lw	a0,172(s8)
  4010c4:	8cc30098 	lw	v1,152(a2)
  4010c8:	8e4500b0 	lw	a1,176(s2)
  4010cc:	14830209 	bne	a0,v1,4018f4 <main+0xbdc>
  4010d0:	3c031001 	lui	v1,0x1001
  4010d4:	8c670094 	lw	a3,148(v1)
  4010d8:	14a70206 	bne	a1,a3,4018f4 <main+0xbdc>
  4010dc:	30a500ff 	andi	a1,a1,0xff
  4010e0:	308400ff 	andi	a0,a0,0xff
  4010e4:	afa3001c 	sw	v1,28(sp)
  4010e8:	afa60018 	sw	a2,24(sp)
  4010ec:	0c100795 	jal	401e54 <set_cursor>
  4010f0:	02002025 	move	a0,s0
  4010f4:	0c1007bf 	jal	401efc <puts>
  4010f8:	8fa60018 	lw	a2,24(sp)
  4010fc:	8fa3001c 	lw	v1,28(sp)
  401100:	acc00098 	sw	zero,152(a2)
  401104:	ac600094 	sw	zero,148(v1)
  401108:	8e22009c 	lw	v0,156(s1)
  40110c:	93c400af 	lbu	a0,175(s8)
  401110:	924500b3 	lbu	a1,179(s2)
  401114:	2442ffff 	addiu	v0,v0,-1
  401118:	ae22009c 	sw	v0,156(s1)
  40111c:	0c100795 	jal	401e54 <set_cursor>
  401120:	02002025 	move	a0,s0
  401124:	0c1007bf 	jal	401efc <puts>
  401128:	8ea300a8 	lw	v1,168(s5)
  40112c:	24020001 	li	v0,1
  401130:	14620036 	bne	v1,v0,40120c <main+0x4f4>
  401134:	24020008 	li	v0,8
  401138:	16e20034 	bne	s7,v0,40120c <main+0x4f4>
  40113c:	3c121001 	lui	s2,0x1001
  401140:	8e5e00b0 	lw	s8,176(s2)
  401144:	3c171001 	lui	s7,0x1001
  401148:	27defffe 	addiu	s8,s8,-2
  40114c:	ae5e00b0 	sw	s8,176(s2)
  401150:	2bc20002 	slti	v0,s8,2
  401154:	1440002d 	bnez	v0,40120c <main+0x4f4>
  401158:	24040014 	li	a0,20
  40115c:	0c10074d 	jal	401d34 <delay_ms>
  401160:	8e4500b0 	lw	a1,176(s2)
  401164:	03c5102a 	slt	v0,s8,a1
  401168:	1040000d 	beqz	v0,4011a0 <main+0x488>
  40116c:	92e400af 	lbu	a0,175(s7)
  401170:	30a500ff 	andi	a1,a1,0xff
  401174:	0c100795 	jal	401e54 <set_cursor>
  401178:	02002025 	move	a0,s0
  40117c:	0c1007bf 	jal	401efc <puts>
  401180:	8e4500b0 	lw	a1,176(s2)
  401184:	92e400af 	lbu	a0,175(s7)
  401188:	24a5ffff 	addiu	a1,a1,-1
  40118c:	ae4500b0 	sw	a1,176(s2)
  401190:	30a500ff 	andi	a1,a1,0xff
  401194:	0c100795 	jal	401e54 <set_cursor>
  401198:	02c02025 	move	a0,s6
  40119c:	0c1007bf 	jal	401efc <puts>
  4011a0:	3c031001 	lui	v1,0x1001
  4011a4:	8ee400ac 	lw	a0,172(s7)
  4011a8:	8c620098 	lw	v0,152(v1)
  4011ac:	8e4500b0 	lw	a1,176(s2)
  4011b0:	14820259 	bne	a0,v0,401b18 <main+0xe00>
  4011b4:	3c021001 	lui	v0,0x1001
  4011b8:	8c460094 	lw	a2,148(v0)
  4011bc:	14a60256 	bne	a1,a2,401b18 <main+0xe00>
  4011c0:	30a500ff 	andi	a1,a1,0xff
  4011c4:	308400ff 	andi	a0,a0,0xff
  4011c8:	afa2001c 	sw	v0,28(sp)
  4011cc:	afa30018 	sw	v1,24(sp)
  4011d0:	0c100795 	jal	401e54 <set_cursor>
  4011d4:	02002025 	move	a0,s0
  4011d8:	0c1007bf 	jal	401efc <puts>
  4011dc:	8fa30018 	lw	v1,24(sp)
  4011e0:	8fa2001c 	lw	v0,28(sp)
  4011e4:	ac600098 	sw	zero,152(v1)
  4011e8:	ac400094 	sw	zero,148(v0)
  4011ec:	8e22009c 	lw	v0,156(s1)
  4011f0:	92e400af 	lbu	a0,175(s7)
  4011f4:	924500b3 	lbu	a1,179(s2)
  4011f8:	2442ffff 	addiu	v0,v0,-1
  4011fc:	ae22009c 	sw	v0,156(s1)
  401200:	0c100795 	jal	401e54 <set_cursor>
  401204:	02002025 	move	a0,s0
  401208:	0c1007bf 	jal	401efc <puts>
  40120c:	8e24009c 	lw	a0,156(s1)
  401210:	0c10009d 	jal	400274 <ganar>
  401214:	0c1000ad 	jal	4002b4 <perder>
  401218:	24040096 	li	a0,150
  40121c:	0c10074d 	jal	401d34 <delay_ms>
  401220:	1000fee4 	b	400db4 <main+0x9c>
  401224:	24020002 	li	v0,2
  401228:	12e2001c 	beq	s7,v0,40129c <main+0x584>
  40122c:	24020003 	li	v0,3
  401230:	12e20033 	beq	s7,v0,401300 <main+0x5e8>
  401234:	24030004 	li	v1,4
  401238:	16e3fefd 	bne	s7,v1,400e30 <main+0x118>
  40123c:	8e8400a4 	lw	a0,164(s4)
  401240:	10820014 	beq	a0,v0,401294 <main+0x57c>
  401244:	926500b7 	lbu	a1,183(s3)
  401248:	308400ff 	andi	a0,a0,0xff
  40124c:	aeb700a8 	sw	s7,168(s5)
  401250:	0c100795 	jal	401e54 <set_cursor>
  401254:	02002025 	move	a0,s0
  401258:	0c1007bf 	jal	401efc <puts>
  40125c:	8e8400a4 	lw	a0,164(s4)
  401260:	926500b7 	lbu	a1,183(s3)
  401264:	2484ffff 	addiu	a0,a0,-1
  401268:	ae8400a4 	sw	a0,164(s4)
  40126c:	308400ff 	andi	a0,a0,0xff
  401270:	0c100795 	jal	401e54 <set_cursor>
  401274:	27a40010 	addiu	a0,sp,16
  401278:	0c1007bf 	jal	401efc <puts>
  40127c:	8e8300a4 	lw	v1,164(s4)
  401280:	3c021001 	lui	v0,0x1001
  401284:	ac4300ac 	sw	v1,172(v0)
  401288:	8e6300b4 	lw	v1,180(s3)
  40128c:	3c021001 	lui	v0,0x1001
  401290:	ac4300b0 	sw	v1,176(v0)
  401294:	0c1001e7 	jal	40079c <moveRobotsAbajo>
  401298:	1000fee5 	b	400e30 <main+0x118>
  40129c:	8e6500b4 	lw	a1,180(s3)
  4012a0:	2402004d 	li	v0,77
  4012a4:	10a20014 	beq	a1,v0,4012f8 <main+0x5e0>
  4012a8:	928400a7 	lbu	a0,167(s4)
  4012ac:	30a500ff 	andi	a1,a1,0xff
  4012b0:	aeb700a8 	sw	s7,168(s5)
  4012b4:	0c100795 	jal	401e54 <set_cursor>
  4012b8:	02002025 	move	a0,s0
  4012bc:	0c1007bf 	jal	401efc <puts>
  4012c0:	8e6500b4 	lw	a1,180(s3)
  4012c4:	928400a7 	lbu	a0,167(s4)
  4012c8:	24a50001 	addiu	a1,a1,1
  4012cc:	ae6500b4 	sw	a1,180(s3)
  4012d0:	30a500ff 	andi	a1,a1,0xff
  4012d4:	0c100795 	jal	401e54 <set_cursor>
  4012d8:	27a40010 	addiu	a0,sp,16
  4012dc:	0c1007bf 	jal	401efc <puts>
  4012e0:	8e8300a4 	lw	v1,164(s4)
  4012e4:	3c021001 	lui	v0,0x1001
  4012e8:	ac4300ac 	sw	v1,172(v0)
  4012ec:	8e6300b4 	lw	v1,180(s3)
  4012f0:	3c021001 	lui	v0,0x1001
  4012f4:	ac4300b0 	sw	v1,176(v0)
  4012f8:	0c10025c 	jal	400970 <moveRobotsIzquierda>
  4012fc:	1000fecc 	b	400e30 <main+0x118>
  401300:	8e8400a4 	lw	a0,164(s4)
  401304:	2402001b 	li	v0,27
  401308:	10820014 	beq	a0,v0,40135c <main+0x644>
  40130c:	926500b7 	lbu	a1,183(s3)
  401310:	308400ff 	andi	a0,a0,0xff
  401314:	aeb700a8 	sw	s7,168(s5)
  401318:	0c100795 	jal	401e54 <set_cursor>
  40131c:	02002025 	move	a0,s0
  401320:	0c1007bf 	jal	401efc <puts>
  401324:	8e8400a4 	lw	a0,164(s4)
  401328:	926500b7 	lbu	a1,183(s3)
  40132c:	24840001 	addiu	a0,a0,1
  401330:	ae8400a4 	sw	a0,164(s4)
  401334:	308400ff 	andi	a0,a0,0xff
  401338:	0c100795 	jal	401e54 <set_cursor>
  40133c:	27a40010 	addiu	a0,sp,16
  401340:	0c1007bf 	jal	401efc <puts>
  401344:	8e8300a4 	lw	v1,164(s4)
  401348:	3c021001 	lui	v0,0x1001
  40134c:	ac4300ac 	sw	v1,172(v0)
  401350:	8e6300b4 	lw	v1,180(s3)
  401354:	3c021001 	lui	v0,0x1001
  401358:	ac4300b0 	sw	v1,176(v0)
  40135c:	0c100172 	jal	4005c8 <moveRobotsArriba>
  401360:	1000feb3 	b	400e30 <main+0x118>
  401364:	3c051001 	lui	a1,0x1001
  401368:	8ca40090 	lw	a0,144(a1)
  40136c:	00a03825 	move	a3,a1
  401370:	14440014 	bne	v0,a0,4013c4 <main+0x6ac>
  401374:	3c061001 	lui	a2,0x1001
  401378:	8e4800b0 	lw	t0,176(s2)
  40137c:	8cc5008c 	lw	a1,140(a2)
  401380:	11050004 	beq	t0,a1,401394 <main+0x67c>
  401384:	24a90001 	addiu	t1,a1,1
  401388:	11090002 	beq	t0,t1,401394 <main+0x67c>
  40138c:	24a9ffff 	addiu	t1,a1,-1
  401390:	1509000c 	bne	t0,t1,4013c4 <main+0x6ac>
  401394:	30a500ff 	andi	a1,a1,0xff
  401398:	308400ff 	andi	a0,a0,0xff
  40139c:	afa6001c 	sw	a2,28(sp)
  4013a0:	afa70018 	sw	a3,24(sp)
  4013a4:	0c100795 	jal	401e54 <set_cursor>
  4013a8:	02002025 	move	a0,s0
  4013ac:	0c1007bf 	jal	401efc <puts>
  4013b0:	8fa70018 	lw	a3,24(sp)
  4013b4:	8fa6001c 	lw	a2,28(sp)
  4013b8:	ace00090 	sw	zero,144(a3)
  4013bc:	acc0008c 	sw	zero,140(a2)
  4013c0:	1000fed4 	b	400f14 <main+0x1fc>
  4013c4:	3c051001 	lui	a1,0x1001
  4013c8:	8ca40088 	lw	a0,136(a1)
  4013cc:	00a03825 	move	a3,a1
  4013d0:	14440014 	bne	v0,a0,401424 <main+0x70c>
  4013d4:	3c061001 	lui	a2,0x1001
  4013d8:	8e4800b0 	lw	t0,176(s2)
  4013dc:	8cc50084 	lw	a1,132(a2)
  4013e0:	11050004 	beq	t0,a1,4013f4 <main+0x6dc>
  4013e4:	24a90001 	addiu	t1,a1,1
  4013e8:	11090002 	beq	t0,t1,4013f4 <main+0x6dc>
  4013ec:	24a9ffff 	addiu	t1,a1,-1
  4013f0:	1509000c 	bne	t0,t1,401424 <main+0x70c>
  4013f4:	30a500ff 	andi	a1,a1,0xff
  4013f8:	308400ff 	andi	a0,a0,0xff
  4013fc:	afa6001c 	sw	a2,28(sp)
  401400:	afa70018 	sw	a3,24(sp)
  401404:	0c100795 	jal	401e54 <set_cursor>
  401408:	02002025 	move	a0,s0
  40140c:	0c1007bf 	jal	401efc <puts>
  401410:	8fa70018 	lw	a3,24(sp)
  401414:	8fa6001c 	lw	a2,28(sp)
  401418:	ace00088 	sw	zero,136(a3)
  40141c:	acc00084 	sw	zero,132(a2)
  401420:	1000febc 	b	400f14 <main+0x1fc>
  401424:	3c051001 	lui	a1,0x1001
  401428:	8ca40080 	lw	a0,128(a1)
  40142c:	00a03825 	move	a3,a1
  401430:	14440014 	bne	v0,a0,401484 <main+0x76c>
  401434:	3c061001 	lui	a2,0x1001
  401438:	8e4800b0 	lw	t0,176(s2)
  40143c:	8cc5007c 	lw	a1,124(a2)
  401440:	11050004 	beq	t0,a1,401454 <main+0x73c>
  401444:	24a90001 	addiu	t1,a1,1
  401448:	11090002 	beq	t0,t1,401454 <main+0x73c>
  40144c:	24a9ffff 	addiu	t1,a1,-1
  401450:	1509000c 	bne	t0,t1,401484 <main+0x76c>
  401454:	30a500ff 	andi	a1,a1,0xff
  401458:	308400ff 	andi	a0,a0,0xff
  40145c:	afa6001c 	sw	a2,28(sp)
  401460:	afa70018 	sw	a3,24(sp)
  401464:	0c100795 	jal	401e54 <set_cursor>
  401468:	02002025 	move	a0,s0
  40146c:	0c1007bf 	jal	401efc <puts>
  401470:	8fa70018 	lw	a3,24(sp)
  401474:	8fa6001c 	lw	a2,28(sp)
  401478:	ace00080 	sw	zero,128(a3)
  40147c:	acc0007c 	sw	zero,124(a2)
  401480:	1000fea4 	b	400f14 <main+0x1fc>
  401484:	3c051001 	lui	a1,0x1001
  401488:	8ca40078 	lw	a0,120(a1)
  40148c:	00a03825 	move	a3,a1
  401490:	14440014 	bne	v0,a0,4014e4 <main+0x7cc>
  401494:	3c061001 	lui	a2,0x1001
  401498:	8e4800b0 	lw	t0,176(s2)
  40149c:	8cc50074 	lw	a1,116(a2)
  4014a0:	11050004 	beq	t0,a1,4014b4 <main+0x79c>
  4014a4:	24a90001 	addiu	t1,a1,1
  4014a8:	11090002 	beq	t0,t1,4014b4 <main+0x79c>
  4014ac:	24a9ffff 	addiu	t1,a1,-1
  4014b0:	1509000c 	bne	t0,t1,4014e4 <main+0x7cc>
  4014b4:	30a500ff 	andi	a1,a1,0xff
  4014b8:	308400ff 	andi	a0,a0,0xff
  4014bc:	afa6001c 	sw	a2,28(sp)
  4014c0:	afa70018 	sw	a3,24(sp)
  4014c4:	0c100795 	jal	401e54 <set_cursor>
  4014c8:	02002025 	move	a0,s0
  4014cc:	0c1007bf 	jal	401efc <puts>
  4014d0:	8fa70018 	lw	a3,24(sp)
  4014d4:	8fa6001c 	lw	a2,28(sp)
  4014d8:	ace00078 	sw	zero,120(a3)
  4014dc:	acc00074 	sw	zero,116(a2)
  4014e0:	1000fe8c 	b	400f14 <main+0x1fc>
  4014e4:	3c051001 	lui	a1,0x1001
  4014e8:	8ca40070 	lw	a0,112(a1)
  4014ec:	00a03825 	move	a3,a1
  4014f0:	14440014 	bne	v0,a0,401544 <main+0x82c>
  4014f4:	3c061001 	lui	a2,0x1001
  4014f8:	8e4800b0 	lw	t0,176(s2)
  4014fc:	8cc5006c 	lw	a1,108(a2)
  401500:	11050004 	beq	t0,a1,401514 <main+0x7fc>
  401504:	24a90001 	addiu	t1,a1,1
  401508:	11090002 	beq	t0,t1,401514 <main+0x7fc>
  40150c:	24a9ffff 	addiu	t1,a1,-1
  401510:	1509000c 	bne	t0,t1,401544 <main+0x82c>
  401514:	30a500ff 	andi	a1,a1,0xff
  401518:	308400ff 	andi	a0,a0,0xff
  40151c:	afa6001c 	sw	a2,28(sp)
  401520:	afa70018 	sw	a3,24(sp)
  401524:	0c100795 	jal	401e54 <set_cursor>
  401528:	02002025 	move	a0,s0
  40152c:	0c1007bf 	jal	401efc <puts>
  401530:	8fa70018 	lw	a3,24(sp)
  401534:	8fa6001c 	lw	a2,28(sp)
  401538:	ace00070 	sw	zero,112(a3)
  40153c:	acc0006c 	sw	zero,108(a2)
  401540:	1000fe74 	b	400f14 <main+0x1fc>
  401544:	3c051001 	lui	a1,0x1001
  401548:	8ca40068 	lw	a0,104(a1)
  40154c:	00a03825 	move	a3,a1
  401550:	14440014 	bne	v0,a0,4015a4 <main+0x88c>
  401554:	3c061001 	lui	a2,0x1001
  401558:	8e4800b0 	lw	t0,176(s2)
  40155c:	8cc50064 	lw	a1,100(a2)
  401560:	11050004 	beq	t0,a1,401574 <main+0x85c>
  401564:	24a90001 	addiu	t1,a1,1
  401568:	11090002 	beq	t0,t1,401574 <main+0x85c>
  40156c:	24a9ffff 	addiu	t1,a1,-1
  401570:	1509000c 	bne	t0,t1,4015a4 <main+0x88c>
  401574:	30a500ff 	andi	a1,a1,0xff
  401578:	308400ff 	andi	a0,a0,0xff
  40157c:	afa6001c 	sw	a2,28(sp)
  401580:	afa70018 	sw	a3,24(sp)
  401584:	0c100795 	jal	401e54 <set_cursor>
  401588:	02002025 	move	a0,s0
  40158c:	0c1007bf 	jal	401efc <puts>
  401590:	8fa70018 	lw	a3,24(sp)
  401594:	8fa6001c 	lw	a2,28(sp)
  401598:	ace00068 	sw	zero,104(a3)
  40159c:	acc00064 	sw	zero,100(a2)
  4015a0:	1000fe5c 	b	400f14 <main+0x1fc>
  4015a4:	3c051001 	lui	a1,0x1001
  4015a8:	8ca40060 	lw	a0,96(a1)
  4015ac:	00a03825 	move	a3,a1
  4015b0:	14440014 	bne	v0,a0,401604 <main+0x8ec>
  4015b4:	3c061001 	lui	a2,0x1001
  4015b8:	8e4800b0 	lw	t0,176(s2)
  4015bc:	8cc5005c 	lw	a1,92(a2)
  4015c0:	11050004 	beq	t0,a1,4015d4 <main+0x8bc>
  4015c4:	24a90001 	addiu	t1,a1,1
  4015c8:	11090002 	beq	t0,t1,4015d4 <main+0x8bc>
  4015cc:	24a9ffff 	addiu	t1,a1,-1
  4015d0:	1509000c 	bne	t0,t1,401604 <main+0x8ec>
  4015d4:	30a500ff 	andi	a1,a1,0xff
  4015d8:	308400ff 	andi	a0,a0,0xff
  4015dc:	afa6001c 	sw	a2,28(sp)
  4015e0:	afa70018 	sw	a3,24(sp)
  4015e4:	0c100795 	jal	401e54 <set_cursor>
  4015e8:	02002025 	move	a0,s0
  4015ec:	0c1007bf 	jal	401efc <puts>
  4015f0:	8fa70018 	lw	a3,24(sp)
  4015f4:	8fa6001c 	lw	a2,28(sp)
  4015f8:	ace00060 	sw	zero,96(a3)
  4015fc:	acc0005c 	sw	zero,92(a2)
  401600:	1000fe44 	b	400f14 <main+0x1fc>
  401604:	2404001b 	li	a0,27
  401608:	14440006 	bne	v0,a0,401624 <main+0x90c>
  40160c:	924500b3 	lbu	a1,179(s2)
  401610:	afa30018 	sw	v1,24(sp)
  401614:	0c100795 	jal	401e54 <set_cursor>
  401618:	02002025 	move	a0,s0
  40161c:	0c1007bf 	jal	401efc <puts>
  401620:	8fa30018 	lw	v1,24(sp)
  401624:	24630001 	addiu	v1,v1,1
  401628:	1000fe0b 	b	400e58 <main+0x140>
  40162c:	3c051001 	lui	a1,0x1001
  401630:	8ca40090 	lw	a0,144(a1)
  401634:	00a03825 	move	a3,a1
  401638:	14440014 	bne	v0,a0,40168c <main+0x974>
  40163c:	3c061001 	lui	a2,0x1001
  401640:	8e4800b0 	lw	t0,176(s2)
  401644:	8cc5008c 	lw	a1,140(a2)
  401648:	11050004 	beq	t0,a1,40165c <main+0x944>
  40164c:	24a90001 	addiu	t1,a1,1
  401650:	11090002 	beq	t0,t1,40165c <main+0x944>
  401654:	24a9ffff 	addiu	t1,a1,-1
  401658:	1509000c 	bne	t0,t1,40168c <main+0x974>
  40165c:	30a500ff 	andi	a1,a1,0xff
  401660:	308400ff 	andi	a0,a0,0xff
  401664:	afa6001c 	sw	a2,28(sp)
  401668:	afa70018 	sw	a3,24(sp)
  40166c:	0c100795 	jal	401e54 <set_cursor>
  401670:	02002025 	move	a0,s0
  401674:	0c1007bf 	jal	401efc <puts>
  401678:	8fa70018 	lw	a3,24(sp)
  40167c:	8fa6001c 	lw	a2,28(sp)
  401680:	ace00090 	sw	zero,144(a3)
  401684:	acc0008c 	sw	zero,140(a2)
  401688:	1000fe63 	b	401018 <main+0x300>
  40168c:	3c051001 	lui	a1,0x1001
  401690:	8ca40088 	lw	a0,136(a1)
  401694:	00a03825 	move	a3,a1
  401698:	14440014 	bne	v0,a0,4016ec <main+0x9d4>
  40169c:	3c061001 	lui	a2,0x1001
  4016a0:	8e4800b0 	lw	t0,176(s2)
  4016a4:	8cc50084 	lw	a1,132(a2)
  4016a8:	11050004 	beq	t0,a1,4016bc <main+0x9a4>
  4016ac:	24a90001 	addiu	t1,a1,1
  4016b0:	11090002 	beq	t0,t1,4016bc <main+0x9a4>
  4016b4:	24a9ffff 	addiu	t1,a1,-1
  4016b8:	1509000c 	bne	t0,t1,4016ec <main+0x9d4>
  4016bc:	30a500ff 	andi	a1,a1,0xff
  4016c0:	308400ff 	andi	a0,a0,0xff
  4016c4:	afa6001c 	sw	a2,28(sp)
  4016c8:	afa70018 	sw	a3,24(sp)
  4016cc:	0c100795 	jal	401e54 <set_cursor>
  4016d0:	02002025 	move	a0,s0
  4016d4:	0c1007bf 	jal	401efc <puts>
  4016d8:	8fa70018 	lw	a3,24(sp)
  4016dc:	8fa6001c 	lw	a2,28(sp)
  4016e0:	ace00088 	sw	zero,136(a3)
  4016e4:	acc00084 	sw	zero,132(a2)
  4016e8:	1000fe4b 	b	401018 <main+0x300>
  4016ec:	3c051001 	lui	a1,0x1001
  4016f0:	8ca40080 	lw	a0,128(a1)
  4016f4:	00a03825 	move	a3,a1
  4016f8:	14440014 	bne	v0,a0,40174c <main+0xa34>
  4016fc:	3c061001 	lui	a2,0x1001
  401700:	8e4800b0 	lw	t0,176(s2)
  401704:	8cc5007c 	lw	a1,124(a2)
  401708:	11050004 	beq	t0,a1,40171c <main+0xa04>
  40170c:	24a90001 	addiu	t1,a1,1
  401710:	11090002 	beq	t0,t1,40171c <main+0xa04>
  401714:	24a9ffff 	addiu	t1,a1,-1
  401718:	1509000c 	bne	t0,t1,40174c <main+0xa34>
  40171c:	30a500ff 	andi	a1,a1,0xff
  401720:	308400ff 	andi	a0,a0,0xff
  401724:	afa6001c 	sw	a2,28(sp)
  401728:	afa70018 	sw	a3,24(sp)
  40172c:	0c100795 	jal	401e54 <set_cursor>
  401730:	02002025 	move	a0,s0
  401734:	0c1007bf 	jal	401efc <puts>
  401738:	8fa70018 	lw	a3,24(sp)
  40173c:	8fa6001c 	lw	a2,28(sp)
  401740:	ace00080 	sw	zero,128(a3)
  401744:	acc0007c 	sw	zero,124(a2)
  401748:	1000fe33 	b	401018 <main+0x300>
  40174c:	3c051001 	lui	a1,0x1001
  401750:	8ca40078 	lw	a0,120(a1)
  401754:	00a03825 	move	a3,a1
  401758:	14440014 	bne	v0,a0,4017ac <main+0xa94>
  40175c:	3c061001 	lui	a2,0x1001
  401760:	8e4800b0 	lw	t0,176(s2)
  401764:	8cc50074 	lw	a1,116(a2)
  401768:	11050004 	beq	t0,a1,40177c <main+0xa64>
  40176c:	24a90001 	addiu	t1,a1,1
  401770:	11090002 	beq	t0,t1,40177c <main+0xa64>
  401774:	24a9ffff 	addiu	t1,a1,-1
  401778:	1509000c 	bne	t0,t1,4017ac <main+0xa94>
  40177c:	30a500ff 	andi	a1,a1,0xff
  401780:	308400ff 	andi	a0,a0,0xff
  401784:	afa6001c 	sw	a2,28(sp)
  401788:	afa70018 	sw	a3,24(sp)
  40178c:	0c100795 	jal	401e54 <set_cursor>
  401790:	02002025 	move	a0,s0
  401794:	0c1007bf 	jal	401efc <puts>
  401798:	8fa70018 	lw	a3,24(sp)
  40179c:	8fa6001c 	lw	a2,28(sp)
  4017a0:	ace00078 	sw	zero,120(a3)
  4017a4:	acc00074 	sw	zero,116(a2)
  4017a8:	1000fe1b 	b	401018 <main+0x300>
  4017ac:	3c051001 	lui	a1,0x1001
  4017b0:	8ca40070 	lw	a0,112(a1)
  4017b4:	00a03825 	move	a3,a1
  4017b8:	14440014 	bne	v0,a0,40180c <main+0xaf4>
  4017bc:	3c061001 	lui	a2,0x1001
  4017c0:	8e4800b0 	lw	t0,176(s2)
  4017c4:	8cc5006c 	lw	a1,108(a2)
  4017c8:	11050004 	beq	t0,a1,4017dc <main+0xac4>
  4017cc:	24a90001 	addiu	t1,a1,1
  4017d0:	11090002 	beq	t0,t1,4017dc <main+0xac4>
  4017d4:	24a9ffff 	addiu	t1,a1,-1
  4017d8:	1509000c 	bne	t0,t1,40180c <main+0xaf4>
  4017dc:	30a500ff 	andi	a1,a1,0xff
  4017e0:	308400ff 	andi	a0,a0,0xff
  4017e4:	afa6001c 	sw	a2,28(sp)
  4017e8:	afa70018 	sw	a3,24(sp)
  4017ec:	0c100795 	jal	401e54 <set_cursor>
  4017f0:	02002025 	move	a0,s0
  4017f4:	0c1007bf 	jal	401efc <puts>
  4017f8:	8fa70018 	lw	a3,24(sp)
  4017fc:	8fa6001c 	lw	a2,28(sp)
  401800:	ace00070 	sw	zero,112(a3)
  401804:	acc0006c 	sw	zero,108(a2)
  401808:	1000fe03 	b	401018 <main+0x300>
  40180c:	3c051001 	lui	a1,0x1001
  401810:	8ca40068 	lw	a0,104(a1)
  401814:	00a03825 	move	a3,a1
  401818:	14440014 	bne	v0,a0,40186c <main+0xb54>
  40181c:	3c061001 	lui	a2,0x1001
  401820:	8e4800b0 	lw	t0,176(s2)
  401824:	8cc50064 	lw	a1,100(a2)
  401828:	11050004 	beq	t0,a1,40183c <main+0xb24>
  40182c:	24a90001 	addiu	t1,a1,1
  401830:	11090002 	beq	t0,t1,40183c <main+0xb24>
  401834:	24a9ffff 	addiu	t1,a1,-1
  401838:	1509000c 	bne	t0,t1,40186c <main+0xb54>
  40183c:	30a500ff 	andi	a1,a1,0xff
  401840:	308400ff 	andi	a0,a0,0xff
  401844:	afa6001c 	sw	a2,28(sp)
  401848:	afa70018 	sw	a3,24(sp)
  40184c:	0c100795 	jal	401e54 <set_cursor>
  401850:	02002025 	move	a0,s0
  401854:	0c1007bf 	jal	401efc <puts>
  401858:	8fa70018 	lw	a3,24(sp)
  40185c:	8fa6001c 	lw	a2,28(sp)
  401860:	ace00068 	sw	zero,104(a3)
  401864:	acc00064 	sw	zero,100(a2)
  401868:	1000fdeb 	b	401018 <main+0x300>
  40186c:	3c051001 	lui	a1,0x1001
  401870:	8ca40060 	lw	a0,96(a1)
  401874:	00a03825 	move	a3,a1
  401878:	14440014 	bne	v0,a0,4018cc <main+0xbb4>
  40187c:	3c061001 	lui	a2,0x1001
  401880:	8e4800b0 	lw	t0,176(s2)
  401884:	8cc5005c 	lw	a1,92(a2)
  401888:	11050004 	beq	t0,a1,40189c <main+0xb84>
  40188c:	24a90001 	addiu	t1,a1,1
  401890:	11090002 	beq	t0,t1,40189c <main+0xb84>
  401894:	24a9ffff 	addiu	t1,a1,-1
  401898:	1509000c 	bne	t0,t1,4018cc <main+0xbb4>
  40189c:	30a500ff 	andi	a1,a1,0xff
  4018a0:	308400ff 	andi	a0,a0,0xff
  4018a4:	afa6001c 	sw	a2,28(sp)
  4018a8:	afa70018 	sw	a3,24(sp)
  4018ac:	0c100795 	jal	401e54 <set_cursor>
  4018b0:	02002025 	move	a0,s0
  4018b4:	0c1007bf 	jal	401efc <puts>
  4018b8:	8fa70018 	lw	a3,24(sp)
  4018bc:	8fa6001c 	lw	a2,28(sp)
  4018c0:	ace00060 	sw	zero,96(a3)
  4018c4:	acc0005c 	sw	zero,92(a2)
  4018c8:	1000fdd3 	b	401018 <main+0x300>
  4018cc:	24040003 	li	a0,3
  4018d0:	14440006 	bne	v0,a0,4018ec <main+0xbd4>
  4018d4:	924500b3 	lbu	a1,179(s2)
  4018d8:	afa30018 	sw	v1,24(sp)
  4018dc:	0c100795 	jal	401e54 <set_cursor>
  4018e0:	02002025 	move	a0,s0
  4018e4:	0c1007bf 	jal	401efc <puts>
  4018e8:	8fa30018 	lw	v1,24(sp)
  4018ec:	2463ffff 	addiu	v1,v1,-1
  4018f0:	1000fd9a 	b	400f5c <main+0x244>
  4018f4:	3c061001 	lui	a2,0x1001
  4018f8:	8cc30090 	lw	v1,144(a2)
  4018fc:	1483000f 	bne	a0,v1,40193c <main+0xc24>
  401900:	3c031001 	lui	v1,0x1001
  401904:	8c67008c 	lw	a3,140(v1)
  401908:	14a7000c 	bne	a1,a3,40193c <main+0xc24>
  40190c:	30a500ff 	andi	a1,a1,0xff
  401910:	308400ff 	andi	a0,a0,0xff
  401914:	afa3001c 	sw	v1,28(sp)
  401918:	afa60018 	sw	a2,24(sp)
  40191c:	0c100795 	jal	401e54 <set_cursor>
  401920:	02002025 	move	a0,s0
  401924:	0c1007bf 	jal	401efc <puts>
  401928:	8fa60018 	lw	a2,24(sp)
  40192c:	8fa3001c 	lw	v1,28(sp)
  401930:	acc00090 	sw	zero,144(a2)
  401934:	ac60008c 	sw	zero,140(v1)
  401938:	1000fdf3 	b	401108 <main+0x3f0>
  40193c:	3c061001 	lui	a2,0x1001
  401940:	8cc30088 	lw	v1,136(a2)
  401944:	1483000f 	bne	a0,v1,401984 <main+0xc6c>
  401948:	3c031001 	lui	v1,0x1001
  40194c:	8c670084 	lw	a3,132(v1)
  401950:	14a7000c 	bne	a1,a3,401984 <main+0xc6c>
  401954:	30a500ff 	andi	a1,a1,0xff
  401958:	308400ff 	andi	a0,a0,0xff
  40195c:	afa3001c 	sw	v1,28(sp)
  401960:	afa60018 	sw	a2,24(sp)
  401964:	0c100795 	jal	401e54 <set_cursor>
  401968:	02002025 	move	a0,s0
  40196c:	0c1007bf 	jal	401efc <puts>
  401970:	8fa60018 	lw	a2,24(sp)
  401974:	8fa3001c 	lw	v1,28(sp)
  401978:	acc00088 	sw	zero,136(a2)
  40197c:	ac600084 	sw	zero,132(v1)
  401980:	1000fde1 	b	401108 <main+0x3f0>
  401984:	3c061001 	lui	a2,0x1001
  401988:	8cc30080 	lw	v1,128(a2)
  40198c:	1483000f 	bne	a0,v1,4019cc <main+0xcb4>
  401990:	3c031001 	lui	v1,0x1001
  401994:	8c67007c 	lw	a3,124(v1)
  401998:	14a7000c 	bne	a1,a3,4019cc <main+0xcb4>
  40199c:	30a500ff 	andi	a1,a1,0xff
  4019a0:	308400ff 	andi	a0,a0,0xff
  4019a4:	afa3001c 	sw	v1,28(sp)
  4019a8:	afa60018 	sw	a2,24(sp)
  4019ac:	0c100795 	jal	401e54 <set_cursor>
  4019b0:	02002025 	move	a0,s0
  4019b4:	0c1007bf 	jal	401efc <puts>
  4019b8:	8fa60018 	lw	a2,24(sp)
  4019bc:	8fa3001c 	lw	v1,28(sp)
  4019c0:	acc00080 	sw	zero,128(a2)
  4019c4:	ac60007c 	sw	zero,124(v1)
  4019c8:	1000fdcf 	b	401108 <main+0x3f0>
  4019cc:	3c061001 	lui	a2,0x1001
  4019d0:	8cc30078 	lw	v1,120(a2)
  4019d4:	1483000f 	bne	a0,v1,401a14 <main+0xcfc>
  4019d8:	3c031001 	lui	v1,0x1001
  4019dc:	8c670074 	lw	a3,116(v1)
  4019e0:	14a7000c 	bne	a1,a3,401a14 <main+0xcfc>
  4019e4:	30a500ff 	andi	a1,a1,0xff
  4019e8:	308400ff 	andi	a0,a0,0xff
  4019ec:	afa3001c 	sw	v1,28(sp)
  4019f0:	afa60018 	sw	a2,24(sp)
  4019f4:	0c100795 	jal	401e54 <set_cursor>
  4019f8:	02002025 	move	a0,s0
  4019fc:	0c1007bf 	jal	401efc <puts>
  401a00:	8fa60018 	lw	a2,24(sp)
  401a04:	8fa3001c 	lw	v1,28(sp)
  401a08:	acc00078 	sw	zero,120(a2)
  401a0c:	ac600074 	sw	zero,116(v1)
  401a10:	1000fdbd 	b	401108 <main+0x3f0>
  401a14:	3c061001 	lui	a2,0x1001
  401a18:	8cc30070 	lw	v1,112(a2)
  401a1c:	1483000f 	bne	a0,v1,401a5c <main+0xd44>
  401a20:	3c031001 	lui	v1,0x1001
  401a24:	8c67006c 	lw	a3,108(v1)
  401a28:	14a7000c 	bne	a1,a3,401a5c <main+0xd44>
  401a2c:	30a500ff 	andi	a1,a1,0xff
  401a30:	308400ff 	andi	a0,a0,0xff
  401a34:	afa3001c 	sw	v1,28(sp)
  401a38:	afa60018 	sw	a2,24(sp)
  401a3c:	0c100795 	jal	401e54 <set_cursor>
  401a40:	02002025 	move	a0,s0
  401a44:	0c1007bf 	jal	401efc <puts>
  401a48:	8fa60018 	lw	a2,24(sp)
  401a4c:	8fa3001c 	lw	v1,28(sp)
  401a50:	acc00070 	sw	zero,112(a2)
  401a54:	ac60006c 	sw	zero,108(v1)
  401a58:	1000fdab 	b	401108 <main+0x3f0>
  401a5c:	3c061001 	lui	a2,0x1001
  401a60:	8cc30068 	lw	v1,104(a2)
  401a64:	1483000f 	bne	a0,v1,401aa4 <main+0xd8c>
  401a68:	3c031001 	lui	v1,0x1001
  401a6c:	8c670064 	lw	a3,100(v1)
  401a70:	14a7000c 	bne	a1,a3,401aa4 <main+0xd8c>
  401a74:	30a500ff 	andi	a1,a1,0xff
  401a78:	308400ff 	andi	a0,a0,0xff
  401a7c:	afa3001c 	sw	v1,28(sp)
  401a80:	afa60018 	sw	a2,24(sp)
  401a84:	0c100795 	jal	401e54 <set_cursor>
  401a88:	02002025 	move	a0,s0
  401a8c:	0c1007bf 	jal	401efc <puts>
  401a90:	8fa60018 	lw	a2,24(sp)
  401a94:	8fa3001c 	lw	v1,28(sp)
  401a98:	acc00068 	sw	zero,104(a2)
  401a9c:	ac600064 	sw	zero,100(v1)
  401aa0:	1000fd99 	b	401108 <main+0x3f0>
  401aa4:	3c061001 	lui	a2,0x1001
  401aa8:	8cc30060 	lw	v1,96(a2)
  401aac:	1483000f 	bne	a0,v1,401aec <main+0xdd4>
  401ab0:	3c031001 	lui	v1,0x1001
  401ab4:	8c67005c 	lw	a3,92(v1)
  401ab8:	14a7000c 	bne	a1,a3,401aec <main+0xdd4>
  401abc:	30a500ff 	andi	a1,a1,0xff
  401ac0:	308400ff 	andi	a0,a0,0xff
  401ac4:	afa3001c 	sw	v1,28(sp)
  401ac8:	afa60018 	sw	a2,24(sp)
  401acc:	0c100795 	jal	401e54 <set_cursor>
  401ad0:	02002025 	move	a0,s0
  401ad4:	0c1007bf 	jal	401efc <puts>
  401ad8:	8fa60018 	lw	a2,24(sp)
  401adc:	8fa3001c 	lw	v1,28(sp)
  401ae0:	acc00060 	sw	zero,96(a2)
  401ae4:	ac60005c 	sw	zero,92(v1)
  401ae8:	1000fd87 	b	401108 <main+0x3f0>
  401aec:	2403004d 	li	v1,77
  401af0:	14a30007 	bne	a1,v1,401b10 <main+0xdf8>
  401af4:	2405004d 	li	a1,77
  401af8:	308400ff 	andi	a0,a0,0xff
  401afc:	afa20018 	sw	v0,24(sp)
  401b00:	0c100795 	jal	401e54 <set_cursor>
  401b04:	02002025 	move	a0,s0
  401b08:	0c1007bf 	jal	401efc <puts>
  401b0c:	8fa20018 	lw	v0,24(sp)
  401b10:	24420001 	addiu	v0,v0,1
  401b14:	1000fd52 	b	401060 <main+0x348>
  401b18:	3c031001 	lui	v1,0x1001
  401b1c:	8c620090 	lw	v0,144(v1)
  401b20:	1482000f 	bne	a0,v0,401b60 <main+0xe48>
  401b24:	3c021001 	lui	v0,0x1001
  401b28:	8c46008c 	lw	a2,140(v0)
  401b2c:	14a6000c 	bne	a1,a2,401b60 <main+0xe48>
  401b30:	30a500ff 	andi	a1,a1,0xff
  401b34:	308400ff 	andi	a0,a0,0xff
  401b38:	afa2001c 	sw	v0,28(sp)
  401b3c:	afa30018 	sw	v1,24(sp)
  401b40:	0c100795 	jal	401e54 <set_cursor>
  401b44:	02002025 	move	a0,s0
  401b48:	0c1007bf 	jal	401efc <puts>
  401b4c:	8fa30018 	lw	v1,24(sp)
  401b50:	8fa2001c 	lw	v0,28(sp)
  401b54:	ac600090 	sw	zero,144(v1)
  401b58:	ac40008c 	sw	zero,140(v0)
  401b5c:	1000fda3 	b	4011ec <main+0x4d4>
  401b60:	3c031001 	lui	v1,0x1001
  401b64:	8c620088 	lw	v0,136(v1)
  401b68:	1482000f 	bne	a0,v0,401ba8 <main+0xe90>
  401b6c:	3c021001 	lui	v0,0x1001
  401b70:	8c460084 	lw	a2,132(v0)
  401b74:	14a6000c 	bne	a1,a2,401ba8 <main+0xe90>
  401b78:	30a500ff 	andi	a1,a1,0xff
  401b7c:	308400ff 	andi	a0,a0,0xff
  401b80:	afa2001c 	sw	v0,28(sp)
  401b84:	afa30018 	sw	v1,24(sp)
  401b88:	0c100795 	jal	401e54 <set_cursor>
  401b8c:	02002025 	move	a0,s0
  401b90:	0c1007bf 	jal	401efc <puts>
  401b94:	8fa30018 	lw	v1,24(sp)
  401b98:	8fa2001c 	lw	v0,28(sp)
  401b9c:	ac600088 	sw	zero,136(v1)
  401ba0:	ac400084 	sw	zero,132(v0)
  401ba4:	1000fd91 	b	4011ec <main+0x4d4>
  401ba8:	3c031001 	lui	v1,0x1001
  401bac:	8c620080 	lw	v0,128(v1)
  401bb0:	1482000f 	bne	a0,v0,401bf0 <main+0xed8>
  401bb4:	3c021001 	lui	v0,0x1001
  401bb8:	8c46007c 	lw	a2,124(v0)
  401bbc:	14a6000c 	bne	a1,a2,401bf0 <main+0xed8>
  401bc0:	30a500ff 	andi	a1,a1,0xff
  401bc4:	308400ff 	andi	a0,a0,0xff
  401bc8:	afa2001c 	sw	v0,28(sp)
  401bcc:	afa30018 	sw	v1,24(sp)
  401bd0:	0c100795 	jal	401e54 <set_cursor>
  401bd4:	02002025 	move	a0,s0
  401bd8:	0c1007bf 	jal	401efc <puts>
  401bdc:	8fa30018 	lw	v1,24(sp)
  401be0:	8fa2001c 	lw	v0,28(sp)
  401be4:	ac600080 	sw	zero,128(v1)
  401be8:	ac40007c 	sw	zero,124(v0)
  401bec:	1000fd7f 	b	4011ec <main+0x4d4>
  401bf0:	3c031001 	lui	v1,0x1001
  401bf4:	8c620078 	lw	v0,120(v1)
  401bf8:	1482000f 	bne	a0,v0,401c38 <main+0xf20>
  401bfc:	3c021001 	lui	v0,0x1001
  401c00:	8c460074 	lw	a2,116(v0)
  401c04:	14a6000c 	bne	a1,a2,401c38 <main+0xf20>
  401c08:	30a500ff 	andi	a1,a1,0xff
  401c0c:	308400ff 	andi	a0,a0,0xff
  401c10:	afa2001c 	sw	v0,28(sp)
  401c14:	afa30018 	sw	v1,24(sp)
  401c18:	0c100795 	jal	401e54 <set_cursor>
  401c1c:	02002025 	move	a0,s0
  401c20:	0c1007bf 	jal	401efc <puts>
  401c24:	8fa30018 	lw	v1,24(sp)
  401c28:	8fa2001c 	lw	v0,28(sp)
  401c2c:	ac600078 	sw	zero,120(v1)
  401c30:	ac400074 	sw	zero,116(v0)
  401c34:	1000fd6d 	b	4011ec <main+0x4d4>
  401c38:	3c031001 	lui	v1,0x1001
  401c3c:	8c620070 	lw	v0,112(v1)
  401c40:	1482000f 	bne	a0,v0,401c80 <main+0xf68>
  401c44:	3c021001 	lui	v0,0x1001
  401c48:	8c46006c 	lw	a2,108(v0)
  401c4c:	14a6000c 	bne	a1,a2,401c80 <main+0xf68>
  401c50:	30a500ff 	andi	a1,a1,0xff
  401c54:	308400ff 	andi	a0,a0,0xff
  401c58:	afa2001c 	sw	v0,28(sp)
  401c5c:	afa30018 	sw	v1,24(sp)
  401c60:	0c100795 	jal	401e54 <set_cursor>
  401c64:	02002025 	move	a0,s0
  401c68:	0c1007bf 	jal	401efc <puts>
  401c6c:	8fa30018 	lw	v1,24(sp)
  401c70:	8fa2001c 	lw	v0,28(sp)
  401c74:	ac600070 	sw	zero,112(v1)
  401c78:	ac40006c 	sw	zero,108(v0)
  401c7c:	1000fd5b 	b	4011ec <main+0x4d4>
  401c80:	3c031001 	lui	v1,0x1001
  401c84:	8c620068 	lw	v0,104(v1)
  401c88:	1482000f 	bne	a0,v0,401cc8 <main+0xfb0>
  401c8c:	3c021001 	lui	v0,0x1001
  401c90:	8c460064 	lw	a2,100(v0)
  401c94:	14a6000c 	bne	a1,a2,401cc8 <main+0xfb0>
  401c98:	30a500ff 	andi	a1,a1,0xff
  401c9c:	308400ff 	andi	a0,a0,0xff
  401ca0:	afa2001c 	sw	v0,28(sp)
  401ca4:	afa30018 	sw	v1,24(sp)
  401ca8:	0c100795 	jal	401e54 <set_cursor>
  401cac:	02002025 	move	a0,s0
  401cb0:	0c1007bf 	jal	401efc <puts>
  401cb4:	8fa30018 	lw	v1,24(sp)
  401cb8:	8fa2001c 	lw	v0,28(sp)
  401cbc:	ac600068 	sw	zero,104(v1)
  401cc0:	ac400064 	sw	zero,100(v0)
  401cc4:	1000fd49 	b	4011ec <main+0x4d4>
  401cc8:	3c031001 	lui	v1,0x1001
  401ccc:	8c620060 	lw	v0,96(v1)
  401cd0:	1482000f 	bne	a0,v0,401d10 <main+0xff8>
  401cd4:	3c021001 	lui	v0,0x1001
  401cd8:	8c46005c 	lw	a2,92(v0)
  401cdc:	14a6000c 	bne	a1,a2,401d10 <main+0xff8>
  401ce0:	30a500ff 	andi	a1,a1,0xff
  401ce4:	308400ff 	andi	a0,a0,0xff
  401ce8:	afa2001c 	sw	v0,28(sp)
  401cec:	afa30018 	sw	v1,24(sp)
  401cf0:	0c100795 	jal	401e54 <set_cursor>
  401cf4:	02002025 	move	a0,s0
  401cf8:	0c1007bf 	jal	401efc <puts>
  401cfc:	8fa30018 	lw	v1,24(sp)
  401d00:	8fa2001c 	lw	v0,28(sp)
  401d04:	ac600060 	sw	zero,96(v1)
  401d08:	ac40005c 	sw	zero,92(v0)
  401d0c:	1000fd37 	b	4011ec <main+0x4d4>
  401d10:	24020002 	li	v0,2
  401d14:	14a20005 	bne	a1,v0,401d2c <main+0x1014>
  401d18:	308400ff 	andi	a0,a0,0xff
  401d1c:	24050002 	li	a1,2
  401d20:	0c100795 	jal	401e54 <set_cursor>
  401d24:	02002025 	move	a0,s0
  401d28:	0c1007bf 	jal	401efc <puts>
  401d2c:	27deffff 	addiu	s8,s8,-1
  401d30:	1000fd07 	b	401150 <main+0x438>

00401d34 <delay_ms>:
  401d34:	3c08ffff 	lui	t0,0xffff
  401d38:	8d090008 	lw	t1,8(t0)
  401d3c:	00000000 	nop
  401d40:	01244820 	add	t1,t1,a0

00401d44 <.dm_loop>:
  401d44:	8d0a0008 	lw	t2,8(t0)
  401d48:	00000000 	nop
  401d4c:	0149582b 	sltu	t3,t2,t1
  401d50:	1560fffc 	bnez	t3,401d44 <.dm_loop>
  401d54:	00000000 	nop
  401d58:	03e00008 	jr	ra
  401d5c:	00000000 	nop

00401d60 <keypad_init>:
  401d60:	3c081001 	lui	t0,0x1001
  401d64:	ad0000a0 	sw	zero,160(t0)
  401d68:	03e00008 	jr	ra
  401d6c:	00000000 	nop

00401d70 <keypad_getkey>:
  401d70:	3c08ffff 	lui	t0,0xffff
  401d74:	81080004 	lb	t0,4(t0)
  401d78:	24090008 	li	t1,8
  401d7c:	240b0001 	li	t3,1
  401d80:	00005025 	move	t2,zero

00401d84 <.gk_loop>:
  401d84:	11490018 	beq	t2,t1,401de8 <.gk_end_loop>
  401d88:	00000000 	nop
  401d8c:	010b6024 	and	t4,t0,t3
  401d90:	000b5840 	sll	t3,t3,0x1
  401d94:	11800011 	beqz	t4,401ddc <.gk_inc_loop>
  401d98:	00000000 	nop
  401d9c:	3c081001 	lui	t0,0x1001
  401da0:	8d0800a0 	lw	t0,160(t0)
  401da4:	3c09ffff 	lui	t1,0xffff
  401da8:	8d290008 	lw	t1,8(t1)
  401dac:	00000000 	nop
  401db0:	0128582b 	sltu	t3,t1,t0
  401db4:	11600002 	beqz	t3,401dc0 <.set_key>
  401db8:	00000000 	nop
  401dbc:	00001025 	move	v0,zero

00401dc0 <.set_key>:
  401dc0:	252900c8 	addiu	t1,t1,200
  401dc4:	3c081001 	lui	t0,0x1001
  401dc8:	ad0900a0 	sw	t1,160(t0)
  401dcc:	01401025 	move	v0,t2
  401dd0:	24420001 	addiu	v0,v0,1
  401dd4:	03e00008 	jr	ra
  401dd8:	00000000 	nop

00401ddc <.gk_inc_loop>:
  401ddc:	254a0001 	addiu	t2,t2,1
  401de0:	08100761 	j	401d84 <.gk_loop>
  401de4:	00000000 	nop

00401de8 <.gk_end_loop>:
  401de8:	00001025 	move	v0,zero
  401dec:	03e00008 	jr	ra
  401df0:	00000000 	nop

00401df4 <divide>:
  401df4:	acc00000 	sw	zero,0(a2)
  401df8:	0085102b 	sltu	v0,a0,a1
  401dfc:	10400002 	beqz	v0,401e08 <divide+0x14>
  401e00:	ace40000 	sw	a0,0(a3)
  401e04:	03e00008 	jr	ra
  401e08:	8cc20000 	lw	v0,0(a2)
  401e0c:	00852023 	subu	a0,a0,a1
  401e10:	24420001 	addiu	v0,v0,1
  401e14:	acc20000 	sw	v0,0(a2)
  401e18:	1000fff7 	b	401df8 <divide+0x4>

00401e1c <set_color>:
  401e1c:	00052900 	sll	a1,a1,0x4
  401e20:	3084000f 	andi	a0,a0,0xf
  401e24:	00a42825 	or	a1,a1,a0
  401e28:	3c021001 	lui	v0,0x1001
  401e2c:	a04500ba 	sb	a1,186(v0)
  401e30:	03e00008 	jr	ra

00401e34 <get_color>:
  401e34:	3c031001 	lui	v1,0x1001
  401e38:	906200ba 	lbu	v0,186(v1)
  401e3c:	3042000f 	andi	v0,v0,0xf
  401e40:	a0820000 	sb	v0,0(a0)
  401e44:	906200ba 	lbu	v0,186(v1)
  401e48:	00021102 	srl	v0,v0,0x4
  401e4c:	a0a20000 	sb	v0,0(a1)
  401e50:	03e00008 	jr	ra

00401e54 <set_cursor>:
  401e54:	2c820028 	sltiu	v0,a0,40
  401e58:	10400006 	beqz	v0,401e74 <set_cursor+0x20>
  401e5c:	2ca20050 	sltiu	v0,a1,80
  401e60:	10400004 	beqz	v0,401e74 <set_cursor+0x20>
  401e64:	3c021001 	lui	v0,0x1001
  401e68:	a04400b9 	sb	a0,185(v0)
  401e6c:	3c021001 	lui	v0,0x1001
  401e70:	a04500b8 	sb	a1,184(v0)
  401e74:	03e00008 	jr	ra

00401e78 <put_char>:
  401e78:	3c071001 	lui	a3,0x1001
  401e7c:	2403000a 	li	v1,10
  401e80:	90e200b9 	lbu	v0,185(a3)
  401e84:	3c061001 	lui	a2,0x1001
  401e88:	14830006 	bne	a0,v1,401ea4 <put_char+0x2c>
  401e8c:	2c430027 	sltiu	v1,v0,39
  401e90:	10600002 	beqz	v1,401e9c <put_char+0x24>
  401e94:	24420001 	addiu	v0,v0,1
  401e98:	a0e200b9 	sb	v0,185(a3)
  401e9c:	a0c000b8 	sb	zero,184(a2)
  401ea0:	03e00008 	jr	ra
  401ea4:	3c031001 	lui	v1,0x1001
  401ea8:	906300ba 	lbu	v1,186(v1)
  401eac:	90c500b8 	lbu	a1,184(a2)
  401eb0:	00031a00 	sll	v1,v1,0x8
  401eb4:	00642025 	or	a0,v1,a0
  401eb8:	00021880 	sll	v1,v0,0x2
  401ebc:	00621821 	addu	v1,v1,v0
  401ec0:	00031900 	sll	v1,v1,0x4
  401ec4:	00651821 	addu	v1,v1,a1
  401ec8:	00031840 	sll	v1,v1,0x1
  401ecc:	3408b800 	li	t0,0xb800
  401ed0:	01031821 	addu	v1,t0,v1
  401ed4:	a4640000 	sh	a0,0(v1)
  401ed8:	2ca3004f 	sltiu	v1,a1,79
  401edc:	10600003 	beqz	v1,401eec <put_char+0x74>
  401ee0:	24a50001 	addiu	a1,a1,1
  401ee4:	a0c500b8 	sb	a1,184(a2)
  401ee8:	03e00008 	jr	ra
  401eec:	24420001 	addiu	v0,v0,1
  401ef0:	a0c000b8 	sb	zero,184(a2)
  401ef4:	a0e200b9 	sb	v0,185(a3)
  401ef8:	03e00008 	jr	ra

00401efc <puts>:
  401efc:	00804825 	move	t1,a0
  401f00:	80840000 	lb	a0,0(a0)
  401f04:	14800001 	bnez	a0,401f0c <puts+0x10>
  401f08:	03e00008 	jr	ra
  401f0c:	27bdffe8 	addiu	sp,sp,-24
  401f10:	afbf0014 	sw	ra,20(sp)
  401f14:	308400ff 	andi	a0,a0,0xff
  401f18:	25290001 	addiu	t1,t1,1
  401f1c:	0c10079e 	jal	401e78 <put_char>
  401f20:	81240000 	lb	a0,0(t1)
  401f24:	1480fffb 	bnez	a0,401f14 <puts+0x18>
  401f28:	8fbf0014 	lw	ra,20(sp)
  401f2c:	27bd0018 	addiu	sp,sp,24
  401f30:	03e00008 	jr	ra

00401f34 <clear_screen>:
  401f34:	3c021001 	lui	v0,0x1001
  401f38:	904200ba 	lbu	v0,186(v0)
  401f3c:	3403b800 	li	v1,0xb800
  401f40:	00021200 	sll	v0,v0,0x8
  401f44:	34420020 	ori	v0,v0,0x20
  401f48:	3404cac0 	li	a0,0xcac0
  401f4c:	a4620000 	sh	v0,0(v1)
  401f50:	24630002 	addiu	v1,v1,2
  401f54:	1464fffd 	bne	v1,a0,401f4c <clear_screen+0x18>
  401f58:	3c021001 	lui	v0,0x1001
  401f5c:	a04000b9 	sb	zero,185(v0)
  401f60:	3c021001 	lui	v0,0x1001
  401f64:	a04000b8 	sb	zero,184(v0)
  401f68:	03e00008 	jr	ra

Desensamblado de la sección .data:

10010000 <ry7-0x5c>:
10010000:	524f424f 	0x524f424f
10010004:	54524f4e 	0x54524f4e
10010008:	21000000 	addi	zero,t0,0
1001000c:	57415645 	0x57415645
10010010:	20310000 	addi	s1,at,0
10010014:	09000000 	j	14000000 <chr_attr+0x3feff46>
10010018:	16000000 	bnez	s0,1001001c <clear_screen+0xfc0e0e8>
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
1001006c:	0000003e 	0x3e

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

Desensamblado de la sección .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	41000000 	bc0f	4 <_gp+0x4>
   4:	0f676e75 	jal	d9db9d4 <clear_screen+0xd5d9aa0>
   8:	00010000 	sll	zero,at,0x0
   c:	00070401 	0x70401

Desensamblado de la sección .bss:

100100a4 <x>:
100100a4:	00000000 	nop

100100a8 <last>:
100100a8:	00000000 	nop

100100ac <dx>:
100100ac:	00000000 	nop

100100b0 <dy>:
100100b0:	00000000 	nop

100100b4 <y>:
100100b4:	00000000 	nop

100100b8 <cursor_col>:
	...

100100b9 <cursor_row>:
	...

100100ba <chr_attr>:
	...
