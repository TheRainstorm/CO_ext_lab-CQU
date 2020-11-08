
obj/shell1/main.elf:     file format elf32-tradlittlemips
obj/shell1/main.elf


Disassembly of section .text:

9fc00000 <_ftext>:
_ftext():
9fc00000:	3c0a0040 	lui	t2,0x40
9fc00004:	408a6000 	mtc0	t2,c0_sr
9fc00008:	40806800 	mtc0	zero,c0_cause
9fc0000c:	3c1d9fc1 	lui	sp,0x9fc1
9fc00010:	27bd176c 	addiu	sp,sp,5996
9fc00014:	3c1c9fc1 	lui	gp,0x9fc1
9fc00018:	279ca390 	addiu	gp,gp,-23664
9fc0001c:	3c199fc0 	lui	t9,0x9fc0
9fc00020:	2739038c 	addiu	t9,t9,908
9fc00024:	03200008 	jr	t9
9fc00028:	00000000 	nop
	...

9fc00100 <test_finish>:
test_finish():
9fc00100:	25080001 	addiu	t0,t0,1
9fc00104:	240900ff 	li	t1,255
9fc00108:	3c0abfaf 	lui	t2,0xbfaf
9fc0010c:	354afff0 	ori	t2,t2,0xfff0
9fc00110:	a1490000 	sb	t1,0(t2)
9fc00114:	3c08bfaf 	lui	t0,0xbfaf
9fc00118:	3508f020 	ori	t0,t0,0xf020
9fc0011c:	8d080000 	lw	t0,0(t0)
9fc00120:	31080080 	andi	t0,t0,0x80
9fc00124:	11000006 	beqz	t0,9fc00140 <test_finish+0x40>
9fc00128:	00000000 	nop
9fc0012c:	3c08bfaf 	lui	t0,0xbfaf
9fc00130:	35088000 	ori	t0,t0,0x8000
9fc00134:	8d090000 	lw	t1,0(t0)
9fc00138:	10000004 	b	9fc0014c <test_finish+0x4c>
9fc0013c:	00000000 	nop
9fc00140:	3c08bfaf 	lui	t0,0xbfaf
9fc00144:	35088004 	ori	t0,t0,0x8004
9fc00148:	8d090000 	lw	t1,0(t0)
9fc0014c:	3c08bfaf 	lui	t0,0xbfaf
9fc00150:	3508f010 	ori	t0,t0,0xf010
9fc00154:	ad090000 	sw	t1,0(t0)
9fc00158:	1000ffee 	b	9fc00114 <test_finish+0x14>
9fc0015c:	00000000 	nop
9fc00160:	3c088000 	lui	t0,0x8000
9fc00164:	25290001 	addiu	t1,t1,1
9fc00168:	01005025 	move	t2,t0
9fc0016c:	01ae5821 	addu	t3,t5,t6
9fc00170:	8d0c0000 	lw	t4,0(t0)
	...
9fc00380:	25080001 	addiu	t0,t0,1
9fc00384:	1000fffe 	b	9fc00380 <test_finish+0x280>
9fc00388:	00000000 	nop

9fc0038c <run_test>:
run_test():
9fc0038c:	0411000c 	bal	9fc003c0 <shell1>
9fc00390:	00000000 	nop
9fc00394:	10000001 	b	9fc0039c <go_finish>
9fc00398:	00000000 	nop

9fc0039c <go_finish>:
go_finish():
9fc0039c:	3c099fc0 	lui	t1,0x9fc0
9fc003a0:	25290100 	addiu	t1,t1,256
9fc003a4:	3c0a2000 	lui	t2,0x2000
9fc003a8:	012ac825 	or	t9,t1,t2
9fc003ac:	03200008 	jr	t9
9fc003b0:	00000000 	nop
	...

9fc003c0 <shell1>:
shell1():
9fc003c0:	27bdffd8 	addiu	sp,sp,-40
9fc003c4:	3c089fc0 	lui	t0,0x9fc0
9fc003c8:	afb10018 	sw	s1,24(sp)
9fc003cc:	25041590 	addiu	a0,t0,5520
9fc003d0:	3c11bfaf 	lui	s1,0xbfaf
9fc003d4:	afbf0024 	sw	ra,36(sp)
9fc003d8:	afb30020 	sw	s3,32(sp)
9fc003dc:	afb2001c 	sw	s2,28(sp)
9fc003e0:	0ff004c2 	jal	9fc01308 <puts>
9fc003e4:	afb00014 	sw	s0,20(sp)
9fc003e8:	3627e000 	ori	a3,s1,0xe000
9fc003ec:	ace00000 	sw	zero,0(a3)
9fc003f0:	40804800 	mtc0	zero,$9
9fc003f4:	3c19bfb0 	lui	t9,0xbfb0
9fc003f8:	af208ffc 	sw	zero,-28676(t9)
9fc003fc:	af208ffc 	sw	zero,-28676(t9)
9fc00400:	af20fff8 	sw	zero,-8(t9)
9fc00404:	af208ffc 	sw	zero,-28676(t9)
9fc00408:	af208ffc 	sw	zero,-28676(t9)
9fc0040c:	8f208ffc 	lw	zero,-28676(t9)
9fc00410:	8f39fff8 	lw	t9,-8(t9)
9fc00414:	0ff00518 	jal	9fc01460 <get_count_my>
9fc00418:	00000000 	nop
9fc0041c:	0ff00514 	jal	9fc01450 <get_count>
9fc00420:	00409821 	move	s3,v0
9fc00424:	0ff002ec 	jal	9fc00bb0 <matrix_mult>
9fc00428:	00409021 	move	s2,v0
9fc0042c:	0ff00518 	jal	9fc01460 <get_count_my>
9fc00430:	00000000 	nop
9fc00434:	0ff00514 	jal	9fc01450 <get_count>
9fc00438:	00408021 	move	s0,v0
9fc0043c:	02138023 	subu	s0,s0,s3
9fc00440:	00521023 	subu	v0,v0,s2
9fc00444:	36268004 	ori	a2,s1,0x8004
9fc00448:	3623f010 	ori	v1,s1,0xf010
9fc0044c:	3c059fc0 	lui	a1,0x9fc0
9fc00450:	36318000 	ori	s1,s1,0x8000
9fc00454:	ac700000 	sw	s0,0(v1)
9fc00458:	24a415a4 	addiu	a0,a1,5540
9fc0045c:	ae300000 	sw	s0,0(s1)
9fc00460:	00402821 	move	a1,v0
9fc00464:	0ff003fc 	jal	9fc00ff0 <printf>
9fc00468:	acc20000 	sw	v0,0(a2)
9fc0046c:	3c049fc0 	lui	a0,0x9fc0
9fc00470:	02002821 	move	a1,s0
9fc00474:	8fbf0024 	lw	ra,36(sp)
9fc00478:	8fb30020 	lw	s3,32(sp)
9fc0047c:	8fb2001c 	lw	s2,28(sp)
9fc00480:	8fb10018 	lw	s1,24(sp)
9fc00484:	8fb00014 	lw	s0,20(sp)
9fc00488:	248415c4 	addiu	a0,a0,5572
9fc0048c:	0bf003fc 	j	9fc00ff0 <printf>
9fc00490:	27bd0028 	addiu	sp,sp,40
	...

9fc004a0 <do_block>:
do_block():
9fc004a0:	00a40018 	mult	a1,a0
9fc004a4:	24ec0003 	addiu	t4,a3,3
9fc004a8:	27bdffd0 	addiu	sp,sp,-48
9fc004ac:	afbe002c 	sw	s8,44(sp)
9fc004b0:	24fe0001 	addiu	s8,a3,1
9fc004b4:	afb60024 	sw	s6,36(sp)
9fc004b8:	afb50020 	sw	s5,32(sp)
9fc004bc:	24f60002 	addiu	s6,a3,2
9fc004c0:	8fae0040 	lw	t6,64(sp)
9fc004c4:	8faf0044 	lw	t7,68(sp)
9fc004c8:	afb70028 	sw	s7,40(sp)
9fc004cc:	afb4001c 	sw	s4,28(sp)
9fc004d0:	afb20014 	sw	s2,20(sp)
9fc004d4:	00002812 	mflo	a1
9fc004d8:	8fb20048 	lw	s2,72(sp)
9fc004dc:	24b50002 	addiu	s5,a1,2
9fc004e0:	02a71021 	addu	v0,s5,a3
9fc004e4:	01840018 	mult	t4,a0
9fc004e8:	00e55821 	addu	t3,a3,a1
9fc004ec:	24a80003 	addiu	t0,a1,3
9fc004f0:	24ad0001 	addiu	t5,a1,1
9fc004f4:	00a64821 	addu	t1,a1,a2
9fc004f8:	01a71821 	addu	v1,t5,a3
9fc004fc:	00036080 	sll	t4,v1,0x2
9fc00500:	0107c021 	addu	t8,t0,a3
9fc00504:	00026880 	sll	t5,v0,0x2
9fc00508:	0004a080 	sll	s4,a0,0x2
9fc0050c:	00185080 	sll	t2,t8,0x2
9fc00510:	afb30018 	sw	s3,24(sp)
9fc00514:	afb10010 	sw	s1,16(sp)
9fc00518:	0000c812 	mflo	t9
9fc0051c:	00099880 	sll	s3,t1,0x2
9fc00520:	0326b821 	addu	s7,t9,a2
9fc00524:	00178880 	sll	s1,s7,0x2
9fc00528:	03c40018 	mult	s8,a0
9fc0052c:	afb0000c 	sw	s0,12(sp)
9fc00530:	000b8080 	sll	s0,t3,0x2
9fc00534:	0253c021 	addu	t8,s2,s3
9fc00538:	01f1f021 	addu	s8,t7,s1
9fc0053c:	01d09021 	addu	s2,t6,s0
9fc00540:	afa00000 	sw	zero,0(sp)
9fc00544:	01ca9821 	addu	s3,t6,t2
9fc00548:	01cc8821 	addu	s1,t6,t4
9fc0054c:	01cd8021 	addu	s0,t6,t5
9fc00550:	0000a812 	mflo	s5
9fc00554:	02a64021 	addu	t0,s5,a2
9fc00558:	00084880 	sll	t1,t0,0x2
9fc0055c:	02c40018 	mult	s6,a0
9fc00560:	01e9b821 	addu	s7,t7,t1
9fc00564:	00002812 	mflo	a1
	...
9fc00570:	00e40018 	mult	a3,a0
9fc00574:	00a62021 	addu	a0,a1,a2
9fc00578:	00045880 	sll	t3,a0,0x2
9fc0057c:	01ebb021 	addu	s6,t7,t3
9fc00580:	00001812 	mflo	v1
9fc00584:	00661021 	addu	v0,v1,a2
9fc00588:	00023880 	sll	a3,v0,0x2
9fc0058c:	01e7a821 	addu	s5,t7,a3
9fc00590:	8eab0000 	lw	t3,0(s5)
9fc00594:	8e4d0000 	lw	t5,0(s2)
9fc00598:	8eec0000 	lw	t4,0(s7)
9fc0059c:	016d0018 	mult	t3,t5
9fc005a0:	8e280000 	lw	t0,0(s1)
9fc005a4:	8ec50000 	lw	a1,0(s6)
9fc005a8:	8e070000 	lw	a3,0(s0)
9fc005ac:	8fc30000 	lw	v1,0(s8)
9fc005b0:	8e690000 	lw	t1,0(s3)
9fc005b4:	8f060000 	lw	a2,0(t8)
9fc005b8:	8f0a0004 	lw	t2,4(t8)
9fc005bc:	270b0008 	addiu	t3,t8,8
9fc005c0:	240f0008 	li	t7,8
9fc005c4:	26ae0008 	addiu	t6,s5,8
9fc005c8:	26f90008 	addiu	t9,s7,8
9fc005cc:	26cd0008 	addiu	t5,s6,8
9fc005d0:	00001012 	mflo	v0
	...
9fc005dc:	01880018 	mult	t4,t0
9fc005e0:	27cc0008 	addiu	t4,s8,8
9fc005e4:	00002012 	mflo	a0
9fc005e8:	00444021 	addu	t0,v0,a0
9fc005ec:	01062021 	addu	a0,t0,a2
9fc005f0:	00a70018 	mult	a1,a3
9fc005f4:	00002812 	mflo	a1
9fc005f8:	00851021 	addu	v0,a0,a1
9fc005fc:	00000000 	nop
9fc00600:	00690018 	mult	v1,t1
9fc00604:	00003012 	mflo	a2
9fc00608:	00c21821 	addu	v1,a2,v0
9fc0060c:	af030000 	sw	v1,0(t8)
9fc00610:	8ea90004 	lw	t1,4(s5)
9fc00614:	8e470000 	lw	a3,0(s2)
9fc00618:	8ee40004 	lw	a0,4(s7)
9fc0061c:	01270018 	mult	t1,a3
9fc00620:	8e280000 	lw	t0,0(s1)
9fc00624:	8ec50004 	lw	a1,4(s6)
9fc00628:	8e060000 	lw	a2,0(s0)
9fc0062c:	8fc90004 	lw	t1,4(s8)
9fc00630:	8e670000 	lw	a3,0(s3)
9fc00634:	00001012 	mflo	v0
	...
9fc00640:	00880018 	mult	a0,t0
9fc00644:	00004012 	mflo	t0
9fc00648:	00481821 	addu	v1,v0,t0
9fc0064c:	006a2021 	addu	a0,v1,t2
9fc00650:	00a60018 	mult	a1,a2
9fc00654:	00002812 	mflo	a1
9fc00658:	00851021 	addu	v0,a0,a1
9fc0065c:	00000000 	nop
9fc00660:	01270018 	mult	t1,a3
9fc00664:	00003012 	mflo	a2
9fc00668:	00c24021 	addu	t0,a2,v0
9fc0066c:	af080004 	sw	t0,4(t8)
9fc00670:	8dca0000 	lw	t2,0(t6)
9fc00674:	8e430000 	lw	v1,0(s2)
9fc00678:	8f250000 	lw	a1,0(t9)
9fc0067c:	01430018 	mult	t2,v1
9fc00680:	8e290000 	lw	t1,0(s1)
9fc00684:	8da40000 	lw	a0,0(t5)
9fc00688:	8e070000 	lw	a3,0(s0)
9fc0068c:	8d830000 	lw	v1,0(t4)
9fc00690:	8e680000 	lw	t0,0(s3)
9fc00694:	8d660000 	lw	a2,0(t3)
9fc00698:	8d6a0004 	lw	t2,4(t3)
9fc0069c:	25ef0008 	addiu	t7,t7,8
9fc006a0:	00001012 	mflo	v0
	...
9fc006ac:	00a90018 	mult	a1,t1
9fc006b0:	00002812 	mflo	a1
9fc006b4:	00454821 	addu	t1,v0,a1
9fc006b8:	00000000 	nop
9fc006bc:	00870018 	mult	a0,a3
9fc006c0:	01263821 	addu	a3,t1,a2
9fc006c4:	00002012 	mflo	a0
9fc006c8:	00e41021 	addu	v0,a3,a0
9fc006cc:	00000000 	nop
9fc006d0:	00680018 	mult	v1,t0
9fc006d4:	00004812 	mflo	t1
9fc006d8:	01222821 	addu	a1,t1,v0
9fc006dc:	ad650000 	sw	a1,0(t3)
9fc006e0:	8dc70004 	lw	a3,4(t6)
9fc006e4:	8e430000 	lw	v1,0(s2)
9fc006e8:	8f240004 	lw	a0,4(t9)
9fc006ec:	00e30018 	mult	a3,v1
9fc006f0:	8e280000 	lw	t0,0(s1)
9fc006f4:	8da90004 	lw	t1,4(t5)
9fc006f8:	8e060000 	lw	a2,0(s0)
9fc006fc:	8d830004 	lw	v1,4(t4)
9fc00700:	8e670000 	lw	a3,0(s3)
9fc00704:	25ce0008 	addiu	t6,t6,8
9fc00708:	27390008 	addiu	t9,t9,8
9fc0070c:	25ad0008 	addiu	t5,t5,8
9fc00710:	258c0008 	addiu	t4,t4,8
9fc00714:	00001012 	mflo	v0
	...
9fc00720:	00880018 	mult	a0,t0
9fc00724:	00002812 	mflo	a1
9fc00728:	00454021 	addu	t0,v0,a1
9fc0072c:	00000000 	nop
9fc00730:	01260018 	mult	t1,a2
9fc00734:	010a4821 	addu	t1,t0,t2
9fc00738:	24060010 	li	a2,16
9fc0073c:	00002012 	mflo	a0
9fc00740:	01241021 	addu	v0,t1,a0
9fc00744:	00000000 	nop
9fc00748:	00670018 	mult	v1,a3
9fc0074c:	00005012 	mflo	t2
9fc00750:	01423821 	addu	a3,t2,v0
9fc00754:	ad670004 	sw	a3,4(t3)
9fc00758:	15e6ffc5 	bne	t7,a2,9fc00670 <do_block+0x1d0>
9fc0075c:	256b0008 	addiu	t3,t3,8
9fc00760:	8fb90000 	lw	t9,0(sp)
9fc00764:	240f0004 	li	t7,4
9fc00768:	272e0001 	addiu	t6,t9,1
9fc0076c:	afae0000 	sw	t6,0(sp)
9fc00770:	0314c021 	addu	t8,t8,s4
9fc00774:	02549021 	addu	s2,s2,s4
9fc00778:	02348821 	addu	s1,s1,s4
9fc0077c:	02148021 	addu	s0,s0,s4
9fc00780:	15cfff83 	bne	t6,t7,9fc00590 <do_block+0xf0>
9fc00784:	02749821 	addu	s3,s3,s4
9fc00788:	8fbe002c 	lw	s8,44(sp)
9fc0078c:	8fb70028 	lw	s7,40(sp)
9fc00790:	8fb60024 	lw	s6,36(sp)
9fc00794:	8fb50020 	lw	s5,32(sp)
9fc00798:	8fb4001c 	lw	s4,28(sp)
9fc0079c:	8fb30018 	lw	s3,24(sp)
9fc007a0:	8fb20014 	lw	s2,20(sp)
9fc007a4:	8fb10010 	lw	s1,16(sp)
9fc007a8:	8fb0000c 	lw	s0,12(sp)
9fc007ac:	03e00008 	jr	ra
9fc007b0:	27bd0030 	addiu	sp,sp,48
	...

9fc007c0 <dgemm>:
dgemm():
9fc007c0:	27bdff90 	addiu	sp,sp,-112
9fc007c4:	afbe006c 	sw	s8,108(sp)
9fc007c8:	afb70068 	sw	s7,104(sp)
9fc007cc:	afb60064 	sw	s6,100(sp)
9fc007d0:	afb50060 	sw	s5,96(sp)
9fc007d4:	afb4005c 	sw	s4,92(sp)
9fc007d8:	afb30058 	sw	s3,88(sp)
9fc007dc:	afb20054 	sw	s2,84(sp)
9fc007e0:	afb10050 	sw	s1,80(sp)
9fc007e4:	afb0004c 	sw	s0,76(sp)
9fc007e8:	afa40070 	sw	a0,112(sp)
9fc007ec:	188000e3 	blez	a0,9fc00b7c <dgemm+0x3bc>
9fc007f0:	afa50074 	sw	a1,116(sp)
9fc007f4:	00045100 	sll	t2,a0,0x4
9fc007f8:	afaa0038 	sw	t2,56(sp)
9fc007fc:	0004a080 	sll	s4,a0,0x2
9fc00800:	000448c0 	sll	t1,a0,0x3
9fc00804:	8fa40038 	lw	a0,56(sp)
9fc00808:	00c91021 	addu	v0,a2,t1
9fc0080c:	00944023 	subu	t0,a0,s4
9fc00810:	00c81821 	addu	v1,a2,t0
9fc00814:	00d42821 	addu	a1,a2,s4
9fc00818:	afa60000 	sw	a2,0(sp)
9fc0081c:	afa2000c 	sw	v0,12(sp)
9fc00820:	afa30010 	sw	v1,16(sp)
9fc00824:	afa70028 	sw	a3,40(sp)
9fc00828:	afa50008 	sw	a1,8(sp)
9fc0082c:	afa00030 	sw	zero,48(sp)
9fc00830:	8fa50074 	lw	a1,116(sp)
9fc00834:	8fa70028 	lw	a3,40(sp)
9fc00838:	afa50018 	sw	a1,24(sp)
9fc0083c:	afa70014 	sw	a3,20(sp)
9fc00840:	afa00034 	sw	zero,52(sp)
9fc00844:	8fb20018 	lw	s2,24(sp)
9fc00848:	8fb00018 	lw	s0,24(sp)
9fc0084c:	8faf0018 	lw	t7,24(sp)
9fc00850:	8fa80018 	lw	t0,24(sp)
9fc00854:	2651000c 	addiu	s1,s2,12
9fc00858:	260c0008 	addiu	t4,s0,8
9fc0085c:	25ee0004 	addiu	t6,t7,4
9fc00860:	8fb70010 	lw	s7,16(sp)
9fc00864:	8fbe000c 	lw	s8,12(sp)
9fc00868:	8faa0008 	lw	t2,8(sp)
9fc0086c:	8fb60000 	lw	s6,0(sp)
9fc00870:	afb10020 	sw	s1,32(sp)
9fc00874:	afac0024 	sw	t4,36(sp)
9fc00878:	afae001c 	sw	t6,28(sp)
9fc0087c:	afa80004 	sw	t0,4(sp)
9fc00880:	afa0002c 	sw	zero,44(sp)
9fc00884:	8fac0014 	lw	t4,20(sp)
9fc00888:	8fb20004 	lw	s2,4(sp)
9fc0088c:	8fb1001c 	lw	s1,28(sp)
9fc00890:	8fb00024 	lw	s0,36(sp)
9fc00894:	8fb90020 	lw	t9,32(sp)
9fc00898:	0000a821 	move	s5,zero
9fc0089c:	8e4e0000 	lw	t6,0(s2)
9fc008a0:	8ecf0000 	lw	t7,0(s6)
9fc008a4:	8d4d0000 	lw	t5,0(t2)
9fc008a8:	01cf0018 	mult	t6,t7
9fc008ac:	8e280000 	lw	t0,0(s1)
9fc008b0:	8fc50000 	lw	a1,0(s8)
9fc008b4:	8e070000 	lw	a3,0(s0)
9fc008b8:	8ee30000 	lw	v1,0(s7)
9fc008bc:	8f290000 	lw	t1,0(t9)
9fc008c0:	8d860000 	lw	a2,0(t4)
9fc008c4:	258b0008 	addiu	t3,t4,8
9fc008c8:	24130008 	li	s3,8
9fc008cc:	26d80008 	addiu	t8,s6,8
9fc008d0:	254f0008 	addiu	t7,t2,8
9fc008d4:	27ce0008 	addiu	t6,s8,8
9fc008d8:	00001012 	mflo	v0
	...
9fc008e4:	01a80018 	mult	t5,t0
9fc008e8:	26ed0008 	addiu	t5,s7,8
9fc008ec:	00002012 	mflo	a0
	...
9fc008f8:	00a70018 	mult	a1,a3
9fc008fc:	00443821 	addu	a3,v0,a0
9fc00900:	00e64021 	addu	t0,a3,a2
9fc00904:	00002812 	mflo	a1
9fc00908:	01051021 	addu	v0,t0,a1
9fc0090c:	00000000 	nop
9fc00910:	00690018 	mult	v1,t1
9fc00914:	00004812 	mflo	t1
9fc00918:	01222021 	addu	a0,t1,v0
9fc0091c:	ad840000 	sw	a0,0(t4)
9fc00920:	8e470000 	lw	a3,0(s2)
9fc00924:	8ec30004 	lw	v1,4(s6)
9fc00928:	8d460004 	lw	a2,4(t2)
9fc0092c:	00e30018 	mult	a3,v1
9fc00930:	8e280000 	lw	t0,0(s1)
9fc00934:	8fc90004 	lw	t1,4(s8)
9fc00938:	8e050000 	lw	a1,0(s0)
9fc0093c:	8f270000 	lw	a3,0(t9)
9fc00940:	8ee30004 	lw	v1,4(s7)
9fc00944:	00001012 	mflo	v0
	...
9fc00950:	00c80018 	mult	a2,t0
9fc00954:	8d860004 	lw	a2,4(t4)
9fc00958:	00002012 	mflo	a0
9fc0095c:	00444021 	addu	t0,v0,a0
9fc00960:	00000000 	nop
9fc00964:	01250018 	mult	t1,a1
9fc00968:	01064821 	addu	t1,t0,a2
9fc0096c:	00002812 	mflo	a1
9fc00970:	01251021 	addu	v0,t1,a1
9fc00974:	00000000 	nop
9fc00978:	00670018 	mult	v1,a3
9fc0097c:	00003812 	mflo	a3
9fc00980:	00e22021 	addu	a0,a3,v0
9fc00984:	ad840004 	sw	a0,4(t4)
9fc00988:	8f060000 	lw	a2,0(t8)
9fc0098c:	8e480000 	lw	t0,0(s2)
9fc00990:	8de50000 	lw	a1,0(t7)
9fc00994:	01060018 	mult	t0,a2
9fc00998:	8e290000 	lw	t1,0(s1)
9fc0099c:	8dc40000 	lw	a0,0(t6)
9fc009a0:	8e070000 	lw	a3,0(s0)
9fc009a4:	8f280000 	lw	t0,0(t9)
9fc009a8:	8d660000 	lw	a2,0(t3)
9fc009ac:	26730008 	addiu	s3,s3,8
9fc009b0:	00001812 	mflo	v1
9fc009b4:	afa30040 	sw	v1,64(sp)
9fc009b8:	8da30000 	lw	v1,0(t5)
9fc009bc:	00a90018 	mult	a1,t1
9fc009c0:	8fa20040 	lw	v0,64(sp)
9fc009c4:	00002812 	mflo	a1
9fc009c8:	00454821 	addu	t1,v0,a1
9fc009cc:	00000000 	nop
9fc009d0:	00870018 	mult	a0,a3
9fc009d4:	01263821 	addu	a3,t1,a2
9fc009d8:	00002012 	mflo	a0
9fc009dc:	00e41021 	addu	v0,a3,a0
9fc009e0:	00000000 	nop
9fc009e4:	00680018 	mult	v1,t0
9fc009e8:	00004812 	mflo	t1
9fc009ec:	01222821 	addu	a1,t1,v0
9fc009f0:	ad650000 	sw	a1,0(t3)
9fc009f4:	8f070004 	lw	a3,4(t8)
9fc009f8:	8e430000 	lw	v1,0(s2)
9fc009fc:	8de40004 	lw	a0,4(t7)
9fc00a00:	00670018 	mult	v1,a3
9fc00a04:	8e280000 	lw	t0,0(s1)
9fc00a08:	8dc90004 	lw	t1,4(t6)
9fc00a0c:	8e060000 	lw	a2,0(s0)
9fc00a10:	8da30004 	lw	v1,4(t5)
9fc00a14:	8f270000 	lw	a3,0(t9)
9fc00a18:	27180008 	addiu	t8,t8,8
9fc00a1c:	25ef0008 	addiu	t7,t7,8
9fc00a20:	25ce0008 	addiu	t6,t6,8
9fc00a24:	25ad0008 	addiu	t5,t5,8
9fc00a28:	00001012 	mflo	v0
	...
9fc00a34:	00880018 	mult	a0,t0
9fc00a38:	8d640004 	lw	a0,4(t3)
9fc00a3c:	00002812 	mflo	a1
9fc00a40:	00451021 	addu	v0,v0,a1
9fc00a44:	00444021 	addu	t0,v0,a0
9fc00a48:	01260018 	mult	t1,a2
9fc00a4c:	24060010 	li	a2,16
9fc00a50:	00004812 	mflo	t1
	...
9fc00a5c:	00670018 	mult	v1,a3
9fc00a60:	01091821 	addu	v1,t0,t1
9fc00a64:	00002812 	mflo	a1
9fc00a68:	00a33821 	addu	a3,a1,v1
9fc00a6c:	ad670004 	sw	a3,4(t3)
9fc00a70:	1666ffc5 	bne	s3,a2,9fc00988 <dgemm+0x1c8>
9fc00a74:	256b0008 	addiu	t3,t3,8
9fc00a78:	26b50001 	addiu	s5,s5,1
9fc00a7c:	240b0004 	li	t3,4
9fc00a80:	01946021 	addu	t4,t4,s4
9fc00a84:	02549021 	addu	s2,s2,s4
9fc00a88:	02348821 	addu	s1,s1,s4
9fc00a8c:	02148021 	addu	s0,s0,s4
9fc00a90:	16abff82 	bne	s5,t3,9fc0089c <dgemm+0xdc>
9fc00a94:	0334c821 	addu	t9,t9,s4
9fc00a98:	8fa6002c 	lw	a2,44(sp)
9fc00a9c:	8fab0020 	lw	t3,32(sp)
9fc00aa0:	8fb80024 	lw	t8,36(sp)
9fc00aa4:	8fb3001c 	lw	s3,28(sp)
9fc00aa8:	8fb10004 	lw	s1,4(sp)
9fc00aac:	8fa30070 	lw	v1,112(sp)
9fc00ab0:	8fa40038 	lw	a0,56(sp)
9fc00ab4:	24c90004 	addiu	t1,a2,4
9fc00ab8:	25790010 	addiu	t9,t3,16
9fc00abc:	27150010 	addiu	s5,t8,16
9fc00ac0:	26720010 	addiu	s2,s3,16
9fc00ac4:	26300010 	addiu	s0,s1,16
9fc00ac8:	0123602a 	slt	t4,t1,v1
9fc00acc:	afa9002c 	sw	t1,44(sp)
9fc00ad0:	02e4b821 	addu	s7,s7,a0
9fc00ad4:	03c4f021 	addu	s8,s8,a0
9fc00ad8:	01445021 	addu	t2,t2,a0
9fc00adc:	02c4b021 	addu	s6,s6,a0
9fc00ae0:	afb90020 	sw	t9,32(sp)
9fc00ae4:	afb50024 	sw	s5,36(sp)
9fc00ae8:	afb2001c 	sw	s2,28(sp)
9fc00aec:	1580ff65 	bnez	t4,9fc00884 <dgemm+0xc4>
9fc00af0:	afb00004 	sw	s0,4(sp)
9fc00af4:	8fad0034 	lw	t5,52(sp)
9fc00af8:	00805021 	move	t2,a0
9fc00afc:	8fbe0018 	lw	s8,24(sp)
9fc00b00:	8fa40014 	lw	a0,20(sp)
9fc00b04:	8fa50070 	lw	a1,112(sp)
9fc00b08:	25a70004 	addiu	a3,t5,4
9fc00b0c:	008a1021 	addu	v0,a0,t2
9fc00b10:	03cab821 	addu	s7,s8,t2
9fc00b14:	00e5b02a 	slt	s6,a3,a1
9fc00b18:	afa70034 	sw	a3,52(sp)
9fc00b1c:	afa20014 	sw	v0,20(sp)
9fc00b20:	16c0ff48 	bnez	s6,9fc00844 <dgemm+0x84>
9fc00b24:	afb70018 	sw	s7,24(sp)
9fc00b28:	8fa20030 	lw	v0,48(sp)
9fc00b2c:	8fbe0000 	lw	s8,0(sp)
9fc00b30:	8fb60008 	lw	s6,8(sp)
9fc00b34:	8fa3000c 	lw	v1,12(sp)
9fc00b38:	8fab0010 	lw	t3,16(sp)
9fc00b3c:	8fb80028 	lw	t8,40(sp)
9fc00b40:	8fa40070 	lw	a0,112(sp)
9fc00b44:	244a0004 	addiu	t2,v0,4
9fc00b48:	27d70010 	addiu	s7,s8,16
9fc00b4c:	26c60010 	addiu	a2,s6,16
9fc00b50:	24690010 	addiu	t1,v1,16
9fc00b54:	25790010 	addiu	t9,t3,16
9fc00b58:	27150010 	addiu	s5,t8,16
9fc00b5c:	0144982a 	slt	s3,t2,a0
9fc00b60:	afaa0030 	sw	t2,48(sp)
9fc00b64:	afb70000 	sw	s7,0(sp)
9fc00b68:	afa60008 	sw	a2,8(sp)
9fc00b6c:	afa9000c 	sw	t1,12(sp)
9fc00b70:	afb90010 	sw	t9,16(sp)
9fc00b74:	1660ff2e 	bnez	s3,9fc00830 <dgemm+0x70>
9fc00b78:	afb50028 	sw	s5,40(sp)
9fc00b7c:	8fbe006c 	lw	s8,108(sp)
9fc00b80:	8fb70068 	lw	s7,104(sp)
9fc00b84:	8fb60064 	lw	s6,100(sp)
9fc00b88:	8fb50060 	lw	s5,96(sp)
9fc00b8c:	8fb4005c 	lw	s4,92(sp)
9fc00b90:	8fb30058 	lw	s3,88(sp)
9fc00b94:	8fb20054 	lw	s2,84(sp)
9fc00b98:	8fb10050 	lw	s1,80(sp)
9fc00b9c:	8fb0004c 	lw	s0,76(sp)
9fc00ba0:	03e00008 	jr	ra
9fc00ba4:	27bd0070 	addiu	sp,sp,112
	...

9fc00bb0 <matrix_mult>:
matrix_mult():
9fc00bb0:	27bdff98 	addiu	sp,sp,-104
9fc00bb4:	afbf0064 	sw	ra,100(sp)
9fc00bb8:	afbe0060 	sw	s8,96(sp)
9fc00bbc:	afb7005c 	sw	s7,92(sp)
9fc00bc0:	afb60058 	sw	s6,88(sp)
9fc00bc4:	afb50054 	sw	s5,84(sp)
9fc00bc8:	afb40050 	sw	s4,80(sp)
9fc00bcc:	afb3004c 	sw	s3,76(sp)
9fc00bd0:	afb20048 	sw	s2,72(sp)
9fc00bd4:	afb10044 	sw	s1,68(sp)
9fc00bd8:	afb00040 	sw	s0,64(sp)
9fc00bdc:	3c19bfb0 	lui	t9,0xbfb0
9fc00be0:	af208ffc 	sw	zero,-28676(t9)
9fc00be4:	af208ffc 	sw	zero,-28676(t9)
9fc00be8:	af39fff8 	sw	t9,-8(t9)
9fc00bec:	af208ffc 	sw	zero,-28676(t9)
9fc00bf0:	af208ffc 	sw	zero,-28676(t9)
9fc00bf4:	8f208ffc 	lw	zero,-28676(t9)
9fc00bf8:	8f39fff8 	lw	t9,-8(t9)
9fc00bfc:	3c059fc0 	lui	a1,0x9fc0
9fc00c00:	3c039fc0 	lui	v1,0x9fc0
9fc00c04:	24a41f90 	addiu	a0,a1,8080
9fc00c08:	246223a0 	addiu	v0,v1,9120
9fc00c0c:	afa40020 	sw	a0,32(sp)
9fc00c10:	afa20010 	sw	v0,16(sp)
9fc00c14:	3c199fc0 	lui	t9,0x9fc0
9fc00c18:	27381790 	addiu	t8,t9,6032
9fc00c1c:	8fb20020 	lw	s2,32(sp)
9fc00c20:	8fb00020 	lw	s0,32(sp)
9fc00c24:	8faf0020 	lw	t7,32(sp)
9fc00c28:	8fa80020 	lw	t0,32(sp)
9fc00c2c:	afb80018 	sw	t8,24(sp)
9fc00c30:	8fb40010 	lw	s4,16(sp)
9fc00c34:	2651fcc0 	addiu	s1,s2,-832
9fc00c38:	260cfc80 	addiu	t4,s0,-896
9fc00c3c:	25eefc40 	addiu	t6,t7,-960
9fc00c40:	250dfc00 	addiu	t5,t0,-1024
9fc00c44:	8fa20018 	lw	v0,24(sp)
9fc00c48:	afb40014 	sw	s4,20(sp)
9fc00c4c:	afb10030 	sw	s1,48(sp)
9fc00c50:	afac002c 	sw	t4,44(sp)
9fc00c54:	afae0038 	sw	t6,56(sp)
9fc00c58:	afad0034 	sw	t5,52(sp)
9fc00c5c:	8fa90018 	lw	t1,24(sp)
9fc00c60:	8faa0018 	lw	t2,24(sp)
9fc00c64:	2446000c 	addiu	a2,v0,12
9fc00c68:	25230008 	addiu	v1,t1,8
9fc00c6c:	254b0004 	addiu	t3,t2,4
9fc00c70:	8fb50030 	lw	s5,48(sp)
9fc00c74:	8fb6002c 	lw	s6,44(sp)
9fc00c78:	8fb70038 	lw	s7,56(sp)
9fc00c7c:	8fb30034 	lw	s3,52(sp)
9fc00c80:	8fbe0018 	lw	s8,24(sp)
9fc00c84:	afa60024 	sw	a2,36(sp)
9fc00c88:	afa30028 	sw	v1,40(sp)
9fc00c8c:	afab001c 	sw	t3,28(sp)
9fc00c90:	8fac0014 	lw	t4,20(sp)
9fc00c94:	8fb0001c 	lw	s0,28(sp)
9fc00c98:	8fbf0028 	lw	ra,40(sp)
9fc00c9c:	8fb90024 	lw	t9,36(sp)
9fc00ca0:	03c08821 	move	s1,s8
9fc00ca4:	0000a021 	move	s4,zero
9fc00ca8:	8e6e0000 	lw	t6,0(s3)
9fc00cac:	8e2f0000 	lw	t7,0(s1)
9fc00cb0:	8eed0000 	lw	t5,0(s7)
9fc00cb4:	01cf0018 	mult	t6,t7
9fc00cb8:	8e080000 	lw	t0,0(s0)
9fc00cbc:	8ec50000 	lw	a1,0(s6)
9fc00cc0:	8fe70000 	lw	a3,0(ra)
9fc00cc4:	8ea30000 	lw	v1,0(s5)
9fc00cc8:	8f290000 	lw	t1,0(t9)
9fc00ccc:	8d860000 	lw	a2,0(t4)
9fc00cd0:	8d8a0004 	lw	t2,4(t4)
9fc00cd4:	258b0008 	addiu	t3,t4,8
9fc00cd8:	24120008 	li	s2,8
9fc00cdc:	26780008 	addiu	t8,s3,8
9fc00ce0:	26ef0008 	addiu	t7,s7,8
9fc00ce4:	26ce0008 	addiu	t6,s6,8
9fc00ce8:	00001012 	mflo	v0
	...
9fc00cf4:	01a80018 	mult	t5,t0
9fc00cf8:	26ad0008 	addiu	t5,s5,8
9fc00cfc:	00002012 	mflo	a0
9fc00d00:	00444021 	addu	t0,v0,a0
9fc00d04:	01062021 	addu	a0,t0,a2
9fc00d08:	00a70018 	mult	a1,a3
9fc00d0c:	00002812 	mflo	a1
9fc00d10:	00851021 	addu	v0,a0,a1
9fc00d14:	00000000 	nop
9fc00d18:	00690018 	mult	v1,t1
9fc00d1c:	00003012 	mflo	a2
9fc00d20:	00c21821 	addu	v1,a2,v0
9fc00d24:	ad830000 	sw	v1,0(t4)
9fc00d28:	8e690004 	lw	t1,4(s3)
9fc00d2c:	8e270000 	lw	a3,0(s1)
9fc00d30:	8ee40004 	lw	a0,4(s7)
9fc00d34:	01270018 	mult	t1,a3
9fc00d38:	8e080000 	lw	t0,0(s0)
9fc00d3c:	8ec50004 	lw	a1,4(s6)
9fc00d40:	8fe60000 	lw	a2,0(ra)
9fc00d44:	8ea90004 	lw	t1,4(s5)
9fc00d48:	8f270000 	lw	a3,0(t9)
9fc00d4c:	00001012 	mflo	v0
	...
9fc00d58:	00880018 	mult	a0,t0
9fc00d5c:	00004012 	mflo	t0
9fc00d60:	00481821 	addu	v1,v0,t0
9fc00d64:	006a2021 	addu	a0,v1,t2
9fc00d68:	00a60018 	mult	a1,a2
9fc00d6c:	00002812 	mflo	a1
9fc00d70:	00851021 	addu	v0,a0,a1
9fc00d74:	00000000 	nop
9fc00d78:	01270018 	mult	t1,a3
9fc00d7c:	00003012 	mflo	a2
9fc00d80:	00c24021 	addu	t0,a2,v0
9fc00d84:	ad880004 	sw	t0,4(t4)
9fc00d88:	8f0a0000 	lw	t2,0(t8)
9fc00d8c:	8e230000 	lw	v1,0(s1)
9fc00d90:	8de50000 	lw	a1,0(t7)
9fc00d94:	01430018 	mult	t2,v1
9fc00d98:	8e090000 	lw	t1,0(s0)
9fc00d9c:	8dc40000 	lw	a0,0(t6)
9fc00da0:	8fe70000 	lw	a3,0(ra)
9fc00da4:	8da30000 	lw	v1,0(t5)
9fc00da8:	8f280000 	lw	t0,0(t9)
9fc00dac:	8d660000 	lw	a2,0(t3)
9fc00db0:	8d6a0004 	lw	t2,4(t3)
9fc00db4:	26520008 	addiu	s2,s2,8
9fc00db8:	00001012 	mflo	v0
	...
9fc00dc4:	00a90018 	mult	a1,t1
9fc00dc8:	00002812 	mflo	a1
9fc00dcc:	00454821 	addu	t1,v0,a1
9fc00dd0:	00000000 	nop
9fc00dd4:	00870018 	mult	a0,a3
9fc00dd8:	01263821 	addu	a3,t1,a2
9fc00ddc:	00002012 	mflo	a0
9fc00de0:	00e41021 	addu	v0,a3,a0
9fc00de4:	00000000 	nop
9fc00de8:	00680018 	mult	v1,t0
9fc00dec:	00002812 	mflo	a1
9fc00df0:	00a24821 	addu	t1,a1,v0
9fc00df4:	ad690000 	sw	t1,0(t3)
9fc00df8:	8f070004 	lw	a3,4(t8)
9fc00dfc:	8e230000 	lw	v1,0(s1)
9fc00e00:	8de60004 	lw	a2,4(t7)
9fc00e04:	00e30018 	mult	a3,v1
9fc00e08:	8e080000 	lw	t0,0(s0)
9fc00e0c:	8dc20004 	lw	v0,4(t6)
9fc00e10:	8fe40000 	lw	a0,0(ra)
9fc00e14:	8da30004 	lw	v1,4(t5)
9fc00e18:	8f270000 	lw	a3,0(t9)
9fc00e1c:	27180008 	addiu	t8,t8,8
9fc00e20:	25ef0008 	addiu	t7,t7,8
9fc00e24:	25ce0008 	addiu	t6,t6,8
9fc00e28:	25ad0008 	addiu	t5,t5,8
9fc00e2c:	00004812 	mflo	t1
	...
9fc00e38:	00c80018 	mult	a2,t0
9fc00e3c:	00002812 	mflo	a1
9fc00e40:	01253021 	addu	a2,t1,a1
9fc00e44:	00000000 	nop
9fc00e48:	00440018 	mult	v0,a0
9fc00e4c:	00ca1021 	addu	v0,a2,t2
9fc00e50:	24060010 	li	a2,16
9fc00e54:	00002012 	mflo	a0
9fc00e58:	00444821 	addu	t1,v0,a0
9fc00e5c:	00000000 	nop
9fc00e60:	00670018 	mult	v1,a3
9fc00e64:	00004012 	mflo	t0
9fc00e68:	01093821 	addu	a3,t0,t1
9fc00e6c:	ad670004 	sw	a3,4(t3)
9fc00e70:	1646ffc5 	bne	s2,a2,9fc00d88 <matrix_mult+0x1d8>
9fc00e74:	256b0008 	addiu	t3,t3,8
9fc00e78:	26940040 	addiu	s4,s4,64
9fc00e7c:	240b0100 	li	t3,256
9fc00e80:	258c0040 	addiu	t4,t4,64
9fc00e84:	26310040 	addiu	s1,s1,64
9fc00e88:	26100040 	addiu	s0,s0,64
9fc00e8c:	27ff0040 	addiu	ra,ra,64
9fc00e90:	168bff85 	bne	s4,t3,9fc00ca8 <matrix_mult+0xf8>
9fc00e94:	27390040 	addiu	t9,t9,64
9fc00e98:	8fb90024 	lw	t9,36(sp)
9fc00e9c:	8fb40028 	lw	s4,40(sp)
9fc00ea0:	8fb1001c 	lw	s1,28(sp)
9fc00ea4:	8fac0020 	lw	t4,32(sp)
9fc00ea8:	27380010 	addiu	t8,t9,16
9fc00eac:	26920010 	addiu	s2,s4,16
9fc00eb0:	26300010 	addiu	s0,s1,16
9fc00eb4:	26730100 	addiu	s3,s3,256
9fc00eb8:	26b50100 	addiu	s5,s5,256
9fc00ebc:	26d60100 	addiu	s6,s6,256
9fc00ec0:	26f70100 	addiu	s7,s7,256
9fc00ec4:	afb80024 	sw	t8,36(sp)
9fc00ec8:	afb20028 	sw	s2,40(sp)
9fc00ecc:	afb0001c 	sw	s0,28(sp)
9fc00ed0:	166cff6f 	bne	s3,t4,9fc00c90 <matrix_mult+0xe0>
9fc00ed4:	27de0010 	addiu	s8,s8,16
9fc00ed8:	8fbf0018 	lw	ra,24(sp)
9fc00edc:	8fbe0014 	lw	s8,20(sp)
9fc00ee0:	3c169fc0 	lui	s6,0x9fc0
9fc00ee4:	27e20100 	addiu	v0,ra,256
9fc00ee8:	27d70100 	addiu	s7,s8,256
9fc00eec:	26d51b90 	addiu	s5,s6,7056
9fc00ef0:	afa20018 	sw	v0,24(sp)
9fc00ef4:	1455ff59 	bne	v0,s5,9fc00c5c <matrix_mult+0xac>
9fc00ef8:	afb70014 	sw	s7,20(sp)
9fc00efc:	8fa70010 	lw	a3,16(sp)
9fc00f00:	3c049fc0 	lui	a0,0x9fc0
9fc00f04:	26730010 	addiu	s3,s3,16
9fc00f08:	24e50010 	addiu	a1,a3,16
9fc00f0c:	24821fd0 	addiu	v0,a0,8144
9fc00f10:	afb30020 	sw	s3,32(sp)
9fc00f14:	1662ff3f 	bne	s3,v0,9fc00c14 <matrix_mult+0x64>
9fc00f18:	afa50010 	sw	a1,16(sp)
9fc00f1c:	3c19bfb0 	lui	t9,0xbfb0
9fc00f20:	af208ffc 	sw	zero,-28676(t9)
9fc00f24:	af208ffc 	sw	zero,-28676(t9)
9fc00f28:	af20fff8 	sw	zero,-8(t9)
9fc00f2c:	af208ffc 	sw	zero,-28676(t9)
9fc00f30:	af208ffc 	sw	zero,-28676(t9)
9fc00f34:	8f208ffc 	lw	zero,-28676(t9)
9fc00f38:	8f39fff8 	lw	t9,-8(t9)
9fc00f3c:	3c159fc0 	lui	s5,0x9fc0
9fc00f40:	26a81f90 	addiu	t0,s5,8080
9fc00f44:	00003821 	move	a3,zero
9fc00f48:	24090010 	li	t1,16
9fc00f4c:	240a0100 	li	t2,256
9fc00f50:	3c039fc0 	lui	v1,0x9fc0
9fc00f54:	0007f880 	sll	ra,a3,0x2
9fc00f58:	246b23a0 	addiu	t3,v1,9120
9fc00f5c:	011f3021 	addu	a2,t0,ra
9fc00f60:	017f2821 	addu	a1,t3,ra
9fc00f64:	0bf003de 	j	9fc00f78 <matrix_mult+0x3c8>
9fc00f68:	00002021 	move	a0,zero
9fc00f6c:	00000000 	nop
9fc00f70:	10890017 	beq	a0,t1,9fc00fd0 <matrix_mult+0x420>
9fc00f74:	00000000 	nop
9fc00f78:	8cb70000 	lw	s7,0(a1)
9fc00f7c:	8cd60000 	lw	s6,0(a2)
9fc00f80:	24840001 	addiu	a0,a0,1
9fc00f84:	24a50004 	addiu	a1,a1,4
9fc00f88:	12f6fff9 	beq	s7,s6,9fc00f70 <matrix_mult+0x3c0>
9fc00f8c:	24c60004 	addiu	a2,a2,4
9fc00f90:	3c1e9fc0 	lui	s8,0x9fc0
9fc00f94:	0ff004c2 	jal	9fc01308 <puts>
9fc00f98:	27c415e4 	addiu	a0,s8,5604
9fc00f9c:	2402ffff 	li	v0,-1
9fc00fa0:	8fbf0064 	lw	ra,100(sp)
9fc00fa4:	8fbe0060 	lw	s8,96(sp)
9fc00fa8:	8fb7005c 	lw	s7,92(sp)
9fc00fac:	8fb60058 	lw	s6,88(sp)
9fc00fb0:	8fb50054 	lw	s5,84(sp)
9fc00fb4:	8fb40050 	lw	s4,80(sp)
9fc00fb8:	8fb3004c 	lw	s3,76(sp)
9fc00fbc:	8fb20048 	lw	s2,72(sp)
9fc00fc0:	8fb10044 	lw	s1,68(sp)
9fc00fc4:	8fb00040 	lw	s0,64(sp)
9fc00fc8:	03e00008 	jr	ra
9fc00fcc:	27bd0068 	addiu	sp,sp,104
9fc00fd0:	24e70010 	addiu	a3,a3,16
9fc00fd4:	14eaffdf 	bne	a3,t2,9fc00f54 <matrix_mult+0x3a4>
9fc00fd8:	3c039fc0 	lui	v1,0x9fc0
9fc00fdc:	3c0a9fc0 	lui	t2,0x9fc0
9fc00fe0:	0ff004c2 	jal	9fc01308 <puts>
9fc00fe4:	25441600 	addiu	a0,t2,5632
9fc00fe8:	0bf003e8 	j	9fc00fa0 <matrix_mult+0x3f0>
9fc00fec:	00001021 	move	v0,zero

9fc00ff0 <printf>:
printf():
/home/rain/loongson/cache_lab/lib/printf.c:2
9fc00ff0:	27bdffc8 	addiu	sp,sp,-56
9fc00ff4:	afb30024 	sw	s3,36(sp)
9fc00ff8:	afbf0034 	sw	ra,52(sp)
9fc00ffc:	afb60030 	sw	s6,48(sp)
9fc01000:	afb5002c 	sw	s5,44(sp)
9fc01004:	afb40028 	sw	s4,40(sp)
9fc01008:	afb20020 	sw	s2,32(sp)
9fc0100c:	afb1001c 	sw	s1,28(sp)
9fc01010:	afb00018 	sw	s0,24(sp)
/home/rain/loongson/cache_lab/lib/printf.c:10
9fc01014:	80900000 	lb	s0,0(a0)
/home/rain/loongson/cache_lab/lib/printf.c:2
9fc01018:	00809821 	move	s3,a0
/home/rain/loongson/cache_lab/lib/printf.c:8
9fc0101c:	27a4003c 	addiu	a0,sp,60
/home/rain/loongson/cache_lab/lib/printf.c:2
9fc01020:	afa5003c 	sw	a1,60(sp)
9fc01024:	afa60040 	sw	a2,64(sp)
9fc01028:	afa70044 	sw	a3,68(sp)
/home/rain/loongson/cache_lab/lib/printf.c:10
9fc0102c:	12000013 	beqz	s0,9fc0107c <printf+0x8c>
9fc01030:	afa40010 	sw	a0,16(sp)
/home/rain/loongson/cache_lab/lib/printf.c:17
9fc01034:	3c029fc0 	lui	v0,0x9fc0
/home/rain/loongson/cache_lab/lib/printf.c:9
9fc01038:	00809021 	move	s2,a0
/home/rain/loongson/cache_lab/lib/printf.c:17
9fc0103c:	24561610 	addiu	s6,v0,5648
/home/rain/loongson/cache_lab/lib/printf.c:9
9fc01040:	00008821 	move	s1,zero
/home/rain/loongson/cache_lab/lib/printf.c:13
9fc01044:	24140025 	li	s4,37
/home/rain/loongson/cache_lab/lib/printf.c:79
9fc01048:	2415000a 	li	s5,10
/home/rain/loongson/cache_lab/lib/printf.c:13
9fc0104c:	12140016 	beq	s0,s4,9fc010a8 <printf+0xb8>
9fc01050:	02711021 	addu	v0,s3,s1
/home/rain/loongson/cache_lab/lib/printf.c:79
9fc01054:	1215002f 	beq	s0,s5,9fc01114 <printf+0x124>
9fc01058:	00000000 	nop
/home/rain/loongson/cache_lab/lib/printf.c:80
9fc0105c:	0ff00495 	jal	9fc01254 <putchar>
9fc01060:	02002021 	move	a0,s0
/home/rain/loongson/cache_lab/lib/printf.c:10
9fc01064:	26310001 	addiu	s1,s1,1
9fc01068:	02711021 	addu	v0,s3,s1
9fc0106c:	80500000 	lb	s0,0(v0)
9fc01070:	00000000 	nop
9fc01074:	1600fff5 	bnez	s0,9fc0104c <printf+0x5c>
9fc01078:	00000000 	nop
/home/rain/loongson/cache_lab/lib/printf.c:84
9fc0107c:	8fbf0034 	lw	ra,52(sp)
9fc01080:	00001021 	move	v0,zero
9fc01084:	8fb60030 	lw	s6,48(sp)
9fc01088:	8fb5002c 	lw	s5,44(sp)
9fc0108c:	8fb40028 	lw	s4,40(sp)
9fc01090:	8fb30024 	lw	s3,36(sp)
9fc01094:	8fb20020 	lw	s2,32(sp)
9fc01098:	8fb1001c 	lw	s1,28(sp)
9fc0109c:	8fb00018 	lw	s0,24(sp)
9fc010a0:	03e00008 	jr	ra
9fc010a4:	27bd0038 	addiu	sp,sp,56
/home/rain/loongson/cache_lab/lib/printf.c:13
9fc010a8:	80440001 	lb	a0,1(v0)
9fc010ac:	24050001 	li	a1,1
/home/rain/loongson/cache_lab/lib/printf.c:17
9fc010b0:	2482ffdb 	addiu	v0,a0,-37
9fc010b4:	304200ff 	andi	v0,v0,0xff
9fc010b8:	2c430054 	sltiu	v1,v0,84
9fc010bc:	14600005 	bnez	v1,9fc010d4 <printf+0xe4>
9fc010c0:	00021080 	sll	v0,v0,0x2
/home/rain/loongson/cache_lab/lib/printf.c:73
9fc010c4:	0ff00495 	jal	9fc01254 <putchar>
9fc010c8:	24040025 	li	a0,37
/home/rain/loongson/cache_lab/lib/printf.c:10
9fc010cc:	0bf0041a 	j	9fc01068 <printf+0x78>
9fc010d0:	26310001 	addiu	s1,s1,1
/home/rain/loongson/cache_lab/lib/printf.c:17
9fc010d4:	02c21021 	addu	v0,s6,v0
9fc010d8:	8c430000 	lw	v1,0(v0)
9fc010dc:	00000000 	nop
9fc010e0:	00600008 	jr	v1
9fc010e4:	00000000 	nop
/home/rain/loongson/cache_lab/lib/printf.c:65
9fc010e8:	26310001 	addiu	s1,s1,1
9fc010ec:	02711021 	addu	v0,s3,s1
9fc010f0:	80440001 	lb	a0,1(v0)
9fc010f4:	00000000 	nop
/home/rain/loongson/cache_lab/lib/printf.c:67
9fc010f8:	2482ffcf 	addiu	v0,a0,-49
9fc010fc:	304200ff 	andi	v0,v0,0xff
9fc01100:	2c420009 	sltiu	v0,v0,9
9fc01104:	1440003f 	bnez	v0,9fc01204 <printf+0x214>
9fc01108:	00002821 	move	a1,zero
/home/rain/loongson/cache_lab/lib/printf.c:17
9fc0110c:	0bf0042d 	j	9fc010b4 <printf+0xc4>
9fc01110:	2482ffdb 	addiu	v0,a0,-37
/home/rain/loongson/cache_lab/lib/printf.c:79
9fc01114:	0ff00495 	jal	9fc01254 <putchar>
9fc01118:	2404000d 	li	a0,13
9fc0111c:	0bf00417 	j	9fc0105c <printf+0x6c>
9fc01120:	00000000 	nop
/home/rain/loongson/cache_lab/lib/printf.c:30
9fc01124:	8e440000 	lw	a0,0(s2)
9fc01128:	2406000a 	li	a2,10
9fc0112c:	0ff004d0 	jal	9fc01340 <printbase>
9fc01130:	00003821 	move	a3,zero
/home/rain/loongson/cache_lab/lib/printf.c:31
9fc01134:	26520004 	addiu	s2,s2,4
/home/rain/loongson/cache_lab/lib/printf.c:32
9fc01138:	0bf00419 	j	9fc01064 <printf+0x74>
9fc0113c:	26310001 	addiu	s1,s1,1
/home/rain/loongson/cache_lab/lib/printf.c:20
9fc01140:	8e440000 	lw	a0,0(s2)
9fc01144:	0ff004a0 	jal	9fc01280 <putstring>
9fc01148:	26310001 	addiu	s1,s1,1
/home/rain/loongson/cache_lab/lib/printf.c:21
9fc0114c:	0bf00419 	j	9fc01064 <printf+0x74>
9fc01150:	26520004 	addiu	s2,s2,4
/home/rain/loongson/cache_lab/lib/printf.c:56
9fc01154:	8e440000 	lw	a0,0(s2)
9fc01158:	24060010 	li	a2,16
9fc0115c:	0ff004d0 	jal	9fc01340 <printbase>
9fc01160:	00003821 	move	a3,zero
/home/rain/loongson/cache_lab/lib/printf.c:57
9fc01164:	26520004 	addiu	s2,s2,4
/home/rain/loongson/cache_lab/lib/printf.c:58
9fc01168:	0bf00419 	j	9fc01064 <printf+0x74>
9fc0116c:	26310001 	addiu	s1,s1,1
/home/rain/loongson/cache_lab/lib/printf.c:45
9fc01170:	8e440000 	lw	a0,0(s2)
9fc01174:	24060008 	li	a2,8
9fc01178:	0ff004d0 	jal	9fc01340 <printbase>
9fc0117c:	00003821 	move	a3,zero
/home/rain/loongson/cache_lab/lib/printf.c:46
9fc01180:	26520004 	addiu	s2,s2,4
/home/rain/loongson/cache_lab/lib/printf.c:47
9fc01184:	0bf00419 	j	9fc01064 <printf+0x74>
9fc01188:	26310001 	addiu	s1,s1,1
/home/rain/loongson/cache_lab/lib/printf.c:40
9fc0118c:	8e440000 	lw	a0,0(s2)
9fc01190:	2406000a 	li	a2,10
9fc01194:	0ff004d0 	jal	9fc01340 <printbase>
9fc01198:	00003821 	move	a3,zero
/home/rain/loongson/cache_lab/lib/printf.c:41
9fc0119c:	26520004 	addiu	s2,s2,4
/home/rain/loongson/cache_lab/lib/printf.c:42
9fc011a0:	0bf00419 	j	9fc01064 <printf+0x74>
9fc011a4:	26310002 	addiu	s1,s1,2
/home/rain/loongson/cache_lab/lib/printf.c:35
9fc011a8:	8e440000 	lw	a0,0(s2)
9fc011ac:	2406000a 	li	a2,10
9fc011b0:	0ff004d0 	jal	9fc01340 <printbase>
9fc011b4:	24070001 	li	a3,1
/home/rain/loongson/cache_lab/lib/printf.c:36
9fc011b8:	26520004 	addiu	s2,s2,4
/home/rain/loongson/cache_lab/lib/printf.c:37
9fc011bc:	0bf00419 	j	9fc01064 <printf+0x74>
9fc011c0:	26310001 	addiu	s1,s1,1
/home/rain/loongson/cache_lab/lib/printf.c:25
9fc011c4:	8e440000 	lw	a0,0(s2)
9fc011c8:	0ff00495 	jal	9fc01254 <putchar>
9fc011cc:	26310001 	addiu	s1,s1,1
/home/rain/loongson/cache_lab/lib/printf.c:26
9fc011d0:	0bf00419 	j	9fc01064 <printf+0x74>
9fc011d4:	26520004 	addiu	s2,s2,4
/home/rain/loongson/cache_lab/lib/printf.c:50
9fc011d8:	8e440000 	lw	a0,0(s2)
9fc011dc:	24060002 	li	a2,2
9fc011e0:	0ff004d0 	jal	9fc01340 <printbase>
9fc011e4:	00003821 	move	a3,zero
/home/rain/loongson/cache_lab/lib/printf.c:51
9fc011e8:	26520004 	addiu	s2,s2,4
/home/rain/loongson/cache_lab/lib/printf.c:52
9fc011ec:	0bf00419 	j	9fc01064 <printf+0x74>
9fc011f0:	26310001 	addiu	s1,s1,1
/home/rain/loongson/cache_lab/lib/printf.c:61
9fc011f4:	0ff00495 	jal	9fc01254 <putchar>
9fc011f8:	24040025 	li	a0,37
/home/rain/loongson/cache_lab/lib/printf.c:62
9fc011fc:	0bf00419 	j	9fc01064 <printf+0x74>
9fc01200:	26310001 	addiu	s1,s1,1
/home/rain/loongson/cache_lab/lib/printf.c:67
9fc01204:	02713021 	addu	a2,s3,s1
/home/rain/loongson/cache_lab/lib/printf.c:68
9fc01208:	000510c0 	sll	v0,a1,0x3
9fc0120c:	00051840 	sll	v1,a1,0x1
9fc01210:	00621821 	addu	v1,v1,v0
9fc01214:	00641821 	addu	v1,v1,a0
/home/rain/loongson/cache_lab/lib/printf.c:67
9fc01218:	80c40002 	lb	a0,2(a2)
/home/rain/loongson/cache_lab/lib/printf.c:68
9fc0121c:	2465ffd0 	addiu	a1,v1,-48
/home/rain/loongson/cache_lab/lib/printf.c:67
9fc01220:	2482ffcf 	addiu	v0,a0,-49
9fc01224:	304200ff 	andi	v0,v0,0xff
9fc01228:	2c420009 	sltiu	v0,v0,9
9fc0122c:	26310001 	addiu	s1,s1,1
9fc01230:	1040ff9f 	beqz	v0,9fc010b0 <printf+0xc0>
9fc01234:	24c60001 	addiu	a2,a2,1
/home/rain/loongson/cache_lab/lib/printf.c:68
9fc01238:	0bf00483 	j	9fc0120c <printf+0x21c>
9fc0123c:	000510c0 	sll	v0,a1,0x3

9fc01240 <tgt_putchar>:
tgt_putchar():
/home/rain/loongson/cache_lab/lib/putchar.c:9
9fc01240:	3c19bfb0 	lui	t9,0xbfb0
9fc01244:	03e00008 	jr	ra
9fc01248:	a324fff0 	sb	a0,-16(t9)
/home/rain/loongson/cache_lab/lib/putchar.c:18
9fc0124c:	03e00008 	jr	ra
9fc01250:	00000000 	nop

9fc01254 <putchar>:
putchar():
/home/rain/loongson/cache_lab/lib/putchar.c:2
9fc01254:	27bdffe8 	addiu	sp,sp,-24
9fc01258:	afbf0014 	sw	ra,20(sp)
/home/rain/loongson/cache_lab/lib/putchar.c:3
9fc0125c:	0ff00490 	jal	9fc01240 <tgt_putchar>
9fc01260:	00000000 	nop
/home/rain/loongson/cache_lab/lib/putchar.c:5
9fc01264:	8fbf0014 	lw	ra,20(sp)
9fc01268:	00001021 	move	v0,zero
9fc0126c:	03e00008 	jr	ra
9fc01270:	27bd0018 	addiu	sp,sp,24
	...

9fc01280 <putstring>:
putstring():
/home/rain/loongson/cache_lab/lib/puts.c:2
9fc01280:	27bdffe0 	addiu	sp,sp,-32
9fc01284:	afb10014 	sw	s1,20(sp)
9fc01288:	afbf001c 	sw	ra,28(sp)
9fc0128c:	afb20018 	sw	s2,24(sp)
9fc01290:	afb00010 	sw	s0,16(sp)
/home/rain/loongson/cache_lab/lib/puts.c:4
9fc01294:	80900000 	lb	s0,0(a0)
9fc01298:	00000000 	nop
9fc0129c:	12000013 	beqz	s0,9fc012ec <putstring+0x6c>
9fc012a0:	00808821 	move	s1,a0
/home/rain/loongson/cache_lab/lib/puts.c:6
9fc012a4:	0bf004b1 	j	9fc012c4 <putstring+0x44>
9fc012a8:	2412000a 	li	s2,10
/home/rain/loongson/cache_lab/lib/puts.c:7
9fc012ac:	0ff00495 	jal	9fc01254 <putchar>
9fc012b0:	02002021 	move	a0,s0
/home/rain/loongson/cache_lab/lib/puts.c:4
9fc012b4:	82300000 	lb	s0,0(s1)
9fc012b8:	00000000 	nop
9fc012bc:	1200000b 	beqz	s0,9fc012ec <putstring+0x6c>
9fc012c0:	00000000 	nop
/home/rain/loongson/cache_lab/lib/puts.c:6
9fc012c4:	1612fff9 	bne	s0,s2,9fc012ac <putstring+0x2c>
9fc012c8:	26310001 	addiu	s1,s1,1
9fc012cc:	0ff00495 	jal	9fc01254 <putchar>
9fc012d0:	2404000d 	li	a0,13
/home/rain/loongson/cache_lab/lib/puts.c:7
9fc012d4:	0ff00495 	jal	9fc01254 <putchar>
9fc012d8:	02002021 	move	a0,s0
/home/rain/loongson/cache_lab/lib/puts.c:4
9fc012dc:	82300000 	lb	s0,0(s1)
9fc012e0:	00000000 	nop
9fc012e4:	1600fff7 	bnez	s0,9fc012c4 <putstring+0x44>
9fc012e8:	00000000 	nop
/home/rain/loongson/cache_lab/lib/puts.c:11
9fc012ec:	8fbf001c 	lw	ra,28(sp)
9fc012f0:	00001021 	move	v0,zero
9fc012f4:	8fb20018 	lw	s2,24(sp)
9fc012f8:	8fb10014 	lw	s1,20(sp)
9fc012fc:	8fb00010 	lw	s0,16(sp)
9fc01300:	03e00008 	jr	ra
9fc01304:	27bd0020 	addiu	sp,sp,32

9fc01308 <puts>:
puts():
/home/rain/loongson/cache_lab/lib/puts.c:15
9fc01308:	27bdffe8 	addiu	sp,sp,-24
9fc0130c:	afbf0014 	sw	ra,20(sp)
/home/rain/loongson/cache_lab/lib/puts.c:16
9fc01310:	0ff004a0 	jal	9fc01280 <putstring>
9fc01314:	00000000 	nop
/home/rain/loongson/cache_lab/lib/puts.c:17
9fc01318:	0ff00495 	jal	9fc01254 <putchar>
9fc0131c:	2404000d 	li	a0,13
/home/rain/loongson/cache_lab/lib/puts.c:18
9fc01320:	0ff00495 	jal	9fc01254 <putchar>
9fc01324:	2404000a 	li	a0,10
/home/rain/loongson/cache_lab/lib/puts.c:20
9fc01328:	8fbf0014 	lw	ra,20(sp)
9fc0132c:	00001021 	move	v0,zero
9fc01330:	03e00008 	jr	ra
9fc01334:	27bd0018 	addiu	sp,sp,24
	...

9fc01340 <printbase>:
printbase():
/home/rain/loongson/cache_lab/lib/printbase.c:2
9fc01340:	27bdff98 	addiu	sp,sp,-104
9fc01344:	afb30060 	sw	s3,96(sp)
9fc01348:	afb2005c 	sw	s2,92(sp)
9fc0134c:	afbf0064 	sw	ra,100(sp)
9fc01350:	afb10058 	sw	s1,88(sp)
9fc01354:	afb00054 	sw	s0,84(sp)
9fc01358:	00801821 	move	v1,a0
9fc0135c:	00a09821 	move	s3,a1
/home/rain/loongson/cache_lab/lib/printbase.c:7
9fc01360:	10e00003 	beqz	a3,9fc01370 <printbase+0x30>
9fc01364:	00c09021 	move	s2,a2
9fc01368:	0480002f 	bltz	a0,9fc01428 <printbase+0xe8>
9fc0136c:	2404002d 	li	a0,45
/home/rain/loongson/cache_lab/lib/printbase.c:12
9fc01370:	00608021 	move	s0,v1
/home/rain/loongson/cache_lab/lib/printbase.c:14
9fc01374:	1200000c 	beqz	s0,9fc013a8 <printbase+0x68>
9fc01378:	00008821 	move	s1,zero
9fc0137c:	27a50010 	addiu	a1,sp,16
/home/rain/loongson/cache_lab/lib/printbase.c:16
9fc01380:	16400002 	bnez	s2,9fc0138c <printbase+0x4c>
9fc01384:	0212001b 	divu	zero,s0,s2
9fc01388:	0007000d 	break	0x7
9fc0138c:	00b12021 	addu	a0,a1,s1
/home/rain/loongson/cache_lab/lib/printbase.c:14
9fc01390:	26310001 	addiu	s1,s1,1
/home/rain/loongson/cache_lab/lib/printbase.c:16
9fc01394:	00001010 	mfhi	v0
9fc01398:	a0820000 	sb	v0,0(a0)
9fc0139c:	00001812 	mflo	v1
/home/rain/loongson/cache_lab/lib/printbase.c:14
9fc013a0:	1460fff7 	bnez	v1,9fc01380 <printbase+0x40>
9fc013a4:	00608021 	move	s0,v1
/home/rain/loongson/cache_lab/lib/printbase.c:22
9fc013a8:	0233102a 	slt	v0,s1,s3
9fc013ac:	10400002 	beqz	v0,9fc013b8 <printbase+0x78>
9fc013b0:	02201821 	move	v1,s1
9fc013b4:	02601821 	move	v1,s3
9fc013b8:	1060000c 	beqz	v1,9fc013ec <printbase+0xac>
9fc013bc:	2470ffff 	addiu	s0,v1,-1
/home/rain/loongson/cache_lab/lib/printbase.c:2
9fc013c0:	27a20010 	addiu	v0,sp,16
9fc013c4:	00509021 	addu	s2,v0,s0
/home/rain/loongson/cache_lab/lib/printbase.c:24
9fc013c8:	26020001 	addiu	v0,s0,1
9fc013cc:	0222102a 	slt	v0,s1,v0
9fc013d0:	1040000e 	beqz	v0,9fc0140c <printbase+0xcc>
9fc013d4:	24040030 	li	a0,48
/home/rain/loongson/cache_lab/lib/printbase.c:25
9fc013d8:	02009821 	move	s3,s0
9fc013dc:	0ff00495 	jal	9fc01254 <putchar>
9fc013e0:	2610ffff 	addiu	s0,s0,-1
/home/rain/loongson/cache_lab/lib/printbase.c:22
9fc013e4:	1660fff8 	bnez	s3,9fc013c8 <printbase+0x88>
9fc013e8:	2652ffff 	addiu	s2,s2,-1
/home/rain/loongson/cache_lab/lib/printbase.c:28
9fc013ec:	8fbf0064 	lw	ra,100(sp)
9fc013f0:	00001021 	move	v0,zero
9fc013f4:	8fb30060 	lw	s3,96(sp)
9fc013f8:	8fb2005c 	lw	s2,92(sp)
9fc013fc:	8fb10058 	lw	s1,88(sp)
9fc01400:	8fb00054 	lw	s0,84(sp)
9fc01404:	03e00008 	jr	ra
9fc01408:	27bd0068 	addiu	sp,sp,104
/home/rain/loongson/cache_lab/lib/printbase.c:24
9fc0140c:	82440000 	lb	a0,0(s2)
9fc01410:	00000000 	nop
/home/rain/loongson/cache_lab/lib/printbase.c:25
9fc01414:	2882000a 	slti	v0,a0,10
9fc01418:	14400007 	bnez	v0,9fc01438 <printbase+0xf8>
9fc0141c:	02009821 	move	s3,s0
9fc01420:	0bf004f7 	j	9fc013dc <printbase+0x9c>
9fc01424:	24840057 	addiu	a0,a0,87
/home/rain/loongson/cache_lab/lib/printbase.c:10
9fc01428:	0ff00495 	jal	9fc01254 <putchar>
9fc0142c:	00038023 	negu	s0,v1
9fc01430:	0bf004dd 	j	9fc01374 <printbase+0x34>
9fc01434:	00000000 	nop
/home/rain/loongson/cache_lab/lib/printbase.c:25
9fc01438:	0bf004f6 	j	9fc013d8 <printbase+0x98>
9fc0143c:	24840030 	addiu	a0,a0,48

9fc01440 <_get_count>:
_get_count():
/home/rain/loongson/cache_lab/lib/time.c:14
9fc01440:	3c19bfb0 	lui	t9,0xbfb0
9fc01444:	8f22e000 	lw	v0,-8192(t9)
9fc01448:	03e00008 	jr	ra
9fc0144c:	00000000 	nop

9fc01450 <get_count>:
get_count():
/home/rain/loongson/cache_lab/lib/time.c:19
9fc01450:	3c19bfb0 	lui	t9,0xbfb0
9fc01454:	8f22e000 	lw	v0,-8192(t9)
9fc01458:	03e00008 	jr	ra
9fc0145c:	00000000 	nop

9fc01460 <get_count_my>:
get_count_my():
/home/rain/loongson/cache_lab/lib/time.c:24
9fc01460:	40024800 	mfc0	v0,$9
/home/rain/loongson/cache_lab/lib/time.c:29
9fc01464:	03e00008 	jr	ra
9fc01468:	00000000 	nop

9fc0146c <get_clock>:
get_clock():
/home/rain/loongson/cache_lab/lib/time.c:48
9fc0146c:	3c19bfb0 	lui	t9,0xbfb0
9fc01470:	8f22e000 	lw	v0,-8192(t9)
9fc01474:	03e00008 	jr	ra
9fc01478:	00000000 	nop

9fc0147c <get_ns>:
_get_count():
/home/rain/loongson/cache_lab/lib/time.c:6
9fc0147c:	3c19bfb0 	lui	t9,0xbfb0
9fc01480:	8f22e000 	lw	v0,-8192(t9)
9fc01484:	00000000 	nop
9fc01488:	000218c0 	sll	v1,v0,0x3
9fc0148c:	00021040 	sll	v0,v0,0x1
get_ns():
/home/rain/loongson/cache_lab/lib/time.c:56
9fc01490:	03e00008 	jr	ra
9fc01494:	00431021 	addu	v0,v0,v1

9fc01498 <get_us>:
_get_count():
/home/rain/loongson/cache_lab/lib/time.c:6
9fc01498:	3c19bfb0 	lui	t9,0xbfb0
9fc0149c:	8f23e000 	lw	v1,-8192(t9)
9fc014a0:	24020064 	li	v0,100
get_us():
/home/rain/loongson/cache_lab/lib/time.c:65
9fc014a4:	14400002 	bnez	v0,9fc014b0 <get_us+0x18>
9fc014a8:	0062001b 	divu	zero,v1,v0
9fc014ac:	0007000d 	break	0x7
9fc014b0:	00001012 	mflo	v0
9fc014b4:	03e00008 	jr	ra
9fc014b8:	00000000 	nop

9fc014bc <clock_gettime>:
clock_gettime():
/home/rain/loongson/cache_lab/lib/time.c:32
9fc014bc:	27bdffe8 	addiu	sp,sp,-24
9fc014c0:	afbf0014 	sw	ra,20(sp)
9fc014c4:	00a05021 	move	t2,a1
_get_count():
/home/rain/loongson/cache_lab/lib/time.c:6
9fc014c8:	3c19bfb0 	lui	t9,0xbfb0
9fc014cc:	8f26e000 	lw	a2,-8192(t9)
clock_gettime():
/home/rain/loongson/cache_lab/lib/time.c:37
9fc014d0:	3c030001 	lui	v1,0x1
9fc014d4:	346386a0 	ori	v1,v1,0x86a0
9fc014d8:	14600002 	bnez	v1,9fc014e4 <clock_gettime+0x28>
9fc014dc:	00c3001b 	divu	zero,a2,v1
9fc014e0:	0007000d 	break	0x7
/home/rain/loongson/cache_lab/lib/time.c:36
9fc014e4:	24080064 	li	t0,100
/home/rain/loongson/cache_lab/lib/time.c:38
9fc014e8:	3c054876 	lui	a1,0x4876
9fc014ec:	34a5e800 	ori	a1,a1,0xe800
/home/rain/loongson/cache_lab/lib/time.c:35
9fc014f0:	000610c0 	sll	v0,a2,0x3
9fc014f4:	00063840 	sll	a3,a2,0x1
9fc014f8:	00e23821 	addu	a3,a3,v0
9fc014fc:	240203e8 	li	v0,1000
/home/rain/loongson/cache_lab/lib/time.c:39
9fc01500:	3c049fc0 	lui	a0,0x9fc0
9fc01504:	24841760 	addiu	a0,a0,5984
/home/rain/loongson/cache_lab/lib/time.c:37
9fc01508:	00001812 	mflo	v1
9fc0150c:	00000000 	nop
/home/rain/loongson/cache_lab/lib/time.c:36
9fc01510:	15000002 	bnez	t0,9fc0151c <clock_gettime+0x60>
9fc01514:	00c8001b 	divu	zero,a2,t0
9fc01518:	0007000d 	break	0x7
9fc0151c:	00004012 	mflo	t0
9fc01520:	00000000 	nop
/home/rain/loongson/cache_lab/lib/time.c:38
9fc01524:	14a00002 	bnez	a1,9fc01530 <clock_gettime+0x74>
9fc01528:	00c5001b 	divu	zero,a2,a1
9fc0152c:	0007000d 	break	0x7
9fc01530:	00003012 	mflo	a2
9fc01534:	ad460000 	sw	a2,0(t2)
/home/rain/loongson/cache_lab/lib/time.c:37
9fc01538:	14400002 	bnez	v0,9fc01544 <clock_gettime+0x88>
9fc0153c:	0062001b 	divu	zero,v1,v0
9fc01540:	0007000d 	break	0x7
9fc01544:	00004810 	mfhi	t1
9fc01548:	ad49000c 	sw	t1,12(t2)
/home/rain/loongson/cache_lab/lib/time.c:35
9fc0154c:	14400002 	bnez	v0,9fc01558 <clock_gettime+0x9c>
9fc01550:	00e2001b 	divu	zero,a3,v0
9fc01554:	0007000d 	break	0x7
9fc01558:	00002810 	mfhi	a1
9fc0155c:	ad450004 	sw	a1,4(t2)
/home/rain/loongson/cache_lab/lib/time.c:36
9fc01560:	14400002 	bnez	v0,9fc0156c <clock_gettime+0xb0>
9fc01564:	0102001b 	divu	zero,t0,v0
9fc01568:	0007000d 	break	0x7
9fc0156c:	00001810 	mfhi	v1
/home/rain/loongson/cache_lab/lib/time.c:39
9fc01570:	0ff003fc 	jal	9fc00ff0 <printf>
9fc01574:	ad430008 	sw	v1,8(t2)
/home/rain/loongson/cache_lab/lib/time.c:41
9fc01578:	8fbf0014 	lw	ra,20(sp)
9fc0157c:	00001021 	move	v0,zero
9fc01580:	03e00008 	jr	ra
9fc01584:	27bd0018 	addiu	sp,sp,24
	...

Disassembly of section .data:

9fc01590 <_fdata-0x1fc>:
9fc01590:	6c656873 	0x6c656873
9fc01594:	7420316c 	jalx	9080c5b0 <data_size+0x9080b7a0>
9fc01598:	20747365 	addi	s4,v1,29541
9fc0159c:	69676562 	0x69676562
9fc015a0:	00002e6e 	0x2e6e
9fc015a4:	61746f54 	0x61746f54
9fc015a8:	6f43206c 	0x6f43206c
9fc015ac:	28746e75 	slti	s4,v1,28277
9fc015b0:	20436f53 	addi	v1,v0,28499
9fc015b4:	6e756f63 	0x6e756f63
9fc015b8:	3d202974 	0x3d202974
9fc015bc:	25783020 	addiu	t8,t3,12320
9fc015c0:	00000a78 	0xa78
9fc015c4:	61746f54 	0x61746f54
9fc015c8:	6f43206c 	0x6f43206c
9fc015cc:	28746e75 	slti	s4,v1,28277
9fc015d0:	20555043 	addi	s5,v0,20547
9fc015d4:	6e756f63 	0x6e756f63
9fc015d8:	3d202974 	0x3d202974
9fc015dc:	25783020 	addiu	t8,t3,12320
9fc015e0:	00000a78 	0xa78
9fc015e4:	6f727245 	0x6f727245
9fc015e8:	20432072 	addi	v1,v0,8306
9fc015ec:	20646e61 	addi	a0,v1,28257
9fc015f0:	65725f43 	0x65725f43
9fc015f4:	6f6e2066 	0x6f6e2066
9fc015f8:	71652074 	0x71652074
9fc015fc:	006c6175 	0x6c6175
9fc01600:	6d656764 	0x6d656764
9fc01604:	4150206d 	0x4150206d
9fc01608:	00215353 	0x215353
9fc0160c:	00000000 	nop
9fc01610:	9fc011f4 	0x9fc011f4
9fc01614:	9fc010c4 	0x9fc010c4
9fc01618:	9fc010c4 	0x9fc010c4
9fc0161c:	9fc010c4 	0x9fc010c4
9fc01620:	9fc010c4 	0x9fc010c4
9fc01624:	9fc010c4 	0x9fc010c4
9fc01628:	9fc010c4 	0x9fc010c4
9fc0162c:	9fc010c4 	0x9fc010c4
9fc01630:	9fc010c4 	0x9fc010c4
9fc01634:	9fc010c4 	0x9fc010c4
9fc01638:	9fc010c4 	0x9fc010c4
9fc0163c:	9fc010e8 	0x9fc010e8
9fc01640:	9fc010f8 	0x9fc010f8
9fc01644:	9fc010f8 	0x9fc010f8
9fc01648:	9fc010f8 	0x9fc010f8
9fc0164c:	9fc010f8 	0x9fc010f8
9fc01650:	9fc010f8 	0x9fc010f8
9fc01654:	9fc010f8 	0x9fc010f8
9fc01658:	9fc010f8 	0x9fc010f8
9fc0165c:	9fc010f8 	0x9fc010f8
9fc01660:	9fc010f8 	0x9fc010f8
9fc01664:	9fc010c4 	0x9fc010c4
9fc01668:	9fc010c4 	0x9fc010c4
9fc0166c:	9fc010c4 	0x9fc010c4
9fc01670:	9fc010c4 	0x9fc010c4
9fc01674:	9fc010c4 	0x9fc010c4
9fc01678:	9fc010c4 	0x9fc010c4
9fc0167c:	9fc010c4 	0x9fc010c4
9fc01680:	9fc010c4 	0x9fc010c4
9fc01684:	9fc010c4 	0x9fc010c4
9fc01688:	9fc010c4 	0x9fc010c4
9fc0168c:	9fc010c4 	0x9fc010c4
9fc01690:	9fc010c4 	0x9fc010c4
9fc01694:	9fc010c4 	0x9fc010c4
9fc01698:	9fc010c4 	0x9fc010c4
9fc0169c:	9fc010c4 	0x9fc010c4
9fc016a0:	9fc010c4 	0x9fc010c4
9fc016a4:	9fc010c4 	0x9fc010c4
9fc016a8:	9fc010c4 	0x9fc010c4
9fc016ac:	9fc010c4 	0x9fc010c4
9fc016b0:	9fc010c4 	0x9fc010c4
9fc016b4:	9fc010c4 	0x9fc010c4
9fc016b8:	9fc010c4 	0x9fc010c4
9fc016bc:	9fc010c4 	0x9fc010c4
9fc016c0:	9fc010c4 	0x9fc010c4
9fc016c4:	9fc010c4 	0x9fc010c4
9fc016c8:	9fc010c4 	0x9fc010c4
9fc016cc:	9fc010c4 	0x9fc010c4
9fc016d0:	9fc010c4 	0x9fc010c4
9fc016d4:	9fc010c4 	0x9fc010c4
9fc016d8:	9fc010c4 	0x9fc010c4
9fc016dc:	9fc010c4 	0x9fc010c4
9fc016e0:	9fc010c4 	0x9fc010c4
9fc016e4:	9fc010c4 	0x9fc010c4
9fc016e8:	9fc010c4 	0x9fc010c4
9fc016ec:	9fc010c4 	0x9fc010c4
9fc016f0:	9fc010c4 	0x9fc010c4
9fc016f4:	9fc010c4 	0x9fc010c4
9fc016f8:	9fc010c4 	0x9fc010c4
9fc016fc:	9fc010c4 	0x9fc010c4
9fc01700:	9fc010c4 	0x9fc010c4
9fc01704:	9fc011d8 	0x9fc011d8
9fc01708:	9fc011c4 	0x9fc011c4
9fc0170c:	9fc011a8 	0x9fc011a8
9fc01710:	9fc010c4 	0x9fc010c4
9fc01714:	9fc010c4 	0x9fc010c4
9fc01718:	9fc010c4 	0x9fc010c4
9fc0171c:	9fc010c4 	0x9fc010c4
9fc01720:	9fc010c4 	0x9fc010c4
9fc01724:	9fc010c4 	0x9fc010c4
9fc01728:	9fc010c4 	0x9fc010c4
9fc0172c:	9fc0118c 	0x9fc0118c
9fc01730:	9fc010c4 	0x9fc010c4
9fc01734:	9fc010c4 	0x9fc010c4
9fc01738:	9fc01170 	0x9fc01170
9fc0173c:	9fc01154 	0x9fc01154
9fc01740:	9fc010c4 	0x9fc010c4
9fc01744:	9fc010c4 	0x9fc010c4
9fc01748:	9fc01140 	0x9fc01140
9fc0174c:	9fc010c4 	0x9fc010c4
9fc01750:	9fc01124 	0x9fc01124
9fc01754:	9fc010c4 	0x9fc010c4
9fc01758:	9fc010c4 	0x9fc010c4
9fc0175c:	9fc01154 	0x9fc01154
9fc01760:	636f6c63 	0x636f6c63
9fc01764:	736e206b 	0x736e206b
9fc01768:	2c64253d 	sltiu	a0,v1,9533
9fc0176c:	3d636573 	0x3d636573
9fc01770:	000a6425 	0xa6425
9fc01774:	b2007f00 	0xb2007f00
	...

9fc0178c <_fdata>:
_fdata():
9fc0178c:	00000000 	nop

9fc01790 <A_array>:
9fc01790:	00000001 	0x1
9fc01794:	0000000b 	0xb
9fc01798:	0000000b 	0xb
9fc0179c:	0000000c 	syscall
9fc017a0:	0000000d 	break
9fc017a4:	00000002 	srl	zero,zero,0x0
9fc017a8:	00000007 	srav	zero,zero,zero
9fc017ac:	00000006 	srlv	zero,zero,zero
9fc017b0:	0000000d 	break
9fc017b4:	0000000d 	break
9fc017b8:	0000000f 	0xf
9fc017bc:	00000006 	srlv	zero,zero,zero
9fc017c0:	00000005 	0x5
9fc017c4:	0000000a 	0xa
9fc017c8:	0000000b 	0xb
9fc017cc:	00000004 	sllv	zero,zero,zero
9fc017d0:	0000000c 	syscall
9fc017d4:	00000007 	srav	zero,zero,zero
9fc017d8:	00000008 	jr	zero
9fc017dc:	0000000d 	break
9fc017e0:	0000000d 	break
9fc017e4:	00000000 	nop
9fc017e8:	00000001 	0x1
9fc017ec:	00000003 	sra	zero,zero,0x0
9fc017f0:	00000007 	srav	zero,zero,zero
9fc017f4:	00000002 	srl	zero,zero,0x0
9fc017f8:	00000009 	jalr	zero,zero
9fc017fc:	00000002 	srl	zero,zero,0x0
9fc01800:	00000000 	nop
9fc01804:	0000000e 	0xe
9fc01808:	00000008 	jr	zero
9fc0180c:	0000000a 	0xa
9fc01810:	00000005 	0x5
9fc01814:	0000000e 	0xe
9fc01818:	0000000d 	break
9fc0181c:	00000001 	0x1
9fc01820:	00000008 	jr	zero
9fc01824:	0000000a 	0xa
9fc01828:	00000003 	sra	zero,zero,0x0
9fc0182c:	00000007 	srav	zero,zero,zero
9fc01830:	00000003 	sra	zero,zero,0x0
9fc01834:	00000003 	sra	zero,zero,0x0
9fc01838:	0000000e 	0xe
9fc0183c:	00000003 	sra	zero,zero,0x0
9fc01840:	00000002 	srl	zero,zero,0x0
9fc01844:	00000000 	nop
9fc01848:	0000000a 	0xa
9fc0184c:	00000008 	jr	zero
9fc01850:	00000008 	jr	zero
9fc01854:	0000000d 	break
9fc01858:	00000002 	srl	zero,zero,0x0
9fc0185c:	00000009 	jalr	zero,zero
9fc01860:	00000005 	0x5
9fc01864:	00000007 	srav	zero,zero,zero
9fc01868:	00000008 	jr	zero
9fc0186c:	0000000c 	syscall
9fc01870:	00000005 	0x5
9fc01874:	0000000f 	0xf
9fc01878:	00000009 	jalr	zero,zero
9fc0187c:	0000000b 	0xb
9fc01880:	00000002 	srl	zero,zero,0x0
9fc01884:	00000003 	sra	zero,zero,0x0
9fc01888:	0000000f 	0xf
9fc0188c:	0000000b 	0xb
9fc01890:	0000000f 	0xf
9fc01894:	00000007 	srav	zero,zero,zero
9fc01898:	00000004 	sllv	zero,zero,zero
9fc0189c:	0000000b 	0xb
9fc018a0:	00000009 	jalr	zero,zero
9fc018a4:	0000000b 	0xb
9fc018a8:	00000006 	srlv	zero,zero,zero
9fc018ac:	00000008 	jr	zero
9fc018b0:	0000000a 	0xa
9fc018b4:	0000000b 	0xb
9fc018b8:	00000006 	srlv	zero,zero,zero
9fc018bc:	00000001 	0x1
9fc018c0:	0000000d 	break
9fc018c4:	00000009 	jalr	zero,zero
9fc018c8:	0000000f 	0xf
9fc018cc:	00000006 	srlv	zero,zero,zero
9fc018d0:	00000004 	sllv	zero,zero,zero
9fc018d4:	00000000 	nop
9fc018d8:	00000007 	srav	zero,zero,zero
9fc018dc:	00000001 	0x1
9fc018e0:	00000007 	srav	zero,zero,zero
9fc018e4:	00000001 	0x1
9fc018e8:	00000002 	srl	zero,zero,0x0
9fc018ec:	0000000f 	0xf
9fc018f0:	0000000c 	syscall
9fc018f4:	00000003 	sra	zero,zero,0x0
9fc018f8:	00000006 	srlv	zero,zero,zero
9fc018fc:	0000000a 	0xa
9fc01900:	0000000e 	0xe
9fc01904:	00000000 	nop
9fc01908:	00000002 	srl	zero,zero,0x0
9fc0190c:	00000004 	sllv	zero,zero,zero
9fc01910:	0000000a 	0xa
9fc01914:	00000009 	jalr	zero,zero
9fc01918:	0000000e 	0xe
9fc0191c:	0000000d 	break
9fc01920:	0000000f 	0xf
9fc01924:	00000008 	jr	zero
9fc01928:	00000007 	srav	zero,zero,zero
9fc0192c:	00000003 	sra	zero,zero,0x0
9fc01930:	00000005 	0x5
9fc01934:	00000002 	srl	zero,zero,0x0
9fc01938:	0000000c 	syscall
9fc0193c:	0000000a 	0xa
9fc01940:	0000000e 	0xe
9fc01944:	00000007 	srav	zero,zero,zero
9fc01948:	00000006 	srlv	zero,zero,zero
9fc0194c:	0000000b 	0xb
9fc01950:	00000004 	sllv	zero,zero,zero
9fc01954:	00000001 	0x1
9fc01958:	0000000c 	syscall
9fc0195c:	0000000f 	0xf
9fc01960:	00000009 	jalr	zero,zero
9fc01964:	00000000 	nop
9fc01968:	00000000 	nop
9fc0196c:	00000003 	sra	zero,zero,0x0
9fc01970:	00000007 	srav	zero,zero,zero
9fc01974:	0000000a 	0xa
9fc01978:	00000005 	0x5
9fc0197c:	00000009 	jalr	zero,zero
9fc01980:	0000000a 	0xa
9fc01984:	0000000d 	break
9fc01988:	00000002 	srl	zero,zero,0x0
9fc0198c:	0000000e 	0xe
9fc01990:	0000000d 	break
9fc01994:	00000008 	jr	zero
9fc01998:	00000003 	sra	zero,zero,0x0
9fc0199c:	0000000c 	syscall
9fc019a0:	0000000c 	syscall
9fc019a4:	00000006 	srlv	zero,zero,zero
9fc019a8:	00000002 	srl	zero,zero,0x0
9fc019ac:	00000004 	sllv	zero,zero,zero
9fc019b0:	0000000a 	0xa
9fc019b4:	00000002 	srl	zero,zero,0x0
9fc019b8:	00000000 	nop
9fc019bc:	00000007 	srav	zero,zero,zero
9fc019c0:	00000004 	sllv	zero,zero,zero
	...
9fc019cc:	0000000f 	0xf
9fc019d0:	0000000c 	syscall
9fc019d4:	00000007 	srav	zero,zero,zero
9fc019d8:	0000000e 	0xe
9fc019dc:	0000000d 	break
9fc019e0:	00000005 	0x5
9fc019e4:	00000009 	jalr	zero,zero
9fc019e8:	00000009 	jalr	zero,zero
9fc019ec:	00000003 	sra	zero,zero,0x0
9fc019f0:	00000000 	nop
9fc019f4:	00000002 	srl	zero,zero,0x0
9fc019f8:	0000000b 	0xb
9fc019fc:	0000000d 	break
9fc01a00:	00000009 	jalr	zero,zero
9fc01a04:	0000000e 	0xe
9fc01a08:	00000004 	sllv	zero,zero,zero
9fc01a0c:	00000004 	sllv	zero,zero,zero
9fc01a10:	00000000 	nop
9fc01a14:	0000000a 	0xa
9fc01a18:	0000000d 	break
9fc01a1c:	00000001 	0x1
9fc01a20:	00000005 	0x5
9fc01a24:	00000002 	srl	zero,zero,0x0
9fc01a28:	0000000c 	syscall
9fc01a2c:	00000003 	sra	zero,zero,0x0
9fc01a30:	0000000b 	0xb
9fc01a34:	00000008 	jr	zero
9fc01a38:	00000008 	jr	zero
9fc01a3c:	00000005 	0x5
9fc01a40:	0000000d 	break
9fc01a44:	0000000d 	break
9fc01a48:	00000006 	srlv	zero,zero,zero
9fc01a4c:	00000000 	nop
9fc01a50:	0000000c 	syscall
9fc01a54:	00000000 	nop
9fc01a58:	00000001 	0x1
9fc01a5c:	0000000d 	break
9fc01a60:	0000000c 	syscall
9fc01a64:	00000007 	srav	zero,zero,zero
9fc01a68:	0000000b 	0xb
9fc01a6c:	0000000b 	0xb
9fc01a70:	0000000f 	0xf
9fc01a74:	0000000e 	0xe
9fc01a78:	0000000d 	break
9fc01a7c:	00000007 	srav	zero,zero,zero
9fc01a80:	0000000c 	syscall
9fc01a84:	0000000b 	0xb
9fc01a88:	0000000f 	0xf
9fc01a8c:	00000005 	0x5
9fc01a90:	00000007 	srav	zero,zero,zero
9fc01a94:	00000002 	srl	zero,zero,0x0
9fc01a98:	00000005 	0x5
9fc01a9c:	00000001 	0x1
9fc01aa0:	00000001 	0x1
9fc01aa4:	00000006 	srlv	zero,zero,zero
9fc01aa8:	00000001 	0x1
9fc01aac:	00000003 	sra	zero,zero,0x0
9fc01ab0:	00000001 	0x1
9fc01ab4:	0000000b 	0xb
9fc01ab8:	0000000a 	0xa
9fc01abc:	00000006 	srlv	zero,zero,zero
9fc01ac0:	0000000b 	0xb
9fc01ac4:	00000009 	jalr	zero,zero
9fc01ac8:	00000000 	nop
9fc01acc:	00000002 	srl	zero,zero,0x0
9fc01ad0:	0000000d 	break
9fc01ad4:	0000000b 	0xb
9fc01ad8:	0000000e 	0xe
9fc01adc:	00000004 	sllv	zero,zero,zero
9fc01ae0:	00000006 	srlv	zero,zero,zero
9fc01ae4:	00000001 	0x1
9fc01ae8:	0000000f 	0xf
9fc01aec:	00000009 	jalr	zero,zero
9fc01af0:	00000007 	srav	zero,zero,zero
9fc01af4:	0000000f 	0xf
9fc01af8:	00000004 	sllv	zero,zero,zero
9fc01afc:	00000008 	jr	zero
9fc01b00:	00000000 	nop
9fc01b04:	0000000c 	syscall
9fc01b08:	00000007 	srav	zero,zero,zero
9fc01b0c:	0000000a 	0xa
9fc01b10:	0000000d 	break
9fc01b14:	0000000f 	0xf
9fc01b18:	00000002 	srl	zero,zero,0x0
9fc01b1c:	00000008 	jr	zero
9fc01b20:	0000000b 	0xb
9fc01b24:	00000002 	srl	zero,zero,0x0
9fc01b28:	0000000a 	0xa
9fc01b2c:	0000000a 	0xa
9fc01b30:	00000006 	srlv	zero,zero,zero
9fc01b34:	0000000e 	0xe
9fc01b38:	00000004 	sllv	zero,zero,zero
9fc01b3c:	0000000b 	0xb
9fc01b40:	0000000c 	syscall
9fc01b44:	0000000f 	0xf
9fc01b48:	0000000e 	0xe
9fc01b4c:	00000006 	srlv	zero,zero,zero
9fc01b50:	00000006 	srlv	zero,zero,zero
9fc01b54:	00000009 	jalr	zero,zero
9fc01b58:	00000002 	srl	zero,zero,0x0
9fc01b5c:	0000000f 	0xf
9fc01b60:	00000006 	srlv	zero,zero,zero
9fc01b64:	0000000f 	0xf
9fc01b68:	00000008 	jr	zero
9fc01b6c:	0000000b 	0xb
9fc01b70:	0000000f 	0xf
9fc01b74:	00000006 	srlv	zero,zero,zero
9fc01b78:	00000003 	sra	zero,zero,0x0
9fc01b7c:	0000000e 	0xe
9fc01b80:	00000001 	0x1
9fc01b84:	0000000d 	break
9fc01b88:	00000002 	srl	zero,zero,0x0
9fc01b8c:	0000000d 	break

9fc01b90 <B_array>:
9fc01b90:	00000007 	srav	zero,zero,zero
9fc01b94:	0000000f 	0xf
9fc01b98:	00000006 	srlv	zero,zero,zero
9fc01b9c:	00000008 	jr	zero
9fc01ba0:	00000000 	nop
9fc01ba4:	00000006 	srlv	zero,zero,zero
9fc01ba8:	00000001 	0x1
9fc01bac:	0000000d 	break
9fc01bb0:	0000000e 	0xe
9fc01bb4:	00000008 	jr	zero
9fc01bb8:	00000003 	sra	zero,zero,0x0
9fc01bbc:	00000002 	srl	zero,zero,0x0
9fc01bc0:	00000001 	0x1
9fc01bc4:	00000005 	0x5
9fc01bc8:	0000000b 	0xb
9fc01bcc:	0000000d 	break
9fc01bd0:	00000005 	0x5
9fc01bd4:	0000000e 	0xe
9fc01bd8:	00000005 	0x5
9fc01bdc:	00000007 	srav	zero,zero,zero
9fc01be0:	00000002 	srl	zero,zero,0x0
9fc01be4:	0000000b 	0xb
9fc01be8:	00000007 	srav	zero,zero,zero
9fc01bec:	00000009 	jalr	zero,zero
9fc01bf0:	00000000 	nop
9fc01bf4:	0000000a 	0xa
9fc01bf8:	0000000d 	break
9fc01bfc:	00000000 	nop
9fc01c00:	00000008 	jr	zero
9fc01c04:	00000004 	sllv	zero,zero,zero
9fc01c08:	00000003 	sra	zero,zero,0x0
9fc01c0c:	00000003 	sra	zero,zero,0x0
9fc01c10:	00000002 	srl	zero,zero,0x0
9fc01c14:	00000004 	sllv	zero,zero,zero
9fc01c18:	0000000a 	0xa
9fc01c1c:	00000006 	srlv	zero,zero,zero
9fc01c20:	00000008 	jr	zero
9fc01c24:	00000001 	0x1
9fc01c28:	00000003 	sra	zero,zero,0x0
9fc01c2c:	0000000e 	0xe
9fc01c30:	00000006 	srlv	zero,zero,zero
9fc01c34:	0000000a 	0xa
9fc01c38:	00000004 	sllv	zero,zero,zero
9fc01c3c:	00000004 	sllv	zero,zero,zero
9fc01c40:	00000007 	srav	zero,zero,zero
9fc01c44:	00000005 	0x5
9fc01c48:	00000000 	nop
9fc01c4c:	0000000f 	0xf
9fc01c50:	00000007 	srav	zero,zero,zero
9fc01c54:	0000000b 	0xb
9fc01c58:	00000007 	srav	zero,zero,zero
9fc01c5c:	00000000 	nop
9fc01c60:	0000000c 	syscall
9fc01c64:	0000000f 	0xf
9fc01c68:	0000000a 	0xa
9fc01c6c:	00000007 	srav	zero,zero,zero
9fc01c70:	0000000a 	0xa
9fc01c74:	00000006 	srlv	zero,zero,zero
9fc01c78:	00000004 	sllv	zero,zero,zero
9fc01c7c:	0000000a 	0xa
9fc01c80:	00000004 	sllv	zero,zero,zero
9fc01c84:	00000003 	sra	zero,zero,0x0
9fc01c88:	00000004 	sllv	zero,zero,zero
9fc01c8c:	0000000c 	syscall
9fc01c90:	0000000a 	0xa
9fc01c94:	0000000c 	syscall
9fc01c98:	00000003 	sra	zero,zero,0x0
9fc01c9c:	00000007 	srav	zero,zero,zero
9fc01ca0:	00000008 	jr	zero
9fc01ca4:	00000000 	nop
9fc01ca8:	0000000d 	break
9fc01cac:	00000008 	jr	zero
9fc01cb0:	00000005 	0x5
9fc01cb4:	00000005 	0x5
9fc01cb8:	0000000c 	syscall
9fc01cbc:	0000000e 	0xe
9fc01cc0:	00000003 	sra	zero,zero,0x0
9fc01cc4:	0000000e 	0xe
9fc01cc8:	00000003 	sra	zero,zero,0x0
9fc01ccc:	0000000d 	break
9fc01cd0:	00000007 	srav	zero,zero,zero
9fc01cd4:	0000000a 	0xa
9fc01cd8:	0000000f 	0xf
9fc01cdc:	0000000a 	0xa
9fc01ce0:	0000000a 	0xa
9fc01ce4:	00000008 	jr	zero
9fc01ce8:	00000006 	srlv	zero,zero,zero
9fc01cec:	00000004 	sllv	zero,zero,zero
9fc01cf0:	00000006 	srlv	zero,zero,zero
9fc01cf4:	00000005 	0x5
9fc01cf8:	00000007 	srav	zero,zero,zero
9fc01cfc:	00000005 	0x5
9fc01d00:	00000003 	sra	zero,zero,0x0
9fc01d04:	0000000a 	0xa
9fc01d08:	0000000a 	0xa
9fc01d0c:	0000000a 	0xa
9fc01d10:	00000006 	srlv	zero,zero,zero
9fc01d14:	00000003 	sra	zero,zero,0x0
9fc01d18:	00000001 	0x1
9fc01d1c:	00000008 	jr	zero
9fc01d20:	00000007 	srav	zero,zero,zero
9fc01d24:	0000000d 	break
9fc01d28:	00000003 	sra	zero,zero,0x0
9fc01d2c:	00000004 	sllv	zero,zero,zero
9fc01d30:	00000008 	jr	zero
9fc01d34:	00000006 	srlv	zero,zero,zero
9fc01d38:	00000004 	sllv	zero,zero,zero
9fc01d3c:	00000008 	jr	zero
9fc01d40:	00000000 	nop
9fc01d44:	0000000d 	break
9fc01d48:	0000000f 	0xf
9fc01d4c:	00000007 	srav	zero,zero,zero
9fc01d50:	00000005 	0x5
9fc01d54:	0000000f 	0xf
9fc01d58:	00000004 	sllv	zero,zero,zero
9fc01d5c:	0000000c 	syscall
9fc01d60:	0000000a 	0xa
9fc01d64:	00000009 	jalr	zero,zero
9fc01d68:	00000006 	srlv	zero,zero,zero
9fc01d6c:	0000000a 	0xa
9fc01d70:	00000002 	srl	zero,zero,0x0
9fc01d74:	0000000b 	0xb
9fc01d78:	0000000e 	0xe
9fc01d7c:	00000007 	srav	zero,zero,zero
9fc01d80:	00000004 	sllv	zero,zero,zero
9fc01d84:	00000005 	0x5
9fc01d88:	00000003 	sra	zero,zero,0x0
9fc01d8c:	00000002 	srl	zero,zero,0x0
9fc01d90:	0000000d 	break
9fc01d94:	00000003 	sra	zero,zero,0x0
9fc01d98:	0000000a 	0xa
9fc01d9c:	00000003 	sra	zero,zero,0x0
9fc01da0:	00000008 	jr	zero
9fc01da4:	0000000d 	break
9fc01da8:	00000005 	0x5
9fc01dac:	00000007 	srav	zero,zero,zero
9fc01db0:	00000006 	srlv	zero,zero,zero
9fc01db4:	0000000f 	0xf
9fc01db8:	0000000a 	0xa
9fc01dbc:	00000000 	nop
9fc01dc0:	0000000a 	0xa
9fc01dc4:	0000000d 	break
9fc01dc8:	00000005 	0x5
9fc01dcc:	0000000f 	0xf
9fc01dd0:	00000005 	0x5
9fc01dd4:	0000000a 	0xa
9fc01dd8:	00000001 	0x1
9fc01ddc:	0000000c 	syscall
9fc01de0:	0000000c 	syscall
9fc01de4:	00000003 	sra	zero,zero,0x0
9fc01de8:	00000006 	srlv	zero,zero,zero
9fc01dec:	00000003 	sra	zero,zero,0x0
9fc01df0:	0000000f 	0xf
9fc01df4:	0000000d 	break
9fc01df8:	0000000f 	0xf
9fc01dfc:	00000001 	0x1
9fc01e00:	0000000e 	0xe
9fc01e04:	0000000d 	break
9fc01e08:	00000007 	srav	zero,zero,zero
9fc01e0c:	0000000c 	syscall
9fc01e10:	0000000e 	0xe
9fc01e14:	00000003 	sra	zero,zero,0x0
9fc01e18:	0000000a 	0xa
9fc01e1c:	0000000e 	0xe
9fc01e20:	00000003 	sra	zero,zero,0x0
9fc01e24:	00000004 	sllv	zero,zero,zero
9fc01e28:	00000007 	srav	zero,zero,zero
9fc01e2c:	00000002 	srl	zero,zero,0x0
9fc01e30:	0000000c 	syscall
9fc01e34:	00000007 	srav	zero,zero,zero
9fc01e38:	00000002 	srl	zero,zero,0x0
9fc01e3c:	00000006 	srlv	zero,zero,zero
9fc01e40:	0000000d 	break
9fc01e44:	00000009 	jalr	zero,zero
9fc01e48:	00000009 	jalr	zero,zero
9fc01e4c:	0000000c 	syscall
9fc01e50:	00000009 	jalr	zero,zero
9fc01e54:	00000002 	srl	zero,zero,0x0
9fc01e58:	00000007 	srav	zero,zero,zero
9fc01e5c:	00000001 	0x1
9fc01e60:	00000001 	0x1
9fc01e64:	00000006 	srlv	zero,zero,zero
9fc01e68:	0000000b 	0xb
9fc01e6c:	00000005 	0x5
9fc01e70:	00000007 	srav	zero,zero,zero
9fc01e74:	0000000e 	0xe
9fc01e78:	00000007 	srav	zero,zero,zero
9fc01e7c:	0000000c 	syscall
9fc01e80:	00000005 	0x5
9fc01e84:	0000000d 	break
9fc01e88:	0000000a 	0xa
9fc01e8c:	00000000 	nop
9fc01e90:	00000005 	0x5
9fc01e94:	00000008 	jr	zero
9fc01e98:	0000000c 	syscall
9fc01e9c:	0000000c 	syscall
9fc01ea0:	0000000d 	break
9fc01ea4:	00000001 	0x1
9fc01ea8:	00000006 	srlv	zero,zero,zero
9fc01eac:	00000001 	0x1
9fc01eb0:	00000005 	0x5
9fc01eb4:	00000009 	jalr	zero,zero
9fc01eb8:	00000002 	srl	zero,zero,0x0
9fc01ebc:	0000000c 	syscall
9fc01ec0:	00000009 	jalr	zero,zero
9fc01ec4:	00000003 	sra	zero,zero,0x0
9fc01ec8:	00000008 	jr	zero
9fc01ecc:	0000000b 	0xb
9fc01ed0:	00000007 	srav	zero,zero,zero
9fc01ed4:	00000005 	0x5
9fc01ed8:	00000003 	sra	zero,zero,0x0
9fc01edc:	00000003 	sra	zero,zero,0x0
9fc01ee0:	0000000c 	syscall
9fc01ee4:	00000008 	jr	zero
9fc01ee8:	0000000e 	0xe
9fc01eec:	0000000e 	0xe
9fc01ef0:	0000000d 	break
9fc01ef4:	00000001 	0x1
9fc01ef8:	00000000 	nop
9fc01efc:	0000000b 	0xb
9fc01f00:	0000000d 	break
9fc01f04:	00000008 	jr	zero
9fc01f08:	00000009 	jalr	zero,zero
9fc01f0c:	00000008 	jr	zero
9fc01f10:	0000000f 	0xf
9fc01f14:	0000000c 	syscall
9fc01f18:	00000004 	sllv	zero,zero,zero
9fc01f1c:	00000003 	sra	zero,zero,0x0
9fc01f20:	00000004 	sllv	zero,zero,zero
9fc01f24:	00000006 	srlv	zero,zero,zero
9fc01f28:	00000008 	jr	zero
9fc01f2c:	0000000a 	0xa
9fc01f30:	0000000d 	break
9fc01f34:	00000000 	nop
9fc01f38:	00000001 	0x1
9fc01f3c:	00000003 	sra	zero,zero,0x0
9fc01f40:	00000001 	0x1
9fc01f44:	00000002 	srl	zero,zero,0x0
9fc01f48:	00000000 	nop
9fc01f4c:	0000000d 	break
9fc01f50:	0000000c 	syscall
9fc01f54:	00000004 	sllv	zero,zero,zero
9fc01f58:	0000000d 	break
9fc01f5c:	00000001 	0x1
9fc01f60:	0000000f 	0xf
9fc01f64:	00000000 	nop
9fc01f68:	0000000b 	0xb
9fc01f6c:	00000003 	sra	zero,zero,0x0
9fc01f70:	0000000c 	syscall
9fc01f74:	00000008 	jr	zero
9fc01f78:	00000003 	sra	zero,zero,0x0
9fc01f7c:	0000000b 	0xb
9fc01f80:	0000000d 	break
9fc01f84:	00000009 	jalr	zero,zero
9fc01f88:	00000002 	srl	zero,zero,0x0
9fc01f8c:	0000000c 	syscall

9fc01f90 <C_ref_array>:
9fc01f90:	000004a6 	0x4a6
9fc01f94:	00000448 	0x448
9fc01f98:	0000036c 	0x36c
9fc01f9c:	000003a0 	0x3a0
9fc01fa0:	0000043f 	0x43f
9fc01fa4:	000003a6 	0x3a6
9fc01fa8:	0000043d 	0x43d
9fc01fac:	000003ef 	0x3ef
9fc01fb0:	000004a2 	0x4a2
9fc01fb4:	00000463 	0x463
9fc01fb8:	000003b6 	0x3b6
9fc01fbc:	0000036e 	0x36e
9fc01fc0:	00000422 	0x422
9fc01fc4:	0000048f 	0x48f
9fc01fc8:	000002fb 	0x2fb
9fc01fcc:	000005b6 	0x5b6
9fc01fd0:	000003c0 	sll	zero,zero,0xf
9fc01fd4:	000003a7 	0x3a7
9fc01fd8:	000002c6 	0x2c6
9fc01fdc:	00000241 	0x241
9fc01fe0:	00000342 	srl	zero,zero,0xd
9fc01fe4:	000002b9 	0x2b9
9fc01fe8:	0000038b 	0x38b
9fc01fec:	000003b5 	0x3b5
9fc01ff0:	00000401 	0x401
9fc01ff4:	000002e8 	0x2e8
9fc01ff8:	00000247 	0x247
9fc01ffc:	000002fd 	0x2fd
9fc02000:	00000304 	0x304
9fc02004:	00000333 	0x333
9fc02008:	00000234 	0x234
9fc0200c:	000004b8 	0x4b8
9fc02010:	0000036a 	0x36a
9fc02014:	00000383 	sra	zero,zero,0xe
9fc02018:	00000324 	0x324
9fc0201c:	00000312 	0x312
9fc02020:	000002b2 	0x2b2
9fc02024:	00000242 	srl	zero,zero,0x9
9fc02028:	000002c7 	0x2c7
9fc0202c:	000002fd 	0x2fd
9fc02030:	00000310 	0x310
9fc02034:	00000327 	0x327
9fc02038:	000002b3 	0x2b3
9fc0203c:	0000023c 	0x23c
9fc02040:	000002b7 	0x2b7
9fc02044:	00000308 	0x308
9fc02048:	00000203 	sra	zero,zero,0x8
9fc0204c:	0000041a 	0x41a
9fc02050:	0000047c 	0x47c
9fc02054:	000004bc 	0x4bc
9fc02058:	00000348 	0x348
9fc0205c:	00000385 	0x385
9fc02060:	000003d5 	0x3d5
9fc02064:	0000039c 	0x39c
9fc02068:	000003e0 	0x3e0
9fc0206c:	00000390 	0x390
9fc02070:	000004a1 	0x4a1
9fc02074:	00000450 	0x450
9fc02078:	000003c8 	0x3c8
9fc0207c:	00000317 	0x317
9fc02080:	0000037d 	0x37d
9fc02084:	00000434 	0x434
9fc02088:	00000316 	0x316
9fc0208c:	000004d0 	0x4d0
9fc02090:	00000493 	0x493
9fc02094:	00000531 	0x531
9fc02098:	000003cb 	0x3cb
9fc0209c:	000003df 	0x3df
9fc020a0:	00000474 	0x474
9fc020a4:	000003ae 	0x3ae
9fc020a8:	000003e2 	0x3e2
9fc020ac:	0000040e 	0x40e
9fc020b0:	000004f8 	0x4f8
9fc020b4:	00000413 	0x413
9fc020b8:	0000035c 	0x35c
9fc020bc:	00000362 	0x362
9fc020c0:	00000383 	sra	zero,zero,0xe
9fc020c4:	00000415 	0x415
9fc020c8:	00000365 	0x365
9fc020cc:	000005f9 	0x5f9
9fc020d0:	000002c2 	srl	zero,zero,0xb
9fc020d4:	000002a8 	0x2a8
9fc020d8:	000002a8 	0x2a8
9fc020dc:	000002a1 	0x2a1
9fc020e0:	000002c4 	0x2c4
9fc020e4:	000001ea 	0x1ea
9fc020e8:	0000025a 	0x25a
9fc020ec:	00000240 	sll	zero,zero,0x9
9fc020f0:	00000256 	0x256
9fc020f4:	00000374 	0x374
9fc020f8:	00000282 	srl	zero,zero,0xa
9fc020fc:	00000287 	0x287
9fc02100:	00000263 	0x263
9fc02104:	000002d8 	0x2d8
9fc02108:	000001fd 	0x1fd
9fc0210c:	0000033e 	0x33e
9fc02110:	00000493 	0x493
9fc02114:	00000483 	sra	zero,zero,0x12
9fc02118:	0000045e 	0x45e
9fc0211c:	000003ab 	0x3ab
9fc02120:	0000046a 	0x46a
9fc02124:	00000343 	sra	zero,zero,0xd
9fc02128:	00000455 	0x455
9fc0212c:	00000404 	0x404
9fc02130:	000004a0 	0x4a0
9fc02134:	00000464 	0x464
9fc02138:	00000322 	0x322
9fc0213c:	00000457 	0x457
9fc02140:	000003c3 	sra	zero,zero,0xf
9fc02144:	00000469 	0x469
9fc02148:	00000368 	0x368
9fc0214c:	000005ec 	0x5ec
9fc02150:	00000382 	srl	zero,zero,0xe
9fc02154:	00000333 	0x333
9fc02158:	00000343 	sra	zero,zero,0xd
9fc0215c:	00000261 	0x261
9fc02160:	0000043c 	0x43c
9fc02164:	0000026c 	0x26c
9fc02168:	000003cd 	break	0x0,0xf
9fc0216c:	00000338 	0x338
9fc02170:	00000421 	0x421
9fc02174:	000003ad 	0x3ad
9fc02178:	00000280 	sll	zero,zero,0xa
9fc0217c:	0000039c 	0x39c
9fc02180:	000003be 	0x3be
9fc02184:	00000395 	0x395
9fc02188:	00000260 	0x260
9fc0218c:	000004cf 	0x4cf
9fc02190:	00000332 	0x332
9fc02194:	0000036d 	0x36d
9fc02198:	00000302 	srl	zero,zero,0xc
9fc0219c:	000001fe 	0x1fe
9fc021a0:	0000030e 	0x30e
9fc021a4:	00000281 	0x281
9fc021a8:	000002ec 	0x2ec
9fc021ac:	000002b7 	0x2b7
9fc021b0:	0000030b 	0x30b
9fc021b4:	0000035e 	0x35e
9fc021b8:	000002ad 	0x2ad
9fc021bc:	000002bb 	0x2bb
9fc021c0:	00000262 	0x262
9fc021c4:	00000330 	0x330
9fc021c8:	00000225 	0x225
9fc021cc:	000003fa 	0x3fa
9fc021d0:	000003b8 	0x3b8
9fc021d4:	000003d8 	0x3d8
9fc021d8:	000003a2 	0x3a2
9fc021dc:	00000333 	0x333
9fc021e0:	000003a8 	0x3a8
9fc021e4:	0000034f 	0x34f
9fc021e8:	000003bb 	0x3bb
9fc021ec:	000003e6 	0x3e6
9fc021f0:	0000045f 	0x45f
9fc021f4:	000003b9 	0x3b9
9fc021f8:	00000265 	0x265
9fc021fc:	000003c0 	sll	zero,zero,0xf
9fc02200:	0000033b 	0x33b
9fc02204:	000003c6 	0x3c6
9fc02208:	00000387 	0x387
9fc0220c:	000004d2 	0x4d2
9fc02210:	00000334 	0x334
9fc02214:	000002f0 	0x2f0
9fc02218:	000002c4 	0x2c4
9fc0221c:	0000031a 	0x31a
9fc02220:	00000368 	0x368
9fc02224:	000002cf 	0x2cf
9fc02228:	00000304 	0x304
9fc0222c:	00000322 	0x322
9fc02230:	00000358 	0x358
9fc02234:	00000385 	0x385
9fc02238:	00000297 	0x297
9fc0223c:	000002b4 	0x2b4
9fc02240:	00000353 	0x353
9fc02244:	0000038c 	syscall	0xe
9fc02248:	000002c8 	0x2c8
9fc0224c:	00000446 	0x446
9fc02250:	00000577 	0x577
9fc02254:	00000530 	0x530
9fc02258:	000003f6 	0x3f6
9fc0225c:	00000451 	0x451
9fc02260:	000004fa 	0x4fa
9fc02264:	0000043f 	0x43f
9fc02268:	00000492 	0x492
9fc0226c:	00000436 	0x436
9fc02270:	000005c7 	0x5c7
9fc02274:	000004c5 	0x4c5
9fc02278:	000003cc 	syscall	0xf
9fc0227c:	0000042b 	0x42b
9fc02280:	0000041d 	0x41d
9fc02284:	0000052c 	0x52c
9fc02288:	0000041d 	0x41d
9fc0228c:	0000068c 	syscall	0x1a
9fc02290:	00000229 	0x229
9fc02294:	00000244 	0x244
9fc02298:	00000233 	0x233
9fc0229c:	0000028d 	break	0x0,0xa
9fc022a0:	0000026a 	0x26a
9fc022a4:	00000179 	0x179
9fc022a8:	00000219 	0x219
9fc022ac:	000001e5 	0x1e5
9fc022b0:	000002d2 	0x2d2
9fc022b4:	00000282 	srl	zero,zero,0xa
9fc022b8:	000001b4 	0x1b4
9fc022bc:	00000201 	0x201
9fc022c0:	00000295 	0x295
9fc022c4:	0000026c 	0x26c
9fc022c8:	00000243 	sra	zero,zero,0x9
9fc022cc:	000002f2 	0x2f2
9fc022d0:	000003ef 	0x3ef
9fc022d4:	00000446 	0x446
9fc022d8:	000002f8 	0x2f8
9fc022dc:	0000036d 	0x36d
9fc022e0:	000003f5 	0x3f5
9fc022e4:	0000037f 	0x37f
9fc022e8:	000003a2 	0x3a2
9fc022ec:	00000450 	0x450
9fc022f0:	000004c2 	srl	zero,zero,0x13
9fc022f4:	0000046e 	0x46e
9fc022f8:	00000393 	0x393
9fc022fc:	00000318 	0x318
9fc02300:	000003a9 	0x3a9
9fc02304:	0000047f 	0x47f
9fc02308:	00000358 	0x358
9fc0230c:	0000051f 	0x51f
9fc02310:	000004ba 	0x4ba
9fc02314:	0000056c 	0x56c
9fc02318:	00000358 	0x358
9fc0231c:	000003f0 	0x3f0
9fc02320:	00000475 	0x475
9fc02324:	000003fb 	0x3fb
9fc02328:	00000494 	0x494
9fc0232c:	0000047f 	0x47f
9fc02330:	00000529 	0x529
9fc02334:	0000049e 	0x49e
9fc02338:	000003f3 	0x3f3
9fc0233c:	000003f7 	0x3f7
9fc02340:	000003f8 	0x3f8
9fc02344:	000004a6 	0x4a6
9fc02348:	000003ca 	0x3ca
9fc0234c:	0000057d 	0x57d
9fc02350:	00000473 	0x473
9fc02354:	00000443 	sra	zero,zero,0x11
9fc02358:	000003f5 	0x3f5
9fc0235c:	000002f2 	0x2f2
9fc02360:	0000048d 	break	0x0,0x12
9fc02364:	00000457 	0x457
9fc02368:	0000045c 	0x45c
9fc0236c:	000003d7 	0x3d7
9fc02370:	00000462 	0x462
9fc02374:	00000490 	0x490
9fc02378:	000003b9 	0x3b9
9fc0237c:	000003c6 	0x3c6
9fc02380:	000003b7 	0x3b7
9fc02384:	000004c8 	0x4c8
9fc02388:	0000038d 	break	0x0,0xe
9fc0238c:	000004e3 	0x4e3

9fc02390 <__CTOR_LIST__>:
	...

9fc02398 <__CTOR_END__>:
	...

Disassembly of section .bss:

9fc023a0 <C_array>:
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x1c
   4:	00000002 	srl	zero,zero,0x0
   8:	00040000 	sll	zero,a0,0x0
   c:	00000000 	nop
  10:	9fc00ff0 	0x9fc00ff0
  14:	00000250 	0x250
	...
  20:	0000001c 	0x1c
  24:	00cd0002 	0xcd0002
  28:	00040000 	sll	zero,a0,0x0
  2c:	00000000 	nop
  30:	9fc01240 	0x9fc01240
  34:	00000034 	0x34
	...
  40:	0000001c 	0x1c
  44:	01590002 	0x1590002
  48:	00040000 	sll	zero,a0,0x0
  4c:	00000000 	nop
  50:	9fc01280 	0x9fc01280
  54:	000000b8 	0xb8
	...
  60:	0000001c 	0x1c
  64:	02080002 	0x2080002
  68:	00040000 	sll	zero,a0,0x0
  6c:	00000000 	nop
  70:	9fc01340 	0x9fc01340
  74:	00000100 	sll	zero,zero,0x4
	...
  80:	0000001c 	0x1c
  84:	03030002 	0x3030002
  88:	00040000 	sll	zero,a0,0x0
  8c:	00000000 	nop
  90:	9fc01440 	0x9fc01440
  94:	00000148 	0x148
	...

Disassembly of section .debug_pubnames:

00000000 <.debug_pubnames>:
   0:	00000019 	multu	zero,zero
   4:	00000002 	srl	zero,zero,0x0
   8:	00cd0000 	0xcd0000
   c:	00350000 	0x350000
  10:	72700000 	0x72700000
  14:	66746e69 	0x66746e69
  18:	00000000 	nop
  1c:	00002a00 	sll	a1,zero,0x8
  20:	cd000200 	lwc3	$0,512(t0)
  24:	8c000000 	lw	zero,0(zero)
  28:	33000000 	andi	zero,t8,0x0
  2c:	74000000 	jalx	0 <data_size-0xe10>
  30:	705f7467 	0x705f7467
  34:	68637475 	0x68637475
  38:	60007261 	0x60007261
  3c:	70000000 	0x70000000
  40:	68637475 	0x68637475
  44:	00007261 	0x7261
  48:	25000000 	addiu	zero,t0,0
  4c:	02000000 	0x2000000
  50:	00015900 	sll	t3,at,0x4
  54:	0000af00 	sll	s5,zero,0x1c
  58:	00003300 	sll	a2,zero,0xc
  5c:	74757000 	jalx	1d5c000 <data_size+0x1d5b1f0>
  60:	69727473 	0x69727473
  64:	8300676e 	lb	zero,26478(t8)
  68:	70000000 	0x70000000
  6c:	00737475 	0x737475
  70:	00000000 	nop
  74:	0000001c 	0x1c
  78:	02080002 	0x2080002
  7c:	00fb0000 	0xfb0000
  80:	00330000 	0x330000
  84:	72700000 	0x72700000
  88:	62746e69 	0x62746e69
  8c:	00657361 	0x657361
  90:	00000000 	nop
  94:	00000072 	0x72
  98:	03030002 	0x3030002
  9c:	023b0000 	0x23b0000
  a0:	00a70000 	0xa70000
  a4:	675f0000 	0x675f0000
  a8:	635f7465 	0x635f7465
  ac:	746e756f 	jalx	1b9d5bc <data_size+0x1b9c7ac>
  b0:	0000c400 	sll	t8,zero,0x10
  b4:	74656700 	jalx	1959c00 <data_size+0x1958df0>
  b8:	756f635f 	jalx	5bd8d7c <data_size+0x5bd7f6c>
  bc:	de00746e 	0xde00746e
  c0:	67000000 	0x67000000
  c4:	635f7465 	0x635f7465
  c8:	746e756f 	jalx	1b9d5bc <data_size+0x1b9c7ac>
  cc:	00796d5f 	0x796d5f
  d0:	0000010a 	0x10a
  d4:	5f746567 	0x5f746567
  d8:	636f6c63 	0x636f6c63
  dc:	0132006b 	0x132006b
  e0:	65670000 	0x65670000
  e4:	736e5f74 	0x736e5f74
  e8:	00017e00 	sll	t7,at,0x18
  ec:	74656700 	jalx	1959c00 <data_size+0x1958df0>
  f0:	0073755f 	0x73755f
  f4:	000001c8 	0x1c8
  f8:	636f6c63 	0x636f6c63
  fc:	65675f6b 	0x65675f6b
 100:	6d697474 	0x6d697474
 104:	00000065 	0x65
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	9fc003c0 	0x9fc003c0
   4:	800f0000 	lb	t7,0(zero)
   8:	fffffffc 	0xfffffffc
	...
  14:	00000028 	0x28
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	9fc004a0 	0x9fc004a0
  24:	40ff0000 	0x40ff0000
  28:	fffffffc 	0xfffffffc
	...
  34:	00000030 	0x30
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	9fc007c0 	0x9fc007c0
  44:	40ff0000 	0x40ff0000
  48:	fffffffc 	0xfffffffc
	...
  54:	00000070 	0x70
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	9fc00bb0 	0x9fc00bb0
  64:	c0ff0000 	lwc0	$31,0(a3)
  68:	fffffffc 	0xfffffffc
	...
  74:	00000068 	0x68
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	9fc00ff0 	0x9fc00ff0
  84:	807f0000 	lb	ra,0(v1)
  88:	fffffffc 	0xfffffffc
	...
  94:	00000038 	0x38
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	9fc01240 	0x9fc01240
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	9fc01254 	0x9fc01254
  c4:	80000000 	lb	zero,0(zero)
  c8:	fffffffc 	0xfffffffc
	...
  d4:	00000018 	mult	zero,zero
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	9fc01280 	0x9fc01280
  e4:	80070000 	lb	a3,0(zero)
  e8:	fffffffc 	0xfffffffc
	...
  f4:	00000020 	add	zero,zero,zero
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f
 100:	9fc01308 	0x9fc01308
 104:	80000000 	lb	zero,0(zero)
 108:	fffffffc 	0xfffffffc
	...
 114:	00000018 	mult	zero,zero
 118:	0000001d 	0x1d
 11c:	0000001f 	0x1f
 120:	9fc01340 	0x9fc01340
 124:	800f0000 	lb	t7,0(zero)
 128:	fffffffc 	0xfffffffc
	...
 134:	00000068 	0x68
 138:	0000001d 	0x1d
 13c:	0000001f 	0x1f
 140:	9fc01440 	0x9fc01440
	...
 158:	0000001d 	0x1d
 15c:	0000001f 	0x1f
 160:	9fc01450 	0x9fc01450
	...
 178:	0000001d 	0x1d
 17c:	0000001f 	0x1f
 180:	9fc01460 	0x9fc01460
	...
 198:	0000001d 	0x1d
 19c:	0000001f 	0x1f
 1a0:	9fc0146c 	0x9fc0146c
	...
 1b8:	0000001d 	0x1d
 1bc:	0000001f 	0x1f
 1c0:	9fc0147c 	0x9fc0147c
	...
 1d8:	0000001d 	0x1d
 1dc:	0000001f 	0x1f
 1e0:	9fc01498 	0x9fc01498
	...
 1f8:	0000001d 	0x1d
 1fc:	0000001f 	0x1f
 200:	9fc014bc 	0x9fc014bc
 204:	80000000 	lb	zero,0(zero)
 208:	fffffffc 	0xfffffffc
	...
 214:	00000018 	mult	zero,zero
 218:	0000001d 	0x1d
 21c:	0000001f 	0x1f

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	c0	0x1434700
   4:	4728203a 	c1	0x128203a
   8:	2029554e 	addi	t1,at,21838
   c:	2e332e34 	sltiu	s3,s1,11828
  10:	47000030 	c1	0x1000030
  14:	203a4343 	addi	k0,at,17219
  18:	554e4728 	0x554e4728
  1c:	2e342029 	sltiu	s4,s1,8233
  20:	00302e33 	0x302e33
  24:	43434700 	c0	0x1434700
  28:	4728203a 	c1	0x128203a
  2c:	2029554e 	addi	t1,at,21838
  30:	2e332e34 	sltiu	s3,s1,11828
  34:	47000030 	c1	0x1000030
  38:	203a4343 	addi	k0,at,17219
  3c:	554e4728 	0x554e4728
  40:	2e342029 	sltiu	s4,s1,8233
  44:	00302e33 	0x302e33
  48:	43434700 	c0	0x1434700
  4c:	4728203a 	c1	0x128203a
  50:	2029554e 	addi	t1,at,21838
  54:	2e332e34 	sltiu	s3,s1,11828
  58:	47000030 	c1	0x1000030
  5c:	203a4343 	addi	k0,at,17219
  60:	554e4728 	0x554e4728
  64:	2e342029 	sltiu	s4,s1,8233
  68:	00302e33 	0x302e33
  6c:	43434700 	c0	0x1434700
  70:	4728203a 	c1	0x128203a
  74:	2029554e 	addi	t1,at,21838
  78:	2e332e34 	sltiu	s3,s1,11828
  7c:	Address 0x000000000000007c is out of bounds.


Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	00000f41 	0xf41
   4:	756e6700 	jalx	5b99c00 <data_size+0x5b98df0>
   8:	00070100 	sll	zero,a3,0x4
   c:	03040000 	0x3040000

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	addiu	at,t0,4353
   4:	030b130e 	0x30b130e
   8:	110e1b0e 	beq	t0,t6,6c44 <data_size+0x5e34>
   c:	10011201 	beq	zero,at,4814 <data_size+0x3a04>
  10:	02000006 	srlv	zero,zero,s0
  14:	0b0b000f 	j	c2c003c <data_size+0xc2bf22c>
  18:	24030000 	li	v1,0
  1c:	3e0b0b00 	0x3e0b0b00
  20:	000e030b 	0xe030b
  24:	012e0400 	0x12e0400
  28:	0e030c3f 	jal	80c30fc <data_size+0x80c22ec>
  2c:	0b3b0b3a 	j	cec2ce8 <data_size+0xcec1ed8>
  30:	13490c27 	beq	k0,t1,30d0 <data_size+0x22c0>
  34:	01120111 	0x1120111
  38:	40064081 	0x40064081
  3c:	00130106 	0x130106
  40:	00050500 	sll	zero,a1,0x14
  44:	0b3a0803 	j	ce8200c <data_size+0xce811fc>
  48:	13490b3b 	beq	k0,t1,2d38 <data_size+0x1f28>
  4c:	00000602 	srl	zero,zero,0x18
  50:	00001806 	srlv	v1,zero,zero
  54:	00340700 	0x340700
  58:	0b3a0803 	j	ce8200c <data_size+0xce811fc>
  5c:	13490b3b 	beq	k0,t1,2d4c <data_size+0x1f3c>
  60:	00000602 	srl	zero,zero,0x18
  64:	03003408 	0x3003408
  68:	3b0b3a08 	xori	t3,t8,0x3a08
  6c:	0013490b 	0x13490b
  70:	00340900 	0x340900
  74:	0b3a0803 	j	ce8200c <data_size+0xce811fc>
  78:	13490b3b 	beq	k0,t1,2d68 <data_size+0x1f58>
  7c:	00000a02 	srl	at,zero,0x8
  80:	03000a0a 	0x3000a0a
  84:	3b0b3a0e 	xori	t3,t8,0x3a0e
  88:	0b00000b 	j	c00002c <data_size+0xbfff21c>
  8c:	0b0b0024 	j	c2c0090 <data_size+0xc2bf280>
  90:	08030b3e 	j	c2cf8 <data_size+0xc1ee8>
  94:	0f0c0000 	jal	c300000 <data_size+0xc2ff1f0>
  98:	490b0b00 	0x490b0b00
  9c:	0d000013 	jal	400004c <data_size+0x3fff23c>
  a0:	13490026 	beq	k0,t1,13c <data_size-0xcd4>
  a4:	01000000 	0x1000000
  a8:	0e250111 	jal	8940444 <data_size+0x893f634>
  ac:	0e030b13 	jal	80c2c4c <data_size+0x80c1e3c>
  b0:	01110e1b 	0x1110e1b
  b4:	06100112 	bltzal	s0,500 <data_size-0x910>
  b8:	24020000 	li	v0,0
  bc:	3e0b0b00 	0x3e0b0b00
  c0:	000e030b 	0xe030b
  c4:	012e0300 	0x12e0300
  c8:	0e030c3f 	jal	80c30fc <data_size+0x80c22ec>
  cc:	0b3b0b3a 	j	cec2ce8 <data_size+0xcec1ed8>
  d0:	01120111 	0x1120111
  d4:	40064081 	0x40064081
  d8:	0013010a 	0x13010a
  dc:	00050400 	sll	zero,a1,0x10
  e0:	0b3a0803 	j	ce8200c <data_size+0xce811fc>
  e4:	13490b3b 	beq	k0,t1,2dd4 <data_size+0x1fc4>
  e8:	00000a02 	srl	at,zero,0x8
  ec:	0b002405 	j	c009014 <data_size+0xc008204>
  f0:	030b3e0b 	0x30b3e0b
  f4:	06000008 	bltz	s0,118 <data_size-0xcf8>
  f8:	0c3f012e 	jal	fc04b8 <data_size+0xfbf6a8>
  fc:	0b3a0e03 	j	ce8380c <data_size+0xce829fc>
 100:	0c270b3b 	jal	9c2cec <data_size+0x9c1edc>
 104:	01111349 	0x1111349
 108:	40810112 	0x40810112
 10c:	00064006 	srlv	t0,a2,zero
 110:	00050700 	sll	zero,a1,0x1c
 114:	0b3a0803 	j	ce8200c <data_size+0xce811fc>
 118:	13490b3b 	beq	k0,t1,2e08 <data_size+0x1ff8>
 11c:	00000602 	srl	zero,zero,0x18
 120:	01110100 	0x1110100
 124:	0b130e25 	j	c4c3894 <data_size+0xc4c2a84>
 128:	0e1b0e03 	jal	86c380c <data_size+0x86c29fc>
 12c:	01120111 	0x1120111
 130:	00000610 	0x610
 134:	0b002402 	j	c009008 <data_size+0xc0081f8>
 138:	030b3e0b 	0x30b3e0b
 13c:	0300000e 	0x300000e
 140:	0c3f012e 	jal	fc04b8 <data_size+0xfbf6a8>
 144:	0b3a0e03 	j	ce8380c <data_size+0xce829fc>
 148:	0c270b3b 	jal	9c2cec <data_size+0x9c1edc>
 14c:	01111349 	0x1111349
 150:	40810112 	0x40810112
 154:	01064006 	srlv	t0,a2,t0
 158:	04000013 	bltz	zero,1a8 <data_size-0xc68>
 15c:	08030005 	j	c0014 <data_size+0xbf204>
 160:	0b3b0b3a 	j	cec2ce8 <data_size+0xcec1ed8>
 164:	06021349 	0x6021349
 168:	34050000 	li	a1,0x0
 16c:	3a080300 	xori	t0,s0,0x300
 170:	490b3b0b 	0x490b3b0b
 174:	00060213 	0x60213
 178:	00240600 	0x240600
 17c:	0b3e0b0b 	j	cf82c2c <data_size+0xcf81e1c>
 180:	00000803 	sra	at,zero,0x0
 184:	0b000f07 	j	c003c1c <data_size+0xc002e0c>
 188:	0013490b 	0x13490b
 18c:	012e0800 	0x12e0800
 190:	0e030c3f 	jal	80c30fc <data_size+0x80c22ec>
 194:	0b3b0b3a 	j	cec2ce8 <data_size+0xcec1ed8>
 198:	13490c27 	beq	k0,t1,3238 <data_size+0x2428>
 19c:	01120111 	0x1120111
 1a0:	40064081 	0x40064081
 1a4:	00000006 	srlv	zero,zero,zero
 1a8:	25011101 	addiu	at,t0,4353
 1ac:	030b130e 	0x30b130e
 1b0:	110e1b0e 	beq	t0,t6,6dec <data_size+0x5fdc>
 1b4:	10011201 	beq	zero,at,49bc <data_size+0x3bac>
 1b8:	02000006 	srlv	zero,zero,s0
 1bc:	0b0b0024 	j	c2c0090 <data_size+0xc2bf280>
 1c0:	0e030b3e 	jal	80c2cf8 <data_size+0x80c1ee8>
 1c4:	2e030000 	sltiu	v1,s0,0
 1c8:	030c3f01 	0x30c3f01
 1cc:	3b0b3a0e 	xori	t3,t8,0x3a0e
 1d0:	490c270b 	0x490c270b
 1d4:	12011113 	beq	s0,at,4624 <data_size+0x3814>
 1d8:	06408101 	bltz	s2,fffe05e0 <_stack+0x603cee74>
 1dc:	13010640 	beq	t8,at,1ae0 <data_size+0xcd0>
 1e0:	05040000 	0x5040000
 1e4:	3a080300 	xori	t0,s0,0x300
 1e8:	490b3b0b 	0x490b3b0b
 1ec:	00060213 	0x60213
 1f0:	00050500 	sll	zero,a1,0x14
 1f4:	0b3a0e03 	j	ce8380c <data_size+0xce829fc>
 1f8:	13490b3b 	beq	k0,t1,2ee8 <data_size+0x20d8>
 1fc:	00000602 	srl	zero,zero,0x18
 200:	03003406 	0x3003406
 204:	3b0b3a08 	xori	t3,t8,0x3a08
 208:	0213490b 	0x213490b
 20c:	07000006 	bltz	t8,228 <data_size-0xbe8>
 210:	08030034 	j	c00d0 <data_size+0xbf2c0>
 214:	0b3b0b3a 	j	cec2ce8 <data_size+0xcec1ed8>
 218:	0a021349 	j	8084d24 <data_size+0x8083f14>
 21c:	34080000 	li	t0,0x0
 220:	3a0e0300 	xori	t6,s0,0x300
 224:	490b3b0b 	0x490b3b0b
 228:	00060213 	0x60213
 22c:	00240900 	0x240900
 230:	0b3e0b0b 	j	cf82c2c <data_size+0xcf81e1c>
 234:	00000803 	sra	at,zero,0x0
 238:	4901010a 	bc2t	664 <data_size-0x7ac>
 23c:	00130113 	0x130113
 240:	00210b00 	0x210b00
 244:	0b2f1349 	j	cbc4d24 <data_size+0xcbc3f14>
 248:	240c0000 	li	t4,0
 24c:	3e0b0b00 	0x3e0b0b00
 250:	0000000b 	0xb
 254:	25011101 	addiu	at,t0,4353
 258:	030b130e 	0x30b130e
 25c:	110e1b0e 	beq	t0,t6,6e98 <data_size+0x6088>
 260:	10011201 	beq	zero,at,4a68 <data_size+0x3c58>
 264:	02000006 	srlv	zero,zero,s0
 268:	0b0b0024 	j	c2c0090 <data_size+0xc2bf280>
 26c:	0e030b3e 	jal	80c2cf8 <data_size+0x80c1ee8>
 270:	16030000 	bne	s0,v1,274 <data_size-0xb9c>
 274:	3a0e0300 	xori	t6,s0,0x300
 278:	490b3b0b 	0x490b3b0b
 27c:	04000013 	bltz	zero,2cc <data_size-0xb44>
 280:	0b0b0024 	j	c2c0090 <data_size+0xc2bf280>
 284:	08030b3e 	j	c2cf8 <data_size+0xc1ee8>
 288:	13050000 	beq	t8,a1,28c <data_size-0xb84>
 28c:	0b0e0301 	j	c380c04 <data_size+0xc37fdf4>
 290:	3b0b3a0b 	xori	t3,t8,0x3a0b
 294:	0013010b 	0x13010b
 298:	000d0600 	sll	zero,t5,0x18
 29c:	0b3a0e03 	j	ce8380c <data_size+0xce829fc>
 2a0:	13490b3b 	beq	k0,t1,2f90 <data_size+0x2180>
 2a4:	00000a38 	0xa38
 2a8:	3f012e07 	0x3f012e07
 2ac:	3a0e030c 	xori	t6,s0,0x30c
 2b0:	490b3b0b 	0x490b3b0b
 2b4:	010b2013 	0x10b2013
 2b8:	08000013 	j	4c <data_size-0xdc4>
 2bc:	0e030034 	jal	80c00d0 <data_size+0x80bf2c0>
 2c0:	0b3b0b3a 	j	cec2ce8 <data_size+0xcec1ed8>
 2c4:	00001349 	0x1349
 2c8:	31012e09 	andi	at,t0,0x2e09
 2cc:	12011113 	beq	s0,at,471c <data_size+0x390c>
 2d0:	06408101 	bltz	s2,fffe06d8 <_stack+0x603cef6c>
 2d4:	13010a40 	beq	t8,at,2bd8 <data_size+0x1dc8>
 2d8:	340a0000 	li	t2,0x0
 2dc:	00133100 	sll	a2,s3,0x4
 2e0:	002e0b00 	0x2e0b00
 2e4:	0e030c3f 	jal	80c30fc <data_size+0x80c22ec>
 2e8:	0b3b0b3a 	j	cec2ce8 <data_size+0xcec1ed8>
 2ec:	01111349 	0x1111349
 2f0:	40810112 	0x40810112
 2f4:	000a4006 	srlv	t0,t2,zero
 2f8:	012e0c00 	0x12e0c00
 2fc:	0e030c3f 	jal	80c30fc <data_size+0x80c22ec>
 300:	0b3b0b3a 	j	cec2ce8 <data_size+0xcec1ed8>
 304:	01111349 	0x1111349
 308:	40810112 	0x40810112
 30c:	010a4006 	srlv	t0,t2,t0
 310:	0d000013 	jal	400004c <data_size+0x3fff23c>
 314:	08030034 	j	c00d0 <data_size+0xbf2c0>
 318:	0b3b0b3a 	j	cec2ce8 <data_size+0xcec1ed8>
 31c:	06021349 	0x6021349
 320:	340e0000 	li	t6,0x0
 324:	3a080300 	xori	t0,s0,0x300
 328:	490b3b0b 	0x490b3b0b
 32c:	0f000013 	jal	c00004c <data_size+0xbfff23c>
 330:	0c3f012e 	jal	fc04b8 <data_size+0xfbf6a8>
 334:	0b3a0e03 	j	ce8380c <data_size+0xce829fc>
 338:	0c270b3b 	jal	9c2cec <data_size+0x9c1edc>
 33c:	01111349 	0x1111349
 340:	40810112 	0x40810112
 344:	010a4006 	srlv	t0,t2,t0
 348:	10000013 	b	398 <data_size-0xa78>
 34c:	1331011d 	beq	t9,s1,7c4 <data_size-0x64c>
 350:	01120111 	0x1120111
 354:	0b590b58 	j	d642d60 <data_size+0xd641f50>
 358:	0b110000 	j	c440000 <data_size+0xc43f1f0>
 35c:	12011101 	beq	s0,at,4764 <data_size+0x3954>
 360:	12000001 	beqz	s0,368 <data_size-0xaa8>
 364:	08030034 	j	c00d0 <data_size+0xbf2c0>
 368:	0b3b0b3a 	j	cec2ce8 <data_size+0xcec1ed8>
 36c:	0a021349 	j	8084d24 <data_size+0x8083f14>
 370:	2e130000 	sltiu	s3,s0,0
 374:	030c3f01 	0x30c3f01
 378:	3b0b3a0e 	xori	t3,t8,0x3a0e
 37c:	490c270b 	0x490c270b
 380:	12011113 	beq	s0,at,47d0 <data_size+0x39c0>
 384:	06408101 	bltz	s2,fffe078c <_stack+0x603cf020>
 388:	13010640 	beq	t8,at,1c8c <data_size+0xe7c>
 38c:	05140000 	0x5140000
 390:	3a080300 	xori	t0,s0,0x300
 394:	490b3b0b 	0x490b3b0b
 398:	00060213 	0x60213
 39c:	000f1500 	sll	v0,t7,0x14
 3a0:	13490b0b 	beq	k0,t1,2fd0 <data_size+0x21c0>
 3a4:	Address 0x00000000000003a4 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000c9 	0xc9
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000018 	mult	zero,zero
  10:	00002701 	0x2701
  14:	00003000 	sll	a2,zero,0x0
  18:	c00ff000 	lwc0	$15,-4096(zero)
  1c:	c012409f 	lwc0	$18,16543(zero)
  20:	0000009f 	0x9f
  24:	03040200 	0x3040200
  28:	000b0704 	0xb0704
  2c:	04030000 	0x4030000
  30:	00000607 	0x607
  34:	52010400 	0x52010400
  38:	01000000 	0x1000000
  3c:	00ad0102 	0xad0102
  40:	0ff00000 	jal	fc00000 <data_size+0xfbff1f0>
  44:	12409fc0 	beqz	s2,fffe7f48 <_stack+0x603d67dc>
  48:	00109fc0 	sll	s3,s0,0x1f
  4c:	00000000 	nop
  50:	00ad0000 	0xad0000
  54:	66050000 	0x66050000
  58:	0100746d 	0x100746d
  5c:	0000b401 	0xb401
  60:	00001f00 	sll	v1,zero,0x1c
  64:	69070600 	0x69070600
  68:	ad030100 	sw	v1,256(t0)
  6c:	48000000 	mfc2	zero,$0
  70:	08000000 	j	0 <data_size-0xe10>
  74:	04010063 	b	204 <data_size-0xc0c>
  78:	000000bf 	0xbf
  7c:	67726107 	0x67726107
  80:	c6050100 	lwc1	$f5,256(s0)
  84:	66000000 	0x66000000
  88:	09000000 	j	4000000 <data_size+0x3fff1f0>
  8c:	01007061 	0x1007061
  90:	00002506 	0x2506
  94:	108d0200 	beq	a0,t5,898 <data_size-0x578>
  98:	01007707 	0x1007707
  9c:	0000ad07 	0xad07
  a0:	00008400 	sll	s0,zero,0x10
  a4:	00000a00 	sll	at,zero,0x8
  a8:	45010000 	bc1t	ac <data_size-0xd64>
  ac:	05040b00 	0x5040b00
  b0:	00746e69 	0x746e69
  b4:	00ba040c 	syscall	0x2e810
  b8:	bf0d0000 	0xbf0d0000
  bc:	03000000 	0x3000000
  c0:	00600601 	0x600601
  c4:	040c0000 	0x40c0000
  c8:	00000025 	move	zero,zero
  cc:	00008800 	sll	s1,zero,0x0
  d0:	a7000200 	sh	zero,512(t8)
  d4:	04000000 	bltz	zero,d8 <data_size-0xd38>
  d8:	00001801 	0x1801
  dc:	00650100 	0x650100
  e0:	00300000 	0x300000
  e4:	12400000 	beqz	s2,e8 <data_size-0xd28>
  e8:	12749fc0 	beq	s3,s4,fffe7fec <_stack+0x603d6880>
  ec:	00ac9fc0 	0xac9fc0
  f0:	04020000 	0x4020000
  f4:	00000b07 	0xb07
  f8:	07040200 	0x7040200
  fc:	00000006 	srlv	zero,zero,zero
 100:	00590103 	0x590103
 104:	08010000 	j	40000 <data_size+0x3f1f0>
 108:	9fc01240 	0x9fc01240
 10c:	9fc01254 	0x9fc01254
 110:	00000044 	0x44
 114:	00596d01 	0x596d01
 118:	63040000 	0x63040000
 11c:	59080100 	0x59080100
 120:	01000000 	0x1000000
 124:	04050054 	0x4050054
 128:	746e6905 	jalx	1b9a414 <data_size+0x1b99604>
 12c:	5d010600 	0x5d010600
 130:	01000000 	0x1000000
 134:	00590102 	0x590102
 138:	12540000 	beq	s2,s4,13c <data_size-0xcd4>
 13c:	12749fc0 	beq	s3,s4,fffe8040 <_stack+0x603d68d4>
 140:	00549fc0 	0x549fc0
 144:	01100000 	0x1100000
 148:	63070000 	0x63070000
 14c:	59010100 	0x59010100
 150:	2f000000 	sltiu	zero,t8,0
 154:	00000001 	0x1
 158:	0000ab00 	sll	s5,zero,0xc
 15c:	21000200 	addi	zero,t0,512
 160:	04000001 	bltz	zero,168 <data_size-0xca8>
 164:	00001801 	0x1801
 168:	006f0100 	0x6f0100
 16c:	00300000 	0x300000
 170:	12800000 	beqz	s4,174 <data_size-0xc9c>
 174:	13389fc0 	beq	t9,t8,fffe8078 <_stack+0x603d690c>
 178:	00ec9fc0 	0xec9fc0
 17c:	04020000 	0x4020000
 180:	00000b07 	0xb07
 184:	07040200 	0x7040200
 188:	00000006 	srlv	zero,zero,zero
 18c:	007b0103 	0x7b0103
 190:	02010000 	0x2010000
 194:	00006f01 	0x6f01
 198:	c0128000 	lwc0	$18,-32768(zero)
 19c:	c013089f 	lwc0	$19,2207(zero)
 1a0:	00007c9f 	0x7c9f
 1a4:	00014200 	sll	t0,at,0x8
 1a8:	00006f00 	sll	t5,zero,0x1c
 1ac:	00730400 	0x730400
 1b0:	00760101 	0x760101
 1b4:	01610000 	0x1610000
 1b8:	63050000 	0x63050000
 1bc:	7c030100 	0x7c030100
 1c0:	8a000000 	lwl	zero,0(s0)
 1c4:	00000001 	0x1
 1c8:	69050406 	0x69050406
 1cc:	0700746e 	bltz	t8,1d388 <data_size+0x1c578>
 1d0:	00007c04 	0x7c04
 1d4:	06010200 	bgez	s0,9d8 <data_size-0x438>
 1d8:	00000060 	0x60
 1dc:	00760108 	0x760108
 1e0:	0f010000 	jal	c040000 <data_size+0xc03f1f0>
 1e4:	00006f01 	0x6f01
 1e8:	c0130800 	lwc0	$19,2048(zero)
 1ec:	c013389f 	lwc0	$19,14495(zero)
 1f0:	0000989f 	0x989f
 1f4:	00019d00 	sll	s3,at,0x14
 1f8:	00730400 	0x730400
 1fc:	00760e01 	0x760e01
 200:	01bc0000 	0x1bc0000
 204:	00000000 	nop
 208:	000000f7 	0xf7
 20c:	01a80002 	0x1a80002
 210:	01040000 	0x1040000
 214:	00000018 	mult	zero,zero
 218:	00008501 	0x8501
 21c:	00003000 	sll	a2,zero,0x0
 220:	c0134000 	lwc0	$19,16384(zero)
 224:	c014409f 	lwc0	$20,16543(zero)
 228:	00012f9f 	0x12f9f
 22c:	07040200 	0x7040200
 230:	0000000b 	0xb
 234:	06070402 	0x6070402
 238:	03000000 	0x3000000
 23c:	0000a501 	0xa501
 240:	01020100 	0x1020100
 244:	000000d2 	0xd2
 248:	9fc01340 	0x9fc01340
 24c:	9fc01440 	0x9fc01440
 250:	000000c0 	sll	zero,zero,0x3
 254:	000001cf 	0x1cf
 258:	000000d2 	0xd2
 25c:	01007604 	0x1007604
 260:	0000d901 	0xd901
 264:	0001ef00 	sll	sp,at,0x1c
 268:	00770400 	0x770400
 26c:	00d20101 	0xd20101
 270:	024f0000 	0x24f0000
 274:	aa050000 	swl	a1,0(s0)
 278:	01000000 	0x1000000
 27c:	0000d201 	0xd201
 280:	0002ba00 	sll	s7,v0,0x8
 284:	00a00500 	0xa00500
 288:	01010000 	0x1010000
 28c:	000000d2 	0xd2
 290:	0000030f 	0x30f
 294:	01006906 	0x1006906
 298:	0000d203 	sra	k0,zero,0x8
 29c:	00033800 	sll	a3,v1,0x0
 2a0:	006a0600 	0x6a0600
 2a4:	00d20301 	0xd20301
 2a8:	03610000 	0x3610000
 2ac:	63060000 	0x63060000
 2b0:	d2040100 	0xd2040100
 2b4:	8a000000 	lwl	zero,0(s0)
 2b8:	07000003 	bltz	t8,2c8 <data_size-0xb48>
 2bc:	00667562 	0x667562
 2c0:	00e00501 	0xe00501
 2c4:	91030000 	lbu	v1,0(t0)
 2c8:	91087fa8 	lbu	t0,32680(t0)
 2cc:	01000000 	0x1000000
 2d0:	00002c06 	0x2c06
 2d4:	0003a800 	sll	s5,v1,0x0
 2d8:	04090000 	0x4090000
 2dc:	746e6905 	jalx	1b9a414 <data_size+0x1b99604>
 2e0:	05040200 	0x5040200
 2e4:	00000097 	0x97
 2e8:	0000f30a 	0xf30a
 2ec:	0000f000 	sll	s8,zero,0x0
 2f0:	00f00b00 	0xf00b00
 2f4:	003f0000 	0x3f0000
 2f8:	0207040c 	syscall	0x81c10
 2fc:	00600601 	0x600601
 300:	37000000 	ori	zero,t8,0x0
 304:	02000002 	0x2000002
 308:	00025400 	sll	t2,v0,0x10
 30c:	18010400 	0x18010400
 310:	01000000 	0x1000000
 314:	000000ef 	0xef
 318:	00000030 	0x30
 31c:	9fc01440 	0x9fc01440
 320:	9fc01588 	0x9fc01588
 324:	00000186 	0x186
 328:	0b070402 	j	c1c1008 <data_size+0xc1c01f8>
 32c:	02000000 	0x2000000
 330:	00060704 	0x60704
 334:	d7030000 	0xd7030000
 338:	02000000 	0x2000000
 33c:	00002c03 	sra	a1,zero,0x10
 340:	05040400 	0x5040400
 344:	00746e69 	0x746e69
 348:	0000ce05 	0xce05
 34c:	1f021000 	0x1f021000
 350:	0000008a 	0x8a
 354:	00011906 	0x11906
 358:	33200200 	andi	zero,t9,0x200
 35c:	02000000 	0x2000000
 360:	ff060010 	0xff060010
 364:	02000000 	0x2000000
 368:	00003321 	0x3321
 36c:	04100200 	bltzal	zero,b70 <data_size-0x2a0>
 370:	00011106 	0x11106
 374:	33220200 	andi	v0,t9,0x200
 378:	02000000 	0x2000000
 37c:	e0060810 	swc0	$6,2064(zero)
 380:	02000000 	0x2000000
 384:	00003323 	0x3323
 388:	0c100200 	jal	400800 <data_size+0x3ff9f0>
 38c:	c3010700 	lwc0	$1,1792(t8)
 390:	01000000 	0x1000000
 394:	00002c04 	0x2c04
 398:	00a70000 	0xa70000
 39c:	f6080000 	0xf6080000
 3a0:	01000000 	0x1000000
 3a4:	00002c05 	0x2c05
 3a8:	8a090000 	lwl	t1,0(s0)
 3ac:	40000000 	mfc0	zero,c0_index
 3b0:	509fc014 	0x509fc014
 3b4:	f09fc014 	0xf09fc014
 3b8:	01000000 	0x1000000
 3bc:	0000c46d 	0xc46d
 3c0:	009b0a00 	0x9b0a00
 3c4:	0b000000 	j	c000000 <data_size+0xbfff1f0>
 3c8:	0000c401 	0xc401
 3cc:	2c110100 	sltiu	s1,zero,256
 3d0:	50000000 	0x50000000
 3d4:	609fc014 	0x609fc014
 3d8:	009fc014 	0x9fc014
 3dc:	01000001 	0x1000001
 3e0:	b6010c6d 	0xb6010c6d
 3e4:	01000000 	0x1000000
 3e8:	00002c16 	0x2c16
 3ec:	c0146000 	lwc0	$20,24576(zero)
 3f0:	c0146c9f 	lwc0	$20,27807(zero)
 3f4:	0001109f 	0x1109f
 3f8:	0a6d0100 	j	9b40400 <data_size+0x9b3f5f0>
 3fc:	0d000001 	jal	4000004 <data_size+0x3fff1f4>
 400:	1701006e 	bne	t8,at,5bc <data_size-0x854>
 404:	0000002c 	0x2c
 408:	000003d1 	0x3d1
 40c:	07010c00 	bgez	t8,3410 <data_size+0x2600>
 410:	01000001 	0x1000001
 414:	00002c2c 	0x2c2c
 418:	c0146c00 	lwc0	$20,27648(zero)
 41c:	c0147c9f 	lwc0	$20,31903(zero)
 420:	0001209f 	0x1209f
 424:	326d0100 	andi	t5,s3,0x100
 428:	0e000001 	jal	8000004 <data_size+0x7fff1f4>
 42c:	2d01006e 	sltiu	at,t0,110
 430:	0000002c 	0x2c
 434:	e8010f00 	swc2	$1,3840(zero)
 438:	01000000 	0x1000000
 43c:	002c0133 	0x2c0133
 440:	147c0000 	bne	v1,gp,444 <data_size-0x9cc>
 444:	14989fc0 	bne	a0,t8,fffe8348 <_stack+0x603d6bdc>
 448:	01309fc0 	0x1309fc0
 44c:	6d010000 	0x6d010000
 450:	0000017e 	0x17e
 454:	01006e0d 	break	0x100,0x1b8
 458:	00002c34 	0x2c34
 45c:	0003e400 	sll	gp,v1,0x10
 460:	008a1000 	0x8a1000
 464:	147c0000 	bne	v1,gp,468 <data_size-0x9a8>
 468:	14909fc0 	bne	a0,s0,fffe836c <_stack+0x603d6c00>
 46c:	35019fc0 	ori	at,t0,0x9fc0
 470:	c0147c11 	lwc0	$20,31761(zero)
 474:	c014909f 	lwc0	$20,-28513(zero)
 478:	009b0a9f 	0x9b0a9f
 47c:	00000000 	nop
 480:	af010f00 	sw	at,3840(t8)
 484:	01000000 	0x1000000
 488:	002c013c 	0x2c013c
 48c:	14980000 	bne	a0,t8,490 <data_size-0x980>
 490:	14bc9fc0 	bne	a1,gp,fffe8394 <_stack+0x603d6c28>
 494:	01409fc0 	0x1409fc0
 498:	6d010000 	0x6d010000
 49c:	000001c8 	0x1c8
 4a0:	01006e12 	0x1006e12
 4a4:	00002c3d 	0x2c3d
 4a8:	10530100 	beq	v0,s3,8ac <data_size-0x564>
 4ac:	0000008a 	0x8a
 4b0:	9fc01498 	0x9fc01498
 4b4:	9fc014a4 	0x9fc014a4
 4b8:	98113e01 	lwr	s1,15873(zero)
 4bc:	a49fc014 	sh	ra,-16364(a0)
 4c0:	0a9fc014 	j	a7f0050 <data_size+0xa7ef240>
 4c4:	0000009b 	0x9b
 4c8:	13000000 	beqz	t8,4cc <data_size-0x944>
 4cc:	00012001 	0x12001
 4d0:	01200100 	0x1200100
 4d4:	0000002c 	0x2c
 4d8:	9fc014bc 	0x9fc014bc
 4dc:	9fc01588 	0x9fc01588
 4e0:	00000150 	0x150
 4e4:	000003f7 	0x3f7
 4e8:	00000234 	0x234
 4ec:	6c657314 	0x6c657314
 4f0:	3e1f0100 	0x3e1f0100
 4f4:	16000000 	bnez	s0,4f8 <data_size-0x918>
 4f8:	14000004 	bnez	zero,50c <data_size-0x904>
 4fc:	00706d74 	0x706d74
 500:	02341f01 	0x2341f01
 504:	04290000 	0x4290000
 508:	6e0d0000 	0x6e0d0000
 50c:	2c210100 	sltiu	at,at,256
 510:	47000000 	c1	0x1000000
 514:	10000004 	b	528 <data_size-0x8e8>
 518:	0000008a 	0x8a
 51c:	9fc014c8 	0x9fc014c8
 520:	9fc014d0 	0x9fc014d0
 524:	c8112201 	lwc2	$17,8705(zero)
 528:	d09fc014 	0xd09fc014
 52c:	0a9fc014 	j	a7f0050 <data_size+0xa7ef240>
 530:	0000009b 	0x9b
 534:	15000000 	bnez	t0,538 <data_size-0x8d8>
 538:	00004504 	0x4504
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000a8 	0xa8
   4:	001f0002 	srl	zero,ra,0x0
   8:	01010000 	0x1010000
   c:	000d0efb 	0xd0efb
  10:	01010101 	0x1010101
  14:	01000000 	0x1000000
  18:	00010000 	sll	zero,at,0x0
  1c:	6e697270 	0x6e697270
  20:	632e6674 	0x632e6674
  24:	00000000 	nop
  28:	02050000 	0x2050000
  2c:	9fc00ff0 	0x9fc00ff0
  30:	1a240213 	0x1a240213
  34:	504a7803 	0x504a7803
  38:	c24a7a03 	lwc0	$10,31235(s2)
  3c:	4a780389 	c2	0x780389
  40:	4a780352 	c2	0x780352
  44:	00c2034e 	0xc2034e
  48:	7fbe034a 	0x7fbe034a
  4c:	00c2034a 	0xc2034a
  50:	ba038382 	swr	v1,-31870(s0)
  54:	ca03827f 	lwc2	$3,-32129(s0)
  58:	03740800 	0x3740800
  5c:	2c027fb9 	sltiu	v0,zero,32697
  60:	38038601 	xori	v1,zero,0x8601
  64:	41033c08 	0x41033c08
  68:	30038982 	andi	v1,zero,0x8982
  6c:	03f43c08 	0x3f43c08
  70:	033c084e 	0x33c084e
  74:	4f03823e 	c3	0x103823e
  78:	034bf3f2 	0x34bf3f2
  7c:	03bb8274 	0x3bb8274
  80:	4bf38223 	c2	0x1f38223
  84:	f3827303 	0xf3827303
  88:	8279034b 	lb	t9,843(s3)
  8c:	79034bf3 	0x79034bf3
  90:	034bf382 	0x34bf382
  94:	03bb8274 	0x3bb8274
  98:	4bf38218 	c2	0x1f38218
  9c:	83820903 	lb	v0,2307(gp)
  a0:	4bf14b87 	c2	0x1f14b87
  a4:	02750849 	0x2750849
  a8:	01010008 	0x1010008
  ac:	0000003c 	0x3c
  b0:	00200002 	0x200002
  b4:	01010000 	0x1010000
  b8:	000d0efb 	0xd0efb
  bc:	01010101 	0x1010101
  c0:	01000000 	0x1000000
  c4:	00010000 	sll	zero,at,0x0
  c8:	63747570 	0x63747570
  cc:	2e726168 	sltiu	s2,s3,24936
  d0:	00000063 	0x63
  d4:	05000000 	bltz	t0,d8 <data_size-0xd38>
  d8:	c0124002 	lwc0	$18,16386(zero)
  dc:	0313199f 	0x313199f
  e0:	7003ba09 	0x7003ba09
  e4:	02848382 	0x2848382
  e8:	01010010 	0x1010010
  ec:	0000003f 	0x3f
  f0:	001d0002 	srl	zero,sp,0x0
  f4:	01010000 	0x1010000
  f8:	000d0efb 	0xd0efb
  fc:	01010101 	0x1010101
 100:	01000000 	0x1000000
 104:	00010000 	sll	zero,at,0x0
 108:	73747570 	0x73747570
 10c:	0000632e 	0x632e
 110:	00000000 	nop
 114:	12800205 	beqz	s4,92c <data_size-0x4e4>
 118:	08139fc0 	j	4e7f00 <data_size+0x4e70f0>
 11c:	7f83f43e 	0x7f83f43e
 120:	f97ff3f4 	0xf97ff3f4
 124:	8383b008 	lb	v1,-20472(gp)
 128:	10028483 	beq	zero,v0,fffe1338 <_stack+0x603cfbcc>
 12c:	53010100 	0x53010100
 130:	02000000 	0x2000000
 134:	00002200 	sll	a0,zero,0x8
 138:	fb010100 	0xfb010100
 13c:	01000d0e 	0x1000d0e
 140:	00010101 	0x10101
 144:	00010000 	sll	zero,at,0x0
 148:	70000100 	0x70000100
 14c:	746e6972 	jalx	1b9a5c8 <data_size+0x1b997b8>
 150:	65736162 	0x65736162
 154:	0000632e 	0x632e
 158:	00000000 	nop
 15c:	13400205 	beqz	k0,974 <data_size-0x49c>
 160:	08139fc0 	j	4e7f00 <data_size+0x4e70f0>
 164:	4cf78774 	0x4cf78774
 168:	b84cf0bc 	swr	t4,-3908(v0)
 16c:	086c038a 	j	1b00e28 <data_size+0x1b00018>
 170:	82160374 	lb	s6,884(s0)
 174:	0888b7f3 	j	222dfcc <data_size+0x222d1bc>
 178:	710383e0 	0x710383e0
 17c:	0f033c08 	jal	c0cf020 <data_size+0xc0ce210>
 180:	000802f2 	0x802f2
 184:	007c0101 	0x7c0101
 188:	00020000 	sll	zero,v0,0x0
 18c:	00000032 	0x32
 190:	0efb0101 	jal	bec0404 <data_size+0xbebf5f4>
 194:	0101000d 	break	0x101
 198:	00000101 	0x101
 19c:	00000100 	sll	zero,zero,0x4
 1a0:	2f2e2e01 	sltiu	t6,t9,11777
 1a4:	6c636e69 	0x6c636e69
 1a8:	00656475 	0x656475
 1ac:	6d697400 	0x6d697400
 1b0:	00632e65 	0x632e65
 1b4:	74000000 	jalx	0 <data_size-0xe10>
 1b8:	2e656d69 	sltiu	a1,s3,28009
 1bc:	00010068 	0x10068
 1c0:	05000000 	bltz	t0,1c4 <data_size-0xc4c>
 1c4:	c0144002 	lwc0	$20,16386(zero)
 1c8:	0a03159f 	j	80c567c <data_size+0x80c486c>
 1cc:	f514f501 	0xf514f501
 1d0:	0f034f14 	jal	c0d3c50 <data_size+0xc0d2e40>
 1d4:	03f51682 	0x3f51682
 1d8:	32030153 	andi	v1,s0,0x153
 1dc:	03863c08 	0x3863c08
 1e0:	3b03014a 	xori	v1,t8,0x14a
 1e4:	085f03ba 	j	17c0ee8 <data_size+0x17c00d8>
 1e8:	66038274 	0x66038274
 1ec:	821f034a 	lb	ra,842(s0)
 1f0:	7f4c3b08 	0x7f4c3b08
 1f4:	088180f6 	j	20603d8 <data_size+0x205f5c8>
 1f8:	083b083e 	j	ec20f8 <data_size+0xec12e8>
 1fc:	f53d083a 	0xf53d083a
 200:	00100284 	0x100284
 204:	Address 0x0000000000000204 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	syscall
   4:	ffffffff 	0xffffffff
   8:	7c010001 	0x7c010001
   c:	001d0c1f 	0x1d0c1f
  10:	00000020 	add	zero,zero,zero
  14:	00000000 	nop
  18:	9fc00ff0 	0x9fc00ff0
  1c:	00000250 	0x250
  20:	60380e44 	0x60380e44
  24:	07910890 	bgezal	gp,2268 <data_size+0x1458>
  28:	04940692 	0x4940692
  2c:	02960395 	0x2960395
  30:	0593019f 	0x593019f
  34:	0000000c 	syscall
  38:	ffffffff 	0xffffffff
  3c:	7c010001 	0x7c010001
  40:	001d0c1f 	0x1d0c1f
  44:	0000000c 	syscall
  48:	00000034 	0x34
  4c:	9fc01240 	0x9fc01240
  50:	00000014 	0x14
  54:	00000014 	0x14
  58:	00000034 	0x34
  5c:	9fc01254 	0x9fc01254
  60:	00000020 	add	zero,zero,zero
  64:	44180e44 	0x44180e44
  68:	0000019f 	0x19f
  6c:	0000000c 	syscall
  70:	ffffffff 	0xffffffff
  74:	7c010001 	0x7c010001
  78:	001d0c1f 	0x1d0c1f
  7c:	00000018 	mult	zero,zero
  80:	0000006c 	0x6c
  84:	9fc01280 	0x9fc01280
  88:	00000088 	0x88
  8c:	50200e44 	0x50200e44
  90:	02920490 	0x2920490
  94:	0391019f 	0x391019f
  98:	00000014 	0x14
  9c:	0000006c 	0x6c
  a0:	9fc01308 	0x9fc01308
  a4:	00000030 	0x30
  a8:	44180e44 	0x44180e44
  ac:	0000019f 	0x19f
  b0:	0000000c 	syscall
  b4:	ffffffff 	0xffffffff
  b8:	7c010001 	0x7c010001
  bc:	001d0c1f 	0x1d0c1f
  c0:	0000001c 	0x1c
  c4:	000000b0 	0xb0
  c8:	9fc01340 	0x9fc01340
  cc:	00000100 	sll	zero,zero,0x4
  d0:	54680e44 	0x54680e44
  d4:	04910590 	bgezal	a0,1718 <data_size+0x908>
  d8:	0392019f 	0x392019f
  dc:	00000293 	0x293
  e0:	0000000c 	syscall
  e4:	ffffffff 	0xffffffff
  e8:	7c010001 	0x7c010001
  ec:	001d0c1f 	0x1d0c1f
  f0:	0000000c 	syscall
  f4:	000000e0 	0xe0
  f8:	9fc01440 	0x9fc01440
  fc:	00000010 	mfhi	zero
 100:	0000000c 	syscall
 104:	000000e0 	0xe0
 108:	9fc01450 	0x9fc01450
 10c:	00000010 	mfhi	zero
 110:	0000000c 	syscall
 114:	000000e0 	0xe0
 118:	9fc01460 	0x9fc01460
 11c:	0000000c 	syscall
 120:	0000000c 	syscall
 124:	000000e0 	0xe0
 128:	9fc0146c 	0x9fc0146c
 12c:	00000010 	mfhi	zero
 130:	0000000c 	syscall
 134:	000000e0 	0xe0
 138:	9fc0147c 	0x9fc0147c
 13c:	0000001c 	0x1c
 140:	0000000c 	syscall
 144:	000000e0 	0xe0
 148:	9fc01498 	0x9fc01498
 14c:	00000024 	and	zero,zero,zero
 150:	00000014 	0x14
 154:	000000e0 	0xe0
 158:	9fc014bc 	0x9fc014bc
 15c:	000000cc 	syscall	0x3
 160:	44180e44 	0x44180e44
 164:	0000019f 	0x19f

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	nop
   4:	00000004 	sllv	zero,zero,zero
   8:	046d0001 	0x46d0001
   c:	50000000 	0x50000000
  10:	02000002 	0x2000002
  14:	00388d00 	0x388d00
	...
  20:	30000000 	andi	zero,zero,0x0
  24:	01000000 	0x1000000
  28:	00305400 	0x305400
  2c:	00a40000 	0xa40000
  30:	00010000 	sll	zero,at,0x0
  34:	0000b863 	0xb863
  38:	00025000 	sll	t2,v0,0x0
  3c:	63000100 	0x63000100
	...
  48:	00000054 	0x54
  4c:	000000ac 	0xac
  50:	b8610001 	swr	at,1(v1)
  54:	50000000 	0x50000000
  58:	01000002 	0x1000002
  5c:	00006100 	sll	t4,zero,0x4
  60:	00000000 	nop
  64:	004c0000 	0x4c0000
  68:	00a80000 	0xa80000
  6c:	00010000 	sll	zero,at,0x0
  70:	0000b862 	0xb862
  74:	00025000 	sll	t2,v0,0x0
  78:	62000100 	0x62000100
	...
  84:	000000c0 	sll	zero,zero,0x3
  88:	000000dc 	0xdc
  8c:	e4550001 	swc1	$f21,1(v0)
  90:	24000000 	li	zero,0
  94:	01000001 	0x1000001
  98:	01345500 	0x1345500
  9c:	01440000 	0x1440000
  a0:	00010000 	sll	zero,at,0x0
  a4:	00015055 	0x15055
  a8:	00015c00 	sll	t3,at,0x10
  ac:	55000100 	0x55000100
  b0:	00000164 	0x164
  b4:	00000174 	0x174
  b8:	80550001 	lb	s5,1(v0)
  bc:	90000001 	lbu	zero,1(zero)
  c0:	01000001 	0x1000001
  c4:	019c5500 	0x19c5500
  c8:	01ac0000 	0x1ac0000
  cc:	00010000 	sll	zero,at,0x0
  d0:	0001b855 	0x1b855
  d4:	0001c800 	sll	t9,at,0x0
  d8:	55000100 	0x55000100
  dc:	000001d4 	0x1d4
  e0:	000001e0 	0x1e0
  e4:	e8550001 	swc2	$21,1(v0)
  e8:	f8000001 	0xf8000001
  ec:	01000001 	0x1000001
  f0:	02045500 	0x2045500
  f4:	020c0000 	0x20c0000
  f8:	00010000 	sll	zero,at,0x0
  fc:	00021455 	0x21455
 100:	00025000 	sll	t2,v0,0x0
 104:	55000100 	0x55000100
	...
 110:	00000014 	0x14
 114:	00000018 	mult	zero,zero
 118:	186d0001 	0x186d0001
 11c:	34000000 	li	zero,0x0
 120:	02000000 	0x2000000
 124:	00188d00 	sll	s1,t8,0x14
 128:	00000000 	nop
 12c:	14000000 	bnez	zero,130 <data_size-0xce0>
 130:	24000000 	li	zero,0
 134:	01000000 	0x1000000
 138:	00005400 	sll	t2,zero,0x10
	...
 144:	00040000 	sll	zero,a0,0x0
 148:	00010000 	sll	zero,at,0x0
 14c:	0000046d 	0x46d
 150:	00008800 	sll	s1,zero,0x0
 154:	8d000200 	lw	zero,512(t0)
 158:	00000020 	add	zero,zero,zero
	...
 164:	00002400 	sll	a0,zero,0x10
 168:	54000100 	0x54000100
 16c:	00000024 	and	zero,zero,zero
 170:	0000007c 	0x7c
 174:	7c610001 	0x7c610001
 178:	88000000 	lwl	zero,0(zero)
 17c:	01000000 	0x1000000
 180:	00005400 	sll	t2,zero,0x10
 184:	00000000 	nop
 188:	001c0000 	sll	zero,gp,0x0
 18c:	00800000 	0x800000
 190:	00010000 	sll	zero,at,0x0
 194:	00000060 	0x60
 198:	00000000 	nop
 19c:	00008800 	sll	s1,zero,0x0
 1a0:	00008c00 	sll	s1,zero,0x10
 1a4:	6d000100 	0x6d000100
 1a8:	0000008c 	syscall	0x2
 1ac:	000000b8 	0xb8
 1b0:	188d0002 	0x188d0002
	...
 1bc:	00000088 	0x88
 1c0:	00000098 	0x98
 1c4:	00540001 	0x540001
	...
 1d0:	04000000 	bltz	zero,1d4 <data_size-0xc3c>
 1d4:	01000000 	0x1000000
 1d8:	00046d00 	sll	t5,a0,0x14
 1dc:	01000000 	0x1000000
 1e0:	00030000 	sll	zero,v1,0x0
 1e4:	0000e88d 	break	0x0,0x3a2
	...
 1f0:	28000000 	slti	zero,zero,0
 1f4:	01000000 	0x1000000
 1f8:	00285400 	0x285400
 1fc:	00600000 	0x600000
 200:	00010000 	sll	zero,at,0x0
 204:	00006853 	0x6853
 208:	00006c00 	sll	t5,zero,0x10
 20c:	53000100 	0x53000100
 210:	0000006c 	0x6c
 214:	00000098 	0x98
 218:	ac540001 	sw	s4,1(v0)
 21c:	d4000000 	0xd4000000
 220:	01000000 	0x1000000
 224:	00e85400 	0xe85400
 228:	00e80000 	0xe80000
 22c:	00010000 	sll	zero,at,0x0
 230:	0000e854 	0xe854
 234:	0000f000 	sll	s8,zero,0x0
 238:	53000100 	0x53000100
 23c:	000000f8 	0xf8
 240:	000000f8 	0xf8
 244:	00530001 	0x530001
	...
 250:	28000000 	slti	zero,zero,0
 254:	01000000 	0x1000000
 258:	00285500 	0x285500
 25c:	00980000 	0x980000
 260:	00010000 	sll	zero,at,0x0
 264:	00009863 	0x9863
 268:	0000a400 	sll	s4,zero,0x10
 26c:	55000100 	0x55000100
 270:	000000ac 	0xac
 274:	000000b8 	0xb8
 278:	b8630001 	swr	v1,1(v1)
 27c:	cc000000 	lwc3	$0,0(zero)
 280:	01000000 	0x1000000
 284:	00cc5500 	0xcc5500
 288:	00d40000 	0xd40000
 28c:	00010000 	sll	zero,at,0x0
 290:	0000d463 	0xd463
 294:	0000e800 	sll	sp,zero,0x0
 298:	55000100 	0x55000100
 29c:	000000e8 	0xe8
 2a0:	000000f8 	0xf8
 2a4:	f8630001 	0xf8630001
 2a8:	00000000 	nop
 2ac:	01000001 	0x1000001
 2b0:	00005500 	sll	t2,zero,0x14
	...
 2bc:	00280000 	0x280000
 2c0:	00010000 	sll	zero,at,0x0
 2c4:	00002856 	0x2856
 2c8:	00008800 	sll	s1,zero,0x0
 2cc:	62000100 	0x62000100
 2d0:	00000088 	0x88
 2d4:	000000a4 	0xa4
 2d8:	ac560001 	sw	s6,1(v0)
 2dc:	bc000000 	0xbc000000
 2e0:	01000000 	0x1000000
 2e4:	00bc6200 	0xbc6200
 2e8:	00e80000 	0xe80000
 2ec:	00010000 	sll	zero,at,0x0
 2f0:	0000e856 	0xe856
 2f4:	0000f800 	sll	ra,zero,0x0
 2f8:	62000100 	0x62000100
 2fc:	000000f8 	0xf8
 300:	00000100 	sll	zero,zero,0x4
 304:	00560001 	0x560001
	...
 310:	a4000000 	sh	zero,0(zero)
 314:	01000000 	0x1000000
 318:	00ac5700 	0xac5700
 31c:	00f00000 	0xf00000
 320:	00010000 	sll	zero,at,0x0
 324:	0000f857 	0xf857
 328:	00010000 	sll	zero,at,0x0
 32c:	57000100 	0x57000100
	...
 338:	0000003c 	0x3c
 33c:	000000c0 	sll	zero,zero,0x3
 340:	cc610001 	lwc3	$1,1(v1)
 344:	e8000000 	swc2	$0,0(zero)
 348:	01000000 	0x1000000
 34c:	00f86100 	0xf86100
 350:	01000000 	0x1000000
 354:	00010000 	sll	zero,at,0x0
 358:	00000061 	0x61
 35c:	00000000 	nop
 360:	00006c00 	sll	t5,zero,0x10
 364:	0000a400 	sll	s4,zero,0x10
 368:	53000100 	0x53000100
 36c:	000000ac 	0xac
 370:	000000e8 	0xe8
 374:	f8530001 	0xf8530001
 378:	00000000 	nop
 37c:	01000001 	0x1000001
 380:	00005300 	sll	t2,zero,0xc
 384:	00000000 	nop
 388:	00d40000 	0xd40000
 38c:	00e00000 	0xe00000
 390:	00010000 	sll	zero,at,0x0
 394:	0000f854 	0xf854
 398:	0000f800 	sll	ra,zero,0x0
 39c:	54000100 	0x54000100
	...
 3a8:	00000034 	0x34
 3ac:	00000080 	sll	zero,zero,0x2
 3b0:	ac600001 	sw	zero,1(v1)
 3b4:	c4000000 	lwc1	$f0,0(zero)
 3b8:	01000000 	0x1000000
 3bc:	00e86000 	0xe86000
 3c0:	00f80000 	0xf80000
 3c4:	00010000 	sll	zero,at,0x0
 3c8:	00000060 	0x60
 3cc:	00000000 	nop
 3d0:	00002400 	sll	a0,zero,0x10
 3d4:	00002400 	sll	a0,zero,0x10
 3d8:	52000100 	0x52000100
	...
 3e4:	00000048 	0x48
 3e8:	00000050 	0x50
 3ec:	00520001 	0x520001
 3f0:	00000000 	nop
 3f4:	7c000000 	0x7c000000
 3f8:	80000000 	lb	zero,0(zero)
 3fc:	01000000 	0x1000000
 400:	00806d00 	0x806d00
 404:	01480000 	0x1480000
 408:	00020000 	sll	zero,v0,0x0
 40c:	0000188d 	break	0x0,0x62
 410:	00000000 	nop
 414:	007c0000 	0x7c0000
 418:	00c40000 	0xc40000
 41c:	00010000 	sll	zero,at,0x0
 420:	00000054 	0x54
 424:	00000000 	nop
 428:	00007c00 	sll	t7,zero,0x10
 42c:	0000ac00 	sll	s5,zero,0x10
 430:	55000100 	0x55000100
 434:	000000ac 	0xac
 438:	00000138 	0x138
 43c:	005a0001 	0x5a0001
 440:	00000000 	nop
 444:	90000000 	lbu	zero,0(zero)
 448:	f4000000 	0xf4000000
 44c:	01000000 	0x1000000
 450:	00005600 	sll	t2,zero,0x18
 454:	00000000 	nop
	...

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	69616761 	0x69616761
   4:	6f6c006e 	0x6f6c006e
   8:	7520676e 	jalx	4819db8 <data_size+0x4818fa8>
   c:	6769736e 	0x6769736e
  10:	2064656e 	addi	a0,v1,25966
  14:	00746e69 	0x746e69
  18:	20554e47 	addi	s5,v0,20039
  1c:	2e342043 	sltiu	s4,s1,8259
  20:	20302e33 	addi	s0,at,11827
  24:	7000672d 	0x7000672d
  28:	746e6972 	jalx	1b9a5c8 <data_size+0x1b997b8>
  2c:	00632e66 	0x632e66
  30:	6d6f682f 	0x6d6f682f
  34:	61722f65 	0x61722f65
  38:	6c2f6e69 	0x6c2f6e69
  3c:	676e6f6f 	0x676e6f6f
  40:	2f6e6f73 	sltiu	t6,k1,28531
  44:	68636163 	0x68636163
  48:	616c5f65 	0x616c5f65
  4c:	696c2f62 	0x696c2f62
  50:	72700062 	0x72700062
  54:	66746e69 	0x66746e69
  58:	74677400 	jalx	19dd000 <data_size+0x19dc1f0>
  5c:	7475705f 	jalx	1d5c17c <data_size+0x1d5b36c>
  60:	72616863 	0x72616863
  64:	74757000 	jalx	1d5c000 <data_size+0x1d5b1f0>
  68:	72616863 	0x72616863
  6c:	7000632e 	0x7000632e
  70:	2e737475 	sltiu	s3,s3,29813
  74:	75700063 	jalx	5c0018c <data_size+0x5bff37c>
  78:	70007374 	0x70007374
  7c:	74737475 	jalx	1cdd1d4 <data_size+0x1cdc3c4>
  80:	676e6972 	0x676e6972
  84:	69727000 	0x69727000
  88:	6162746e 	0x6162746e
  8c:	632e6573 	0x632e6573
  90:	6c617600 	0x6c617600
  94:	6c006575 	0x6c006575
  98:	20676e6f 	addi	a3,v1,28271
  9c:	00746e69 	0x746e69
  a0:	6e676973 	0x6e676973
  a4:	69727000 	0x69727000
  a8:	6162746e 	0x6162746e
  ac:	67006573 	0x67006573
  b0:	755f7465 	jalx	57dd194 <data_size+0x57dc384>
  b4:	65670073 	0x65670073
  b8:	6f635f74 	0x6f635f74
  bc:	5f746e75 	0x5f746e75
  c0:	5f00796d 	0x5f00796d
  c4:	5f746567 	0x5f746567
  c8:	6e756f63 	0x6e756f63
  cc:	69740074 	0x69740074
  d0:	7073656d 	0x7073656d
  d4:	5f006365 	0x5f006365
  d8:	636f6c63 	0x636f6c63
  dc:	00745f6b 	0x745f6b
  e0:	6d5f7674 	0x6d5f7674
  e4:	00636573 	0x636573
  e8:	5f746567 	0x5f746567
  ec:	7400736e 	jalx	1cdb8 <data_size+0x1bfa8>
  f0:	2e656d69 	sltiu	a1,s3,28009
  f4:	635f0063 	0x635f0063
  f8:	76746e6f 	jalx	9d1b9bc <data_size+0x9d1abac>
  fc:	74006c61 	jalx	1b184 <data_size+0x1a374>
 100:	736e5f76 	0x736e5f76
 104:	67006365 	0x67006365
 108:	635f7465 	0x635f7465
 10c:	6b636f6c 	0x6b636f6c
 110:	5f767400 	0x5f767400
 114:	63657375 	0x63657375
 118:	5f767400 	0x5f767400
 11c:	00636573 	0x636573
 120:	636f6c63 	0x636f6c63
 124:	65675f6b 	0x65675f6b
 128:	6d697474 	0x6d697474
 12c:	Address 0x000000000000012c is out of bounds.

