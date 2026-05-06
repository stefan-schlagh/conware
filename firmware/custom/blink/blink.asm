
build_uninstrumented/blink.ino.elf:     file format elf32-littlearm


Disassembly of section .text:

00080000 <exception_table>:
   80000:	00 80 08 20 f1 0e 08 00 35 13 08 00 35 13 08 00     ... ....5...5...
   80010:	35 13 08 00 35 13 08 00 35 13 08 00 00 00 00 00     5...5...5.......
	...
   8002c:	37 13 08 00 35 13 08 00 00 00 00 00 3b 13 08 00     7...5.......;...
   8003c:	3f 13 08 00 35 13 08 00 35 13 08 00 35 13 08 00     ?...5...5...5...
   8004c:	35 13 08 00 35 13 08 00 35 13 08 00 35 13 08 00     5...5...5...5...
   8005c:	35 13 08 00 b1 01 08 00 35 13 08 00 00 00 00 00     5.......5.......
   8006c:	55 12 08 00 8d 12 08 00 c5 12 08 00 fd 12 08 00     U...............
	...
   80084:	c5 01 08 00 d1 01 08 00 35 13 08 00 dd 01 08 00     ........5.......
   80094:	35 13 08 00 35 13 08 00 35 13 08 00 35 13 08 00     5...5...5...5...
   800a4:	00 00 00 00 35 13 08 00 35 13 08 00 35 13 08 00     ....5...5...5...
   800b4:	35 13 08 00 35 13 08 00 35 13 08 00 35 13 08 00     5...5...5...5...
   800c4:	35 13 08 00 35 13 08 00 35 13 08 00 35 13 08 00     5...5...5...5...
   800d4:	85 01 08 00 35 13 08 00 35 13 08 00 d1 0f 08 00     ....5...5.......
   800e4:	35 13 08 00 35 13 08 00 35 13 08 00 35 13 08 00     5...5...5...5...

000800f4 <__do_global_dtors_aux>:
   800f4:	b510      	push	{r4, lr}
   800f6:	4c05      	ldr	r4, [pc, #20]	; (8010c <__do_global_dtors_aux+0x18>)
   800f8:	7823      	ldrb	r3, [r4, #0]
   800fa:	b933      	cbnz	r3, 8010a <__do_global_dtors_aux+0x16>
   800fc:	4b04      	ldr	r3, [pc, #16]	; (80110 <__do_global_dtors_aux+0x1c>)
   800fe:	b113      	cbz	r3, 80106 <__do_global_dtors_aux+0x12>
   80100:	4804      	ldr	r0, [pc, #16]	; (80114 <__do_global_dtors_aux+0x20>)
   80102:	f3af 8000 	nop.w
   80106:	2301      	movs	r3, #1
   80108:	7023      	strb	r3, [r4, #0]
   8010a:	bd10      	pop	{r4, pc}
   8010c:	200708d4 	.word	0x200708d4
   80110:	00000000 	.word	0x00000000
   80114:	0008620c 	.word	0x0008620c

00080118 <frame_dummy>:
   80118:	b508      	push	{r3, lr}
   8011a:	4b06      	ldr	r3, [pc, #24]	; (80134 <frame_dummy+0x1c>)
   8011c:	b11b      	cbz	r3, 80126 <frame_dummy+0xe>
   8011e:	4806      	ldr	r0, [pc, #24]	; (80138 <frame_dummy+0x20>)
   80120:	4906      	ldr	r1, [pc, #24]	; (8013c <frame_dummy+0x24>)
   80122:	f3af 8000 	nop.w
   80126:	4806      	ldr	r0, [pc, #24]	; (80140 <frame_dummy+0x28>)
   80128:	6803      	ldr	r3, [r0, #0]
   8012a:	b113      	cbz	r3, 80132 <frame_dummy+0x1a>
   8012c:	4b05      	ldr	r3, [pc, #20]	; (80144 <frame_dummy+0x2c>)
   8012e:	b103      	cbz	r3, 80132 <frame_dummy+0x1a>
   80130:	4798      	blx	r3
   80132:	bd08      	pop	{r3, pc}
   80134:	00000000 	.word	0x00000000
   80138:	0008620c 	.word	0x0008620c
   8013c:	200708d8 	.word	0x200708d8
   80140:	0008620c 	.word	0x0008620c
   80144:	00000000 	.word	0x00000000

00080148 <loop>:
   80148:	b508      	push	{r3, lr}
   8014a:	480c      	ldr	r0, [pc, #48]	; (8017c <loop+0x34>)
   8014c:	f002 fab6 	bl	826bc <iprintf>
   80150:	2101      	movs	r1, #1
   80152:	200d      	movs	r0, #13
   80154:	f001 f9e8 	bl	81528 <digitalWrite>
   80158:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
   8015c:	f001 f95e 	bl	8141c <delay>
   80160:	4807      	ldr	r0, [pc, #28]	; (80180 <loop+0x38>)
   80162:	f002 faab 	bl	826bc <iprintf>
   80166:	200d      	movs	r0, #13
   80168:	2100      	movs	r1, #0
   8016a:	f001 f9dd 	bl	81528 <digitalWrite>
   8016e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   80172:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
   80176:	f001 b951 	b.w	8141c <delay>
   8017a:	bf00      	nop
   8017c:	00085514 	.word	0x00085514
   80180:	00085519 	.word	0x00085519

00080184 <ADC_Handler>:
   80184:	4b01      	ldr	r3, [pc, #4]	; (8018c <ADC_Handler+0x8>)
   80186:	6b1b      	ldr	r3, [r3, #48]	; 0x30
   80188:	4770      	bx	lr
   8018a:	bf00      	nop
   8018c:	400c0000 	.word	0x400c0000

00080190 <setup>:
   80190:	b508      	push	{r3, lr}
   80192:	200d      	movs	r0, #13
   80194:	2101      	movs	r1, #1
   80196:	f001 f943 	bl	81420 <pinMode>
   8019a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   8019e:	4802      	ldr	r0, [pc, #8]	; (801a8 <setup+0x18>)
   801a0:	f44f 5116 	mov.w	r1, #9600	; 0x2580
   801a4:	f001 b80e 	b.w	811c4 <_ZN9UARTClass5beginEm>
   801a8:	20070a00 	.word	0x20070a00

000801ac <_Z11serialEventv>:
   801ac:	4770      	bx	lr
	...

000801b0 <UART_Handler>:
   801b0:	4801      	ldr	r0, [pc, #4]	; (801b8 <UART_Handler+0x8>)
   801b2:	f001 b80b 	b.w	811cc <_ZN9UARTClass10IrqHandlerEv>
   801b6:	bf00      	nop
   801b8:	20070a00 	.word	0x20070a00

000801bc <_Z12serialEvent1v>:
   801bc:	4770      	bx	lr

000801be <_Z12serialEvent2v>:
   801be:	4770      	bx	lr

000801c0 <_Z12serialEvent3v>:
   801c0:	4770      	bx	lr
	...

000801c4 <USART0_Handler>:
   801c4:	4801      	ldr	r0, [pc, #4]	; (801cc <USART0_Handler+0x8>)
   801c6:	f001 b801 	b.w	811cc <_ZN9UARTClass10IrqHandlerEv>
   801ca:	bf00      	nop
   801cc:	20070aac 	.word	0x20070aac

000801d0 <USART1_Handler>:
   801d0:	4801      	ldr	r0, [pc, #4]	; (801d8 <USART1_Handler+0x8>)
   801d2:	f000 bffb 	b.w	811cc <_ZN9UARTClass10IrqHandlerEv>
   801d6:	bf00      	nop
   801d8:	20070ad4 	.word	0x20070ad4

000801dc <USART3_Handler>:
   801dc:	4801      	ldr	r0, [pc, #4]	; (801e4 <USART3_Handler+0x8>)
   801de:	f000 bff5 	b.w	811cc <_ZN9UARTClass10IrqHandlerEv>
   801e2:	bf00      	nop
   801e4:	20070afc 	.word	0x20070afc

000801e8 <init>:
   801e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   801ec:	4d3f      	ldr	r5, [pc, #252]	; (802ec <init+0x104>)
   801ee:	f000 fdbb 	bl	80d68 <SystemInit>
   801f2:	682b      	ldr	r3, [r5, #0]
   801f4:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
   801f8:	fbb3 f3f2 	udiv	r3, r3, r2
   801fc:	1e5a      	subs	r2, r3, #1
   801fe:	4b3c      	ldr	r3, [pc, #240]	; (802f0 <init+0x108>)
   80200:	21f0      	movs	r1, #240	; 0xf0
   80202:	605a      	str	r2, [r3, #4]
   80204:	4a3b      	ldr	r2, [pc, #236]	; (802f4 <init+0x10c>)
   80206:	2400      	movs	r4, #0
   80208:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
   8020c:	2207      	movs	r2, #7
   8020e:	609c      	str	r4, [r3, #8]
   80210:	601a      	str	r2, [r3, #0]
   80212:	f002 fa2b 	bl	8266c <__libc_init_array>
   80216:	46a8      	mov	r8, r5
   80218:	4620      	mov	r0, r4
   8021a:	2100      	movs	r1, #0
   8021c:	3401      	adds	r4, #1
   8021e:	f001 f983 	bl	81528 <digitalWrite>
   80222:	2c4f      	cmp	r4, #79	; 0x4f
   80224:	d1f8      	bne.n	80218 <init+0x30>
   80226:	4c34      	ldr	r4, [pc, #208]	; (802f8 <init+0x110>)
   80228:	4e34      	ldr	r6, [pc, #208]	; (802fc <init+0x114>)
   8022a:	4f35      	ldr	r7, [pc, #212]	; (80300 <init+0x118>)
   8022c:	4b35      	ldr	r3, [pc, #212]	; (80304 <init+0x11c>)
   8022e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
   80232:	f8c4 50a0 	str.w	r5, [r4, #160]	; 0xa0
   80236:	f44f 7240 	mov.w	r2, #768	; 0x300
   8023a:	f8c6 50a0 	str.w	r5, [r6, #160]	; 0xa0
   8023e:	4620      	mov	r0, r4
   80240:	f8c3 50a0 	str.w	r5, [r3, #160]	; 0xa0
   80244:	2101      	movs	r1, #1
   80246:	2300      	movs	r3, #0
   80248:	f8c7 50a0 	str.w	r5, [r7, #160]	; 0xa0
   8024c:	f000 fc62 	bl	80b14 <PIO_Configure>
   80250:	2000      	movs	r0, #0
   80252:	2101      	movs	r1, #1
   80254:	f001 f968 	bl	81528 <digitalWrite>
   80258:	4620      	mov	r0, r4
   8025a:	2101      	movs	r1, #1
   8025c:	f44f 6240 	mov.w	r2, #3072	; 0xc00
   80260:	2300      	movs	r3, #0
   80262:	f000 fc57 	bl	80b14 <PIO_Configure>
   80266:	4620      	mov	r0, r4
   80268:	2101      	movs	r1, #1
   8026a:	f44f 5240 	mov.w	r2, #12288	; 0x3000
   8026e:	2300      	movs	r3, #0
   80270:	f000 fc50 	bl	80b14 <PIO_Configure>
   80274:	4638      	mov	r0, r7
   80276:	2102      	movs	r1, #2
   80278:	2230      	movs	r2, #48	; 0x30
   8027a:	2300      	movs	r3, #0
   8027c:	f000 fc4a 	bl	80b14 <PIO_Configure>
   80280:	4630      	mov	r0, r6
   80282:	2101      	movs	r1, #1
   80284:	f44f 6240 	mov.w	r2, #3072	; 0xc00
   80288:	2300      	movs	r3, #0
   8028a:	f000 fc43 	bl	80b14 <PIO_Configure>
   8028e:	4620      	mov	r0, r4
   80290:	2101      	movs	r1, #1
   80292:	2203      	movs	r2, #3
   80294:	2300      	movs	r3, #0
   80296:	f000 fc3d 	bl	80b14 <PIO_Configure>
   8029a:	2101      	movs	r1, #1
   8029c:	f44f 4240 	mov.w	r2, #49152	; 0xc000
   802a0:	2300      	movs	r3, #0
   802a2:	4630      	mov	r0, r6
   802a4:	f000 fc36 	bl	80b14 <PIO_Configure>
   802a8:	2025      	movs	r0, #37	; 0x25
   802aa:	f000 fcbf 	bl	80c2c <pmc_enable_periph_clk>
   802ae:	f8d8 1000 	ldr.w	r1, [r8]
   802b2:	4a15      	ldr	r2, [pc, #84]	; (80308 <init+0x120>)
   802b4:	230c      	movs	r3, #12
   802b6:	4815      	ldr	r0, [pc, #84]	; (8030c <init+0x124>)
   802b8:	f000 f8b6 	bl	80428 <adc_init>
   802bc:	2301      	movs	r3, #1
   802be:	4813      	ldr	r0, [pc, #76]	; (8030c <init+0x124>)
   802c0:	2100      	movs	r1, #0
   802c2:	f44f 1240 	mov.w	r2, #3145728	; 0x300000
   802c6:	f000 f979 	bl	805bc <adc_configure_timing>
   802ca:	2100      	movs	r1, #0
   802cc:	460a      	mov	r2, r1
   802ce:	480f      	ldr	r0, [pc, #60]	; (8030c <init+0x124>)
   802d0:	f000 f92a 	bl	80528 <adc_configure_trigger>
   802d4:	4629      	mov	r1, r5
   802d6:	480d      	ldr	r0, [pc, #52]	; (8030c <init+0x124>)
   802d8:	f000 f9ac 	bl	80634 <adc_disable_interrupt>
   802dc:	480b      	ldr	r0, [pc, #44]	; (8030c <init+0x124>)
   802de:	f000 f99d 	bl	8061c <adc_disable_all_channel>
   802e2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
   802e6:	f001 b89a 	b.w	8141e <analogOutputInit>
   802ea:	bf00      	nop
   802ec:	20070030 	.word	0x20070030
   802f0:	e000e010 	.word	0xe000e010
   802f4:	e000ed00 	.word	0xe000ed00
   802f8:	400e0e00 	.word	0x400e0e00
   802fc:	400e1000 	.word	0x400e1000
   80300:	400e1400 	.word	0x400e1400
   80304:	400e1200 	.word	0x400e1200
   80308:	01312d00 	.word	0x01312d00
   8030c:	400c0000 	.word	0x400c0000

00080310 <_GLOBAL__sub_I_g_APinDescription>:
   80310:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
   80314:	4d23      	ldr	r5, [pc, #140]	; (803a4 <_GLOBAL__sub_I_g_APinDescription+0x94>)
   80316:	4c24      	ldr	r4, [pc, #144]	; (803a8 <_GLOBAL__sub_I_g_APinDescription+0x98>)
   80318:	4628      	mov	r0, r5
   8031a:	f000 fe6b 	bl	80ff4 <_ZN10RingBufferC1Ev>
   8031e:	4620      	mov	r0, r4
   80320:	f000 fe68 	bl	80ff4 <_ZN10RingBufferC1Ev>
   80324:	f8df 90b4 	ldr.w	r9, [pc, #180]	; 803dc <_GLOBAL__sub_I_g_APinDescription+0xcc>
   80328:	2208      	movs	r2, #8
   8032a:	4613      	mov	r3, r2
   8032c:	491f      	ldr	r1, [pc, #124]	; (803ac <_GLOBAL__sub_I_g_APinDescription+0x9c>)
   8032e:	9500      	str	r5, [sp, #0]
   80330:	9401      	str	r4, [sp, #4]
   80332:	4f1f      	ldr	r7, [pc, #124]	; (803b0 <_GLOBAL__sub_I_g_APinDescription+0xa0>)
   80334:	481f      	ldr	r0, [pc, #124]	; (803b4 <_GLOBAL__sub_I_g_APinDescription+0xa4>)
   80336:	f000 fefb 	bl	81130 <_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_>
   8033a:	4d1f      	ldr	r5, [pc, #124]	; (803b8 <_GLOBAL__sub_I_g_APinDescription+0xa8>)
   8033c:	4648      	mov	r0, r9
   8033e:	f000 fe59 	bl	80ff4 <_ZN10RingBufferC1Ev>
   80342:	f8df 809c 	ldr.w	r8, [pc, #156]	; 803e0 <_GLOBAL__sub_I_g_APinDescription+0xd0>
   80346:	4638      	mov	r0, r7
   80348:	f000 fe54 	bl	80ff4 <_ZN10RingBufferC1Ev>
   8034c:	4e1b      	ldr	r6, [pc, #108]	; (803bc <_GLOBAL__sub_I_g_APinDescription+0xac>)
   8034e:	4628      	mov	r0, r5
   80350:	f000 fe50 	bl	80ff4 <_ZN10RingBufferC1Ev>
   80354:	4c1a      	ldr	r4, [pc, #104]	; (803c0 <_GLOBAL__sub_I_g_APinDescription+0xb0>)
   80356:	4640      	mov	r0, r8
   80358:	f000 fe4c 	bl	80ff4 <_ZN10RingBufferC1Ev>
   8035c:	4630      	mov	r0, r6
   8035e:	f000 fe49 	bl	80ff4 <_ZN10RingBufferC1Ev>
   80362:	4620      	mov	r0, r4
   80364:	f000 fe46 	bl	80ff4 <_ZN10RingBufferC1Ev>
   80368:	2211      	movs	r2, #17
   8036a:	4613      	mov	r3, r2
   8036c:	f8cd 9000 	str.w	r9, [sp]
   80370:	f8cd 8004 	str.w	r8, [sp, #4]
   80374:	4913      	ldr	r1, [pc, #76]	; (803c4 <_GLOBAL__sub_I_g_APinDescription+0xb4>)
   80376:	4814      	ldr	r0, [pc, #80]	; (803c8 <_GLOBAL__sub_I_g_APinDescription+0xb8>)
   80378:	f000 ff5a 	bl	81230 <_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_>
   8037c:	2212      	movs	r2, #18
   8037e:	4613      	mov	r3, r2
   80380:	9700      	str	r7, [sp, #0]
   80382:	9601      	str	r6, [sp, #4]
   80384:	4911      	ldr	r1, [pc, #68]	; (803cc <_GLOBAL__sub_I_g_APinDescription+0xbc>)
   80386:	4812      	ldr	r0, [pc, #72]	; (803d0 <_GLOBAL__sub_I_g_APinDescription+0xc0>)
   80388:	f000 ff52 	bl	81230 <_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_>
   8038c:	2214      	movs	r2, #20
   8038e:	9500      	str	r5, [sp, #0]
   80390:	9401      	str	r4, [sp, #4]
   80392:	4910      	ldr	r1, [pc, #64]	; (803d4 <_GLOBAL__sub_I_g_APinDescription+0xc4>)
   80394:	4613      	mov	r3, r2
   80396:	4810      	ldr	r0, [pc, #64]	; (803d8 <_GLOBAL__sub_I_g_APinDescription+0xc8>)
   80398:	f000 ff4a 	bl	81230 <_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_>
   8039c:	b003      	add	sp, #12
   8039e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
   803a2:	bf00      	nop
   803a4:	20070a24 	.word	0x20070a24
   803a8:	20070978 	.word	0x20070978
   803ac:	400e0800 	.word	0x400e0800
   803b0:	20070d0c 	.word	0x20070d0c
   803b4:	20070a00 	.word	0x20070a00
   803b8:	20070d94 	.word	0x20070d94
   803bc:	20070b24 	.word	0x20070b24
   803c0:	20070bac 	.word	0x20070bac
   803c4:	40098000 	.word	0x40098000
   803c8:	20070aac 	.word	0x20070aac
   803cc:	4009c000 	.word	0x4009c000
   803d0:	20070ad4 	.word	0x20070ad4
   803d4:	400a4000 	.word	0x400a4000
   803d8:	20070afc 	.word	0x20070afc
   803dc:	20070c84 	.word	0x20070c84
   803e0:	200708f0 	.word	0x200708f0

000803e4 <_Z14serialEventRunv>:
   803e4:	b508      	push	{r3, lr}
   803e6:	480c      	ldr	r0, [pc, #48]	; (80418 <_Z14serialEventRunv+0x34>)
   803e8:	f000 fe22 	bl	81030 <_ZN9UARTClass9availableEv>
   803ec:	b108      	cbz	r0, 803f2 <_Z14serialEventRunv+0xe>
   803ee:	f7ff fedd 	bl	801ac <_Z11serialEventv>
   803f2:	480a      	ldr	r0, [pc, #40]	; (8041c <_Z14serialEventRunv+0x38>)
   803f4:	f000 fe1c 	bl	81030 <_ZN9UARTClass9availableEv>
   803f8:	b108      	cbz	r0, 803fe <_Z14serialEventRunv+0x1a>
   803fa:	f7ff fedf 	bl	801bc <_Z12serialEvent1v>
   803fe:	4808      	ldr	r0, [pc, #32]	; (80420 <_Z14serialEventRunv+0x3c>)
   80400:	f000 fe16 	bl	81030 <_ZN9UARTClass9availableEv>
   80404:	b108      	cbz	r0, 8040a <_Z14serialEventRunv+0x26>
   80406:	f7ff feda 	bl	801be <_Z12serialEvent2v>
   8040a:	4806      	ldr	r0, [pc, #24]	; (80424 <_Z14serialEventRunv+0x40>)
   8040c:	f000 fe10 	bl	81030 <_ZN9UARTClass9availableEv>
   80410:	b108      	cbz	r0, 80416 <_Z14serialEventRunv+0x32>
   80412:	f7ff fed5 	bl	801c0 <_Z12serialEvent3v>
   80416:	bd08      	pop	{r3, pc}
   80418:	20070a00 	.word	0x20070a00
   8041c:	20070aac 	.word	0x20070aac
   80420:	20070ad4 	.word	0x20070ad4
   80424:	20070afc 	.word	0x20070afc

00080428 <adc_init>:
   80428:	b5f0      	push	{r4, r5, r6, r7, lr}
   8042a:	af03      	add	r7, sp, #12
   8042c:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
   80430:	4698      	mov	r8, r3
   80432:	4604      	mov	r4, r0
   80434:	2001      	movs	r0, #1
   80436:	4b35      	ldr	r3, [pc, #212]	; (8050c <adc_init+0xe4>)
   80438:	4691      	mov	r9, r2
   8043a:	468a      	mov	sl, r1
   8043c:	2101      	movs	r1, #1
   8043e:	2201      	movs	r2, #1
   80440:	6020      	str	r0, [r4, #0]
   80442:	4620      	mov	r0, r4
   80444:	4798      	blx	r3
   80446:	2500      	movs	r5, #0
   80448:	4b31      	ldr	r3, [pc, #196]	; (80510 <adc_init+0xe8>)
   8044a:	2100      	movs	r1, #0
   8044c:	2201      	movs	r2, #1
   8044e:	f844 5f04 	str.w	r5, [r4, #4]!
   80452:	4620      	mov	r0, r4
   80454:	4798      	blx	r3
   80456:	f240 2002 	movw	r0, #514	; 0x202
   8045a:	4b2e      	ldr	r3, [pc, #184]	; (80514 <adc_init+0xec>)
   8045c:	f240 2102 	movw	r1, #514	; 0x202
   80460:	2201      	movs	r2, #1
   80462:	f8c4 011c 	str.w	r0, [r4, #284]	; 0x11c
   80466:	f504 708e 	add.w	r0, r4, #284	; 0x11c
   8046a:	4798      	blx	r3
   8046c:	4b2a      	ldr	r3, [pc, #168]	; (80518 <adc_init+0xf0>)
   8046e:	f504 7080 	add.w	r0, r4, #256	; 0x100
   80472:	2100      	movs	r1, #0
   80474:	2201      	movs	r2, #1
   80476:	f8c4 5100 	str.w	r5, [r4, #256]	; 0x100
   8047a:	4798      	blx	r3
   8047c:	4b27      	ldr	r3, [pc, #156]	; (8051c <adc_init+0xf4>)
   8047e:	f504 7088 	add.w	r0, r4, #272	; 0x110
   80482:	2100      	movs	r1, #0
   80484:	2201      	movs	r2, #1
   80486:	f8c4 5110 	str.w	r5, [r4, #272]	; 0x110
   8048a:	4798      	blx	r3
   8048c:	ea4f 0049 	mov.w	r0, r9, lsl #1
   80490:	f64d 6183 	movw	r1, #56963	; 0xde83
   80494:	fbba f6f0 	udiv	r6, sl, r0
   80498:	f2c4 311b 	movt	r1, #17179	; 0x431b
   8049c:	fb06 a010 	mls	r0, r6, r0, sl
   804a0:	2800      	cmp	r0, #0
   804a2:	f04f 0002 	mov.w	r0, #2
   804a6:	bf08      	it	eq
   804a8:	3e01      	subeq	r6, #1
   804aa:	eb00 0046 	add.w	r0, r0, r6, lsl #1
   804ae:	fbba f0f0 	udiv	r0, sl, r0
   804b2:	fba0 0101 	umull	r0, r1, r0, r1
   804b6:	0c88      	lsrs	r0, r1, #18
   804b8:	f645 714c 	movw	r1, #24396	; 0x5f4c
   804bc:	fb00 f008 	mul.w	r0, r0, r8
   804c0:	f2c0 0108 	movt	r1, #8
   804c4:	f851 2025 	ldr.w	r2, [r1, r5, lsl #2]
   804c8:	4282      	cmp	r2, r0
   804ca:	d206      	bcs.n	804da <adc_init+0xb2>
   804cc:	3501      	adds	r5, #1
   804ce:	2d10      	cmp	r5, #16
   804d0:	d3f8      	bcc.n	804c4 <adc_init+0x9c>
   804d2:	d102      	bne.n	804da <adc_init+0xb2>
   804d4:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
   804d8:	e013      	b.n	80502 <adc_init+0xda>
   804da:	f8d4 9000 	ldr.w	r9, [r4]
   804de:	4b10      	ldr	r3, [pc, #64]	; (80520 <adc_init+0xf8>)
   804e0:	4620      	mov	r0, r4
   804e2:	2200      	movs	r2, #0
   804e4:	f04f 0800 	mov.w	r8, #0
   804e8:	4649      	mov	r1, r9
   804ea:	4798      	blx	r3
   804ec:	0230      	lsls	r0, r6, #8
   804ee:	4b0d      	ldr	r3, [pc, #52]	; (80524 <adc_init+0xfc>)
   804f0:	2201      	movs	r2, #1
   804f2:	b280      	uxth	r0, r0
   804f4:	f365 4013 	bfi	r0, r5, #16, #4
   804f8:	ea40 0109 	orr.w	r1, r0, r9
   804fc:	4620      	mov	r0, r4
   804fe:	6021      	str	r1, [r4, #0]
   80500:	4798      	blx	r3
   80502:	4640      	mov	r0, r8
   80504:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
   80508:	bdf0      	pop	{r4, r5, r6, r7, pc}
   8050a:	bf00      	nop
   8050c:	000808c5 	.word	0x000808c5
   80510:	000808c5 	.word	0x000808c5
   80514:	000808c5 	.word	0x000808c5
   80518:	000808c5 	.word	0x000808c5
   8051c:	000808c5 	.word	0x000808c5
   80520:	000808c5 	.word	0x000808c5
   80524:	000808c5 	.word	0x000808c5

00080528 <adc_configure_trigger>:
   80528:	b5f0      	push	{r4, r5, r6, r7, lr}
   8052a:	af03      	add	r7, sp, #12
   8052c:	f84d 8d04 	str.w	r8, [sp, #-4]!
   80530:	4604      	mov	r4, r0
   80532:	4b1c      	ldr	r3, [pc, #112]	; (805a4 <adc_configure_trigger+0x7c>)
   80534:	4616      	mov	r6, r2
   80536:	4688      	mov	r8, r1
   80538:	2200      	movs	r2, #0
   8053a:	f854 5f04 	ldr.w	r5, [r4, #4]!
   8053e:	4620      	mov	r0, r4
   80540:	4629      	mov	r1, r5
   80542:	4798      	blx	r3
   80544:	4b18      	ldr	r3, [pc, #96]	; (805a8 <adc_configure_trigger+0x80>)
   80546:	f025 018f 	bic.w	r1, r5, #143	; 0x8f
   8054a:	4620      	mov	r0, r4
   8054c:	2201      	movs	r2, #1
   8054e:	6021      	str	r1, [r4, #0]
   80550:	4798      	blx	r3
   80552:	07f0      	lsls	r0, r6, #31
   80554:	d114      	bne.n	80580 <adc_configure_trigger+0x58>
   80556:	ea5f 70c8 	movs.w	r0, r8, lsl #31
   8055a:	bf04      	itt	eq
   8055c:	f85d 8b04 	ldreq.w	r8, [sp], #4
   80560:	bdf0      	popeq	{r4, r5, r6, r7, pc}
   80562:	6825      	ldr	r5, [r4, #0]
   80564:	4b13      	ldr	r3, [pc, #76]	; (805b4 <adc_configure_trigger+0x8c>)
   80566:	4620      	mov	r0, r4
   80568:	2200      	movs	r2, #0
   8056a:	4629      	mov	r1, r5
   8056c:	4798      	blx	r3
   8056e:	f008 000e 	and.w	r0, r8, #14
   80572:	4b11      	ldr	r3, [pc, #68]	; (805b8 <adc_configure_trigger+0x90>)
   80574:	2201      	movs	r2, #1
   80576:	4328      	orrs	r0, r5
   80578:	f040 0101 	orr.w	r1, r0, #1
   8057c:	4620      	mov	r0, r4
   8057e:	e00a      	b.n	80596 <adc_configure_trigger+0x6e>
   80580:	6825      	ldr	r5, [r4, #0]
   80582:	4b0a      	ldr	r3, [pc, #40]	; (805ac <adc_configure_trigger+0x84>)
   80584:	4620      	mov	r0, r4
   80586:	2200      	movs	r2, #0
   80588:	4629      	mov	r1, r5
   8058a:	4798      	blx	r3
   8058c:	4b08      	ldr	r3, [pc, #32]	; (805b0 <adc_configure_trigger+0x88>)
   8058e:	f045 0180 	orr.w	r1, r5, #128	; 0x80
   80592:	4620      	mov	r0, r4
   80594:	2201      	movs	r2, #1
   80596:	6021      	str	r1, [r4, #0]
   80598:	f85d 8b04 	ldr.w	r8, [sp], #4
   8059c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
   805a0:	4718      	bx	r3
   805a2:	bf00      	nop
   805a4:	000808c5 	.word	0x000808c5
   805a8:	000808c5 	.word	0x000808c5
   805ac:	000808c5 	.word	0x000808c5
   805b0:	000808c5 	.word	0x000808c5
   805b4:	000808c5 	.word	0x000808c5
   805b8:	000808c5 	.word	0x000808c5

000805bc <adc_configure_timing>:
   805bc:	b5f0      	push	{r4, r5, r6, r7, lr}
   805be:	af03      	add	r7, sp, #12
   805c0:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
   805c4:	4604      	mov	r4, r0
   805c6:	4698      	mov	r8, r3
   805c8:	4b0d      	ldr	r3, [pc, #52]	; (80600 <adc_configure_timing+0x44>)
   805ca:	4691      	mov	r9, r2
   805cc:	460e      	mov	r6, r1
   805ce:	2200      	movs	r2, #0
   805d0:	f854 5f04 	ldr.w	r5, [r4, #4]!
   805d4:	4620      	mov	r0, r4
   805d6:	4629      	mov	r1, r5
   805d8:	4798      	blx	r3
   805da:	f006 000f 	and.w	r0, r6, #15
   805de:	f008 0103 	and.w	r1, r8, #3
   805e2:	4b08      	ldr	r3, [pc, #32]	; (80604 <adc_configure_timing+0x48>)
   805e4:	2201      	movs	r2, #1
   805e6:	ea49 6000 	orr.w	r0, r9, r0, lsl #24
   805ea:	ea40 7001 	orr.w	r0, r0, r1, lsl #28
   805ee:	ea40 0105 	orr.w	r1, r0, r5
   805f2:	4620      	mov	r0, r4
   805f4:	6021      	str	r1, [r4, #0]
   805f6:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
   805fa:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
   805fe:	4718      	bx	r3
   80600:	000808c5 	.word	0x000808c5
   80604:	000808c5 	.word	0x000808c5

00080608 <adc_disable_channel>:
   80608:	2201      	movs	r2, #1
   8060a:	4b03      	ldr	r3, [pc, #12]	; (80618 <adc_disable_channel+0x10>)
   8060c:	fa02 f101 	lsl.w	r1, r2, r1
   80610:	2201      	movs	r2, #1
   80612:	f840 1f14 	str.w	r1, [r0, #20]!
   80616:	4718      	bx	r3
   80618:	000808c5 	.word	0x000808c5

0008061c <adc_disable_all_channel>:
   8061c:	f64f 71ff 	movw	r1, #65535	; 0xffff
   80620:	4b03      	ldr	r3, [pc, #12]	; (80630 <adc_disable_all_channel+0x14>)
   80622:	2201      	movs	r2, #1
   80624:	f840 1f14 	str.w	r1, [r0, #20]!
   80628:	f64f 71ff 	movw	r1, #65535	; 0xffff
   8062c:	4718      	bx	r3
   8062e:	bf00      	nop
   80630:	000808c5 	.word	0x000808c5

00080634 <adc_disable_interrupt>:
   80634:	4b02      	ldr	r3, [pc, #8]	; (80640 <adc_disable_interrupt+0xc>)
   80636:	f840 1f28 	str.w	r1, [r0, #40]!
   8063a:	2201      	movs	r2, #1
   8063c:	4718      	bx	r3
   8063e:	bf00      	nop
   80640:	000808c5 	.word	0x000808c5

00080644 <conware_print_results>:
   80644:	b5f0      	push	{r4, r5, r6, r7, lr}
   80646:	af03      	add	r7, sp, #12
   80648:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
   8064c:	b083      	sub	sp, #12
   8064e:	f640 6124 	movw	r1, #3620	; 0xe24
   80652:	2001      	movs	r0, #1
   80654:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80658:	7008      	strb	r0, [r1, #0]
   8065a:	f645 708c 	movw	r0, #24460	; 0x5f8c
   8065e:	4923      	ldr	r1, [pc, #140]	; (806ec <conware_print_results+0xa8>)
   80660:	f2c0 0008 	movt	r0, #8
   80664:	4788      	blx	r1
   80666:	f647 0b94 	movw	fp, #30868	; 0x7894
   8066a:	f643 2a14 	movw	sl, #14868	; 0x3a14
   8066e:	f641 28d4 	movw	r8, #6868	; 0x1ad4
   80672:	f645 75a0 	movw	r5, #24480	; 0x5fa0
   80676:	f8df 9078 	ldr.w	r9, [pc, #120]	; 806f0 <conware_print_results+0xac>
   8067a:	2400      	movs	r4, #0
   8067c:	f2c2 0b07 	movt	fp, #8199	; 0x2007
   80680:	f2c2 0a07 	movt	sl, #8199	; 0x2007
   80684:	f2c2 0807 	movt	r8, #8199	; 0x2007
   80688:	f2c0 0508 	movt	r5, #8
   8068c:	f645 1054 	movw	r0, #22868	; 0x5954
   80690:	f85a 2024 	ldr.w	r2, [sl, r4, lsl #2]
   80694:	f858 6024 	ldr.w	r6, [r8, r4, lsl #2]
   80698:	f2c2 0007 	movt	r0, #8199	; 0x2007
   8069c:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
   806a0:	f241 3004 	movw	r0, #4868	; 0x1304
   806a4:	f2c2 0007 	movt	r0, #8199	; 0x2007
   806a8:	5d01      	ldrb	r1, [r0, r4]
   806aa:	f85b 0024 	ldr.w	r0, [fp, r4, lsl #2]
   806ae:	e88d 0045 	stmia.w	sp, {r0, r2, r6}
   806b2:	4628      	mov	r0, r5
   806b4:	4622      	mov	r2, r4
   806b6:	47c8      	blx	r9
   806b8:	3401      	adds	r4, #1
   806ba:	f5b4 6ffa 	cmp.w	r4, #2000	; 0x7d0
   806be:	d1e5      	bne.n	8068c <conware_print_results+0x48>
   806c0:	f645 70c0 	movw	r0, #24512	; 0x5fc0
   806c4:	490b      	ldr	r1, [pc, #44]	; (806f4 <conware_print_results+0xb0>)
   806c6:	f2c0 0008 	movt	r0, #8
   806ca:	4788      	blx	r1
   806cc:	f640 601c 	movw	r0, #3612	; 0xe1c
   806d0:	2100      	movs	r1, #0
   806d2:	f2c2 0007 	movt	r0, #8199	; 0x2007
   806d6:	6001      	str	r1, [r0, #0]
   806d8:	f640 6024 	movw	r0, #3620	; 0xe24
   806dc:	f2c2 0007 	movt	r0, #8199	; 0x2007
   806e0:	7001      	strb	r1, [r0, #0]
   806e2:	b003      	add	sp, #12
   806e4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
   806e8:	bdf0      	pop	{r4, r5, r6, r7, pc}
   806ea:	bf00      	nop
   806ec:	000826bd 	.word	0x000826bd
   806f0:	000826bd 	.word	0x000826bd
   806f4:	000826bd 	.word	0x000826bd

000806f8 <conware_interrupt_log>:
   806f8:	4601      	mov	r1, r0
   806fa:	f640 6024 	movw	r0, #3620	; 0xe24
   806fe:	f2c2 0007 	movt	r0, #8199	; 0x2007
   80702:	7800      	ldrb	r0, [r0, #0]
   80704:	b100      	cbz	r0, 80708 <conware_interrupt_log+0x10>
   80706:	4770      	bx	lr
   80708:	4b01      	ldr	r3, [pc, #4]	; (80710 <conware_interrupt_log+0x18>)
   8070a:	2000      	movs	r0, #0
   8070c:	2202      	movs	r2, #2
   8070e:	4718      	bx	r3
   80710:	00080715 	.word	0x00080715

00080714 <conware_common_log>:
   80714:	b5f0      	push	{r4, r5, r6, r7, lr}
   80716:	af03      	add	r7, sp, #12
   80718:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
   8071c:	b081      	sub	sp, #4
   8071e:	f640 661c 	movw	r6, #3612	; 0xe1c
   80722:	4605      	mov	r5, r0
   80724:	46f0      	mov	r8, lr
   80726:	4614      	mov	r4, r2
   80728:	468b      	mov	fp, r1
   8072a:	f2c2 0607 	movt	r6, #8199	; 0x2007
   8072e:	6830      	ldr	r0, [r6, #0]
   80730:	f5b0 6ffa 	cmp.w	r0, #2000	; 0x7d0
   80734:	d306      	bcc.n	80744 <conware_common_log+0x30>
   80736:	4862      	ldr	r0, [pc, #392]	; (808c0 <conware_common_log+0x1ac>)
   80738:	4780      	blx	r0
   8073a:	6830      	ldr	r0, [r6, #0]
   8073c:	0900      	lsrs	r0, r0, #4
   8073e:	287c      	cmp	r0, #124	; 0x7c
   80740:	f200 80a4 	bhi.w	8088c <conware_common_log+0x178>
   80744:	f3ef 8010 	mrs	r0, PRIMASK
   80748:	2101      	movs	r1, #1
   8074a:	2c02      	cmp	r4, #2
   8074c:	f381 8810 	msr	PRIMASK, r1
   80750:	b672      	cpsid	i
   80752:	f000 0e01 	and.w	lr, r0, #1
   80756:	6830      	ldr	r0, [r6, #0]
   80758:	d11a      	bne.n	80790 <conware_common_log+0x7c>
   8075a:	1e41      	subs	r1, r0, #1
   8075c:	2900      	cmp	r1, #0
   8075e:	db6d      	blt.n	8083c <conware_common_log+0x128>
   80760:	f645 1254 	movw	r2, #22868	; 0x5954
   80764:	f2c2 0207 	movt	r2, #8199	; 0x2007
   80768:	f852 2021 	ldr.w	r2, [r2, r1, lsl #2]
   8076c:	42aa      	cmp	r2, r5
   8076e:	d165      	bne.n	8083c <conware_common_log+0x128>
   80770:	f241 3204 	movw	r2, #4868	; 0x1304
   80774:	f2c2 0207 	movt	r2, #8199	; 0x2007
   80778:	5c52      	ldrb	r2, [r2, r1]
   8077a:	2a02      	cmp	r2, #2
   8077c:	d15e      	bne.n	8083c <conware_common_log+0x128>
   8077e:	f641 22d4 	movw	r2, #6868	; 0x1ad4
   80782:	f2c2 0207 	movt	r2, #8199	; 0x2007
   80786:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
   8078a:	eb02 0181 	add.w	r1, r2, r1, lsl #2
   8078e:	e078      	b.n	80882 <conware_common_log+0x16e>
   80790:	bb74      	cbnz	r4, 807f0 <conware_common_log+0xdc>
   80792:	f640 6120 	movw	r1, #3616	; 0xe20
   80796:	f2c2 0107 	movt	r1, #8199	; 0x2007
   8079a:	680b      	ldr	r3, [r1, #0]
   8079c:	4298      	cmp	r0, r3
   8079e:	d927      	bls.n	807f0 <conware_common_log+0xdc>
   807a0:	1e41      	subs	r1, r0, #1
   807a2:	d025      	beq.n	807f0 <conware_common_log+0xdc>
   807a4:	4299      	cmp	r1, r3
   807a6:	d323      	bcc.n	807f0 <conware_common_log+0xdc>
   807a8:	f645 1954 	movw	r9, #22868	; 0x5954
   807ac:	f647 0a94 	movw	sl, #30868	; 0x7894
   807b0:	4601      	mov	r1, r0
   807b2:	f2c2 0907 	movt	r9, #8199	; 0x2007
   807b6:	f2c2 0a07 	movt	sl, #8199	; 0x2007
   807ba:	eb09 0681 	add.w	r6, r9, r1, lsl #2
   807be:	f856 6c04 	ldr.w	r6, [r6, #-4]
   807c2:	42ae      	cmp	r6, r5
   807c4:	d10f      	bne.n	807e6 <conware_common_log+0xd2>
   807c6:	f241 3204 	movw	r2, #4868	; 0x1304
   807ca:	eb0a 0c81 	add.w	ip, sl, r1, lsl #2
   807ce:	f2c2 0207 	movt	r2, #8199	; 0x2007
   807d2:	1856      	adds	r6, r2, r1
   807d4:	f85c 2c04 	ldr.w	r2, [ip, #-4]
   807d8:	f816 6c01 	ldrb.w	r6, [r6, #-1]
   807dc:	455a      	cmp	r2, fp
   807de:	d101      	bne.n	807e4 <conware_common_log+0xd0>
   807e0:	b90e      	cbnz	r6, 807e6 <conware_common_log+0xd2>
   807e2:	e057      	b.n	80894 <conware_common_log+0x180>
   807e4:	b126      	cbz	r6, 807f0 <conware_common_log+0xdc>
   807e6:	1e8e      	subs	r6, r1, #2
   807e8:	d002      	beq.n	807f0 <conware_common_log+0xdc>
   807ea:	3901      	subs	r1, #1
   807ec:	429e      	cmp	r6, r3
   807ee:	d2e4      	bcs.n	807ba <conware_common_log+0xa6>
   807f0:	f647 0194 	movw	r1, #30868	; 0x7894
   807f4:	2200      	movs	r2, #0
   807f6:	2c01      	cmp	r4, #1
   807f8:	f2c2 0107 	movt	r1, #8199	; 0x2007
   807fc:	f841 b020 	str.w	fp, [r1, r0, lsl #2]
   80800:	f645 1154 	movw	r1, #22868	; 0x5954
   80804:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80808:	f841 5020 	str.w	r5, [r1, r0, lsl #2]
   8080c:	f241 3104 	movw	r1, #4868	; 0x1304
   80810:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80814:	540c      	strb	r4, [r1, r0]
   80816:	f641 21d4 	movw	r1, #6868	; 0x1ad4
   8081a:	f2c2 0107 	movt	r1, #8199	; 0x2007
   8081e:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   80822:	f643 2114 	movw	r1, #14868	; 0x3a14
   80826:	f2c2 0107 	movt	r1, #8199	; 0x2007
   8082a:	f841 8020 	str.w	r8, [r1, r0, lsl #2]
   8082e:	bf02      	ittt	eq
   80830:	f640 6120 	movweq	r1, #3616	; 0xe20
   80834:	f2c2 0107 	movteq	r1, #8199	; 0x2007
   80838:	6008      	streq	r0, [r1, #0]
   8083a:	e01e      	b.n	8087a <conware_common_log+0x166>
   8083c:	f641 21d4 	movw	r1, #6868	; 0x1ad4
   80840:	2200      	movs	r2, #0
   80842:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80846:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   8084a:	f647 0194 	movw	r1, #30868	; 0x7894
   8084e:	2202      	movs	r2, #2
   80850:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80854:	f841 b020 	str.w	fp, [r1, r0, lsl #2]
   80858:	f645 1154 	movw	r1, #22868	; 0x5954
   8085c:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80860:	f841 5020 	str.w	r5, [r1, r0, lsl #2]
   80864:	f241 3104 	movw	r1, #4868	; 0x1304
   80868:	f2c2 0107 	movt	r1, #8199	; 0x2007
   8086c:	540a      	strb	r2, [r1, r0]
   8086e:	f643 2114 	movw	r1, #14868	; 0x3a14
   80872:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80876:	f841 8020 	str.w	r8, [r1, r0, lsl #2]
   8087a:	f640 611c 	movw	r1, #3612	; 0xe1c
   8087e:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80882:	3001      	adds	r0, #1
   80884:	6008      	str	r0, [r1, #0]
   80886:	f38e 8810 	msr	PRIMASK, lr
   8088a:	b662      	cpsie	i
   8088c:	b001      	add	sp, #4
   8088e:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
   80892:	bdf0      	pop	{r4, r5, r6, r7, pc}
   80894:	f641 20d4 	movw	r0, #6868	; 0x1ad4
   80898:	f240 022c 	movw	r2, #44	; 0x2c
   8089c:	f2c2 0007 	movt	r0, #8199	; 0x2007
   808a0:	f2c2 0207 	movt	r2, #8199	; 0x2007
   808a4:	eb00 0081 	add.w	r0, r0, r1, lsl #2
   808a8:	6812      	ldr	r2, [r2, #0]
   808aa:	f850 1c04 	ldr.w	r1, [r0, #-4]
   808ae:	4291      	cmp	r1, r2
   808b0:	bf3c      	itt	cc
   808b2:	3101      	addcc	r1, #1
   808b4:	f840 1c04 	strcc.w	r1, [r0, #-4]
   808b8:	f38e 8810 	msr	PRIMASK, lr
   808bc:	e7e6      	b.n	8088c <conware_common_log+0x178>
   808be:	bf00      	nop
   808c0:	00080645 	.word	0x00080645

000808c4 <conware_log>:
   808c4:	0f43      	lsrs	r3, r0, #29
   808c6:	2b02      	cmp	r3, #2
   808c8:	d80b      	bhi.n	808e2 <conware_log+0x1e>
   808ca:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
   808ce:	bf98      	it	ls
   808d0:	4770      	bxls	lr
   808d2:	f640 6324 	movw	r3, #3620	; 0xe24
   808d6:	f2c2 0307 	movt	r3, #8199	; 0x2007
   808da:	781b      	ldrb	r3, [r3, #0]
   808dc:	b90b      	cbnz	r3, 808e2 <conware_log+0x1e>
   808de:	4b01      	ldr	r3, [pc, #4]	; (808e4 <conware_log+0x20>)
   808e0:	4718      	bx	r3
   808e2:	4770      	bx	lr
   808e4:	00080715 	.word	0x00080715

000808e8 <PIO_PullUp>:
   808e8:	b122      	cbz	r2, 808f4 <PIO_PullUp+0xc>
   808ea:	4b05      	ldr	r3, [pc, #20]	; (80900 <PIO_PullUp+0x18>)
   808ec:	f840 1f64 	str.w	r1, [r0, #100]!
   808f0:	2201      	movs	r2, #1
   808f2:	4718      	bx	r3
   808f4:	4b03      	ldr	r3, [pc, #12]	; (80904 <PIO_PullUp+0x1c>)
   808f6:	f840 1f60 	str.w	r1, [r0, #96]!
   808fa:	2201      	movs	r2, #1
   808fc:	4718      	bx	r3
   808fe:	bf00      	nop
   80900:	000808c5 	.word	0x000808c5
   80904:	000808c5 	.word	0x000808c5

00080908 <PIO_SetPeripheral>:
   80908:	b5f0      	push	{r4, r5, r6, r7, lr}
   8090a:	af03      	add	r7, sp, #12
   8090c:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
   80910:	b082      	sub	sp, #8
   80912:	4b28      	ldr	r3, [pc, #160]	; (809b4 <PIO_SetPeripheral+0xac>)
   80914:	460e      	mov	r6, r1
   80916:	4605      	mov	r5, r0
   80918:	4614      	mov	r4, r2
   8091a:	f840 2f44 	str.w	r2, [r0, #68]!
   8091e:	4611      	mov	r1, r2
   80920:	2201      	movs	r2, #1
   80922:	4798      	blx	r3
   80924:	2e05      	cmp	r6, #5
   80926:	d839      	bhi.n	8099c <PIO_SetPeripheral+0x94>
   80928:	e8df f006 	tbb	[pc, r6]
   8092c:	3f21033f 	.word	0x3f21033f
   80930:	3f3f      	.short	0x3f3f
   80932:	462e      	mov	r6, r5
   80934:	4b23      	ldr	r3, [pc, #140]	; (809c4 <PIO_SetPeripheral+0xbc>)
   80936:	2200      	movs	r2, #0
   80938:	f856 8f70 	ldr.w	r8, [r6, #112]!
   8093c:	4630      	mov	r0, r6
   8093e:	4641      	mov	r1, r8
   80940:	4798      	blx	r3
   80942:	4b21      	ldr	r3, [pc, #132]	; (809c8 <PIO_SetPeripheral+0xc0>)
   80944:	a801      	add	r0, sp, #4
   80946:	4641      	mov	r1, r8
   80948:	2201      	movs	r2, #1
   8094a:	f8cd 8004 	str.w	r8, [sp, #4]
   8094e:	4798      	blx	r3
   80950:	f8dd 9004 	ldr.w	r9, [sp, #4]
   80954:	f8d6 8000 	ldr.w	r8, [r6]
   80958:	4b1c      	ldr	r3, [pc, #112]	; (809cc <PIO_SetPeripheral+0xc4>)
   8095a:	4630      	mov	r0, r6
   8095c:	2200      	movs	r2, #0
   8095e:	4641      	mov	r1, r8
   80960:	4798      	blx	r3
   80962:	ea29 0004 	bic.w	r0, r9, r4
   80966:	4b1a      	ldr	r3, [pc, #104]	; (809d0 <PIO_SetPeripheral+0xc8>)
   80968:	ea00 0108 	and.w	r1, r0, r8
   8096c:	e012      	b.n	80994 <PIO_SetPeripheral+0x8c>
   8096e:	462e      	mov	r6, r5
   80970:	4b11      	ldr	r3, [pc, #68]	; (809b8 <PIO_SetPeripheral+0xb0>)
   80972:	2200      	movs	r2, #0
   80974:	f856 8f70 	ldr.w	r8, [r6, #112]!
   80978:	4630      	mov	r0, r6
   8097a:	4641      	mov	r1, r8
   8097c:	4798      	blx	r3
   8097e:	4b0f      	ldr	r3, [pc, #60]	; (809bc <PIO_SetPeripheral+0xb4>)
   80980:	a801      	add	r0, sp, #4
   80982:	4641      	mov	r1, r8
   80984:	2201      	movs	r2, #1
   80986:	f8cd 8004 	str.w	r8, [sp, #4]
   8098a:	4798      	blx	r3
   8098c:	9801      	ldr	r0, [sp, #4]
   8098e:	4b0c      	ldr	r3, [pc, #48]	; (809c0 <PIO_SetPeripheral+0xb8>)
   80990:	ea40 0104 	orr.w	r1, r0, r4
   80994:	6031      	str	r1, [r6, #0]
   80996:	4630      	mov	r0, r6
   80998:	2201      	movs	r2, #1
   8099a:	4798      	blx	r3
   8099c:	f845 4f04 	str.w	r4, [r5, #4]!
   809a0:	4b0c      	ldr	r3, [pc, #48]	; (809d4 <PIO_SetPeripheral+0xcc>)
   809a2:	4621      	mov	r1, r4
   809a4:	2201      	movs	r2, #1
   809a6:	4628      	mov	r0, r5
   809a8:	4798      	blx	r3
   809aa:	b002      	add	sp, #8
   809ac:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
   809b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
   809b2:	bf00      	nop
   809b4:	000808c5 	.word	0x000808c5
   809b8:	000808c5 	.word	0x000808c5
   809bc:	000808c5 	.word	0x000808c5
   809c0:	000808c5 	.word	0x000808c5
   809c4:	000808c5 	.word	0x000808c5
   809c8:	000808c5 	.word	0x000808c5
   809cc:	000808c5 	.word	0x000808c5
   809d0:	000808c5 	.word	0x000808c5
   809d4:	000808c5 	.word	0x000808c5

000809d8 <PIO_SetInput>:
   809d8:	b5f0      	push	{r4, r5, r6, r7, lr}
   809da:	af03      	add	r7, sp, #12
   809dc:	f84d bd04 	str.w	fp, [sp, #-4]!
   809e0:	4b1d      	ldr	r3, [pc, #116]	; (80a58 <PIO_SetInput+0x80>)
   809e2:	4616      	mov	r6, r2
   809e4:	4605      	mov	r5, r0
   809e6:	f840 1f44 	str.w	r1, [r0, #68]!
   809ea:	2201      	movs	r2, #1
   809ec:	460c      	mov	r4, r1
   809ee:	4798      	blx	r3
   809f0:	4b1a      	ldr	r3, [pc, #104]	; (80a5c <PIO_SetInput+0x84>)
   809f2:	f006 0201 	and.w	r2, r6, #1
   809f6:	4628      	mov	r0, r5
   809f8:	4621      	mov	r1, r4
   809fa:	4798      	blx	r3
   809fc:	4628      	mov	r0, r5
   809fe:	f016 0f0a 	tst.w	r6, #10
   80a02:	4621      	mov	r1, r4
   80a04:	f04f 0201 	mov.w	r2, #1
   80a08:	bf07      	ittee	eq
   80a0a:	f840 4f24 	streq.w	r4, [r0, #36]!
   80a0e:	4b15      	ldreq	r3, [pc, #84]	; (80a64 <PIO_SetInput+0x8c>)
   80a10:	f840 4f20 	strne.w	r4, [r0, #32]!
   80a14:	4b12      	ldrne	r3, [pc, #72]	; (80a60 <PIO_SetInput+0x88>)
   80a16:	4798      	blx	r3
   80a18:	07b0      	lsls	r0, r6, #30
   80a1a:	d404      	bmi.n	80a26 <PIO_SetInput+0x4e>
   80a1c:	0730      	lsls	r0, r6, #28
   80a1e:	d509      	bpl.n	80a34 <PIO_SetInput+0x5c>
   80a20:	4628      	mov	r0, r5
   80a22:	4b12      	ldr	r3, [pc, #72]	; (80a6c <PIO_SetInput+0x94>)
   80a24:	e001      	b.n	80a2a <PIO_SetInput+0x52>
   80a26:	4628      	mov	r0, r5
   80a28:	4b0f      	ldr	r3, [pc, #60]	; (80a68 <PIO_SetInput+0x90>)
   80a2a:	f840 4f80 	str.w	r4, [r0, #128]!
   80a2e:	4621      	mov	r1, r4
   80a30:	2201      	movs	r2, #1
   80a32:	4798      	blx	r3
   80a34:	4628      	mov	r0, r5
   80a36:	4b0e      	ldr	r3, [pc, #56]	; (80a70 <PIO_SetInput+0x98>)
   80a38:	4621      	mov	r1, r4
   80a3a:	2201      	movs	r2, #1
   80a3c:	f840 4f14 	str.w	r4, [r0, #20]!
   80a40:	4798      	blx	r3
   80a42:	4b0c      	ldr	r3, [pc, #48]	; (80a74 <PIO_SetInput+0x9c>)
   80a44:	602c      	str	r4, [r5, #0]
   80a46:	4628      	mov	r0, r5
   80a48:	4621      	mov	r1, r4
   80a4a:	2201      	movs	r2, #1
   80a4c:	f85d bb04 	ldr.w	fp, [sp], #4
   80a50:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
   80a54:	4718      	bx	r3
   80a56:	bf00      	nop
   80a58:	000808c5 	.word	0x000808c5
   80a5c:	000808e9 	.word	0x000808e9
   80a60:	000808c5 	.word	0x000808c5
   80a64:	000808c5 	.word	0x000808c5
   80a68:	000808c5 	.word	0x000808c5
   80a6c:	000808c5 	.word	0x000808c5
   80a70:	000808c5 	.word	0x000808c5
   80a74:	000808c5 	.word	0x000808c5

00080a78 <PIO_SetOutput>:
   80a78:	b5f0      	push	{r4, r5, r6, r7, lr}
   80a7a:	af03      	add	r7, sp, #12
   80a7c:	f84d 8d04 	str.w	r8, [sp, #-4]!
   80a80:	461e      	mov	r6, r3
   80a82:	4b1c      	ldr	r3, [pc, #112]	; (80af4 <PIO_SetOutput+0x7c>)
   80a84:	4690      	mov	r8, r2
   80a86:	4605      	mov	r5, r0
   80a88:	f840 1f44 	str.w	r1, [r0, #68]!
   80a8c:	2201      	movs	r2, #1
   80a8e:	460c      	mov	r4, r1
   80a90:	4798      	blx	r3
   80a92:	68ba      	ldr	r2, [r7, #8]
   80a94:	4b18      	ldr	r3, [pc, #96]	; (80af8 <PIO_SetOutput+0x80>)
   80a96:	4628      	mov	r0, r5
   80a98:	4621      	mov	r1, r4
   80a9a:	4798      	blx	r3
   80a9c:	4628      	mov	r0, r5
   80a9e:	2e00      	cmp	r6, #0
   80aa0:	4621      	mov	r1, r4
   80aa2:	f04f 0201 	mov.w	r2, #1
   80aa6:	bf07      	ittee	eq
   80aa8:	f840 4f54 	streq.w	r4, [r0, #84]!
   80aac:	4b14      	ldreq	r3, [pc, #80]	; (80b00 <PIO_SetOutput+0x88>)
   80aae:	f840 4f50 	strne.w	r4, [r0, #80]!
   80ab2:	4b12      	ldrne	r3, [pc, #72]	; (80afc <PIO_SetOutput+0x84>)
   80ab4:	4798      	blx	r3
   80ab6:	4628      	mov	r0, r5
   80ab8:	f1b8 0f00 	cmp.w	r8, #0
   80abc:	4621      	mov	r1, r4
   80abe:	f04f 0201 	mov.w	r2, #1
   80ac2:	bf07      	ittee	eq
   80ac4:	f840 4f34 	streq.w	r4, [r0, #52]!
   80ac8:	4b0f      	ldreq	r3, [pc, #60]	; (80b08 <PIO_SetOutput+0x90>)
   80aca:	f840 4f30 	strne.w	r4, [r0, #48]!
   80ace:	4b0d      	ldrne	r3, [pc, #52]	; (80b04 <PIO_SetOutput+0x8c>)
   80ad0:	4798      	blx	r3
   80ad2:	4628      	mov	r0, r5
   80ad4:	4b0d      	ldr	r3, [pc, #52]	; (80b0c <PIO_SetOutput+0x94>)
   80ad6:	4621      	mov	r1, r4
   80ad8:	2201      	movs	r2, #1
   80ada:	f840 4f10 	str.w	r4, [r0, #16]!
   80ade:	4798      	blx	r3
   80ae0:	4b0b      	ldr	r3, [pc, #44]	; (80b10 <PIO_SetOutput+0x98>)
   80ae2:	602c      	str	r4, [r5, #0]
   80ae4:	4628      	mov	r0, r5
   80ae6:	4621      	mov	r1, r4
   80ae8:	2201      	movs	r2, #1
   80aea:	f85d 8b04 	ldr.w	r8, [sp], #4
   80aee:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
   80af2:	4718      	bx	r3
   80af4:	000808c5 	.word	0x000808c5
   80af8:	000808e9 	.word	0x000808e9
   80afc:	000808c5 	.word	0x000808c5
   80b00:	000808c5 	.word	0x000808c5
   80b04:	000808c5 	.word	0x000808c5
   80b08:	000808c5 	.word	0x000808c5
   80b0c:	000808c5 	.word	0x000808c5
   80b10:	000808c5 	.word	0x000808c5

00080b14 <PIO_Configure>:
   80b14:	b5f0      	push	{r4, r5, r6, r7, lr}
   80b16:	af03      	add	r7, sp, #12
   80b18:	f84d 8d04 	str.w	r8, [sp, #-4]!
   80b1c:	b082      	sub	sp, #8
   80b1e:	4605      	mov	r5, r0
   80b20:	1e48      	subs	r0, r1, #1
   80b22:	4698      	mov	r8, r3
   80b24:	4614      	mov	r4, r2
   80b26:	2802      	cmp	r0, #2
   80b28:	d310      	bcc.n	80b4c <PIO_Configure+0x38>
   80b2a:	1f08      	subs	r0, r1, #4
   80b2c:	2802      	cmp	r0, #2
   80b2e:	d220      	bcs.n	80b72 <PIO_Configure+0x5e>
   80b30:	f008 0001 	and.w	r0, r8, #1
   80b34:	4e16      	ldr	r6, [pc, #88]	; (80b90 <PIO_Configure+0x7c>)
   80b36:	9000      	str	r0, [sp, #0]
   80b38:	1f48      	subs	r0, r1, #5
   80b3a:	f3c8 0380 	ubfx	r3, r8, #2, #1
   80b3e:	4621      	mov	r1, r4
   80b40:	fab0 f080 	clz	r0, r0
   80b44:	0942      	lsrs	r2, r0, #5
   80b46:	4628      	mov	r0, r5
   80b48:	47b0      	blx	r6
   80b4a:	e019      	b.n	80b80 <PIO_Configure+0x6c>
   80b4c:	4b12      	ldr	r3, [pc, #72]	; (80b98 <PIO_Configure+0x84>)
   80b4e:	4628      	mov	r0, r5
   80b50:	4622      	mov	r2, r4
   80b52:	4798      	blx	r3
   80b54:	4628      	mov	r0, r5
   80b56:	4b11      	ldr	r3, [pc, #68]	; (80b9c <PIO_Configure+0x88>)
   80b58:	4621      	mov	r1, r4
   80b5a:	2201      	movs	r2, #1
   80b5c:	2601      	movs	r6, #1
   80b5e:	f840 4f44 	str.w	r4, [r0, #68]!
   80b62:	4798      	blx	r3
   80b64:	4b0e      	ldr	r3, [pc, #56]	; (80ba0 <PIO_Configure+0x8c>)
   80b66:	f008 0201 	and.w	r2, r8, #1
   80b6a:	4628      	mov	r0, r5
   80b6c:	4621      	mov	r1, r4
   80b6e:	4798      	blx	r3
   80b70:	e009      	b.n	80b86 <PIO_Configure+0x72>
   80b72:	2903      	cmp	r1, #3
   80b74:	d106      	bne.n	80b84 <PIO_Configure+0x70>
   80b76:	4b07      	ldr	r3, [pc, #28]	; (80b94 <PIO_Configure+0x80>)
   80b78:	4628      	mov	r0, r5
   80b7a:	4621      	mov	r1, r4
   80b7c:	4642      	mov	r2, r8
   80b7e:	4798      	blx	r3
   80b80:	2601      	movs	r6, #1
   80b82:	e000      	b.n	80b86 <PIO_Configure+0x72>
   80b84:	2600      	movs	r6, #0
   80b86:	4630      	mov	r0, r6
   80b88:	b002      	add	sp, #8
   80b8a:	f85d 8b04 	ldr.w	r8, [sp], #4
   80b8e:	bdf0      	pop	{r4, r5, r6, r7, pc}
   80b90:	00080a79 	.word	0x00080a79
   80b94:	000809d9 	.word	0x000809d9
   80b98:	00080909 	.word	0x00080909
   80b9c:	000808c5 	.word	0x000808c5
   80ba0:	000808e9 	.word	0x000808e9

00080ba4 <PIO_GetOutputDataStatus>:
   80ba4:	b5f0      	push	{r4, r5, r6, r7, lr}
   80ba6:	af03      	add	r7, sp, #12
   80ba8:	f84d bd04 	str.w	fp, [sp, #-4]!
   80bac:	4605      	mov	r5, r0
   80bae:	f850 6f08 	ldr.w	r6, [r0, #8]!
   80bb2:	4b0b      	ldr	r3, [pc, #44]	; (80be0 <PIO_GetOutputDataStatus+0x3c>)
   80bb4:	460c      	mov	r4, r1
   80bb6:	2200      	movs	r2, #0
   80bb8:	4631      	mov	r1, r6
   80bba:	4798      	blx	r3
   80bbc:	4226      	tst	r6, r4
   80bbe:	d00a      	beq.n	80bd6 <PIO_GetOutputDataStatus+0x32>
   80bc0:	f855 6f18 	ldr.w	r6, [r5, #24]!
   80bc4:	4b07      	ldr	r3, [pc, #28]	; (80be4 <PIO_GetOutputDataStatus+0x40>)
   80bc6:	2200      	movs	r2, #0
   80bc8:	4628      	mov	r0, r5
   80bca:	4631      	mov	r1, r6
   80bcc:	4798      	blx	r3
   80bce:	4226      	tst	r6, r4
   80bd0:	d001      	beq.n	80bd6 <PIO_GetOutputDataStatus+0x32>
   80bd2:	2001      	movs	r0, #1
   80bd4:	e000      	b.n	80bd8 <PIO_GetOutputDataStatus+0x34>
   80bd6:	2000      	movs	r0, #0
   80bd8:	f85d bb04 	ldr.w	fp, [sp], #4
   80bdc:	bdf0      	pop	{r4, r5, r6, r7, pc}
   80bde:	bf00      	nop
   80be0:	000808c5 	.word	0x000808c5
   80be4:	000808c5 	.word	0x000808c5

00080be8 <pmc_enable_upll_clock>:
   80be8:	b5f0      	push	{r4, r5, r6, r7, lr}
   80bea:	af03      	add	r7, sp, #12
   80bec:	f84d bd04 	str.w	fp, [sp, #-4]!
   80bf0:	f240 641c 	movw	r4, #1564	; 0x61c
   80bf4:	f44f 1044 	mov.w	r0, #3211264	; 0x310000
   80bf8:	4b0a      	ldr	r3, [pc, #40]	; (80c24 <pmc_enable_upll_clock+0x3c>)
   80bfa:	f44f 1144 	mov.w	r1, #3211264	; 0x310000
   80bfe:	2201      	movs	r2, #1
   80c00:	f2c4 040e 	movt	r4, #16398	; 0x400e
   80c04:	6020      	str	r0, [r4, #0]
   80c06:	4620      	mov	r0, r4
   80c08:	4798      	blx	r3
   80c0a:	4e07      	ldr	r6, [pc, #28]	; (80c28 <pmc_enable_upll_clock+0x40>)
   80c0c:	4620      	mov	r0, r4
   80c0e:	2200      	movs	r2, #0
   80c10:	f850 5f4c 	ldr.w	r5, [r0, #76]!
   80c14:	4629      	mov	r1, r5
   80c16:	47b0      	blx	r6
   80c18:	0668      	lsls	r0, r5, #25
   80c1a:	d5f7      	bpl.n	80c0c <pmc_enable_upll_clock+0x24>
   80c1c:	f85d bb04 	ldr.w	fp, [sp], #4
   80c20:	bdf0      	pop	{r4, r5, r6, r7, pc}
   80c22:	bf00      	nop
   80c24:	000808c5 	.word	0x000808c5
   80c28:	000808c5 	.word	0x000808c5

00080c2c <pmc_enable_periph_clk>:
   80c2c:	b5f0      	push	{r4, r5, r6, r7, lr}
   80c2e:	af03      	add	r7, sp, #12
   80c30:	f84d 8d04 	str.w	r8, [sp, #-4]!
   80c34:	282c      	cmp	r0, #44	; 0x2c
   80c36:	d901      	bls.n	80c3c <pmc_enable_periph_clk+0x10>
   80c38:	2501      	movs	r5, #1
   80c3a:	e02c      	b.n	80c96 <pmc_enable_periph_clk+0x6a>
   80c3c:	f240 6410 	movw	r4, #1552	; 0x610
   80c40:	4606      	mov	r6, r0
   80c42:	f2c4 040e 	movt	r4, #16398	; 0x400e
   80c46:	2e1f      	cmp	r6, #31
   80c48:	4620      	mov	r0, r4
   80c4a:	d80f      	bhi.n	80c6c <pmc_enable_periph_clk+0x40>
   80c4c:	f850 8f08 	ldr.w	r8, [r0, #8]!
   80c50:	4b15      	ldr	r3, [pc, #84]	; (80ca8 <pmc_enable_periph_clk+0x7c>)
   80c52:	2200      	movs	r2, #0
   80c54:	2500      	movs	r5, #0
   80c56:	4641      	mov	r1, r8
   80c58:	4798      	blx	r3
   80c5a:	2001      	movs	r0, #1
   80c5c:	fa00 f106 	lsl.w	r1, r0, r6
   80c60:	ea18 0f01 	tst.w	r8, r1
   80c64:	d117      	bne.n	80c96 <pmc_enable_periph_clk+0x6a>
   80c66:	4b11      	ldr	r3, [pc, #68]	; (80cac <pmc_enable_periph_clk+0x80>)
   80c68:	6021      	str	r1, [r4, #0]
   80c6a:	e010      	b.n	80c8e <pmc_enable_periph_clk+0x62>
   80c6c:	f850 8ff8 	ldr.w	r8, [r0, #248]!
   80c70:	4b0b      	ldr	r3, [pc, #44]	; (80ca0 <pmc_enable_periph_clk+0x74>)
   80c72:	2200      	movs	r2, #0
   80c74:	2500      	movs	r5, #0
   80c76:	4641      	mov	r1, r8
   80c78:	4798      	blx	r3
   80c7a:	f1a6 0020 	sub.w	r0, r6, #32
   80c7e:	2101      	movs	r1, #1
   80c80:	4081      	lsls	r1, r0
   80c82:	ea18 0f01 	tst.w	r8, r1
   80c86:	d106      	bne.n	80c96 <pmc_enable_periph_clk+0x6a>
   80c88:	4b06      	ldr	r3, [pc, #24]	; (80ca4 <pmc_enable_periph_clk+0x78>)
   80c8a:	f844 1ff0 	str.w	r1, [r4, #240]!
   80c8e:	4620      	mov	r0, r4
   80c90:	2201      	movs	r2, #1
   80c92:	4798      	blx	r3
   80c94:	2500      	movs	r5, #0
   80c96:	4628      	mov	r0, r5
   80c98:	f85d 8b04 	ldr.w	r8, [sp], #4
   80c9c:	bdf0      	pop	{r4, r5, r6, r7, pc}
   80c9e:	bf00      	nop
   80ca0:	000808c5 	.word	0x000808c5
   80ca4:	000808c5 	.word	0x000808c5
   80ca8:	000808c5 	.word	0x000808c5
   80cac:	000808c5 	.word	0x000808c5

00080cb0 <pmc_disable_periph_clk>:
   80cb0:	b5f0      	push	{r4, r5, r6, r7, lr}
   80cb2:	af03      	add	r7, sp, #12
   80cb4:	f84d 8d04 	str.w	r8, [sp, #-4]!
   80cb8:	282c      	cmp	r0, #44	; 0x2c
   80cba:	d901      	bls.n	80cc0 <pmc_disable_periph_clk+0x10>
   80cbc:	2501      	movs	r5, #1
   80cbe:	e02c      	b.n	80d1a <pmc_disable_periph_clk+0x6a>
   80cc0:	f240 6414 	movw	r4, #1556	; 0x614
   80cc4:	4606      	mov	r6, r0
   80cc6:	f2c4 040e 	movt	r4, #16398	; 0x400e
   80cca:	2e1f      	cmp	r6, #31
   80ccc:	4620      	mov	r0, r4
   80cce:	d80f      	bhi.n	80cf0 <pmc_disable_periph_clk+0x40>
   80cd0:	f850 8f04 	ldr.w	r8, [r0, #4]!
   80cd4:	4b15      	ldr	r3, [pc, #84]	; (80d2c <pmc_disable_periph_clk+0x7c>)
   80cd6:	2200      	movs	r2, #0
   80cd8:	2500      	movs	r5, #0
   80cda:	4641      	mov	r1, r8
   80cdc:	4798      	blx	r3
   80cde:	2001      	movs	r0, #1
   80ce0:	fa00 f106 	lsl.w	r1, r0, r6
   80ce4:	ea18 0f01 	tst.w	r8, r1
   80ce8:	d017      	beq.n	80d1a <pmc_disable_periph_clk+0x6a>
   80cea:	4b11      	ldr	r3, [pc, #68]	; (80d30 <pmc_disable_periph_clk+0x80>)
   80cec:	6021      	str	r1, [r4, #0]
   80cee:	e010      	b.n	80d12 <pmc_disable_periph_clk+0x62>
   80cf0:	f850 8ff4 	ldr.w	r8, [r0, #244]!
   80cf4:	4b0b      	ldr	r3, [pc, #44]	; (80d24 <pmc_disable_periph_clk+0x74>)
   80cf6:	2200      	movs	r2, #0
   80cf8:	2500      	movs	r5, #0
   80cfa:	4641      	mov	r1, r8
   80cfc:	4798      	blx	r3
   80cfe:	f1a6 0020 	sub.w	r0, r6, #32
   80d02:	2101      	movs	r1, #1
   80d04:	4081      	lsls	r1, r0
   80d06:	ea18 0f01 	tst.w	r8, r1
   80d0a:	d006      	beq.n	80d1a <pmc_disable_periph_clk+0x6a>
   80d0c:	4b06      	ldr	r3, [pc, #24]	; (80d28 <pmc_disable_periph_clk+0x78>)
   80d0e:	f844 1ff0 	str.w	r1, [r4, #240]!
   80d12:	4620      	mov	r0, r4
   80d14:	2201      	movs	r2, #1
   80d16:	4798      	blx	r3
   80d18:	2500      	movs	r5, #0
   80d1a:	4628      	mov	r0, r5
   80d1c:	f85d 8b04 	ldr.w	r8, [sp], #4
   80d20:	bdf0      	pop	{r4, r5, r6, r7, pc}
   80d22:	bf00      	nop
   80d24:	000808c5 	.word	0x000808c5
   80d28:	000808c5 	.word	0x000808c5
   80d2c:	000808c5 	.word	0x000808c5
   80d30:	000808c5 	.word	0x000808c5

00080d34 <pmc_switch_udpck_to_upllck>:
   80d34:	2101      	movs	r1, #1
   80d36:	4b05      	ldr	r3, [pc, #20]	; (80d4c <pmc_switch_udpck_to_upllck+0x18>)
   80d38:	2201      	movs	r2, #1
   80d3a:	f360 210b 	bfi	r1, r0, #8, #4
   80d3e:	f240 6038 	movw	r0, #1592	; 0x638
   80d42:	f2c4 000e 	movt	r0, #16398	; 0x400e
   80d46:	6001      	str	r1, [r0, #0]
   80d48:	4718      	bx	r3
   80d4a:	bf00      	nop
   80d4c:	000808c5 	.word	0x000808c5

00080d50 <pmc_enable_udpck>:
   80d50:	f240 6000 	movw	r0, #1536	; 0x600
   80d54:	2120      	movs	r1, #32
   80d56:	4b03      	ldr	r3, [pc, #12]	; (80d64 <pmc_enable_udpck+0x14>)
   80d58:	2201      	movs	r2, #1
   80d5a:	f2c4 000e 	movt	r0, #16398	; 0x400e
   80d5e:	6001      	str	r1, [r0, #0]
   80d60:	2120      	movs	r1, #32
   80d62:	4718      	bx	r3
   80d64:	000808c5 	.word	0x000808c5

00080d68 <SystemInit>:
   80d68:	b5f0      	push	{r4, r5, r6, r7, lr}
   80d6a:	af03      	add	r7, sp, #12
   80d6c:	f84d 8d04 	str.w	r8, [sp, #-4]!
   80d70:	f240 6420 	movw	r4, #1568	; 0x620
   80d74:	4b4e      	ldr	r3, [pc, #312]	; (80eb0 <SystemInit+0x148>)
   80d76:	f44f 6580 	mov.w	r5, #1024	; 0x400
   80d7a:	f44f 6180 	mov.w	r1, #1024	; 0x400
   80d7e:	2201      	movs	r2, #1
   80d80:	f2c4 040e 	movt	r4, #16398	; 0x400e
   80d84:	f504 7078 	add.w	r0, r4, #992	; 0x3e0
   80d88:	f8c4 53e0 	str.w	r5, [r4, #992]	; 0x3e0
   80d8c:	4798      	blx	r3
   80d8e:	4b49      	ldr	r3, [pc, #292]	; (80eb4 <SystemInit+0x14c>)
   80d90:	f504 60bc 	add.w	r0, r4, #1504	; 0x5e0
   80d94:	f44f 6180 	mov.w	r1, #1024	; 0x400
   80d98:	2201      	movs	r2, #1
   80d9a:	f8c4 55e0 	str.w	r5, [r4, #1504]	; 0x5e0
   80d9e:	4798      	blx	r3
   80da0:	6825      	ldr	r5, [r4, #0]
   80da2:	4b45      	ldr	r3, [pc, #276]	; (80eb8 <SystemInit+0x150>)
   80da4:	4620      	mov	r0, r4
   80da6:	2200      	movs	r2, #0
   80da8:	4629      	mov	r1, r5
   80daa:	4798      	blx	r3
   80dac:	f640 0809 	movw	r8, #2057	; 0x809
   80db0:	01e8      	lsls	r0, r5, #7
   80db2:	f2c0 0837 	movt	r8, #55	; 0x37
   80db6:	d40f      	bmi.n	80dd8 <SystemInit+0x70>
   80db8:	4b40      	ldr	r3, [pc, #256]	; (80ebc <SystemInit+0x154>)
   80dba:	4620      	mov	r0, r4
   80dbc:	4641      	mov	r1, r8
   80dbe:	2201      	movs	r2, #1
   80dc0:	f8c4 8000 	str.w	r8, [r4]
   80dc4:	4798      	blx	r3
   80dc6:	4d3e      	ldr	r5, [pc, #248]	; (80ec0 <SystemInit+0x158>)
   80dc8:	4620      	mov	r0, r4
   80dca:	2200      	movs	r2, #0
   80dcc:	f850 6f48 	ldr.w	r6, [r0, #72]!
   80dd0:	4631      	mov	r1, r6
   80dd2:	47a8      	blx	r5
   80dd4:	07f0      	lsls	r0, r6, #31
   80dd6:	d0f7      	beq.n	80dc8 <SystemInit+0x60>
   80dd8:	4b3a      	ldr	r3, [pc, #232]	; (80ec4 <SystemInit+0x15c>)
   80dda:	f108 7180 	add.w	r1, r8, #16777216	; 0x1000000
   80dde:	4620      	mov	r0, r4
   80de0:	2201      	movs	r2, #1
   80de2:	6021      	str	r1, [r4, #0]
   80de4:	4798      	blx	r3
   80de6:	4e38      	ldr	r6, [pc, #224]	; (80ec8 <SystemInit+0x160>)
   80de8:	4620      	mov	r0, r4
   80dea:	2200      	movs	r2, #0
   80dec:	f850 5f48 	ldr.w	r5, [r0, #72]!
   80df0:	4629      	mov	r1, r5
   80df2:	47b0      	blx	r6
   80df4:	03e8      	lsls	r0, r5, #15
   80df6:	d5f7      	bpl.n	80de8 <SystemInit+0x80>
   80df8:	4625      	mov	r5, r4
   80dfa:	4b34      	ldr	r3, [pc, #208]	; (80ecc <SystemInit+0x164>)
   80dfc:	2200      	movs	r2, #0
   80dfe:	f855 6f10 	ldr.w	r6, [r5, #16]!
   80e02:	4628      	mov	r0, r5
   80e04:	4631      	mov	r1, r6
   80e06:	4798      	blx	r3
   80e08:	2001      	movs	r0, #1
   80e0a:	4b31      	ldr	r3, [pc, #196]	; (80ed0 <SystemInit+0x168>)
   80e0c:	2201      	movs	r2, #1
   80e0e:	f360 0601 	bfi	r6, r0, #0, #2
   80e12:	4628      	mov	r0, r5
   80e14:	4631      	mov	r1, r6
   80e16:	602e      	str	r6, [r5, #0]
   80e18:	4798      	blx	r3
   80e1a:	4e2e      	ldr	r6, [pc, #184]	; (80ed4 <SystemInit+0x16c>)
   80e1c:	4620      	mov	r0, r4
   80e1e:	2200      	movs	r2, #0
   80e20:	f850 5f48 	ldr.w	r5, [r0, #72]!
   80e24:	4629      	mov	r1, r5
   80e26:	47b0      	blx	r6
   80e28:	0728      	lsls	r0, r5, #28
   80e2a:	d5f7      	bpl.n	80e1c <SystemInit+0xb4>
   80e2c:	f643 7101 	movw	r1, #16129	; 0x3f01
   80e30:	4620      	mov	r0, r4
   80e32:	4b29      	ldr	r3, [pc, #164]	; (80ed8 <SystemInit+0x170>)
   80e34:	2201      	movs	r2, #1
   80e36:	f2c2 010d 	movt	r1, #8205	; 0x200d
   80e3a:	f840 1f08 	str.w	r1, [r0, #8]!
   80e3e:	4798      	blx	r3
   80e40:	4e26      	ldr	r6, [pc, #152]	; (80edc <SystemInit+0x174>)
   80e42:	4620      	mov	r0, r4
   80e44:	2200      	movs	r2, #0
   80e46:	f850 5f48 	ldr.w	r5, [r0, #72]!
   80e4a:	4629      	mov	r1, r5
   80e4c:	47b0      	blx	r6
   80e4e:	07a8      	lsls	r0, r5, #30
   80e50:	d5f7      	bpl.n	80e42 <SystemInit+0xda>
   80e52:	2111      	movs	r1, #17
   80e54:	4620      	mov	r0, r4
   80e56:	4b22      	ldr	r3, [pc, #136]	; (80ee0 <SystemInit+0x178>)
   80e58:	2201      	movs	r2, #1
   80e5a:	f840 1f10 	str.w	r1, [r0, #16]!
   80e5e:	2111      	movs	r1, #17
   80e60:	4798      	blx	r3
   80e62:	4e20      	ldr	r6, [pc, #128]	; (80ee4 <SystemInit+0x17c>)
   80e64:	4620      	mov	r0, r4
   80e66:	2200      	movs	r2, #0
   80e68:	f850 5f48 	ldr.w	r5, [r0, #72]!
   80e6c:	4629      	mov	r1, r5
   80e6e:	47b0      	blx	r6
   80e70:	0728      	lsls	r0, r5, #28
   80e72:	d5f7      	bpl.n	80e64 <SystemInit+0xfc>
   80e74:	2112      	movs	r1, #18
   80e76:	4620      	mov	r0, r4
   80e78:	4b1b      	ldr	r3, [pc, #108]	; (80ee8 <SystemInit+0x180>)
   80e7a:	2201      	movs	r2, #1
   80e7c:	f840 1f10 	str.w	r1, [r0, #16]!
   80e80:	2112      	movs	r1, #18
   80e82:	4798      	blx	r3
   80e84:	4e19      	ldr	r6, [pc, #100]	; (80eec <SystemInit+0x184>)
   80e86:	4620      	mov	r0, r4
   80e88:	2200      	movs	r2, #0
   80e8a:	f850 5f48 	ldr.w	r5, [r0, #72]!
   80e8e:	4629      	mov	r1, r5
   80e90:	47b0      	blx	r6
   80e92:	0728      	lsls	r0, r5, #28
   80e94:	d5f7      	bpl.n	80e86 <SystemInit+0x11e>
   80e96:	f240 0030 	movw	r0, #48	; 0x30
   80e9a:	f64b 5100 	movw	r1, #48384	; 0xbd00
   80e9e:	f2c2 0007 	movt	r0, #8199	; 0x2007
   80ea2:	f2c0 5101 	movt	r1, #1281	; 0x501
   80ea6:	6001      	str	r1, [r0, #0]
   80ea8:	f85d 8b04 	ldr.w	r8, [sp], #4
   80eac:	bdf0      	pop	{r4, r5, r6, r7, pc}
   80eae:	bf00      	nop
   80eb0:	000808c5 	.word	0x000808c5
   80eb4:	000808c5 	.word	0x000808c5
   80eb8:	000808c5 	.word	0x000808c5
   80ebc:	000808c5 	.word	0x000808c5
   80ec0:	000808c5 	.word	0x000808c5
   80ec4:	000808c5 	.word	0x000808c5
   80ec8:	000808c5 	.word	0x000808c5
   80ecc:	000808c5 	.word	0x000808c5
   80ed0:	000808c5 	.word	0x000808c5
   80ed4:	000808c5 	.word	0x000808c5
   80ed8:	000808c5 	.word	0x000808c5
   80edc:	000808c5 	.word	0x000808c5
   80ee0:	000808c5 	.word	0x000808c5
   80ee4:	000808c5 	.word	0x000808c5
   80ee8:	000808c5 	.word	0x000808c5
   80eec:	000808c5 	.word	0x000808c5

00080ef0 <Reset_Handler>:
   80ef0:	f640 00d4 	movw	r0, #2260	; 0x8d4
   80ef4:	f240 0100 	movw	r1, #0
   80ef8:	f2c2 0007 	movt	r0, #8199	; 0x2007
   80efc:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80f00:	4281      	cmp	r1, r0
   80f02:	d20d      	bcs.n	80f20 <Reset_Handler+0x30>
   80f04:	f240 0100 	movw	r1, #0
   80f08:	f246 220c 	movw	r2, #25100	; 0x620c
   80f0c:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80f10:	f2c0 0208 	movt	r2, #8
   80f14:	f852 3b04 	ldr.w	r3, [r2], #4
   80f18:	f841 3b04 	str.w	r3, [r1], #4
   80f1c:	4281      	cmp	r1, r0
   80f1e:	d3f9      	bcc.n	80f14 <Reset_Handler+0x24>
   80f20:	b580      	push	{r7, lr}
   80f22:	466f      	mov	r7, sp
   80f24:	f249 71d8 	movw	r1, #38872	; 0x97d8
   80f28:	f640 00d4 	movw	r0, #2260	; 0x8d4
   80f2c:	f2c2 0107 	movt	r1, #8199	; 0x2007
   80f30:	f2c2 0007 	movt	r0, #8199	; 0x2007
   80f34:	4288      	cmp	r0, r1
   80f36:	d20b      	bcs.n	80f50 <Reset_Handler+0x60>
   80f38:	1d02      	adds	r2, r0, #4
   80f3a:	4b20      	ldr	r3, [pc, #128]	; (80fbc <Reset_Handler+0xcc>)
   80f3c:	428a      	cmp	r2, r1
   80f3e:	bf38      	it	cc
   80f40:	460a      	movcc	r2, r1
   80f42:	43c1      	mvns	r1, r0
   80f44:	4411      	add	r1, r2
   80f46:	f021 0103 	bic.w	r1, r1, #3
   80f4a:	1d0a      	adds	r2, r1, #4
   80f4c:	2100      	movs	r1, #0
   80f4e:	4798      	blx	r3
   80f50:	f64f 7080 	movw	r0, #65408	; 0xff80
   80f54:	f240 0500 	movw	r5, #0
   80f58:	f64e 5408 	movw	r4, #60680	; 0xed08
   80f5c:	4b18      	ldr	r3, [pc, #96]	; (80fc0 <Reset_Handler+0xd0>)
   80f5e:	2201      	movs	r2, #1
   80f60:	f6c1 70ff 	movt	r0, #8191	; 0x1fff
   80f64:	f2c0 0508 	movt	r5, #8
   80f68:	f2ce 0400 	movt	r4, #57344	; 0xe000
   80f6c:	ea05 0100 	and.w	r1, r5, r0
   80f70:	4620      	mov	r0, r4
   80f72:	6021      	str	r1, [r4, #0]
   80f74:	4798      	blx	r3
   80f76:	f64f 70ff 	movw	r0, #65535	; 0xffff
   80f7a:	2100      	movs	r1, #0
   80f7c:	f2c2 000f 	movt	r0, #8207	; 0x200f
   80f80:	4285      	cmp	r5, r0
   80f82:	f04f 0000 	mov.w	r0, #0
   80f86:	bf88      	it	hi
   80f88:	2001      	movhi	r0, #1
   80f8a:	f1b5 5f00 	cmp.w	r5, #536870912	; 0x20000000
   80f8e:	bf38      	it	cc
   80f90:	2101      	movcc	r1, #1
   80f92:	4308      	orrs	r0, r1
   80f94:	d10c      	bne.n	80fb0 <Reset_Handler+0xc0>
   80f96:	6825      	ldr	r5, [r4, #0]
   80f98:	4b0a      	ldr	r3, [pc, #40]	; (80fc4 <Reset_Handler+0xd4>)
   80f9a:	4620      	mov	r0, r4
   80f9c:	2200      	movs	r2, #0
   80f9e:	4629      	mov	r1, r5
   80fa0:	4798      	blx	r3
   80fa2:	4b09      	ldr	r3, [pc, #36]	; (80fc8 <Reset_Handler+0xd8>)
   80fa4:	f045 5100 	orr.w	r1, r5, #536870912	; 0x20000000
   80fa8:	4620      	mov	r0, r4
   80faa:	2201      	movs	r2, #1
   80fac:	6021      	str	r1, [r4, #0]
   80fae:	4798      	blx	r3
   80fb0:	4806      	ldr	r0, [pc, #24]	; (80fcc <Reset_Handler+0xdc>)
   80fb2:	4780      	blx	r0
   80fb4:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
   80fb8:	e7fe      	b.n	80fb8 <Reset_Handler+0xc8>
   80fba:	bf00      	nop
   80fbc:	000826e5 	.word	0x000826e5
   80fc0:	000808c5 	.word	0x000808c5
   80fc4:	000808c5 	.word	0x000808c5
   80fc8:	000808c5 	.word	0x000808c5
   80fcc:	0008135d 	.word	0x0008135d

00080fd0 <UOTGHS_Handler>:
   80fd0:	b580      	push	{r7, lr}
   80fd2:	466f      	mov	r7, sp
   80fd4:	4906      	ldr	r1, [pc, #24]	; (80ff0 <UOTGHS_Handler+0x20>)
   80fd6:	2038      	movs	r0, #56	; 0x38
   80fd8:	4788      	blx	r1
   80fda:	f640 6028 	movw	r0, #3624	; 0xe28
   80fde:	f2c2 0007 	movt	r0, #8199	; 0x2007
   80fe2:	6800      	ldr	r0, [r0, #0]
   80fe4:	b110      	cbz	r0, 80fec <UOTGHS_Handler+0x1c>
   80fe6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
   80fea:	4700      	bx	r0
   80fec:	bd80      	pop	{r7, pc}
   80fee:	bf00      	nop
   80ff0:	000806f9 	.word	0x000806f9

00080ff4 <_ZN10RingBufferC1Ev>:
   80ff4:	b510      	push	{r4, lr}
   80ff6:	2100      	movs	r1, #0
   80ff8:	2280      	movs	r2, #128	; 0x80
   80ffa:	4604      	mov	r4, r0
   80ffc:	f001 fb72 	bl	826e4 <memset>
   81000:	2300      	movs	r3, #0
   81002:	f8c4 3080 	str.w	r3, [r4, #128]	; 0x80
   81006:	4620      	mov	r0, r4
   81008:	f8c4 3084 	str.w	r3, [r4, #132]	; 0x84
   8100c:	bd10      	pop	{r4, pc}

0008100e <_ZN10RingBuffer10store_charEh>:
   8100e:	f8d0 3080 	ldr.w	r3, [r0, #128]	; 0x80
   81012:	f8d0 2084 	ldr.w	r2, [r0, #132]	; 0x84
   81016:	3301      	adds	r3, #1
   81018:	f003 037f 	and.w	r3, r3, #127	; 0x7f
   8101c:	4293      	cmp	r3, r2
   8101e:	d004      	beq.n	8102a <_ZN10RingBuffer10store_charEh+0x1c>
   81020:	f8d0 2080 	ldr.w	r2, [r0, #128]	; 0x80
   81024:	5481      	strb	r1, [r0, r2]
   81026:	f8c0 3080 	str.w	r3, [r0, #128]	; 0x80
   8102a:	4770      	bx	lr

0008102c <_ZN9UARTClasscvbEv>:
   8102c:	2001      	movs	r0, #1
   8102e:	4770      	bx	lr

00081030 <_ZN9UARTClass9availableEv>:
   81030:	6903      	ldr	r3, [r0, #16]
   81032:	f8d3 0080 	ldr.w	r0, [r3, #128]	; 0x80
   81036:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
   8103a:	1ac0      	subs	r0, r0, r3
   8103c:	f000 007f 	and.w	r0, r0, #127	; 0x7f
   81040:	4770      	bx	lr

00081042 <_ZN9UARTClass4peekEv>:
   81042:	6903      	ldr	r3, [r0, #16]
   81044:	f8d3 1080 	ldr.w	r1, [r3, #128]	; 0x80
   81048:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
   8104c:	4291      	cmp	r1, r2
   8104e:	bf1d      	ittte	ne
   81050:	f8d3 2084 	ldrne.w	r2, [r3, #132]	; 0x84
   81054:	5c98      	ldrbne	r0, [r3, r2]
   81056:	b2c0      	uxtbne	r0, r0
   81058:	f04f 30ff 	moveq.w	r0, #4294967295	; 0xffffffff
   8105c:	4770      	bx	lr

0008105e <_ZN9UARTClass4readEv>:
   8105e:	6903      	ldr	r3, [r0, #16]
   81060:	f8d3 1080 	ldr.w	r1, [r3, #128]	; 0x80
   81064:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
   81068:	4291      	cmp	r1, r2
   8106a:	d00a      	beq.n	81082 <_ZN9UARTClass4readEv+0x24>
   8106c:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
   81070:	5c98      	ldrb	r0, [r3, r2]
   81072:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
   81076:	3201      	adds	r2, #1
   81078:	f002 027f 	and.w	r2, r2, #127	; 0x7f
   8107c:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
   81080:	4770      	bx	lr
   81082:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   81086:	4770      	bx	lr

00081088 <_ZN9UARTClass5flushEv>:
   81088:	6943      	ldr	r3, [r0, #20]
   8108a:	f8d3 1080 	ldr.w	r1, [r3, #128]	; 0x80
   8108e:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
   81092:	4291      	cmp	r1, r2
   81094:	d1f9      	bne.n	8108a <_ZN9UARTClass5flushEv+0x2>
   81096:	6982      	ldr	r2, [r0, #24]
   81098:	6953      	ldr	r3, [r2, #20]
   8109a:	059b      	lsls	r3, r3, #22
   8109c:	d5fc      	bpl.n	81098 <_ZN9UARTClass5flushEv+0x10>
   8109e:	4770      	bx	lr

000810a0 <_ZN9UARTClass5writeEh>:
   810a0:	6983      	ldr	r3, [r0, #24]
   810a2:	b570      	push	{r4, r5, r6, lr}
   810a4:	695e      	ldr	r6, [r3, #20]
   810a6:	6942      	ldr	r2, [r0, #20]
   810a8:	07b6      	lsls	r6, r6, #30
   810aa:	f8d2 5084 	ldr.w	r5, [r2, #132]	; 0x84
   810ae:	f8d2 4080 	ldr.w	r4, [r2, #128]	; 0x80
   810b2:	d501      	bpl.n	810b8 <_ZN9UARTClass5writeEh+0x18>
   810b4:	42a5      	cmp	r5, r4
   810b6:	d018      	beq.n	810ea <_ZN9UARTClass5writeEh+0x4a>
   810b8:	f8d2 4080 	ldr.w	r4, [r2, #128]	; 0x80
   810bc:	4b0c      	ldr	r3, [pc, #48]	; (810f0 <_ZN9UARTClass5writeEh+0x50>)
   810be:	3401      	adds	r4, #1
   810c0:	4023      	ands	r3, r4
   810c2:	2b00      	cmp	r3, #0
   810c4:	da03      	bge.n	810ce <_ZN9UARTClass5writeEh+0x2e>
   810c6:	3b01      	subs	r3, #1
   810c8:	f063 037f 	orn	r3, r3, #127	; 0x7f
   810cc:	3301      	adds	r3, #1
   810ce:	f8d2 4084 	ldr.w	r4, [r2, #132]	; 0x84
   810d2:	429c      	cmp	r4, r3
   810d4:	d0fb      	beq.n	810ce <_ZN9UARTClass5writeEh+0x2e>
   810d6:	f8d2 4080 	ldr.w	r4, [r2, #128]	; 0x80
   810da:	5511      	strb	r1, [r2, r4]
   810dc:	6942      	ldr	r2, [r0, #20]
   810de:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
   810e2:	6983      	ldr	r3, [r0, #24]
   810e4:	2202      	movs	r2, #2
   810e6:	609a      	str	r2, [r3, #8]
   810e8:	e000      	b.n	810ec <_ZN9UARTClass5writeEh+0x4c>
   810ea:	61d9      	str	r1, [r3, #28]
   810ec:	2001      	movs	r0, #1
   810ee:	bd70      	pop	{r4, r5, r6, pc}
   810f0:	8000007f 	.word	0x8000007f

000810f4 <_ZN9UARTClass3endEv>:
   810f4:	6903      	ldr	r3, [r0, #16]
   810f6:	b510      	push	{r4, lr}
   810f8:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
   810fc:	4604      	mov	r4, r0
   810fe:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
   81102:	6803      	ldr	r3, [r0, #0]
   81104:	695b      	ldr	r3, [r3, #20]
   81106:	4798      	blx	r3
   81108:	7f23      	ldrb	r3, [r4, #28]
   8110a:	2201      	movs	r2, #1
   8110c:	b259      	sxtb	r1, r3
   8110e:	f003 031f 	and.w	r3, r3, #31
   81112:	fa02 f303 	lsl.w	r3, r2, r3
   81116:	0949      	lsrs	r1, r1, #5
   81118:	4a04      	ldr	r2, [pc, #16]	; (8112c <_ZN9UARTClass3endEv+0x38>)
   8111a:	3120      	adds	r1, #32
   8111c:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
   81120:	6a20      	ldr	r0, [r4, #32]
   81122:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   81126:	f7ff bdc3 	b.w	80cb0 <pmc_disable_periph_clk>
   8112a:	bf00      	nop
   8112c:	e000e100 	.word	0xe000e100

00081130 <_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_>:
   81130:	b530      	push	{r4, r5, lr}
   81132:	2500      	movs	r5, #0
   81134:	6045      	str	r5, [r0, #4]
   81136:	f44f 757a 	mov.w	r5, #1000	; 0x3e8
   8113a:	6085      	str	r5, [r0, #8]
   8113c:	4d04      	ldr	r5, [pc, #16]	; (81150 <_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_+0x20>)
   8113e:	6181      	str	r1, [r0, #24]
   81140:	6005      	str	r5, [r0, #0]
   81142:	9d03      	ldr	r5, [sp, #12]
   81144:	7702      	strb	r2, [r0, #28]
   81146:	6105      	str	r5, [r0, #16]
   81148:	9d04      	ldr	r5, [sp, #16]
   8114a:	6203      	str	r3, [r0, #32]
   8114c:	6145      	str	r5, [r0, #20]
   8114e:	bd30      	pop	{r4, r5, pc}
   81150:	00085fe0 	.word	0x00085fe0

00081154 <_ZN9UARTClass4initEmm>:
   81154:	b570      	push	{r4, r5, r6, lr}
   81156:	4604      	mov	r4, r0
   81158:	6a00      	ldr	r0, [r0, #32]
   8115a:	460d      	mov	r5, r1
   8115c:	4616      	mov	r6, r2
   8115e:	f7ff fd65 	bl	80c2c <pmc_enable_periph_clk>
   81162:	69a3      	ldr	r3, [r4, #24]
   81164:	f240 2202 	movw	r2, #514	; 0x202
   81168:	f8c3 2120 	str.w	r2, [r3, #288]	; 0x120
   8116c:	22ac      	movs	r2, #172	; 0xac
   8116e:	601a      	str	r2, [r3, #0]
   81170:	4a12      	ldr	r2, [pc, #72]	; (811bc <_ZN9UARTClass4initEmm+0x68>)
   81172:	605e      	str	r6, [r3, #4]
   81174:	6812      	ldr	r2, [r2, #0]
   81176:	2101      	movs	r1, #1
   81178:	fbb2 f5f5 	udiv	r5, r2, r5
   8117c:	092d      	lsrs	r5, r5, #4
   8117e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
   81182:	621d      	str	r5, [r3, #32]
   81184:	60da      	str	r2, [r3, #12]
   81186:	2261      	movs	r2, #97	; 0x61
   81188:	609a      	str	r2, [r3, #8]
   8118a:	7f22      	ldrb	r2, [r4, #28]
   8118c:	b250      	sxtb	r0, r2
   8118e:	f002 021f 	and.w	r2, r2, #31
   81192:	fa01 f202 	lsl.w	r2, r1, r2
   81196:	490a      	ldr	r1, [pc, #40]	; (811c0 <_ZN9UARTClass4initEmm+0x6c>)
   81198:	0940      	lsrs	r0, r0, #5
   8119a:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   8119e:	6921      	ldr	r1, [r4, #16]
   811a0:	2200      	movs	r2, #0
   811a2:	f8c1 2084 	str.w	r2, [r1, #132]	; 0x84
   811a6:	f8c1 2080 	str.w	r2, [r1, #128]	; 0x80
   811aa:	6961      	ldr	r1, [r4, #20]
   811ac:	f8c1 2084 	str.w	r2, [r1, #132]	; 0x84
   811b0:	f8c1 2080 	str.w	r2, [r1, #128]	; 0x80
   811b4:	2250      	movs	r2, #80	; 0x50
   811b6:	601a      	str	r2, [r3, #0]
   811b8:	bd70      	pop	{r4, r5, r6, pc}
   811ba:	bf00      	nop
   811bc:	20070030 	.word	0x20070030
   811c0:	e000e100 	.word	0xe000e100

000811c4 <_ZN9UARTClass5beginEm>:
   811c4:	f44f 6200 	mov.w	r2, #2048	; 0x800
   811c8:	f7ff bfc4 	b.w	81154 <_ZN9UARTClass4initEmm>

000811cc <_ZN9UARTClass10IrqHandlerEv>:
   811cc:	b538      	push	{r3, r4, r5, lr}
   811ce:	6983      	ldr	r3, [r0, #24]
   811d0:	4604      	mov	r4, r0
   811d2:	695d      	ldr	r5, [r3, #20]
   811d4:	07ea      	lsls	r2, r5, #31
   811d6:	d504      	bpl.n	811e2 <_ZN9UARTClass10IrqHandlerEv+0x16>
   811d8:	6999      	ldr	r1, [r3, #24]
   811da:	6900      	ldr	r0, [r0, #16]
   811dc:	b2c9      	uxtb	r1, r1
   811de:	f7ff ff16 	bl	8100e <_ZN10RingBuffer10store_charEh>
   811e2:	07ab      	lsls	r3, r5, #30
   811e4:	d516      	bpl.n	81214 <_ZN9UARTClass10IrqHandlerEv+0x48>
   811e6:	6963      	ldr	r3, [r4, #20]
   811e8:	f8d3 1084 	ldr.w	r1, [r3, #132]	; 0x84
   811ec:	f8d3 2080 	ldr.w	r2, [r3, #128]	; 0x80
   811f0:	4291      	cmp	r1, r2
   811f2:	69a2      	ldr	r2, [r4, #24]
   811f4:	d00c      	beq.n	81210 <_ZN9UARTClass10IrqHandlerEv+0x44>
   811f6:	f8d3 1084 	ldr.w	r1, [r3, #132]	; 0x84
   811fa:	5c59      	ldrb	r1, [r3, r1]
   811fc:	b2c9      	uxtb	r1, r1
   811fe:	61d1      	str	r1, [r2, #28]
   81200:	f8d3 2084 	ldr.w	r2, [r3, #132]	; 0x84
   81204:	3201      	adds	r2, #1
   81206:	f002 027f 	and.w	r2, r2, #127	; 0x7f
   8120a:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
   8120e:	e001      	b.n	81214 <_ZN9UARTClass10IrqHandlerEv+0x48>
   81210:	2302      	movs	r3, #2
   81212:	60d3      	str	r3, [r2, #12]
   81214:	f015 0f60 	tst.w	r5, #96	; 0x60
   81218:	d004      	beq.n	81224 <_ZN9UARTClass10IrqHandlerEv+0x58>
   8121a:	69a3      	ldr	r3, [r4, #24]
   8121c:	681a      	ldr	r2, [r3, #0]
   8121e:	f442 7280 	orr.w	r2, r2, #256	; 0x100
   81222:	601a      	str	r2, [r3, #0]
   81224:	bd38      	pop	{r3, r4, r5, pc}

00081226 <_ZN10USARTClass5beginEm>:
   81226:	f44f 620c 	mov.w	r2, #2240	; 0x8c0
   8122a:	f7ff bf93 	b.w	81154 <_ZN9UARTClass4initEmm>
	...

00081230 <_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_>:
   81230:	b573      	push	{r0, r1, r4, r5, r6, lr}
   81232:	9d06      	ldr	r5, [sp, #24]
   81234:	4604      	mov	r4, r0
   81236:	9500      	str	r5, [sp, #0]
   81238:	9d07      	ldr	r5, [sp, #28]
   8123a:	460e      	mov	r6, r1
   8123c:	9501      	str	r5, [sp, #4]
   8123e:	f7ff ff77 	bl	81130 <_ZN9UARTClassC1EP4Uart4IRQnmP10RingBufferS4_>
   81242:	4b03      	ldr	r3, [pc, #12]	; (81250 <_ZN10USARTClassC1EP5Usart4IRQnmP10RingBufferS4_+0x20>)
   81244:	4620      	mov	r0, r4
   81246:	6023      	str	r3, [r4, #0]
   81248:	6266      	str	r6, [r4, #36]	; 0x24
   8124a:	b002      	add	sp, #8
   8124c:	bd70      	pop	{r4, r5, r6, pc}
   8124e:	bf00      	nop
   81250:	00086010 	.word	0x00086010

00081254 <PIOA_Handler>:
   81254:	b538      	push	{r3, r4, r5, lr}
   81256:	4b0b      	ldr	r3, [pc, #44]	; (81284 <PIOA_Handler+0x30>)
   81258:	6cdc      	ldr	r4, [r3, #76]	; 0x4c
   8125a:	fab4 f384 	clz	r3, r4
   8125e:	b2db      	uxtb	r3, r3
   81260:	2b1f      	cmp	r3, #31
   81262:	d80d      	bhi.n	81280 <PIOA_Handler+0x2c>
   81264:	f1c3 031f 	rsb	r3, r3, #31
   81268:	b2dd      	uxtb	r5, r3
   8126a:	4b07      	ldr	r3, [pc, #28]	; (81288 <PIOA_Handler+0x34>)
   8126c:	f853 3025 	ldr.w	r3, [r3, r5, lsl #2]
   81270:	b103      	cbz	r3, 81274 <PIOA_Handler+0x20>
   81272:	4798      	blx	r3
   81274:	2301      	movs	r3, #1
   81276:	fa03 f505 	lsl.w	r5, r3, r5
   8127a:	ea24 0405 	bic.w	r4, r4, r5
   8127e:	e7ec      	b.n	8125a <PIOA_Handler+0x6>
   81280:	bd38      	pop	{r3, r4, r5, pc}
   81282:	bf00      	nop
   81284:	400e0e00 	.word	0x400e0e00
   81288:	20070e2c 	.word	0x20070e2c

0008128c <PIOB_Handler>:
   8128c:	b538      	push	{r3, r4, r5, lr}
   8128e:	4b0b      	ldr	r3, [pc, #44]	; (812bc <PIOB_Handler+0x30>)
   81290:	6cdc      	ldr	r4, [r3, #76]	; 0x4c
   81292:	fab4 f384 	clz	r3, r4
   81296:	b2db      	uxtb	r3, r3
   81298:	2b1f      	cmp	r3, #31
   8129a:	d80d      	bhi.n	812b8 <PIOB_Handler+0x2c>
   8129c:	f1c3 031f 	rsb	r3, r3, #31
   812a0:	b2dd      	uxtb	r5, r3
   812a2:	4b07      	ldr	r3, [pc, #28]	; (812c0 <PIOB_Handler+0x34>)
   812a4:	f853 3025 	ldr.w	r3, [r3, r5, lsl #2]
   812a8:	b103      	cbz	r3, 812ac <PIOB_Handler+0x20>
   812aa:	4798      	blx	r3
   812ac:	2301      	movs	r3, #1
   812ae:	fa03 f505 	lsl.w	r5, r3, r5
   812b2:	ea24 0405 	bic.w	r4, r4, r5
   812b6:	e7ec      	b.n	81292 <PIOB_Handler+0x6>
   812b8:	bd38      	pop	{r3, r4, r5, pc}
   812ba:	bf00      	nop
   812bc:	400e1000 	.word	0x400e1000
   812c0:	20070eac 	.word	0x20070eac

000812c4 <PIOC_Handler>:
   812c4:	b538      	push	{r3, r4, r5, lr}
   812c6:	4b0b      	ldr	r3, [pc, #44]	; (812f4 <PIOC_Handler+0x30>)
   812c8:	6cdc      	ldr	r4, [r3, #76]	; 0x4c
   812ca:	fab4 f384 	clz	r3, r4
   812ce:	b2db      	uxtb	r3, r3
   812d0:	2b1f      	cmp	r3, #31
   812d2:	d80d      	bhi.n	812f0 <PIOC_Handler+0x2c>
   812d4:	f1c3 031f 	rsb	r3, r3, #31
   812d8:	b2dd      	uxtb	r5, r3
   812da:	4b07      	ldr	r3, [pc, #28]	; (812f8 <PIOC_Handler+0x34>)
   812dc:	f853 3025 	ldr.w	r3, [r3, r5, lsl #2]
   812e0:	b103      	cbz	r3, 812e4 <PIOC_Handler+0x20>
   812e2:	4798      	blx	r3
   812e4:	2301      	movs	r3, #1
   812e6:	fa03 f505 	lsl.w	r5, r3, r5
   812ea:	ea24 0405 	bic.w	r4, r4, r5
   812ee:	e7ec      	b.n	812ca <PIOC_Handler+0x6>
   812f0:	bd38      	pop	{r3, r4, r5, pc}
   812f2:	bf00      	nop
   812f4:	400e1200 	.word	0x400e1200
   812f8:	20070f2c 	.word	0x20070f2c

000812fc <PIOD_Handler>:
   812fc:	b538      	push	{r3, r4, r5, lr}
   812fe:	4b0b      	ldr	r3, [pc, #44]	; (8132c <PIOD_Handler+0x30>)
   81300:	6cdc      	ldr	r4, [r3, #76]	; 0x4c
   81302:	fab4 f384 	clz	r3, r4
   81306:	b2db      	uxtb	r3, r3
   81308:	2b1f      	cmp	r3, #31
   8130a:	d80d      	bhi.n	81328 <PIOD_Handler+0x2c>
   8130c:	f1c3 031f 	rsb	r3, r3, #31
   81310:	b2dd      	uxtb	r5, r3
   81312:	4b07      	ldr	r3, [pc, #28]	; (81330 <PIOD_Handler+0x34>)
   81314:	f853 3025 	ldr.w	r3, [r3, r5, lsl #2]
   81318:	b103      	cbz	r3, 8131c <PIOD_Handler+0x20>
   8131a:	4798      	blx	r3
   8131c:	2301      	movs	r3, #1
   8131e:	fa03 f505 	lsl.w	r5, r3, r5
   81322:	ea24 0405 	bic.w	r4, r4, r5
   81326:	e7ec      	b.n	81302 <PIOD_Handler+0x6>
   81328:	bd38      	pop	{r3, r4, r5, pc}
   8132a:	bf00      	nop
   8132c:	400e1400 	.word	0x400e1400
   81330:	20070fac 	.word	0x20070fac

00081334 <BusFault_Handler>:
   81334:	e7fe      	b.n	81334 <BusFault_Handler>

00081336 <SVC_Handler>:
   81336:	f000 b80f 	b.w	81358 <pendSVHook>

0008133a <PendSV_Handler>:
   8133a:	f000 b80d 	b.w	81358 <pendSVHook>

0008133e <SysTick_Handler>:
   8133e:	b508      	push	{r3, lr}
   81340:	f000 f808 	bl	81354 <sysTickHook>
   81344:	b928      	cbnz	r0, 81352 <SysTick_Handler+0x14>
   81346:	f000 f947 	bl	815d8 <tickReset>
   8134a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   8134e:	f000 be2f 	b.w	81fb0 <TimeTick_Increment>
   81352:	bd08      	pop	{r3, pc}

00081354 <sysTickHook>:
   81354:	2000      	movs	r0, #0
   81356:	4770      	bx	lr

00081358 <pendSVHook>:
   81358:	e7fe      	b.n	81358 <pendSVHook>

0008135a <initVariant>:
   8135a:	4770      	bx	lr

0008135c <main>:
   8135c:	b508      	push	{r3, lr}
   8135e:	f000 f857 	bl	81410 <_watchdogDefaultSetup>
   81362:	f7fe ff41 	bl	801e8 <init>
   81366:	f7ff fff8 	bl	8135a <initVariant>
   8136a:	2001      	movs	r0, #1
   8136c:	f000 f856 	bl	8141c <delay>
   81370:	4806      	ldr	r0, [pc, #24]	; (8138c <main+0x30>)
   81372:	f000 fa8b 	bl	8188c <_ZN10USBDevice_6attachEv>
   81376:	f7fe ff0b 	bl	80190 <setup>
   8137a:	f7fe fee5 	bl	80148 <loop>
   8137e:	4b04      	ldr	r3, [pc, #16]	; (81390 <main+0x34>)
   81380:	2b00      	cmp	r3, #0
   81382:	d0fa      	beq.n	8137a <main+0x1e>
   81384:	f7ff f82e 	bl	803e4 <_Z14serialEventRunv>
   81388:	e7f7      	b.n	8137a <main+0x1e>
   8138a:	bf00      	nop
   8138c:	20071040 	.word	0x20071040
   81390:	000803e5 	.word	0x000803e5

00081394 <_sbrk>:
   81394:	4b04      	ldr	r3, [pc, #16]	; (813a8 <_sbrk+0x14>)
   81396:	681a      	ldr	r2, [r3, #0]
   81398:	b90a      	cbnz	r2, 8139e <_sbrk+0xa>
   8139a:	4a04      	ldr	r2, [pc, #16]	; (813ac <_sbrk+0x18>)
   8139c:	601a      	str	r2, [r3, #0]
   8139e:	681a      	ldr	r2, [r3, #0]
   813a0:	4410      	add	r0, r2
   813a2:	6018      	str	r0, [r3, #0]
   813a4:	4610      	mov	r0, r2
   813a6:	4770      	bx	lr
   813a8:	2007102c 	.word	0x2007102c
   813ac:	200797d8 	.word	0x200797d8

000813b0 <link>:
   813b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   813b4:	4770      	bx	lr

000813b6 <_close>:
   813b6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   813ba:	4770      	bx	lr

000813bc <_fstat>:
   813bc:	f44f 5300 	mov.w	r3, #8192	; 0x2000
   813c0:	604b      	str	r3, [r1, #4]
   813c2:	2000      	movs	r0, #0
   813c4:	4770      	bx	lr

000813c6 <_isatty>:
   813c6:	2001      	movs	r0, #1
   813c8:	4770      	bx	lr

000813ca <_lseek>:
   813ca:	2000      	movs	r0, #0
   813cc:	4770      	bx	lr

000813ce <_read>:
   813ce:	2000      	movs	r0, #0
   813d0:	4770      	bx	lr
	...

000813d4 <_write>:
   813d4:	b510      	push	{r4, lr}
   813d6:	2300      	movs	r3, #0
   813d8:	4293      	cmp	r3, r2
   813da:	da07      	bge.n	813ec <_write+0x18>
   813dc:	4805      	ldr	r0, [pc, #20]	; (813f4 <_write+0x20>)
   813de:	6944      	ldr	r4, [r0, #20]
   813e0:	07a4      	lsls	r4, r4, #30
   813e2:	d5fb      	bpl.n	813dc <_write+0x8>
   813e4:	5ccc      	ldrb	r4, [r1, r3]
   813e6:	3301      	adds	r3, #1
   813e8:	61c4      	str	r4, [r0, #28]
   813ea:	e7f5      	b.n	813d8 <_write+0x4>
   813ec:	ea22 70e2 	bic.w	r0, r2, r2, asr #31
   813f0:	bd10      	pop	{r4, pc}
   813f2:	bf00      	nop
   813f4:	400e0800 	.word	0x400e0800

000813f8 <_exit>:
   813f8:	4601      	mov	r1, r0
   813fa:	b508      	push	{r3, lr}
   813fc:	4801      	ldr	r0, [pc, #4]	; (81404 <_exit+0xc>)
   813fe:	f001 f95d 	bl	826bc <iprintf>
   81402:	e7fe      	b.n	81402 <_exit+0xa>
   81404:	00086038 	.word	0x00086038

00081408 <_kill>:
   81408:	4770      	bx	lr

0008140a <_getpid>:
   8140a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   8140e:	4770      	bx	lr

00081410 <_watchdogDefaultSetup>:
   81410:	4801      	ldr	r0, [pc, #4]	; (81418 <_watchdogDefaultSetup+0x8>)
   81412:	f001 b91f 	b.w	82654 <WDT_Disable>
   81416:	bf00      	nop
   81418:	400e1a50 	.word	0x400e1a50

0008141c <delay>:
   8141c:	4770      	bx	lr

0008141e <analogOutputInit>:
   8141e:	4770      	bx	lr

00081420 <pinMode>:
   81420:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   81424:	4e3d      	ldr	r6, [pc, #244]	; (8151c <pinMode+0xfc>)
   81426:	231c      	movs	r3, #28
   81428:	fb03 6300 	mla	r3, r3, r0, r6
   8142c:	7b1a      	ldrb	r2, [r3, #12]
   8142e:	4604      	mov	r4, r0
   81430:	460f      	mov	r7, r1
   81432:	2a00      	cmp	r2, #0
   81434:	d070      	beq.n	81518 <pinMode+0xf8>
   81436:	4d3a      	ldr	r5, [pc, #232]	; (81520 <pinMode+0x100>)
   81438:	5c2a      	ldrb	r2, [r5, r0]
   8143a:	f002 020f 	and.w	r2, r2, #15
   8143e:	2a04      	cmp	r2, #4
   81440:	d103      	bne.n	8144a <pinMode+0x2a>
   81442:	4838      	ldr	r0, [pc, #224]	; (81524 <pinMode+0x104>)
   81444:	7e59      	ldrb	r1, [r3, #25]
   81446:	f7ff f8df 	bl	80608 <adc_disable_channel>
   8144a:	5d2a      	ldrb	r2, [r5, r4]
   8144c:	f002 030f 	and.w	r3, r2, #15
   81450:	2b02      	cmp	r3, #2
   81452:	dc11      	bgt.n	81478 <pinMode+0x58>
   81454:	b182      	cbz	r2, 81478 <pinMode+0x58>
   81456:	2b02      	cmp	r3, #2
   81458:	d102      	bne.n	81460 <pinMode+0x40>
   8145a:	b96f      	cbnz	r7, 81478 <pinMode+0x58>
   8145c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   81460:	2b01      	cmp	r3, #1
   81462:	d103      	bne.n	8146c <pinMode+0x4c>
   81464:	2f02      	cmp	r7, #2
   81466:	d107      	bne.n	81478 <pinMode+0x58>
   81468:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   8146c:	2b03      	cmp	r3, #3
   8146e:	d103      	bne.n	81478 <pinMode+0x58>
   81470:	2f01      	cmp	r7, #1
   81472:	d103      	bne.n	8147c <pinMode+0x5c>
   81474:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   81478:	2f01      	cmp	r7, #1
   8147a:	d032      	beq.n	814e2 <pinMode+0xc2>
   8147c:	b11f      	cbz	r7, 81486 <pinMode+0x66>
   8147e:	2f02      	cmp	r7, #2
   81480:	d017      	beq.n	814b2 <pinMode+0x92>
   81482:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   81486:	f04f 081c 	mov.w	r8, #28
   8148a:	fb08 f804 	mul.w	r8, r8, r4
   8148e:	eb06 0708 	add.w	r7, r6, r8
   81492:	68b8      	ldr	r0, [r7, #8]
   81494:	f7ff fbca 	bl	80c2c <pmc_enable_periph_clk>
   81498:	2300      	movs	r3, #0
   8149a:	f856 0008 	ldr.w	r0, [r6, r8]
   8149e:	2103      	movs	r1, #3
   814a0:	687a      	ldr	r2, [r7, #4]
   814a2:	f7ff fb37 	bl	80b14 <PIO_Configure>
   814a6:	5d2b      	ldrb	r3, [r5, r4]
   814a8:	f023 030f 	bic.w	r3, r3, #15
   814ac:	f043 0302 	orr.w	r3, r3, #2
   814b0:	e014      	b.n	814dc <pinMode+0xbc>
   814b2:	f04f 081c 	mov.w	r8, #28
   814b6:	fb08 f804 	mul.w	r8, r8, r4
   814ba:	eb06 0708 	add.w	r7, r6, r8
   814be:	68b8      	ldr	r0, [r7, #8]
   814c0:	f7ff fbb4 	bl	80c2c <pmc_enable_periph_clk>
   814c4:	2301      	movs	r3, #1
   814c6:	f856 0008 	ldr.w	r0, [r6, r8]
   814ca:	2103      	movs	r1, #3
   814cc:	687a      	ldr	r2, [r7, #4]
   814ce:	f7ff fb21 	bl	80b14 <PIO_Configure>
   814d2:	5d2b      	ldrb	r3, [r5, r4]
   814d4:	f023 030f 	bic.w	r3, r3, #15
   814d8:	f043 0301 	orr.w	r3, r3, #1
   814dc:	552b      	strb	r3, [r5, r4]
   814de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   814e2:	231c      	movs	r3, #28
   814e4:	4363      	muls	r3, r4
   814e6:	58f7      	ldr	r7, [r6, r3]
   814e8:	0912      	lsrs	r2, r2, #4
   814ea:	441e      	add	r6, r3
   814ec:	bf0c      	ite	eq
   814ee:	2104      	moveq	r1, #4
   814f0:	2105      	movne	r1, #5
   814f2:	6933      	ldr	r3, [r6, #16]
   814f4:	4638      	mov	r0, r7
   814f6:	6872      	ldr	r2, [r6, #4]
   814f8:	f7ff fb0c 	bl	80b14 <PIO_Configure>
   814fc:	5d2b      	ldrb	r3, [r5, r4]
   814fe:	f023 030f 	bic.w	r3, r3, #15
   81502:	f043 0303 	orr.w	r3, r3, #3
   81506:	552b      	strb	r3, [r5, r4]
   81508:	69bb      	ldr	r3, [r7, #24]
   8150a:	3301      	adds	r3, #1
   8150c:	d104      	bne.n	81518 <pinMode+0xf8>
   8150e:	68b0      	ldr	r0, [r6, #8]
   81510:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
   81514:	f7ff bbcc 	b.w	80cb0 <pmc_disable_periph_clk>
   81518:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   8151c:	00085520 	.word	0x00085520
   81520:	20070c34 	.word	0x20070c34
   81524:	400c0000 	.word	0x400c0000

00081528 <digitalWrite>:
   81528:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
   8152a:	4e19      	ldr	r6, [pc, #100]	; (81590 <digitalWrite+0x68>)
   8152c:	231c      	movs	r3, #28
   8152e:	fb03 6300 	mla	r3, r3, r0, r6
   81532:	7b1b      	ldrb	r3, [r3, #12]
   81534:	4604      	mov	r4, r0
   81536:	460d      	mov	r5, r1
   81538:	b343      	cbz	r3, 8158c <digitalWrite+0x64>
   8153a:	4f16      	ldr	r7, [pc, #88]	; (81594 <digitalWrite+0x6c>)
   8153c:	5c3b      	ldrb	r3, [r7, r0]
   8153e:	f003 030f 	and.w	r3, r3, #15
   81542:	2b05      	cmp	r3, #5
   81544:	d102      	bne.n	8154c <digitalWrite+0x24>
   81546:	2101      	movs	r1, #1
   81548:	f7ff ff6a 	bl	81420 <pinMode>
   8154c:	5d3b      	ldrb	r3, [r7, r4]
   8154e:	f003 030f 	and.w	r3, r3, #15
   81552:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
   81556:	553b      	strb	r3, [r7, r4]
   81558:	231c      	movs	r3, #28
   8155a:	435c      	muls	r4, r3
   8155c:	1933      	adds	r3, r6, r4
   8155e:	5936      	ldr	r6, [r6, r4]
   81560:	685c      	ldr	r4, [r3, #4]
   81562:	4630      	mov	r0, r6
   81564:	4621      	mov	r1, r4
   81566:	f7ff fb1d 	bl	80ba4 <PIO_GetOutputDataStatus>
   8156a:	b938      	cbnz	r0, 8157c <digitalWrite+0x54>
   8156c:	4630      	mov	r0, r6
   8156e:	4621      	mov	r1, r4
   81570:	462a      	mov	r2, r5
   81572:	b003      	add	sp, #12
   81574:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
   81578:	f7ff b9b6 	b.w	808e8 <PIO_PullUp>
   8157c:	2301      	movs	r3, #1
   8157e:	9300      	str	r3, [sp, #0]
   81580:	4630      	mov	r0, r6
   81582:	4621      	mov	r1, r4
   81584:	462a      	mov	r2, r5
   81586:	2300      	movs	r3, #0
   81588:	f7ff fa76 	bl	80a78 <PIO_SetOutput>
   8158c:	b003      	add	sp, #12
   8158e:	bdf0      	pop	{r4, r5, r6, r7, pc}
   81590:	00085520 	.word	0x00085520
   81594:	20070c34 	.word	0x20070c34

00081598 <_ZN5Print5writeEPKhj>:
   81598:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   8159a:	4605      	mov	r5, r0
   8159c:	460e      	mov	r6, r1
   8159e:	4617      	mov	r7, r2
   815a0:	2400      	movs	r4, #0
   815a2:	42bc      	cmp	r4, r7
   815a4:	d007      	beq.n	815b6 <_ZN5Print5writeEPKhj+0x1e>
   815a6:	682b      	ldr	r3, [r5, #0]
   815a8:	4628      	mov	r0, r5
   815aa:	681b      	ldr	r3, [r3, #0]
   815ac:	5d31      	ldrb	r1, [r6, r4]
   815ae:	4798      	blx	r3
   815b0:	b108      	cbz	r0, 815b6 <_ZN5Print5writeEPKhj+0x1e>
   815b2:	3401      	adds	r4, #1
   815b4:	e7f5      	b.n	815a2 <_ZN5Print5writeEPKhj+0xa>
   815b6:	4620      	mov	r0, r4
   815b8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

000815bc <initiateReset>:
   815bc:	4b01      	ldr	r3, [pc, #4]	; (815c4 <initiateReset+0x8>)
   815be:	6018      	str	r0, [r3, #0]
   815c0:	4770      	bx	lr
   815c2:	bf00      	nop
   815c4:	20070034 	.word	0x20070034

000815c8 <cancelReset>:
   815c8:	4b02      	ldr	r3, [pc, #8]	; (815d4 <cancelReset+0xc>)
   815ca:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
   815ce:	601a      	str	r2, [r3, #0]
   815d0:	4770      	bx	lr
   815d2:	bf00      	nop
   815d4:	20070034 	.word	0x20070034

000815d8 <tickReset>:
   815d8:	4a05      	ldr	r2, [pc, #20]	; (815f0 <tickReset+0x18>)
   815da:	b508      	push	{r3, lr}
   815dc:	6813      	ldr	r3, [r2, #0]
   815de:	1c59      	adds	r1, r3, #1
   815e0:	d004      	beq.n	815ec <tickReset+0x14>
   815e2:	3b01      	subs	r3, #1
   815e4:	6013      	str	r3, [r2, #0]
   815e6:	b90b      	cbnz	r3, 815ec <tickReset+0x14>
   815e8:	4b02      	ldr	r3, [pc, #8]	; (815f4 <tickReset+0x1c>)
   815ea:	4798      	blx	r3
   815ec:	bd08      	pop	{r3, pc}
   815ee:	bf00      	nop
   815f0:	20070034 	.word	0x20070034
   815f4:	20070001 	.word	0x20070001

000815f8 <_ZL11USB_SendZlpv>:
   815f8:	4b06      	ldr	r3, [pc, #24]	; (81614 <_ZL11USB_SendZlpv+0x1c>)
   815fa:	f8d3 2130 	ldr.w	r2, [r3, #304]	; 0x130
   815fe:	07d2      	lsls	r2, r2, #31
   81600:	d403      	bmi.n	8160a <_ZL11USB_SendZlpv+0x12>
   81602:	685b      	ldr	r3, [r3, #4]
   81604:	07d9      	lsls	r1, r3, #31
   81606:	d403      	bmi.n	81610 <_ZL11USB_SendZlpv+0x18>
   81608:	e7f6      	b.n	815f8 <_ZL11USB_SendZlpv>
   8160a:	2201      	movs	r2, #1
   8160c:	f8c3 2160 	str.w	r2, [r3, #352]	; 0x160
   81610:	4770      	bx	lr
   81612:	bf00      	nop
   81614:	400ac000 	.word	0x400ac000

00081618 <_Z14USBD_Availablem>:
   81618:	b538      	push	{r3, r4, r5, lr}
   8161a:	4b09      	ldr	r3, [pc, #36]	; (81640 <_Z14USBD_Availablem+0x28>)
   8161c:	681d      	ldr	r5, [r3, #0]
   8161e:	b672      	cpsid	i
   81620:	f3bf 8f5f 	dmb	sy
   81624:	461c      	mov	r4, r3
   81626:	f000 000f 	and.w	r0, r0, #15
   8162a:	2300      	movs	r3, #0
   8162c:	6023      	str	r3, [r4, #0]
   8162e:	f000 ffad 	bl	8258c <UDD_FifoByteCount>
   81632:	b125      	cbz	r5, 8163e <_Z14USBD_Availablem+0x26>
   81634:	2301      	movs	r3, #1
   81636:	6023      	str	r3, [r4, #0]
   81638:	f3bf 8f5f 	dmb	sy
   8163c:	b662      	cpsie	i
   8163e:	bd38      	pop	{r3, r4, r5, pc}
   81640:	2007006c 	.word	0x2007006c

00081644 <_Z9USBD_RecvmPvm>:
   81644:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   81648:	4b1b      	ldr	r3, [pc, #108]	; (816b8 <_Z9USBD_RecvmPvm+0x74>)
   8164a:	4689      	mov	r9, r1
   8164c:	681b      	ldr	r3, [r3, #0]
   8164e:	4615      	mov	r5, r2
   81650:	b33b      	cbz	r3, 816a2 <_Z9USBD_RecvmPvm+0x5e>
   81652:	4b1a      	ldr	r3, [pc, #104]	; (816bc <_Z9USBD_RecvmPvm+0x78>)
   81654:	f8d3 8000 	ldr.w	r8, [r3]
   81658:	b672      	cpsid	i
   8165a:	f3bf 8f5f 	dmb	sy
   8165e:	f000 040f 	and.w	r4, r0, #15
   81662:	2600      	movs	r6, #0
   81664:	4620      	mov	r0, r4
   81666:	461f      	mov	r7, r3
   81668:	601e      	str	r6, [r3, #0]
   8166a:	f000 ff8f 	bl	8258c <UDD_FifoByteCount>
   8166e:	42a8      	cmp	r0, r5
   81670:	bf38      	it	cc
   81672:	4605      	movcc	r5, r0
   81674:	42ae      	cmp	r6, r5
   81676:	d006      	beq.n	81686 <_Z9USBD_RecvmPvm+0x42>
   81678:	4620      	mov	r0, r4
   8167a:	f000 ff39 	bl	824f0 <UDD_Recv8>
   8167e:	f809 0006 	strb.w	r0, [r9, r6]
   81682:	3601      	adds	r6, #1
   81684:	e7f6      	b.n	81674 <_Z9USBD_RecvmPvm+0x30>
   81686:	b11d      	cbz	r5, 81690 <_Z9USBD_RecvmPvm+0x4c>
   81688:	4620      	mov	r0, r4
   8168a:	f000 ff7f 	bl	8258c <UDD_FifoByteCount>
   8168e:	b178      	cbz	r0, 816b0 <_Z9USBD_RecvmPvm+0x6c>
   81690:	f1b8 0f00 	cmp.w	r8, #0
   81694:	d009      	beq.n	816aa <_Z9USBD_RecvmPvm+0x66>
   81696:	2301      	movs	r3, #1
   81698:	603b      	str	r3, [r7, #0]
   8169a:	f3bf 8f5f 	dmb	sy
   8169e:	b662      	cpsie	i
   816a0:	e003      	b.n	816aa <_Z9USBD_RecvmPvm+0x66>
   816a2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   816a6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   816aa:	4628      	mov	r0, r5
   816ac:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   816b0:	4620      	mov	r0, r4
   816b2:	f000 ff74 	bl	8259e <UDD_ReleaseRX>
   816b6:	e7eb      	b.n	81690 <_Z9USBD_RecvmPvm+0x4c>
   816b8:	2007104c 	.word	0x2007104c
   816bc:	2007006c 	.word	0x2007006c

000816c0 <_Z9USBD_Recvm>:
   816c0:	b507      	push	{r0, r1, r2, lr}
   816c2:	2201      	movs	r2, #1
   816c4:	f10d 0107 	add.w	r1, sp, #7
   816c8:	f000 000f 	and.w	r0, r0, #15
   816cc:	f7ff ffba 	bl	81644 <_Z9USBD_RecvmPvm>
   816d0:	2801      	cmp	r0, #1
   816d2:	bf0c      	ite	eq
   816d4:	f89d 0007 	ldrbeq.w	r0, [sp, #7]
   816d8:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
   816dc:	b003      	add	sp, #12
   816de:	f85d fb04 	ldr.w	pc, [sp], #4
	...

000816e4 <_Z9USBD_SendmPKvm>:
   816e4:	4b11      	ldr	r3, [pc, #68]	; (8172c <_Z9USBD_SendmPKvm+0x48>)
   816e6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   816ea:	681b      	ldr	r3, [r3, #0]
   816ec:	4680      	mov	r8, r0
   816ee:	460d      	mov	r5, r1
   816f0:	4617      	mov	r7, r2
   816f2:	b1b3      	cbz	r3, 81722 <_Z9USBD_SendmPKvm+0x3e>
   816f4:	4614      	mov	r4, r2
   816f6:	b18c      	cbz	r4, 8171c <_Z9USBD_SendmPKvm+0x38>
   816f8:	f1b8 0f00 	cmp.w	r8, #0
   816fc:	bf14      	ite	ne
   816fe:	f44f 7600 	movne.w	r6, #512	; 0x200
   81702:	2640      	moveq	r6, #64	; 0x40
   81704:	42a6      	cmp	r6, r4
   81706:	bf28      	it	cs
   81708:	4626      	movcs	r6, r4
   8170a:	4629      	mov	r1, r5
   8170c:	f008 000f 	and.w	r0, r8, #15
   81710:	4632      	mov	r2, r6
   81712:	1ba4      	subs	r4, r4, r6
   81714:	f000 fe7e 	bl	82414 <UDD_Send>
   81718:	4435      	add	r5, r6
   8171a:	e7ec      	b.n	816f6 <_Z9USBD_SendmPKvm+0x12>
   8171c:	4638      	mov	r0, r7
   8171e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   81722:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   81726:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   8172a:	bf00      	nop
   8172c:	2007104c 	.word	0x2007104c

00081730 <_Z16USBD_SendControlhPKvm>:
   81730:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   81734:	4b0c      	ldr	r3, [pc, #48]	; (81768 <_Z16USBD_SendControlhPKvm+0x38>)
   81736:	4f0d      	ldr	r7, [pc, #52]	; (8176c <_Z16USBD_SendControlhPKvm+0x3c>)
   81738:	4615      	mov	r5, r2
   8173a:	881b      	ldrh	r3, [r3, #0]
   8173c:	883a      	ldrh	r2, [r7, #0]
   8173e:	4688      	mov	r8, r1
   81740:	429a      	cmp	r2, r3
   81742:	d20b      	bcs.n	8175c <_Z16USBD_SendControlhPKvm+0x2c>
   81744:	462c      	mov	r4, r5
   81746:	2600      	movs	r6, #0
   81748:	b144      	cbz	r4, 8175c <_Z16USBD_SendControlhPKvm+0x2c>
   8174a:	eb08 0106 	add.w	r1, r8, r6
   8174e:	4622      	mov	r2, r4
   81750:	2000      	movs	r0, #0
   81752:	f000 fe5f 	bl	82414 <UDD_Send>
   81756:	4406      	add	r6, r0
   81758:	1a24      	subs	r4, r4, r0
   8175a:	e7f5      	b.n	81748 <_Z16USBD_SendControlhPKvm+0x18>
   8175c:	883b      	ldrh	r3, [r7, #0]
   8175e:	4628      	mov	r0, r5
   81760:	442b      	add	r3, r5
   81762:	803b      	strh	r3, [r7, #0]
   81764:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   81768:	20071048 	.word	0x20071048
   8176c:	20071030 	.word	0x20071030

00081770 <_ZL24USB_SendStringDescriptorPKhi>:
   81770:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   81772:	2901      	cmp	r1, #1
   81774:	af00      	add	r7, sp, #0
   81776:	4606      	mov	r6, r0
   81778:	460c      	mov	r4, r1
   8177a:	dd28      	ble.n	817ce <_ZL24USB_SendStringDescriptorPKhi+0x5e>
   8177c:	1dcb      	adds	r3, r1, #7
   8177e:	f023 0307 	bic.w	r3, r3, #7
   81782:	ebad 0d03 	sub.w	sp, sp, r3
   81786:	f000 fff7 	bl	82778 <strlen>
   8178a:	3001      	adds	r0, #1
   8178c:	0040      	lsls	r0, r0, #1
   8178e:	2303      	movs	r3, #3
   81790:	f88d 0000 	strb.w	r0, [sp]
   81794:	466d      	mov	r5, sp
   81796:	f88d 3001 	strb.w	r3, [sp, #1]
   8179a:	1e70      	subs	r0, r6, #1
   8179c:	2202      	movs	r2, #2
   8179e:	42a2      	cmp	r2, r4
   817a0:	da0d      	bge.n	817be <_ZL24USB_SendStringDescriptorPKhi+0x4e>
   817a2:	f810 3f01 	ldrb.w	r3, [r0, #1]!
   817a6:	b153      	cbz	r3, 817be <_ZL24USB_SendStringDescriptorPKhi+0x4e>
   817a8:	1c51      	adds	r1, r2, #1
   817aa:	b2c9      	uxtb	r1, r1
   817ac:	42a1      	cmp	r1, r4
   817ae:	54ab      	strb	r3, [r5, r2]
   817b0:	d004      	beq.n	817bc <_ZL24USB_SendStringDescriptorPKhi+0x4c>
   817b2:	2300      	movs	r3, #0
   817b4:	3202      	adds	r2, #2
   817b6:	546b      	strb	r3, [r5, r1]
   817b8:	b2d2      	uxtb	r2, r2
   817ba:	e7f0      	b.n	8179e <_ZL24USB_SendStringDescriptorPKhi+0x2e>
   817bc:	4622      	mov	r2, r4
   817be:	2000      	movs	r0, #0
   817c0:	4629      	mov	r1, r5
   817c2:	f7ff ffb5 	bl	81730 <_Z16USBD_SendControlhPKvm>
   817c6:	3000      	adds	r0, #0
   817c8:	bf18      	it	ne
   817ca:	2001      	movne	r0, #1
   817cc:	e000      	b.n	817d0 <_ZL24USB_SendStringDescriptorPKhi+0x60>
   817ce:	2000      	movs	r0, #0
   817d0:	46bd      	mov	sp, r7
   817d2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000817d4 <_Z16USBD_RecvControlPvm>:
   817d4:	b538      	push	{r3, r4, r5, lr}
   817d6:	460c      	mov	r4, r1
   817d8:	4605      	mov	r5, r0
   817da:	f000 fdbd 	bl	82358 <UDD_WaitOUT>
   817de:	2000      	movs	r0, #0
   817e0:	4629      	mov	r1, r5
   817e2:	4622      	mov	r2, r4
   817e4:	f000 fe97 	bl	82516 <UDD_Recv>
   817e8:	f000 fde2 	bl	823b0 <UDD_ClearOUT>
   817ec:	4620      	mov	r0, r4
   817ee:	bd38      	pop	{r3, r4, r5, pc}

000817f0 <_Z26USBD_ClassInterfaceRequestR8USBSetup>:
   817f0:	7903      	ldrb	r3, [r0, #4]
   817f2:	b510      	push	{r4, lr}
   817f4:	4604      	mov	r4, r0
   817f6:	b91b      	cbnz	r3, 81800 <_Z26USBD_ClassInterfaceRequestR8USBSetup+0x10>
   817f8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   817fc:	f000 bb3a 	b.w	81e74 <_Z9CDC_SetupR8USBSetup>
   81800:	f000 fbc2 	bl	81f88 <_Z12PluggableUSBv>
   81804:	4621      	mov	r1, r4
   81806:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   8180a:	f000 bbad 	b.w	81f68 <_ZN13PluggableUSB_5setupER8USBSetup>

0008180e <_Z19USBD_SendInterfacesv>:
   8180e:	b513      	push	{r0, r1, r4, lr}
   81810:	2300      	movs	r3, #0
   81812:	ac02      	add	r4, sp, #8
   81814:	f804 3d01 	strb.w	r3, [r4, #-1]!
   81818:	4620      	mov	r0, r4
   8181a:	f000 fb17 	bl	81e4c <_Z16CDC_GetInterfacePh>
   8181e:	f000 fbb3 	bl	81f88 <_Z12PluggableUSBv>
   81822:	4621      	mov	r1, r4
   81824:	f000 fb70 	bl	81f08 <_ZN13PluggableUSB_12getInterfaceEPh>
   81828:	f89d 0007 	ldrb.w	r0, [sp, #7]
   8182c:	b002      	add	sp, #8
   8182e:	bd10      	pop	{r4, pc}

00081830 <_Z24USBD_SendOtherInterfacesv>:
   81830:	b513      	push	{r0, r1, r4, lr}
   81832:	2300      	movs	r3, #0
   81834:	ac02      	add	r4, sp, #8
   81836:	f804 3d01 	strb.w	r3, [r4, #-1]!
   8183a:	4620      	mov	r0, r4
   8183c:	f000 fb10 	bl	81e60 <_Z21CDC_GetOtherInterfacePh>
   81840:	f000 fba2 	bl	81f88 <_Z12PluggableUSBv>
   81844:	4621      	mov	r1, r4
   81846:	f000 fb5f 	bl	81f08 <_ZN13PluggableUSB_12getInterfaceEPh>
   8184a:	f89d 0007 	ldrb.w	r0, [sp, #7]
   8184e:	b002      	add	sp, #8
   81850:	bd10      	pop	{r4, pc}

00081852 <_Z10USBD_Flushm>:
   81852:	b510      	push	{r4, lr}
   81854:	4604      	mov	r4, r0
   81856:	f000 fe99 	bl	8258c <UDD_FifoByteCount>
   8185a:	b120      	cbz	r0, 81866 <_Z10USBD_Flushm+0x14>
   8185c:	4620      	mov	r0, r4
   8185e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   81862:	f000 beb1 	b.w	825c8 <UDD_ReleaseTX>
   81866:	bd10      	pop	{r4, pc}

00081868 <_ZN10USBDevice_C1Ev>:
   81868:	b510      	push	{r4, lr}
   8186a:	4604      	mov	r4, r0
   8186c:	4805      	ldr	r0, [pc, #20]	; (81884 <_ZN10USBDevice_C1Ev+0x1c>)
   8186e:	f000 fba7 	bl	81fc0 <UDD_SetStack>
   81872:	f000 fbab 	bl	81fcc <UDD_Init>
   81876:	b910      	cbnz	r0, 8187e <_ZN10USBDevice_C1Ev+0x16>
   81878:	4b03      	ldr	r3, [pc, #12]	; (81888 <_ZN10USBDevice_C1Ev+0x20>)
   8187a:	2201      	movs	r2, #1
   8187c:	601a      	str	r2, [r3, #0]
   8187e:	4620      	mov	r0, r4
   81880:	bd10      	pop	{r4, pc}
   81882:	bf00      	nop
   81884:	000818b9 	.word	0x000818b9
   81888:	2007103c 	.word	0x2007103c

0008188c <_ZN10USBDevice_6attachEv>:
   8188c:	b508      	push	{r3, lr}
   8188e:	4b05      	ldr	r3, [pc, #20]	; (818a4 <_ZN10USBDevice_6attachEv+0x18>)
   81890:	6818      	ldr	r0, [r3, #0]
   81892:	b128      	cbz	r0, 818a0 <_ZN10USBDevice_6attachEv+0x14>
   81894:	f000 fc88 	bl	821a8 <UDD_Attach>
   81898:	4b03      	ldr	r3, [pc, #12]	; (818a8 <_ZN10USBDevice_6attachEv+0x1c>)
   8189a:	2200      	movs	r2, #0
   8189c:	601a      	str	r2, [r3, #0]
   8189e:	2001      	movs	r0, #1
   818a0:	bd08      	pop	{r3, pc}
   818a2:	bf00      	nop
   818a4:	2007103c 	.word	0x2007103c
   818a8:	2007104c 	.word	0x2007104c

000818ac <_GLOBAL__sub_I_EndPoints>:
   818ac:	4801      	ldr	r0, [pc, #4]	; (818b4 <_GLOBAL__sub_I_EndPoints+0x8>)
   818ae:	f7ff bfdb 	b.w	81868 <_ZN10USBDevice_C1Ev>
   818b2:	bf00      	nop
   818b4:	20071040 	.word	0x20071040

000818b8 <_ZL7USB_ISRv>:
   818b8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
   818bc:	4cac      	ldr	r4, [pc, #688]	; (81b70 <_ZL7USB_ISRv+0x2b8>)
   818be:	b088      	sub	sp, #32
   818c0:	6863      	ldr	r3, [r4, #4]
   818c2:	071f      	lsls	r7, r3, #28
   818c4:	d517      	bpl.n	818f6 <_ZL7USB_ISRv+0x3e>
   818c6:	6823      	ldr	r3, [r4, #0]
   818c8:	2000      	movs	r0, #0
   818ca:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
   818ce:	6023      	str	r3, [r4, #0]
   818d0:	6823      	ldr	r3, [r4, #0]
   818d2:	f242 0132 	movw	r1, #8242	; 0x2032
   818d6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
   818da:	6023      	str	r3, [r4, #0]
   818dc:	f000 fcc4 	bl	82268 <UDD_InitEP>
   818e0:	4ba4      	ldr	r3, [pc, #656]	; (81b74 <_ZL7USB_ISRv+0x2bc>)
   818e2:	2204      	movs	r2, #4
   818e4:	601a      	str	r2, [r3, #0]
   818e6:	f44f 5380 	mov.w	r3, #4096	; 0x1000
   818ea:	61a3      	str	r3, [r4, #24]
   818ec:	4ba2      	ldr	r3, [pc, #648]	; (81b78 <_ZL7USB_ISRv+0x2c0>)
   818ee:	2200      	movs	r2, #0
   818f0:	601a      	str	r2, [r3, #0]
   818f2:	2308      	movs	r3, #8
   818f4:	60a3      	str	r3, [r4, #8]
   818f6:	4b9e      	ldr	r3, [pc, #632]	; (81b70 <_ZL7USB_ISRv+0x2b8>)
   818f8:	685b      	ldr	r3, [r3, #4]
   818fa:	045e      	lsls	r6, r3, #17
   818fc:	d508      	bpl.n	81910 <_ZL7USB_ISRv+0x58>
   818fe:	4b9f      	ldr	r3, [pc, #636]	; (81b7c <_ZL7USB_ISRv+0x2c4>)
   81900:	2002      	movs	r0, #2
   81902:	6018      	str	r0, [r3, #0]
   81904:	f7ff fe88 	bl	81618 <_Z14USBD_Availablem>
   81908:	b110      	cbz	r0, 81910 <_ZL7USB_ISRv+0x58>
   8190a:	489d      	ldr	r0, [pc, #628]	; (81b80 <_ZL7USB_ISRv+0x2c8>)
   8190c:	f000 fa50 	bl	81db0 <_ZN7Serial_6acceptEv>
   81910:	4b97      	ldr	r3, [pc, #604]	; (81b70 <_ZL7USB_ISRv+0x2b8>)
   81912:	685a      	ldr	r2, [r3, #4]
   81914:	0755      	lsls	r5, r2, #29
   81916:	bf44      	itt	mi
   81918:	2204      	movmi	r2, #4
   8191a:	609a      	strmi	r2, [r3, #8]
   8191c:	685b      	ldr	r3, [r3, #4]
   8191e:	04dc      	lsls	r4, r3, #19
   81920:	f140 81e2 	bpl.w	81ce8 <_ZL7USB_ISRv+0x430>
   81924:	f000 fd5a 	bl	823dc <UDD_ReceivedSetupInt>
   81928:	2800      	cmp	r0, #0
   8192a:	f000 81dd 	beq.w	81ce8 <_ZL7USB_ISRv+0x430>
   8192e:	2000      	movs	r0, #0
   81930:	a901      	add	r1, sp, #4
   81932:	2208      	movs	r2, #8
   81934:	f000 fdef 	bl	82516 <UDD_Recv>
   81938:	f000 fd60 	bl	823fc <UDD_ClearSetupInt>
   8193c:	f89d 5004 	ldrb.w	r5, [sp, #4]
   81940:	0628      	lsls	r0, r5, #24
   81942:	d502      	bpl.n	8194a <_ZL7USB_ISRv+0x92>
   81944:	f000 fcf2 	bl	8232c <UDD_WaitIN>
   81948:	e001      	b.n	8194e <_ZL7USB_ISRv+0x96>
   8194a:	f000 fd1b 	bl	82384 <UDD_ClearIN>
   8194e:	f015 0460 	ands.w	r4, r5, #96	; 0x60
   81952:	f040 81b4 	bne.w	81cbe <_ZL7USB_ISRv+0x406>
   81956:	f89d 3005 	ldrb.w	r3, [sp, #5]
   8195a:	b973      	cbnz	r3, 8197a <_ZL7USB_ISRv+0xc2>
   8195c:	f89d 4004 	ldrb.w	r4, [sp, #4]
   81960:	b1ac      	cbz	r4, 8198e <_ZL7USB_ISRv+0xd6>
   81962:	4b88      	ldr	r3, [pc, #544]	; (81b84 <_ZL7USB_ISRv+0x2cc>)
   81964:	781b      	ldrb	r3, [r3, #0]
   81966:	2000      	movs	r0, #0
   81968:	2b01      	cmp	r3, #1
   8196a:	bf14      	ite	ne
   8196c:	4601      	movne	r1, r0
   8196e:	2101      	moveq	r1, #1
   81970:	f000 fdac 	bl	824cc <UDD_Send8>
   81974:	2000      	movs	r0, #0
   81976:	4601      	mov	r1, r0
   81978:	e197      	b.n	81caa <_ZL7USB_ISRv+0x3f2>
   8197a:	2b01      	cmp	r3, #1
   8197c:	d10d      	bne.n	8199a <_ZL7USB_ISRv+0xe2>
   8197e:	f89d 3006 	ldrb.w	r3, [sp, #6]
   81982:	2b01      	cmp	r3, #1
   81984:	d101      	bne.n	8198a <_ZL7USB_ISRv+0xd2>
   81986:	4b80      	ldr	r3, [pc, #512]	; (81b88 <_ZL7USB_ISRv+0x2d0>)
   81988:	e7ec      	b.n	81964 <_ZL7USB_ISRv+0xac>
   8198a:	4b7e      	ldr	r3, [pc, #504]	; (81b84 <_ZL7USB_ISRv+0x2cc>)
   8198c:	701c      	strb	r4, [r3, #0]
   8198e:	4620      	mov	r0, r4
   81990:	4621      	mov	r1, r4
   81992:	f000 fd9b 	bl	824cc <UDD_Send8>
   81996:	4620      	mov	r0, r4
   81998:	e7ed      	b.n	81976 <_ZL7USB_ISRv+0xbe>
   8199a:	2b03      	cmp	r3, #3
   8199c:	d175      	bne.n	81a8a <_ZL7USB_ISRv+0x1d2>
   8199e:	f89d 3006 	ldrb.w	r3, [sp, #6]
   819a2:	2b01      	cmp	r3, #1
   819a4:	d105      	bne.n	819b2 <_ZL7USB_ISRv+0xfa>
   819a6:	4a78      	ldr	r2, [pc, #480]	; (81b88 <_ZL7USB_ISRv+0x2d0>)
   819a8:	4620      	mov	r0, r4
   819aa:	4621      	mov	r1, r4
   819ac:	7013      	strb	r3, [r2, #0]
   819ae:	f000 fd8d 	bl	824cc <UDD_Send8>
   819b2:	f89d 0006 	ldrb.w	r0, [sp, #6]
   819b6:	b928      	cbnz	r0, 819c4 <_ZL7USB_ISRv+0x10c>
   819b8:	4b72      	ldr	r3, [pc, #456]	; (81b84 <_ZL7USB_ISRv+0x2cc>)
   819ba:	2201      	movs	r2, #1
   819bc:	4601      	mov	r1, r0
   819be:	701a      	strb	r2, [r3, #0]
   819c0:	f000 fd84 	bl	824cc <UDD_Send8>
   819c4:	f89d 3006 	ldrb.w	r3, [sp, #6]
   819c8:	2b02      	cmp	r3, #2
   819ca:	f040 8185 	bne.w	81cd8 <_ZL7USB_ISRv+0x420>
   819ce:	f89d 3004 	ldrb.w	r3, [sp, #4]
   819d2:	2b00      	cmp	r3, #0
   819d4:	f040 8180 	bne.w	81cd8 <_ZL7USB_ISRv+0x420>
   819d8:	f8bd 3008 	ldrh.w	r3, [sp, #8]
   819dc:	0719      	lsls	r1, r3, #28
   819de:	f040 817b 	bne.w	81cd8 <_ZL7USB_ISRv+0x420>
   819e2:	4c63      	ldr	r4, [pc, #396]	; (81b70 <_ZL7USB_ISRv+0x2b8>)
   819e4:	0a1b      	lsrs	r3, r3, #8
   819e6:	6962      	ldr	r2, [r4, #20]
   819e8:	3b01      	subs	r3, #1
   819ea:	f022 0201 	bic.w	r2, r2, #1
   819ee:	6162      	str	r2, [r4, #20]
   819f0:	6822      	ldr	r2, [r4, #0]
   819f2:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
   819f6:	6022      	str	r2, [r4, #0]
   819f8:	2b03      	cmp	r3, #3
   819fa:	f200 816d 	bhi.w	81cd8 <_ZL7USB_ISRv+0x420>
   819fe:	e8df f003 	tbb	[pc, r3]
   81a02:	3831      	.short	0x3831
   81a04:	023f      	.short	0x023f
   81a06:	f7ff fdf7 	bl	815f8 <_ZL11USB_SendZlpv>
   81a0a:	2300      	movs	r3, #0
   81a0c:	f8c4 3318 	str.w	r3, [r4, #792]	; 0x318
   81a10:	f8c4 3328 	str.w	r3, [r4, #808]	; 0x328
   81a14:	f241 1330 	movw	r3, #4400	; 0x1130
   81a18:	f8c4 3108 	str.w	r3, [r4, #264]	; 0x108
   81a1c:	f8d4 3108 	ldr.w	r3, [r4, #264]	; 0x108
   81a20:	f043 0302 	orr.w	r3, r3, #2
   81a24:	f8c4 3108 	str.w	r3, [r4, #264]	; 0x108
   81a28:	4b51      	ldr	r3, [pc, #324]	; (81b70 <_ZL7USB_ISRv+0x2b8>)
   81a2a:	f8d3 2138 	ldr.w	r2, [r3, #312]	; 0x138
   81a2e:	0352      	lsls	r2, r2, #13
   81a30:	d5fa      	bpl.n	81a28 <_ZL7USB_ISRv+0x170>
   81a32:	69da      	ldr	r2, [r3, #28]
   81a34:	f042 0204 	orr.w	r2, r2, #4
   81a38:	61da      	str	r2, [r3, #28]
   81a3a:	4b54      	ldr	r3, [pc, #336]	; (81b8c <_ZL7USB_ISRv+0x2d4>)
   81a3c:	4a54      	ldr	r2, [pc, #336]	; (81b90 <_ZL7USB_ISRv+0x2d8>)
   81a3e:	5c9a      	ldrb	r2, [r3, r2]
   81a40:	f803 2f01 	strb.w	r2, [r3, #1]!
   81a44:	4a53      	ldr	r2, [pc, #332]	; (81b94 <_ZL7USB_ISRv+0x2dc>)
   81a46:	4293      	cmp	r3, r2
   81a48:	d1f8      	bne.n	81a3c <_ZL7USB_ISRv+0x184>
   81a4a:	4b49      	ldr	r3, [pc, #292]	; (81b70 <_ZL7USB_ISRv+0x2b8>)
   81a4c:	681a      	ldr	r2, [r3, #0]
   81a4e:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
   81a52:	601a      	str	r2, [r3, #0]
   81a54:	2201      	movs	r2, #1
   81a56:	f8c3 2168 	str.w	r2, [r3, #360]	; 0x168
   81a5a:	f44f 4280 	mov.w	r2, #16384	; 0x4000
   81a5e:	f8c3 2228 	str.w	r2, [r3, #552]	; 0x228
   81a62:	e7fe      	b.n	81a62 <_ZL7USB_ISRv+0x1aa>
   81a64:	f7ff fdc8 	bl	815f8 <_ZL11USB_SendZlpv>
   81a68:	6823      	ldr	r3, [r4, #0]
   81a6a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
   81a6e:	6023      	str	r3, [r4, #0]
   81a70:	e7fe      	b.n	81a70 <_ZL7USB_ISRv+0x1b8>
   81a72:	f7ff fdc1 	bl	815f8 <_ZL11USB_SendZlpv>
   81a76:	6823      	ldr	r3, [r4, #0]
   81a78:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
   81a7c:	6023      	str	r3, [r4, #0]
   81a7e:	e7fe      	b.n	81a7e <_ZL7USB_ISRv+0x1c6>
   81a80:	f7ff fdba 	bl	815f8 <_ZL11USB_SendZlpv>
   81a84:	4b44      	ldr	r3, [pc, #272]	; (81b98 <_ZL7USB_ISRv+0x2e0>)
   81a86:	6163      	str	r3, [r4, #20]
   81a88:	e7fe      	b.n	81a88 <_ZL7USB_ISRv+0x1d0>
   81a8a:	2b05      	cmp	r3, #5
   81a8c:	d106      	bne.n	81a9c <_ZL7USB_ISRv+0x1e4>
   81a8e:	f000 fc4d 	bl	8232c <UDD_WaitIN>
   81a92:	f89d 0006 	ldrb.w	r0, [sp, #6]
   81a96:	f000 fdad 	bl	825f4 <UDD_SetAddress>
   81a9a:	e11d      	b.n	81cd8 <_ZL7USB_ISRv+0x420>
   81a9c:	2b06      	cmp	r3, #6
   81a9e:	f040 80dc 	bne.w	81c5a <_ZL7USB_ISRv+0x3a2>
   81aa2:	f89d 6007 	ldrb.w	r6, [sp, #7]
   81aa6:	4d3d      	ldr	r5, [pc, #244]	; (81b9c <_ZL7USB_ISRv+0x2e4>)
   81aa8:	2e02      	cmp	r6, #2
   81aaa:	f8bd 900a 	ldrh.w	r9, [sp, #10]
   81aae:	4f3c      	ldr	r7, [pc, #240]	; (81ba0 <_ZL7USB_ISRv+0x2e8>)
   81ab0:	802c      	strh	r4, [r5, #0]
   81ab2:	d128      	bne.n	81b06 <_ZL7USB_ISRv+0x24e>
   81ab4:	803c      	strh	r4, [r7, #0]
   81ab6:	f7ff feaa 	bl	8180e <_Z19USBD_SendInterfacesv>
   81aba:	f04f 0809 	mov.w	r8, #9
   81abe:	4682      	mov	sl, r0
   81ac0:	4621      	mov	r1, r4
   81ac2:	4642      	mov	r2, r8
   81ac4:	a803      	add	r0, sp, #12
   81ac6:	f000 fe0d 	bl	826e4 <memset>
   81aca:	2301      	movs	r3, #1
   81acc:	f88d 3011 	strb.w	r3, [sp, #17]
   81ad0:	23c0      	movs	r3, #192	; 0xc0
   81ad2:	f88d 3013 	strb.w	r3, [sp, #19]
   81ad6:	23fa      	movs	r3, #250	; 0xfa
   81ad8:	f88d 3014 	strb.w	r3, [sp, #20]
   81adc:	882b      	ldrh	r3, [r5, #0]
   81ade:	a903      	add	r1, sp, #12
   81ae0:	4443      	add	r3, r8
   81ae2:	4642      	mov	r2, r8
   81ae4:	4620      	mov	r0, r4
   81ae6:	f8ad 300e 	strh.w	r3, [sp, #14]
   81aea:	f88d 800c 	strb.w	r8, [sp, #12]
   81aee:	f88d 600d 	strb.w	r6, [sp, #13]
   81af2:	f88d a010 	strb.w	sl, [sp, #16]
   81af6:	802c      	strh	r4, [r5, #0]
   81af8:	f8a7 9000 	strh.w	r9, [r7]
   81afc:	f7ff fe18 	bl	81730 <_Z16USBD_SendControlhPKvm>
   81b00:	f7ff fe85 	bl	8180e <_Z19USBD_SendInterfacesv>
   81b04:	e0e8      	b.n	81cd8 <_ZL7USB_ISRv+0x420>
   81b06:	f8a7 9000 	strh.w	r9, [r7]
   81b0a:	f000 fa3d 	bl	81f88 <_Z12PluggableUSBv>
   81b0e:	a901      	add	r1, sp, #4
   81b10:	f000 fa0e 	bl	81f30 <_ZN13PluggableUSB_13getDescriptorER8USBSetup>
   81b14:	2800      	cmp	r0, #0
   81b16:	d003      	beq.n	81b20 <_ZL7USB_ISRv+0x268>
   81b18:	bfd4      	ite	le
   81b1a:	2000      	movle	r0, #0
   81b1c:	2001      	movgt	r0, #1
   81b1e:	e0da      	b.n	81cd6 <_ZL7USB_ISRv+0x41e>
   81b20:	2e01      	cmp	r6, #1
   81b22:	d110      	bne.n	81b46 <_ZL7USB_ISRv+0x28e>
   81b24:	f8bd 200a 	ldrh.w	r2, [sp, #10]
   81b28:	4b1e      	ldr	r3, [pc, #120]	; (81ba4 <_ZL7USB_ISRv+0x2ec>)
   81b2a:	2a08      	cmp	r2, #8
   81b2c:	bf04      	itt	eq
   81b2e:	2101      	moveq	r1, #1
   81b30:	6019      	streq	r1, [r3, #0]
   81b32:	6818      	ldr	r0, [r3, #0]
   81b34:	491c      	ldr	r1, [pc, #112]	; (81ba8 <_ZL7USB_ISRv+0x2f0>)
   81b36:	4b1d      	ldr	r3, [pc, #116]	; (81bac <_ZL7USB_ISRv+0x2f4>)
   81b38:	2800      	cmp	r0, #0
   81b3a:	bf08      	it	eq
   81b3c:	4619      	moveq	r1, r3
   81b3e:	2a11      	cmp	r2, #17
   81b40:	f200 8086 	bhi.w	81c50 <_ZL7USB_ISRv+0x398>
   81b44:	e048      	b.n	81bd8 <_ZL7USB_ISRv+0x320>
   81b46:	2e03      	cmp	r6, #3
   81b48:	d148      	bne.n	81bdc <_ZL7USB_ISRv+0x324>
   81b4a:	f89d 3006 	ldrb.w	r3, [sp, #6]
   81b4e:	b933      	cbnz	r3, 81b5e <_ZL7USB_ISRv+0x2a6>
   81b50:	4917      	ldr	r1, [pc, #92]	; (81bb0 <_ZL7USB_ISRv+0x2f8>)
   81b52:	f8bd 200a 	ldrh.w	r2, [sp, #10]
   81b56:	780b      	ldrb	r3, [r1, #0]
   81b58:	4293      	cmp	r3, r2
   81b5a:	d83d      	bhi.n	81bd8 <_ZL7USB_ISRv+0x320>
   81b5c:	e078      	b.n	81c50 <_ZL7USB_ISRv+0x398>
   81b5e:	2b02      	cmp	r3, #2
   81b60:	d101      	bne.n	81b66 <_ZL7USB_ISRv+0x2ae>
   81b62:	4814      	ldr	r0, [pc, #80]	; (81bb4 <_ZL7USB_ISRv+0x2fc>)
   81b64:	e033      	b.n	81bce <_ZL7USB_ISRv+0x316>
   81b66:	2b01      	cmp	r3, #1
   81b68:	d128      	bne.n	81bbc <_ZL7USB_ISRv+0x304>
   81b6a:	4813      	ldr	r0, [pc, #76]	; (81bb8 <_ZL7USB_ISRv+0x300>)
   81b6c:	e02f      	b.n	81bce <_ZL7USB_ISRv+0x316>
   81b6e:	bf00      	nop
   81b70:	400ac000 	.word	0x400ac000
   81b74:	400ac1f0 	.word	0x400ac1f0
   81b78:	2007104c 	.word	0x2007104c
   81b7c:	400ac168 	.word	0x400ac168
   81b80:	2007125c 	.word	0x2007125c
   81b84:	20071032 	.word	0x20071032
   81b88:	20071038 	.word	0x20071038
   81b8c:	2018ffff 	.word	0x2018ffff
   81b90:	dfef6075 	.word	0xdfef6075
   81b94:	20190034 	.word	0x20190034
   81b98:	7e07f07f 	.word	0x7e07f07f
   81b9c:	20071030 	.word	0x20071030
   81ba0:	20071048 	.word	0x20071048
   81ba4:	20071034 	.word	0x20071034
   81ba8:	000860b5 	.word	0x000860b5
   81bac:	0008605d 	.word	0x0008605d
   81bb0:	00086070 	.word	0x00086070
   81bb4:	00086051 	.word	0x00086051
   81bb8:	000860a9 	.word	0x000860a9
   81bbc:	2b03      	cmp	r3, #3
   81bbe:	f040 808e 	bne.w	81cde <_ZL7USB_ISRv+0x426>
   81bc2:	f000 f9e1 	bl	81f88 <_Z12PluggableUSBv>
   81bc6:	a903      	add	r1, sp, #12
   81bc8:	f000 f9c0 	bl	81f4c <_ZN13PluggableUSB_12getShortNameEPc>
   81bcc:	a803      	add	r0, sp, #12
   81bce:	f8bd 100a 	ldrh.w	r1, [sp, #10]
   81bd2:	f7ff fdcd 	bl	81770 <_ZL24USB_SendStringDescriptorPKhi>
   81bd6:	e07e      	b.n	81cd6 <_ZL7USB_ISRv+0x41e>
   81bd8:	b2d2      	uxtb	r2, r2
   81bda:	e038      	b.n	81c4e <_ZL7USB_ISRv+0x396>
   81bdc:	2e06      	cmp	r6, #6
   81bde:	d106      	bne.n	81bee <_ZL7USB_ISRv+0x336>
   81be0:	f8bd 200a 	ldrh.w	r2, [sp, #10]
   81be4:	2a09      	cmp	r2, #9
   81be6:	d87d      	bhi.n	81ce4 <_ZL7USB_ISRv+0x42c>
   81be8:	b2d2      	uxtb	r2, r2
   81bea:	4941      	ldr	r1, [pc, #260]	; (81cf0 <_ZL7USB_ISRv+0x438>)
   81bec:	e02f      	b.n	81c4e <_ZL7USB_ISRv+0x396>
   81bee:	2e07      	cmp	r6, #7
   81bf0:	f04f 0400 	mov.w	r4, #0
   81bf4:	d173      	bne.n	81cde <_ZL7USB_ISRv+0x426>
   81bf6:	f8bd 900a 	ldrh.w	r9, [sp, #10]
   81bfa:	802c      	strh	r4, [r5, #0]
   81bfc:	803c      	strh	r4, [r7, #0]
   81bfe:	f7ff fe17 	bl	81830 <_Z24USBD_SendOtherInterfacesv>
   81c02:	f04f 0809 	mov.w	r8, #9
   81c06:	4682      	mov	sl, r0
   81c08:	4621      	mov	r1, r4
   81c0a:	4642      	mov	r2, r8
   81c0c:	a803      	add	r0, sp, #12
   81c0e:	f000 fd69 	bl	826e4 <memset>
   81c12:	2301      	movs	r3, #1
   81c14:	f88d 3011 	strb.w	r3, [sp, #17]
   81c18:	23c0      	movs	r3, #192	; 0xc0
   81c1a:	f88d 3013 	strb.w	r3, [sp, #19]
   81c1e:	23fa      	movs	r3, #250	; 0xfa
   81c20:	f88d 3014 	strb.w	r3, [sp, #20]
   81c24:	882b      	ldrh	r3, [r5, #0]
   81c26:	a903      	add	r1, sp, #12
   81c28:	4443      	add	r3, r8
   81c2a:	4642      	mov	r2, r8
   81c2c:	4620      	mov	r0, r4
   81c2e:	f8ad 300e 	strh.w	r3, [sp, #14]
   81c32:	f88d 800c 	strb.w	r8, [sp, #12]
   81c36:	f88d 600d 	strb.w	r6, [sp, #13]
   81c3a:	f88d a010 	strb.w	sl, [sp, #16]
   81c3e:	802c      	strh	r4, [r5, #0]
   81c40:	f8a7 9000 	strh.w	r9, [r7]
   81c44:	f7ff fd74 	bl	81730 <_Z16USBD_SendControlhPKvm>
   81c48:	f7ff fdf2 	bl	81830 <_Z24USBD_SendOtherInterfacesv>
   81c4c:	e044      	b.n	81cd8 <_ZL7USB_ISRv+0x420>
   81c4e:	b902      	cbnz	r2, 81c52 <_ZL7USB_ISRv+0x39a>
   81c50:	780a      	ldrb	r2, [r1, #0]
   81c52:	2000      	movs	r0, #0
   81c54:	f7ff fd6c 	bl	81730 <_Z16USBD_SendControlhPKvm>
   81c58:	e03e      	b.n	81cd8 <_ZL7USB_ISRv+0x420>
   81c5a:	2b07      	cmp	r3, #7
   81c5c:	d03f      	beq.n	81cde <_ZL7USB_ISRv+0x426>
   81c5e:	2b08      	cmp	r3, #8
   81c60:	d104      	bne.n	81c6c <_ZL7USB_ISRv+0x3b4>
   81c62:	4b24      	ldr	r3, [pc, #144]	; (81cf4 <_ZL7USB_ISRv+0x43c>)
   81c64:	4620      	mov	r0, r4
   81c66:	6819      	ldr	r1, [r3, #0]
   81c68:	b2c9      	uxtb	r1, r1
   81c6a:	e01e      	b.n	81caa <_ZL7USB_ISRv+0x3f2>
   81c6c:	2b09      	cmp	r3, #9
   81c6e:	d117      	bne.n	81ca0 <_ZL7USB_ISRv+0x3e8>
   81c70:	06eb      	lsls	r3, r5, #27
   81c72:	d134      	bne.n	81cde <_ZL7USB_ISRv+0x426>
   81c74:	2100      	movs	r1, #0
   81c76:	4820      	ldr	r0, [pc, #128]	; (81cf8 <_ZL7USB_ISRv+0x440>)
   81c78:	f850 3021 	ldr.w	r3, [r0, r1, lsl #2]
   81c7c:	b10b      	cbz	r3, 81c82 <_ZL7USB_ISRv+0x3ca>
   81c7e:	3101      	adds	r1, #1
   81c80:	e7f9      	b.n	81c76 <_ZL7USB_ISRv+0x3be>
   81c82:	f000 fb1b 	bl	822bc <UDD_InitEndpoints>
   81c86:	f89d 2006 	ldrb.w	r2, [sp, #6]
   81c8a:	4b1a      	ldr	r3, [pc, #104]	; (81cf4 <_ZL7USB_ISRv+0x43c>)
   81c8c:	601a      	str	r2, [r3, #0]
   81c8e:	4b1b      	ldr	r3, [pc, #108]	; (81cfc <_ZL7USB_ISRv+0x444>)
   81c90:	2202      	movs	r2, #2
   81c92:	601a      	str	r2, [r3, #0]
   81c94:	f44f 4280 	mov.w	r2, #16384	; 0x4000
   81c98:	f5a3 73fc 	sub.w	r3, r3, #504	; 0x1f8
   81c9c:	619a      	str	r2, [r3, #24]
   81c9e:	e01b      	b.n	81cd8 <_ZL7USB_ISRv+0x420>
   81ca0:	2b0a      	cmp	r3, #10
   81ca2:	d105      	bne.n	81cb0 <_ZL7USB_ISRv+0x3f8>
   81ca4:	4b16      	ldr	r3, [pc, #88]	; (81d00 <_ZL7USB_ISRv+0x448>)
   81ca6:	2000      	movs	r0, #0
   81ca8:	7819      	ldrb	r1, [r3, #0]
   81caa:	f000 fc0f 	bl	824cc <UDD_Send8>
   81cae:	e013      	b.n	81cd8 <_ZL7USB_ISRv+0x420>
   81cb0:	2b0b      	cmp	r3, #11
   81cb2:	d111      	bne.n	81cd8 <_ZL7USB_ISRv+0x420>
   81cb4:	f89d 2006 	ldrb.w	r2, [sp, #6]
   81cb8:	4b11      	ldr	r3, [pc, #68]	; (81d00 <_ZL7USB_ISRv+0x448>)
   81cba:	601a      	str	r2, [r3, #0]
   81cbc:	e00c      	b.n	81cd8 <_ZL7USB_ISRv+0x420>
   81cbe:	f000 fb35 	bl	8232c <UDD_WaitIN>
   81cc2:	4b10      	ldr	r3, [pc, #64]	; (81d04 <_ZL7USB_ISRv+0x44c>)
   81cc4:	2100      	movs	r1, #0
   81cc6:	8019      	strh	r1, [r3, #0]
   81cc8:	f8bd 200a 	ldrh.w	r2, [sp, #10]
   81ccc:	4b0e      	ldr	r3, [pc, #56]	; (81d08 <_ZL7USB_ISRv+0x450>)
   81cce:	a801      	add	r0, sp, #4
   81cd0:	801a      	strh	r2, [r3, #0]
   81cd2:	f7ff fd8d 	bl	817f0 <_Z26USBD_ClassInterfaceRequestR8USBSetup>
   81cd6:	b110      	cbz	r0, 81cde <_ZL7USB_ISRv+0x426>
   81cd8:	f000 fb54 	bl	82384 <UDD_ClearIN>
   81cdc:	e004      	b.n	81ce8 <_ZL7USB_ISRv+0x430>
   81cde:	f000 fc37 	bl	82550 <UDD_Stall>
   81ce2:	e001      	b.n	81ce8 <_ZL7USB_ISRv+0x430>
   81ce4:	4902      	ldr	r1, [pc, #8]	; (81cf0 <_ZL7USB_ISRv+0x438>)
   81ce6:	e7b3      	b.n	81c50 <_ZL7USB_ISRv+0x398>
   81ce8:	b008      	add	sp, #32
   81cea:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
   81cee:	bf00      	nop
   81cf0:	000860c7 	.word	0x000860c7
   81cf4:	2007104c 	.word	0x2007104c
   81cf8:	20070038 	.word	0x20070038
   81cfc:	400ac1f8 	.word	0x400ac1f8
   81d00:	20071044 	.word	0x20071044
   81d04:	20071030 	.word	0x20071030
   81d08:	20071048 	.word	0x20071048

00081d0c <_ZN7Serial_9availableEv>:
   81d0c:	4b04      	ldr	r3, [pc, #16]	; (81d20 <_ZN7Serial_9availableEv+0x14>)
   81d0e:	f8d3 0200 	ldr.w	r0, [r3, #512]	; 0x200
   81d12:	f8d3 3204 	ldr.w	r3, [r3, #516]	; 0x204
   81d16:	1ac0      	subs	r0, r0, r3
   81d18:	f3c0 0008 	ubfx	r0, r0, #0, #9
   81d1c:	4770      	bx	lr
   81d1e:	bf00      	nop
   81d20:	20071050 	.word	0x20071050

00081d24 <_ZN7Serial_17availableForWriteEv>:
   81d24:	f240 10ff 	movw	r0, #511	; 0x1ff
   81d28:	4770      	bx	lr
	...

00081d2c <_ZN7Serial_4peekEv>:
   81d2c:	4b06      	ldr	r3, [pc, #24]	; (81d48 <_ZN7Serial_4peekEv+0x1c>)
   81d2e:	f8d3 1200 	ldr.w	r1, [r3, #512]	; 0x200
   81d32:	f8d3 2204 	ldr.w	r2, [r3, #516]	; 0x204
   81d36:	4291      	cmp	r1, r2
   81d38:	bf1a      	itte	ne
   81d3a:	f8d3 2204 	ldrne.w	r2, [r3, #516]	; 0x204
   81d3e:	5c98      	ldrbne	r0, [r3, r2]
   81d40:	f04f 30ff 	moveq.w	r0, #4294967295	; 0xffffffff
   81d44:	4770      	bx	lr
   81d46:	bf00      	nop
   81d48:	20071050 	.word	0x20071050

00081d4c <_ZN7Serial_5writeEh>:
   81d4c:	b513      	push	{r0, r1, r4, lr}
   81d4e:	6802      	ldr	r2, [r0, #0]
   81d50:	ab02      	add	r3, sp, #8
   81d52:	f803 1d01 	strb.w	r1, [r3, #-1]!
   81d56:	6854      	ldr	r4, [r2, #4]
   81d58:	4619      	mov	r1, r3
   81d5a:	2201      	movs	r2, #1
   81d5c:	47a0      	blx	r4
   81d5e:	b002      	add	sp, #8
   81d60:	bd10      	pop	{r4, pc}
	...

00081d64 <_ZN7Serial_4readEv>:
   81d64:	b538      	push	{r3, r4, r5, lr}
   81d66:	4b0f      	ldr	r3, [pc, #60]	; (81da4 <_ZN7Serial_4readEv+0x40>)
   81d68:	4604      	mov	r4, r0
   81d6a:	f8d3 1200 	ldr.w	r1, [r3, #512]	; 0x200
   81d6e:	f8d3 2204 	ldr.w	r2, [r3, #516]	; 0x204
   81d72:	4291      	cmp	r1, r2
   81d74:	d013      	beq.n	81d9e <_ZN7Serial_4readEv+0x3a>
   81d76:	f8d3 2204 	ldr.w	r2, [r3, #516]	; 0x204
   81d7a:	2002      	movs	r0, #2
   81d7c:	5c9d      	ldrb	r5, [r3, r2]
   81d7e:	f8d3 2204 	ldr.w	r2, [r3, #516]	; 0x204
   81d82:	3201      	adds	r2, #1
   81d84:	f3c2 0208 	ubfx	r2, r2, #0, #9
   81d88:	f8c3 2204 	str.w	r2, [r3, #516]	; 0x204
   81d8c:	f7ff fc44 	bl	81618 <_Z14USBD_Availablem>
   81d90:	b118      	cbz	r0, 81d9a <_ZN7Serial_4readEv+0x36>
   81d92:	6823      	ldr	r3, [r4, #0]
   81d94:	4620      	mov	r0, r4
   81d96:	69db      	ldr	r3, [r3, #28]
   81d98:	4798      	blx	r3
   81d9a:	4628      	mov	r0, r5
   81d9c:	bd38      	pop	{r3, r4, r5, pc}
   81d9e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   81da2:	bd38      	pop	{r3, r4, r5, pc}
   81da4:	20071050 	.word	0x20071050

00081da8 <_ZN7Serial_5flushEv>:
   81da8:	2003      	movs	r0, #3
   81daa:	f7ff bd52 	b.w	81852 <_Z10USBD_Flushm>
	...

00081db0 <_ZN7Serial_6acceptEv>:
   81db0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   81db2:	4b18      	ldr	r3, [pc, #96]	; (81e14 <_ZN7Serial_6acceptEv+0x64>)
   81db4:	e853 3f00 	ldrex	r3, [r3]
   81db8:	4e16      	ldr	r6, [pc, #88]	; (81e14 <_ZN7Serial_6acceptEv+0x64>)
   81dba:	b113      	cbz	r3, 81dc2 <_ZN7Serial_6acceptEv+0x12>
   81dbc:	f3bf 8f2f 	clrex
   81dc0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   81dc2:	2301      	movs	r3, #1
   81dc4:	e846 3300 	strex	r3, r3, [r6]
   81dc8:	2b00      	cmp	r3, #0
   81dca:	d1f2      	bne.n	81db2 <_ZN7Serial_6acceptEv+0x2>
   81dcc:	4b12      	ldr	r3, [pc, #72]	; (81e18 <_ZN7Serial_6acceptEv+0x68>)
   81dce:	f8d3 4200 	ldr.w	r4, [r3, #512]	; 0x200
   81dd2:	461f      	mov	r7, r3
   81dd4:	3401      	adds	r4, #1
   81dd6:	f3c4 0408 	ubfx	r4, r4, #0, #9
   81dda:	f8d7 3204 	ldr.w	r3, [r7, #516]	; 0x204
   81dde:	4d0e      	ldr	r5, [pc, #56]	; (81e18 <_ZN7Serial_6acceptEv+0x68>)
   81de0:	429c      	cmp	r4, r3
   81de2:	d014      	beq.n	81e0e <_ZN7Serial_6acceptEv+0x5e>
   81de4:	2002      	movs	r0, #2
   81de6:	f7ff fc17 	bl	81618 <_Z14USBD_Availablem>
   81dea:	b920      	cbnz	r0, 81df6 <_ZN7Serial_6acceptEv+0x46>
   81dec:	4b0b      	ldr	r3, [pc, #44]	; (81e1c <_ZN7Serial_6acceptEv+0x6c>)
   81dee:	f44f 4280 	mov.w	r2, #16384	; 0x4000
   81df2:	601a      	str	r2, [r3, #0]
   81df4:	e00b      	b.n	81e0e <_ZN7Serial_6acceptEv+0x5e>
   81df6:	2002      	movs	r0, #2
   81df8:	f7ff fc62 	bl	816c0 <_Z9USBD_Recvm>
   81dfc:	f8d5 3200 	ldr.w	r3, [r5, #512]	; 0x200
   81e00:	f8c5 4200 	str.w	r4, [r5, #512]	; 0x200
   81e04:	3401      	adds	r4, #1
   81e06:	54e8      	strb	r0, [r5, r3]
   81e08:	f3c4 0408 	ubfx	r4, r4, #0, #9
   81e0c:	e7e5      	b.n	81dda <_ZN7Serial_6acceptEv+0x2a>
   81e0e:	2300      	movs	r3, #0
   81e10:	6033      	str	r3, [r6, #0]
   81e12:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   81e14:	20071258 	.word	0x20071258
   81e18:	20071050 	.word	0x20071050
   81e1c:	400ac228 	.word	0x400ac228

00081e20 <_ZN7Serial_5writeEPKhj>:
   81e20:	b510      	push	{r4, lr}
   81e22:	4b09      	ldr	r3, [pc, #36]	; (81e48 <_ZN7Serial_5writeEPKhj+0x28>)
   81e24:	4604      	mov	r4, r0
   81e26:	79db      	ldrb	r3, [r3, #7]
   81e28:	f003 00ff 	and.w	r0, r3, #255	; 0xff
   81e2c:	b143      	cbz	r3, 81e40 <_ZN7Serial_5writeEPKhj+0x20>
   81e2e:	2003      	movs	r0, #3
   81e30:	f7ff fc58 	bl	816e4 <_Z9USBD_SendmPKvm>
   81e34:	2800      	cmp	r0, #0
   81e36:	dc05      	bgt.n	81e44 <_ZN7Serial_5writeEPKhj+0x24>
   81e38:	2301      	movs	r3, #1
   81e3a:	6063      	str	r3, [r4, #4]
   81e3c:	2000      	movs	r0, #0
   81e3e:	bd10      	pop	{r4, pc}
   81e40:	2301      	movs	r3, #1
   81e42:	6063      	str	r3, [r4, #4]
   81e44:	bd10      	pop	{r4, pc}
   81e46:	bf00      	nop
   81e48:	20070064 	.word	0x20070064

00081e4c <_Z16CDC_GetInterfacePh>:
   81e4c:	7803      	ldrb	r3, [r0, #0]
   81e4e:	4903      	ldr	r1, [pc, #12]	; (81e5c <_Z16CDC_GetInterfacePh+0x10>)
   81e50:	3302      	adds	r3, #2
   81e52:	7003      	strb	r3, [r0, #0]
   81e54:	2242      	movs	r2, #66	; 0x42
   81e56:	2000      	movs	r0, #0
   81e58:	f7ff bc6a 	b.w	81730 <_Z16USBD_SendControlhPKvm>
   81e5c:	0008613a 	.word	0x0008613a

00081e60 <_Z21CDC_GetOtherInterfacePh>:
   81e60:	7803      	ldrb	r3, [r0, #0]
   81e62:	4903      	ldr	r1, [pc, #12]	; (81e70 <_Z21CDC_GetOtherInterfacePh+0x10>)
   81e64:	3302      	adds	r3, #2
   81e66:	7003      	strb	r3, [r0, #0]
   81e68:	2242      	movs	r2, #66	; 0x42
   81e6a:	2000      	movs	r0, #0
   81e6c:	f7ff bc60 	b.w	81730 <_Z16USBD_SendControlhPKvm>
   81e70:	000860f8 	.word	0x000860f8

00081e74 <_Z9CDC_SetupR8USBSetup>:
   81e74:	b508      	push	{r3, lr}
   81e76:	7802      	ldrb	r2, [r0, #0]
   81e78:	7843      	ldrb	r3, [r0, #1]
   81e7a:	2aa1      	cmp	r2, #161	; 0xa1
   81e7c:	d108      	bne.n	81e90 <_Z9CDC_SetupR8USBSetup+0x1c>
   81e7e:	2b21      	cmp	r3, #33	; 0x21
   81e80:	f04f 0000 	mov.w	r0, #0
   81e84:	d129      	bne.n	81eda <_Z9CDC_SetupR8USBSetup+0x66>
   81e86:	4917      	ldr	r1, [pc, #92]	; (81ee4 <_Z9CDC_SetupR8USBSetup+0x70>)
   81e88:	2207      	movs	r2, #7
   81e8a:	f7ff fc51 	bl	81730 <_Z16USBD_SendControlhPKvm>
   81e8e:	e025      	b.n	81edc <_Z9CDC_SetupR8USBSetup+0x68>
   81e90:	2a21      	cmp	r2, #33	; 0x21
   81e92:	d125      	bne.n	81ee0 <_Z9CDC_SetupR8USBSetup+0x6c>
   81e94:	2b20      	cmp	r3, #32
   81e96:	d104      	bne.n	81ea2 <_Z9CDC_SetupR8USBSetup+0x2e>
   81e98:	2107      	movs	r1, #7
   81e9a:	4812      	ldr	r0, [pc, #72]	; (81ee4 <_Z9CDC_SetupR8USBSetup+0x70>)
   81e9c:	f7ff fc9a 	bl	817d4 <_Z16USBD_RecvControlPvm>
   81ea0:	e01c      	b.n	81edc <_Z9CDC_SetupR8USBSetup+0x68>
   81ea2:	2b22      	cmp	r3, #34	; 0x22
   81ea4:	d110      	bne.n	81ec8 <_Z9CDC_SetupR8USBSetup+0x54>
   81ea6:	7882      	ldrb	r2, [r0, #2]
   81ea8:	4b0e      	ldr	r3, [pc, #56]	; (81ee4 <_Z9CDC_SetupR8USBSetup+0x70>)
   81eaa:	71da      	strb	r2, [r3, #7]
   81eac:	681a      	ldr	r2, [r3, #0]
   81eae:	f5b2 6f96 	cmp.w	r2, #1200	; 0x4b0
   81eb2:	d113      	bne.n	81edc <_Z9CDC_SetupR8USBSetup+0x68>
   81eb4:	79db      	ldrb	r3, [r3, #7]
   81eb6:	07db      	lsls	r3, r3, #31
   81eb8:	d403      	bmi.n	81ec2 <_Z9CDC_SetupR8USBSetup+0x4e>
   81eba:	20fa      	movs	r0, #250	; 0xfa
   81ebc:	f7ff fb7e 	bl	815bc <initiateReset>
   81ec0:	e00c      	b.n	81edc <_Z9CDC_SetupR8USBSetup+0x68>
   81ec2:	f7ff fb81 	bl	815c8 <cancelReset>
   81ec6:	e009      	b.n	81edc <_Z9CDC_SetupR8USBSetup+0x68>
   81ec8:	2b23      	cmp	r3, #35	; 0x23
   81eca:	d109      	bne.n	81ee0 <_Z9CDC_SetupR8USBSetup+0x6c>
   81ecc:	7883      	ldrb	r3, [r0, #2]
   81ece:	78c2      	ldrb	r2, [r0, #3]
   81ed0:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
   81ed4:	4b04      	ldr	r3, [pc, #16]	; (81ee8 <_Z9CDC_SetupR8USBSetup+0x74>)
   81ed6:	601a      	str	r2, [r3, #0]
   81ed8:	e000      	b.n	81edc <_Z9CDC_SetupR8USBSetup+0x68>
   81eda:	bd08      	pop	{r3, pc}
   81edc:	2001      	movs	r0, #1
   81ede:	bd08      	pop	{r3, pc}
   81ee0:	2000      	movs	r0, #0
   81ee2:	bd08      	pop	{r3, pc}
   81ee4:	20070064 	.word	0x20070064
   81ee8:	20070060 	.word	0x20070060

00081eec <_GLOBAL__sub_I_cdc_rx_buffer>:
   81eec:	4b04      	ldr	r3, [pc, #16]	; (81f00 <_GLOBAL__sub_I_cdc_rx_buffer+0x14>)
   81eee:	2200      	movs	r2, #0
   81ef0:	605a      	str	r2, [r3, #4]
   81ef2:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
   81ef6:	609a      	str	r2, [r3, #8]
   81ef8:	4a02      	ldr	r2, [pc, #8]	; (81f04 <_GLOBAL__sub_I_cdc_rx_buffer+0x18>)
   81efa:	601a      	str	r2, [r3, #0]
   81efc:	4770      	bx	lr
   81efe:	bf00      	nop
   81f00:	2007125c 	.word	0x2007125c
   81f04:	000860d8 	.word	0x000860d8

00081f08 <_ZN13PluggableUSB_12getInterfaceEPh>:
   81f08:	b570      	push	{r4, r5, r6, lr}
   81f0a:	6844      	ldr	r4, [r0, #4]
   81f0c:	460e      	mov	r6, r1
   81f0e:	2500      	movs	r5, #0
   81f10:	b14c      	cbz	r4, 81f26 <_ZN13PluggableUSB_12getInterfaceEPh+0x1e>
   81f12:	6823      	ldr	r3, [r4, #0]
   81f14:	4620      	mov	r0, r4
   81f16:	685b      	ldr	r3, [r3, #4]
   81f18:	4631      	mov	r1, r6
   81f1a:	4798      	blx	r3
   81f1c:	2800      	cmp	r0, #0
   81f1e:	db04      	blt.n	81f2a <_ZN13PluggableUSB_12getInterfaceEPh+0x22>
   81f20:	4405      	add	r5, r0
   81f22:	68e4      	ldr	r4, [r4, #12]
   81f24:	e7f4      	b.n	81f10 <_ZN13PluggableUSB_12getInterfaceEPh+0x8>
   81f26:	4628      	mov	r0, r5
   81f28:	bd70      	pop	{r4, r5, r6, pc}
   81f2a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   81f2e:	bd70      	pop	{r4, r5, r6, pc}

00081f30 <_ZN13PluggableUSB_13getDescriptorER8USBSetup>:
   81f30:	b538      	push	{r3, r4, r5, lr}
   81f32:	6844      	ldr	r4, [r0, #4]
   81f34:	460d      	mov	r5, r1
   81f36:	b13c      	cbz	r4, 81f48 <_ZN13PluggableUSB_13getDescriptorER8USBSetup+0x18>
   81f38:	6823      	ldr	r3, [r4, #0]
   81f3a:	4620      	mov	r0, r4
   81f3c:	689b      	ldr	r3, [r3, #8]
   81f3e:	4629      	mov	r1, r5
   81f40:	4798      	blx	r3
   81f42:	b910      	cbnz	r0, 81f4a <_ZN13PluggableUSB_13getDescriptorER8USBSetup+0x1a>
   81f44:	68e4      	ldr	r4, [r4, #12]
   81f46:	e7f6      	b.n	81f36 <_ZN13PluggableUSB_13getDescriptorER8USBSetup+0x6>
   81f48:	4620      	mov	r0, r4
   81f4a:	bd38      	pop	{r3, r4, r5, pc}

00081f4c <_ZN13PluggableUSB_12getShortNameEPc>:
   81f4c:	b538      	push	{r3, r4, r5, lr}
   81f4e:	6844      	ldr	r4, [r0, #4]
   81f50:	460d      	mov	r5, r1
   81f52:	b13c      	cbz	r4, 81f64 <_ZN13PluggableUSB_12getShortNameEPc+0x18>
   81f54:	6823      	ldr	r3, [r4, #0]
   81f56:	4620      	mov	r0, r4
   81f58:	4629      	mov	r1, r5
   81f5a:	68db      	ldr	r3, [r3, #12]
   81f5c:	4798      	blx	r3
   81f5e:	68e4      	ldr	r4, [r4, #12]
   81f60:	4405      	add	r5, r0
   81f62:	e7f6      	b.n	81f52 <_ZN13PluggableUSB_12getShortNameEPc+0x6>
   81f64:	702c      	strb	r4, [r5, #0]
   81f66:	bd38      	pop	{r3, r4, r5, pc}

00081f68 <_ZN13PluggableUSB_5setupER8USBSetup>:
   81f68:	b538      	push	{r3, r4, r5, lr}
   81f6a:	6844      	ldr	r4, [r0, #4]
   81f6c:	460d      	mov	r5, r1
   81f6e:	b13c      	cbz	r4, 81f80 <_ZN13PluggableUSB_5setupER8USBSetup+0x18>
   81f70:	6823      	ldr	r3, [r4, #0]
   81f72:	4620      	mov	r0, r4
   81f74:	681b      	ldr	r3, [r3, #0]
   81f76:	4629      	mov	r1, r5
   81f78:	4798      	blx	r3
   81f7a:	b918      	cbnz	r0, 81f84 <_ZN13PluggableUSB_5setupER8USBSetup+0x1c>
   81f7c:	68e4      	ldr	r4, [r4, #12]
   81f7e:	e7f6      	b.n	81f6e <_ZN13PluggableUSB_5setupER8USBSetup+0x6>
   81f80:	4620      	mov	r0, r4
   81f82:	bd38      	pop	{r3, r4, r5, pc}
   81f84:	2001      	movs	r0, #1
   81f86:	bd38      	pop	{r3, r4, r5, pc}

00081f88 <_Z12PluggableUSBv>:
   81f88:	4a07      	ldr	r2, [pc, #28]	; (81fa8 <_Z12PluggableUSBv+0x20>)
   81f8a:	6813      	ldr	r3, [r2, #0]
   81f8c:	f013 0101 	ands.w	r1, r3, #1
   81f90:	d107      	bne.n	81fa2 <_Z12PluggableUSBv+0x1a>
   81f92:	4b06      	ldr	r3, [pc, #24]	; (81fac <_Z12PluggableUSBv+0x24>)
   81f94:	2002      	movs	r0, #2
   81f96:	7018      	strb	r0, [r3, #0]
   81f98:	2004      	movs	r0, #4
   81f9a:	7058      	strb	r0, [r3, #1]
   81f9c:	6059      	str	r1, [r3, #4]
   81f9e:	2301      	movs	r3, #1
   81fa0:	6013      	str	r3, [r2, #0]
   81fa2:	4802      	ldr	r0, [pc, #8]	; (81fac <_Z12PluggableUSBv+0x24>)
   81fa4:	4770      	bx	lr
   81fa6:	bf00      	nop
   81fa8:	20071278 	.word	0x20071278
   81fac:	20071270 	.word	0x20071270

00081fb0 <TimeTick_Increment>:
   81fb0:	f241 207c 	movw	r0, #4732	; 0x127c
   81fb4:	f2c2 0007 	movt	r0, #8199	; 0x2007
   81fb8:	6801      	ldr	r1, [r0, #0]
   81fba:	3101      	adds	r1, #1
   81fbc:	6001      	str	r1, [r0, #0]
   81fbe:	4770      	bx	lr

00081fc0 <UDD_SetStack>:
   81fc0:	f640 6128 	movw	r1, #3624	; 0xe28
   81fc4:	f2c2 0107 	movt	r1, #8199	; 0x2007
   81fc8:	6008      	str	r0, [r1, #0]
   81fca:	4770      	bx	lr

00081fcc <UDD_Init>:
   81fcc:	f241 2180 	movw	r1, #4736	; 0x1280
   81fd0:	f241 22a8 	movw	r2, #4776	; 0x12a8
   81fd4:	2000      	movs	r0, #0
   81fd6:	2300      	movs	r3, #0
   81fd8:	f2c2 0107 	movt	r1, #8199	; 0x2007
   81fdc:	f2c2 0207 	movt	r2, #8199	; 0x2007
   81fe0:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
   81fe4:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
   81fe8:	3301      	adds	r3, #1
   81fea:	2b0a      	cmp	r3, #10
   81fec:	d1f8      	bne.n	81fe0 <UDD_Init+0x14>
   81fee:	b5f0      	push	{r4, r5, r6, r7, lr}
   81ff0:	af03      	add	r7, sp, #12
   81ff2:	f84d 8d04 	str.w	r8, [sp, #-4]!
   81ff6:	4954      	ldr	r1, [pc, #336]	; (82148 <UDD_Init+0x17c>)
   81ff8:	2028      	movs	r0, #40	; 0x28
   81ffa:	4788      	blx	r1
   81ffc:	4853      	ldr	r0, [pc, #332]	; (8214c <UDD_Init+0x180>)
   81ffe:	4780      	blx	r0
   82000:	4953      	ldr	r1, [pc, #332]	; (82150 <UDD_Init+0x184>)
   82002:	2000      	movs	r0, #0
   82004:	2400      	movs	r4, #0
   82006:	4788      	blx	r1
   82008:	4852      	ldr	r0, [pc, #328]	; (82154 <UDD_Init+0x188>)
   8200a:	4780      	blx	r0
   8200c:	f24e 1004 	movw	r0, #57604	; 0xe104
   82010:	f44f 7180 	mov.w	r1, #256	; 0x100
   82014:	4b50      	ldr	r3, [pc, #320]	; (82158 <UDD_Init+0x18c>)
   82016:	2200      	movs	r2, #0
   82018:	f2ce 0000 	movt	r0, #57344	; 0xe000
   8201c:	f880 4324 	strb.w	r4, [r0, #804]	; 0x324
   82020:	f64c 0400 	movw	r4, #51200	; 0xc800
   82024:	6001      	str	r1, [r0, #0]
   82026:	f2c4 040a 	movt	r4, #16394	; 0x400a
   8202a:	6825      	ldr	r5, [r4, #0]
   8202c:	4620      	mov	r0, r4
   8202e:	4629      	mov	r1, r5
   82030:	4798      	blx	r3
   82032:	4b4a      	ldr	r3, [pc, #296]	; (8215c <UDD_Init+0x190>)
   82034:	f025 7180 	bic.w	r1, r5, #16777216	; 0x1000000
   82038:	4620      	mov	r0, r4
   8203a:	2201      	movs	r2, #1
   8203c:	6021      	str	r1, [r4, #0]
   8203e:	4798      	blx	r3
   82040:	6825      	ldr	r5, [r4, #0]
   82042:	4b47      	ldr	r3, [pc, #284]	; (82160 <UDD_Init+0x194>)
   82044:	4620      	mov	r0, r4
   82046:	2200      	movs	r2, #0
   82048:	4629      	mov	r1, r5
   8204a:	4798      	blx	r3
   8204c:	4b45      	ldr	r3, [pc, #276]	; (82164 <UDD_Init+0x198>)
   8204e:	f045 7100 	orr.w	r1, r5, #33554432	; 0x2000000
   82052:	4620      	mov	r0, r4
   82054:	2201      	movs	r2, #1
   82056:	6021      	str	r1, [r4, #0]
   82058:	4798      	blx	r3
   8205a:	6825      	ldr	r5, [r4, #0]
   8205c:	4b42      	ldr	r3, [pc, #264]	; (82168 <UDD_Init+0x19c>)
   8205e:	4620      	mov	r0, r4
   82060:	2200      	movs	r2, #0
   82062:	4629      	mov	r1, r5
   82064:	4798      	blx	r3
   82066:	4b41      	ldr	r3, [pc, #260]	; (8216c <UDD_Init+0x1a0>)
   82068:	f025 7180 	bic.w	r1, r5, #16777216	; 0x1000000
   8206c:	4620      	mov	r0, r4
   8206e:	2201      	movs	r2, #1
   82070:	6021      	str	r1, [r4, #0]
   82072:	4798      	blx	r3
   82074:	6825      	ldr	r5, [r4, #0]
   82076:	4b3e      	ldr	r3, [pc, #248]	; (82170 <UDD_Init+0x1a4>)
   82078:	4620      	mov	r0, r4
   8207a:	2200      	movs	r2, #0
   8207c:	4629      	mov	r1, r5
   8207e:	4798      	blx	r3
   82080:	4b3c      	ldr	r3, [pc, #240]	; (82174 <UDD_Init+0x1a8>)
   82082:	f425 5180 	bic.w	r1, r5, #4096	; 0x1000
   82086:	4620      	mov	r0, r4
   82088:	2201      	movs	r2, #1
   8208a:	6021      	str	r1, [r4, #0]
   8208c:	4798      	blx	r3
   8208e:	6825      	ldr	r5, [r4, #0]
   82090:	4b39      	ldr	r3, [pc, #228]	; (82178 <UDD_Init+0x1ac>)
   82092:	4620      	mov	r0, r4
   82094:	2200      	movs	r2, #0
   82096:	4629      	mov	r1, r5
   82098:	4798      	blx	r3
   8209a:	4b38      	ldr	r3, [pc, #224]	; (8217c <UDD_Init+0x1b0>)
   8209c:	f445 5180 	orr.w	r1, r5, #4096	; 0x1000
   820a0:	4620      	mov	r0, r4
   820a2:	2201      	movs	r2, #1
   820a4:	6021      	str	r1, [r4, #0]
   820a6:	4798      	blx	r3
   820a8:	6825      	ldr	r5, [r4, #0]
   820aa:	4b35      	ldr	r3, [pc, #212]	; (82180 <UDD_Init+0x1b4>)
   820ac:	4620      	mov	r0, r4
   820ae:	2200      	movs	r2, #0
   820b0:	4629      	mov	r1, r5
   820b2:	4798      	blx	r3
   820b4:	4b33      	ldr	r3, [pc, #204]	; (82184 <UDD_Init+0x1b8>)
   820b6:	f445 4100 	orr.w	r1, r5, #32768	; 0x8000
   820ba:	4620      	mov	r0, r4
   820bc:	2201      	movs	r2, #1
   820be:	6021      	str	r1, [r4, #0]
   820c0:	4798      	blx	r3
   820c2:	6825      	ldr	r5, [r4, #0]
   820c4:	4b30      	ldr	r3, [pc, #192]	; (82188 <UDD_Init+0x1bc>)
   820c6:	4620      	mov	r0, r4
   820c8:	2200      	movs	r2, #0
   820ca:	4629      	mov	r1, r5
   820cc:	4798      	blx	r3
   820ce:	4b2f      	ldr	r3, [pc, #188]	; (8218c <UDD_Init+0x1c0>)
   820d0:	f425 4180 	bic.w	r1, r5, #16384	; 0x4000
   820d4:	4620      	mov	r0, r4
   820d6:	2201      	movs	r2, #1
   820d8:	6021      	str	r1, [r4, #0]
   820da:	4798      	blx	r3
   820dc:	f64f 0800 	movw	r8, #63488	; 0xf800
   820e0:	f5a4 6600 	sub.w	r6, r4, #2048	; 0x800
   820e4:	4b2a      	ldr	r3, [pc, #168]	; (82190 <UDD_Init+0x1c4>)
   820e6:	2200      	movs	r2, #0
   820e8:	f6cf 78ff 	movt	r8, #65535	; 0xffff
   820ec:	4630      	mov	r0, r6
   820ee:	f854 5008 	ldr.w	r5, [r4, r8]
   820f2:	4629      	mov	r1, r5
   820f4:	4798      	blx	r3
   820f6:	4b27      	ldr	r3, [pc, #156]	; (82194 <UDD_Init+0x1c8>)
   820f8:	f425 5180 	bic.w	r1, r5, #4096	; 0x1000
   820fc:	4630      	mov	r0, r6
   820fe:	2201      	movs	r2, #1
   82100:	f844 1008 	str.w	r1, [r4, r8]
   82104:	4798      	blx	r3
   82106:	f854 5008 	ldr.w	r5, [r4, r8]
   8210a:	4b23      	ldr	r3, [pc, #140]	; (82198 <UDD_Init+0x1cc>)
   8210c:	4630      	mov	r0, r6
   8210e:	2200      	movs	r2, #0
   82110:	4629      	mov	r1, r5
   82112:	4798      	blx	r3
   82114:	4b21      	ldr	r3, [pc, #132]	; (8219c <UDD_Init+0x1d0>)
   82116:	f425 6140 	bic.w	r1, r5, #3072	; 0xc00
   8211a:	4630      	mov	r0, r6
   8211c:	2201      	movs	r2, #1
   8211e:	f844 1008 	str.w	r1, [r4, r8]
   82122:	4798      	blx	r3
   82124:	6825      	ldr	r5, [r4, #0]
   82126:	4b1e      	ldr	r3, [pc, #120]	; (821a0 <UDD_Init+0x1d4>)
   82128:	4620      	mov	r0, r4
   8212a:	2200      	movs	r2, #0
   8212c:	4629      	mov	r1, r5
   8212e:	4798      	blx	r3
   82130:	4b1c      	ldr	r3, [pc, #112]	; (821a4 <UDD_Init+0x1d8>)
   82132:	f445 4180 	orr.w	r1, r5, #16384	; 0x4000
   82136:	4620      	mov	r0, r4
   82138:	2201      	movs	r2, #1
   8213a:	6021      	str	r1, [r4, #0]
   8213c:	4798      	blx	r3
   8213e:	2000      	movs	r0, #0
   82140:	f85d 8b04 	ldr.w	r8, [sp], #4
   82144:	bdf0      	pop	{r4, r5, r6, r7, pc}
   82146:	bf00      	nop
   82148:	00080c2d 	.word	0x00080c2d
   8214c:	00080be9 	.word	0x00080be9
   82150:	00080d35 	.word	0x00080d35
   82154:	00080d51 	.word	0x00080d51
   82158:	000808c5 	.word	0x000808c5
   8215c:	000808c5 	.word	0x000808c5
   82160:	000808c5 	.word	0x000808c5
   82164:	000808c5 	.word	0x000808c5
   82168:	000808c5 	.word	0x000808c5
   8216c:	000808c5 	.word	0x000808c5
   82170:	000808c5 	.word	0x000808c5
   82174:	000808c5 	.word	0x000808c5
   82178:	000808c5 	.word	0x000808c5
   8217c:	000808c5 	.word	0x000808c5
   82180:	000808c5 	.word	0x000808c5
   82184:	000808c5 	.word	0x000808c5
   82188:	000808c5 	.word	0x000808c5
   8218c:	000808c5 	.word	0x000808c5
   82190:	000808c5 	.word	0x000808c5
   82194:	000808c5 	.word	0x000808c5
   82198:	000808c5 	.word	0x000808c5
   8219c:	000808c5 	.word	0x000808c5
   821a0:	000808c5 	.word	0x000808c5
   821a4:	000808c5 	.word	0x000808c5

000821a8 <UDD_Attach>:
   821a8:	b5f0      	push	{r4, r5, r6, r7, lr}
   821aa:	af03      	add	r7, sp, #12
   821ac:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
   821b0:	f240 086c 	movw	r8, #108	; 0x6c
   821b4:	f24c 0a00 	movw	sl, #49152	; 0xc000
   821b8:	2000      	movs	r0, #0
   821ba:	4b25      	ldr	r3, [pc, #148]	; (82250 <UDD_Attach+0xa8>)
   821bc:	2200      	movs	r2, #0
   821be:	f2c2 0807 	movt	r8, #8199	; 0x2007
   821c2:	f2c4 0a0a 	movt	sl, #16394	; 0x400a
   821c6:	f8d8 9000 	ldr.w	r9, [r8]
   821ca:	b672      	cpsid	i
   821cc:	f3bf 8f5f 	dmb	sy
   821d0:	f8c8 0000 	str.w	r0, [r8]
   821d4:	f50a 6600 	add.w	r6, sl, #2048	; 0x800
   821d8:	f8da 5800 	ldr.w	r5, [sl, #2048]	; 0x800
   821dc:	4630      	mov	r0, r6
   821de:	4629      	mov	r1, r5
   821e0:	4798      	blx	r3
   821e2:	4b1c      	ldr	r3, [pc, #112]	; (82254 <UDD_Attach+0xac>)
   821e4:	f425 4180 	bic.w	r1, r5, #16384	; 0x4000
   821e8:	4630      	mov	r0, r6
   821ea:	2201      	movs	r2, #1
   821ec:	f8ca 1800 	str.w	r1, [sl, #2048]	; 0x800
   821f0:	4798      	blx	r3
   821f2:	f64c 0504 	movw	r5, #51204	; 0xc804
   821f6:	4c18      	ldr	r4, [pc, #96]	; (82258 <UDD_Attach+0xb0>)
   821f8:	f2c4 050a 	movt	r5, #16394	; 0x400a
   821fc:	682e      	ldr	r6, [r5, #0]
   821fe:	4628      	mov	r0, r5
   82200:	2200      	movs	r2, #0
   82202:	4631      	mov	r1, r6
   82204:	47a0      	blx	r4
   82206:	0470      	lsls	r0, r6, #17
   82208:	d5f8      	bpl.n	821fc <UDD_Attach+0x54>
   8220a:	f8da 5000 	ldr.w	r5, [sl]
   8220e:	4b13      	ldr	r3, [pc, #76]	; (8225c <UDD_Attach+0xb4>)
   82210:	4650      	mov	r0, sl
   82212:	2200      	movs	r2, #0
   82214:	4629      	mov	r1, r5
   82216:	4798      	blx	r3
   82218:	4b11      	ldr	r3, [pc, #68]	; (82260 <UDD_Attach+0xb8>)
   8221a:	f425 7180 	bic.w	r1, r5, #256	; 0x100
   8221e:	4650      	mov	r0, sl
   82220:	2201      	movs	r2, #1
   82222:	2501      	movs	r5, #1
   82224:	f8ca 1000 	str.w	r1, [sl]
   82228:	4798      	blx	r3
   8222a:	2008      	movs	r0, #8
   8222c:	4b0d      	ldr	r3, [pc, #52]	; (82264 <UDD_Attach+0xbc>)
   8222e:	2108      	movs	r1, #8
   82230:	2201      	movs	r2, #1
   82232:	f84a 0f18 	str.w	r0, [sl, #24]!
   82236:	4650      	mov	r0, sl
   82238:	4798      	blx	r3
   8223a:	f1b9 0f00 	cmp.w	r9, #0
   8223e:	d004      	beq.n	8224a <UDD_Attach+0xa2>
   82240:	f8c8 5000 	str.w	r5, [r8]
   82244:	f3bf 8f5f 	dmb	sy
   82248:	b662      	cpsie	i
   8224a:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
   8224e:	bdf0      	pop	{r4, r5, r6, r7, pc}
   82250:	000808c5 	.word	0x000808c5
   82254:	000808c5 	.word	0x000808c5
   82258:	000808c5 	.word	0x000808c5
   8225c:	000808c5 	.word	0x000808c5
   82260:	000808c5 	.word	0x000808c5
   82264:	000808c5 	.word	0x000808c5

00082268 <UDD_InitEP>:
   82268:	b5f0      	push	{r4, r5, r6, r7, lr}
   8226a:	af03      	add	r7, sp, #12
   8226c:	f84d 8d04 	str.w	r8, [sp, #-4]!
   82270:	f24c 041c 	movw	r4, #49180	; 0xc01c
   82274:	f000 060f 	and.w	r6, r0, #15
   82278:	4b0e      	ldr	r3, [pc, #56]	; (822b4 <UDD_InitEP+0x4c>)
   8227a:	2200      	movs	r2, #0
   8227c:	f2c4 040a 	movt	r4, #16394	; 0x400a
   82280:	eb04 0886 	add.w	r8, r4, r6, lsl #2
   82284:	4620      	mov	r0, r4
   82286:	f8c8 10e4 	str.w	r1, [r8, #228]	; 0xe4
   8228a:	6825      	ldr	r5, [r4, #0]
   8228c:	4629      	mov	r1, r5
   8228e:	4798      	blx	r3
   82290:	2001      	movs	r0, #1
   82292:	4b09      	ldr	r3, [pc, #36]	; (822b8 <UDD_InitEP+0x50>)
   82294:	2201      	movs	r2, #1
   82296:	40b0      	lsls	r0, r6
   82298:	ea45 0100 	orr.w	r1, r5, r0
   8229c:	4620      	mov	r0, r4
   8229e:	6021      	str	r1, [r4, #0]
   822a0:	4798      	blx	r3
   822a2:	f8d8 0114 	ldr.w	r0, [r8, #276]	; 0x114
   822a6:	0340      	lsls	r0, r0, #13
   822a8:	bf44      	itt	mi
   822aa:	f85d 8b04 	ldrmi.w	r8, [sp], #4
   822ae:	bdf0      	popmi	{r4, r5, r6, r7, pc}
   822b0:	e7fe      	b.n	822b0 <UDD_InitEP+0x48>
   822b2:	bf00      	nop
   822b4:	000808c5 	.word	0x000808c5
   822b8:	000808c5 	.word	0x000808c5

000822bc <UDD_InitEndpoints>:
   822bc:	b5f0      	push	{r4, r5, r6, r7, lr}
   822be:	af03      	add	r7, sp, #12
   822c0:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
   822c4:	b081      	sub	sp, #4
   822c6:	2902      	cmp	r1, #2
   822c8:	d326      	bcc.n	82318 <UDD_InitEndpoints+0x5c>
   822ca:	f24c 061c 	movw	r6, #49180	; 0xc01c
   822ce:	f8df b058 	ldr.w	fp, [pc, #88]	; 82328 <UDD_InitEndpoints+0x6c>
   822d2:	460c      	mov	r4, r1
   822d4:	4680      	mov	r8, r0
   822d6:	f04f 0901 	mov.w	r9, #1
   822da:	f2c4 060a 	movt	r6, #16394	; 0x400a
   822de:	f858 0029 	ldr.w	r0, [r8, r9, lsl #2]
   822e2:	eb06 0a89 	add.w	sl, r6, r9, lsl #2
   822e6:	4b0f      	ldr	r3, [pc, #60]	; (82324 <UDD_InitEndpoints+0x68>)
   822e8:	2200      	movs	r2, #0
   822ea:	f8ca 00e4 	str.w	r0, [sl, #228]	; 0xe4
   822ee:	4630      	mov	r0, r6
   822f0:	6835      	ldr	r5, [r6, #0]
   822f2:	4629      	mov	r1, r5
   822f4:	4798      	blx	r3
   822f6:	2001      	movs	r0, #1
   822f8:	2201      	movs	r2, #1
   822fa:	fa00 f009 	lsl.w	r0, r0, r9
   822fe:	ea45 0100 	orr.w	r1, r5, r0
   82302:	4630      	mov	r0, r6
   82304:	6031      	str	r1, [r6, #0]
   82306:	47d8      	blx	fp
   82308:	f8da 0114 	ldr.w	r0, [sl, #276]	; 0x114
   8230c:	0340      	lsls	r0, r0, #13
   8230e:	d507      	bpl.n	82320 <UDD_InitEndpoints+0x64>
   82310:	f109 0901 	add.w	r9, r9, #1
   82314:	45a1      	cmp	r9, r4
   82316:	d3e2      	bcc.n	822de <UDD_InitEndpoints+0x22>
   82318:	b001      	add	sp, #4
   8231a:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
   8231e:	bdf0      	pop	{r4, r5, r6, r7, pc}
   82320:	e7fe      	b.n	82320 <UDD_InitEndpoints+0x64>
   82322:	bf00      	nop
   82324:	000808c5 	.word	0x000808c5
   82328:	000808c5 	.word	0x000808c5

0008232c <UDD_WaitIN>:
   8232c:	b5f0      	push	{r4, r5, r6, r7, lr}
   8232e:	af03      	add	r7, sp, #12
   82330:	f84d bd04 	str.w	fp, [sp, #-4]!
   82334:	f24c 1430 	movw	r4, #49456	; 0xc130
   82338:	4e06      	ldr	r6, [pc, #24]	; (82354 <UDD_WaitIN+0x28>)
   8233a:	f2c4 040a 	movt	r4, #16394	; 0x400a
   8233e:	6825      	ldr	r5, [r4, #0]
   82340:	4620      	mov	r0, r4
   82342:	2200      	movs	r2, #0
   82344:	4629      	mov	r1, r5
   82346:	47b0      	blx	r6
   82348:	07e8      	lsls	r0, r5, #31
   8234a:	d0f8      	beq.n	8233e <UDD_WaitIN+0x12>
   8234c:	f85d bb04 	ldr.w	fp, [sp], #4
   82350:	bdf0      	pop	{r4, r5, r6, r7, pc}
   82352:	bf00      	nop
   82354:	000808c5 	.word	0x000808c5

00082358 <UDD_WaitOUT>:
   82358:	b5f0      	push	{r4, r5, r6, r7, lr}
   8235a:	af03      	add	r7, sp, #12
   8235c:	f84d bd04 	str.w	fp, [sp, #-4]!
   82360:	f24c 1430 	movw	r4, #49456	; 0xc130
   82364:	4e06      	ldr	r6, [pc, #24]	; (82380 <UDD_WaitOUT+0x28>)
   82366:	f2c4 040a 	movt	r4, #16394	; 0x400a
   8236a:	6825      	ldr	r5, [r4, #0]
   8236c:	4620      	mov	r0, r4
   8236e:	2200      	movs	r2, #0
   82370:	4629      	mov	r1, r5
   82372:	47b0      	blx	r6
   82374:	07a8      	lsls	r0, r5, #30
   82376:	d5f8      	bpl.n	8236a <UDD_WaitOUT+0x12>
   82378:	f85d bb04 	ldr.w	fp, [sp], #4
   8237c:	bdf0      	pop	{r4, r5, r6, r7, pc}
   8237e:	bf00      	nop
   82380:	000808c5 	.word	0x000808c5

00082384 <UDD_ClearIN>:
   82384:	b580      	push	{r7, lr}
   82386:	466f      	mov	r7, sp
   82388:	f24c 1060 	movw	r0, #49504	; 0xc160
   8238c:	2101      	movs	r1, #1
   8238e:	4b07      	ldr	r3, [pc, #28]	; (823ac <UDD_ClearIN+0x28>)
   82390:	2201      	movs	r2, #1
   82392:	f2c4 000a 	movt	r0, #16394	; 0x400a
   82396:	6001      	str	r1, [r0, #0]
   82398:	2101      	movs	r1, #1
   8239a:	4798      	blx	r3
   8239c:	f241 2080 	movw	r0, #4736	; 0x1280
   823a0:	2100      	movs	r1, #0
   823a2:	f2c2 0007 	movt	r0, #8199	; 0x2007
   823a6:	6001      	str	r1, [r0, #0]
   823a8:	bd80      	pop	{r7, pc}
   823aa:	bf00      	nop
   823ac:	000808c5 	.word	0x000808c5

000823b0 <UDD_ClearOUT>:
   823b0:	b580      	push	{r7, lr}
   823b2:	466f      	mov	r7, sp
   823b4:	f24c 1060 	movw	r0, #49504	; 0xc160
   823b8:	2102      	movs	r1, #2
   823ba:	4b07      	ldr	r3, [pc, #28]	; (823d8 <UDD_ClearOUT+0x28>)
   823bc:	2201      	movs	r2, #1
   823be:	f2c4 000a 	movt	r0, #16394	; 0x400a
   823c2:	6001      	str	r1, [r0, #0]
   823c4:	2102      	movs	r1, #2
   823c6:	4798      	blx	r3
   823c8:	f241 20a8 	movw	r0, #4776	; 0x12a8
   823cc:	2100      	movs	r1, #0
   823ce:	f2c2 0007 	movt	r0, #8199	; 0x2007
   823d2:	6001      	str	r1, [r0, #0]
   823d4:	bd80      	pop	{r7, pc}
   823d6:	bf00      	nop
   823d8:	000808c5 	.word	0x000808c5

000823dc <UDD_ReceivedSetupInt>:
   823dc:	b5d0      	push	{r4, r6, r7, lr}
   823de:	af02      	add	r7, sp, #8
   823e0:	f24c 1030 	movw	r0, #49456	; 0xc130
   823e4:	4b04      	ldr	r3, [pc, #16]	; (823f8 <UDD_ReceivedSetupInt+0x1c>)
   823e6:	2200      	movs	r2, #0
   823e8:	f2c4 000a 	movt	r0, #16394	; 0x400a
   823ec:	6804      	ldr	r4, [r0, #0]
   823ee:	4621      	mov	r1, r4
   823f0:	4798      	blx	r3
   823f2:	f004 0004 	and.w	r0, r4, #4
   823f6:	bdd0      	pop	{r4, r6, r7, pc}
   823f8:	000808c5 	.word	0x000808c5

000823fc <UDD_ClearSetupInt>:
   823fc:	f24c 1060 	movw	r0, #49504	; 0xc160
   82400:	2104      	movs	r1, #4
   82402:	4b03      	ldr	r3, [pc, #12]	; (82410 <UDD_ClearSetupInt+0x14>)
   82404:	2201      	movs	r2, #1
   82406:	f2c4 000a 	movt	r0, #16394	; 0x400a
   8240a:	6001      	str	r1, [r0, #0]
   8240c:	2104      	movs	r1, #4
   8240e:	4718      	bx	r3
   82410:	000808c5 	.word	0x000808c5

00082414 <UDD_Send>:
   82414:	b5f0      	push	{r4, r5, r6, r7, lr}
   82416:	af03      	add	r7, sp, #12
   82418:	f84d 8d04 	str.w	r8, [sp, #-4]!
   8241c:	4616      	mov	r6, r2
   8241e:	4602      	mov	r2, r0
   82420:	f24c 1060 	movw	r0, #49504	; 0xc160
   82424:	f2c4 000a 	movt	r0, #16394	; 0x400a
   82428:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
   8242c:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
   82430:	07ed      	lsls	r5, r5, #31
   82432:	d0fb      	beq.n	8242c <UDD_Send+0x18>
   82434:	f241 2380 	movw	r3, #4736	; 0x1280
   82438:	2a00      	cmp	r2, #0
   8243a:	f2c2 0307 	movt	r3, #8199	; 0x2007
   8243e:	d003      	beq.n	82448 <UDD_Send+0x34>
   82440:	2500      	movs	r5, #0
   82442:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
   82446:	e008      	b.n	8245a <UDD_Send+0x46>
   82448:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
   8244c:	4435      	add	r5, r6
   8244e:	2d41      	cmp	r5, #65	; 0x41
   82450:	bf24      	itt	cs
   82452:	f853 3022 	ldrcs.w	r3, [r3, r2, lsl #2]
   82456:	f1c3 0640 	rsbcs	r6, r3, #64	; 0x40
   8245a:	f241 2880 	movw	r8, #4736	; 0x1280
   8245e:	2e00      	cmp	r6, #0
   82460:	f2c2 0807 	movt	r8, #8199	; 0x2007
   82464:	f858 3022 	ldr.w	r3, [r8, r2, lsl #2]
   82468:	d00c      	beq.n	82484 <UDD_Send+0x70>
   8246a:	eb03 33c2 	add.w	r3, r3, r2, lsl #15
   8246e:	4634      	mov	r4, r6
   82470:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
   82474:	f503 13c0 	add.w	r3, r3, #1572864	; 0x180000
   82478:	f811 5b01 	ldrb.w	r5, [r1], #1
   8247c:	3c01      	subs	r4, #1
   8247e:	f803 5b01 	strb.w	r5, [r3], #1
   82482:	d1f9      	bne.n	82478 <UDD_Send+0x64>
   82484:	f858 1022 	ldr.w	r1, [r8, r2, lsl #2]
   82488:	2a00      	cmp	r2, #0
   8248a:	4431      	add	r1, r6
   8248c:	f848 1022 	str.w	r1, [r8, r2, lsl #2]
   82490:	d009      	beq.n	824a6 <UDD_Send+0x92>
   82492:	2101      	movs	r1, #1
   82494:	f840 1022 	str.w	r1, [r0, r2, lsl #2]
   82498:	eb00 0082 	add.w	r0, r0, r2, lsl #2
   8249c:	f44f 4180 	mov.w	r1, #16384	; 0x4000
   824a0:	f8c0 10c0 	str.w	r1, [r0, #192]	; 0xc0
   824a4:	e00c      	b.n	824c0 <UDD_Send+0xac>
   824a6:	f858 1022 	ldr.w	r1, [r8, r2, lsl #2]
   824aa:	2940      	cmp	r1, #64	; 0x40
   824ac:	d108      	bne.n	824c0 <UDD_Send+0xac>
   824ae:	2101      	movs	r1, #1
   824b0:	4b05      	ldr	r3, [pc, #20]	; (824c8 <UDD_Send+0xb4>)
   824b2:	2201      	movs	r2, #1
   824b4:	6001      	str	r1, [r0, #0]
   824b6:	2101      	movs	r1, #1
   824b8:	4798      	blx	r3
   824ba:	2000      	movs	r0, #0
   824bc:	f8c8 0000 	str.w	r0, [r8]
   824c0:	4630      	mov	r0, r6
   824c2:	f85d 8b04 	ldr.w	r8, [sp], #4
   824c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
   824c8:	000808c5 	.word	0x000808c5

000824cc <UDD_Send8>:
   824cc:	f241 2c80 	movw	ip, #4736	; 0x1280
   824d0:	2200      	movs	r2, #0
   824d2:	f2c2 0c07 	movt	ip, #8199	; 0x2007
   824d6:	f2c2 0218 	movt	r2, #8216	; 0x2018
   824da:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
   824de:	eb03 33c0 	add.w	r3, r3, r0, lsl #15
   824e2:	5499      	strb	r1, [r3, r2]
   824e4:	f85c 1020 	ldr.w	r1, [ip, r0, lsl #2]
   824e8:	3101      	adds	r1, #1
   824ea:	f84c 1020 	str.w	r1, [ip, r0, lsl #2]
   824ee:	4770      	bx	lr

000824f0 <UDD_Recv8>:
   824f0:	f241 22a8 	movw	r2, #4776	; 0x12a8
   824f4:	2300      	movs	r3, #0
   824f6:	f2c2 0207 	movt	r2, #8199	; 0x2007
   824fa:	f2c2 0318 	movt	r3, #8216	; 0x2018
   824fe:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
   82502:	eb01 31c0 	add.w	r1, r1, r0, lsl #15
   82506:	5cc9      	ldrb	r1, [r1, r3]
   82508:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
   8250c:	3301      	adds	r3, #1
   8250e:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
   82512:	4608      	mov	r0, r1
   82514:	4770      	bx	lr

00082516 <UDD_Recv>:
   82516:	b5d0      	push	{r4, r6, r7, lr}
   82518:	af02      	add	r7, sp, #8
   8251a:	f241 2ca8 	movw	ip, #4776	; 0x12a8
   8251e:	2a00      	cmp	r2, #0
   82520:	f2c2 0c07 	movt	ip, #8199	; 0x2007
   82524:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
   82528:	d00c      	beq.n	82544 <UDD_Recv+0x2e>
   8252a:	eb03 33c0 	add.w	r3, r3, r0, lsl #15
   8252e:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
   82532:	f503 1ec0 	add.w	lr, r3, #1572864	; 0x180000
   82536:	4613      	mov	r3, r2
   82538:	f81e 4b01 	ldrb.w	r4, [lr], #1
   8253c:	3b01      	subs	r3, #1
   8253e:	f801 4b01 	strb.w	r4, [r1], #1
   82542:	d1f9      	bne.n	82538 <UDD_Recv+0x22>
   82544:	f85c 1020 	ldr.w	r1, [ip, r0, lsl #2]
   82548:	4411      	add	r1, r2
   8254a:	f84c 1020 	str.w	r1, [ip, r0, lsl #2]
   8254e:	bdd0      	pop	{r4, r6, r7, pc}

00082550 <UDD_Stall>:
   82550:	b5d0      	push	{r4, r6, r7, lr}
   82552:	af02      	add	r7, sp, #8
   82554:	f24c 041c 	movw	r4, #49180	; 0xc01c
   82558:	2001      	movs	r0, #1
   8255a:	4b0a      	ldr	r3, [pc, #40]	; (82584 <UDD_Stall+0x34>)
   8255c:	2101      	movs	r1, #1
   8255e:	2201      	movs	r2, #1
   82560:	f2c4 040a 	movt	r4, #16394	; 0x400a
   82564:	6020      	str	r0, [r4, #0]
   82566:	4620      	mov	r0, r4
   82568:	4798      	blx	r3
   8256a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
   8256e:	4b06      	ldr	r3, [pc, #24]	; (82588 <UDD_Stall+0x38>)
   82570:	f44f 2100 	mov.w	r1, #524288	; 0x80000
   82574:	2201      	movs	r2, #1
   82576:	f8c4 01d4 	str.w	r0, [r4, #468]	; 0x1d4
   8257a:	f504 70ea 	add.w	r0, r4, #468	; 0x1d4
   8257e:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
   82582:	4718      	bx	r3
   82584:	000808c5 	.word	0x000808c5
   82588:	000808c5 	.word	0x000808c5

0008258c <UDD_FifoByteCount>:
   8258c:	f24c 1130 	movw	r1, #49456	; 0xc130
   82590:	f2c4 010a 	movt	r1, #16394	; 0x400a
   82594:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
   82598:	f3c0 500a 	ubfx	r0, r0, #20, #11
   8259c:	4770      	bx	lr

0008259e <UDD_ReleaseRX>:
   8259e:	f24c 1160 	movw	r1, #49504	; 0xc160
   825a2:	2202      	movs	r2, #2
   825a4:	f2c4 010a 	movt	r1, #16394	; 0x400a
   825a8:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   825ac:	eb01 0180 	add.w	r1, r1, r0, lsl #2
   825b0:	f44f 4280 	mov.w	r2, #16384	; 0x4000
   825b4:	f8c1 20c0 	str.w	r2, [r1, #192]	; 0xc0
   825b8:	f241 21a8 	movw	r1, #4776	; 0x12a8
   825bc:	2200      	movs	r2, #0
   825be:	f2c2 0107 	movt	r1, #8199	; 0x2007
   825c2:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   825c6:	4770      	bx	lr

000825c8 <UDD_ReleaseTX>:
   825c8:	f24c 1160 	movw	r1, #49504	; 0xc160
   825cc:	2201      	movs	r2, #1
   825ce:	f2c4 010a 	movt	r1, #16394	; 0x400a
   825d2:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   825d6:	eb01 0180 	add.w	r1, r1, r0, lsl #2
   825da:	f44f 4280 	mov.w	r2, #16384	; 0x4000
   825de:	f8c1 20c0 	str.w	r2, [r1, #192]	; 0xc0
   825e2:	f241 2180 	movw	r1, #4736	; 0x1280
   825e6:	2200      	movs	r2, #0
   825e8:	f2c2 0107 	movt	r1, #8199	; 0x2007
   825ec:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   825f0:	4770      	bx	lr
	...

000825f4 <UDD_SetAddress>:
   825f4:	b5f0      	push	{r4, r5, r6, r7, lr}
   825f6:	af03      	add	r7, sp, #12
   825f8:	f84d bd04 	str.w	fp, [sp, #-4]!
   825fc:	f24c 0400 	movw	r4, #49152	; 0xc000
   82600:	4b10      	ldr	r3, [pc, #64]	; (82644 <UDD_SetAddress+0x50>)
   82602:	4605      	mov	r5, r0
   82604:	2200      	movs	r2, #0
   82606:	f2c4 040a 	movt	r4, #16394	; 0x400a
   8260a:	6826      	ldr	r6, [r4, #0]
   8260c:	4620      	mov	r0, r4
   8260e:	4631      	mov	r1, r6
   82610:	4798      	blx	r3
   82612:	f365 0606 	bfi	r6, r5, #0, #7
   82616:	4b0c      	ldr	r3, [pc, #48]	; (82648 <UDD_SetAddress+0x54>)
   82618:	4620      	mov	r0, r4
   8261a:	2201      	movs	r2, #1
   8261c:	4631      	mov	r1, r6
   8261e:	6026      	str	r6, [r4, #0]
   82620:	4798      	blx	r3
   82622:	6825      	ldr	r5, [r4, #0]
   82624:	4b09      	ldr	r3, [pc, #36]	; (8264c <UDD_SetAddress+0x58>)
   82626:	4620      	mov	r0, r4
   82628:	2200      	movs	r2, #0
   8262a:	4629      	mov	r1, r5
   8262c:	4798      	blx	r3
   8262e:	f045 0180 	orr.w	r1, r5, #128	; 0x80
   82632:	4b07      	ldr	r3, [pc, #28]	; (82650 <UDD_SetAddress+0x5c>)
   82634:	4620      	mov	r0, r4
   82636:	2201      	movs	r2, #1
   82638:	6021      	str	r1, [r4, #0]
   8263a:	f85d bb04 	ldr.w	fp, [sp], #4
   8263e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
   82642:	4718      	bx	r3
   82644:	000808c5 	.word	0x000808c5
   82648:	000808c5 	.word	0x000808c5
   8264c:	000808c5 	.word	0x000808c5
   82650:	000808c5 	.word	0x000808c5

00082654 <WDT_Disable>:
   82654:	f44f 4100 	mov.w	r1, #32768	; 0x8000
   82658:	4b03      	ldr	r3, [pc, #12]	; (82668 <WDT_Disable+0x14>)
   8265a:	2201      	movs	r2, #1
   8265c:	f840 1f04 	str.w	r1, [r0, #4]!
   82660:	f44f 4100 	mov.w	r1, #32768	; 0x8000
   82664:	4718      	bx	r3
   82666:	bf00      	nop
   82668:	000808c5 	.word	0x000808c5

0008266c <__libc_init_array>:
   8266c:	b570      	push	{r4, r5, r6, lr}
   8266e:	4e0f      	ldr	r6, [pc, #60]	; (826ac <__libc_init_array+0x40>)
   82670:	4d0f      	ldr	r5, [pc, #60]	; (826b0 <__libc_init_array+0x44>)
   82672:	1b76      	subs	r6, r6, r5
   82674:	10b6      	asrs	r6, r6, #2
   82676:	d007      	beq.n	82688 <__libc_init_array+0x1c>
   82678:	3d04      	subs	r5, #4
   8267a:	2400      	movs	r4, #0
   8267c:	3401      	adds	r4, #1
   8267e:	f855 3f04 	ldr.w	r3, [r5, #4]!
   82682:	4798      	blx	r3
   82684:	42a6      	cmp	r6, r4
   82686:	d1f9      	bne.n	8267c <__libc_init_array+0x10>
   82688:	4e0a      	ldr	r6, [pc, #40]	; (826b4 <__libc_init_array+0x48>)
   8268a:	4d0b      	ldr	r5, [pc, #44]	; (826b8 <__libc_init_array+0x4c>)
   8268c:	f003 fda2 	bl	861d4 <_init>
   82690:	1b76      	subs	r6, r6, r5
   82692:	10b6      	asrs	r6, r6, #2
   82694:	d008      	beq.n	826a8 <__libc_init_array+0x3c>
   82696:	3d04      	subs	r5, #4
   82698:	2400      	movs	r4, #0
   8269a:	3401      	adds	r4, #1
   8269c:	f855 3f04 	ldr.w	r3, [r5, #4]!
   826a0:	4798      	blx	r3
   826a2:	42a6      	cmp	r6, r4
   826a4:	d1f9      	bne.n	8269a <__libc_init_array+0x2e>
   826a6:	bd70      	pop	{r4, r5, r6, pc}
   826a8:	bd70      	pop	{r4, r5, r6, pc}
   826aa:	bf00      	nop
   826ac:	000861e0 	.word	0x000861e0
   826b0:	000861e0 	.word	0x000861e0
   826b4:	000861f4 	.word	0x000861f4
   826b8:	000861e0 	.word	0x000861e0

000826bc <iprintf>:
   826bc:	b40f      	push	{r0, r1, r2, r3}
   826be:	b510      	push	{r4, lr}
   826c0:	4b07      	ldr	r3, [pc, #28]	; (826e0 <iprintf+0x24>)
   826c2:	b082      	sub	sp, #8
   826c4:	ac04      	add	r4, sp, #16
   826c6:	f854 2b04 	ldr.w	r2, [r4], #4
   826ca:	6818      	ldr	r0, [r3, #0]
   826cc:	4623      	mov	r3, r4
   826ce:	6881      	ldr	r1, [r0, #8]
   826d0:	9401      	str	r4, [sp, #4]
   826d2:	f000 f8c5 	bl	82860 <_vfiprintf_r>
   826d6:	b002      	add	sp, #8
   826d8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   826dc:	b004      	add	sp, #16
   826de:	4770      	bx	lr
   826e0:	20070498 	.word	0x20070498

000826e4 <memset>:
   826e4:	b4f0      	push	{r4, r5, r6, r7}
   826e6:	0784      	lsls	r4, r0, #30
   826e8:	d043      	beq.n	82772 <memset+0x8e>
   826ea:	1e54      	subs	r4, r2, #1
   826ec:	2a00      	cmp	r2, #0
   826ee:	d03e      	beq.n	8276e <memset+0x8a>
   826f0:	b2cd      	uxtb	r5, r1
   826f2:	4603      	mov	r3, r0
   826f4:	e003      	b.n	826fe <memset+0x1a>
   826f6:	1e62      	subs	r2, r4, #1
   826f8:	2c00      	cmp	r4, #0
   826fa:	d038      	beq.n	8276e <memset+0x8a>
   826fc:	4614      	mov	r4, r2
   826fe:	f803 5b01 	strb.w	r5, [r3], #1
   82702:	079a      	lsls	r2, r3, #30
   82704:	d1f7      	bne.n	826f6 <memset+0x12>
   82706:	2c03      	cmp	r4, #3
   82708:	d92a      	bls.n	82760 <memset+0x7c>
   8270a:	b2cd      	uxtb	r5, r1
   8270c:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
   82710:	2c0f      	cmp	r4, #15
   82712:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
   82716:	d915      	bls.n	82744 <memset+0x60>
   82718:	f1a4 0710 	sub.w	r7, r4, #16
   8271c:	093f      	lsrs	r7, r7, #4
   8271e:	f103 0610 	add.w	r6, r3, #16
   82722:	eb06 1607 	add.w	r6, r6, r7, lsl #4
   82726:	461a      	mov	r2, r3
   82728:	6015      	str	r5, [r2, #0]
   8272a:	6055      	str	r5, [r2, #4]
   8272c:	6095      	str	r5, [r2, #8]
   8272e:	60d5      	str	r5, [r2, #12]
   82730:	3210      	adds	r2, #16
   82732:	42b2      	cmp	r2, r6
   82734:	d1f8      	bne.n	82728 <memset+0x44>
   82736:	f004 040f 	and.w	r4, r4, #15
   8273a:	3701      	adds	r7, #1
   8273c:	2c03      	cmp	r4, #3
   8273e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
   82742:	d90d      	bls.n	82760 <memset+0x7c>
   82744:	461e      	mov	r6, r3
   82746:	4622      	mov	r2, r4
   82748:	3a04      	subs	r2, #4
   8274a:	2a03      	cmp	r2, #3
   8274c:	f846 5b04 	str.w	r5, [r6], #4
   82750:	d8fa      	bhi.n	82748 <memset+0x64>
   82752:	1f22      	subs	r2, r4, #4
   82754:	f022 0203 	bic.w	r2, r2, #3
   82758:	3204      	adds	r2, #4
   8275a:	4413      	add	r3, r2
   8275c:	f004 0403 	and.w	r4, r4, #3
   82760:	b12c      	cbz	r4, 8276e <memset+0x8a>
   82762:	b2c9      	uxtb	r1, r1
   82764:	441c      	add	r4, r3
   82766:	f803 1b01 	strb.w	r1, [r3], #1
   8276a:	42a3      	cmp	r3, r4
   8276c:	d1fb      	bne.n	82766 <memset+0x82>
   8276e:	bcf0      	pop	{r4, r5, r6, r7}
   82770:	4770      	bx	lr
   82772:	4614      	mov	r4, r2
   82774:	4603      	mov	r3, r0
   82776:	e7c6      	b.n	82706 <memset+0x22>

00082778 <strlen>:
   82778:	f020 0103 	bic.w	r1, r0, #3
   8277c:	f010 0003 	ands.w	r0, r0, #3
   82780:	f1c0 0000 	rsb	r0, r0, #0
   82784:	f851 3b04 	ldr.w	r3, [r1], #4
   82788:	f100 0c04 	add.w	ip, r0, #4
   8278c:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
   82790:	f06f 0200 	mvn.w	r2, #0
   82794:	bf1c      	itt	ne
   82796:	fa22 f20c 	lsrne.w	r2, r2, ip
   8279a:	4313      	orrne	r3, r2
   8279c:	f04f 0c01 	mov.w	ip, #1
   827a0:	ea4c 2c0c 	orr.w	ip, ip, ip, lsl #8
   827a4:	ea4c 4c0c 	orr.w	ip, ip, ip, lsl #16
   827a8:	eba3 020c 	sub.w	r2, r3, ip
   827ac:	ea22 0203 	bic.w	r2, r2, r3
   827b0:	ea12 12cc 	ands.w	r2, r2, ip, lsl #7
   827b4:	bf04      	itt	eq
   827b6:	f851 3b04 	ldreq.w	r3, [r1], #4
   827ba:	3004      	addeq	r0, #4
   827bc:	d0f4      	beq.n	827a8 <strlen+0x30>
   827be:	f013 0fff 	tst.w	r3, #255	; 0xff
   827c2:	bf1f      	itttt	ne
   827c4:	3001      	addne	r0, #1
   827c6:	f413 4f7f 	tstne.w	r3, #65280	; 0xff00
   827ca:	3001      	addne	r0, #1
   827cc:	f413 0f7f 	tstne.w	r3, #16711680	; 0xff0000
   827d0:	bf18      	it	ne
   827d2:	3001      	addne	r0, #1
   827d4:	4770      	bx	lr
   827d6:	bf00      	nop

000827d8 <kill>:
   827d8:	4b02      	ldr	r3, [pc, #8]	; (827e4 <kill+0xc>)
   827da:	460a      	mov	r2, r1
   827dc:	4601      	mov	r1, r0
   827de:	6818      	ldr	r0, [r3, #0]
   827e0:	f002 b9c8 	b.w	84b74 <_kill_r>
   827e4:	20070498 	.word	0x20070498

000827e8 <__sprint_r.part.0>:
   827e8:	6e4b      	ldr	r3, [r1, #100]	; 0x64
   827ea:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
   827ee:	049c      	lsls	r4, r3, #18
   827f0:	460e      	mov	r6, r1
   827f2:	4680      	mov	r8, r0
   827f4:	4691      	mov	r9, r2
   827f6:	d52a      	bpl.n	8284e <__sprint_r.part.0+0x66>
   827f8:	6893      	ldr	r3, [r2, #8]
   827fa:	6812      	ldr	r2, [r2, #0]
   827fc:	f102 0a08 	add.w	sl, r2, #8
   82800:	b31b      	cbz	r3, 8284a <__sprint_r.part.0+0x62>
   82802:	e91a 00a0 	ldmdb	sl, {r5, r7}
   82806:	08bf      	lsrs	r7, r7, #2
   82808:	d017      	beq.n	8283a <__sprint_r.part.0+0x52>
   8280a:	3d04      	subs	r5, #4
   8280c:	2400      	movs	r4, #0
   8280e:	e001      	b.n	82814 <__sprint_r.part.0+0x2c>
   82810:	42a7      	cmp	r7, r4
   82812:	d010      	beq.n	82836 <__sprint_r.part.0+0x4e>
   82814:	4640      	mov	r0, r8
   82816:	f855 1f04 	ldr.w	r1, [r5, #4]!
   8281a:	4632      	mov	r2, r6
   8281c:	f001 f850 	bl	838c0 <_fputwc_r>
   82820:	1c43      	adds	r3, r0, #1
   82822:	f104 0401 	add.w	r4, r4, #1
   82826:	d1f3      	bne.n	82810 <__sprint_r.part.0+0x28>
   82828:	2300      	movs	r3, #0
   8282a:	f8c9 3008 	str.w	r3, [r9, #8]
   8282e:	f8c9 3004 	str.w	r3, [r9, #4]
   82832:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
   82836:	f8d9 3008 	ldr.w	r3, [r9, #8]
   8283a:	eba3 0387 	sub.w	r3, r3, r7, lsl #2
   8283e:	f8c9 3008 	str.w	r3, [r9, #8]
   82842:	f10a 0a08 	add.w	sl, sl, #8
   82846:	2b00      	cmp	r3, #0
   82848:	d1db      	bne.n	82802 <__sprint_r.part.0+0x1a>
   8284a:	2000      	movs	r0, #0
   8284c:	e7ec      	b.n	82828 <__sprint_r.part.0+0x40>
   8284e:	f001 f9b1 	bl	83bb4 <__sfvwrite_r>
   82852:	2300      	movs	r3, #0
   82854:	f8c9 3008 	str.w	r3, [r9, #8]
   82858:	f8c9 3004 	str.w	r3, [r9, #4]
   8285c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

00082860 <_vfiprintf_r>:
   82860:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   82864:	b0b1      	sub	sp, #196	; 0xc4
   82866:	461c      	mov	r4, r3
   82868:	9102      	str	r1, [sp, #8]
   8286a:	4690      	mov	r8, r2
   8286c:	9308      	str	r3, [sp, #32]
   8286e:	9006      	str	r0, [sp, #24]
   82870:	b118      	cbz	r0, 8287a <_vfiprintf_r+0x1a>
   82872:	6b83      	ldr	r3, [r0, #56]	; 0x38
   82874:	2b00      	cmp	r3, #0
   82876:	f000 80e8 	beq.w	82a4a <_vfiprintf_r+0x1ea>
   8287a:	9d02      	ldr	r5, [sp, #8]
   8287c:	89ab      	ldrh	r3, [r5, #12]
   8287e:	b29a      	uxth	r2, r3
   82880:	0490      	lsls	r0, r2, #18
   82882:	d407      	bmi.n	82894 <_vfiprintf_r+0x34>
   82884:	6e6a      	ldr	r2, [r5, #100]	; 0x64
   82886:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
   8288a:	f422 5100 	bic.w	r1, r2, #8192	; 0x2000
   8288e:	81ab      	strh	r3, [r5, #12]
   82890:	b29a      	uxth	r2, r3
   82892:	6669      	str	r1, [r5, #100]	; 0x64
   82894:	0711      	lsls	r1, r2, #28
   82896:	f140 80b7 	bpl.w	82a08 <_vfiprintf_r+0x1a8>
   8289a:	f8dd b008 	ldr.w	fp, [sp, #8]
   8289e:	f8db 3010 	ldr.w	r3, [fp, #16]
   828a2:	2b00      	cmp	r3, #0
   828a4:	f000 80b0 	beq.w	82a08 <_vfiprintf_r+0x1a8>
   828a8:	f002 021a 	and.w	r2, r2, #26
   828ac:	2a0a      	cmp	r2, #10
   828ae:	f000 80b7 	beq.w	82a20 <_vfiprintf_r+0x1c0>
   828b2:	2300      	movs	r3, #0
   828b4:	f10d 0980 	add.w	r9, sp, #128	; 0x80
   828b8:	930a      	str	r3, [sp, #40]	; 0x28
   828ba:	9315      	str	r3, [sp, #84]	; 0x54
   828bc:	9314      	str	r3, [sp, #80]	; 0x50
   828be:	9309      	str	r3, [sp, #36]	; 0x24
   828c0:	f8cd 904c 	str.w	r9, [sp, #76]	; 0x4c
   828c4:	464e      	mov	r6, r9
   828c6:	f898 3000 	ldrb.w	r3, [r8]
   828ca:	2b00      	cmp	r3, #0
   828cc:	f000 84c8 	beq.w	83260 <_vfiprintf_r+0xa00>
   828d0:	2b25      	cmp	r3, #37	; 0x25
   828d2:	f000 84c5 	beq.w	83260 <_vfiprintf_r+0xa00>
   828d6:	f108 0201 	add.w	r2, r8, #1
   828da:	e001      	b.n	828e0 <_vfiprintf_r+0x80>
   828dc:	2b25      	cmp	r3, #37	; 0x25
   828de:	d004      	beq.n	828ea <_vfiprintf_r+0x8a>
   828e0:	7813      	ldrb	r3, [r2, #0]
   828e2:	4614      	mov	r4, r2
   828e4:	3201      	adds	r2, #1
   828e6:	2b00      	cmp	r3, #0
   828e8:	d1f8      	bne.n	828dc <_vfiprintf_r+0x7c>
   828ea:	ebc8 0504 	rsb	r5, r8, r4
   828ee:	b195      	cbz	r5, 82916 <_vfiprintf_r+0xb6>
   828f0:	9b14      	ldr	r3, [sp, #80]	; 0x50
   828f2:	9a15      	ldr	r2, [sp, #84]	; 0x54
   828f4:	3301      	adds	r3, #1
   828f6:	442a      	add	r2, r5
   828f8:	2b07      	cmp	r3, #7
   828fa:	f8c6 8000 	str.w	r8, [r6]
   828fe:	6075      	str	r5, [r6, #4]
   82900:	9215      	str	r2, [sp, #84]	; 0x54
   82902:	9314      	str	r3, [sp, #80]	; 0x50
   82904:	dd7b      	ble.n	829fe <_vfiprintf_r+0x19e>
   82906:	2a00      	cmp	r2, #0
   82908:	f040 84d5 	bne.w	832b6 <_vfiprintf_r+0xa56>
   8290c:	9809      	ldr	r0, [sp, #36]	; 0x24
   8290e:	9214      	str	r2, [sp, #80]	; 0x50
   82910:	4428      	add	r0, r5
   82912:	464e      	mov	r6, r9
   82914:	9009      	str	r0, [sp, #36]	; 0x24
   82916:	7823      	ldrb	r3, [r4, #0]
   82918:	2b00      	cmp	r3, #0
   8291a:	f000 83ed 	beq.w	830f8 <_vfiprintf_r+0x898>
   8291e:	2100      	movs	r1, #0
   82920:	f04f 0200 	mov.w	r2, #0
   82924:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
   82928:	7863      	ldrb	r3, [r4, #1]
   8292a:	f88d 2047 	strb.w	r2, [sp, #71]	; 0x47
   8292e:	9104      	str	r1, [sp, #16]
   82930:	468a      	mov	sl, r1
   82932:	f104 0801 	add.w	r8, r4, #1
   82936:	4608      	mov	r0, r1
   82938:	4665      	mov	r5, ip
   8293a:	f108 0801 	add.w	r8, r8, #1
   8293e:	f1a3 0220 	sub.w	r2, r3, #32
   82942:	2a58      	cmp	r2, #88	; 0x58
   82944:	f200 82d9 	bhi.w	82efa <_vfiprintf_r+0x69a>
   82948:	e8df f012 	tbh	[pc, r2, lsl #1]
   8294c:	02d702cb 	.word	0x02d702cb
   82950:	02d202d7 	.word	0x02d202d7
   82954:	02d702d7 	.word	0x02d702d7
   82958:	02d702d7 	.word	0x02d702d7
   8295c:	02d702d7 	.word	0x02d702d7
   82960:	028f0282 	.word	0x028f0282
   82964:	008402d7 	.word	0x008402d7
   82968:	02d70293 	.word	0x02d70293
   8296c:	0196012b 	.word	0x0196012b
   82970:	01960196 	.word	0x01960196
   82974:	01960196 	.word	0x01960196
   82978:	01960196 	.word	0x01960196
   8297c:	01960196 	.word	0x01960196
   82980:	02d702d7 	.word	0x02d702d7
   82984:	02d702d7 	.word	0x02d702d7
   82988:	02d702d7 	.word	0x02d702d7
   8298c:	02d702d7 	.word	0x02d702d7
   82990:	02d702d7 	.word	0x02d702d7
   82994:	02d70130 	.word	0x02d70130
   82998:	02d702d7 	.word	0x02d702d7
   8299c:	02d702d7 	.word	0x02d702d7
   829a0:	02d702d7 	.word	0x02d702d7
   829a4:	02d702d7 	.word	0x02d702d7
   829a8:	017b02d7 	.word	0x017b02d7
   829ac:	02d702d7 	.word	0x02d702d7
   829b0:	02d702d7 	.word	0x02d702d7
   829b4:	01a402d7 	.word	0x01a402d7
   829b8:	02d702d7 	.word	0x02d702d7
   829bc:	02d701bf 	.word	0x02d701bf
   829c0:	02d702d7 	.word	0x02d702d7
   829c4:	02d702d7 	.word	0x02d702d7
   829c8:	02d702d7 	.word	0x02d702d7
   829cc:	02d702d7 	.word	0x02d702d7
   829d0:	01e402d7 	.word	0x01e402d7
   829d4:	02d701fa 	.word	0x02d701fa
   829d8:	02d702d7 	.word	0x02d702d7
   829dc:	01fa0216 	.word	0x01fa0216
   829e0:	02d702d7 	.word	0x02d702d7
   829e4:	02d7021b 	.word	0x02d7021b
   829e8:	00890228 	.word	0x00890228
   829ec:	027d0266 	.word	0x027d0266
   829f0:	023a02d7 	.word	0x023a02d7
   829f4:	011902d7 	.word	0x011902d7
   829f8:	02d702d7 	.word	0x02d702d7
   829fc:	02af      	.short	0x02af
   829fe:	3608      	adds	r6, #8
   82a00:	9809      	ldr	r0, [sp, #36]	; 0x24
   82a02:	4428      	add	r0, r5
   82a04:	9009      	str	r0, [sp, #36]	; 0x24
   82a06:	e786      	b.n	82916 <_vfiprintf_r+0xb6>
   82a08:	9806      	ldr	r0, [sp, #24]
   82a0a:	9902      	ldr	r1, [sp, #8]
   82a0c:	f000 fd90 	bl	83530 <__swsetup_r>
   82a10:	b9b0      	cbnz	r0, 82a40 <_vfiprintf_r+0x1e0>
   82a12:	9d02      	ldr	r5, [sp, #8]
   82a14:	89aa      	ldrh	r2, [r5, #12]
   82a16:	f002 021a 	and.w	r2, r2, #26
   82a1a:	2a0a      	cmp	r2, #10
   82a1c:	f47f af49 	bne.w	828b2 <_vfiprintf_r+0x52>
   82a20:	f8dd b008 	ldr.w	fp, [sp, #8]
   82a24:	f9bb 300e 	ldrsh.w	r3, [fp, #14]
   82a28:	2b00      	cmp	r3, #0
   82a2a:	f6ff af42 	blt.w	828b2 <_vfiprintf_r+0x52>
   82a2e:	9806      	ldr	r0, [sp, #24]
   82a30:	4659      	mov	r1, fp
   82a32:	4642      	mov	r2, r8
   82a34:	4623      	mov	r3, r4
   82a36:	f000 fd3d 	bl	834b4 <__sbprintf>
   82a3a:	b031      	add	sp, #196	; 0xc4
   82a3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   82a40:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   82a44:	b031      	add	sp, #196	; 0xc4
   82a46:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   82a4a:	f000 fea3 	bl	83794 <__sinit>
   82a4e:	e714      	b.n	8287a <_vfiprintf_r+0x1a>
   82a50:	4240      	negs	r0, r0
   82a52:	9308      	str	r3, [sp, #32]
   82a54:	f04a 0a04 	orr.w	sl, sl, #4
   82a58:	f898 3000 	ldrb.w	r3, [r8]
   82a5c:	e76d      	b.n	8293a <_vfiprintf_r+0xda>
   82a5e:	f01a 0320 	ands.w	r3, sl, #32
   82a62:	9004      	str	r0, [sp, #16]
   82a64:	46ac      	mov	ip, r5
   82a66:	f000 80f4 	beq.w	82c52 <_vfiprintf_r+0x3f2>
   82a6a:	f8dd b020 	ldr.w	fp, [sp, #32]
   82a6e:	f10b 0307 	add.w	r3, fp, #7
   82a72:	f023 0307 	bic.w	r3, r3, #7
   82a76:	f103 0408 	add.w	r4, r3, #8
   82a7a:	9408      	str	r4, [sp, #32]
   82a7c:	e9d3 4500 	ldrd	r4, r5, [r3]
   82a80:	2300      	movs	r3, #0
   82a82:	f04f 0000 	mov.w	r0, #0
   82a86:	2100      	movs	r1, #0
   82a88:	f88d 0047 	strb.w	r0, [sp, #71]	; 0x47
   82a8c:	f8cd c014 	str.w	ip, [sp, #20]
   82a90:	9107      	str	r1, [sp, #28]
   82a92:	f1bc 0f00 	cmp.w	ip, #0
   82a96:	bfa8      	it	ge
   82a98:	f02a 0a80 	bicge.w	sl, sl, #128	; 0x80
   82a9c:	ea54 0205 	orrs.w	r2, r4, r5
   82aa0:	f040 80ad 	bne.w	82bfe <_vfiprintf_r+0x39e>
   82aa4:	f1bc 0f00 	cmp.w	ip, #0
   82aa8:	f040 80a9 	bne.w	82bfe <_vfiprintf_r+0x39e>
   82aac:	2b00      	cmp	r3, #0
   82aae:	f040 83c0 	bne.w	83232 <_vfiprintf_r+0x9d2>
   82ab2:	f01a 0f01 	tst.w	sl, #1
   82ab6:	f000 83bc 	beq.w	83232 <_vfiprintf_r+0x9d2>
   82aba:	2330      	movs	r3, #48	; 0x30
   82abc:	af30      	add	r7, sp, #192	; 0xc0
   82abe:	f807 3d41 	strb.w	r3, [r7, #-65]!
   82ac2:	ebc7 0409 	rsb	r4, r7, r9
   82ac6:	9405      	str	r4, [sp, #20]
   82ac8:	f8dd b014 	ldr.w	fp, [sp, #20]
   82acc:	9c07      	ldr	r4, [sp, #28]
   82ace:	45e3      	cmp	fp, ip
   82ad0:	bfb8      	it	lt
   82ad2:	46e3      	movlt	fp, ip
   82ad4:	f8cd b00c 	str.w	fp, [sp, #12]
   82ad8:	b11c      	cbz	r4, 82ae2 <_vfiprintf_r+0x282>
   82ada:	f10b 0b01 	add.w	fp, fp, #1
   82ade:	f8cd b00c 	str.w	fp, [sp, #12]
   82ae2:	f01a 0502 	ands.w	r5, sl, #2
   82ae6:	9507      	str	r5, [sp, #28]
   82ae8:	d005      	beq.n	82af6 <_vfiprintf_r+0x296>
   82aea:	f8dd b00c 	ldr.w	fp, [sp, #12]
   82aee:	f10b 0b02 	add.w	fp, fp, #2
   82af2:	f8cd b00c 	str.w	fp, [sp, #12]
   82af6:	f01a 0384 	ands.w	r3, sl, #132	; 0x84
   82afa:	930b      	str	r3, [sp, #44]	; 0x2c
   82afc:	f040 821b 	bne.w	82f36 <_vfiprintf_r+0x6d6>
   82b00:	9d04      	ldr	r5, [sp, #16]
   82b02:	f8dd b00c 	ldr.w	fp, [sp, #12]
   82b06:	ebcb 0405 	rsb	r4, fp, r5
   82b0a:	2c00      	cmp	r4, #0
   82b0c:	f340 8213 	ble.w	82f36 <_vfiprintf_r+0x6d6>
   82b10:	2c10      	cmp	r4, #16
   82b12:	f340 8489 	ble.w	83428 <_vfiprintf_r+0xbc8>
   82b16:	4dbe      	ldr	r5, [pc, #760]	; (82e10 <_vfiprintf_r+0x5b0>)
   82b18:	9a15      	ldr	r2, [sp, #84]	; 0x54
   82b1a:	462b      	mov	r3, r5
   82b1c:	9814      	ldr	r0, [sp, #80]	; 0x50
   82b1e:	4625      	mov	r5, r4
   82b20:	f04f 0b10 	mov.w	fp, #16
   82b24:	4664      	mov	r4, ip
   82b26:	46b4      	mov	ip, r6
   82b28:	461e      	mov	r6, r3
   82b2a:	e006      	b.n	82b3a <_vfiprintf_r+0x2da>
   82b2c:	1c83      	adds	r3, r0, #2
   82b2e:	f10c 0c08 	add.w	ip, ip, #8
   82b32:	4608      	mov	r0, r1
   82b34:	3d10      	subs	r5, #16
   82b36:	2d10      	cmp	r5, #16
   82b38:	dd11      	ble.n	82b5e <_vfiprintf_r+0x2fe>
   82b3a:	1c41      	adds	r1, r0, #1
   82b3c:	3210      	adds	r2, #16
   82b3e:	2907      	cmp	r1, #7
   82b40:	9215      	str	r2, [sp, #84]	; 0x54
   82b42:	e88c 0840 	stmia.w	ip, {r6, fp}
   82b46:	9114      	str	r1, [sp, #80]	; 0x50
   82b48:	ddf0      	ble.n	82b2c <_vfiprintf_r+0x2cc>
   82b4a:	2a00      	cmp	r2, #0
   82b4c:	f040 81e6 	bne.w	82f1c <_vfiprintf_r+0x6bc>
   82b50:	3d10      	subs	r5, #16
   82b52:	2d10      	cmp	r5, #16
   82b54:	f04f 0301 	mov.w	r3, #1
   82b58:	4610      	mov	r0, r2
   82b5a:	46cc      	mov	ip, r9
   82b5c:	dced      	bgt.n	82b3a <_vfiprintf_r+0x2da>
   82b5e:	4631      	mov	r1, r6
   82b60:	4666      	mov	r6, ip
   82b62:	46a4      	mov	ip, r4
   82b64:	462c      	mov	r4, r5
   82b66:	460d      	mov	r5, r1
   82b68:	4422      	add	r2, r4
   82b6a:	2b07      	cmp	r3, #7
   82b6c:	9215      	str	r2, [sp, #84]	; 0x54
   82b6e:	6035      	str	r5, [r6, #0]
   82b70:	6074      	str	r4, [r6, #4]
   82b72:	9314      	str	r3, [sp, #80]	; 0x50
   82b74:	f300 836d 	bgt.w	83252 <_vfiprintf_r+0x9f2>
   82b78:	3608      	adds	r6, #8
   82b7a:	1c59      	adds	r1, r3, #1
   82b7c:	e1de      	b.n	82f3c <_vfiprintf_r+0x6dc>
   82b7e:	f01a 0f20 	tst.w	sl, #32
   82b82:	9004      	str	r0, [sp, #16]
   82b84:	46ac      	mov	ip, r5
   82b86:	f000 808d 	beq.w	82ca4 <_vfiprintf_r+0x444>
   82b8a:	9d08      	ldr	r5, [sp, #32]
   82b8c:	1deb      	adds	r3, r5, #7
   82b8e:	f023 0307 	bic.w	r3, r3, #7
   82b92:	f103 0b08 	add.w	fp, r3, #8
   82b96:	e9d3 4500 	ldrd	r4, r5, [r3]
   82b9a:	f8cd b020 	str.w	fp, [sp, #32]
   82b9e:	2301      	movs	r3, #1
   82ba0:	e76f      	b.n	82a82 <_vfiprintf_r+0x222>
   82ba2:	f04a 0a80 	orr.w	sl, sl, #128	; 0x80
   82ba6:	f898 3000 	ldrb.w	r3, [r8]
   82baa:	e6c6      	b.n	8293a <_vfiprintf_r+0xda>
   82bac:	f04a 0a10 	orr.w	sl, sl, #16
   82bb0:	f01a 0f20 	tst.w	sl, #32
   82bb4:	9004      	str	r0, [sp, #16]
   82bb6:	46ac      	mov	ip, r5
   82bb8:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82bbc:	f000 80c8 	beq.w	82d50 <_vfiprintf_r+0x4f0>
   82bc0:	9c08      	ldr	r4, [sp, #32]
   82bc2:	1de1      	adds	r1, r4, #7
   82bc4:	f021 0107 	bic.w	r1, r1, #7
   82bc8:	e9d1 2300 	ldrd	r2, r3, [r1]
   82bcc:	3108      	adds	r1, #8
   82bce:	9108      	str	r1, [sp, #32]
   82bd0:	4614      	mov	r4, r2
   82bd2:	461d      	mov	r5, r3
   82bd4:	2a00      	cmp	r2, #0
   82bd6:	f173 0b00 	sbcs.w	fp, r3, #0
   82bda:	f2c0 83ce 	blt.w	8337a <_vfiprintf_r+0xb1a>
   82bde:	f1bc 0f00 	cmp.w	ip, #0
   82be2:	f89d 0047 	ldrb.w	r0, [sp, #71]	; 0x47
   82be6:	bfa8      	it	ge
   82be8:	f02a 0a80 	bicge.w	sl, sl, #128	; 0x80
   82bec:	ea54 0205 	orrs.w	r2, r4, r5
   82bf0:	9007      	str	r0, [sp, #28]
   82bf2:	f8cd c014 	str.w	ip, [sp, #20]
   82bf6:	f04f 0301 	mov.w	r3, #1
   82bfa:	f43f af53 	beq.w	82aa4 <_vfiprintf_r+0x244>
   82bfe:	2b01      	cmp	r3, #1
   82c00:	f000 8319 	beq.w	83236 <_vfiprintf_r+0x9d6>
   82c04:	2b02      	cmp	r3, #2
   82c06:	f10d 037f 	add.w	r3, sp, #127	; 0x7f
   82c0a:	f040 824c 	bne.w	830a6 <_vfiprintf_r+0x846>
   82c0e:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
   82c12:	4619      	mov	r1, r3
   82c14:	f004 000f 	and.w	r0, r4, #15
   82c18:	0922      	lsrs	r2, r4, #4
   82c1a:	f81b 0000 	ldrb.w	r0, [fp, r0]
   82c1e:	ea42 7205 	orr.w	r2, r2, r5, lsl #28
   82c22:	092b      	lsrs	r3, r5, #4
   82c24:	7008      	strb	r0, [r1, #0]
   82c26:	ea52 0003 	orrs.w	r0, r2, r3
   82c2a:	460f      	mov	r7, r1
   82c2c:	4614      	mov	r4, r2
   82c2e:	461d      	mov	r5, r3
   82c30:	f101 31ff 	add.w	r1, r1, #4294967295	; 0xffffffff
   82c34:	d1ee      	bne.n	82c14 <_vfiprintf_r+0x3b4>
   82c36:	e9cd 230e 	strd	r2, r3, [sp, #56]	; 0x38
   82c3a:	ebc7 0309 	rsb	r3, r7, r9
   82c3e:	9305      	str	r3, [sp, #20]
   82c40:	e742      	b.n	82ac8 <_vfiprintf_r+0x268>
   82c42:	f04a 0a10 	orr.w	sl, sl, #16
   82c46:	f01a 0320 	ands.w	r3, sl, #32
   82c4a:	9004      	str	r0, [sp, #16]
   82c4c:	46ac      	mov	ip, r5
   82c4e:	f47f af0c 	bne.w	82a6a <_vfiprintf_r+0x20a>
   82c52:	f01a 0210 	ands.w	r2, sl, #16
   82c56:	f040 8311 	bne.w	8327c <_vfiprintf_r+0xa1c>
   82c5a:	f01a 0340 	ands.w	r3, sl, #64	; 0x40
   82c5e:	f000 830d 	beq.w	8327c <_vfiprintf_r+0xa1c>
   82c62:	f8dd b020 	ldr.w	fp, [sp, #32]
   82c66:	4613      	mov	r3, r2
   82c68:	f8bb 4000 	ldrh.w	r4, [fp]
   82c6c:	f10b 0b04 	add.w	fp, fp, #4
   82c70:	2500      	movs	r5, #0
   82c72:	f8cd b020 	str.w	fp, [sp, #32]
   82c76:	e704      	b.n	82a82 <_vfiprintf_r+0x222>
   82c78:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
   82c7c:	2000      	movs	r0, #0
   82c7e:	f818 3b01 	ldrb.w	r3, [r8], #1
   82c82:	eb00 0080 	add.w	r0, r0, r0, lsl #2
   82c86:	eb02 0040 	add.w	r0, r2, r0, lsl #1
   82c8a:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
   82c8e:	2a09      	cmp	r2, #9
   82c90:	d9f5      	bls.n	82c7e <_vfiprintf_r+0x41e>
   82c92:	e654      	b.n	8293e <_vfiprintf_r+0xde>
   82c94:	f04a 0a10 	orr.w	sl, sl, #16
   82c98:	f01a 0f20 	tst.w	sl, #32
   82c9c:	9004      	str	r0, [sp, #16]
   82c9e:	46ac      	mov	ip, r5
   82ca0:	f47f af73 	bne.w	82b8a <_vfiprintf_r+0x32a>
   82ca4:	f01a 0f10 	tst.w	sl, #16
   82ca8:	f040 82ef 	bne.w	8328a <_vfiprintf_r+0xa2a>
   82cac:	f01a 0f40 	tst.w	sl, #64	; 0x40
   82cb0:	f000 82eb 	beq.w	8328a <_vfiprintf_r+0xa2a>
   82cb4:	f8dd b020 	ldr.w	fp, [sp, #32]
   82cb8:	2500      	movs	r5, #0
   82cba:	f8bb 4000 	ldrh.w	r4, [fp]
   82cbe:	f10b 0b04 	add.w	fp, fp, #4
   82cc2:	2301      	movs	r3, #1
   82cc4:	f8cd b020 	str.w	fp, [sp, #32]
   82cc8:	e6db      	b.n	82a82 <_vfiprintf_r+0x222>
   82cca:	46ac      	mov	ip, r5
   82ccc:	4d51      	ldr	r5, [pc, #324]	; (82e14 <_vfiprintf_r+0x5b4>)
   82cce:	f01a 0f20 	tst.w	sl, #32
   82cd2:	9004      	str	r0, [sp, #16]
   82cd4:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82cd8:	950a      	str	r5, [sp, #40]	; 0x28
   82cda:	f000 80f0 	beq.w	82ebe <_vfiprintf_r+0x65e>
   82cde:	9d08      	ldr	r5, [sp, #32]
   82ce0:	1dea      	adds	r2, r5, #7
   82ce2:	f022 0207 	bic.w	r2, r2, #7
   82ce6:	f102 0b08 	add.w	fp, r2, #8
   82cea:	f8cd b020 	str.w	fp, [sp, #32]
   82cee:	e9d2 4500 	ldrd	r4, r5, [r2]
   82cf2:	f01a 0f01 	tst.w	sl, #1
   82cf6:	f000 82aa 	beq.w	8324e <_vfiprintf_r+0x9ee>
   82cfa:	ea54 0b05 	orrs.w	fp, r4, r5
   82cfe:	f000 82a6 	beq.w	8324e <_vfiprintf_r+0x9ee>
   82d02:	2230      	movs	r2, #48	; 0x30
   82d04:	f88d 3049 	strb.w	r3, [sp, #73]	; 0x49
   82d08:	f04a 0a02 	orr.w	sl, sl, #2
   82d0c:	f88d 2048 	strb.w	r2, [sp, #72]	; 0x48
   82d10:	2302      	movs	r3, #2
   82d12:	e6b6      	b.n	82a82 <_vfiprintf_r+0x222>
   82d14:	9b08      	ldr	r3, [sp, #32]
   82d16:	f8dd b020 	ldr.w	fp, [sp, #32]
   82d1a:	681b      	ldr	r3, [r3, #0]
   82d1c:	2401      	movs	r4, #1
   82d1e:	f04f 0500 	mov.w	r5, #0
   82d22:	f10b 0b04 	add.w	fp, fp, #4
   82d26:	9004      	str	r0, [sp, #16]
   82d28:	9403      	str	r4, [sp, #12]
   82d2a:	f88d 5047 	strb.w	r5, [sp, #71]	; 0x47
   82d2e:	f88d 3058 	strb.w	r3, [sp, #88]	; 0x58
   82d32:	f8cd b020 	str.w	fp, [sp, #32]
   82d36:	9405      	str	r4, [sp, #20]
   82d38:	af16      	add	r7, sp, #88	; 0x58
   82d3a:	f04f 0c00 	mov.w	ip, #0
   82d3e:	e6d0      	b.n	82ae2 <_vfiprintf_r+0x282>
   82d40:	f01a 0f20 	tst.w	sl, #32
   82d44:	9004      	str	r0, [sp, #16]
   82d46:	46ac      	mov	ip, r5
   82d48:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82d4c:	f47f af38 	bne.w	82bc0 <_vfiprintf_r+0x360>
   82d50:	f01a 0f10 	tst.w	sl, #16
   82d54:	f040 82a7 	bne.w	832a6 <_vfiprintf_r+0xa46>
   82d58:	f01a 0f40 	tst.w	sl, #64	; 0x40
   82d5c:	f000 82a3 	beq.w	832a6 <_vfiprintf_r+0xa46>
   82d60:	f8dd b020 	ldr.w	fp, [sp, #32]
   82d64:	f9bb 4000 	ldrsh.w	r4, [fp]
   82d68:	f10b 0b04 	add.w	fp, fp, #4
   82d6c:	17e5      	asrs	r5, r4, #31
   82d6e:	4622      	mov	r2, r4
   82d70:	462b      	mov	r3, r5
   82d72:	f8cd b020 	str.w	fp, [sp, #32]
   82d76:	e72d      	b.n	82bd4 <_vfiprintf_r+0x374>
   82d78:	f04a 0a40 	orr.w	sl, sl, #64	; 0x40
   82d7c:	f898 3000 	ldrb.w	r3, [r8]
   82d80:	e5db      	b.n	8293a <_vfiprintf_r+0xda>
   82d82:	f898 3000 	ldrb.w	r3, [r8]
   82d86:	4642      	mov	r2, r8
   82d88:	2b6c      	cmp	r3, #108	; 0x6c
   82d8a:	bf03      	ittte	eq
   82d8c:	f108 0801 	addeq.w	r8, r8, #1
   82d90:	f04a 0a20 	orreq.w	sl, sl, #32
   82d94:	7853      	ldrbeq	r3, [r2, #1]
   82d96:	f04a 0a10 	orrne.w	sl, sl, #16
   82d9a:	e5ce      	b.n	8293a <_vfiprintf_r+0xda>
   82d9c:	f01a 0f20 	tst.w	sl, #32
   82da0:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82da4:	f000 82f7 	beq.w	83396 <_vfiprintf_r+0xb36>
   82da8:	9c08      	ldr	r4, [sp, #32]
   82daa:	6821      	ldr	r1, [r4, #0]
   82dac:	9c09      	ldr	r4, [sp, #36]	; 0x24
   82dae:	17e5      	asrs	r5, r4, #31
   82db0:	462b      	mov	r3, r5
   82db2:	9d08      	ldr	r5, [sp, #32]
   82db4:	4622      	mov	r2, r4
   82db6:	3504      	adds	r5, #4
   82db8:	9508      	str	r5, [sp, #32]
   82dba:	e9c1 2300 	strd	r2, r3, [r1]
   82dbe:	e582      	b.n	828c6 <_vfiprintf_r+0x66>
   82dc0:	9c08      	ldr	r4, [sp, #32]
   82dc2:	46ac      	mov	ip, r5
   82dc4:	6827      	ldr	r7, [r4, #0]
   82dc6:	f04f 0500 	mov.w	r5, #0
   82dca:	9004      	str	r0, [sp, #16]
   82dcc:	f88d 5047 	strb.w	r5, [sp, #71]	; 0x47
   82dd0:	3404      	adds	r4, #4
   82dd2:	2f00      	cmp	r7, #0
   82dd4:	f000 8332 	beq.w	8343c <_vfiprintf_r+0xbdc>
   82dd8:	f1bc 0f00 	cmp.w	ip, #0
   82ddc:	4638      	mov	r0, r7
   82dde:	f2c0 8307 	blt.w	833f0 <_vfiprintf_r+0xb90>
   82de2:	4662      	mov	r2, ip
   82de4:	2100      	movs	r1, #0
   82de6:	f8cd c004 	str.w	ip, [sp, #4]
   82dea:	f001 fba7 	bl	8453c <memchr>
   82dee:	f8dd c004 	ldr.w	ip, [sp, #4]
   82df2:	2800      	cmp	r0, #0
   82df4:	f000 833a 	beq.w	8346c <_vfiprintf_r+0xc0c>
   82df8:	1bc0      	subs	r0, r0, r7
   82dfa:	f89d 5047 	ldrb.w	r5, [sp, #71]	; 0x47
   82dfe:	4560      	cmp	r0, ip
   82e00:	bfa8      	it	ge
   82e02:	4660      	movge	r0, ip
   82e04:	9005      	str	r0, [sp, #20]
   82e06:	9408      	str	r4, [sp, #32]
   82e08:	9507      	str	r5, [sp, #28]
   82e0a:	f04f 0c00 	mov.w	ip, #0
   82e0e:	e65b      	b.n	82ac8 <_vfiprintf_r+0x268>
   82e10:	00086184 	.word	0x00086184
   82e14:	00086194 	.word	0x00086194
   82e18:	9b08      	ldr	r3, [sp, #32]
   82e1a:	f8dd b020 	ldr.w	fp, [sp, #32]
   82e1e:	9004      	str	r0, [sp, #16]
   82e20:	48b2      	ldr	r0, [pc, #712]	; (830ec <_vfiprintf_r+0x88c>)
   82e22:	681c      	ldr	r4, [r3, #0]
   82e24:	2230      	movs	r2, #48	; 0x30
   82e26:	2378      	movs	r3, #120	; 0x78
   82e28:	f10b 0b04 	add.w	fp, fp, #4
   82e2c:	46ac      	mov	ip, r5
   82e2e:	f88d 3049 	strb.w	r3, [sp, #73]	; 0x49
   82e32:	f04a 0a02 	orr.w	sl, sl, #2
   82e36:	f8cd b020 	str.w	fp, [sp, #32]
   82e3a:	2500      	movs	r5, #0
   82e3c:	f88d 2048 	strb.w	r2, [sp, #72]	; 0x48
   82e40:	900a      	str	r0, [sp, #40]	; 0x28
   82e42:	2302      	movs	r3, #2
   82e44:	e61d      	b.n	82a82 <_vfiprintf_r+0x222>
   82e46:	f04a 0a20 	orr.w	sl, sl, #32
   82e4a:	f898 3000 	ldrb.w	r3, [r8]
   82e4e:	e574      	b.n	8293a <_vfiprintf_r+0xda>
   82e50:	f8dd b020 	ldr.w	fp, [sp, #32]
   82e54:	f8db 0000 	ldr.w	r0, [fp]
   82e58:	f10b 0304 	add.w	r3, fp, #4
   82e5c:	2800      	cmp	r0, #0
   82e5e:	f6ff adf7 	blt.w	82a50 <_vfiprintf_r+0x1f0>
   82e62:	9308      	str	r3, [sp, #32]
   82e64:	f898 3000 	ldrb.w	r3, [r8]
   82e68:	e567      	b.n	8293a <_vfiprintf_r+0xda>
   82e6a:	f898 3000 	ldrb.w	r3, [r8]
   82e6e:	212b      	movs	r1, #43	; 0x2b
   82e70:	e563      	b.n	8293a <_vfiprintf_r+0xda>
   82e72:	f898 3000 	ldrb.w	r3, [r8]
   82e76:	f108 0401 	add.w	r4, r8, #1
   82e7a:	2b2a      	cmp	r3, #42	; 0x2a
   82e7c:	f000 8305 	beq.w	8348a <_vfiprintf_r+0xc2a>
   82e80:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
   82e84:	2a09      	cmp	r2, #9
   82e86:	bf98      	it	ls
   82e88:	2500      	movls	r5, #0
   82e8a:	f200 82fa 	bhi.w	83482 <_vfiprintf_r+0xc22>
   82e8e:	f814 3b01 	ldrb.w	r3, [r4], #1
   82e92:	eb05 0585 	add.w	r5, r5, r5, lsl #2
   82e96:	eb02 0545 	add.w	r5, r2, r5, lsl #1
   82e9a:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
   82e9e:	2a09      	cmp	r2, #9
   82ea0:	d9f5      	bls.n	82e8e <_vfiprintf_r+0x62e>
   82ea2:	ea45 75e5 	orr.w	r5, r5, r5, asr #31
   82ea6:	46a0      	mov	r8, r4
   82ea8:	e549      	b.n	8293e <_vfiprintf_r+0xde>
   82eaa:	4c90      	ldr	r4, [pc, #576]	; (830ec <_vfiprintf_r+0x88c>)
   82eac:	f01a 0f20 	tst.w	sl, #32
   82eb0:	9004      	str	r0, [sp, #16]
   82eb2:	46ac      	mov	ip, r5
   82eb4:	940a      	str	r4, [sp, #40]	; 0x28
   82eb6:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82eba:	f47f af10 	bne.w	82cde <_vfiprintf_r+0x47e>
   82ebe:	f01a 0f10 	tst.w	sl, #16
   82ec2:	f040 81ea 	bne.w	8329a <_vfiprintf_r+0xa3a>
   82ec6:	f01a 0f40 	tst.w	sl, #64	; 0x40
   82eca:	f000 81e6 	beq.w	8329a <_vfiprintf_r+0xa3a>
   82ece:	f8dd b020 	ldr.w	fp, [sp, #32]
   82ed2:	2500      	movs	r5, #0
   82ed4:	f8bb 4000 	ldrh.w	r4, [fp]
   82ed8:	f10b 0b04 	add.w	fp, fp, #4
   82edc:	f8cd b020 	str.w	fp, [sp, #32]
   82ee0:	e707      	b.n	82cf2 <_vfiprintf_r+0x492>
   82ee2:	f898 3000 	ldrb.w	r3, [r8]
   82ee6:	2900      	cmp	r1, #0
   82ee8:	f47f ad27 	bne.w	8293a <_vfiprintf_r+0xda>
   82eec:	2120      	movs	r1, #32
   82eee:	e524      	b.n	8293a <_vfiprintf_r+0xda>
   82ef0:	f04a 0a01 	orr.w	sl, sl, #1
   82ef4:	f898 3000 	ldrb.w	r3, [r8]
   82ef8:	e51f      	b.n	8293a <_vfiprintf_r+0xda>
   82efa:	9004      	str	r0, [sp, #16]
   82efc:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82f00:	2b00      	cmp	r3, #0
   82f02:	f000 80f9 	beq.w	830f8 <_vfiprintf_r+0x898>
   82f06:	2501      	movs	r5, #1
   82f08:	f04f 0b00 	mov.w	fp, #0
   82f0c:	9503      	str	r5, [sp, #12]
   82f0e:	f88d 3058 	strb.w	r3, [sp, #88]	; 0x58
   82f12:	f88d b047 	strb.w	fp, [sp, #71]	; 0x47
   82f16:	9505      	str	r5, [sp, #20]
   82f18:	af16      	add	r7, sp, #88	; 0x58
   82f1a:	e70e      	b.n	82d3a <_vfiprintf_r+0x4da>
   82f1c:	9806      	ldr	r0, [sp, #24]
   82f1e:	9902      	ldr	r1, [sp, #8]
   82f20:	aa13      	add	r2, sp, #76	; 0x4c
   82f22:	f7ff fc61 	bl	827e8 <__sprint_r.part.0>
   82f26:	2800      	cmp	r0, #0
   82f28:	f040 80ed 	bne.w	83106 <_vfiprintf_r+0x8a6>
   82f2c:	9814      	ldr	r0, [sp, #80]	; 0x50
   82f2e:	9a15      	ldr	r2, [sp, #84]	; 0x54
   82f30:	1c43      	adds	r3, r0, #1
   82f32:	46cc      	mov	ip, r9
   82f34:	e5fe      	b.n	82b34 <_vfiprintf_r+0x2d4>
   82f36:	9b14      	ldr	r3, [sp, #80]	; 0x50
   82f38:	9a15      	ldr	r2, [sp, #84]	; 0x54
   82f3a:	1c59      	adds	r1, r3, #1
   82f3c:	f89d 0047 	ldrb.w	r0, [sp, #71]	; 0x47
   82f40:	b168      	cbz	r0, 82f5e <_vfiprintf_r+0x6fe>
   82f42:	3201      	adds	r2, #1
   82f44:	f10d 0047 	add.w	r0, sp, #71	; 0x47
   82f48:	2301      	movs	r3, #1
   82f4a:	2907      	cmp	r1, #7
   82f4c:	9215      	str	r2, [sp, #84]	; 0x54
   82f4e:	9114      	str	r1, [sp, #80]	; 0x50
   82f50:	e886 0009 	stmia.w	r6, {r0, r3}
   82f54:	f300 8160 	bgt.w	83218 <_vfiprintf_r+0x9b8>
   82f58:	460b      	mov	r3, r1
   82f5a:	3608      	adds	r6, #8
   82f5c:	3101      	adds	r1, #1
   82f5e:	9c07      	ldr	r4, [sp, #28]
   82f60:	b164      	cbz	r4, 82f7c <_vfiprintf_r+0x71c>
   82f62:	3202      	adds	r2, #2
   82f64:	a812      	add	r0, sp, #72	; 0x48
   82f66:	2302      	movs	r3, #2
   82f68:	2907      	cmp	r1, #7
   82f6a:	9215      	str	r2, [sp, #84]	; 0x54
   82f6c:	9114      	str	r1, [sp, #80]	; 0x50
   82f6e:	e886 0009 	stmia.w	r6, {r0, r3}
   82f72:	f300 8157 	bgt.w	83224 <_vfiprintf_r+0x9c4>
   82f76:	460b      	mov	r3, r1
   82f78:	3608      	adds	r6, #8
   82f7a:	3101      	adds	r1, #1
   82f7c:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
   82f7e:	2d80      	cmp	r5, #128	; 0x80
   82f80:	f000 8101 	beq.w	83186 <_vfiprintf_r+0x926>
   82f84:	9d05      	ldr	r5, [sp, #20]
   82f86:	ebc5 040c 	rsb	r4, r5, ip
   82f8a:	2c00      	cmp	r4, #0
   82f8c:	dd2f      	ble.n	82fee <_vfiprintf_r+0x78e>
   82f8e:	2c10      	cmp	r4, #16
   82f90:	4d57      	ldr	r5, [pc, #348]	; (830f0 <_vfiprintf_r+0x890>)
   82f92:	dd22      	ble.n	82fda <_vfiprintf_r+0x77a>
   82f94:	4630      	mov	r0, r6
   82f96:	f04f 0b10 	mov.w	fp, #16
   82f9a:	462e      	mov	r6, r5
   82f9c:	4625      	mov	r5, r4
   82f9e:	9c06      	ldr	r4, [sp, #24]
   82fa0:	e006      	b.n	82fb0 <_vfiprintf_r+0x750>
   82fa2:	f103 0c02 	add.w	ip, r3, #2
   82fa6:	3008      	adds	r0, #8
   82fa8:	460b      	mov	r3, r1
   82faa:	3d10      	subs	r5, #16
   82fac:	2d10      	cmp	r5, #16
   82fae:	dd10      	ble.n	82fd2 <_vfiprintf_r+0x772>
   82fb0:	1c59      	adds	r1, r3, #1
   82fb2:	3210      	adds	r2, #16
   82fb4:	2907      	cmp	r1, #7
   82fb6:	9215      	str	r2, [sp, #84]	; 0x54
   82fb8:	e880 0840 	stmia.w	r0, {r6, fp}
   82fbc:	9114      	str	r1, [sp, #80]	; 0x50
   82fbe:	ddf0      	ble.n	82fa2 <_vfiprintf_r+0x742>
   82fc0:	2a00      	cmp	r2, #0
   82fc2:	d163      	bne.n	8308c <_vfiprintf_r+0x82c>
   82fc4:	3d10      	subs	r5, #16
   82fc6:	2d10      	cmp	r5, #16
   82fc8:	f04f 0c01 	mov.w	ip, #1
   82fcc:	4613      	mov	r3, r2
   82fce:	4648      	mov	r0, r9
   82fd0:	dcee      	bgt.n	82fb0 <_vfiprintf_r+0x750>
   82fd2:	462c      	mov	r4, r5
   82fd4:	4661      	mov	r1, ip
   82fd6:	4635      	mov	r5, r6
   82fd8:	4606      	mov	r6, r0
   82fda:	4422      	add	r2, r4
   82fdc:	2907      	cmp	r1, #7
   82fde:	9215      	str	r2, [sp, #84]	; 0x54
   82fe0:	6035      	str	r5, [r6, #0]
   82fe2:	6074      	str	r4, [r6, #4]
   82fe4:	9114      	str	r1, [sp, #80]	; 0x50
   82fe6:	f300 80c1 	bgt.w	8316c <_vfiprintf_r+0x90c>
   82fea:	3608      	adds	r6, #8
   82fec:	3101      	adds	r1, #1
   82fee:	9d05      	ldr	r5, [sp, #20]
   82ff0:	2907      	cmp	r1, #7
   82ff2:	442a      	add	r2, r5
   82ff4:	9215      	str	r2, [sp, #84]	; 0x54
   82ff6:	6037      	str	r7, [r6, #0]
   82ff8:	6075      	str	r5, [r6, #4]
   82ffa:	9114      	str	r1, [sp, #80]	; 0x50
   82ffc:	f340 80c1 	ble.w	83182 <_vfiprintf_r+0x922>
   83000:	2a00      	cmp	r2, #0
   83002:	f040 8130 	bne.w	83266 <_vfiprintf_r+0xa06>
   83006:	9214      	str	r2, [sp, #80]	; 0x50
   83008:	464e      	mov	r6, r9
   8300a:	f01a 0f04 	tst.w	sl, #4
   8300e:	f000 808b 	beq.w	83128 <_vfiprintf_r+0x8c8>
   83012:	9d04      	ldr	r5, [sp, #16]
   83014:	f8dd b00c 	ldr.w	fp, [sp, #12]
   83018:	ebcb 0405 	rsb	r4, fp, r5
   8301c:	2c00      	cmp	r4, #0
   8301e:	f340 8083 	ble.w	83128 <_vfiprintf_r+0x8c8>
   83022:	2c10      	cmp	r4, #16
   83024:	f340 821e 	ble.w	83464 <_vfiprintf_r+0xc04>
   83028:	9914      	ldr	r1, [sp, #80]	; 0x50
   8302a:	4d32      	ldr	r5, [pc, #200]	; (830f4 <_vfiprintf_r+0x894>)
   8302c:	2710      	movs	r7, #16
   8302e:	f8dd a018 	ldr.w	sl, [sp, #24]
   83032:	f8dd b008 	ldr.w	fp, [sp, #8]
   83036:	e005      	b.n	83044 <_vfiprintf_r+0x7e4>
   83038:	1c88      	adds	r0, r1, #2
   8303a:	3608      	adds	r6, #8
   8303c:	4619      	mov	r1, r3
   8303e:	3c10      	subs	r4, #16
   83040:	2c10      	cmp	r4, #16
   83042:	dd10      	ble.n	83066 <_vfiprintf_r+0x806>
   83044:	1c4b      	adds	r3, r1, #1
   83046:	3210      	adds	r2, #16
   83048:	2b07      	cmp	r3, #7
   8304a:	9215      	str	r2, [sp, #84]	; 0x54
   8304c:	e886 00a0 	stmia.w	r6, {r5, r7}
   83050:	9314      	str	r3, [sp, #80]	; 0x50
   83052:	ddf1      	ble.n	83038 <_vfiprintf_r+0x7d8>
   83054:	2a00      	cmp	r2, #0
   83056:	d17d      	bne.n	83154 <_vfiprintf_r+0x8f4>
   83058:	3c10      	subs	r4, #16
   8305a:	2c10      	cmp	r4, #16
   8305c:	f04f 0001 	mov.w	r0, #1
   83060:	4611      	mov	r1, r2
   83062:	464e      	mov	r6, r9
   83064:	dcee      	bgt.n	83044 <_vfiprintf_r+0x7e4>
   83066:	4422      	add	r2, r4
   83068:	2807      	cmp	r0, #7
   8306a:	9215      	str	r2, [sp, #84]	; 0x54
   8306c:	6035      	str	r5, [r6, #0]
   8306e:	6074      	str	r4, [r6, #4]
   83070:	9014      	str	r0, [sp, #80]	; 0x50
   83072:	dd59      	ble.n	83128 <_vfiprintf_r+0x8c8>
   83074:	2a00      	cmp	r2, #0
   83076:	d14f      	bne.n	83118 <_vfiprintf_r+0x8b8>
   83078:	9c09      	ldr	r4, [sp, #36]	; 0x24
   8307a:	f8dd b00c 	ldr.w	fp, [sp, #12]
   8307e:	9d04      	ldr	r5, [sp, #16]
   83080:	45ab      	cmp	fp, r5
   83082:	bfac      	ite	ge
   83084:	445c      	addge	r4, fp
   83086:	1964      	addlt	r4, r4, r5
   83088:	9409      	str	r4, [sp, #36]	; 0x24
   8308a:	e05e      	b.n	8314a <_vfiprintf_r+0x8ea>
   8308c:	4620      	mov	r0, r4
   8308e:	9902      	ldr	r1, [sp, #8]
   83090:	aa13      	add	r2, sp, #76	; 0x4c
   83092:	f7ff fba9 	bl	827e8 <__sprint_r.part.0>
   83096:	2800      	cmp	r0, #0
   83098:	d135      	bne.n	83106 <_vfiprintf_r+0x8a6>
   8309a:	9b14      	ldr	r3, [sp, #80]	; 0x50
   8309c:	9a15      	ldr	r2, [sp, #84]	; 0x54
   8309e:	f103 0c01 	add.w	ip, r3, #1
   830a2:	4648      	mov	r0, r9
   830a4:	e781      	b.n	82faa <_vfiprintf_r+0x74a>
   830a6:	08e0      	lsrs	r0, r4, #3
   830a8:	ea40 7045 	orr.w	r0, r0, r5, lsl #29
   830ac:	f004 0207 	and.w	r2, r4, #7
   830b0:	08e9      	lsrs	r1, r5, #3
   830b2:	3230      	adds	r2, #48	; 0x30
   830b4:	ea50 0b01 	orrs.w	fp, r0, r1
   830b8:	461f      	mov	r7, r3
   830ba:	701a      	strb	r2, [r3, #0]
   830bc:	4604      	mov	r4, r0
   830be:	460d      	mov	r5, r1
   830c0:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
   830c4:	d1ef      	bne.n	830a6 <_vfiprintf_r+0x846>
   830c6:	f01a 0f01 	tst.w	sl, #1
   830ca:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
   830ce:	4639      	mov	r1, r7
   830d0:	f000 80b9 	beq.w	83246 <_vfiprintf_r+0x9e6>
   830d4:	2a30      	cmp	r2, #48	; 0x30
   830d6:	f43f acf4 	beq.w	82ac2 <_vfiprintf_r+0x262>
   830da:	461f      	mov	r7, r3
   830dc:	ebc7 0509 	rsb	r5, r7, r9
   830e0:	2330      	movs	r3, #48	; 0x30
   830e2:	9505      	str	r5, [sp, #20]
   830e4:	f801 3c01 	strb.w	r3, [r1, #-1]
   830e8:	e4ee      	b.n	82ac8 <_vfiprintf_r+0x268>
   830ea:	bf00      	nop
   830ec:	000861a8 	.word	0x000861a8
   830f0:	000861c4 	.word	0x000861c4
   830f4:	00086184 	.word	0x00086184
   830f8:	9b15      	ldr	r3, [sp, #84]	; 0x54
   830fa:	b123      	cbz	r3, 83106 <_vfiprintf_r+0x8a6>
   830fc:	9806      	ldr	r0, [sp, #24]
   830fe:	9902      	ldr	r1, [sp, #8]
   83100:	aa13      	add	r2, sp, #76	; 0x4c
   83102:	f7ff fb71 	bl	827e8 <__sprint_r.part.0>
   83106:	9c02      	ldr	r4, [sp, #8]
   83108:	89a3      	ldrh	r3, [r4, #12]
   8310a:	065b      	lsls	r3, r3, #25
   8310c:	f53f ac98 	bmi.w	82a40 <_vfiprintf_r+0x1e0>
   83110:	9809      	ldr	r0, [sp, #36]	; 0x24
   83112:	b031      	add	sp, #196	; 0xc4
   83114:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   83118:	9806      	ldr	r0, [sp, #24]
   8311a:	9902      	ldr	r1, [sp, #8]
   8311c:	aa13      	add	r2, sp, #76	; 0x4c
   8311e:	f7ff fb63 	bl	827e8 <__sprint_r.part.0>
   83122:	2800      	cmp	r0, #0
   83124:	d1ef      	bne.n	83106 <_vfiprintf_r+0x8a6>
   83126:	9a15      	ldr	r2, [sp, #84]	; 0x54
   83128:	9c09      	ldr	r4, [sp, #36]	; 0x24
   8312a:	f8dd b00c 	ldr.w	fp, [sp, #12]
   8312e:	9d04      	ldr	r5, [sp, #16]
   83130:	45ab      	cmp	fp, r5
   83132:	bfac      	ite	ge
   83134:	445c      	addge	r4, fp
   83136:	1964      	addlt	r4, r4, r5
   83138:	9409      	str	r4, [sp, #36]	; 0x24
   8313a:	b132      	cbz	r2, 8314a <_vfiprintf_r+0x8ea>
   8313c:	9806      	ldr	r0, [sp, #24]
   8313e:	9902      	ldr	r1, [sp, #8]
   83140:	aa13      	add	r2, sp, #76	; 0x4c
   83142:	f7ff fb51 	bl	827e8 <__sprint_r.part.0>
   83146:	2800      	cmp	r0, #0
   83148:	d1dd      	bne.n	83106 <_vfiprintf_r+0x8a6>
   8314a:	2000      	movs	r0, #0
   8314c:	9014      	str	r0, [sp, #80]	; 0x50
   8314e:	464e      	mov	r6, r9
   83150:	f7ff bbb9 	b.w	828c6 <_vfiprintf_r+0x66>
   83154:	4650      	mov	r0, sl
   83156:	4659      	mov	r1, fp
   83158:	aa13      	add	r2, sp, #76	; 0x4c
   8315a:	f7ff fb45 	bl	827e8 <__sprint_r.part.0>
   8315e:	2800      	cmp	r0, #0
   83160:	d1d1      	bne.n	83106 <_vfiprintf_r+0x8a6>
   83162:	9914      	ldr	r1, [sp, #80]	; 0x50
   83164:	9a15      	ldr	r2, [sp, #84]	; 0x54
   83166:	1c48      	adds	r0, r1, #1
   83168:	464e      	mov	r6, r9
   8316a:	e768      	b.n	8303e <_vfiprintf_r+0x7de>
   8316c:	2a00      	cmp	r2, #0
   8316e:	f040 80f7 	bne.w	83360 <_vfiprintf_r+0xb00>
   83172:	9c05      	ldr	r4, [sp, #20]
   83174:	2301      	movs	r3, #1
   83176:	9720      	str	r7, [sp, #128]	; 0x80
   83178:	9421      	str	r4, [sp, #132]	; 0x84
   8317a:	9415      	str	r4, [sp, #84]	; 0x54
   8317c:	4622      	mov	r2, r4
   8317e:	9314      	str	r3, [sp, #80]	; 0x50
   83180:	464e      	mov	r6, r9
   83182:	3608      	adds	r6, #8
   83184:	e741      	b.n	8300a <_vfiprintf_r+0x7aa>
   83186:	9d04      	ldr	r5, [sp, #16]
   83188:	f8dd b00c 	ldr.w	fp, [sp, #12]
   8318c:	ebcb 0405 	rsb	r4, fp, r5
   83190:	2c00      	cmp	r4, #0
   83192:	f77f aef7 	ble.w	82f84 <_vfiprintf_r+0x724>
   83196:	2c10      	cmp	r4, #16
   83198:	4da6      	ldr	r5, [pc, #664]	; (83434 <_vfiprintf_r+0xbd4>)
   8319a:	f340 8170 	ble.w	8347e <_vfiprintf_r+0xc1e>
   8319e:	4629      	mov	r1, r5
   831a0:	f04f 0b10 	mov.w	fp, #16
   831a4:	4625      	mov	r5, r4
   831a6:	4664      	mov	r4, ip
   831a8:	46b4      	mov	ip, r6
   831aa:	460e      	mov	r6, r1
   831ac:	e006      	b.n	831bc <_vfiprintf_r+0x95c>
   831ae:	1c98      	adds	r0, r3, #2
   831b0:	f10c 0c08 	add.w	ip, ip, #8
   831b4:	460b      	mov	r3, r1
   831b6:	3d10      	subs	r5, #16
   831b8:	2d10      	cmp	r5, #16
   831ba:	dd0f      	ble.n	831dc <_vfiprintf_r+0x97c>
   831bc:	1c59      	adds	r1, r3, #1
   831be:	3210      	adds	r2, #16
   831c0:	2907      	cmp	r1, #7
   831c2:	9215      	str	r2, [sp, #84]	; 0x54
   831c4:	e88c 0840 	stmia.w	ip, {r6, fp}
   831c8:	9114      	str	r1, [sp, #80]	; 0x50
   831ca:	ddf0      	ble.n	831ae <_vfiprintf_r+0x94e>
   831cc:	b9ba      	cbnz	r2, 831fe <_vfiprintf_r+0x99e>
   831ce:	3d10      	subs	r5, #16
   831d0:	2d10      	cmp	r5, #16
   831d2:	f04f 0001 	mov.w	r0, #1
   831d6:	4613      	mov	r3, r2
   831d8:	46cc      	mov	ip, r9
   831da:	dcef      	bgt.n	831bc <_vfiprintf_r+0x95c>
   831dc:	4633      	mov	r3, r6
   831de:	4666      	mov	r6, ip
   831e0:	46a4      	mov	ip, r4
   831e2:	462c      	mov	r4, r5
   831e4:	461d      	mov	r5, r3
   831e6:	4422      	add	r2, r4
   831e8:	2807      	cmp	r0, #7
   831ea:	9215      	str	r2, [sp, #84]	; 0x54
   831ec:	6035      	str	r5, [r6, #0]
   831ee:	6074      	str	r4, [r6, #4]
   831f0:	9014      	str	r0, [sp, #80]	; 0x50
   831f2:	f300 80af 	bgt.w	83354 <_vfiprintf_r+0xaf4>
   831f6:	3608      	adds	r6, #8
   831f8:	1c41      	adds	r1, r0, #1
   831fa:	4603      	mov	r3, r0
   831fc:	e6c2      	b.n	82f84 <_vfiprintf_r+0x724>
   831fe:	9806      	ldr	r0, [sp, #24]
   83200:	9902      	ldr	r1, [sp, #8]
   83202:	aa13      	add	r2, sp, #76	; 0x4c
   83204:	f7ff faf0 	bl	827e8 <__sprint_r.part.0>
   83208:	2800      	cmp	r0, #0
   8320a:	f47f af7c 	bne.w	83106 <_vfiprintf_r+0x8a6>
   8320e:	9b14      	ldr	r3, [sp, #80]	; 0x50
   83210:	9a15      	ldr	r2, [sp, #84]	; 0x54
   83212:	1c58      	adds	r0, r3, #1
   83214:	46cc      	mov	ip, r9
   83216:	e7ce      	b.n	831b6 <_vfiprintf_r+0x956>
   83218:	2a00      	cmp	r2, #0
   8321a:	d179      	bne.n	83310 <_vfiprintf_r+0xab0>
   8321c:	4619      	mov	r1, r3
   8321e:	464e      	mov	r6, r9
   83220:	4613      	mov	r3, r2
   83222:	e69c      	b.n	82f5e <_vfiprintf_r+0x6fe>
   83224:	2a00      	cmp	r2, #0
   83226:	f040 8084 	bne.w	83332 <_vfiprintf_r+0xad2>
   8322a:	2101      	movs	r1, #1
   8322c:	4613      	mov	r3, r2
   8322e:	464e      	mov	r6, r9
   83230:	e6a4      	b.n	82f7c <_vfiprintf_r+0x71c>
   83232:	464f      	mov	r7, r9
   83234:	e448      	b.n	82ac8 <_vfiprintf_r+0x268>
   83236:	2d00      	cmp	r5, #0
   83238:	bf08      	it	eq
   8323a:	2c0a      	cmpeq	r4, #10
   8323c:	d246      	bcs.n	832cc <_vfiprintf_r+0xa6c>
   8323e:	3430      	adds	r4, #48	; 0x30
   83240:	af30      	add	r7, sp, #192	; 0xc0
   83242:	f807 4d41 	strb.w	r4, [r7, #-65]!
   83246:	ebc7 0309 	rsb	r3, r7, r9
   8324a:	9305      	str	r3, [sp, #20]
   8324c:	e43c      	b.n	82ac8 <_vfiprintf_r+0x268>
   8324e:	2302      	movs	r3, #2
   83250:	e417      	b.n	82a82 <_vfiprintf_r+0x222>
   83252:	2a00      	cmp	r2, #0
   83254:	f040 80af 	bne.w	833b6 <_vfiprintf_r+0xb56>
   83258:	4613      	mov	r3, r2
   8325a:	2101      	movs	r1, #1
   8325c:	464e      	mov	r6, r9
   8325e:	e66d      	b.n	82f3c <_vfiprintf_r+0x6dc>
   83260:	4644      	mov	r4, r8
   83262:	f7ff bb58 	b.w	82916 <_vfiprintf_r+0xb6>
   83266:	9806      	ldr	r0, [sp, #24]
   83268:	9902      	ldr	r1, [sp, #8]
   8326a:	aa13      	add	r2, sp, #76	; 0x4c
   8326c:	f7ff fabc 	bl	827e8 <__sprint_r.part.0>
   83270:	2800      	cmp	r0, #0
   83272:	f47f af48 	bne.w	83106 <_vfiprintf_r+0x8a6>
   83276:	9a15      	ldr	r2, [sp, #84]	; 0x54
   83278:	464e      	mov	r6, r9
   8327a:	e6c6      	b.n	8300a <_vfiprintf_r+0x7aa>
   8327c:	9d08      	ldr	r5, [sp, #32]
   8327e:	682c      	ldr	r4, [r5, #0]
   83280:	3504      	adds	r5, #4
   83282:	9508      	str	r5, [sp, #32]
   83284:	2500      	movs	r5, #0
   83286:	f7ff bbfc 	b.w	82a82 <_vfiprintf_r+0x222>
   8328a:	9d08      	ldr	r5, [sp, #32]
   8328c:	2301      	movs	r3, #1
   8328e:	682c      	ldr	r4, [r5, #0]
   83290:	3504      	adds	r5, #4
   83292:	9508      	str	r5, [sp, #32]
   83294:	2500      	movs	r5, #0
   83296:	f7ff bbf4 	b.w	82a82 <_vfiprintf_r+0x222>
   8329a:	9d08      	ldr	r5, [sp, #32]
   8329c:	682c      	ldr	r4, [r5, #0]
   8329e:	3504      	adds	r5, #4
   832a0:	9508      	str	r5, [sp, #32]
   832a2:	2500      	movs	r5, #0
   832a4:	e525      	b.n	82cf2 <_vfiprintf_r+0x492>
   832a6:	9d08      	ldr	r5, [sp, #32]
   832a8:	682c      	ldr	r4, [r5, #0]
   832aa:	3504      	adds	r5, #4
   832ac:	9508      	str	r5, [sp, #32]
   832ae:	17e5      	asrs	r5, r4, #31
   832b0:	4622      	mov	r2, r4
   832b2:	462b      	mov	r3, r5
   832b4:	e48e      	b.n	82bd4 <_vfiprintf_r+0x374>
   832b6:	9806      	ldr	r0, [sp, #24]
   832b8:	9902      	ldr	r1, [sp, #8]
   832ba:	aa13      	add	r2, sp, #76	; 0x4c
   832bc:	f7ff fa94 	bl	827e8 <__sprint_r.part.0>
   832c0:	2800      	cmp	r0, #0
   832c2:	f47f af20 	bne.w	83106 <_vfiprintf_r+0x8a6>
   832c6:	464e      	mov	r6, r9
   832c8:	f7ff bb9a 	b.w	82a00 <_vfiprintf_r+0x1a0>
   832cc:	f10d 0b7f 	add.w	fp, sp, #127	; 0x7f
   832d0:	9603      	str	r6, [sp, #12]
   832d2:	465e      	mov	r6, fp
   832d4:	46e3      	mov	fp, ip
   832d6:	4620      	mov	r0, r4
   832d8:	4629      	mov	r1, r5
   832da:	220a      	movs	r2, #10
   832dc:	2300      	movs	r3, #0
   832de:	f001 fe39 	bl	84f54 <__aeabi_uldivmod>
   832e2:	3230      	adds	r2, #48	; 0x30
   832e4:	7032      	strb	r2, [r6, #0]
   832e6:	4620      	mov	r0, r4
   832e8:	4629      	mov	r1, r5
   832ea:	220a      	movs	r2, #10
   832ec:	2300      	movs	r3, #0
   832ee:	f001 fe31 	bl	84f54 <__aeabi_uldivmod>
   832f2:	4604      	mov	r4, r0
   832f4:	460d      	mov	r5, r1
   832f6:	ea54 0005 	orrs.w	r0, r4, r5
   832fa:	4637      	mov	r7, r6
   832fc:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
   83300:	d1e9      	bne.n	832d6 <_vfiprintf_r+0xa76>
   83302:	ebc7 0309 	rsb	r3, r7, r9
   83306:	46dc      	mov	ip, fp
   83308:	9e03      	ldr	r6, [sp, #12]
   8330a:	9305      	str	r3, [sp, #20]
   8330c:	f7ff bbdc 	b.w	82ac8 <_vfiprintf_r+0x268>
   83310:	9806      	ldr	r0, [sp, #24]
   83312:	9902      	ldr	r1, [sp, #8]
   83314:	aa13      	add	r2, sp, #76	; 0x4c
   83316:	f8cd c004 	str.w	ip, [sp, #4]
   8331a:	f7ff fa65 	bl	827e8 <__sprint_r.part.0>
   8331e:	f8dd c004 	ldr.w	ip, [sp, #4]
   83322:	2800      	cmp	r0, #0
   83324:	f47f aeef 	bne.w	83106 <_vfiprintf_r+0x8a6>
   83328:	9b14      	ldr	r3, [sp, #80]	; 0x50
   8332a:	9a15      	ldr	r2, [sp, #84]	; 0x54
   8332c:	1c59      	adds	r1, r3, #1
   8332e:	464e      	mov	r6, r9
   83330:	e615      	b.n	82f5e <_vfiprintf_r+0x6fe>
   83332:	9806      	ldr	r0, [sp, #24]
   83334:	9902      	ldr	r1, [sp, #8]
   83336:	aa13      	add	r2, sp, #76	; 0x4c
   83338:	f8cd c004 	str.w	ip, [sp, #4]
   8333c:	f7ff fa54 	bl	827e8 <__sprint_r.part.0>
   83340:	f8dd c004 	ldr.w	ip, [sp, #4]
   83344:	2800      	cmp	r0, #0
   83346:	f47f aede 	bne.w	83106 <_vfiprintf_r+0x8a6>
   8334a:	9b14      	ldr	r3, [sp, #80]	; 0x50
   8334c:	9a15      	ldr	r2, [sp, #84]	; 0x54
   8334e:	1c59      	adds	r1, r3, #1
   83350:	464e      	mov	r6, r9
   83352:	e613      	b.n	82f7c <_vfiprintf_r+0x71c>
   83354:	2a00      	cmp	r2, #0
   83356:	d156      	bne.n	83406 <_vfiprintf_r+0xba6>
   83358:	2101      	movs	r1, #1
   8335a:	4613      	mov	r3, r2
   8335c:	464e      	mov	r6, r9
   8335e:	e611      	b.n	82f84 <_vfiprintf_r+0x724>
   83360:	9806      	ldr	r0, [sp, #24]
   83362:	9902      	ldr	r1, [sp, #8]
   83364:	aa13      	add	r2, sp, #76	; 0x4c
   83366:	f7ff fa3f 	bl	827e8 <__sprint_r.part.0>
   8336a:	2800      	cmp	r0, #0
   8336c:	f47f aecb 	bne.w	83106 <_vfiprintf_r+0x8a6>
   83370:	9914      	ldr	r1, [sp, #80]	; 0x50
   83372:	9a15      	ldr	r2, [sp, #84]	; 0x54
   83374:	3101      	adds	r1, #1
   83376:	464e      	mov	r6, r9
   83378:	e639      	b.n	82fee <_vfiprintf_r+0x78e>
   8337a:	f04f 0b2d 	mov.w	fp, #45	; 0x2d
   8337e:	4264      	negs	r4, r4
   83380:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
   83384:	f88d b047 	strb.w	fp, [sp, #71]	; 0x47
   83388:	f8cd b01c 	str.w	fp, [sp, #28]
   8338c:	f8cd c014 	str.w	ip, [sp, #20]
   83390:	2301      	movs	r3, #1
   83392:	f7ff bb7e 	b.w	82a92 <_vfiprintf_r+0x232>
   83396:	f01a 0f10 	tst.w	sl, #16
   8339a:	d11d      	bne.n	833d8 <_vfiprintf_r+0xb78>
   8339c:	f01a 0f40 	tst.w	sl, #64	; 0x40
   833a0:	d058      	beq.n	83454 <_vfiprintf_r+0xbf4>
   833a2:	9d08      	ldr	r5, [sp, #32]
   833a4:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
   833a8:	682b      	ldr	r3, [r5, #0]
   833aa:	3504      	adds	r5, #4
   833ac:	9508      	str	r5, [sp, #32]
   833ae:	f8a3 b000 	strh.w	fp, [r3]
   833b2:	f7ff ba88 	b.w	828c6 <_vfiprintf_r+0x66>
   833b6:	9806      	ldr	r0, [sp, #24]
   833b8:	9902      	ldr	r1, [sp, #8]
   833ba:	aa13      	add	r2, sp, #76	; 0x4c
   833bc:	f8cd c004 	str.w	ip, [sp, #4]
   833c0:	f7ff fa12 	bl	827e8 <__sprint_r.part.0>
   833c4:	f8dd c004 	ldr.w	ip, [sp, #4]
   833c8:	2800      	cmp	r0, #0
   833ca:	f47f ae9c 	bne.w	83106 <_vfiprintf_r+0x8a6>
   833ce:	9b14      	ldr	r3, [sp, #80]	; 0x50
   833d0:	9a15      	ldr	r2, [sp, #84]	; 0x54
   833d2:	1c59      	adds	r1, r3, #1
   833d4:	464e      	mov	r6, r9
   833d6:	e5b1      	b.n	82f3c <_vfiprintf_r+0x6dc>
   833d8:	f8dd b020 	ldr.w	fp, [sp, #32]
   833dc:	9c09      	ldr	r4, [sp, #36]	; 0x24
   833de:	f8db 3000 	ldr.w	r3, [fp]
   833e2:	f10b 0b04 	add.w	fp, fp, #4
   833e6:	f8cd b020 	str.w	fp, [sp, #32]
   833ea:	601c      	str	r4, [r3, #0]
   833ec:	f7ff ba6b 	b.w	828c6 <_vfiprintf_r+0x66>
   833f0:	9408      	str	r4, [sp, #32]
   833f2:	f7ff f9c1 	bl	82778 <strlen>
   833f6:	f89d 4047 	ldrb.w	r4, [sp, #71]	; 0x47
   833fa:	9005      	str	r0, [sp, #20]
   833fc:	9407      	str	r4, [sp, #28]
   833fe:	f04f 0c00 	mov.w	ip, #0
   83402:	f7ff bb61 	b.w	82ac8 <_vfiprintf_r+0x268>
   83406:	9806      	ldr	r0, [sp, #24]
   83408:	9902      	ldr	r1, [sp, #8]
   8340a:	aa13      	add	r2, sp, #76	; 0x4c
   8340c:	f8cd c004 	str.w	ip, [sp, #4]
   83410:	f7ff f9ea 	bl	827e8 <__sprint_r.part.0>
   83414:	f8dd c004 	ldr.w	ip, [sp, #4]
   83418:	2800      	cmp	r0, #0
   8341a:	f47f ae74 	bne.w	83106 <_vfiprintf_r+0x8a6>
   8341e:	9b14      	ldr	r3, [sp, #80]	; 0x50
   83420:	9a15      	ldr	r2, [sp, #84]	; 0x54
   83422:	1c59      	adds	r1, r3, #1
   83424:	464e      	mov	r6, r9
   83426:	e5ad      	b.n	82f84 <_vfiprintf_r+0x724>
   83428:	9b14      	ldr	r3, [sp, #80]	; 0x50
   8342a:	9a15      	ldr	r2, [sp, #84]	; 0x54
   8342c:	3301      	adds	r3, #1
   8342e:	4d02      	ldr	r5, [pc, #8]	; (83438 <_vfiprintf_r+0xbd8>)
   83430:	f7ff bb9a 	b.w	82b68 <_vfiprintf_r+0x308>
   83434:	000861c4 	.word	0x000861c4
   83438:	00086184 	.word	0x00086184
   8343c:	f1bc 0f06 	cmp.w	ip, #6
   83440:	bf34      	ite	cc
   83442:	4663      	movcc	r3, ip
   83444:	2306      	movcs	r3, #6
   83446:	9408      	str	r4, [sp, #32]
   83448:	ea23 74e3 	bic.w	r4, r3, r3, asr #31
   8344c:	9305      	str	r3, [sp, #20]
   8344e:	9403      	str	r4, [sp, #12]
   83450:	4f16      	ldr	r7, [pc, #88]	; (834ac <_vfiprintf_r+0xc4c>)
   83452:	e472      	b.n	82d3a <_vfiprintf_r+0x4da>
   83454:	9c08      	ldr	r4, [sp, #32]
   83456:	9d09      	ldr	r5, [sp, #36]	; 0x24
   83458:	6823      	ldr	r3, [r4, #0]
   8345a:	3404      	adds	r4, #4
   8345c:	9408      	str	r4, [sp, #32]
   8345e:	601d      	str	r5, [r3, #0]
   83460:	f7ff ba31 	b.w	828c6 <_vfiprintf_r+0x66>
   83464:	9814      	ldr	r0, [sp, #80]	; 0x50
   83466:	4d12      	ldr	r5, [pc, #72]	; (834b0 <_vfiprintf_r+0xc50>)
   83468:	3001      	adds	r0, #1
   8346a:	e5fc      	b.n	83066 <_vfiprintf_r+0x806>
   8346c:	f89d 5047 	ldrb.w	r5, [sp, #71]	; 0x47
   83470:	f8cd c014 	str.w	ip, [sp, #20]
   83474:	9507      	str	r5, [sp, #28]
   83476:	9408      	str	r4, [sp, #32]
   83478:	4684      	mov	ip, r0
   8347a:	f7ff bb25 	b.w	82ac8 <_vfiprintf_r+0x268>
   8347e:	4608      	mov	r0, r1
   83480:	e6b1      	b.n	831e6 <_vfiprintf_r+0x986>
   83482:	46a0      	mov	r8, r4
   83484:	2500      	movs	r5, #0
   83486:	f7ff ba5a 	b.w	8293e <_vfiprintf_r+0xde>
   8348a:	f8dd b020 	ldr.w	fp, [sp, #32]
   8348e:	f898 3001 	ldrb.w	r3, [r8, #1]
   83492:	f8db 5000 	ldr.w	r5, [fp]
   83496:	f10b 0204 	add.w	r2, fp, #4
   8349a:	2d00      	cmp	r5, #0
   8349c:	9208      	str	r2, [sp, #32]
   8349e:	46a0      	mov	r8, r4
   834a0:	f6bf aa4b 	bge.w	8293a <_vfiprintf_r+0xda>
   834a4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
   834a8:	f7ff ba47 	b.w	8293a <_vfiprintf_r+0xda>
   834ac:	000861bc 	.word	0x000861bc
   834b0:	00086184 	.word	0x00086184

000834b4 <__sbprintf>:
   834b4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
   834b8:	6e4f      	ldr	r7, [r1, #100]	; 0x64
   834ba:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
   834be:	4688      	mov	r8, r1
   834c0:	9719      	str	r7, [sp, #100]	; 0x64
   834c2:	f8d8 701c 	ldr.w	r7, [r8, #28]
   834c6:	f8b1 a00c 	ldrh.w	sl, [r1, #12]
   834ca:	f8b1 900e 	ldrh.w	r9, [r1, #14]
   834ce:	9707      	str	r7, [sp, #28]
   834d0:	f8d8 7024 	ldr.w	r7, [r8, #36]	; 0x24
   834d4:	ac1a      	add	r4, sp, #104	; 0x68
   834d6:	f44f 6580 	mov.w	r5, #1024	; 0x400
   834da:	f02a 0a02 	bic.w	sl, sl, #2
   834de:	2600      	movs	r6, #0
   834e0:	4669      	mov	r1, sp
   834e2:	9400      	str	r4, [sp, #0]
   834e4:	9404      	str	r4, [sp, #16]
   834e6:	9502      	str	r5, [sp, #8]
   834e8:	9505      	str	r5, [sp, #20]
   834ea:	f8ad a00c 	strh.w	sl, [sp, #12]
   834ee:	f8ad 900e 	strh.w	r9, [sp, #14]
   834f2:	9709      	str	r7, [sp, #36]	; 0x24
   834f4:	9606      	str	r6, [sp, #24]
   834f6:	4605      	mov	r5, r0
   834f8:	f7ff f9b2 	bl	82860 <_vfiprintf_r>
   834fc:	1e04      	subs	r4, r0, #0
   834fe:	db07      	blt.n	83510 <__sbprintf+0x5c>
   83500:	4628      	mov	r0, r5
   83502:	4669      	mov	r1, sp
   83504:	f000 f92a 	bl	8375c <_fflush_r>
   83508:	42b0      	cmp	r0, r6
   8350a:	bf18      	it	ne
   8350c:	f04f 34ff 	movne.w	r4, #4294967295	; 0xffffffff
   83510:	f8bd 300c 	ldrh.w	r3, [sp, #12]
   83514:	065b      	lsls	r3, r3, #25
   83516:	d505      	bpl.n	83524 <__sbprintf+0x70>
   83518:	f8b8 300c 	ldrh.w	r3, [r8, #12]
   8351c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   83520:	f8a8 300c 	strh.w	r3, [r8, #12]
   83524:	4620      	mov	r0, r4
   83526:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
   8352a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
   8352e:	bf00      	nop

00083530 <__swsetup_r>:
   83530:	4b2f      	ldr	r3, [pc, #188]	; (835f0 <__swsetup_r+0xc0>)
   83532:	b570      	push	{r4, r5, r6, lr}
   83534:	4606      	mov	r6, r0
   83536:	6818      	ldr	r0, [r3, #0]
   83538:	460c      	mov	r4, r1
   8353a:	b110      	cbz	r0, 83542 <__swsetup_r+0x12>
   8353c:	6b82      	ldr	r2, [r0, #56]	; 0x38
   8353e:	2a00      	cmp	r2, #0
   83540:	d036      	beq.n	835b0 <__swsetup_r+0x80>
   83542:	89a5      	ldrh	r5, [r4, #12]
   83544:	b2ab      	uxth	r3, r5
   83546:	0719      	lsls	r1, r3, #28
   83548:	d50c      	bpl.n	83564 <__swsetup_r+0x34>
   8354a:	6922      	ldr	r2, [r4, #16]
   8354c:	b1aa      	cbz	r2, 8357a <__swsetup_r+0x4a>
   8354e:	f013 0101 	ands.w	r1, r3, #1
   83552:	d01e      	beq.n	83592 <__swsetup_r+0x62>
   83554:	6963      	ldr	r3, [r4, #20]
   83556:	2100      	movs	r1, #0
   83558:	425b      	negs	r3, r3
   8355a:	61a3      	str	r3, [r4, #24]
   8355c:	60a1      	str	r1, [r4, #8]
   8355e:	b1f2      	cbz	r2, 8359e <__swsetup_r+0x6e>
   83560:	2000      	movs	r0, #0
   83562:	bd70      	pop	{r4, r5, r6, pc}
   83564:	06da      	lsls	r2, r3, #27
   83566:	d53a      	bpl.n	835de <__swsetup_r+0xae>
   83568:	075b      	lsls	r3, r3, #29
   8356a:	d424      	bmi.n	835b6 <__swsetup_r+0x86>
   8356c:	6922      	ldr	r2, [r4, #16]
   8356e:	f045 0308 	orr.w	r3, r5, #8
   83572:	81a3      	strh	r3, [r4, #12]
   83574:	b29b      	uxth	r3, r3
   83576:	2a00      	cmp	r2, #0
   83578:	d1e9      	bne.n	8354e <__swsetup_r+0x1e>
   8357a:	f403 7120 	and.w	r1, r3, #640	; 0x280
   8357e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
   83582:	d0e4      	beq.n	8354e <__swsetup_r+0x1e>
   83584:	4630      	mov	r0, r6
   83586:	4621      	mov	r1, r4
   83588:	f000 fccc 	bl	83f24 <__smakebuf_r>
   8358c:	89a3      	ldrh	r3, [r4, #12]
   8358e:	6922      	ldr	r2, [r4, #16]
   83590:	e7dd      	b.n	8354e <__swsetup_r+0x1e>
   83592:	0798      	lsls	r0, r3, #30
   83594:	bf58      	it	pl
   83596:	6961      	ldrpl	r1, [r4, #20]
   83598:	60a1      	str	r1, [r4, #8]
   8359a:	2a00      	cmp	r2, #0
   8359c:	d1e0      	bne.n	83560 <__swsetup_r+0x30>
   8359e:	89a3      	ldrh	r3, [r4, #12]
   835a0:	061a      	lsls	r2, r3, #24
   835a2:	d5dd      	bpl.n	83560 <__swsetup_r+0x30>
   835a4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   835a8:	81a3      	strh	r3, [r4, #12]
   835aa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   835ae:	bd70      	pop	{r4, r5, r6, pc}
   835b0:	f000 f8f0 	bl	83794 <__sinit>
   835b4:	e7c5      	b.n	83542 <__swsetup_r+0x12>
   835b6:	6b21      	ldr	r1, [r4, #48]	; 0x30
   835b8:	b149      	cbz	r1, 835ce <__swsetup_r+0x9e>
   835ba:	f104 0340 	add.w	r3, r4, #64	; 0x40
   835be:	4299      	cmp	r1, r3
   835c0:	d003      	beq.n	835ca <__swsetup_r+0x9a>
   835c2:	4630      	mov	r0, r6
   835c4:	f000 fa2a 	bl	83a1c <_free_r>
   835c8:	89a5      	ldrh	r5, [r4, #12]
   835ca:	2300      	movs	r3, #0
   835cc:	6323      	str	r3, [r4, #48]	; 0x30
   835ce:	6922      	ldr	r2, [r4, #16]
   835d0:	f025 0524 	bic.w	r5, r5, #36	; 0x24
   835d4:	2100      	movs	r1, #0
   835d6:	b2ad      	uxth	r5, r5
   835d8:	6022      	str	r2, [r4, #0]
   835da:	6061      	str	r1, [r4, #4]
   835dc:	e7c7      	b.n	8356e <__swsetup_r+0x3e>
   835de:	f045 0540 	orr.w	r5, r5, #64	; 0x40
   835e2:	2309      	movs	r3, #9
   835e4:	6033      	str	r3, [r6, #0]
   835e6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   835ea:	81a5      	strh	r5, [r4, #12]
   835ec:	bd70      	pop	{r4, r5, r6, pc}
   835ee:	bf00      	nop
   835f0:	20070498 	.word	0x20070498

000835f4 <register_fini>:
   835f4:	4b02      	ldr	r3, [pc, #8]	; (83600 <register_fini+0xc>)
   835f6:	b113      	cbz	r3, 835fe <register_fini+0xa>
   835f8:	4802      	ldr	r0, [pc, #8]	; (83604 <register_fini+0x10>)
   835fa:	f000 b805 	b.w	83608 <atexit>
   835fe:	4770      	bx	lr
   83600:	00000000 	.word	0x00000000
   83604:	00083891 	.word	0x00083891

00083608 <atexit>:
   83608:	4601      	mov	r1, r0
   8360a:	2000      	movs	r0, #0
   8360c:	4602      	mov	r2, r0
   8360e:	4603      	mov	r3, r0
   83610:	f001 bba4 	b.w	84d5c <__register_exitproc>

00083614 <__sflush_r>:
   83614:	898b      	ldrh	r3, [r1, #12]
   83616:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   8361a:	b29a      	uxth	r2, r3
   8361c:	460d      	mov	r5, r1
   8361e:	0711      	lsls	r1, r2, #28
   83620:	4680      	mov	r8, r0
   83622:	d43c      	bmi.n	8369e <__sflush_r+0x8a>
   83624:	686a      	ldr	r2, [r5, #4]
   83626:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
   8362a:	2a00      	cmp	r2, #0
   8362c:	81ab      	strh	r3, [r5, #12]
   8362e:	dd59      	ble.n	836e4 <__sflush_r+0xd0>
   83630:	6aac      	ldr	r4, [r5, #40]	; 0x28
   83632:	2c00      	cmp	r4, #0
   83634:	d04b      	beq.n	836ce <__sflush_r+0xba>
   83636:	b29b      	uxth	r3, r3
   83638:	f403 5280 	and.w	r2, r3, #4096	; 0x1000
   8363c:	2100      	movs	r1, #0
   8363e:	b292      	uxth	r2, r2
   83640:	f8d8 6000 	ldr.w	r6, [r8]
   83644:	f8c8 1000 	str.w	r1, [r8]
   83648:	2a00      	cmp	r2, #0
   8364a:	d04f      	beq.n	836ec <__sflush_r+0xd8>
   8364c:	6d2a      	ldr	r2, [r5, #80]	; 0x50
   8364e:	075f      	lsls	r7, r3, #29
   83650:	d505      	bpl.n	8365e <__sflush_r+0x4a>
   83652:	6869      	ldr	r1, [r5, #4]
   83654:	6b2b      	ldr	r3, [r5, #48]	; 0x30
   83656:	1a52      	subs	r2, r2, r1
   83658:	b10b      	cbz	r3, 8365e <__sflush_r+0x4a>
   8365a:	6beb      	ldr	r3, [r5, #60]	; 0x3c
   8365c:	1ad2      	subs	r2, r2, r3
   8365e:	4640      	mov	r0, r8
   83660:	69e9      	ldr	r1, [r5, #28]
   83662:	2300      	movs	r3, #0
   83664:	47a0      	blx	r4
   83666:	1c44      	adds	r4, r0, #1
   83668:	d04a      	beq.n	83700 <__sflush_r+0xec>
   8366a:	89ab      	ldrh	r3, [r5, #12]
   8366c:	692a      	ldr	r2, [r5, #16]
   8366e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
   83672:	b29b      	uxth	r3, r3
   83674:	2100      	movs	r1, #0
   83676:	602a      	str	r2, [r5, #0]
   83678:	04da      	lsls	r2, r3, #19
   8367a:	81ab      	strh	r3, [r5, #12]
   8367c:	6069      	str	r1, [r5, #4]
   8367e:	d44c      	bmi.n	8371a <__sflush_r+0x106>
   83680:	6b29      	ldr	r1, [r5, #48]	; 0x30
   83682:	f8c8 6000 	str.w	r6, [r8]
   83686:	b311      	cbz	r1, 836ce <__sflush_r+0xba>
   83688:	f105 0340 	add.w	r3, r5, #64	; 0x40
   8368c:	4299      	cmp	r1, r3
   8368e:	d002      	beq.n	83696 <__sflush_r+0x82>
   83690:	4640      	mov	r0, r8
   83692:	f000 f9c3 	bl	83a1c <_free_r>
   83696:	2000      	movs	r0, #0
   83698:	6328      	str	r0, [r5, #48]	; 0x30
   8369a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   8369e:	692e      	ldr	r6, [r5, #16]
   836a0:	b1ae      	cbz	r6, 836ce <__sflush_r+0xba>
   836a2:	0791      	lsls	r1, r2, #30
   836a4:	682c      	ldr	r4, [r5, #0]
   836a6:	bf0c      	ite	eq
   836a8:	696b      	ldreq	r3, [r5, #20]
   836aa:	2300      	movne	r3, #0
   836ac:	602e      	str	r6, [r5, #0]
   836ae:	1ba4      	subs	r4, r4, r6
   836b0:	60ab      	str	r3, [r5, #8]
   836b2:	e00a      	b.n	836ca <__sflush_r+0xb6>
   836b4:	4632      	mov	r2, r6
   836b6:	4623      	mov	r3, r4
   836b8:	6a6f      	ldr	r7, [r5, #36]	; 0x24
   836ba:	4640      	mov	r0, r8
   836bc:	69e9      	ldr	r1, [r5, #28]
   836be:	47b8      	blx	r7
   836c0:	2800      	cmp	r0, #0
   836c2:	ebc0 0404 	rsb	r4, r0, r4
   836c6:	4406      	add	r6, r0
   836c8:	dd04      	ble.n	836d4 <__sflush_r+0xc0>
   836ca:	2c00      	cmp	r4, #0
   836cc:	dcf2      	bgt.n	836b4 <__sflush_r+0xa0>
   836ce:	2000      	movs	r0, #0
   836d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   836d4:	89ab      	ldrh	r3, [r5, #12]
   836d6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   836da:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   836de:	81ab      	strh	r3, [r5, #12]
   836e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   836e4:	6bea      	ldr	r2, [r5, #60]	; 0x3c
   836e6:	2a00      	cmp	r2, #0
   836e8:	dca2      	bgt.n	83630 <__sflush_r+0x1c>
   836ea:	e7f0      	b.n	836ce <__sflush_r+0xba>
   836ec:	2301      	movs	r3, #1
   836ee:	4640      	mov	r0, r8
   836f0:	69e9      	ldr	r1, [r5, #28]
   836f2:	47a0      	blx	r4
   836f4:	1c43      	adds	r3, r0, #1
   836f6:	4602      	mov	r2, r0
   836f8:	d01e      	beq.n	83738 <__sflush_r+0x124>
   836fa:	89ab      	ldrh	r3, [r5, #12]
   836fc:	6aac      	ldr	r4, [r5, #40]	; 0x28
   836fe:	e7a6      	b.n	8364e <__sflush_r+0x3a>
   83700:	f8d8 3000 	ldr.w	r3, [r8]
   83704:	b95b      	cbnz	r3, 8371e <__sflush_r+0x10a>
   83706:	89aa      	ldrh	r2, [r5, #12]
   83708:	6929      	ldr	r1, [r5, #16]
   8370a:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
   8370e:	b292      	uxth	r2, r2
   83710:	606b      	str	r3, [r5, #4]
   83712:	04d3      	lsls	r3, r2, #19
   83714:	81aa      	strh	r2, [r5, #12]
   83716:	6029      	str	r1, [r5, #0]
   83718:	d5b2      	bpl.n	83680 <__sflush_r+0x6c>
   8371a:	6528      	str	r0, [r5, #80]	; 0x50
   8371c:	e7b0      	b.n	83680 <__sflush_r+0x6c>
   8371e:	2b1d      	cmp	r3, #29
   83720:	d001      	beq.n	83726 <__sflush_r+0x112>
   83722:	2b16      	cmp	r3, #22
   83724:	d113      	bne.n	8374e <__sflush_r+0x13a>
   83726:	89a9      	ldrh	r1, [r5, #12]
   83728:	692b      	ldr	r3, [r5, #16]
   8372a:	f421 6100 	bic.w	r1, r1, #2048	; 0x800
   8372e:	2200      	movs	r2, #0
   83730:	81a9      	strh	r1, [r5, #12]
   83732:	602b      	str	r3, [r5, #0]
   83734:	606a      	str	r2, [r5, #4]
   83736:	e7a3      	b.n	83680 <__sflush_r+0x6c>
   83738:	f8d8 3000 	ldr.w	r3, [r8]
   8373c:	2b00      	cmp	r3, #0
   8373e:	d0dc      	beq.n	836fa <__sflush_r+0xe6>
   83740:	2b1d      	cmp	r3, #29
   83742:	d001      	beq.n	83748 <__sflush_r+0x134>
   83744:	2b16      	cmp	r3, #22
   83746:	d1c5      	bne.n	836d4 <__sflush_r+0xc0>
   83748:	f8c8 6000 	str.w	r6, [r8]
   8374c:	e7bf      	b.n	836ce <__sflush_r+0xba>
   8374e:	89ab      	ldrh	r3, [r5, #12]
   83750:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   83754:	81ab      	strh	r3, [r5, #12]
   83756:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   8375a:	bf00      	nop

0008375c <_fflush_r>:
   8375c:	b510      	push	{r4, lr}
   8375e:	4604      	mov	r4, r0
   83760:	b082      	sub	sp, #8
   83762:	b108      	cbz	r0, 83768 <_fflush_r+0xc>
   83764:	6b83      	ldr	r3, [r0, #56]	; 0x38
   83766:	b153      	cbz	r3, 8377e <_fflush_r+0x22>
   83768:	f9b1 000c 	ldrsh.w	r0, [r1, #12]
   8376c:	b908      	cbnz	r0, 83772 <_fflush_r+0x16>
   8376e:	b002      	add	sp, #8
   83770:	bd10      	pop	{r4, pc}
   83772:	4620      	mov	r0, r4
   83774:	b002      	add	sp, #8
   83776:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   8377a:	f7ff bf4b 	b.w	83614 <__sflush_r>
   8377e:	9101      	str	r1, [sp, #4]
   83780:	f000 f808 	bl	83794 <__sinit>
   83784:	9901      	ldr	r1, [sp, #4]
   83786:	e7ef      	b.n	83768 <_fflush_r+0xc>

00083788 <_cleanup_r>:
   83788:	4901      	ldr	r1, [pc, #4]	; (83790 <_cleanup_r+0x8>)
   8378a:	f000 bb9d 	b.w	83ec8 <_fwalk>
   8378e:	bf00      	nop
   83790:	00084ea9 	.word	0x00084ea9

00083794 <__sinit>:
   83794:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   83798:	6b84      	ldr	r4, [r0, #56]	; 0x38
   8379a:	b083      	sub	sp, #12
   8379c:	4607      	mov	r7, r0
   8379e:	2c00      	cmp	r4, #0
   837a0:	d165      	bne.n	8386e <__sinit+0xda>
   837a2:	687d      	ldr	r5, [r7, #4]
   837a4:	4833      	ldr	r0, [pc, #204]	; (83874 <__sinit+0xe0>)
   837a6:	2304      	movs	r3, #4
   837a8:	2103      	movs	r1, #3
   837aa:	f507 723b 	add.w	r2, r7, #748	; 0x2ec
   837ae:	63f8      	str	r0, [r7, #60]	; 0x3c
   837b0:	f8c7 12e4 	str.w	r1, [r7, #740]	; 0x2e4
   837b4:	f8c7 22e8 	str.w	r2, [r7, #744]	; 0x2e8
   837b8:	f8c7 42e0 	str.w	r4, [r7, #736]	; 0x2e0
   837bc:	f105 005c 	add.w	r0, r5, #92	; 0x5c
   837c0:	81ab      	strh	r3, [r5, #12]
   837c2:	602c      	str	r4, [r5, #0]
   837c4:	606c      	str	r4, [r5, #4]
   837c6:	60ac      	str	r4, [r5, #8]
   837c8:	666c      	str	r4, [r5, #100]	; 0x64
   837ca:	81ec      	strh	r4, [r5, #14]
   837cc:	612c      	str	r4, [r5, #16]
   837ce:	616c      	str	r4, [r5, #20]
   837d0:	61ac      	str	r4, [r5, #24]
   837d2:	4621      	mov	r1, r4
   837d4:	2208      	movs	r2, #8
   837d6:	f7fe ff85 	bl	826e4 <memset>
   837da:	f8df b09c 	ldr.w	fp, [pc, #156]	; 83878 <__sinit+0xe4>
   837de:	68be      	ldr	r6, [r7, #8]
   837e0:	f8df a098 	ldr.w	sl, [pc, #152]	; 8387c <__sinit+0xe8>
   837e4:	f8df 9098 	ldr.w	r9, [pc, #152]	; 83880 <__sinit+0xec>
   837e8:	f8df 8098 	ldr.w	r8, [pc, #152]	; 83884 <__sinit+0xf0>
   837ec:	2301      	movs	r3, #1
   837ee:	2209      	movs	r2, #9
   837f0:	61ed      	str	r5, [r5, #28]
   837f2:	f8c5 b020 	str.w	fp, [r5, #32]
   837f6:	f8c5 a024 	str.w	sl, [r5, #36]	; 0x24
   837fa:	f8c5 9028 	str.w	r9, [r5, #40]	; 0x28
   837fe:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
   83802:	4621      	mov	r1, r4
   83804:	81f3      	strh	r3, [r6, #14]
   83806:	81b2      	strh	r2, [r6, #12]
   83808:	6034      	str	r4, [r6, #0]
   8380a:	6074      	str	r4, [r6, #4]
   8380c:	60b4      	str	r4, [r6, #8]
   8380e:	6674      	str	r4, [r6, #100]	; 0x64
   83810:	6134      	str	r4, [r6, #16]
   83812:	6174      	str	r4, [r6, #20]
   83814:	61b4      	str	r4, [r6, #24]
   83816:	2208      	movs	r2, #8
   83818:	f106 005c 	add.w	r0, r6, #92	; 0x5c
   8381c:	9301      	str	r3, [sp, #4]
   8381e:	f7fe ff61 	bl	826e4 <memset>
   83822:	68fd      	ldr	r5, [r7, #12]
   83824:	2012      	movs	r0, #18
   83826:	2202      	movs	r2, #2
   83828:	61f6      	str	r6, [r6, #28]
   8382a:	f8c6 b020 	str.w	fp, [r6, #32]
   8382e:	f8c6 a024 	str.w	sl, [r6, #36]	; 0x24
   83832:	f8c6 9028 	str.w	r9, [r6, #40]	; 0x28
   83836:	f8c6 802c 	str.w	r8, [r6, #44]	; 0x2c
   8383a:	4621      	mov	r1, r4
   8383c:	81a8      	strh	r0, [r5, #12]
   8383e:	81ea      	strh	r2, [r5, #14]
   83840:	602c      	str	r4, [r5, #0]
   83842:	606c      	str	r4, [r5, #4]
   83844:	60ac      	str	r4, [r5, #8]
   83846:	666c      	str	r4, [r5, #100]	; 0x64
   83848:	612c      	str	r4, [r5, #16]
   8384a:	616c      	str	r4, [r5, #20]
   8384c:	61ac      	str	r4, [r5, #24]
   8384e:	f105 005c 	add.w	r0, r5, #92	; 0x5c
   83852:	2208      	movs	r2, #8
   83854:	f7fe ff46 	bl	826e4 <memset>
   83858:	9b01      	ldr	r3, [sp, #4]
   8385a:	61ed      	str	r5, [r5, #28]
   8385c:	f8c5 b020 	str.w	fp, [r5, #32]
   83860:	f8c5 a024 	str.w	sl, [r5, #36]	; 0x24
   83864:	f8c5 9028 	str.w	r9, [r5, #40]	; 0x28
   83868:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
   8386c:	63bb      	str	r3, [r7, #56]	; 0x38
   8386e:	b003      	add	sp, #12
   83870:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   83874:	00083789 	.word	0x00083789
   83878:	00084b9d 	.word	0x00084b9d
   8387c:	00084bc1 	.word	0x00084bc1
   83880:	00084bf9 	.word	0x00084bf9
   83884:	00084c19 	.word	0x00084c19

00083888 <__sfp_lock_acquire>:
   83888:	4770      	bx	lr
   8388a:	bf00      	nop

0008388c <__sfp_lock_release>:
   8388c:	4770      	bx	lr
   8388e:	bf00      	nop

00083890 <__libc_fini_array>:
   83890:	b538      	push	{r3, r4, r5, lr}
   83892:	4d09      	ldr	r5, [pc, #36]	; (838b8 <__libc_fini_array+0x28>)
   83894:	4c09      	ldr	r4, [pc, #36]	; (838bc <__libc_fini_array+0x2c>)
   83896:	1b64      	subs	r4, r4, r5
   83898:	10a4      	asrs	r4, r4, #2
   8389a:	bf18      	it	ne
   8389c:	eb05 0584 	addne.w	r5, r5, r4, lsl #2
   838a0:	d005      	beq.n	838ae <__libc_fini_array+0x1e>
   838a2:	3c01      	subs	r4, #1
   838a4:	f855 3d04 	ldr.w	r3, [r5, #-4]!
   838a8:	4798      	blx	r3
   838aa:	2c00      	cmp	r4, #0
   838ac:	d1f9      	bne.n	838a2 <__libc_fini_array+0x12>
   838ae:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
   838b2:	f002 bc9f 	b.w	861f4 <_fini>
   838b6:	bf00      	nop
   838b8:	00086200 	.word	0x00086200
   838bc:	00086204 	.word	0x00086204

000838c0 <_fputwc_r>:
   838c0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   838c4:	8993      	ldrh	r3, [r2, #12]
   838c6:	460f      	mov	r7, r1
   838c8:	0499      	lsls	r1, r3, #18
   838ca:	b082      	sub	sp, #8
   838cc:	4614      	mov	r4, r2
   838ce:	4680      	mov	r8, r0
   838d0:	d406      	bmi.n	838e0 <_fputwc_r+0x20>
   838d2:	6e52      	ldr	r2, [r2, #100]	; 0x64
   838d4:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
   838d8:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
   838dc:	81a3      	strh	r3, [r4, #12]
   838de:	6662      	str	r2, [r4, #100]	; 0x64
   838e0:	f000 fb1a 	bl	83f18 <__locale_mb_cur_max>
   838e4:	2801      	cmp	r0, #1
   838e6:	d03e      	beq.n	83966 <_fputwc_r+0xa6>
   838e8:	463a      	mov	r2, r7
   838ea:	4640      	mov	r0, r8
   838ec:	a901      	add	r1, sp, #4
   838ee:	f104 035c 	add.w	r3, r4, #92	; 0x5c
   838f2:	f001 f9e9 	bl	84cc8 <_wcrtomb_r>
   838f6:	1c42      	adds	r2, r0, #1
   838f8:	4606      	mov	r6, r0
   838fa:	d02d      	beq.n	83958 <_fputwc_r+0x98>
   838fc:	2800      	cmp	r0, #0
   838fe:	d03a      	beq.n	83976 <_fputwc_r+0xb6>
   83900:	f89d 1004 	ldrb.w	r1, [sp, #4]
   83904:	2500      	movs	r5, #0
   83906:	e009      	b.n	8391c <_fputwc_r+0x5c>
   83908:	6823      	ldr	r3, [r4, #0]
   8390a:	7019      	strb	r1, [r3, #0]
   8390c:	6823      	ldr	r3, [r4, #0]
   8390e:	3301      	adds	r3, #1
   83910:	6023      	str	r3, [r4, #0]
   83912:	3501      	adds	r5, #1
   83914:	42b5      	cmp	r5, r6
   83916:	d22e      	bcs.n	83976 <_fputwc_r+0xb6>
   83918:	ab01      	add	r3, sp, #4
   8391a:	5ce9      	ldrb	r1, [r5, r3]
   8391c:	68a3      	ldr	r3, [r4, #8]
   8391e:	3b01      	subs	r3, #1
   83920:	2b00      	cmp	r3, #0
   83922:	60a3      	str	r3, [r4, #8]
   83924:	daf0      	bge.n	83908 <_fputwc_r+0x48>
   83926:	69a2      	ldr	r2, [r4, #24]
   83928:	4293      	cmp	r3, r2
   8392a:	db06      	blt.n	8393a <_fputwc_r+0x7a>
   8392c:	6823      	ldr	r3, [r4, #0]
   8392e:	7019      	strb	r1, [r3, #0]
   83930:	6823      	ldr	r3, [r4, #0]
   83932:	7819      	ldrb	r1, [r3, #0]
   83934:	3301      	adds	r3, #1
   83936:	290a      	cmp	r1, #10
   83938:	d1ea      	bne.n	83910 <_fputwc_r+0x50>
   8393a:	4640      	mov	r0, r8
   8393c:	4622      	mov	r2, r4
   8393e:	f001 f96f 	bl	84c20 <__swbuf_r>
   83942:	f1b0 33ff 	subs.w	r3, r0, #4294967295	; 0xffffffff
   83946:	4258      	negs	r0, r3
   83948:	4158      	adcs	r0, r3
   8394a:	2800      	cmp	r0, #0
   8394c:	d0e1      	beq.n	83912 <_fputwc_r+0x52>
   8394e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   83952:	b002      	add	sp, #8
   83954:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83958:	89a3      	ldrh	r3, [r4, #12]
   8395a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   8395e:	81a3      	strh	r3, [r4, #12]
   83960:	b002      	add	sp, #8
   83962:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83966:	1e7b      	subs	r3, r7, #1
   83968:	2bfe      	cmp	r3, #254	; 0xfe
   8396a:	d8bd      	bhi.n	838e8 <_fputwc_r+0x28>
   8396c:	b2f9      	uxtb	r1, r7
   8396e:	4606      	mov	r6, r0
   83970:	f88d 1004 	strb.w	r1, [sp, #4]
   83974:	e7c6      	b.n	83904 <_fputwc_r+0x44>
   83976:	4638      	mov	r0, r7
   83978:	b002      	add	sp, #8
   8397a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   8397e:	bf00      	nop

00083980 <_malloc_trim_r>:
   83980:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   83982:	4d23      	ldr	r5, [pc, #140]	; (83a10 <_malloc_trim_r+0x90>)
   83984:	460f      	mov	r7, r1
   83986:	4604      	mov	r4, r0
   83988:	f000 fefe 	bl	84788 <__malloc_lock>
   8398c:	68ab      	ldr	r3, [r5, #8]
   8398e:	685e      	ldr	r6, [r3, #4]
   83990:	f026 0603 	bic.w	r6, r6, #3
   83994:	1bf1      	subs	r1, r6, r7
   83996:	f601 71ef 	addw	r1, r1, #4079	; 0xfef
   8399a:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
   8399e:	f021 010f 	bic.w	r1, r1, #15
   839a2:	f5a1 5780 	sub.w	r7, r1, #4096	; 0x1000
   839a6:	f5b7 5f80 	cmp.w	r7, #4096	; 0x1000
   839aa:	db07      	blt.n	839bc <_malloc_trim_r+0x3c>
   839ac:	4620      	mov	r0, r4
   839ae:	2100      	movs	r1, #0
   839b0:	f001 f8ce 	bl	84b50 <_sbrk_r>
   839b4:	68ab      	ldr	r3, [r5, #8]
   839b6:	4433      	add	r3, r6
   839b8:	4298      	cmp	r0, r3
   839ba:	d004      	beq.n	839c6 <_malloc_trim_r+0x46>
   839bc:	4620      	mov	r0, r4
   839be:	f000 fee5 	bl	8478c <__malloc_unlock>
   839c2:	2000      	movs	r0, #0
   839c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   839c6:	4620      	mov	r0, r4
   839c8:	4279      	negs	r1, r7
   839ca:	f001 f8c1 	bl	84b50 <_sbrk_r>
   839ce:	3001      	adds	r0, #1
   839d0:	d00d      	beq.n	839ee <_malloc_trim_r+0x6e>
   839d2:	4b10      	ldr	r3, [pc, #64]	; (83a14 <_malloc_trim_r+0x94>)
   839d4:	68aa      	ldr	r2, [r5, #8]
   839d6:	6819      	ldr	r1, [r3, #0]
   839d8:	1bf6      	subs	r6, r6, r7
   839da:	f046 0601 	orr.w	r6, r6, #1
   839de:	4620      	mov	r0, r4
   839e0:	1bc9      	subs	r1, r1, r7
   839e2:	6056      	str	r6, [r2, #4]
   839e4:	6019      	str	r1, [r3, #0]
   839e6:	f000 fed1 	bl	8478c <__malloc_unlock>
   839ea:	2001      	movs	r0, #1
   839ec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   839ee:	4620      	mov	r0, r4
   839f0:	2100      	movs	r1, #0
   839f2:	f001 f8ad 	bl	84b50 <_sbrk_r>
   839f6:	68ab      	ldr	r3, [r5, #8]
   839f8:	1ac2      	subs	r2, r0, r3
   839fa:	2a0f      	cmp	r2, #15
   839fc:	ddde      	ble.n	839bc <_malloc_trim_r+0x3c>
   839fe:	4d06      	ldr	r5, [pc, #24]	; (83a18 <_malloc_trim_r+0x98>)
   83a00:	4904      	ldr	r1, [pc, #16]	; (83a14 <_malloc_trim_r+0x94>)
   83a02:	682d      	ldr	r5, [r5, #0]
   83a04:	f042 0201 	orr.w	r2, r2, #1
   83a08:	1b40      	subs	r0, r0, r5
   83a0a:	605a      	str	r2, [r3, #4]
   83a0c:	6008      	str	r0, [r1, #0]
   83a0e:	e7d5      	b.n	839bc <_malloc_trim_r+0x3c>
   83a10:	200704c0 	.word	0x200704c0
   83a14:	200712dc 	.word	0x200712dc
   83a18:	200708cc 	.word	0x200708cc

00083a1c <_free_r>:
   83a1c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   83a20:	460d      	mov	r5, r1
   83a22:	4606      	mov	r6, r0
   83a24:	2900      	cmp	r1, #0
   83a26:	d055      	beq.n	83ad4 <_free_r+0xb8>
   83a28:	f000 feae 	bl	84788 <__malloc_lock>
   83a2c:	f855 1c04 	ldr.w	r1, [r5, #-4]
   83a30:	f8df c170 	ldr.w	ip, [pc, #368]	; 83ba4 <_free_r+0x188>
   83a34:	f1a5 0408 	sub.w	r4, r5, #8
   83a38:	f021 0301 	bic.w	r3, r1, #1
   83a3c:	18e2      	adds	r2, r4, r3
   83a3e:	f8dc 0008 	ldr.w	r0, [ip, #8]
   83a42:	6857      	ldr	r7, [r2, #4]
   83a44:	4290      	cmp	r0, r2
   83a46:	f027 0703 	bic.w	r7, r7, #3
   83a4a:	d068      	beq.n	83b1e <_free_r+0x102>
   83a4c:	f011 0101 	ands.w	r1, r1, #1
   83a50:	6057      	str	r7, [r2, #4]
   83a52:	d032      	beq.n	83aba <_free_r+0x9e>
   83a54:	2100      	movs	r1, #0
   83a56:	19d0      	adds	r0, r2, r7
   83a58:	6840      	ldr	r0, [r0, #4]
   83a5a:	07c0      	lsls	r0, r0, #31
   83a5c:	d406      	bmi.n	83a6c <_free_r+0x50>
   83a5e:	443b      	add	r3, r7
   83a60:	6890      	ldr	r0, [r2, #8]
   83a62:	2900      	cmp	r1, #0
   83a64:	d04d      	beq.n	83b02 <_free_r+0xe6>
   83a66:	68d2      	ldr	r2, [r2, #12]
   83a68:	60c2      	str	r2, [r0, #12]
   83a6a:	6090      	str	r0, [r2, #8]
   83a6c:	f043 0201 	orr.w	r2, r3, #1
   83a70:	6062      	str	r2, [r4, #4]
   83a72:	50e3      	str	r3, [r4, r3]
   83a74:	b9e1      	cbnz	r1, 83ab0 <_free_r+0x94>
   83a76:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
   83a7a:	d32d      	bcc.n	83ad8 <_free_r+0xbc>
   83a7c:	0a5a      	lsrs	r2, r3, #9
   83a7e:	2a04      	cmp	r2, #4
   83a80:	d869      	bhi.n	83b56 <_free_r+0x13a>
   83a82:	0998      	lsrs	r0, r3, #6
   83a84:	3038      	adds	r0, #56	; 0x38
   83a86:	0041      	lsls	r1, r0, #1
   83a88:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
   83a8c:	f8dc 2008 	ldr.w	r2, [ip, #8]
   83a90:	4944      	ldr	r1, [pc, #272]	; (83ba4 <_free_r+0x188>)
   83a92:	4562      	cmp	r2, ip
   83a94:	d065      	beq.n	83b62 <_free_r+0x146>
   83a96:	6851      	ldr	r1, [r2, #4]
   83a98:	f021 0103 	bic.w	r1, r1, #3
   83a9c:	428b      	cmp	r3, r1
   83a9e:	d202      	bcs.n	83aa6 <_free_r+0x8a>
   83aa0:	6892      	ldr	r2, [r2, #8]
   83aa2:	4594      	cmp	ip, r2
   83aa4:	d1f7      	bne.n	83a96 <_free_r+0x7a>
   83aa6:	68d3      	ldr	r3, [r2, #12]
   83aa8:	60e3      	str	r3, [r4, #12]
   83aaa:	60a2      	str	r2, [r4, #8]
   83aac:	609c      	str	r4, [r3, #8]
   83aae:	60d4      	str	r4, [r2, #12]
   83ab0:	4630      	mov	r0, r6
   83ab2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
   83ab6:	f000 be69 	b.w	8478c <__malloc_unlock>
   83aba:	f855 5c08 	ldr.w	r5, [r5, #-8]
   83abe:	f10c 0808 	add.w	r8, ip, #8
   83ac2:	1b64      	subs	r4, r4, r5
   83ac4:	68a0      	ldr	r0, [r4, #8]
   83ac6:	442b      	add	r3, r5
   83ac8:	4540      	cmp	r0, r8
   83aca:	d042      	beq.n	83b52 <_free_r+0x136>
   83acc:	68e5      	ldr	r5, [r4, #12]
   83ace:	60c5      	str	r5, [r0, #12]
   83ad0:	60a8      	str	r0, [r5, #8]
   83ad2:	e7c0      	b.n	83a56 <_free_r+0x3a>
   83ad4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83ad8:	08db      	lsrs	r3, r3, #3
   83ada:	109a      	asrs	r2, r3, #2
   83adc:	2001      	movs	r0, #1
   83ade:	4090      	lsls	r0, r2
   83ae0:	f8dc 1004 	ldr.w	r1, [ip, #4]
   83ae4:	eb0c 03c3 	add.w	r3, ip, r3, lsl #3
   83ae8:	689a      	ldr	r2, [r3, #8]
   83aea:	4301      	orrs	r1, r0
   83aec:	60a2      	str	r2, [r4, #8]
   83aee:	60e3      	str	r3, [r4, #12]
   83af0:	f8cc 1004 	str.w	r1, [ip, #4]
   83af4:	4630      	mov	r0, r6
   83af6:	609c      	str	r4, [r3, #8]
   83af8:	60d4      	str	r4, [r2, #12]
   83afa:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
   83afe:	f000 be45 	b.w	8478c <__malloc_unlock>
   83b02:	4d29      	ldr	r5, [pc, #164]	; (83ba8 <_free_r+0x18c>)
   83b04:	42a8      	cmp	r0, r5
   83b06:	d1ae      	bne.n	83a66 <_free_r+0x4a>
   83b08:	f043 0201 	orr.w	r2, r3, #1
   83b0c:	f8cc 4014 	str.w	r4, [ip, #20]
   83b10:	f8cc 4010 	str.w	r4, [ip, #16]
   83b14:	60e0      	str	r0, [r4, #12]
   83b16:	60a0      	str	r0, [r4, #8]
   83b18:	6062      	str	r2, [r4, #4]
   83b1a:	50e3      	str	r3, [r4, r3]
   83b1c:	e7c8      	b.n	83ab0 <_free_r+0x94>
   83b1e:	441f      	add	r7, r3
   83b20:	07cb      	lsls	r3, r1, #31
   83b22:	d407      	bmi.n	83b34 <_free_r+0x118>
   83b24:	f855 1c08 	ldr.w	r1, [r5, #-8]
   83b28:	1a64      	subs	r4, r4, r1
   83b2a:	68e3      	ldr	r3, [r4, #12]
   83b2c:	68a2      	ldr	r2, [r4, #8]
   83b2e:	440f      	add	r7, r1
   83b30:	60d3      	str	r3, [r2, #12]
   83b32:	609a      	str	r2, [r3, #8]
   83b34:	4b1d      	ldr	r3, [pc, #116]	; (83bac <_free_r+0x190>)
   83b36:	f047 0201 	orr.w	r2, r7, #1
   83b3a:	681b      	ldr	r3, [r3, #0]
   83b3c:	6062      	str	r2, [r4, #4]
   83b3e:	429f      	cmp	r7, r3
   83b40:	f8cc 4008 	str.w	r4, [ip, #8]
   83b44:	d3b4      	bcc.n	83ab0 <_free_r+0x94>
   83b46:	4b1a      	ldr	r3, [pc, #104]	; (83bb0 <_free_r+0x194>)
   83b48:	4630      	mov	r0, r6
   83b4a:	6819      	ldr	r1, [r3, #0]
   83b4c:	f7ff ff18 	bl	83980 <_malloc_trim_r>
   83b50:	e7ae      	b.n	83ab0 <_free_r+0x94>
   83b52:	2101      	movs	r1, #1
   83b54:	e77f      	b.n	83a56 <_free_r+0x3a>
   83b56:	2a14      	cmp	r2, #20
   83b58:	d80b      	bhi.n	83b72 <_free_r+0x156>
   83b5a:	f102 005b 	add.w	r0, r2, #91	; 0x5b
   83b5e:	0041      	lsls	r1, r0, #1
   83b60:	e792      	b.n	83a88 <_free_r+0x6c>
   83b62:	1080      	asrs	r0, r0, #2
   83b64:	2501      	movs	r5, #1
   83b66:	4085      	lsls	r5, r0
   83b68:	6848      	ldr	r0, [r1, #4]
   83b6a:	4613      	mov	r3, r2
   83b6c:	4328      	orrs	r0, r5
   83b6e:	6048      	str	r0, [r1, #4]
   83b70:	e79a      	b.n	83aa8 <_free_r+0x8c>
   83b72:	2a54      	cmp	r2, #84	; 0x54
   83b74:	d803      	bhi.n	83b7e <_free_r+0x162>
   83b76:	0b18      	lsrs	r0, r3, #12
   83b78:	306e      	adds	r0, #110	; 0x6e
   83b7a:	0041      	lsls	r1, r0, #1
   83b7c:	e784      	b.n	83a88 <_free_r+0x6c>
   83b7e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
   83b82:	d803      	bhi.n	83b8c <_free_r+0x170>
   83b84:	0bd8      	lsrs	r0, r3, #15
   83b86:	3077      	adds	r0, #119	; 0x77
   83b88:	0041      	lsls	r1, r0, #1
   83b8a:	e77d      	b.n	83a88 <_free_r+0x6c>
   83b8c:	f240 5154 	movw	r1, #1364	; 0x554
   83b90:	428a      	cmp	r2, r1
   83b92:	d803      	bhi.n	83b9c <_free_r+0x180>
   83b94:	0c98      	lsrs	r0, r3, #18
   83b96:	307c      	adds	r0, #124	; 0x7c
   83b98:	0041      	lsls	r1, r0, #1
   83b9a:	e775      	b.n	83a88 <_free_r+0x6c>
   83b9c:	21fc      	movs	r1, #252	; 0xfc
   83b9e:	207e      	movs	r0, #126	; 0x7e
   83ba0:	e772      	b.n	83a88 <_free_r+0x6c>
   83ba2:	bf00      	nop
   83ba4:	200704c0 	.word	0x200704c0
   83ba8:	200704c8 	.word	0x200704c8
   83bac:	200708c8 	.word	0x200708c8
   83bb0:	200712d8 	.word	0x200712d8

00083bb4 <__sfvwrite_r>:
   83bb4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   83bb8:	6893      	ldr	r3, [r2, #8]
   83bba:	b083      	sub	sp, #12
   83bbc:	4616      	mov	r6, r2
   83bbe:	4681      	mov	r9, r0
   83bc0:	460c      	mov	r4, r1
   83bc2:	b32b      	cbz	r3, 83c10 <__sfvwrite_r+0x5c>
   83bc4:	898b      	ldrh	r3, [r1, #12]
   83bc6:	0719      	lsls	r1, r3, #28
   83bc8:	d526      	bpl.n	83c18 <__sfvwrite_r+0x64>
   83bca:	6922      	ldr	r2, [r4, #16]
   83bcc:	b322      	cbz	r2, 83c18 <__sfvwrite_r+0x64>
   83bce:	f003 0202 	and.w	r2, r3, #2
   83bd2:	b292      	uxth	r2, r2
   83bd4:	6835      	ldr	r5, [r6, #0]
   83bd6:	2a00      	cmp	r2, #0
   83bd8:	d02c      	beq.n	83c34 <__sfvwrite_r+0x80>
   83bda:	f04f 0a00 	mov.w	sl, #0
   83bde:	f8df b2e4 	ldr.w	fp, [pc, #740]	; 83ec4 <__sfvwrite_r+0x310>
   83be2:	46d0      	mov	r8, sl
   83be4:	45d8      	cmp	r8, fp
   83be6:	bf34      	ite	cc
   83be8:	4643      	movcc	r3, r8
   83bea:	465b      	movcs	r3, fp
   83bec:	4652      	mov	r2, sl
   83bee:	4648      	mov	r0, r9
   83bf0:	f1b8 0f00 	cmp.w	r8, #0
   83bf4:	d04f      	beq.n	83c96 <__sfvwrite_r+0xe2>
   83bf6:	69e1      	ldr	r1, [r4, #28]
   83bf8:	6a67      	ldr	r7, [r4, #36]	; 0x24
   83bfa:	47b8      	blx	r7
   83bfc:	2800      	cmp	r0, #0
   83bfe:	dd56      	ble.n	83cae <__sfvwrite_r+0xfa>
   83c00:	68b3      	ldr	r3, [r6, #8]
   83c02:	4482      	add	sl, r0
   83c04:	1a1b      	subs	r3, r3, r0
   83c06:	ebc0 0808 	rsb	r8, r0, r8
   83c0a:	60b3      	str	r3, [r6, #8]
   83c0c:	2b00      	cmp	r3, #0
   83c0e:	d1e9      	bne.n	83be4 <__sfvwrite_r+0x30>
   83c10:	2000      	movs	r0, #0
   83c12:	b003      	add	sp, #12
   83c14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   83c18:	4648      	mov	r0, r9
   83c1a:	4621      	mov	r1, r4
   83c1c:	f7ff fc88 	bl	83530 <__swsetup_r>
   83c20:	2800      	cmp	r0, #0
   83c22:	f040 8146 	bne.w	83eb2 <__sfvwrite_r+0x2fe>
   83c26:	89a3      	ldrh	r3, [r4, #12]
   83c28:	6835      	ldr	r5, [r6, #0]
   83c2a:	f003 0202 	and.w	r2, r3, #2
   83c2e:	b292      	uxth	r2, r2
   83c30:	2a00      	cmp	r2, #0
   83c32:	d1d2      	bne.n	83bda <__sfvwrite_r+0x26>
   83c34:	f013 0a01 	ands.w	sl, r3, #1
   83c38:	d142      	bne.n	83cc0 <__sfvwrite_r+0x10c>
   83c3a:	46d0      	mov	r8, sl
   83c3c:	f1b8 0f00 	cmp.w	r8, #0
   83c40:	d023      	beq.n	83c8a <__sfvwrite_r+0xd6>
   83c42:	059a      	lsls	r2, r3, #22
   83c44:	68a7      	ldr	r7, [r4, #8]
   83c46:	d576      	bpl.n	83d36 <__sfvwrite_r+0x182>
   83c48:	45b8      	cmp	r8, r7
   83c4a:	f0c0 80a4 	bcc.w	83d96 <__sfvwrite_r+0x1e2>
   83c4e:	f413 6f90 	tst.w	r3, #1152	; 0x480
   83c52:	f040 80b2 	bne.w	83dba <__sfvwrite_r+0x206>
   83c56:	6820      	ldr	r0, [r4, #0]
   83c58:	46bb      	mov	fp, r7
   83c5a:	4651      	mov	r1, sl
   83c5c:	465a      	mov	r2, fp
   83c5e:	f000 fd2d 	bl	846bc <memmove>
   83c62:	68a2      	ldr	r2, [r4, #8]
   83c64:	6821      	ldr	r1, [r4, #0]
   83c66:	1bd2      	subs	r2, r2, r7
   83c68:	eb01 030b 	add.w	r3, r1, fp
   83c6c:	60a2      	str	r2, [r4, #8]
   83c6e:	6023      	str	r3, [r4, #0]
   83c70:	4642      	mov	r2, r8
   83c72:	68b3      	ldr	r3, [r6, #8]
   83c74:	4492      	add	sl, r2
   83c76:	1a9b      	subs	r3, r3, r2
   83c78:	ebc2 0808 	rsb	r8, r2, r8
   83c7c:	60b3      	str	r3, [r6, #8]
   83c7e:	2b00      	cmp	r3, #0
   83c80:	d0c6      	beq.n	83c10 <__sfvwrite_r+0x5c>
   83c82:	89a3      	ldrh	r3, [r4, #12]
   83c84:	f1b8 0f00 	cmp.w	r8, #0
   83c88:	d1db      	bne.n	83c42 <__sfvwrite_r+0x8e>
   83c8a:	f8d5 a000 	ldr.w	sl, [r5]
   83c8e:	f8d5 8004 	ldr.w	r8, [r5, #4]
   83c92:	3508      	adds	r5, #8
   83c94:	e7d2      	b.n	83c3c <__sfvwrite_r+0x88>
   83c96:	f8d5 a000 	ldr.w	sl, [r5]
   83c9a:	f8d5 8004 	ldr.w	r8, [r5, #4]
   83c9e:	3508      	adds	r5, #8
   83ca0:	e7a0      	b.n	83be4 <__sfvwrite_r+0x30>
   83ca2:	4648      	mov	r0, r9
   83ca4:	4621      	mov	r1, r4
   83ca6:	f7ff fd59 	bl	8375c <_fflush_r>
   83caa:	2800      	cmp	r0, #0
   83cac:	d059      	beq.n	83d62 <__sfvwrite_r+0x1ae>
   83cae:	89a3      	ldrh	r3, [r4, #12]
   83cb0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   83cb4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   83cb8:	81a3      	strh	r3, [r4, #12]
   83cba:	b003      	add	sp, #12
   83cbc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   83cc0:	4692      	mov	sl, r2
   83cc2:	9201      	str	r2, [sp, #4]
   83cc4:	4693      	mov	fp, r2
   83cc6:	4690      	mov	r8, r2
   83cc8:	f1b8 0f00 	cmp.w	r8, #0
   83ccc:	d02b      	beq.n	83d26 <__sfvwrite_r+0x172>
   83cce:	9f01      	ldr	r7, [sp, #4]
   83cd0:	2f00      	cmp	r7, #0
   83cd2:	d064      	beq.n	83d9e <__sfvwrite_r+0x1ea>
   83cd4:	6820      	ldr	r0, [r4, #0]
   83cd6:	6921      	ldr	r1, [r4, #16]
   83cd8:	45c2      	cmp	sl, r8
   83cda:	bf34      	ite	cc
   83cdc:	4653      	movcc	r3, sl
   83cde:	4643      	movcs	r3, r8
   83ce0:	4288      	cmp	r0, r1
   83ce2:	461f      	mov	r7, r3
   83ce4:	f8d4 c008 	ldr.w	ip, [r4, #8]
   83ce8:	6962      	ldr	r2, [r4, #20]
   83cea:	d903      	bls.n	83cf4 <__sfvwrite_r+0x140>
   83cec:	4494      	add	ip, r2
   83cee:	4563      	cmp	r3, ip
   83cf0:	f300 80ae 	bgt.w	83e50 <__sfvwrite_r+0x29c>
   83cf4:	4293      	cmp	r3, r2
   83cf6:	db36      	blt.n	83d66 <__sfvwrite_r+0x1b2>
   83cf8:	4613      	mov	r3, r2
   83cfa:	6a67      	ldr	r7, [r4, #36]	; 0x24
   83cfc:	4648      	mov	r0, r9
   83cfe:	69e1      	ldr	r1, [r4, #28]
   83d00:	465a      	mov	r2, fp
   83d02:	47b8      	blx	r7
   83d04:	1e07      	subs	r7, r0, #0
   83d06:	ddd2      	ble.n	83cae <__sfvwrite_r+0xfa>
   83d08:	ebba 0a07 	subs.w	sl, sl, r7
   83d0c:	d03a      	beq.n	83d84 <__sfvwrite_r+0x1d0>
   83d0e:	68b3      	ldr	r3, [r6, #8]
   83d10:	44bb      	add	fp, r7
   83d12:	1bdb      	subs	r3, r3, r7
   83d14:	ebc7 0808 	rsb	r8, r7, r8
   83d18:	60b3      	str	r3, [r6, #8]
   83d1a:	2b00      	cmp	r3, #0
   83d1c:	f43f af78 	beq.w	83c10 <__sfvwrite_r+0x5c>
   83d20:	f1b8 0f00 	cmp.w	r8, #0
   83d24:	d1d3      	bne.n	83cce <__sfvwrite_r+0x11a>
   83d26:	2700      	movs	r7, #0
   83d28:	f8d5 b000 	ldr.w	fp, [r5]
   83d2c:	f8d5 8004 	ldr.w	r8, [r5, #4]
   83d30:	9701      	str	r7, [sp, #4]
   83d32:	3508      	adds	r5, #8
   83d34:	e7c8      	b.n	83cc8 <__sfvwrite_r+0x114>
   83d36:	6820      	ldr	r0, [r4, #0]
   83d38:	6923      	ldr	r3, [r4, #16]
   83d3a:	4298      	cmp	r0, r3
   83d3c:	d802      	bhi.n	83d44 <__sfvwrite_r+0x190>
   83d3e:	6963      	ldr	r3, [r4, #20]
   83d40:	4598      	cmp	r8, r3
   83d42:	d272      	bcs.n	83e2a <__sfvwrite_r+0x276>
   83d44:	45b8      	cmp	r8, r7
   83d46:	bf38      	it	cc
   83d48:	4647      	movcc	r7, r8
   83d4a:	463a      	mov	r2, r7
   83d4c:	4651      	mov	r1, sl
   83d4e:	f000 fcb5 	bl	846bc <memmove>
   83d52:	68a3      	ldr	r3, [r4, #8]
   83d54:	6822      	ldr	r2, [r4, #0]
   83d56:	1bdb      	subs	r3, r3, r7
   83d58:	443a      	add	r2, r7
   83d5a:	60a3      	str	r3, [r4, #8]
   83d5c:	6022      	str	r2, [r4, #0]
   83d5e:	2b00      	cmp	r3, #0
   83d60:	d09f      	beq.n	83ca2 <__sfvwrite_r+0xee>
   83d62:	463a      	mov	r2, r7
   83d64:	e785      	b.n	83c72 <__sfvwrite_r+0xbe>
   83d66:	461a      	mov	r2, r3
   83d68:	4659      	mov	r1, fp
   83d6a:	9300      	str	r3, [sp, #0]
   83d6c:	f000 fca6 	bl	846bc <memmove>
   83d70:	9b00      	ldr	r3, [sp, #0]
   83d72:	68a1      	ldr	r1, [r4, #8]
   83d74:	6822      	ldr	r2, [r4, #0]
   83d76:	1ac9      	subs	r1, r1, r3
   83d78:	ebba 0a07 	subs.w	sl, sl, r7
   83d7c:	4413      	add	r3, r2
   83d7e:	60a1      	str	r1, [r4, #8]
   83d80:	6023      	str	r3, [r4, #0]
   83d82:	d1c4      	bne.n	83d0e <__sfvwrite_r+0x15a>
   83d84:	4648      	mov	r0, r9
   83d86:	4621      	mov	r1, r4
   83d88:	f7ff fce8 	bl	8375c <_fflush_r>
   83d8c:	2800      	cmp	r0, #0
   83d8e:	d18e      	bne.n	83cae <__sfvwrite_r+0xfa>
   83d90:	f8cd a004 	str.w	sl, [sp, #4]
   83d94:	e7bb      	b.n	83d0e <__sfvwrite_r+0x15a>
   83d96:	6820      	ldr	r0, [r4, #0]
   83d98:	4647      	mov	r7, r8
   83d9a:	46c3      	mov	fp, r8
   83d9c:	e75d      	b.n	83c5a <__sfvwrite_r+0xa6>
   83d9e:	4658      	mov	r0, fp
   83da0:	210a      	movs	r1, #10
   83da2:	4642      	mov	r2, r8
   83da4:	f000 fbca 	bl	8453c <memchr>
   83da8:	2800      	cmp	r0, #0
   83daa:	d07d      	beq.n	83ea8 <__sfvwrite_r+0x2f4>
   83dac:	f100 0a01 	add.w	sl, r0, #1
   83db0:	2701      	movs	r7, #1
   83db2:	ebcb 0a0a 	rsb	sl, fp, sl
   83db6:	9701      	str	r7, [sp, #4]
   83db8:	e78c      	b.n	83cd4 <__sfvwrite_r+0x120>
   83dba:	6822      	ldr	r2, [r4, #0]
   83dbc:	6921      	ldr	r1, [r4, #16]
   83dbe:	6967      	ldr	r7, [r4, #20]
   83dc0:	ebc1 0c02 	rsb	ip, r1, r2
   83dc4:	eb07 0747 	add.w	r7, r7, r7, lsl #1
   83dc8:	f10c 0201 	add.w	r2, ip, #1
   83dcc:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
   83dd0:	4442      	add	r2, r8
   83dd2:	107f      	asrs	r7, r7, #1
   83dd4:	4297      	cmp	r7, r2
   83dd6:	bf34      	ite	cc
   83dd8:	4617      	movcc	r7, r2
   83dda:	463a      	movcs	r2, r7
   83ddc:	055b      	lsls	r3, r3, #21
   83dde:	d54d      	bpl.n	83e7c <__sfvwrite_r+0x2c8>
   83de0:	4611      	mov	r1, r2
   83de2:	4648      	mov	r0, r9
   83de4:	f8cd c000 	str.w	ip, [sp]
   83de8:	f000 f90c 	bl	84004 <_malloc_r>
   83dec:	f8dd c000 	ldr.w	ip, [sp]
   83df0:	4683      	mov	fp, r0
   83df2:	2800      	cmp	r0, #0
   83df4:	d060      	beq.n	83eb8 <__sfvwrite_r+0x304>
   83df6:	4662      	mov	r2, ip
   83df8:	6921      	ldr	r1, [r4, #16]
   83dfa:	f8cd c000 	str.w	ip, [sp]
   83dfe:	f000 fbe7 	bl	845d0 <memcpy>
   83e02:	89a2      	ldrh	r2, [r4, #12]
   83e04:	f8dd c000 	ldr.w	ip, [sp]
   83e08:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
   83e0c:	f042 0280 	orr.w	r2, r2, #128	; 0x80
   83e10:	81a2      	strh	r2, [r4, #12]
   83e12:	eb0b 000c 	add.w	r0, fp, ip
   83e16:	ebcc 0207 	rsb	r2, ip, r7
   83e1a:	f8c4 b010 	str.w	fp, [r4, #16]
   83e1e:	6167      	str	r7, [r4, #20]
   83e20:	6020      	str	r0, [r4, #0]
   83e22:	60a2      	str	r2, [r4, #8]
   83e24:	4647      	mov	r7, r8
   83e26:	46c3      	mov	fp, r8
   83e28:	e717      	b.n	83c5a <__sfvwrite_r+0xa6>
   83e2a:	f06f 4200 	mvn.w	r2, #2147483648	; 0x80000000
   83e2e:	4590      	cmp	r8, r2
   83e30:	bf38      	it	cc
   83e32:	4642      	movcc	r2, r8
   83e34:	fb92 f2f3 	sdiv	r2, r2, r3
   83e38:	fb02 f303 	mul.w	r3, r2, r3
   83e3c:	6a67      	ldr	r7, [r4, #36]	; 0x24
   83e3e:	4648      	mov	r0, r9
   83e40:	69e1      	ldr	r1, [r4, #28]
   83e42:	4652      	mov	r2, sl
   83e44:	47b8      	blx	r7
   83e46:	2800      	cmp	r0, #0
   83e48:	f77f af31 	ble.w	83cae <__sfvwrite_r+0xfa>
   83e4c:	4602      	mov	r2, r0
   83e4e:	e710      	b.n	83c72 <__sfvwrite_r+0xbe>
   83e50:	4662      	mov	r2, ip
   83e52:	4659      	mov	r1, fp
   83e54:	f8cd c000 	str.w	ip, [sp]
   83e58:	f000 fc30 	bl	846bc <memmove>
   83e5c:	f8dd c000 	ldr.w	ip, [sp]
   83e60:	6823      	ldr	r3, [r4, #0]
   83e62:	4648      	mov	r0, r9
   83e64:	4463      	add	r3, ip
   83e66:	6023      	str	r3, [r4, #0]
   83e68:	4621      	mov	r1, r4
   83e6a:	f7ff fc77 	bl	8375c <_fflush_r>
   83e6e:	f8dd c000 	ldr.w	ip, [sp]
   83e72:	2800      	cmp	r0, #0
   83e74:	f47f af1b 	bne.w	83cae <__sfvwrite_r+0xfa>
   83e78:	4667      	mov	r7, ip
   83e7a:	e745      	b.n	83d08 <__sfvwrite_r+0x154>
   83e7c:	4648      	mov	r0, r9
   83e7e:	f8cd c000 	str.w	ip, [sp]
   83e82:	f000 fc85 	bl	84790 <_realloc_r>
   83e86:	f8dd c000 	ldr.w	ip, [sp]
   83e8a:	4683      	mov	fp, r0
   83e8c:	2800      	cmp	r0, #0
   83e8e:	d1c0      	bne.n	83e12 <__sfvwrite_r+0x25e>
   83e90:	4648      	mov	r0, r9
   83e92:	6921      	ldr	r1, [r4, #16]
   83e94:	f7ff fdc2 	bl	83a1c <_free_r>
   83e98:	89a3      	ldrh	r3, [r4, #12]
   83e9a:	220c      	movs	r2, #12
   83e9c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
   83ea0:	b29b      	uxth	r3, r3
   83ea2:	f8c9 2000 	str.w	r2, [r9]
   83ea6:	e703      	b.n	83cb0 <__sfvwrite_r+0xfc>
   83ea8:	2701      	movs	r7, #1
   83eaa:	f108 0a01 	add.w	sl, r8, #1
   83eae:	9701      	str	r7, [sp, #4]
   83eb0:	e710      	b.n	83cd4 <__sfvwrite_r+0x120>
   83eb2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   83eb6:	e6ac      	b.n	83c12 <__sfvwrite_r+0x5e>
   83eb8:	230c      	movs	r3, #12
   83eba:	f8c9 3000 	str.w	r3, [r9]
   83ebe:	89a3      	ldrh	r3, [r4, #12]
   83ec0:	e6f6      	b.n	83cb0 <__sfvwrite_r+0xfc>
   83ec2:	bf00      	nop
   83ec4:	7ffffc00 	.word	0x7ffffc00

00083ec8 <_fwalk>:
   83ec8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   83ecc:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
   83ed0:	4688      	mov	r8, r1
   83ed2:	d019      	beq.n	83f08 <_fwalk+0x40>
   83ed4:	2600      	movs	r6, #0
   83ed6:	687d      	ldr	r5, [r7, #4]
   83ed8:	68bc      	ldr	r4, [r7, #8]
   83eda:	3d01      	subs	r5, #1
   83edc:	d40e      	bmi.n	83efc <_fwalk+0x34>
   83ede:	89a3      	ldrh	r3, [r4, #12]
   83ee0:	3d01      	subs	r5, #1
   83ee2:	2b01      	cmp	r3, #1
   83ee4:	d906      	bls.n	83ef4 <_fwalk+0x2c>
   83ee6:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
   83eea:	4620      	mov	r0, r4
   83eec:	3301      	adds	r3, #1
   83eee:	d001      	beq.n	83ef4 <_fwalk+0x2c>
   83ef0:	47c0      	blx	r8
   83ef2:	4306      	orrs	r6, r0
   83ef4:	1c6b      	adds	r3, r5, #1
   83ef6:	f104 0468 	add.w	r4, r4, #104	; 0x68
   83efa:	d1f0      	bne.n	83ede <_fwalk+0x16>
   83efc:	683f      	ldr	r7, [r7, #0]
   83efe:	2f00      	cmp	r7, #0
   83f00:	d1e9      	bne.n	83ed6 <_fwalk+0xe>
   83f02:	4630      	mov	r0, r6
   83f04:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83f08:	463e      	mov	r6, r7
   83f0a:	4630      	mov	r0, r6
   83f0c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00083f10 <__locale_charset>:
   83f10:	4800      	ldr	r0, [pc, #0]	; (83f14 <__locale_charset+0x4>)
   83f12:	4770      	bx	lr
   83f14:	2007049c 	.word	0x2007049c

00083f18 <__locale_mb_cur_max>:
   83f18:	4b01      	ldr	r3, [pc, #4]	; (83f20 <__locale_mb_cur_max+0x8>)
   83f1a:	6818      	ldr	r0, [r3, #0]
   83f1c:	4770      	bx	lr
   83f1e:	bf00      	nop
   83f20:	200704bc 	.word	0x200704bc

00083f24 <__smakebuf_r>:
   83f24:	b5f0      	push	{r4, r5, r6, r7, lr}
   83f26:	898b      	ldrh	r3, [r1, #12]
   83f28:	b091      	sub	sp, #68	; 0x44
   83f2a:	b29a      	uxth	r2, r3
   83f2c:	0796      	lsls	r6, r2, #30
   83f2e:	460c      	mov	r4, r1
   83f30:	4605      	mov	r5, r0
   83f32:	d437      	bmi.n	83fa4 <__smakebuf_r+0x80>
   83f34:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
   83f38:	2900      	cmp	r1, #0
   83f3a:	db17      	blt.n	83f6c <__smakebuf_r+0x48>
   83f3c:	aa01      	add	r2, sp, #4
   83f3e:	f000 ffbb 	bl	84eb8 <_fstat_r>
   83f42:	2800      	cmp	r0, #0
   83f44:	db10      	blt.n	83f68 <__smakebuf_r+0x44>
   83f46:	9b02      	ldr	r3, [sp, #8]
   83f48:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
   83f4c:	f5b3 5100 	subs.w	r1, r3, #8192	; 0x2000
   83f50:	424f      	negs	r7, r1
   83f52:	414f      	adcs	r7, r1
   83f54:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
   83f58:	d02c      	beq.n	83fb4 <__smakebuf_r+0x90>
   83f5a:	89a3      	ldrh	r3, [r4, #12]
   83f5c:	f44f 6680 	mov.w	r6, #1024	; 0x400
   83f60:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
   83f64:	81a3      	strh	r3, [r4, #12]
   83f66:	e00b      	b.n	83f80 <__smakebuf_r+0x5c>
   83f68:	89a3      	ldrh	r3, [r4, #12]
   83f6a:	b29a      	uxth	r2, r3
   83f6c:	f012 0f80 	tst.w	r2, #128	; 0x80
   83f70:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
   83f74:	81a3      	strh	r3, [r4, #12]
   83f76:	bf14      	ite	ne
   83f78:	2640      	movne	r6, #64	; 0x40
   83f7a:	f44f 6680 	moveq.w	r6, #1024	; 0x400
   83f7e:	2700      	movs	r7, #0
   83f80:	4628      	mov	r0, r5
   83f82:	4631      	mov	r1, r6
   83f84:	f000 f83e 	bl	84004 <_malloc_r>
   83f88:	89a3      	ldrh	r3, [r4, #12]
   83f8a:	2800      	cmp	r0, #0
   83f8c:	d029      	beq.n	83fe2 <__smakebuf_r+0xbe>
   83f8e:	4a1b      	ldr	r2, [pc, #108]	; (83ffc <__smakebuf_r+0xd8>)
   83f90:	f043 0380 	orr.w	r3, r3, #128	; 0x80
   83f94:	63ea      	str	r2, [r5, #60]	; 0x3c
   83f96:	81a3      	strh	r3, [r4, #12]
   83f98:	6020      	str	r0, [r4, #0]
   83f9a:	6120      	str	r0, [r4, #16]
   83f9c:	6166      	str	r6, [r4, #20]
   83f9e:	b9a7      	cbnz	r7, 83fca <__smakebuf_r+0xa6>
   83fa0:	b011      	add	sp, #68	; 0x44
   83fa2:	bdf0      	pop	{r4, r5, r6, r7, pc}
   83fa4:	f101 0343 	add.w	r3, r1, #67	; 0x43
   83fa8:	2201      	movs	r2, #1
   83faa:	600b      	str	r3, [r1, #0]
   83fac:	610b      	str	r3, [r1, #16]
   83fae:	614a      	str	r2, [r1, #20]
   83fb0:	b011      	add	sp, #68	; 0x44
   83fb2:	bdf0      	pop	{r4, r5, r6, r7, pc}
   83fb4:	4a12      	ldr	r2, [pc, #72]	; (84000 <__smakebuf_r+0xdc>)
   83fb6:	6aa3      	ldr	r3, [r4, #40]	; 0x28
   83fb8:	4293      	cmp	r3, r2
   83fba:	d1ce      	bne.n	83f5a <__smakebuf_r+0x36>
   83fbc:	89a3      	ldrh	r3, [r4, #12]
   83fbe:	f44f 6680 	mov.w	r6, #1024	; 0x400
   83fc2:	4333      	orrs	r3, r6
   83fc4:	81a3      	strh	r3, [r4, #12]
   83fc6:	64e6      	str	r6, [r4, #76]	; 0x4c
   83fc8:	e7da      	b.n	83f80 <__smakebuf_r+0x5c>
   83fca:	4628      	mov	r0, r5
   83fcc:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
   83fd0:	f000 ff86 	bl	84ee0 <_isatty_r>
   83fd4:	2800      	cmp	r0, #0
   83fd6:	d0e3      	beq.n	83fa0 <__smakebuf_r+0x7c>
   83fd8:	89a3      	ldrh	r3, [r4, #12]
   83fda:	f043 0301 	orr.w	r3, r3, #1
   83fde:	81a3      	strh	r3, [r4, #12]
   83fe0:	e7de      	b.n	83fa0 <__smakebuf_r+0x7c>
   83fe2:	059a      	lsls	r2, r3, #22
   83fe4:	d4dc      	bmi.n	83fa0 <__smakebuf_r+0x7c>
   83fe6:	f104 0243 	add.w	r2, r4, #67	; 0x43
   83fea:	f043 0302 	orr.w	r3, r3, #2
   83fee:	2101      	movs	r1, #1
   83ff0:	81a3      	strh	r3, [r4, #12]
   83ff2:	6022      	str	r2, [r4, #0]
   83ff4:	6122      	str	r2, [r4, #16]
   83ff6:	6161      	str	r1, [r4, #20]
   83ff8:	e7d2      	b.n	83fa0 <__smakebuf_r+0x7c>
   83ffa:	bf00      	nop
   83ffc:	00083789 	.word	0x00083789
   84000:	00084bf9 	.word	0x00084bf9

00084004 <_malloc_r>:
   84004:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   84008:	f101 050b 	add.w	r5, r1, #11
   8400c:	2d16      	cmp	r5, #22
   8400e:	b083      	sub	sp, #12
   84010:	4606      	mov	r6, r0
   84012:	d927      	bls.n	84064 <_malloc_r+0x60>
   84014:	f035 0507 	bics.w	r5, r5, #7
   84018:	d427      	bmi.n	8406a <_malloc_r+0x66>
   8401a:	42a9      	cmp	r1, r5
   8401c:	d825      	bhi.n	8406a <_malloc_r+0x66>
   8401e:	4630      	mov	r0, r6
   84020:	f000 fbb2 	bl	84788 <__malloc_lock>
   84024:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
   84028:	d226      	bcs.n	84078 <_malloc_r+0x74>
   8402a:	4fc1      	ldr	r7, [pc, #772]	; (84330 <_malloc_r+0x32c>)
   8402c:	ea4f 0cd5 	mov.w	ip, r5, lsr #3
   84030:	eb07 03cc 	add.w	r3, r7, ip, lsl #3
   84034:	68dc      	ldr	r4, [r3, #12]
   84036:	429c      	cmp	r4, r3
   84038:	f000 81d2 	beq.w	843e0 <_malloc_r+0x3dc>
   8403c:	6863      	ldr	r3, [r4, #4]
   8403e:	68e2      	ldr	r2, [r4, #12]
   84040:	f023 0303 	bic.w	r3, r3, #3
   84044:	4423      	add	r3, r4
   84046:	6858      	ldr	r0, [r3, #4]
   84048:	68a1      	ldr	r1, [r4, #8]
   8404a:	f040 0501 	orr.w	r5, r0, #1
   8404e:	60ca      	str	r2, [r1, #12]
   84050:	4630      	mov	r0, r6
   84052:	6091      	str	r1, [r2, #8]
   84054:	605d      	str	r5, [r3, #4]
   84056:	f000 fb99 	bl	8478c <__malloc_unlock>
   8405a:	3408      	adds	r4, #8
   8405c:	4620      	mov	r0, r4
   8405e:	b003      	add	sp, #12
   84060:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   84064:	2510      	movs	r5, #16
   84066:	42a9      	cmp	r1, r5
   84068:	d9d9      	bls.n	8401e <_malloc_r+0x1a>
   8406a:	2400      	movs	r4, #0
   8406c:	230c      	movs	r3, #12
   8406e:	4620      	mov	r0, r4
   84070:	6033      	str	r3, [r6, #0]
   84072:	b003      	add	sp, #12
   84074:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   84078:	ea5f 2c55 	movs.w	ip, r5, lsr #9
   8407c:	f000 8089 	beq.w	84192 <_malloc_r+0x18e>
   84080:	f1bc 0f04 	cmp.w	ip, #4
   84084:	f200 8160 	bhi.w	84348 <_malloc_r+0x344>
   84088:	ea4f 1c95 	mov.w	ip, r5, lsr #6
   8408c:	f10c 0c38 	add.w	ip, ip, #56	; 0x38
   84090:	ea4f 014c 	mov.w	r1, ip, lsl #1
   84094:	4fa6      	ldr	r7, [pc, #664]	; (84330 <_malloc_r+0x32c>)
   84096:	eb07 0181 	add.w	r1, r7, r1, lsl #2
   8409a:	68cc      	ldr	r4, [r1, #12]
   8409c:	42a1      	cmp	r1, r4
   8409e:	d105      	bne.n	840ac <_malloc_r+0xa8>
   840a0:	e00c      	b.n	840bc <_malloc_r+0xb8>
   840a2:	2b00      	cmp	r3, #0
   840a4:	da79      	bge.n	8419a <_malloc_r+0x196>
   840a6:	68e4      	ldr	r4, [r4, #12]
   840a8:	42a1      	cmp	r1, r4
   840aa:	d007      	beq.n	840bc <_malloc_r+0xb8>
   840ac:	6862      	ldr	r2, [r4, #4]
   840ae:	f022 0203 	bic.w	r2, r2, #3
   840b2:	1b53      	subs	r3, r2, r5
   840b4:	2b0f      	cmp	r3, #15
   840b6:	ddf4      	ble.n	840a2 <_malloc_r+0x9e>
   840b8:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
   840bc:	f10c 0c01 	add.w	ip, ip, #1
   840c0:	4b9b      	ldr	r3, [pc, #620]	; (84330 <_malloc_r+0x32c>)
   840c2:	693c      	ldr	r4, [r7, #16]
   840c4:	f103 0e08 	add.w	lr, r3, #8
   840c8:	4574      	cmp	r4, lr
   840ca:	f000 817e 	beq.w	843ca <_malloc_r+0x3c6>
   840ce:	6861      	ldr	r1, [r4, #4]
   840d0:	f021 0103 	bic.w	r1, r1, #3
   840d4:	1b4a      	subs	r2, r1, r5
   840d6:	2a0f      	cmp	r2, #15
   840d8:	f300 8164 	bgt.w	843a4 <_malloc_r+0x3a0>
   840dc:	2a00      	cmp	r2, #0
   840de:	f8c3 e014 	str.w	lr, [r3, #20]
   840e2:	f8c3 e010 	str.w	lr, [r3, #16]
   840e6:	da69      	bge.n	841bc <_malloc_r+0x1b8>
   840e8:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
   840ec:	f080 813a 	bcs.w	84364 <_malloc_r+0x360>
   840f0:	08c9      	lsrs	r1, r1, #3
   840f2:	108a      	asrs	r2, r1, #2
   840f4:	f04f 0801 	mov.w	r8, #1
   840f8:	fa08 f802 	lsl.w	r8, r8, r2
   840fc:	eb03 01c1 	add.w	r1, r3, r1, lsl #3
   84100:	685a      	ldr	r2, [r3, #4]
   84102:	6888      	ldr	r0, [r1, #8]
   84104:	ea48 0202 	orr.w	r2, r8, r2
   84108:	60a0      	str	r0, [r4, #8]
   8410a:	60e1      	str	r1, [r4, #12]
   8410c:	605a      	str	r2, [r3, #4]
   8410e:	608c      	str	r4, [r1, #8]
   84110:	60c4      	str	r4, [r0, #12]
   84112:	ea4f 03ac 	mov.w	r3, ip, asr #2
   84116:	2001      	movs	r0, #1
   84118:	4098      	lsls	r0, r3
   8411a:	4290      	cmp	r0, r2
   8411c:	d85b      	bhi.n	841d6 <_malloc_r+0x1d2>
   8411e:	4202      	tst	r2, r0
   84120:	d106      	bne.n	84130 <_malloc_r+0x12c>
   84122:	f02c 0c03 	bic.w	ip, ip, #3
   84126:	0040      	lsls	r0, r0, #1
   84128:	4202      	tst	r2, r0
   8412a:	f10c 0c04 	add.w	ip, ip, #4
   8412e:	d0fa      	beq.n	84126 <_malloc_r+0x122>
   84130:	eb07 08cc 	add.w	r8, r7, ip, lsl #3
   84134:	4644      	mov	r4, r8
   84136:	46e1      	mov	r9, ip
   84138:	68e3      	ldr	r3, [r4, #12]
   8413a:	429c      	cmp	r4, r3
   8413c:	d107      	bne.n	8414e <_malloc_r+0x14a>
   8413e:	e146      	b.n	843ce <_malloc_r+0x3ca>
   84140:	2a00      	cmp	r2, #0
   84142:	f280 8157 	bge.w	843f4 <_malloc_r+0x3f0>
   84146:	68db      	ldr	r3, [r3, #12]
   84148:	429c      	cmp	r4, r3
   8414a:	f000 8140 	beq.w	843ce <_malloc_r+0x3ca>
   8414e:	6859      	ldr	r1, [r3, #4]
   84150:	f021 0103 	bic.w	r1, r1, #3
   84154:	1b4a      	subs	r2, r1, r5
   84156:	2a0f      	cmp	r2, #15
   84158:	ddf2      	ble.n	84140 <_malloc_r+0x13c>
   8415a:	461c      	mov	r4, r3
   8415c:	f854 cf08 	ldr.w	ip, [r4, #8]!
   84160:	68d9      	ldr	r1, [r3, #12]
   84162:	f045 0901 	orr.w	r9, r5, #1
   84166:	f042 0801 	orr.w	r8, r2, #1
   8416a:	441d      	add	r5, r3
   8416c:	f8c3 9004 	str.w	r9, [r3, #4]
   84170:	4630      	mov	r0, r6
   84172:	f8cc 100c 	str.w	r1, [ip, #12]
   84176:	f8c1 c008 	str.w	ip, [r1, #8]
   8417a:	617d      	str	r5, [r7, #20]
   8417c:	613d      	str	r5, [r7, #16]
   8417e:	f8c5 e00c 	str.w	lr, [r5, #12]
   84182:	f8c5 e008 	str.w	lr, [r5, #8]
   84186:	f8c5 8004 	str.w	r8, [r5, #4]
   8418a:	50aa      	str	r2, [r5, r2]
   8418c:	f000 fafe 	bl	8478c <__malloc_unlock>
   84190:	e764      	b.n	8405c <_malloc_r+0x58>
   84192:	217e      	movs	r1, #126	; 0x7e
   84194:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
   84198:	e77c      	b.n	84094 <_malloc_r+0x90>
   8419a:	4422      	add	r2, r4
   8419c:	6850      	ldr	r0, [r2, #4]
   8419e:	68e3      	ldr	r3, [r4, #12]
   841a0:	68a1      	ldr	r1, [r4, #8]
   841a2:	f040 0501 	orr.w	r5, r0, #1
   841a6:	60cb      	str	r3, [r1, #12]
   841a8:	4630      	mov	r0, r6
   841aa:	6099      	str	r1, [r3, #8]
   841ac:	6055      	str	r5, [r2, #4]
   841ae:	f000 faed 	bl	8478c <__malloc_unlock>
   841b2:	3408      	adds	r4, #8
   841b4:	4620      	mov	r0, r4
   841b6:	b003      	add	sp, #12
   841b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   841bc:	4421      	add	r1, r4
   841be:	684b      	ldr	r3, [r1, #4]
   841c0:	4630      	mov	r0, r6
   841c2:	f043 0301 	orr.w	r3, r3, #1
   841c6:	604b      	str	r3, [r1, #4]
   841c8:	f000 fae0 	bl	8478c <__malloc_unlock>
   841cc:	3408      	adds	r4, #8
   841ce:	4620      	mov	r0, r4
   841d0:	b003      	add	sp, #12
   841d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   841d6:	68bc      	ldr	r4, [r7, #8]
   841d8:	6863      	ldr	r3, [r4, #4]
   841da:	f023 0903 	bic.w	r9, r3, #3
   841de:	45a9      	cmp	r9, r5
   841e0:	d304      	bcc.n	841ec <_malloc_r+0x1e8>
   841e2:	ebc5 0309 	rsb	r3, r5, r9
   841e6:	2b0f      	cmp	r3, #15
   841e8:	f300 8091 	bgt.w	8430e <_malloc_r+0x30a>
   841ec:	4b51      	ldr	r3, [pc, #324]	; (84334 <_malloc_r+0x330>)
   841ee:	4a52      	ldr	r2, [pc, #328]	; (84338 <_malloc_r+0x334>)
   841f0:	6819      	ldr	r1, [r3, #0]
   841f2:	6813      	ldr	r3, [r2, #0]
   841f4:	eb05 0a01 	add.w	sl, r5, r1
   841f8:	3301      	adds	r3, #1
   841fa:	eb04 0b09 	add.w	fp, r4, r9
   841fe:	f000 8161 	beq.w	844c4 <_malloc_r+0x4c0>
   84202:	f50a 5a80 	add.w	sl, sl, #4096	; 0x1000
   84206:	f10a 0a0f 	add.w	sl, sl, #15
   8420a:	f42a 6a7f 	bic.w	sl, sl, #4080	; 0xff0
   8420e:	f02a 0a0f 	bic.w	sl, sl, #15
   84212:	4630      	mov	r0, r6
   84214:	4651      	mov	r1, sl
   84216:	9201      	str	r2, [sp, #4]
   84218:	f000 fc9a 	bl	84b50 <_sbrk_r>
   8421c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
   84220:	4680      	mov	r8, r0
   84222:	9a01      	ldr	r2, [sp, #4]
   84224:	f000 8101 	beq.w	8442a <_malloc_r+0x426>
   84228:	4583      	cmp	fp, r0
   8422a:	f200 80fb 	bhi.w	84424 <_malloc_r+0x420>
   8422e:	f8df c114 	ldr.w	ip, [pc, #276]	; 84344 <_malloc_r+0x340>
   84232:	45c3      	cmp	fp, r8
   84234:	f8dc 3000 	ldr.w	r3, [ip]
   84238:	4453      	add	r3, sl
   8423a:	f8cc 3000 	str.w	r3, [ip]
   8423e:	f000 814a 	beq.w	844d6 <_malloc_r+0x4d2>
   84242:	6812      	ldr	r2, [r2, #0]
   84244:	493c      	ldr	r1, [pc, #240]	; (84338 <_malloc_r+0x334>)
   84246:	3201      	adds	r2, #1
   84248:	bf1b      	ittet	ne
   8424a:	ebcb 0b08 	rsbne	fp, fp, r8
   8424e:	445b      	addne	r3, fp
   84250:	f8c1 8000 	streq.w	r8, [r1]
   84254:	f8cc 3000 	strne.w	r3, [ip]
   84258:	f018 0307 	ands.w	r3, r8, #7
   8425c:	f000 8114 	beq.w	84488 <_malloc_r+0x484>
   84260:	f1c3 0208 	rsb	r2, r3, #8
   84264:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
   84268:	4490      	add	r8, r2
   8426a:	3308      	adds	r3, #8
   8426c:	44c2      	add	sl, r8
   8426e:	f3ca 0a0b 	ubfx	sl, sl, #0, #12
   84272:	ebca 0a03 	rsb	sl, sl, r3
   84276:	4651      	mov	r1, sl
   84278:	4630      	mov	r0, r6
   8427a:	f8cd c004 	str.w	ip, [sp, #4]
   8427e:	f000 fc67 	bl	84b50 <_sbrk_r>
   84282:	1c43      	adds	r3, r0, #1
   84284:	f8dd c004 	ldr.w	ip, [sp, #4]
   84288:	f000 8135 	beq.w	844f6 <_malloc_r+0x4f2>
   8428c:	ebc8 0200 	rsb	r2, r8, r0
   84290:	4452      	add	r2, sl
   84292:	f042 0201 	orr.w	r2, r2, #1
   84296:	f8dc 3000 	ldr.w	r3, [ip]
   8429a:	42bc      	cmp	r4, r7
   8429c:	4453      	add	r3, sl
   8429e:	f8c7 8008 	str.w	r8, [r7, #8]
   842a2:	f8cc 3000 	str.w	r3, [ip]
   842a6:	f8c8 2004 	str.w	r2, [r8, #4]
   842aa:	f8df a098 	ldr.w	sl, [pc, #152]	; 84344 <_malloc_r+0x340>
   842ae:	d015      	beq.n	842dc <_malloc_r+0x2d8>
   842b0:	f1b9 0f0f 	cmp.w	r9, #15
   842b4:	f240 80eb 	bls.w	8448e <_malloc_r+0x48a>
   842b8:	6861      	ldr	r1, [r4, #4]
   842ba:	f1a9 020c 	sub.w	r2, r9, #12
   842be:	f022 0207 	bic.w	r2, r2, #7
   842c2:	f001 0101 	and.w	r1, r1, #1
   842c6:	ea42 0e01 	orr.w	lr, r2, r1
   842ca:	2005      	movs	r0, #5
   842cc:	18a1      	adds	r1, r4, r2
   842ce:	2a0f      	cmp	r2, #15
   842d0:	f8c4 e004 	str.w	lr, [r4, #4]
   842d4:	6048      	str	r0, [r1, #4]
   842d6:	6088      	str	r0, [r1, #8]
   842d8:	f200 8111 	bhi.w	844fe <_malloc_r+0x4fa>
   842dc:	4a17      	ldr	r2, [pc, #92]	; (8433c <_malloc_r+0x338>)
   842de:	68bc      	ldr	r4, [r7, #8]
   842e0:	6811      	ldr	r1, [r2, #0]
   842e2:	428b      	cmp	r3, r1
   842e4:	bf88      	it	hi
   842e6:	6013      	strhi	r3, [r2, #0]
   842e8:	4a15      	ldr	r2, [pc, #84]	; (84340 <_malloc_r+0x33c>)
   842ea:	6811      	ldr	r1, [r2, #0]
   842ec:	428b      	cmp	r3, r1
   842ee:	bf88      	it	hi
   842f0:	6013      	strhi	r3, [r2, #0]
   842f2:	6862      	ldr	r2, [r4, #4]
   842f4:	f022 0203 	bic.w	r2, r2, #3
   842f8:	4295      	cmp	r5, r2
   842fa:	ebc5 0302 	rsb	r3, r5, r2
   842fe:	d801      	bhi.n	84304 <_malloc_r+0x300>
   84300:	2b0f      	cmp	r3, #15
   84302:	dc04      	bgt.n	8430e <_malloc_r+0x30a>
   84304:	4630      	mov	r0, r6
   84306:	f000 fa41 	bl	8478c <__malloc_unlock>
   8430a:	2400      	movs	r4, #0
   8430c:	e6a6      	b.n	8405c <_malloc_r+0x58>
   8430e:	f045 0201 	orr.w	r2, r5, #1
   84312:	f043 0301 	orr.w	r3, r3, #1
   84316:	4425      	add	r5, r4
   84318:	6062      	str	r2, [r4, #4]
   8431a:	4630      	mov	r0, r6
   8431c:	60bd      	str	r5, [r7, #8]
   8431e:	606b      	str	r3, [r5, #4]
   84320:	f000 fa34 	bl	8478c <__malloc_unlock>
   84324:	3408      	adds	r4, #8
   84326:	4620      	mov	r0, r4
   84328:	b003      	add	sp, #12
   8432a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   8432e:	bf00      	nop
   84330:	200704c0 	.word	0x200704c0
   84334:	200712d8 	.word	0x200712d8
   84338:	200708cc 	.word	0x200708cc
   8433c:	200712d4 	.word	0x200712d4
   84340:	200712d0 	.word	0x200712d0
   84344:	200712dc 	.word	0x200712dc
   84348:	f1bc 0f14 	cmp.w	ip, #20
   8434c:	d961      	bls.n	84412 <_malloc_r+0x40e>
   8434e:	f1bc 0f54 	cmp.w	ip, #84	; 0x54
   84352:	f200 808f 	bhi.w	84474 <_malloc_r+0x470>
   84356:	ea4f 3c15 	mov.w	ip, r5, lsr #12
   8435a:	f10c 0c6e 	add.w	ip, ip, #110	; 0x6e
   8435e:	ea4f 014c 	mov.w	r1, ip, lsl #1
   84362:	e697      	b.n	84094 <_malloc_r+0x90>
   84364:	0a4b      	lsrs	r3, r1, #9
   84366:	2b04      	cmp	r3, #4
   84368:	d958      	bls.n	8441c <_malloc_r+0x418>
   8436a:	2b14      	cmp	r3, #20
   8436c:	f200 80ad 	bhi.w	844ca <_malloc_r+0x4c6>
   84370:	f103 025b 	add.w	r2, r3, #91	; 0x5b
   84374:	0050      	lsls	r0, r2, #1
   84376:	eb07 0080 	add.w	r0, r7, r0, lsl #2
   8437a:	6883      	ldr	r3, [r0, #8]
   8437c:	f8df 81b8 	ldr.w	r8, [pc, #440]	; 84538 <_malloc_r+0x534>
   84380:	4283      	cmp	r3, r0
   84382:	f000 808a 	beq.w	8449a <_malloc_r+0x496>
   84386:	685a      	ldr	r2, [r3, #4]
   84388:	f022 0203 	bic.w	r2, r2, #3
   8438c:	4291      	cmp	r1, r2
   8438e:	d202      	bcs.n	84396 <_malloc_r+0x392>
   84390:	689b      	ldr	r3, [r3, #8]
   84392:	4298      	cmp	r0, r3
   84394:	d1f7      	bne.n	84386 <_malloc_r+0x382>
   84396:	68d9      	ldr	r1, [r3, #12]
   84398:	687a      	ldr	r2, [r7, #4]
   8439a:	60e1      	str	r1, [r4, #12]
   8439c:	60a3      	str	r3, [r4, #8]
   8439e:	608c      	str	r4, [r1, #8]
   843a0:	60dc      	str	r4, [r3, #12]
   843a2:	e6b6      	b.n	84112 <_malloc_r+0x10e>
   843a4:	f045 0701 	orr.w	r7, r5, #1
   843a8:	f042 0101 	orr.w	r1, r2, #1
   843ac:	4425      	add	r5, r4
   843ae:	6067      	str	r7, [r4, #4]
   843b0:	4630      	mov	r0, r6
   843b2:	615d      	str	r5, [r3, #20]
   843b4:	611d      	str	r5, [r3, #16]
   843b6:	f8c5 e00c 	str.w	lr, [r5, #12]
   843ba:	f8c5 e008 	str.w	lr, [r5, #8]
   843be:	6069      	str	r1, [r5, #4]
   843c0:	50aa      	str	r2, [r5, r2]
   843c2:	3408      	adds	r4, #8
   843c4:	f000 f9e2 	bl	8478c <__malloc_unlock>
   843c8:	e648      	b.n	8405c <_malloc_r+0x58>
   843ca:	685a      	ldr	r2, [r3, #4]
   843cc:	e6a1      	b.n	84112 <_malloc_r+0x10e>
   843ce:	f109 0901 	add.w	r9, r9, #1
   843d2:	f019 0f03 	tst.w	r9, #3
   843d6:	f104 0408 	add.w	r4, r4, #8
   843da:	f47f aead 	bne.w	84138 <_malloc_r+0x134>
   843de:	e02d      	b.n	8443c <_malloc_r+0x438>
   843e0:	f104 0308 	add.w	r3, r4, #8
   843e4:	6964      	ldr	r4, [r4, #20]
   843e6:	42a3      	cmp	r3, r4
   843e8:	bf08      	it	eq
   843ea:	f10c 0c02 	addeq.w	ip, ip, #2
   843ee:	f43f ae67 	beq.w	840c0 <_malloc_r+0xbc>
   843f2:	e623      	b.n	8403c <_malloc_r+0x38>
   843f4:	4419      	add	r1, r3
   843f6:	6848      	ldr	r0, [r1, #4]
   843f8:	461c      	mov	r4, r3
   843fa:	f854 2f08 	ldr.w	r2, [r4, #8]!
   843fe:	68db      	ldr	r3, [r3, #12]
   84400:	f040 0501 	orr.w	r5, r0, #1
   84404:	604d      	str	r5, [r1, #4]
   84406:	4630      	mov	r0, r6
   84408:	60d3      	str	r3, [r2, #12]
   8440a:	609a      	str	r2, [r3, #8]
   8440c:	f000 f9be 	bl	8478c <__malloc_unlock>
   84410:	e624      	b.n	8405c <_malloc_r+0x58>
   84412:	f10c 0c5b 	add.w	ip, ip, #91	; 0x5b
   84416:	ea4f 014c 	mov.w	r1, ip, lsl #1
   8441a:	e63b      	b.n	84094 <_malloc_r+0x90>
   8441c:	098a      	lsrs	r2, r1, #6
   8441e:	3238      	adds	r2, #56	; 0x38
   84420:	0050      	lsls	r0, r2, #1
   84422:	e7a8      	b.n	84376 <_malloc_r+0x372>
   84424:	42bc      	cmp	r4, r7
   84426:	f43f af02 	beq.w	8422e <_malloc_r+0x22a>
   8442a:	68bc      	ldr	r4, [r7, #8]
   8442c:	6862      	ldr	r2, [r4, #4]
   8442e:	f022 0203 	bic.w	r2, r2, #3
   84432:	e761      	b.n	842f8 <_malloc_r+0x2f4>
   84434:	f8d8 8000 	ldr.w	r8, [r8]
   84438:	4598      	cmp	r8, r3
   8443a:	d17a      	bne.n	84532 <_malloc_r+0x52e>
   8443c:	f01c 0f03 	tst.w	ip, #3
   84440:	f1a8 0308 	sub.w	r3, r8, #8
   84444:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
   84448:	d1f4      	bne.n	84434 <_malloc_r+0x430>
   8444a:	687b      	ldr	r3, [r7, #4]
   8444c:	ea23 0300 	bic.w	r3, r3, r0
   84450:	607b      	str	r3, [r7, #4]
   84452:	0040      	lsls	r0, r0, #1
   84454:	4298      	cmp	r0, r3
   84456:	f63f aebe 	bhi.w	841d6 <_malloc_r+0x1d2>
   8445a:	2800      	cmp	r0, #0
   8445c:	f43f aebb 	beq.w	841d6 <_malloc_r+0x1d2>
   84460:	4203      	tst	r3, r0
   84462:	46cc      	mov	ip, r9
   84464:	f47f ae64 	bne.w	84130 <_malloc_r+0x12c>
   84468:	0040      	lsls	r0, r0, #1
   8446a:	4203      	tst	r3, r0
   8446c:	f10c 0c04 	add.w	ip, ip, #4
   84470:	d0fa      	beq.n	84468 <_malloc_r+0x464>
   84472:	e65d      	b.n	84130 <_malloc_r+0x12c>
   84474:	f5bc 7faa 	cmp.w	ip, #340	; 0x154
   84478:	d819      	bhi.n	844ae <_malloc_r+0x4aa>
   8447a:	ea4f 3cd5 	mov.w	ip, r5, lsr #15
   8447e:	f10c 0c77 	add.w	ip, ip, #119	; 0x77
   84482:	ea4f 014c 	mov.w	r1, ip, lsl #1
   84486:	e605      	b.n	84094 <_malloc_r+0x90>
   84488:	f44f 5380 	mov.w	r3, #4096	; 0x1000
   8448c:	e6ee      	b.n	8426c <_malloc_r+0x268>
   8448e:	2301      	movs	r3, #1
   84490:	f8c8 3004 	str.w	r3, [r8, #4]
   84494:	4644      	mov	r4, r8
   84496:	2200      	movs	r2, #0
   84498:	e72e      	b.n	842f8 <_malloc_r+0x2f4>
   8449a:	1092      	asrs	r2, r2, #2
   8449c:	2001      	movs	r0, #1
   8449e:	4090      	lsls	r0, r2
   844a0:	f8d8 2004 	ldr.w	r2, [r8, #4]
   844a4:	4619      	mov	r1, r3
   844a6:	4302      	orrs	r2, r0
   844a8:	f8c8 2004 	str.w	r2, [r8, #4]
   844ac:	e775      	b.n	8439a <_malloc_r+0x396>
   844ae:	f240 5354 	movw	r3, #1364	; 0x554
   844b2:	459c      	cmp	ip, r3
   844b4:	d81b      	bhi.n	844ee <_malloc_r+0x4ea>
   844b6:	ea4f 4c95 	mov.w	ip, r5, lsr #18
   844ba:	f10c 0c7c 	add.w	ip, ip, #124	; 0x7c
   844be:	ea4f 014c 	mov.w	r1, ip, lsl #1
   844c2:	e5e7      	b.n	84094 <_malloc_r+0x90>
   844c4:	f10a 0a10 	add.w	sl, sl, #16
   844c8:	e6a3      	b.n	84212 <_malloc_r+0x20e>
   844ca:	2b54      	cmp	r3, #84	; 0x54
   844cc:	d81f      	bhi.n	8450e <_malloc_r+0x50a>
   844ce:	0b0a      	lsrs	r2, r1, #12
   844d0:	326e      	adds	r2, #110	; 0x6e
   844d2:	0050      	lsls	r0, r2, #1
   844d4:	e74f      	b.n	84376 <_malloc_r+0x372>
   844d6:	f3cb 010b 	ubfx	r1, fp, #0, #12
   844da:	2900      	cmp	r1, #0
   844dc:	f47f aeb1 	bne.w	84242 <_malloc_r+0x23e>
   844e0:	eb0a 0109 	add.w	r1, sl, r9
   844e4:	68ba      	ldr	r2, [r7, #8]
   844e6:	f041 0101 	orr.w	r1, r1, #1
   844ea:	6051      	str	r1, [r2, #4]
   844ec:	e6f6      	b.n	842dc <_malloc_r+0x2d8>
   844ee:	21fc      	movs	r1, #252	; 0xfc
   844f0:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
   844f4:	e5ce      	b.n	84094 <_malloc_r+0x90>
   844f6:	2201      	movs	r2, #1
   844f8:	f04f 0a00 	mov.w	sl, #0
   844fc:	e6cb      	b.n	84296 <_malloc_r+0x292>
   844fe:	f104 0108 	add.w	r1, r4, #8
   84502:	4630      	mov	r0, r6
   84504:	f7ff fa8a 	bl	83a1c <_free_r>
   84508:	f8da 3000 	ldr.w	r3, [sl]
   8450c:	e6e6      	b.n	842dc <_malloc_r+0x2d8>
   8450e:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
   84512:	d803      	bhi.n	8451c <_malloc_r+0x518>
   84514:	0bca      	lsrs	r2, r1, #15
   84516:	3277      	adds	r2, #119	; 0x77
   84518:	0050      	lsls	r0, r2, #1
   8451a:	e72c      	b.n	84376 <_malloc_r+0x372>
   8451c:	f240 5254 	movw	r2, #1364	; 0x554
   84520:	4293      	cmp	r3, r2
   84522:	d803      	bhi.n	8452c <_malloc_r+0x528>
   84524:	0c8a      	lsrs	r2, r1, #18
   84526:	327c      	adds	r2, #124	; 0x7c
   84528:	0050      	lsls	r0, r2, #1
   8452a:	e724      	b.n	84376 <_malloc_r+0x372>
   8452c:	20fc      	movs	r0, #252	; 0xfc
   8452e:	227e      	movs	r2, #126	; 0x7e
   84530:	e721      	b.n	84376 <_malloc_r+0x372>
   84532:	687b      	ldr	r3, [r7, #4]
   84534:	e78d      	b.n	84452 <_malloc_r+0x44e>
   84536:	bf00      	nop
   84538:	200704c0 	.word	0x200704c0

0008453c <memchr>:
   8453c:	0783      	lsls	r3, r0, #30
   8453e:	b470      	push	{r4, r5, r6}
   84540:	b2c9      	uxtb	r1, r1
   84542:	d040      	beq.n	845c6 <memchr+0x8a>
   84544:	1e54      	subs	r4, r2, #1
   84546:	b32a      	cbz	r2, 84594 <memchr+0x58>
   84548:	7803      	ldrb	r3, [r0, #0]
   8454a:	428b      	cmp	r3, r1
   8454c:	d023      	beq.n	84596 <memchr+0x5a>
   8454e:	1c43      	adds	r3, r0, #1
   84550:	e004      	b.n	8455c <memchr+0x20>
   84552:	b1fc      	cbz	r4, 84594 <memchr+0x58>
   84554:	7805      	ldrb	r5, [r0, #0]
   84556:	4614      	mov	r4, r2
   84558:	428d      	cmp	r5, r1
   8455a:	d01c      	beq.n	84596 <memchr+0x5a>
   8455c:	f013 0f03 	tst.w	r3, #3
   84560:	4618      	mov	r0, r3
   84562:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
   84566:	f103 0301 	add.w	r3, r3, #1
   8456a:	d1f2      	bne.n	84552 <memchr+0x16>
   8456c:	2c03      	cmp	r4, #3
   8456e:	d814      	bhi.n	8459a <memchr+0x5e>
   84570:	1e65      	subs	r5, r4, #1
   84572:	b354      	cbz	r4, 845ca <memchr+0x8e>
   84574:	7803      	ldrb	r3, [r0, #0]
   84576:	428b      	cmp	r3, r1
   84578:	d00d      	beq.n	84596 <memchr+0x5a>
   8457a:	1c42      	adds	r2, r0, #1
   8457c:	2300      	movs	r3, #0
   8457e:	e002      	b.n	84586 <memchr+0x4a>
   84580:	7804      	ldrb	r4, [r0, #0]
   84582:	428c      	cmp	r4, r1
   84584:	d007      	beq.n	84596 <memchr+0x5a>
   84586:	42ab      	cmp	r3, r5
   84588:	4610      	mov	r0, r2
   8458a:	f103 0301 	add.w	r3, r3, #1
   8458e:	f102 0201 	add.w	r2, r2, #1
   84592:	d1f5      	bne.n	84580 <memchr+0x44>
   84594:	2000      	movs	r0, #0
   84596:	bc70      	pop	{r4, r5, r6}
   84598:	4770      	bx	lr
   8459a:	ea41 2601 	orr.w	r6, r1, r1, lsl #8
   8459e:	4603      	mov	r3, r0
   845a0:	ea46 4606 	orr.w	r6, r6, r6, lsl #16
   845a4:	681a      	ldr	r2, [r3, #0]
   845a6:	4618      	mov	r0, r3
   845a8:	4072      	eors	r2, r6
   845aa:	f1a2 3501 	sub.w	r5, r2, #16843009	; 0x1010101
   845ae:	ea25 0202 	bic.w	r2, r5, r2
   845b2:	f012 3f80 	tst.w	r2, #2155905152	; 0x80808080
   845b6:	f103 0304 	add.w	r3, r3, #4
   845ba:	d1d9      	bne.n	84570 <memchr+0x34>
   845bc:	3c04      	subs	r4, #4
   845be:	2c03      	cmp	r4, #3
   845c0:	4618      	mov	r0, r3
   845c2:	d8ef      	bhi.n	845a4 <memchr+0x68>
   845c4:	e7d4      	b.n	84570 <memchr+0x34>
   845c6:	4614      	mov	r4, r2
   845c8:	e7d0      	b.n	8456c <memchr+0x30>
   845ca:	4620      	mov	r0, r4
   845cc:	e7e3      	b.n	84596 <memchr+0x5a>
   845ce:	bf00      	nop

000845d0 <memcpy>:
   845d0:	4684      	mov	ip, r0
   845d2:	ea41 0300 	orr.w	r3, r1, r0
   845d6:	f013 0303 	ands.w	r3, r3, #3
   845da:	d149      	bne.n	84670 <memcpy+0xa0>
   845dc:	3a40      	subs	r2, #64	; 0x40
   845de:	d323      	bcc.n	84628 <memcpy+0x58>
   845e0:	680b      	ldr	r3, [r1, #0]
   845e2:	6003      	str	r3, [r0, #0]
   845e4:	684b      	ldr	r3, [r1, #4]
   845e6:	6043      	str	r3, [r0, #4]
   845e8:	688b      	ldr	r3, [r1, #8]
   845ea:	6083      	str	r3, [r0, #8]
   845ec:	68cb      	ldr	r3, [r1, #12]
   845ee:	60c3      	str	r3, [r0, #12]
   845f0:	690b      	ldr	r3, [r1, #16]
   845f2:	6103      	str	r3, [r0, #16]
   845f4:	694b      	ldr	r3, [r1, #20]
   845f6:	6143      	str	r3, [r0, #20]
   845f8:	698b      	ldr	r3, [r1, #24]
   845fa:	6183      	str	r3, [r0, #24]
   845fc:	69cb      	ldr	r3, [r1, #28]
   845fe:	61c3      	str	r3, [r0, #28]
   84600:	6a0b      	ldr	r3, [r1, #32]
   84602:	6203      	str	r3, [r0, #32]
   84604:	6a4b      	ldr	r3, [r1, #36]	; 0x24
   84606:	6243      	str	r3, [r0, #36]	; 0x24
   84608:	6a8b      	ldr	r3, [r1, #40]	; 0x28
   8460a:	6283      	str	r3, [r0, #40]	; 0x28
   8460c:	6acb      	ldr	r3, [r1, #44]	; 0x2c
   8460e:	62c3      	str	r3, [r0, #44]	; 0x2c
   84610:	6b0b      	ldr	r3, [r1, #48]	; 0x30
   84612:	6303      	str	r3, [r0, #48]	; 0x30
   84614:	6b4b      	ldr	r3, [r1, #52]	; 0x34
   84616:	6343      	str	r3, [r0, #52]	; 0x34
   84618:	6b8b      	ldr	r3, [r1, #56]	; 0x38
   8461a:	6383      	str	r3, [r0, #56]	; 0x38
   8461c:	6bcb      	ldr	r3, [r1, #60]	; 0x3c
   8461e:	63c3      	str	r3, [r0, #60]	; 0x3c
   84620:	3040      	adds	r0, #64	; 0x40
   84622:	3140      	adds	r1, #64	; 0x40
   84624:	3a40      	subs	r2, #64	; 0x40
   84626:	d2db      	bcs.n	845e0 <memcpy+0x10>
   84628:	3230      	adds	r2, #48	; 0x30
   8462a:	d30b      	bcc.n	84644 <memcpy+0x74>
   8462c:	680b      	ldr	r3, [r1, #0]
   8462e:	6003      	str	r3, [r0, #0]
   84630:	684b      	ldr	r3, [r1, #4]
   84632:	6043      	str	r3, [r0, #4]
   84634:	688b      	ldr	r3, [r1, #8]
   84636:	6083      	str	r3, [r0, #8]
   84638:	68cb      	ldr	r3, [r1, #12]
   8463a:	60c3      	str	r3, [r0, #12]
   8463c:	3010      	adds	r0, #16
   8463e:	3110      	adds	r1, #16
   84640:	3a10      	subs	r2, #16
   84642:	d2f3      	bcs.n	8462c <memcpy+0x5c>
   84644:	320c      	adds	r2, #12
   84646:	d305      	bcc.n	84654 <memcpy+0x84>
   84648:	f851 3b04 	ldr.w	r3, [r1], #4
   8464c:	f840 3b04 	str.w	r3, [r0], #4
   84650:	3a04      	subs	r2, #4
   84652:	d2f9      	bcs.n	84648 <memcpy+0x78>
   84654:	3204      	adds	r2, #4
   84656:	d008      	beq.n	8466a <memcpy+0x9a>
   84658:	07d2      	lsls	r2, r2, #31
   8465a:	bf1c      	itt	ne
   8465c:	f811 3b01 	ldrbne.w	r3, [r1], #1
   84660:	f800 3b01 	strbne.w	r3, [r0], #1
   84664:	d301      	bcc.n	8466a <memcpy+0x9a>
   84666:	880b      	ldrh	r3, [r1, #0]
   84668:	8003      	strh	r3, [r0, #0]
   8466a:	4660      	mov	r0, ip
   8466c:	4770      	bx	lr
   8466e:	bf00      	nop
   84670:	2a08      	cmp	r2, #8
   84672:	d313      	bcc.n	8469c <memcpy+0xcc>
   84674:	078b      	lsls	r3, r1, #30
   84676:	d0b1      	beq.n	845dc <memcpy+0xc>
   84678:	f010 0303 	ands.w	r3, r0, #3
   8467c:	d0ae      	beq.n	845dc <memcpy+0xc>
   8467e:	f1c3 0304 	rsb	r3, r3, #4
   84682:	1ad2      	subs	r2, r2, r3
   84684:	07db      	lsls	r3, r3, #31
   84686:	bf1c      	itt	ne
   84688:	f811 3b01 	ldrbne.w	r3, [r1], #1
   8468c:	f800 3b01 	strbne.w	r3, [r0], #1
   84690:	d3a4      	bcc.n	845dc <memcpy+0xc>
   84692:	f831 3b02 	ldrh.w	r3, [r1], #2
   84696:	f820 3b02 	strh.w	r3, [r0], #2
   8469a:	e79f      	b.n	845dc <memcpy+0xc>
   8469c:	3a04      	subs	r2, #4
   8469e:	d3d9      	bcc.n	84654 <memcpy+0x84>
   846a0:	3a01      	subs	r2, #1
   846a2:	f811 3b01 	ldrb.w	r3, [r1], #1
   846a6:	f800 3b01 	strb.w	r3, [r0], #1
   846aa:	d2f9      	bcs.n	846a0 <memcpy+0xd0>
   846ac:	780b      	ldrb	r3, [r1, #0]
   846ae:	7003      	strb	r3, [r0, #0]
   846b0:	784b      	ldrb	r3, [r1, #1]
   846b2:	7043      	strb	r3, [r0, #1]
   846b4:	788b      	ldrb	r3, [r1, #2]
   846b6:	7083      	strb	r3, [r0, #2]
   846b8:	4660      	mov	r0, ip
   846ba:	4770      	bx	lr

000846bc <memmove>:
   846bc:	4288      	cmp	r0, r1
   846be:	b4f0      	push	{r4, r5, r6, r7}
   846c0:	d910      	bls.n	846e4 <memmove+0x28>
   846c2:	188c      	adds	r4, r1, r2
   846c4:	42a0      	cmp	r0, r4
   846c6:	d20d      	bcs.n	846e4 <memmove+0x28>
   846c8:	1885      	adds	r5, r0, r2
   846ca:	1e53      	subs	r3, r2, #1
   846cc:	b142      	cbz	r2, 846e0 <memmove+0x24>
   846ce:	4621      	mov	r1, r4
   846d0:	462a      	mov	r2, r5
   846d2:	f811 4d01 	ldrb.w	r4, [r1, #-1]!
   846d6:	3b01      	subs	r3, #1
   846d8:	f802 4d01 	strb.w	r4, [r2, #-1]!
   846dc:	1c5c      	adds	r4, r3, #1
   846de:	d1f8      	bne.n	846d2 <memmove+0x16>
   846e0:	bcf0      	pop	{r4, r5, r6, r7}
   846e2:	4770      	bx	lr
   846e4:	2a0f      	cmp	r2, #15
   846e6:	d944      	bls.n	84772 <memmove+0xb6>
   846e8:	ea40 0301 	orr.w	r3, r0, r1
   846ec:	079b      	lsls	r3, r3, #30
   846ee:	d144      	bne.n	8477a <memmove+0xbe>
   846f0:	f1a2 0710 	sub.w	r7, r2, #16
   846f4:	093f      	lsrs	r7, r7, #4
   846f6:	eb00 1607 	add.w	r6, r0, r7, lsl #4
   846fa:	3610      	adds	r6, #16
   846fc:	460c      	mov	r4, r1
   846fe:	4603      	mov	r3, r0
   84700:	6825      	ldr	r5, [r4, #0]
   84702:	3310      	adds	r3, #16
   84704:	f843 5c10 	str.w	r5, [r3, #-16]
   84708:	6865      	ldr	r5, [r4, #4]
   8470a:	3410      	adds	r4, #16
   8470c:	f843 5c0c 	str.w	r5, [r3, #-12]
   84710:	f854 5c08 	ldr.w	r5, [r4, #-8]
   84714:	f843 5c08 	str.w	r5, [r3, #-8]
   84718:	f854 5c04 	ldr.w	r5, [r4, #-4]
   8471c:	f843 5c04 	str.w	r5, [r3, #-4]
   84720:	42b3      	cmp	r3, r6
   84722:	d1ed      	bne.n	84700 <memmove+0x44>
   84724:	1c7b      	adds	r3, r7, #1
   84726:	f002 0c0f 	and.w	ip, r2, #15
   8472a:	011b      	lsls	r3, r3, #4
   8472c:	f1bc 0f03 	cmp.w	ip, #3
   84730:	4419      	add	r1, r3
   84732:	4403      	add	r3, r0
   84734:	d923      	bls.n	8477e <memmove+0xc2>
   84736:	460e      	mov	r6, r1
   84738:	461d      	mov	r5, r3
   8473a:	4664      	mov	r4, ip
   8473c:	f856 7b04 	ldr.w	r7, [r6], #4
   84740:	3c04      	subs	r4, #4
   84742:	2c03      	cmp	r4, #3
   84744:	f845 7b04 	str.w	r7, [r5], #4
   84748:	d8f8      	bhi.n	8473c <memmove+0x80>
   8474a:	f1ac 0404 	sub.w	r4, ip, #4
   8474e:	f024 0403 	bic.w	r4, r4, #3
   84752:	3404      	adds	r4, #4
   84754:	f002 0203 	and.w	r2, r2, #3
   84758:	4423      	add	r3, r4
   8475a:	4421      	add	r1, r4
   8475c:	2a00      	cmp	r2, #0
   8475e:	d0bf      	beq.n	846e0 <memmove+0x24>
   84760:	441a      	add	r2, r3
   84762:	f811 4b01 	ldrb.w	r4, [r1], #1
   84766:	f803 4b01 	strb.w	r4, [r3], #1
   8476a:	4293      	cmp	r3, r2
   8476c:	d1f9      	bne.n	84762 <memmove+0xa6>
   8476e:	bcf0      	pop	{r4, r5, r6, r7}
   84770:	4770      	bx	lr
   84772:	4603      	mov	r3, r0
   84774:	2a00      	cmp	r2, #0
   84776:	d1f3      	bne.n	84760 <memmove+0xa4>
   84778:	e7b2      	b.n	846e0 <memmove+0x24>
   8477a:	4603      	mov	r3, r0
   8477c:	e7f0      	b.n	84760 <memmove+0xa4>
   8477e:	4662      	mov	r2, ip
   84780:	2a00      	cmp	r2, #0
   84782:	d1ed      	bne.n	84760 <memmove+0xa4>
   84784:	e7ac      	b.n	846e0 <memmove+0x24>
   84786:	bf00      	nop

00084788 <__malloc_lock>:
   84788:	4770      	bx	lr
   8478a:	bf00      	nop

0008478c <__malloc_unlock>:
   8478c:	4770      	bx	lr
   8478e:	bf00      	nop

00084790 <_realloc_r>:
   84790:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   84794:	460c      	mov	r4, r1
   84796:	b083      	sub	sp, #12
   84798:	4690      	mov	r8, r2
   8479a:	4681      	mov	r9, r0
   8479c:	2900      	cmp	r1, #0
   8479e:	f000 80ba 	beq.w	84916 <_realloc_r+0x186>
   847a2:	f7ff fff1 	bl	84788 <__malloc_lock>
   847a6:	f108 060b 	add.w	r6, r8, #11
   847aa:	f854 3c04 	ldr.w	r3, [r4, #-4]
   847ae:	2e16      	cmp	r6, #22
   847b0:	f023 0503 	bic.w	r5, r3, #3
   847b4:	f1a4 0708 	sub.w	r7, r4, #8
   847b8:	d84b      	bhi.n	84852 <_realloc_r+0xc2>
   847ba:	2110      	movs	r1, #16
   847bc:	460e      	mov	r6, r1
   847be:	45b0      	cmp	r8, r6
   847c0:	d84c      	bhi.n	8485c <_realloc_r+0xcc>
   847c2:	428d      	cmp	r5, r1
   847c4:	da51      	bge.n	8486a <_realloc_r+0xda>
   847c6:	f8df b384 	ldr.w	fp, [pc, #900]	; 84b4c <_realloc_r+0x3bc>
   847ca:	1978      	adds	r0, r7, r5
   847cc:	f8db e008 	ldr.w	lr, [fp, #8]
   847d0:	4586      	cmp	lr, r0
   847d2:	f000 80a6 	beq.w	84922 <_realloc_r+0x192>
   847d6:	6842      	ldr	r2, [r0, #4]
   847d8:	f022 0c01 	bic.w	ip, r2, #1
   847dc:	4484      	add	ip, r0
   847de:	f8dc c004 	ldr.w	ip, [ip, #4]
   847e2:	f01c 0f01 	tst.w	ip, #1
   847e6:	d054      	beq.n	84892 <_realloc_r+0x102>
   847e8:	2200      	movs	r2, #0
   847ea:	4610      	mov	r0, r2
   847ec:	07db      	lsls	r3, r3, #31
   847ee:	d46f      	bmi.n	848d0 <_realloc_r+0x140>
   847f0:	f854 3c08 	ldr.w	r3, [r4, #-8]
   847f4:	ebc3 0a07 	rsb	sl, r3, r7
   847f8:	f8da 3004 	ldr.w	r3, [sl, #4]
   847fc:	f023 0303 	bic.w	r3, r3, #3
   84800:	442b      	add	r3, r5
   84802:	2800      	cmp	r0, #0
   84804:	d062      	beq.n	848cc <_realloc_r+0x13c>
   84806:	4570      	cmp	r0, lr
   84808:	f000 80e9 	beq.w	849de <_realloc_r+0x24e>
   8480c:	eb02 0e03 	add.w	lr, r2, r3
   84810:	458e      	cmp	lr, r1
   84812:	db5b      	blt.n	848cc <_realloc_r+0x13c>
   84814:	68c3      	ldr	r3, [r0, #12]
   84816:	6882      	ldr	r2, [r0, #8]
   84818:	46d0      	mov	r8, sl
   8481a:	60d3      	str	r3, [r2, #12]
   8481c:	609a      	str	r2, [r3, #8]
   8481e:	f858 1f08 	ldr.w	r1, [r8, #8]!
   84822:	f8da 300c 	ldr.w	r3, [sl, #12]
   84826:	1f2a      	subs	r2, r5, #4
   84828:	2a24      	cmp	r2, #36	; 0x24
   8482a:	60cb      	str	r3, [r1, #12]
   8482c:	6099      	str	r1, [r3, #8]
   8482e:	f200 8123 	bhi.w	84a78 <_realloc_r+0x2e8>
   84832:	2a13      	cmp	r2, #19
   84834:	f240 80b0 	bls.w	84998 <_realloc_r+0x208>
   84838:	6823      	ldr	r3, [r4, #0]
   8483a:	2a1b      	cmp	r2, #27
   8483c:	f8ca 3008 	str.w	r3, [sl, #8]
   84840:	6863      	ldr	r3, [r4, #4]
   84842:	f8ca 300c 	str.w	r3, [sl, #12]
   84846:	f200 812b 	bhi.w	84aa0 <_realloc_r+0x310>
   8484a:	3408      	adds	r4, #8
   8484c:	f10a 0310 	add.w	r3, sl, #16
   84850:	e0a3      	b.n	8499a <_realloc_r+0x20a>
   84852:	f026 0607 	bic.w	r6, r6, #7
   84856:	2e00      	cmp	r6, #0
   84858:	4631      	mov	r1, r6
   8485a:	dab0      	bge.n	847be <_realloc_r+0x2e>
   8485c:	230c      	movs	r3, #12
   8485e:	2000      	movs	r0, #0
   84860:	f8c9 3000 	str.w	r3, [r9]
   84864:	b003      	add	sp, #12
   84866:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   8486a:	46a0      	mov	r8, r4
   8486c:	1baa      	subs	r2, r5, r6
   8486e:	2a0f      	cmp	r2, #15
   84870:	f003 0301 	and.w	r3, r3, #1
   84874:	d81a      	bhi.n	848ac <_realloc_r+0x11c>
   84876:	432b      	orrs	r3, r5
   84878:	607b      	str	r3, [r7, #4]
   8487a:	443d      	add	r5, r7
   8487c:	686b      	ldr	r3, [r5, #4]
   8487e:	f043 0301 	orr.w	r3, r3, #1
   84882:	606b      	str	r3, [r5, #4]
   84884:	4648      	mov	r0, r9
   84886:	f7ff ff81 	bl	8478c <__malloc_unlock>
   8488a:	4640      	mov	r0, r8
   8488c:	b003      	add	sp, #12
   8488e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   84892:	f022 0203 	bic.w	r2, r2, #3
   84896:	eb02 0c05 	add.w	ip, r2, r5
   8489a:	458c      	cmp	ip, r1
   8489c:	dba6      	blt.n	847ec <_realloc_r+0x5c>
   8489e:	68c2      	ldr	r2, [r0, #12]
   848a0:	6881      	ldr	r1, [r0, #8]
   848a2:	46a0      	mov	r8, r4
   848a4:	60ca      	str	r2, [r1, #12]
   848a6:	4665      	mov	r5, ip
   848a8:	6091      	str	r1, [r2, #8]
   848aa:	e7df      	b.n	8486c <_realloc_r+0xdc>
   848ac:	19b9      	adds	r1, r7, r6
   848ae:	4333      	orrs	r3, r6
   848b0:	f042 0001 	orr.w	r0, r2, #1
   848b4:	607b      	str	r3, [r7, #4]
   848b6:	440a      	add	r2, r1
   848b8:	6048      	str	r0, [r1, #4]
   848ba:	6853      	ldr	r3, [r2, #4]
   848bc:	3108      	adds	r1, #8
   848be:	f043 0301 	orr.w	r3, r3, #1
   848c2:	6053      	str	r3, [r2, #4]
   848c4:	4648      	mov	r0, r9
   848c6:	f7ff f8a9 	bl	83a1c <_free_r>
   848ca:	e7db      	b.n	84884 <_realloc_r+0xf4>
   848cc:	428b      	cmp	r3, r1
   848ce:	da33      	bge.n	84938 <_realloc_r+0x1a8>
   848d0:	4641      	mov	r1, r8
   848d2:	4648      	mov	r0, r9
   848d4:	f7ff fb96 	bl	84004 <_malloc_r>
   848d8:	4680      	mov	r8, r0
   848da:	2800      	cmp	r0, #0
   848dc:	d0d2      	beq.n	84884 <_realloc_r+0xf4>
   848de:	f854 3c04 	ldr.w	r3, [r4, #-4]
   848e2:	f1a0 0108 	sub.w	r1, r0, #8
   848e6:	f023 0201 	bic.w	r2, r3, #1
   848ea:	443a      	add	r2, r7
   848ec:	4291      	cmp	r1, r2
   848ee:	f000 80bc 	beq.w	84a6a <_realloc_r+0x2da>
   848f2:	1f2a      	subs	r2, r5, #4
   848f4:	2a24      	cmp	r2, #36	; 0x24
   848f6:	d86e      	bhi.n	849d6 <_realloc_r+0x246>
   848f8:	2a13      	cmp	r2, #19
   848fa:	d842      	bhi.n	84982 <_realloc_r+0x1f2>
   848fc:	4603      	mov	r3, r0
   848fe:	4622      	mov	r2, r4
   84900:	6811      	ldr	r1, [r2, #0]
   84902:	6019      	str	r1, [r3, #0]
   84904:	6851      	ldr	r1, [r2, #4]
   84906:	6059      	str	r1, [r3, #4]
   84908:	6892      	ldr	r2, [r2, #8]
   8490a:	609a      	str	r2, [r3, #8]
   8490c:	4621      	mov	r1, r4
   8490e:	4648      	mov	r0, r9
   84910:	f7ff f884 	bl	83a1c <_free_r>
   84914:	e7b6      	b.n	84884 <_realloc_r+0xf4>
   84916:	4611      	mov	r1, r2
   84918:	b003      	add	sp, #12
   8491a:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   8491e:	f7ff bb71 	b.w	84004 <_malloc_r>
   84922:	f8de 2004 	ldr.w	r2, [lr, #4]
   84926:	f106 0c10 	add.w	ip, r6, #16
   8492a:	f022 0203 	bic.w	r2, r2, #3
   8492e:	1950      	adds	r0, r2, r5
   84930:	4560      	cmp	r0, ip
   84932:	da3d      	bge.n	849b0 <_realloc_r+0x220>
   84934:	4670      	mov	r0, lr
   84936:	e759      	b.n	847ec <_realloc_r+0x5c>
   84938:	46d0      	mov	r8, sl
   8493a:	f858 0f08 	ldr.w	r0, [r8, #8]!
   8493e:	f8da 100c 	ldr.w	r1, [sl, #12]
   84942:	1f2a      	subs	r2, r5, #4
   84944:	2a24      	cmp	r2, #36	; 0x24
   84946:	60c1      	str	r1, [r0, #12]
   84948:	6088      	str	r0, [r1, #8]
   8494a:	f200 80a0 	bhi.w	84a8e <_realloc_r+0x2fe>
   8494e:	2a13      	cmp	r2, #19
   84950:	f240 809b 	bls.w	84a8a <_realloc_r+0x2fa>
   84954:	6821      	ldr	r1, [r4, #0]
   84956:	2a1b      	cmp	r2, #27
   84958:	f8ca 1008 	str.w	r1, [sl, #8]
   8495c:	6861      	ldr	r1, [r4, #4]
   8495e:	f8ca 100c 	str.w	r1, [sl, #12]
   84962:	f200 80b2 	bhi.w	84aca <_realloc_r+0x33a>
   84966:	3408      	adds	r4, #8
   84968:	f10a 0210 	add.w	r2, sl, #16
   8496c:	6821      	ldr	r1, [r4, #0]
   8496e:	461d      	mov	r5, r3
   84970:	6011      	str	r1, [r2, #0]
   84972:	6861      	ldr	r1, [r4, #4]
   84974:	4657      	mov	r7, sl
   84976:	6051      	str	r1, [r2, #4]
   84978:	68a3      	ldr	r3, [r4, #8]
   8497a:	6093      	str	r3, [r2, #8]
   8497c:	f8da 3004 	ldr.w	r3, [sl, #4]
   84980:	e774      	b.n	8486c <_realloc_r+0xdc>
   84982:	6823      	ldr	r3, [r4, #0]
   84984:	2a1b      	cmp	r2, #27
   84986:	6003      	str	r3, [r0, #0]
   84988:	6863      	ldr	r3, [r4, #4]
   8498a:	6043      	str	r3, [r0, #4]
   8498c:	d862      	bhi.n	84a54 <_realloc_r+0x2c4>
   8498e:	f100 0308 	add.w	r3, r0, #8
   84992:	f104 0208 	add.w	r2, r4, #8
   84996:	e7b3      	b.n	84900 <_realloc_r+0x170>
   84998:	4643      	mov	r3, r8
   8499a:	6822      	ldr	r2, [r4, #0]
   8499c:	4675      	mov	r5, lr
   8499e:	601a      	str	r2, [r3, #0]
   849a0:	6862      	ldr	r2, [r4, #4]
   849a2:	4657      	mov	r7, sl
   849a4:	605a      	str	r2, [r3, #4]
   849a6:	68a2      	ldr	r2, [r4, #8]
   849a8:	609a      	str	r2, [r3, #8]
   849aa:	f8da 3004 	ldr.w	r3, [sl, #4]
   849ae:	e75d      	b.n	8486c <_realloc_r+0xdc>
   849b0:	1b83      	subs	r3, r0, r6
   849b2:	4437      	add	r7, r6
   849b4:	f043 0301 	orr.w	r3, r3, #1
   849b8:	f8cb 7008 	str.w	r7, [fp, #8]
   849bc:	607b      	str	r3, [r7, #4]
   849be:	f854 3c04 	ldr.w	r3, [r4, #-4]
   849c2:	4648      	mov	r0, r9
   849c4:	f003 0301 	and.w	r3, r3, #1
   849c8:	431e      	orrs	r6, r3
   849ca:	f844 6c04 	str.w	r6, [r4, #-4]
   849ce:	f7ff fedd 	bl	8478c <__malloc_unlock>
   849d2:	4620      	mov	r0, r4
   849d4:	e75a      	b.n	8488c <_realloc_r+0xfc>
   849d6:	4621      	mov	r1, r4
   849d8:	f7ff fe70 	bl	846bc <memmove>
   849dc:	e796      	b.n	8490c <_realloc_r+0x17c>
   849de:	eb02 0c03 	add.w	ip, r2, r3
   849e2:	f106 0210 	add.w	r2, r6, #16
   849e6:	4594      	cmp	ip, r2
   849e8:	f6ff af70 	blt.w	848cc <_realloc_r+0x13c>
   849ec:	4657      	mov	r7, sl
   849ee:	f857 1f08 	ldr.w	r1, [r7, #8]!
   849f2:	f8da 300c 	ldr.w	r3, [sl, #12]
   849f6:	1f2a      	subs	r2, r5, #4
   849f8:	2a24      	cmp	r2, #36	; 0x24
   849fa:	60cb      	str	r3, [r1, #12]
   849fc:	6099      	str	r1, [r3, #8]
   849fe:	f200 8086 	bhi.w	84b0e <_realloc_r+0x37e>
   84a02:	2a13      	cmp	r2, #19
   84a04:	d977      	bls.n	84af6 <_realloc_r+0x366>
   84a06:	6823      	ldr	r3, [r4, #0]
   84a08:	2a1b      	cmp	r2, #27
   84a0a:	f8ca 3008 	str.w	r3, [sl, #8]
   84a0e:	6863      	ldr	r3, [r4, #4]
   84a10:	f8ca 300c 	str.w	r3, [sl, #12]
   84a14:	f200 8084 	bhi.w	84b20 <_realloc_r+0x390>
   84a18:	3408      	adds	r4, #8
   84a1a:	f10a 0310 	add.w	r3, sl, #16
   84a1e:	6822      	ldr	r2, [r4, #0]
   84a20:	601a      	str	r2, [r3, #0]
   84a22:	6862      	ldr	r2, [r4, #4]
   84a24:	605a      	str	r2, [r3, #4]
   84a26:	68a2      	ldr	r2, [r4, #8]
   84a28:	609a      	str	r2, [r3, #8]
   84a2a:	ebc6 020c 	rsb	r2, r6, ip
   84a2e:	eb0a 0306 	add.w	r3, sl, r6
   84a32:	f042 0201 	orr.w	r2, r2, #1
   84a36:	f8cb 3008 	str.w	r3, [fp, #8]
   84a3a:	605a      	str	r2, [r3, #4]
   84a3c:	f8da 3004 	ldr.w	r3, [sl, #4]
   84a40:	4648      	mov	r0, r9
   84a42:	f003 0301 	and.w	r3, r3, #1
   84a46:	431e      	orrs	r6, r3
   84a48:	f8ca 6004 	str.w	r6, [sl, #4]
   84a4c:	f7ff fe9e 	bl	8478c <__malloc_unlock>
   84a50:	4638      	mov	r0, r7
   84a52:	e71b      	b.n	8488c <_realloc_r+0xfc>
   84a54:	68a3      	ldr	r3, [r4, #8]
   84a56:	2a24      	cmp	r2, #36	; 0x24
   84a58:	6083      	str	r3, [r0, #8]
   84a5a:	68e3      	ldr	r3, [r4, #12]
   84a5c:	60c3      	str	r3, [r0, #12]
   84a5e:	d02b      	beq.n	84ab8 <_realloc_r+0x328>
   84a60:	f100 0310 	add.w	r3, r0, #16
   84a64:	f104 0210 	add.w	r2, r4, #16
   84a68:	e74a      	b.n	84900 <_realloc_r+0x170>
   84a6a:	f850 2c04 	ldr.w	r2, [r0, #-4]
   84a6e:	46a0      	mov	r8, r4
   84a70:	f022 0203 	bic.w	r2, r2, #3
   84a74:	4415      	add	r5, r2
   84a76:	e6f9      	b.n	8486c <_realloc_r+0xdc>
   84a78:	4621      	mov	r1, r4
   84a7a:	4640      	mov	r0, r8
   84a7c:	4675      	mov	r5, lr
   84a7e:	4657      	mov	r7, sl
   84a80:	f7ff fe1c 	bl	846bc <memmove>
   84a84:	f8da 3004 	ldr.w	r3, [sl, #4]
   84a88:	e6f0      	b.n	8486c <_realloc_r+0xdc>
   84a8a:	4642      	mov	r2, r8
   84a8c:	e76e      	b.n	8496c <_realloc_r+0x1dc>
   84a8e:	4621      	mov	r1, r4
   84a90:	4640      	mov	r0, r8
   84a92:	461d      	mov	r5, r3
   84a94:	4657      	mov	r7, sl
   84a96:	f7ff fe11 	bl	846bc <memmove>
   84a9a:	f8da 3004 	ldr.w	r3, [sl, #4]
   84a9e:	e6e5      	b.n	8486c <_realloc_r+0xdc>
   84aa0:	68a3      	ldr	r3, [r4, #8]
   84aa2:	2a24      	cmp	r2, #36	; 0x24
   84aa4:	f8ca 3010 	str.w	r3, [sl, #16]
   84aa8:	68e3      	ldr	r3, [r4, #12]
   84aaa:	f8ca 3014 	str.w	r3, [sl, #20]
   84aae:	d018      	beq.n	84ae2 <_realloc_r+0x352>
   84ab0:	3410      	adds	r4, #16
   84ab2:	f10a 0318 	add.w	r3, sl, #24
   84ab6:	e770      	b.n	8499a <_realloc_r+0x20a>
   84ab8:	6922      	ldr	r2, [r4, #16]
   84aba:	f100 0318 	add.w	r3, r0, #24
   84abe:	6102      	str	r2, [r0, #16]
   84ac0:	6961      	ldr	r1, [r4, #20]
   84ac2:	f104 0218 	add.w	r2, r4, #24
   84ac6:	6141      	str	r1, [r0, #20]
   84ac8:	e71a      	b.n	84900 <_realloc_r+0x170>
   84aca:	68a1      	ldr	r1, [r4, #8]
   84acc:	2a24      	cmp	r2, #36	; 0x24
   84ace:	f8ca 1010 	str.w	r1, [sl, #16]
   84ad2:	68e1      	ldr	r1, [r4, #12]
   84ad4:	f8ca 1014 	str.w	r1, [sl, #20]
   84ad8:	d00f      	beq.n	84afa <_realloc_r+0x36a>
   84ada:	3410      	adds	r4, #16
   84adc:	f10a 0218 	add.w	r2, sl, #24
   84ae0:	e744      	b.n	8496c <_realloc_r+0x1dc>
   84ae2:	6922      	ldr	r2, [r4, #16]
   84ae4:	f10a 0320 	add.w	r3, sl, #32
   84ae8:	f8ca 2018 	str.w	r2, [sl, #24]
   84aec:	6962      	ldr	r2, [r4, #20]
   84aee:	3418      	adds	r4, #24
   84af0:	f8ca 201c 	str.w	r2, [sl, #28]
   84af4:	e751      	b.n	8499a <_realloc_r+0x20a>
   84af6:	463b      	mov	r3, r7
   84af8:	e791      	b.n	84a1e <_realloc_r+0x28e>
   84afa:	6921      	ldr	r1, [r4, #16]
   84afc:	f10a 0220 	add.w	r2, sl, #32
   84b00:	f8ca 1018 	str.w	r1, [sl, #24]
   84b04:	6961      	ldr	r1, [r4, #20]
   84b06:	3418      	adds	r4, #24
   84b08:	f8ca 101c 	str.w	r1, [sl, #28]
   84b0c:	e72e      	b.n	8496c <_realloc_r+0x1dc>
   84b0e:	4621      	mov	r1, r4
   84b10:	4638      	mov	r0, r7
   84b12:	f8cd c004 	str.w	ip, [sp, #4]
   84b16:	f7ff fdd1 	bl	846bc <memmove>
   84b1a:	f8dd c004 	ldr.w	ip, [sp, #4]
   84b1e:	e784      	b.n	84a2a <_realloc_r+0x29a>
   84b20:	68a3      	ldr	r3, [r4, #8]
   84b22:	2a24      	cmp	r2, #36	; 0x24
   84b24:	f8ca 3010 	str.w	r3, [sl, #16]
   84b28:	68e3      	ldr	r3, [r4, #12]
   84b2a:	f8ca 3014 	str.w	r3, [sl, #20]
   84b2e:	d003      	beq.n	84b38 <_realloc_r+0x3a8>
   84b30:	3410      	adds	r4, #16
   84b32:	f10a 0318 	add.w	r3, sl, #24
   84b36:	e772      	b.n	84a1e <_realloc_r+0x28e>
   84b38:	6922      	ldr	r2, [r4, #16]
   84b3a:	f10a 0320 	add.w	r3, sl, #32
   84b3e:	f8ca 2018 	str.w	r2, [sl, #24]
   84b42:	6962      	ldr	r2, [r4, #20]
   84b44:	3418      	adds	r4, #24
   84b46:	f8ca 201c 	str.w	r2, [sl, #28]
   84b4a:	e768      	b.n	84a1e <_realloc_r+0x28e>
   84b4c:	200704c0 	.word	0x200704c0

00084b50 <_sbrk_r>:
   84b50:	b538      	push	{r3, r4, r5, lr}
   84b52:	4c07      	ldr	r4, [pc, #28]	; (84b70 <_sbrk_r+0x20>)
   84b54:	2300      	movs	r3, #0
   84b56:	4605      	mov	r5, r0
   84b58:	4608      	mov	r0, r1
   84b5a:	6023      	str	r3, [r4, #0]
   84b5c:	f7fc fc1a 	bl	81394 <_sbrk>
   84b60:	1c43      	adds	r3, r0, #1
   84b62:	d000      	beq.n	84b66 <_sbrk_r+0x16>
   84b64:	bd38      	pop	{r3, r4, r5, pc}
   84b66:	6823      	ldr	r3, [r4, #0]
   84b68:	2b00      	cmp	r3, #0
   84b6a:	d0fb      	beq.n	84b64 <_sbrk_r+0x14>
   84b6c:	602b      	str	r3, [r5, #0]
   84b6e:	bd38      	pop	{r3, r4, r5, pc}
   84b70:	200797d4 	.word	0x200797d4

00084b74 <_kill_r>:
   84b74:	b538      	push	{r3, r4, r5, lr}
   84b76:	4c08      	ldr	r4, [pc, #32]	; (84b98 <_kill_r+0x24>)
   84b78:	2300      	movs	r3, #0
   84b7a:	4605      	mov	r5, r0
   84b7c:	4608      	mov	r0, r1
   84b7e:	4611      	mov	r1, r2
   84b80:	6023      	str	r3, [r4, #0]
   84b82:	f7fc fc41 	bl	81408 <_kill>
   84b86:	1c43      	adds	r3, r0, #1
   84b88:	d000      	beq.n	84b8c <_kill_r+0x18>
   84b8a:	bd38      	pop	{r3, r4, r5, pc}
   84b8c:	6823      	ldr	r3, [r4, #0]
   84b8e:	2b00      	cmp	r3, #0
   84b90:	d0fb      	beq.n	84b8a <_kill_r+0x16>
   84b92:	602b      	str	r3, [r5, #0]
   84b94:	bd38      	pop	{r3, r4, r5, pc}
   84b96:	bf00      	nop
   84b98:	200797d4 	.word	0x200797d4

00084b9c <__sread>:
   84b9c:	b510      	push	{r4, lr}
   84b9e:	460c      	mov	r4, r1
   84ba0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
   84ba4:	f000 f9c2 	bl	84f2c <_read_r>
   84ba8:	2800      	cmp	r0, #0
   84baa:	db03      	blt.n	84bb4 <__sread+0x18>
   84bac:	6d23      	ldr	r3, [r4, #80]	; 0x50
   84bae:	4403      	add	r3, r0
   84bb0:	6523      	str	r3, [r4, #80]	; 0x50
   84bb2:	bd10      	pop	{r4, pc}
   84bb4:	89a3      	ldrh	r3, [r4, #12]
   84bb6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
   84bba:	81a3      	strh	r3, [r4, #12]
   84bbc:	bd10      	pop	{r4, pc}
   84bbe:	bf00      	nop

00084bc0 <__swrite>:
   84bc0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   84bc4:	460c      	mov	r4, r1
   84bc6:	8989      	ldrh	r1, [r1, #12]
   84bc8:	461d      	mov	r5, r3
   84bca:	05cb      	lsls	r3, r1, #23
   84bcc:	4616      	mov	r6, r2
   84bce:	4607      	mov	r7, r0
   84bd0:	d506      	bpl.n	84be0 <__swrite+0x20>
   84bd2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
   84bd6:	2200      	movs	r2, #0
   84bd8:	2302      	movs	r3, #2
   84bda:	f000 f993 	bl	84f04 <_lseek_r>
   84bde:	89a1      	ldrh	r1, [r4, #12]
   84be0:	f421 5180 	bic.w	r1, r1, #4096	; 0x1000
   84be4:	81a1      	strh	r1, [r4, #12]
   84be6:	4638      	mov	r0, r7
   84be8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
   84bec:	4632      	mov	r2, r6
   84bee:	462b      	mov	r3, r5
   84bf0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
   84bf4:	f000 b89e 	b.w	84d34 <_write_r>

00084bf8 <__sseek>:
   84bf8:	b510      	push	{r4, lr}
   84bfa:	460c      	mov	r4, r1
   84bfc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
   84c00:	f000 f980 	bl	84f04 <_lseek_r>
   84c04:	89a3      	ldrh	r3, [r4, #12]
   84c06:	1c42      	adds	r2, r0, #1
   84c08:	bf0e      	itee	eq
   84c0a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
   84c0e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
   84c12:	6520      	strne	r0, [r4, #80]	; 0x50
   84c14:	81a3      	strh	r3, [r4, #12]
   84c16:	bd10      	pop	{r4, pc}

00084c18 <__sclose>:
   84c18:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
   84c1c:	f000 b8f2 	b.w	84e04 <_close_r>

00084c20 <__swbuf_r>:
   84c20:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   84c22:	460d      	mov	r5, r1
   84c24:	4614      	mov	r4, r2
   84c26:	4607      	mov	r7, r0
   84c28:	b110      	cbz	r0, 84c30 <__swbuf_r+0x10>
   84c2a:	6b83      	ldr	r3, [r0, #56]	; 0x38
   84c2c:	2b00      	cmp	r3, #0
   84c2e:	d048      	beq.n	84cc2 <__swbuf_r+0xa2>
   84c30:	89a2      	ldrh	r2, [r4, #12]
   84c32:	69a0      	ldr	r0, [r4, #24]
   84c34:	b293      	uxth	r3, r2
   84c36:	60a0      	str	r0, [r4, #8]
   84c38:	0718      	lsls	r0, r3, #28
   84c3a:	d538      	bpl.n	84cae <__swbuf_r+0x8e>
   84c3c:	6926      	ldr	r6, [r4, #16]
   84c3e:	2e00      	cmp	r6, #0
   84c40:	d035      	beq.n	84cae <__swbuf_r+0x8e>
   84c42:	0499      	lsls	r1, r3, #18
   84c44:	b2ed      	uxtb	r5, r5
   84c46:	d515      	bpl.n	84c74 <__swbuf_r+0x54>
   84c48:	6823      	ldr	r3, [r4, #0]
   84c4a:	6962      	ldr	r2, [r4, #20]
   84c4c:	1b9e      	subs	r6, r3, r6
   84c4e:	4296      	cmp	r6, r2
   84c50:	da1c      	bge.n	84c8c <__swbuf_r+0x6c>
   84c52:	3601      	adds	r6, #1
   84c54:	68a2      	ldr	r2, [r4, #8]
   84c56:	1c59      	adds	r1, r3, #1
   84c58:	3a01      	subs	r2, #1
   84c5a:	60a2      	str	r2, [r4, #8]
   84c5c:	6021      	str	r1, [r4, #0]
   84c5e:	701d      	strb	r5, [r3, #0]
   84c60:	6963      	ldr	r3, [r4, #20]
   84c62:	42b3      	cmp	r3, r6
   84c64:	d01a      	beq.n	84c9c <__swbuf_r+0x7c>
   84c66:	89a3      	ldrh	r3, [r4, #12]
   84c68:	07db      	lsls	r3, r3, #31
   84c6a:	d501      	bpl.n	84c70 <__swbuf_r+0x50>
   84c6c:	2d0a      	cmp	r5, #10
   84c6e:	d015      	beq.n	84c9c <__swbuf_r+0x7c>
   84c70:	4628      	mov	r0, r5
   84c72:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   84c74:	6e63      	ldr	r3, [r4, #100]	; 0x64
   84c76:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
   84c7a:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
   84c7e:	6663      	str	r3, [r4, #100]	; 0x64
   84c80:	6823      	ldr	r3, [r4, #0]
   84c82:	81a2      	strh	r2, [r4, #12]
   84c84:	6962      	ldr	r2, [r4, #20]
   84c86:	1b9e      	subs	r6, r3, r6
   84c88:	4296      	cmp	r6, r2
   84c8a:	dbe2      	blt.n	84c52 <__swbuf_r+0x32>
   84c8c:	4638      	mov	r0, r7
   84c8e:	4621      	mov	r1, r4
   84c90:	f7fe fd64 	bl	8375c <_fflush_r>
   84c94:	b940      	cbnz	r0, 84ca8 <__swbuf_r+0x88>
   84c96:	6823      	ldr	r3, [r4, #0]
   84c98:	2601      	movs	r6, #1
   84c9a:	e7db      	b.n	84c54 <__swbuf_r+0x34>
   84c9c:	4638      	mov	r0, r7
   84c9e:	4621      	mov	r1, r4
   84ca0:	f7fe fd5c 	bl	8375c <_fflush_r>
   84ca4:	2800      	cmp	r0, #0
   84ca6:	d0e3      	beq.n	84c70 <__swbuf_r+0x50>
   84ca8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   84cac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   84cae:	4638      	mov	r0, r7
   84cb0:	4621      	mov	r1, r4
   84cb2:	f7fe fc3d 	bl	83530 <__swsetup_r>
   84cb6:	2800      	cmp	r0, #0
   84cb8:	d1f6      	bne.n	84ca8 <__swbuf_r+0x88>
   84cba:	89a2      	ldrh	r2, [r4, #12]
   84cbc:	6926      	ldr	r6, [r4, #16]
   84cbe:	b293      	uxth	r3, r2
   84cc0:	e7bf      	b.n	84c42 <__swbuf_r+0x22>
   84cc2:	f7fe fd67 	bl	83794 <__sinit>
   84cc6:	e7b3      	b.n	84c30 <__swbuf_r+0x10>

00084cc8 <_wcrtomb_r>:
   84cc8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   84ccc:	461e      	mov	r6, r3
   84cce:	b086      	sub	sp, #24
   84cd0:	460c      	mov	r4, r1
   84cd2:	4605      	mov	r5, r0
   84cd4:	4617      	mov	r7, r2
   84cd6:	4b0f      	ldr	r3, [pc, #60]	; (84d14 <_wcrtomb_r+0x4c>)
   84cd8:	b191      	cbz	r1, 84d00 <_wcrtomb_r+0x38>
   84cda:	f8d3 8000 	ldr.w	r8, [r3]
   84cde:	f7ff f917 	bl	83f10 <__locale_charset>
   84ce2:	9600      	str	r6, [sp, #0]
   84ce4:	4603      	mov	r3, r0
   84ce6:	4621      	mov	r1, r4
   84ce8:	463a      	mov	r2, r7
   84cea:	4628      	mov	r0, r5
   84cec:	47c0      	blx	r8
   84cee:	1c43      	adds	r3, r0, #1
   84cf0:	d103      	bne.n	84cfa <_wcrtomb_r+0x32>
   84cf2:	2200      	movs	r2, #0
   84cf4:	238a      	movs	r3, #138	; 0x8a
   84cf6:	6032      	str	r2, [r6, #0]
   84cf8:	602b      	str	r3, [r5, #0]
   84cfa:	b006      	add	sp, #24
   84cfc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   84d00:	681f      	ldr	r7, [r3, #0]
   84d02:	f7ff f905 	bl	83f10 <__locale_charset>
   84d06:	9600      	str	r6, [sp, #0]
   84d08:	4603      	mov	r3, r0
   84d0a:	4622      	mov	r2, r4
   84d0c:	4628      	mov	r0, r5
   84d0e:	a903      	add	r1, sp, #12
   84d10:	47b8      	blx	r7
   84d12:	e7ec      	b.n	84cee <_wcrtomb_r+0x26>
   84d14:	200708d0 	.word	0x200708d0

00084d18 <__ascii_wctomb>:
   84d18:	b121      	cbz	r1, 84d24 <__ascii_wctomb+0xc>
   84d1a:	2aff      	cmp	r2, #255	; 0xff
   84d1c:	d804      	bhi.n	84d28 <__ascii_wctomb+0x10>
   84d1e:	700a      	strb	r2, [r1, #0]
   84d20:	2001      	movs	r0, #1
   84d22:	4770      	bx	lr
   84d24:	4608      	mov	r0, r1
   84d26:	4770      	bx	lr
   84d28:	238a      	movs	r3, #138	; 0x8a
   84d2a:	6003      	str	r3, [r0, #0]
   84d2c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   84d30:	4770      	bx	lr
   84d32:	bf00      	nop

00084d34 <_write_r>:
   84d34:	b570      	push	{r4, r5, r6, lr}
   84d36:	4c08      	ldr	r4, [pc, #32]	; (84d58 <_write_r+0x24>)
   84d38:	4606      	mov	r6, r0
   84d3a:	2500      	movs	r5, #0
   84d3c:	4608      	mov	r0, r1
   84d3e:	4611      	mov	r1, r2
   84d40:	461a      	mov	r2, r3
   84d42:	6025      	str	r5, [r4, #0]
   84d44:	f7fc fb46 	bl	813d4 <_write>
   84d48:	1c43      	adds	r3, r0, #1
   84d4a:	d000      	beq.n	84d4e <_write_r+0x1a>
   84d4c:	bd70      	pop	{r4, r5, r6, pc}
   84d4e:	6823      	ldr	r3, [r4, #0]
   84d50:	2b00      	cmp	r3, #0
   84d52:	d0fb      	beq.n	84d4c <_write_r+0x18>
   84d54:	6033      	str	r3, [r6, #0]
   84d56:	bd70      	pop	{r4, r5, r6, pc}
   84d58:	200797d4 	.word	0x200797d4

00084d5c <__register_exitproc>:
   84d5c:	b5f0      	push	{r4, r5, r6, r7, lr}
   84d5e:	4c27      	ldr	r4, [pc, #156]	; (84dfc <__register_exitproc+0xa0>)
   84d60:	b085      	sub	sp, #20
   84d62:	6826      	ldr	r6, [r4, #0]
   84d64:	4607      	mov	r7, r0
   84d66:	f8d6 4148 	ldr.w	r4, [r6, #328]	; 0x148
   84d6a:	2c00      	cmp	r4, #0
   84d6c:	d040      	beq.n	84df0 <__register_exitproc+0x94>
   84d6e:	6865      	ldr	r5, [r4, #4]
   84d70:	2d1f      	cmp	r5, #31
   84d72:	dd1e      	ble.n	84db2 <__register_exitproc+0x56>
   84d74:	4822      	ldr	r0, [pc, #136]	; (84e00 <__register_exitproc+0xa4>)
   84d76:	b918      	cbnz	r0, 84d80 <__register_exitproc+0x24>
   84d78:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   84d7c:	b005      	add	sp, #20
   84d7e:	bdf0      	pop	{r4, r5, r6, r7, pc}
   84d80:	f44f 70c8 	mov.w	r0, #400	; 0x190
   84d84:	9103      	str	r1, [sp, #12]
   84d86:	9202      	str	r2, [sp, #8]
   84d88:	9301      	str	r3, [sp, #4]
   84d8a:	f3af 8000 	nop.w
   84d8e:	9903      	ldr	r1, [sp, #12]
   84d90:	4604      	mov	r4, r0
   84d92:	9a02      	ldr	r2, [sp, #8]
   84d94:	9b01      	ldr	r3, [sp, #4]
   84d96:	2800      	cmp	r0, #0
   84d98:	d0ee      	beq.n	84d78 <__register_exitproc+0x1c>
   84d9a:	f8d6 5148 	ldr.w	r5, [r6, #328]	; 0x148
   84d9e:	2000      	movs	r0, #0
   84da0:	6025      	str	r5, [r4, #0]
   84da2:	6060      	str	r0, [r4, #4]
   84da4:	4605      	mov	r5, r0
   84da6:	f8c6 4148 	str.w	r4, [r6, #328]	; 0x148
   84daa:	f8c4 0188 	str.w	r0, [r4, #392]	; 0x188
   84dae:	f8c4 018c 	str.w	r0, [r4, #396]	; 0x18c
   84db2:	b93f      	cbnz	r7, 84dc4 <__register_exitproc+0x68>
   84db4:	1c6b      	adds	r3, r5, #1
   84db6:	2000      	movs	r0, #0
   84db8:	3502      	adds	r5, #2
   84dba:	6063      	str	r3, [r4, #4]
   84dbc:	f844 1025 	str.w	r1, [r4, r5, lsl #2]
   84dc0:	b005      	add	sp, #20
   84dc2:	bdf0      	pop	{r4, r5, r6, r7, pc}
   84dc4:	2601      	movs	r6, #1
   84dc6:	40ae      	lsls	r6, r5
   84dc8:	eb04 0085 	add.w	r0, r4, r5, lsl #2
   84dcc:	f8c0 2088 	str.w	r2, [r0, #136]	; 0x88
   84dd0:	f8d4 2188 	ldr.w	r2, [r4, #392]	; 0x188
   84dd4:	2f02      	cmp	r7, #2
   84dd6:	ea42 0206 	orr.w	r2, r2, r6
   84dda:	f8c4 2188 	str.w	r2, [r4, #392]	; 0x188
   84dde:	f8c0 3108 	str.w	r3, [r0, #264]	; 0x108
   84de2:	d1e7      	bne.n	84db4 <__register_exitproc+0x58>
   84de4:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
   84de8:	431e      	orrs	r6, r3
   84dea:	f8c4 618c 	str.w	r6, [r4, #396]	; 0x18c
   84dee:	e7e1      	b.n	84db4 <__register_exitproc+0x58>
   84df0:	f506 74a6 	add.w	r4, r6, #332	; 0x14c
   84df4:	f8c6 4148 	str.w	r4, [r6, #328]	; 0x148
   84df8:	e7b9      	b.n	84d6e <__register_exitproc+0x12>
   84dfa:	bf00      	nop
   84dfc:	00086180 	.word	0x00086180
   84e00:	00000000 	.word	0x00000000

00084e04 <_close_r>:
   84e04:	b538      	push	{r3, r4, r5, lr}
   84e06:	4c07      	ldr	r4, [pc, #28]	; (84e24 <_close_r+0x20>)
   84e08:	2300      	movs	r3, #0
   84e0a:	4605      	mov	r5, r0
   84e0c:	4608      	mov	r0, r1
   84e0e:	6023      	str	r3, [r4, #0]
   84e10:	f7fc fad1 	bl	813b6 <_close>
   84e14:	1c43      	adds	r3, r0, #1
   84e16:	d000      	beq.n	84e1a <_close_r+0x16>
   84e18:	bd38      	pop	{r3, r4, r5, pc}
   84e1a:	6823      	ldr	r3, [r4, #0]
   84e1c:	2b00      	cmp	r3, #0
   84e1e:	d0fb      	beq.n	84e18 <_close_r+0x14>
   84e20:	602b      	str	r3, [r5, #0]
   84e22:	bd38      	pop	{r3, r4, r5, pc}
   84e24:	200797d4 	.word	0x200797d4

00084e28 <_fclose_r>:
   84e28:	b570      	push	{r4, r5, r6, lr}
   84e2a:	460c      	mov	r4, r1
   84e2c:	4605      	mov	r5, r0
   84e2e:	b131      	cbz	r1, 84e3e <_fclose_r+0x16>
   84e30:	b110      	cbz	r0, 84e38 <_fclose_r+0x10>
   84e32:	6b83      	ldr	r3, [r0, #56]	; 0x38
   84e34:	2b00      	cmp	r3, #0
   84e36:	d02f      	beq.n	84e98 <_fclose_r+0x70>
   84e38:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
   84e3c:	b90b      	cbnz	r3, 84e42 <_fclose_r+0x1a>
   84e3e:	2000      	movs	r0, #0
   84e40:	bd70      	pop	{r4, r5, r6, pc}
   84e42:	4628      	mov	r0, r5
   84e44:	4621      	mov	r1, r4
   84e46:	f7fe fc89 	bl	8375c <_fflush_r>
   84e4a:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
   84e4c:	4606      	mov	r6, r0
   84e4e:	b133      	cbz	r3, 84e5e <_fclose_r+0x36>
   84e50:	4628      	mov	r0, r5
   84e52:	69e1      	ldr	r1, [r4, #28]
   84e54:	4798      	blx	r3
   84e56:	2800      	cmp	r0, #0
   84e58:	bfb8      	it	lt
   84e5a:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
   84e5e:	89a3      	ldrh	r3, [r4, #12]
   84e60:	061b      	lsls	r3, r3, #24
   84e62:	d41c      	bmi.n	84e9e <_fclose_r+0x76>
   84e64:	6b21      	ldr	r1, [r4, #48]	; 0x30
   84e66:	b141      	cbz	r1, 84e7a <_fclose_r+0x52>
   84e68:	f104 0340 	add.w	r3, r4, #64	; 0x40
   84e6c:	4299      	cmp	r1, r3
   84e6e:	d002      	beq.n	84e76 <_fclose_r+0x4e>
   84e70:	4628      	mov	r0, r5
   84e72:	f7fe fdd3 	bl	83a1c <_free_r>
   84e76:	2300      	movs	r3, #0
   84e78:	6323      	str	r3, [r4, #48]	; 0x30
   84e7a:	6c61      	ldr	r1, [r4, #68]	; 0x44
   84e7c:	b121      	cbz	r1, 84e88 <_fclose_r+0x60>
   84e7e:	4628      	mov	r0, r5
   84e80:	f7fe fdcc 	bl	83a1c <_free_r>
   84e84:	2300      	movs	r3, #0
   84e86:	6463      	str	r3, [r4, #68]	; 0x44
   84e88:	f7fe fcfe 	bl	83888 <__sfp_lock_acquire>
   84e8c:	2300      	movs	r3, #0
   84e8e:	81a3      	strh	r3, [r4, #12]
   84e90:	f7fe fcfc 	bl	8388c <__sfp_lock_release>
   84e94:	4630      	mov	r0, r6
   84e96:	bd70      	pop	{r4, r5, r6, pc}
   84e98:	f7fe fc7c 	bl	83794 <__sinit>
   84e9c:	e7cc      	b.n	84e38 <_fclose_r+0x10>
   84e9e:	4628      	mov	r0, r5
   84ea0:	6921      	ldr	r1, [r4, #16]
   84ea2:	f7fe fdbb 	bl	83a1c <_free_r>
   84ea6:	e7dd      	b.n	84e64 <_fclose_r+0x3c>

00084ea8 <fclose>:
   84ea8:	4b02      	ldr	r3, [pc, #8]	; (84eb4 <fclose+0xc>)
   84eaa:	4601      	mov	r1, r0
   84eac:	6818      	ldr	r0, [r3, #0]
   84eae:	f7ff bfbb 	b.w	84e28 <_fclose_r>
   84eb2:	bf00      	nop
   84eb4:	20070498 	.word	0x20070498

00084eb8 <_fstat_r>:
   84eb8:	b538      	push	{r3, r4, r5, lr}
   84eba:	4c08      	ldr	r4, [pc, #32]	; (84edc <_fstat_r+0x24>)
   84ebc:	2300      	movs	r3, #0
   84ebe:	4605      	mov	r5, r0
   84ec0:	4608      	mov	r0, r1
   84ec2:	4611      	mov	r1, r2
   84ec4:	6023      	str	r3, [r4, #0]
   84ec6:	f7fc fa79 	bl	813bc <_fstat>
   84eca:	1c43      	adds	r3, r0, #1
   84ecc:	d000      	beq.n	84ed0 <_fstat_r+0x18>
   84ece:	bd38      	pop	{r3, r4, r5, pc}
   84ed0:	6823      	ldr	r3, [r4, #0]
   84ed2:	2b00      	cmp	r3, #0
   84ed4:	d0fb      	beq.n	84ece <_fstat_r+0x16>
   84ed6:	602b      	str	r3, [r5, #0]
   84ed8:	bd38      	pop	{r3, r4, r5, pc}
   84eda:	bf00      	nop
   84edc:	200797d4 	.word	0x200797d4

00084ee0 <_isatty_r>:
   84ee0:	b538      	push	{r3, r4, r5, lr}
   84ee2:	4c07      	ldr	r4, [pc, #28]	; (84f00 <_isatty_r+0x20>)
   84ee4:	2300      	movs	r3, #0
   84ee6:	4605      	mov	r5, r0
   84ee8:	4608      	mov	r0, r1
   84eea:	6023      	str	r3, [r4, #0]
   84eec:	f7fc fa6b 	bl	813c6 <_isatty>
   84ef0:	1c43      	adds	r3, r0, #1
   84ef2:	d000      	beq.n	84ef6 <_isatty_r+0x16>
   84ef4:	bd38      	pop	{r3, r4, r5, pc}
   84ef6:	6823      	ldr	r3, [r4, #0]
   84ef8:	2b00      	cmp	r3, #0
   84efa:	d0fb      	beq.n	84ef4 <_isatty_r+0x14>
   84efc:	602b      	str	r3, [r5, #0]
   84efe:	bd38      	pop	{r3, r4, r5, pc}
   84f00:	200797d4 	.word	0x200797d4

00084f04 <_lseek_r>:
   84f04:	b570      	push	{r4, r5, r6, lr}
   84f06:	4c08      	ldr	r4, [pc, #32]	; (84f28 <_lseek_r+0x24>)
   84f08:	4606      	mov	r6, r0
   84f0a:	2500      	movs	r5, #0
   84f0c:	4608      	mov	r0, r1
   84f0e:	4611      	mov	r1, r2
   84f10:	461a      	mov	r2, r3
   84f12:	6025      	str	r5, [r4, #0]
   84f14:	f7fc fa59 	bl	813ca <_lseek>
   84f18:	1c43      	adds	r3, r0, #1
   84f1a:	d000      	beq.n	84f1e <_lseek_r+0x1a>
   84f1c:	bd70      	pop	{r4, r5, r6, pc}
   84f1e:	6823      	ldr	r3, [r4, #0]
   84f20:	2b00      	cmp	r3, #0
   84f22:	d0fb      	beq.n	84f1c <_lseek_r+0x18>
   84f24:	6033      	str	r3, [r6, #0]
   84f26:	bd70      	pop	{r4, r5, r6, pc}
   84f28:	200797d4 	.word	0x200797d4

00084f2c <_read_r>:
   84f2c:	b570      	push	{r4, r5, r6, lr}
   84f2e:	4c08      	ldr	r4, [pc, #32]	; (84f50 <_read_r+0x24>)
   84f30:	4606      	mov	r6, r0
   84f32:	2500      	movs	r5, #0
   84f34:	4608      	mov	r0, r1
   84f36:	4611      	mov	r1, r2
   84f38:	461a      	mov	r2, r3
   84f3a:	6025      	str	r5, [r4, #0]
   84f3c:	f7fc fa47 	bl	813ce <_read>
   84f40:	1c43      	adds	r3, r0, #1
   84f42:	d000      	beq.n	84f46 <_read_r+0x1a>
   84f44:	bd70      	pop	{r4, r5, r6, pc}
   84f46:	6823      	ldr	r3, [r4, #0]
   84f48:	2b00      	cmp	r3, #0
   84f4a:	d0fb      	beq.n	84f44 <_read_r+0x18>
   84f4c:	6033      	str	r3, [r6, #0]
   84f4e:	bd70      	pop	{r4, r5, r6, pc}
   84f50:	200797d4 	.word	0x200797d4

00084f54 <__aeabi_uldivmod>:
   84f54:	b94b      	cbnz	r3, 84f6a <__aeabi_uldivmod+0x16>
   84f56:	b942      	cbnz	r2, 84f6a <__aeabi_uldivmod+0x16>
   84f58:	2900      	cmp	r1, #0
   84f5a:	bf08      	it	eq
   84f5c:	2800      	cmpeq	r0, #0
   84f5e:	d002      	beq.n	84f66 <__aeabi_uldivmod+0x12>
   84f60:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
   84f64:	4608      	mov	r0, r1
   84f66:	f000 b83b 	b.w	84fe0 <__aeabi_idiv0>
   84f6a:	b082      	sub	sp, #8
   84f6c:	46ec      	mov	ip, sp
   84f6e:	e92d 5000 	stmdb	sp!, {ip, lr}
   84f72:	f000 f81d 	bl	84fb0 <__gnu_uldivmod_helper>
   84f76:	f8dd e004 	ldr.w	lr, [sp, #4]
   84f7a:	b002      	add	sp, #8
   84f7c:	bc0c      	pop	{r2, r3}
   84f7e:	4770      	bx	lr

00084f80 <__gnu_ldivmod_helper>:
   84f80:	e92d 4f70 	stmdb	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
   84f84:	9e08      	ldr	r6, [sp, #32]
   84f86:	4614      	mov	r4, r2
   84f88:	461d      	mov	r5, r3
   84f8a:	4680      	mov	r8, r0
   84f8c:	4689      	mov	r9, r1
   84f8e:	f000 f829 	bl	84fe4 <__divdi3>
   84f92:	fb04 f301 	mul.w	r3, r4, r1
   84f96:	fba4 ab00 	umull	sl, fp, r4, r0
   84f9a:	fb00 3205 	mla	r2, r0, r5, r3
   84f9e:	4493      	add	fp, r2
   84fa0:	ebb8 080a 	subs.w	r8, r8, sl
   84fa4:	eb69 090b 	sbc.w	r9, r9, fp
   84fa8:	e9c6 8900 	strd	r8, r9, [r6]
   84fac:	e8bd 8f70 	ldmia.w	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}

00084fb0 <__gnu_uldivmod_helper>:
   84fb0:	e92d 4f70 	stmdb	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
   84fb4:	9e08      	ldr	r6, [sp, #32]
   84fb6:	4614      	mov	r4, r2
   84fb8:	461d      	mov	r5, r3
   84fba:	4680      	mov	r8, r0
   84fbc:	4689      	mov	r9, r1
   84fbe:	f000 f961 	bl	85284 <__udivdi3>
   84fc2:	fb00 f505 	mul.w	r5, r0, r5
   84fc6:	fba0 ab04 	umull	sl, fp, r0, r4
   84fca:	fb04 5401 	mla	r4, r4, r1, r5
   84fce:	44a3      	add	fp, r4
   84fd0:	ebb8 080a 	subs.w	r8, r8, sl
   84fd4:	eb69 090b 	sbc.w	r9, r9, fp
   84fd8:	e9c6 8900 	strd	r8, r9, [r6]
   84fdc:	e8bd 8f70 	ldmia.w	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}

00084fe0 <__aeabi_idiv0>:
   84fe0:	4770      	bx	lr
   84fe2:	bf00      	nop

00084fe4 <__divdi3>:
   84fe4:	2900      	cmp	r1, #0
   84fe6:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   84fea:	f2c0 80a1 	blt.w	85130 <__divdi3+0x14c>
   84fee:	2400      	movs	r4, #0
   84ff0:	2b00      	cmp	r3, #0
   84ff2:	f2c0 8098 	blt.w	85126 <__divdi3+0x142>
   84ff6:	4615      	mov	r5, r2
   84ff8:	4606      	mov	r6, r0
   84ffa:	460f      	mov	r7, r1
   84ffc:	2b00      	cmp	r3, #0
   84ffe:	d13f      	bne.n	85080 <__divdi3+0x9c>
   85000:	428a      	cmp	r2, r1
   85002:	d958      	bls.n	850b6 <__divdi3+0xd2>
   85004:	fab2 f382 	clz	r3, r2
   85008:	b14b      	cbz	r3, 8501e <__divdi3+0x3a>
   8500a:	f1c3 0220 	rsb	r2, r3, #32
   8500e:	fa01 f703 	lsl.w	r7, r1, r3
   85012:	fa20 f202 	lsr.w	r2, r0, r2
   85016:	409d      	lsls	r5, r3
   85018:	fa00 f603 	lsl.w	r6, r0, r3
   8501c:	4317      	orrs	r7, r2
   8501e:	0c29      	lsrs	r1, r5, #16
   85020:	fbb7 f2f1 	udiv	r2, r7, r1
   85024:	fb01 7712 	mls	r7, r1, r2, r7
   85028:	b2a8      	uxth	r0, r5
   8502a:	fb00 f302 	mul.w	r3, r0, r2
   8502e:	ea4f 4c16 	mov.w	ip, r6, lsr #16
   85032:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
   85036:	42bb      	cmp	r3, r7
   85038:	d909      	bls.n	8504e <__divdi3+0x6a>
   8503a:	197f      	adds	r7, r7, r5
   8503c:	f102 3cff 	add.w	ip, r2, #4294967295	; 0xffffffff
   85040:	f080 8105 	bcs.w	8524e <__divdi3+0x26a>
   85044:	42bb      	cmp	r3, r7
   85046:	f240 8102 	bls.w	8524e <__divdi3+0x26a>
   8504a:	3a02      	subs	r2, #2
   8504c:	442f      	add	r7, r5
   8504e:	1aff      	subs	r7, r7, r3
   85050:	fbb7 f3f1 	udiv	r3, r7, r1
   85054:	fb01 7113 	mls	r1, r1, r3, r7
   85058:	fb00 f003 	mul.w	r0, r0, r3
   8505c:	b2b6      	uxth	r6, r6
   8505e:	ea46 4101 	orr.w	r1, r6, r1, lsl #16
   85062:	4288      	cmp	r0, r1
   85064:	d908      	bls.n	85078 <__divdi3+0x94>
   85066:	1949      	adds	r1, r1, r5
   85068:	f103 37ff 	add.w	r7, r3, #4294967295	; 0xffffffff
   8506c:	f080 80f1 	bcs.w	85252 <__divdi3+0x26e>
   85070:	4288      	cmp	r0, r1
   85072:	f240 80ee 	bls.w	85252 <__divdi3+0x26e>
   85076:	3b02      	subs	r3, #2
   85078:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
   8507c:	2300      	movs	r3, #0
   8507e:	e003      	b.n	85088 <__divdi3+0xa4>
   85080:	428b      	cmp	r3, r1
   85082:	d90a      	bls.n	8509a <__divdi3+0xb6>
   85084:	2300      	movs	r3, #0
   85086:	461a      	mov	r2, r3
   85088:	4610      	mov	r0, r2
   8508a:	4619      	mov	r1, r3
   8508c:	b114      	cbz	r4, 85094 <__divdi3+0xb0>
   8508e:	4240      	negs	r0, r0
   85090:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
   85094:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   85098:	4770      	bx	lr
   8509a:	fab3 f883 	clz	r8, r3
   8509e:	f1b8 0f00 	cmp.w	r8, #0
   850a2:	f040 8088 	bne.w	851b6 <__divdi3+0x1d2>
   850a6:	428b      	cmp	r3, r1
   850a8:	d302      	bcc.n	850b0 <__divdi3+0xcc>
   850aa:	4282      	cmp	r2, r0
   850ac:	f200 80e2 	bhi.w	85274 <__divdi3+0x290>
   850b0:	2300      	movs	r3, #0
   850b2:	2201      	movs	r2, #1
   850b4:	e7e8      	b.n	85088 <__divdi3+0xa4>
   850b6:	b912      	cbnz	r2, 850be <__divdi3+0xda>
   850b8:	2301      	movs	r3, #1
   850ba:	fbb3 f5f2 	udiv	r5, r3, r2
   850be:	fab5 f285 	clz	r2, r5
   850c2:	2a00      	cmp	r2, #0
   850c4:	d13a      	bne.n	8513c <__divdi3+0x158>
   850c6:	1b7f      	subs	r7, r7, r5
   850c8:	0c28      	lsrs	r0, r5, #16
   850ca:	fa1f fc85 	uxth.w	ip, r5
   850ce:	2301      	movs	r3, #1
   850d0:	fbb7 f1f0 	udiv	r1, r7, r0
   850d4:	fb00 7711 	mls	r7, r0, r1, r7
   850d8:	fb0c f201 	mul.w	r2, ip, r1
   850dc:	ea4f 4816 	mov.w	r8, r6, lsr #16
   850e0:	ea48 4707 	orr.w	r7, r8, r7, lsl #16
   850e4:	42ba      	cmp	r2, r7
   850e6:	d907      	bls.n	850f8 <__divdi3+0x114>
   850e8:	197f      	adds	r7, r7, r5
   850ea:	f101 38ff 	add.w	r8, r1, #4294967295	; 0xffffffff
   850ee:	d202      	bcs.n	850f6 <__divdi3+0x112>
   850f0:	42ba      	cmp	r2, r7
   850f2:	f200 80c4 	bhi.w	8527e <__divdi3+0x29a>
   850f6:	4641      	mov	r1, r8
   850f8:	1abf      	subs	r7, r7, r2
   850fa:	fbb7 f2f0 	udiv	r2, r7, r0
   850fe:	fb00 7012 	mls	r0, r0, r2, r7
   85102:	fb0c fc02 	mul.w	ip, ip, r2
   85106:	b2b6      	uxth	r6, r6
   85108:	ea46 4000 	orr.w	r0, r6, r0, lsl #16
   8510c:	4584      	cmp	ip, r0
   8510e:	d907      	bls.n	85120 <__divdi3+0x13c>
   85110:	1940      	adds	r0, r0, r5
   85112:	f102 37ff 	add.w	r7, r2, #4294967295	; 0xffffffff
   85116:	d202      	bcs.n	8511e <__divdi3+0x13a>
   85118:	4584      	cmp	ip, r0
   8511a:	f200 80ae 	bhi.w	8527a <__divdi3+0x296>
   8511e:	463a      	mov	r2, r7
   85120:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
   85124:	e7b0      	b.n	85088 <__divdi3+0xa4>
   85126:	43e4      	mvns	r4, r4
   85128:	4252      	negs	r2, r2
   8512a:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
   8512e:	e762      	b.n	84ff6 <__divdi3+0x12>
   85130:	4240      	negs	r0, r0
   85132:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
   85136:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
   8513a:	e759      	b.n	84ff0 <__divdi3+0xc>
   8513c:	4095      	lsls	r5, r2
   8513e:	f1c2 0920 	rsb	r9, r2, #32
   85142:	fa27 f109 	lsr.w	r1, r7, r9
   85146:	fa26 f909 	lsr.w	r9, r6, r9
   8514a:	4097      	lsls	r7, r2
   8514c:	0c28      	lsrs	r0, r5, #16
   8514e:	fbb1 f8f0 	udiv	r8, r1, r0
   85152:	fb00 1118 	mls	r1, r0, r8, r1
   85156:	fa1f fc85 	uxth.w	ip, r5
   8515a:	fb0c f308 	mul.w	r3, ip, r8
   8515e:	ea49 0907 	orr.w	r9, r9, r7
   85162:	ea4f 4719 	mov.w	r7, r9, lsr #16
   85166:	ea47 4101 	orr.w	r1, r7, r1, lsl #16
   8516a:	428b      	cmp	r3, r1
   8516c:	fa06 f602 	lsl.w	r6, r6, r2
   85170:	d908      	bls.n	85184 <__divdi3+0x1a0>
   85172:	1949      	adds	r1, r1, r5
   85174:	f108 32ff 	add.w	r2, r8, #4294967295	; 0xffffffff
   85178:	d27a      	bcs.n	85270 <__divdi3+0x28c>
   8517a:	428b      	cmp	r3, r1
   8517c:	d978      	bls.n	85270 <__divdi3+0x28c>
   8517e:	f1a8 0802 	sub.w	r8, r8, #2
   85182:	4429      	add	r1, r5
   85184:	1ac9      	subs	r1, r1, r3
   85186:	fbb1 f3f0 	udiv	r3, r1, r0
   8518a:	fb00 1713 	mls	r7, r0, r3, r1
   8518e:	fb0c f203 	mul.w	r2, ip, r3
   85192:	fa1f f989 	uxth.w	r9, r9
   85196:	ea49 4707 	orr.w	r7, r9, r7, lsl #16
   8519a:	42ba      	cmp	r2, r7
   8519c:	d907      	bls.n	851ae <__divdi3+0x1ca>
   8519e:	197f      	adds	r7, r7, r5
   851a0:	f103 31ff 	add.w	r1, r3, #4294967295	; 0xffffffff
   851a4:	d260      	bcs.n	85268 <__divdi3+0x284>
   851a6:	42ba      	cmp	r2, r7
   851a8:	d95e      	bls.n	85268 <__divdi3+0x284>
   851aa:	3b02      	subs	r3, #2
   851ac:	442f      	add	r7, r5
   851ae:	1abf      	subs	r7, r7, r2
   851b0:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
   851b4:	e78c      	b.n	850d0 <__divdi3+0xec>
   851b6:	f1c8 0220 	rsb	r2, r8, #32
   851ba:	fa25 f102 	lsr.w	r1, r5, r2
   851be:	fa03 fc08 	lsl.w	ip, r3, r8
   851c2:	fa27 f302 	lsr.w	r3, r7, r2
   851c6:	fa20 f202 	lsr.w	r2, r0, r2
   851ca:	fa07 f708 	lsl.w	r7, r7, r8
   851ce:	ea41 0c0c 	orr.w	ip, r1, ip
   851d2:	ea4f 491c 	mov.w	r9, ip, lsr #16
   851d6:	fbb3 f1f9 	udiv	r1, r3, r9
   851da:	fb09 3311 	mls	r3, r9, r1, r3
   851de:	fa1f fa8c 	uxth.w	sl, ip
   851e2:	fb0a fb01 	mul.w	fp, sl, r1
   851e6:	4317      	orrs	r7, r2
   851e8:	0c3a      	lsrs	r2, r7, #16
   851ea:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
   851ee:	459b      	cmp	fp, r3
   851f0:	fa05 f008 	lsl.w	r0, r5, r8
   851f4:	d908      	bls.n	85208 <__divdi3+0x224>
   851f6:	eb13 030c 	adds.w	r3, r3, ip
   851fa:	f101 32ff 	add.w	r2, r1, #4294967295	; 0xffffffff
   851fe:	d235      	bcs.n	8526c <__divdi3+0x288>
   85200:	459b      	cmp	fp, r3
   85202:	d933      	bls.n	8526c <__divdi3+0x288>
   85204:	3902      	subs	r1, #2
   85206:	4463      	add	r3, ip
   85208:	ebcb 0303 	rsb	r3, fp, r3
   8520c:	fbb3 f2f9 	udiv	r2, r3, r9
   85210:	fb09 3312 	mls	r3, r9, r2, r3
   85214:	fb0a fa02 	mul.w	sl, sl, r2
   85218:	b2bf      	uxth	r7, r7
   8521a:	ea47 4703 	orr.w	r7, r7, r3, lsl #16
   8521e:	45ba      	cmp	sl, r7
   85220:	d908      	bls.n	85234 <__divdi3+0x250>
   85222:	eb17 070c 	adds.w	r7, r7, ip
   85226:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
   8522a:	d21b      	bcs.n	85264 <__divdi3+0x280>
   8522c:	45ba      	cmp	sl, r7
   8522e:	d919      	bls.n	85264 <__divdi3+0x280>
   85230:	3a02      	subs	r2, #2
   85232:	4467      	add	r7, ip
   85234:	ea42 4501 	orr.w	r5, r2, r1, lsl #16
   85238:	fba5 0100 	umull	r0, r1, r5, r0
   8523c:	ebca 0707 	rsb	r7, sl, r7
   85240:	428f      	cmp	r7, r1
   85242:	f04f 0300 	mov.w	r3, #0
   85246:	d30a      	bcc.n	8525e <__divdi3+0x27a>
   85248:	d005      	beq.n	85256 <__divdi3+0x272>
   8524a:	462a      	mov	r2, r5
   8524c:	e71c      	b.n	85088 <__divdi3+0xa4>
   8524e:	4662      	mov	r2, ip
   85250:	e6fd      	b.n	8504e <__divdi3+0x6a>
   85252:	463b      	mov	r3, r7
   85254:	e710      	b.n	85078 <__divdi3+0x94>
   85256:	fa06 f608 	lsl.w	r6, r6, r8
   8525a:	4286      	cmp	r6, r0
   8525c:	d2f5      	bcs.n	8524a <__divdi3+0x266>
   8525e:	1e6a      	subs	r2, r5, #1
   85260:	2300      	movs	r3, #0
   85262:	e711      	b.n	85088 <__divdi3+0xa4>
   85264:	461a      	mov	r2, r3
   85266:	e7e5      	b.n	85234 <__divdi3+0x250>
   85268:	460b      	mov	r3, r1
   8526a:	e7a0      	b.n	851ae <__divdi3+0x1ca>
   8526c:	4611      	mov	r1, r2
   8526e:	e7cb      	b.n	85208 <__divdi3+0x224>
   85270:	4690      	mov	r8, r2
   85272:	e787      	b.n	85184 <__divdi3+0x1a0>
   85274:	4643      	mov	r3, r8
   85276:	4642      	mov	r2, r8
   85278:	e706      	b.n	85088 <__divdi3+0xa4>
   8527a:	3a02      	subs	r2, #2
   8527c:	e750      	b.n	85120 <__divdi3+0x13c>
   8527e:	3902      	subs	r1, #2
   85280:	442f      	add	r7, r5
   85282:	e739      	b.n	850f8 <__divdi3+0x114>

00085284 <__udivdi3>:
   85284:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   85288:	4614      	mov	r4, r2
   8528a:	4605      	mov	r5, r0
   8528c:	460e      	mov	r6, r1
   8528e:	2b00      	cmp	r3, #0
   85290:	d143      	bne.n	8531a <__udivdi3+0x96>
   85292:	428a      	cmp	r2, r1
   85294:	d953      	bls.n	8533e <__udivdi3+0xba>
   85296:	fab2 f782 	clz	r7, r2
   8529a:	b157      	cbz	r7, 852b2 <__udivdi3+0x2e>
   8529c:	f1c7 0620 	rsb	r6, r7, #32
   852a0:	fa20 f606 	lsr.w	r6, r0, r6
   852a4:	fa01 f307 	lsl.w	r3, r1, r7
   852a8:	fa02 f407 	lsl.w	r4, r2, r7
   852ac:	fa00 f507 	lsl.w	r5, r0, r7
   852b0:	431e      	orrs	r6, r3
   852b2:	0c21      	lsrs	r1, r4, #16
   852b4:	fbb6 f2f1 	udiv	r2, r6, r1
   852b8:	fb01 6612 	mls	r6, r1, r2, r6
   852bc:	b2a0      	uxth	r0, r4
   852be:	fb00 f302 	mul.w	r3, r0, r2
   852c2:	0c2f      	lsrs	r7, r5, #16
   852c4:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
   852c8:	42b3      	cmp	r3, r6
   852ca:	d909      	bls.n	852e0 <__udivdi3+0x5c>
   852cc:	1936      	adds	r6, r6, r4
   852ce:	f102 37ff 	add.w	r7, r2, #4294967295	; 0xffffffff
   852d2:	f080 80fd 	bcs.w	854d0 <__udivdi3+0x24c>
   852d6:	42b3      	cmp	r3, r6
   852d8:	f240 80fa 	bls.w	854d0 <__udivdi3+0x24c>
   852dc:	3a02      	subs	r2, #2
   852de:	4426      	add	r6, r4
   852e0:	1af6      	subs	r6, r6, r3
   852e2:	fbb6 f3f1 	udiv	r3, r6, r1
   852e6:	fb01 6113 	mls	r1, r1, r3, r6
   852ea:	fb00 f003 	mul.w	r0, r0, r3
   852ee:	b2ad      	uxth	r5, r5
   852f0:	ea45 4101 	orr.w	r1, r5, r1, lsl #16
   852f4:	4288      	cmp	r0, r1
   852f6:	d908      	bls.n	8530a <__udivdi3+0x86>
   852f8:	1909      	adds	r1, r1, r4
   852fa:	f103 36ff 	add.w	r6, r3, #4294967295	; 0xffffffff
   852fe:	f080 80e9 	bcs.w	854d4 <__udivdi3+0x250>
   85302:	4288      	cmp	r0, r1
   85304:	f240 80e6 	bls.w	854d4 <__udivdi3+0x250>
   85308:	3b02      	subs	r3, #2
   8530a:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
   8530e:	2300      	movs	r3, #0
   85310:	4610      	mov	r0, r2
   85312:	4619      	mov	r1, r3
   85314:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   85318:	4770      	bx	lr
   8531a:	428b      	cmp	r3, r1
   8531c:	d84c      	bhi.n	853b8 <__udivdi3+0x134>
   8531e:	fab3 f683 	clz	r6, r3
   85322:	2e00      	cmp	r6, #0
   85324:	d14f      	bne.n	853c6 <__udivdi3+0x142>
   85326:	428b      	cmp	r3, r1
   85328:	d302      	bcc.n	85330 <__udivdi3+0xac>
   8532a:	4282      	cmp	r2, r0
   8532c:	f200 80dd 	bhi.w	854ea <__udivdi3+0x266>
   85330:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   85334:	2300      	movs	r3, #0
   85336:	2201      	movs	r2, #1
   85338:	4610      	mov	r0, r2
   8533a:	4619      	mov	r1, r3
   8533c:	4770      	bx	lr
   8533e:	b912      	cbnz	r2, 85346 <__udivdi3+0xc2>
   85340:	2401      	movs	r4, #1
   85342:	fbb4 f4f2 	udiv	r4, r4, r2
   85346:	fab4 f284 	clz	r2, r4
   8534a:	2a00      	cmp	r2, #0
   8534c:	f040 8082 	bne.w	85454 <__udivdi3+0x1d0>
   85350:	1b09      	subs	r1, r1, r4
   85352:	0c26      	lsrs	r6, r4, #16
   85354:	b2a7      	uxth	r7, r4
   85356:	2301      	movs	r3, #1
   85358:	fbb1 f0f6 	udiv	r0, r1, r6
   8535c:	fb06 1110 	mls	r1, r6, r0, r1
   85360:	fb07 f200 	mul.w	r2, r7, r0
   85364:	ea4f 4c15 	mov.w	ip, r5, lsr #16
   85368:	ea4c 4101 	orr.w	r1, ip, r1, lsl #16
   8536c:	428a      	cmp	r2, r1
   8536e:	d907      	bls.n	85380 <__udivdi3+0xfc>
   85370:	1909      	adds	r1, r1, r4
   85372:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
   85376:	d202      	bcs.n	8537e <__udivdi3+0xfa>
   85378:	428a      	cmp	r2, r1
   8537a:	f200 80c8 	bhi.w	8550e <__udivdi3+0x28a>
   8537e:	4660      	mov	r0, ip
   85380:	1a89      	subs	r1, r1, r2
   85382:	fbb1 f2f6 	udiv	r2, r1, r6
   85386:	fb06 1112 	mls	r1, r6, r2, r1
   8538a:	fb07 f702 	mul.w	r7, r7, r2
   8538e:	b2ad      	uxth	r5, r5
   85390:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
   85394:	42af      	cmp	r7, r5
   85396:	d908      	bls.n	853aa <__udivdi3+0x126>
   85398:	192c      	adds	r4, r5, r4
   8539a:	f102 31ff 	add.w	r1, r2, #4294967295	; 0xffffffff
   8539e:	f080 809b 	bcs.w	854d8 <__udivdi3+0x254>
   853a2:	42a7      	cmp	r7, r4
   853a4:	f240 8098 	bls.w	854d8 <__udivdi3+0x254>
   853a8:	3a02      	subs	r2, #2
   853aa:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
   853ae:	4610      	mov	r0, r2
   853b0:	4619      	mov	r1, r3
   853b2:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   853b6:	4770      	bx	lr
   853b8:	2300      	movs	r3, #0
   853ba:	461a      	mov	r2, r3
   853bc:	4610      	mov	r0, r2
   853be:	4619      	mov	r1, r3
   853c0:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   853c4:	4770      	bx	lr
   853c6:	f1c6 0520 	rsb	r5, r6, #32
   853ca:	fa22 f705 	lsr.w	r7, r2, r5
   853ce:	fa03 f406 	lsl.w	r4, r3, r6
   853d2:	fa21 f305 	lsr.w	r3, r1, r5
   853d6:	fa01 fb06 	lsl.w	fp, r1, r6
   853da:	fa20 f505 	lsr.w	r5, r0, r5
   853de:	433c      	orrs	r4, r7
   853e0:	ea4f 4814 	mov.w	r8, r4, lsr #16
   853e4:	fbb3 fcf8 	udiv	ip, r3, r8
   853e8:	fb08 331c 	mls	r3, r8, ip, r3
   853ec:	fa1f f984 	uxth.w	r9, r4
   853f0:	fb09 fa0c 	mul.w	sl, r9, ip
   853f4:	ea45 0b0b 	orr.w	fp, r5, fp
   853f8:	ea4f 451b 	mov.w	r5, fp, lsr #16
   853fc:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
   85400:	459a      	cmp	sl, r3
   85402:	fa02 f206 	lsl.w	r2, r2, r6
   85406:	d904      	bls.n	85412 <__udivdi3+0x18e>
   85408:	191b      	adds	r3, r3, r4
   8540a:	f10c 35ff 	add.w	r5, ip, #4294967295	; 0xffffffff
   8540e:	d36f      	bcc.n	854f0 <__udivdi3+0x26c>
   85410:	46ac      	mov	ip, r5
   85412:	ebca 0303 	rsb	r3, sl, r3
   85416:	fbb3 f5f8 	udiv	r5, r3, r8
   8541a:	fb08 3315 	mls	r3, r8, r5, r3
   8541e:	fb09 f905 	mul.w	r9, r9, r5
   85422:	fa1f fb8b 	uxth.w	fp, fp
   85426:	ea4b 4703 	orr.w	r7, fp, r3, lsl #16
   8542a:	45b9      	cmp	r9, r7
   8542c:	d904      	bls.n	85438 <__udivdi3+0x1b4>
   8542e:	193f      	adds	r7, r7, r4
   85430:	f105 33ff 	add.w	r3, r5, #4294967295	; 0xffffffff
   85434:	d362      	bcc.n	854fc <__udivdi3+0x278>
   85436:	461d      	mov	r5, r3
   85438:	ea45 4c0c 	orr.w	ip, r5, ip, lsl #16
   8543c:	fbac 2302 	umull	r2, r3, ip, r2
   85440:	ebc9 0707 	rsb	r7, r9, r7
   85444:	429f      	cmp	r7, r3
   85446:	f04f 0500 	mov.w	r5, #0
   8544a:	d34a      	bcc.n	854e2 <__udivdi3+0x25e>
   8544c:	d046      	beq.n	854dc <__udivdi3+0x258>
   8544e:	4662      	mov	r2, ip
   85450:	462b      	mov	r3, r5
   85452:	e75d      	b.n	85310 <__udivdi3+0x8c>
   85454:	4094      	lsls	r4, r2
   85456:	f1c2 0920 	rsb	r9, r2, #32
   8545a:	fa21 fc09 	lsr.w	ip, r1, r9
   8545e:	4091      	lsls	r1, r2
   85460:	fa20 f909 	lsr.w	r9, r0, r9
   85464:	0c26      	lsrs	r6, r4, #16
   85466:	fbbc f8f6 	udiv	r8, ip, r6
   8546a:	fb06 cc18 	mls	ip, r6, r8, ip
   8546e:	b2a7      	uxth	r7, r4
   85470:	fb07 f308 	mul.w	r3, r7, r8
   85474:	ea49 0901 	orr.w	r9, r9, r1
   85478:	ea4f 4119 	mov.w	r1, r9, lsr #16
   8547c:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
   85480:	4563      	cmp	r3, ip
   85482:	fa00 f502 	lsl.w	r5, r0, r2
   85486:	d909      	bls.n	8549c <__udivdi3+0x218>
   85488:	eb1c 0c04 	adds.w	ip, ip, r4
   8548c:	f108 32ff 	add.w	r2, r8, #4294967295	; 0xffffffff
   85490:	d23b      	bcs.n	8550a <__udivdi3+0x286>
   85492:	4563      	cmp	r3, ip
   85494:	d939      	bls.n	8550a <__udivdi3+0x286>
   85496:	f1a8 0802 	sub.w	r8, r8, #2
   8549a:	44a4      	add	ip, r4
   8549c:	ebc3 0c0c 	rsb	ip, r3, ip
   854a0:	fbbc f3f6 	udiv	r3, ip, r6
   854a4:	fb06 c113 	mls	r1, r6, r3, ip
   854a8:	fb07 f203 	mul.w	r2, r7, r3
   854ac:	fa1f f989 	uxth.w	r9, r9
   854b0:	ea49 4101 	orr.w	r1, r9, r1, lsl #16
   854b4:	428a      	cmp	r2, r1
   854b6:	d907      	bls.n	854c8 <__udivdi3+0x244>
   854b8:	1909      	adds	r1, r1, r4
   854ba:	f103 30ff 	add.w	r0, r3, #4294967295	; 0xffffffff
   854be:	d222      	bcs.n	85506 <__udivdi3+0x282>
   854c0:	428a      	cmp	r2, r1
   854c2:	d920      	bls.n	85506 <__udivdi3+0x282>
   854c4:	3b02      	subs	r3, #2
   854c6:	4421      	add	r1, r4
   854c8:	1a89      	subs	r1, r1, r2
   854ca:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
   854ce:	e743      	b.n	85358 <__udivdi3+0xd4>
   854d0:	463a      	mov	r2, r7
   854d2:	e705      	b.n	852e0 <__udivdi3+0x5c>
   854d4:	4633      	mov	r3, r6
   854d6:	e718      	b.n	8530a <__udivdi3+0x86>
   854d8:	460a      	mov	r2, r1
   854da:	e766      	b.n	853aa <__udivdi3+0x126>
   854dc:	40b0      	lsls	r0, r6
   854de:	4290      	cmp	r0, r2
   854e0:	d2b5      	bcs.n	8544e <__udivdi3+0x1ca>
   854e2:	f10c 32ff 	add.w	r2, ip, #4294967295	; 0xffffffff
   854e6:	2300      	movs	r3, #0
   854e8:	e712      	b.n	85310 <__udivdi3+0x8c>
   854ea:	4633      	mov	r3, r6
   854ec:	4632      	mov	r2, r6
   854ee:	e70f      	b.n	85310 <__udivdi3+0x8c>
   854f0:	459a      	cmp	sl, r3
   854f2:	d98d      	bls.n	85410 <__udivdi3+0x18c>
   854f4:	f1ac 0c02 	sub.w	ip, ip, #2
   854f8:	4423      	add	r3, r4
   854fa:	e78a      	b.n	85412 <__udivdi3+0x18e>
   854fc:	45b9      	cmp	r9, r7
   854fe:	d99a      	bls.n	85436 <__udivdi3+0x1b2>
   85500:	3d02      	subs	r5, #2
   85502:	4427      	add	r7, r4
   85504:	e798      	b.n	85438 <__udivdi3+0x1b4>
   85506:	4603      	mov	r3, r0
   85508:	e7de      	b.n	854c8 <__udivdi3+0x244>
   8550a:	4690      	mov	r8, r2
   8550c:	e7c6      	b.n	8549c <__udivdi3+0x218>
   8550e:	3802      	subs	r0, #2
   85510:	4421      	add	r1, r4
   85512:	e735      	b.n	85380 <__udivdi3+0xfc>
   85514:	0d0a4e4f 	.word	0x0d0a4e4f
   85518:	66666f00 	.word	0x66666f00
   8551c:	00000d0a 	.word	0x00000d0a

00085520 <g_APinDescription>:
   85520:	400e0e00 00000100 0000000b 00000001     ...@............
   85530:	00000000 00000004 ffffffff 400e0e00     ...............@
   85540:	00000200 0000000b 00000001 00000000     ................
   85550:	00000004 ffffffff 400e1000 02000000     ...........@....
   85560:	0000000c 00000002 00000000 00000014     ................
   85570:	00ffffff 400e1200 10000000 0000000d     .......@........
   85580:	00000002 00000000 00000014 0effffff     ................
   85590:	400e1200 04000000 0000000d 00000002     ...@............
   855a0:	00000000 00000014 0dffffff 400e1200     ...............@
   855b0:	02000000 0000000d 00000002 00000000     ................
   855c0:	00000014 0cffffff 400e1200 01000000     ...........@....
   855d0:	0000000d 00000002 00000000 0000000c     ................
   855e0:	ff07ffff 400e1200 00800000 0000000d     .......@........
   855f0:	00000002 00000000 0000000c ff06ffff     ................
   85600:	400e1200 00400000 0000000d 00000002     ...@..@.........
   85610:	00000000 0000000c ff05ffff 400e1200     ...............@
   85620:	00200000 0000000d 00000002 00000000     .. .............
   85630:	0000000c ff04ffff 400e1200 20000000     ...........@... 
   85640:	0000000d 00000002 00000000 00000014     ................
   85650:	0fffffff 400e1400 00000080 0000000e     .......@........
   85660:	00000002 00000000 00000014 10ffffff     ................
   85670:	400e1400 00000100 0000000e 00000002     ...@............
   85680:	00000000 00000014 11ffffff 400e1000     ...............@
   85690:	08000000 0000000c 00000002 00000000     ................
   856a0:	00000014 01ffffff 400e1400 00000010     ...........@....
   856b0:	0000000e 00000002 00000000 00000004     ................
   856c0:	ffffffff 400e1400 00000020 0000000e     .......@ .......
   856d0:	00000002 00000000 00000004 ffffffff     ................
   856e0:	400e0e00 00002000 0000000b 00000001     ...@. ..........
   856f0:	00000000 00000004 ffffffff 400e0e00     ...............@
   85700:	00001000 0000000b 00000001 00000000     ................
   85710:	00000004 ffffffff 400e0e00 00000800     ...........@....
   85720:	0000000b 00000001 00000000 00000004     ................
   85730:	ffffffff 400e0e00 00000400 0000000b     .......@........
   85740:	00000001 00000000 00000004 ffffffff     ................
   85750:	400e1000 00001000 0000000c 00000001     ...@............
   85760:	00000000 00000004 ffffffff 400e1000     ...............@
   85770:	00002000 0000000c 00000001 00000000     . ..............
   85780:	00000004 ffffffff 400e1000 04000000     ...........@....
   85790:	0000000c 00000004 00000000 00000004     ................
   857a0:	ffffffff 400e0e00 00004000 0000000b     .......@.@......
   857b0:	00000004 00000000 00000004 ffffffff     ................
   857c0:	400e0e00 00008000 0000000b 00000004     ...@............
   857d0:	00000000 00000004 ffffffff 400e1400     ...............@
   857e0:	00000001 0000000e 00000004 00000000     ................
   857f0:	00000004 ffffffff 400e1400 00000002     ...........@....
   85800:	0000000e 00000004 00000000 00000004     ................
   85810:	ffffffff 400e1400 00000004 0000000e     .......@........
   85820:	00000004 00000000 00000004 ffffffff     ................
   85830:	400e1400 00000008 0000000e 00000004     ...@............
   85840:	00000000 00000004 ffffffff 400e1400     ...............@
   85850:	00000040 0000000e 00000004 00000000     @...............
   85860:	00000004 ffffffff 400e1400 00000200     ...........@....
   85870:	0000000e 00000004 00000000 00000004     ................
   85880:	ffffffff 400e0e00 00000080 0000000b     .......@........
   85890:	00000004 00000000 00000004 ffffffff     ................
   858a0:	400e1400 00000400 0000000e 00000004     ...@............
   858b0:	00000000 00000004 ffffffff 400e1200     ...............@
   858c0:	00000002 0000000d 00000004 00000000     ................
   858d0:	00000004 ffffffff 400e1200 00000004     ...........@....
   858e0:	0000000d 00000004 00000000 00000004     ................
   858f0:	ffffffff 400e1200 00000008 0000000d     .......@........
   85900:	00000004 00000000 00000004 ffffffff     ................
   85910:	400e1200 00000010 0000000d 00000004     ...@............
   85920:	00000000 00000004 ffffffff 400e1200     ...............@
   85930:	00000020 0000000d 00000004 00000000      ...............
   85940:	00000004 ffffffff 400e1200 00000040     ...........@@...
   85950:	0000000d 00000004 00000000 00000004     ................
   85960:	ffffffff 400e1200 00000080 0000000d     .......@........
   85970:	00000004 00000000 00000004 ffffffff     ................
   85980:	400e1200 00000100 0000000d 00000004     ...@............
   85990:	00000000 00000004 ffffffff 400e1200     ...............@
   859a0:	00000200 0000000d 00000004 00000000     ................
   859b0:	00000004 ffffffff 400e0e00 00080000     ...........@....
   859c0:	0000000b 00000004 00000000 00000004     ................
   859d0:	ffffffff 400e0e00 00100000 0000000b     .......@........
   859e0:	00000004 00000000 00000004 ffffffff     ................
   859f0:	400e1200 00080000 0000000d 00000004     ...@............
   85a00:	00000000 00000004 ffffffff 400e1200     ...............@
   85a10:	00040000 0000000d 00000004 00000000     ................
   85a20:	00000004 ffffffff 400e1200 00020000     ...........@....
   85a30:	0000000d 00000004 00000000 00000004     ................
   85a40:	ffffffff 400e1200 00010000 0000000d     .......@........
   85a50:	00000004 00000000 00000004 ffffffff     ................
   85a60:	400e1200 00008000 0000000d 00000004     ...@............
   85a70:	00000000 00000004 ffffffff 400e1200     ...............@
   85a80:	00004000 0000000d 00000004 00000000     .@..............
   85a90:	00000004 ffffffff 400e1200 00002000     ...........@. ..
   85aa0:	0000000d 00000004 00000000 00000004     ................
   85ab0:	ffffffff 400e1200 00001000 0000000d     .......@........
   85ac0:	00000004 00000000 00000004 ffffffff     ................
   85ad0:	400e1000 00200000 0000000c 00000004     ...@.. .........
   85ae0:	00000000 00000004 ffffffff 400e1000     ...............@
   85af0:	00004000 0000000c 00000004 00000000     .@..............
   85b00:	00000004 ffffffff 400e0e00 00010000     ...........@....
   85b10:	0000000b 00000003 00000000 00000002     ................
   85b20:	ffff0700 400e0e00 01000000 0000000b     .......@........
   85b30:	00000003 00000000 00000002 ffff0601     ................
   85b40:	400e0e00 00800000 0000000b 00000003     ...@............
   85b50:	00000000 00000002 ffff0502 400e0e00     ...............@
   85b60:	00400000 0000000b 00000003 00000000     ..@.............
   85b70:	00000002 ffff0403 400e0e00 00000040     ...........@@...
   85b80:	0000000b 00000003 00000000 00000002     ................
   85b90:	05ff0304 400e0e00 00000010 0000000b     .......@........
   85ba0:	00000003 00000000 00000002 ffff0205     ................
   85bb0:	400e0e00 00000008 0000000b 00000003     ...@............
   85bc0:	00000000 00000002 03ff0106 400e0e00     ...............@
   85bd0:	00000004 0000000b 00000003 00000000     ................
   85be0:	00000002 02ff0007 400e1000 00020000     ...........@....
   85bf0:	0000000c 00000003 00000000 00000002     ................
   85c00:	ffff0a08 400e1000 00040000 0000000c     .......@........
   85c10:	00000003 00000000 00000002 ffff0b09     ................
   85c20:	400e1000 00080000 0000000c 00000003     ...@............
   85c30:	00000000 00000002 ffff0c0a 400e1000     ...............@
   85c40:	00100000 0000000c 00000003 00000000     ................
   85c50:	00000002 ffff0d0b 400e1000 00008000     ...........@....
   85c60:	0000000c 00000003 00000000 00000002     ................
   85c70:	ffff100c 400e1000 00010000 0000000c     .......@........
   85c80:	00000003 00000000 00000002 ffff110d     ................
   85c90:	400e0e00 00000002 0000000b 00000001     ...@............
   85ca0:	00000000 00000004 ffffff0e 400e0e00     ...............@
   85cb0:	00000001 0000000b 00000001 00000000     ................
   85cc0:	00000004 ffffff0f 400e0e00 00020000     ...........@....
   85cd0:	0000000b 00000001 00000000 00000004     ................
   85ce0:	ffffffff 400e0e00 00040000 0000000b     .......@........
   85cf0:	00000001 00000000 00000004 ffffffff     ................
   85d00:	400e1200 40000000 0000000d 00000004     ...@...@........
   85d10:	00000000 00000004 ffffffff 400e0e00     ...............@
   85d20:	00200000 0000000b 00000004 00000000     .. .............
   85d30:	00000004 ffffffff 400e0e00 02000000     ...........@....
   85d40:	0000000b 00000001 00000000 00000004     ................
   85d50:	ffffffff 400e0e00 04000000 0000000b     .......@........
   85d60:	00000001 00000000 00000004 ffffffff     ................
   85d70:	400e0e00 08000000 0000000b 00000001     ...@............
   85d80:	00000000 00000004 ffffffff 400e0e00     ...............@
   85d90:	10000000 0000000b 00000001 00000000     ................
   85da0:	00000004 ffffffff 400e1000 00800000     ...........@....
   85db0:	0000000c 00000002 00000000 00000004     ................
   85dc0:	ffffffff 400e0e00 00060000 0000000b     .......@........
   85dd0:	00000001 00000000 00000005 ffffffff     ................
   85de0:	400e1000 00003000 0000000c 00000001     ...@.0..........
   85df0:	00000000 00000005 ffffffff 400e0e00     ...............@
   85e00:	00000300 0000000b 00000001 00000000     ................
   85e10:	00000005 ffffffff 400e0e00 00000c00     ...........@....
   85e20:	0000000b 00000001 00000000 00000005     ................
   85e30:	ffffffff 400e0e00 00003000 0000000b     .......@.0......
   85e40:	00000001 00000000 00000005 ffffffff     ................
   85e50:	400e1400 00000030 0000000e 00000002     ...@0...........
   85e60:	00000000 00000005 ffffffff 400e1000     ...............@
   85e70:	00000c00 0000000c 00000001 00000000     ................
   85e80:	00000004 ffffffff 400e1000 00200000     ...........@.. .
   85e90:	0000000c 00000002 00000000 00000004     ................
   85ea0:	ffffffff 400e0e00 20000000 0000000b     .......@... ....
   85eb0:	00000001 00000000 00000004 ffffffff     ................
   85ec0:	400e1000 00008000 0000000c 00000001     ...@............
   85ed0:	00000000 00000004 ffffffff 400e1000     ...............@
   85ee0:	00004000 0000000c 00000001 00000000     .@..............
   85ef0:	00000004 ffffffff 400e0e00 00000003     ...........@....
   85f00:	0000000b 00000001 00000000 00000005     ................
   85f10:	ffffffff 400e1000 0000c000 0000000c     .......@........
   85f20:	00000001 00000000 00000005 ffffffff     ................
	...
   85f48:	ffffffff 00000000 00000008 00000010     ................
   85f58:	00000018 00000040 00000050 00000060     ....@...P...`...
   85f68:	00000070 00000200 00000240 00000280     p.......@.......
   85f78:	000002c0 00000300 00000340 00000380     ........@.......
   85f88:	000003c0 574e4f43 44455241 5f504d55     ....CONWAREDUMP_
   85f98:	52415453 000d0a54 25096425 30250964     START...%d.%d.%0
   85fa8:	25097038 09783830 38302509 09340970     8p.%08x..%08p.4.
   85fb8:	25090930 000d0a64 574e4f43 44455241     0..%d...CONWARED
   85fc8:	5f504d55 0a444e45 0000000d 00000000     UMP_END.........

00085fd8 <_ZTV9UARTClass>:
	...
   85fe0:	000810a1 00081599 00081031 0008105f     ........1..._...
   85ff0:	00081043 00081089 000811c5 000810f5     C...............
   86000:	0008102d 00000000                       -.......

00086008 <_ZTV10USARTClass>:
	...
   86010:	000810a1 00081599 00081031 0008105f     ........1..._...
   86020:	00081043 00081089 00081227 000810f5     C.......'.......
   86030:	0008102d 00000000 74697845 20676e69     -.......Exiting 
   86040:	68746977 61747320 20737574 0a2e6425     with status %d..
	...

00086051 <STRING_PRODUCT>:
   86051:	75647241 206f6e69 00657544              Arduino Due.

0008605d <USB_DeviceDescriptor>:
   8605d:	02000112 40000000 003e2341 02010100     .......@A#>.....
   8606d:	                                         ...

00086070 <STRING_LANGUAGE>:
   86070:	04090304                                ....

00086074 <_ZL18test_packet_buffer>:
	...
   8607c:	aaaaaa00 aaaaaaaa eeeeeeaa eeeeeeee     ................
   8608c:	fffffeee ffffffff ffffffff dfbf7fff     ................
   8609c:	fdfbf7ef dfbf7efc fdfbf7ef               .....~......~

000860a9 <STRING_MANUFACTURER>:
   860a9:	75647241 206f6e69 00434c4c              Arduino LLC.

000860b5 <USB_DeviceDescriptorA>:
   860b5:	02000112 400102ef 003e2341 02010100     .......@A#>.....
   860c5:	                                         ..

000860c7 <_ZL19USB_DeviceQualifier>:
   860c7:	0200060a 40000000                        .......@.

000860d0 <_ZTV7Serial_>:
	...
   860d8:	00081d4d 00081e21 00081d0d 00081d65     M...!.......e...
   860e8:	00081d2d 00081da9 00081d25 00081db1     -.......%.......

000860f8 <_ZL18_cdcOtherInterface>:
   860f8:	02000b08 00010202 00000409 00020201     ................
   86108:	00240500 24050110 04010101 05060224     ..$....$....$...
   86118:	01000624 03810507 09100010 02000104     $...............
   86128:	0000000a 02020507 07000040 40028305     ........@......@
	...

0008613a <_ZL13_cdcInterface>:
   8613a:	02000b08 00010202 00000409 00020201     ................
   8614a:	00240500 24050110 04010101 05060224     ..$....$....$...
   8615a:	01000624 03810507 09100010 02000104     $...............
   8616a:	0000000a 02020507 07000200 00028305     ................
   8617a:	00430002                                 ..C...

00086180 <_global_impure_ptr>:
   86180:	20070070                                p.. 

00086184 <blanks.6717>:
   86184:	20202020 20202020 20202020 20202020                     
   86194:	33323130 37363534 42413938 46454443     0123456789ABCDEF
   861a4:	00000000 33323130 37363534 62613938     ....0123456789ab
   861b4:	66656463 00000000 6c756e28 0000296c     cdef....(null)..

000861c4 <zeroes.6718>:
   861c4:	30303030 30303030 30303030 30303030     0000000000000000

000861d4 <_init>:
   861d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   861d6:	bf00      	nop
   861d8:	bcf8      	pop	{r3, r4, r5, r6, r7}
   861da:	bc08      	pop	{r3}
   861dc:	469e      	mov	lr, r3
   861de:	4770      	bx	lr

000861e0 <__init_array_start>:
   861e0:	000835f5 	.word	0x000835f5

000861e4 <__frame_dummy_init_array_entry>:
   861e4:	00080119 00080311 000818ad 00081eed     ................

000861f4 <_fini>:
   861f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   861f6:	bf00      	nop
   861f8:	bcf8      	pop	{r3, r4, r5, r6, r7}
   861fa:	bc08      	pop	{r3}
   861fc:	469e      	mov	lr, r3
   861fe:	4770      	bx	lr

00086200 <__do_global_dtors_aux_fini_array_entry>:
   86200:	00f5 0008                                   ....

Disassembly of section .relocate:

20070000 <banzai>:
20070000:	b672      	cpsid	i
20070002:	4b06      	ldr	r3, [pc, #24]	; (2007001c <banzai+0x1c>)
20070004:	689a      	ldr	r2, [r3, #8]
20070006:	07d1      	lsls	r1, r2, #31
20070008:	d5fb      	bpl.n	20070002 <banzai+0x2>
2007000a:	4a05      	ldr	r2, [pc, #20]	; (20070020 <banzai+0x20>)
2007000c:	605a      	str	r2, [r3, #4]
2007000e:	689a      	ldr	r2, [r3, #8]
20070010:	07d2      	lsls	r2, r2, #31
20070012:	d5fc      	bpl.n	2007000e <banzai+0xe>
20070014:	4a03      	ldr	r2, [pc, #12]	; (20070024 <banzai+0x24>)
20070016:	4b04      	ldr	r3, [pc, #16]	; (20070028 <banzai+0x28>)
20070018:	601a      	str	r2, [r3, #0]
2007001a:	e7fe      	b.n	2007001a <banzai+0x1a>
2007001c:	400e0a00 	.word	0x400e0a00
20070020:	5a00010c 	.word	0x5a00010c
20070024:	a5000005 	.word	0xa5000005
20070028:	400e1a00 	.word	0x400e1a00

2007002c <MAX_REPEATS>:
2007002c:	0000efff                                ....

20070030 <SystemCoreClock>:
20070030:	003d0900                                ..=.

20070034 <_ZL5ticks>:
20070034:	ffffffff                                ....

20070038 <EndPoints>:
20070038:	00002032 00003936 00003066 00003166     2 ..69..f0..f1..
	...

20070060 <_ZL10breakValue>:
20070060:	ffffffff                                ....

20070064 <_ZL12_usbLineInfo>:
20070064:	0000e100 00080000                       ........

2007006c <g_interrupt_enabled>:
2007006c:	00000001                                ....

20070070 <impure_data>:
20070070:	00000000 2007035c 200703c4 2007042c     ....\.. ... ,.. 
	...
200700a4:	0008617c 00000000 00000000 00000000     |a..............
	...
20070118:	00000001 00000000 abcd330e e66d1234     .........3..4.m.
20070128:	0005deec 0000000b 00000000 00000000     ................
	...

20070498 <_impure_ptr>:
20070498:	20070070                                p.. 

2007049c <lc_ctype_charset>:
2007049c:	49435341 00000049 00000000 00000000     ASCII...........
	...

200704bc <__mb_cur_max>:
200704bc:	00000001                                ....

200704c0 <__malloc_av_>:
	...
200704c8:	200704c0 200704c0 200704c8 200704c8     ... ... ... ... 
200704d8:	200704d0 200704d0 200704d8 200704d8     ... ... ... ... 
200704e8:	200704e0 200704e0 200704e8 200704e8     ... ... ... ... 
200704f8:	200704f0 200704f0 200704f8 200704f8     ... ... ... ... 
20070508:	20070500 20070500 20070508 20070508     ... ... ... ... 
20070518:	20070510 20070510 20070518 20070518     ... ... ... ... 
20070528:	20070520 20070520 20070528 20070528      ..  .. (.. (.. 
20070538:	20070530 20070530 20070538 20070538     0.. 0.. 8.. 8.. 
20070548:	20070540 20070540 20070548 20070548     @.. @.. H.. H.. 
20070558:	20070550 20070550 20070558 20070558     P.. P.. X.. X.. 
20070568:	20070560 20070560 20070568 20070568     `.. `.. h.. h.. 
20070578:	20070570 20070570 20070578 20070578     p.. p.. x.. x.. 
20070588:	20070580 20070580 20070588 20070588     ... ... ... ... 
20070598:	20070590 20070590 20070598 20070598     ... ... ... ... 
200705a8:	200705a0 200705a0 200705a8 200705a8     ... ... ... ... 
200705b8:	200705b0 200705b0 200705b8 200705b8     ... ... ... ... 
200705c8:	200705c0 200705c0 200705c8 200705c8     ... ... ... ... 
200705d8:	200705d0 200705d0 200705d8 200705d8     ... ... ... ... 
200705e8:	200705e0 200705e0 200705e8 200705e8     ... ... ... ... 
200705f8:	200705f0 200705f0 200705f8 200705f8     ... ... ... ... 
20070608:	20070600 20070600 20070608 20070608     ... ... ... ... 
20070618:	20070610 20070610 20070618 20070618     ... ... ... ... 
20070628:	20070620 20070620 20070628 20070628      ..  .. (.. (.. 
20070638:	20070630 20070630 20070638 20070638     0.. 0.. 8.. 8.. 
20070648:	20070640 20070640 20070648 20070648     @.. @.. H.. H.. 
20070658:	20070650 20070650 20070658 20070658     P.. P.. X.. X.. 
20070668:	20070660 20070660 20070668 20070668     `.. `.. h.. h.. 
20070678:	20070670 20070670 20070678 20070678     p.. p.. x.. x.. 
20070688:	20070680 20070680 20070688 20070688     ... ... ... ... 
20070698:	20070690 20070690 20070698 20070698     ... ... ... ... 
200706a8:	200706a0 200706a0 200706a8 200706a8     ... ... ... ... 
200706b8:	200706b0 200706b0 200706b8 200706b8     ... ... ... ... 
200706c8:	200706c0 200706c0 200706c8 200706c8     ... ... ... ... 
200706d8:	200706d0 200706d0 200706d8 200706d8     ... ... ... ... 
200706e8:	200706e0 200706e0 200706e8 200706e8     ... ... ... ... 
200706f8:	200706f0 200706f0 200706f8 200706f8     ... ... ... ... 
20070708:	20070700 20070700 20070708 20070708     ... ... ... ... 
20070718:	20070710 20070710 20070718 20070718     ... ... ... ... 
20070728:	20070720 20070720 20070728 20070728      ..  .. (.. (.. 
20070738:	20070730 20070730 20070738 20070738     0.. 0.. 8.. 8.. 
20070748:	20070740 20070740 20070748 20070748     @.. @.. H.. H.. 
20070758:	20070750 20070750 20070758 20070758     P.. P.. X.. X.. 
20070768:	20070760 20070760 20070768 20070768     `.. `.. h.. h.. 
20070778:	20070770 20070770 20070778 20070778     p.. p.. x.. x.. 
20070788:	20070780 20070780 20070788 20070788     ... ... ... ... 
20070798:	20070790 20070790 20070798 20070798     ... ... ... ... 
200707a8:	200707a0 200707a0 200707a8 200707a8     ... ... ... ... 
200707b8:	200707b0 200707b0 200707b8 200707b8     ... ... ... ... 
200707c8:	200707c0 200707c0 200707c8 200707c8     ... ... ... ... 
200707d8:	200707d0 200707d0 200707d8 200707d8     ... ... ... ... 
200707e8:	200707e0 200707e0 200707e8 200707e8     ... ... ... ... 
200707f8:	200707f0 200707f0 200707f8 200707f8     ... ... ... ... 
20070808:	20070800 20070800 20070808 20070808     ... ... ... ... 
20070818:	20070810 20070810 20070818 20070818     ... ... ... ... 
20070828:	20070820 20070820 20070828 20070828      ..  .. (.. (.. 
20070838:	20070830 20070830 20070838 20070838     0.. 0.. 8.. 8.. 
20070848:	20070840 20070840 20070848 20070848     @.. @.. H.. H.. 
20070858:	20070850 20070850 20070858 20070858     P.. P.. X.. X.. 
20070868:	20070860 20070860 20070868 20070868     `.. `.. h.. h.. 
20070878:	20070870 20070870 20070878 20070878     p.. p.. x.. x.. 
20070888:	20070880 20070880 20070888 20070888     ... ... ... ... 
20070898:	20070890 20070890 20070898 20070898     ... ... ... ... 
200708a8:	200708a0 200708a0 200708a8 200708a8     ... ... ... ... 
200708b8:	200708b0 200708b0 200708b8 200708b8     ... ... ... ... 

200708c8 <__malloc_trim_threshold>:
200708c8:	00020000                                ....

200708cc <__malloc_sbrk_base>:
200708cc:	ffffffff                                ....

200708d0 <__wctomb>:
200708d0:	00084d19                                .M..
