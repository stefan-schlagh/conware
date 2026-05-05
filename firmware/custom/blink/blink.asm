
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
   80114:	00086234 	.word	0x00086234

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
   80138:	00086234 	.word	0x00086234
   8013c:	200708d8 	.word	0x200708d8
   80140:	00086234 	.word	0x00086234
   80144:	00000000 	.word	0x00000000

00080148 <loop>:
   80148:	b508      	push	{r3, lr}
   8014a:	480c      	ldr	r0, [pc, #48]	; (8017c <loop+0x34>)
   8014c:	f002 facc 	bl	826e8 <iprintf>
   80150:	2101      	movs	r1, #1
   80152:	200d      	movs	r0, #13
   80154:	f001 f9f8 	bl	81548 <digitalWrite>
   80158:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
   8015c:	f001 f960 	bl	81420 <delay>
   80160:	4807      	ldr	r0, [pc, #28]	; (80180 <loop+0x38>)
   80162:	f002 fac1 	bl	826e8 <iprintf>
   80166:	200d      	movs	r0, #13
   80168:	2100      	movs	r1, #0
   8016a:	f001 f9ed 	bl	81548 <digitalWrite>
   8016e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   80172:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
   80176:	f001 b953 	b.w	81420 <delay>
   8017a:	bf00      	nop
   8017c:	00085540 	.word	0x00085540
   80180:	00085545 	.word	0x00085545

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
   80196:	f001 f953 	bl	81440 <pinMode>
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
   80212:	f002 fa41 	bl	82698 <__libc_init_array>
   80216:	46a8      	mov	r8, r5
   80218:	4620      	mov	r0, r4
   8021a:	2100      	movs	r1, #0
   8021c:	3401      	adds	r4, #1
   8021e:	f001 f993 	bl	81548 <digitalWrite>
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
   80254:	f001 f978 	bl	81548 <digitalWrite>
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
   802e6:	f001 b8a9 	b.w	8143c <analogOutputInit>
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
   804b8:	f645 7178 	movw	r1, #24440	; 0x5f78
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
   8065a:	f645 70b8 	movw	r0, #24504	; 0x5fb8
   8065e:	4923      	ldr	r1, [pc, #140]	; (806ec <conware_print_results+0xa8>)
   80660:	f2c0 0008 	movt	r0, #8
   80664:	4788      	blx	r1
   80666:	f647 0b94 	movw	fp, #30868	; 0x7894
   8066a:	f643 2a14 	movw	sl, #14868	; 0x3a14
   8066e:	f641 28d4 	movw	r8, #6868	; 0x1ad4
   80672:	f645 75cc 	movw	r5, #24524	; 0x5fcc
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
   806c0:	f645 70ec 	movw	r0, #24556	; 0x5fec
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
   806ec:	000826e9 	.word	0x000826e9
   806f0:	000826e9 	.word	0x000826e9
   806f4:	000826e9 	.word	0x000826e9

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
   80f08:	f246 2234 	movw	r2, #25140	; 0x6234
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
   80fbc:	00082711 	.word	0x00082711
   80fc0:	000808c5 	.word	0x000808c5
   80fc4:	000808c5 	.word	0x000808c5
   80fc8:	000808c5 	.word	0x000808c5
   80fcc:	00081361 	.word	0x00081361

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
   80ffc:	f001 fb88 	bl	82710 <memset>
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
   81150:	00086008 	.word	0x00086008

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
   81250:	00086038 	.word	0x00086038

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
   81336:	f000 b810 	b.w	8135a <pendSVHook>

0008133a <PendSV_Handler>:
   8133a:	f000 b80e 	b.w	8135a <pendSVHook>

0008133e <SysTick_Handler>:
   8133e:	b508      	push	{r3, lr}
   81340:	f000 f809 	bl	81356 <sysTickHook>
   81344:	b928      	cbnz	r0, 81352 <SysTick_Handler+0x14>
   81346:	f000 f957 	bl	815f8 <tickReset>
   8134a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   8134e:	f000 be3f 	b.w	81fd0 <TimeTick_Increment>
   81352:	bd08      	pop	{r3, pc}

00081354 <yield>:
   81354:	4770      	bx	lr

00081356 <sysTickHook>:
   81356:	2000      	movs	r0, #0
   81358:	4770      	bx	lr

0008135a <pendSVHook>:
   8135a:	e7fe      	b.n	8135a <pendSVHook>

0008135c <initVariant>:
   8135c:	4770      	bx	lr
	...

00081360 <main>:
   81360:	b508      	push	{r3, lr}
   81362:	f000 f857 	bl	81414 <_watchdogDefaultSetup>
   81366:	f7fe ff3f 	bl	801e8 <init>
   8136a:	f7ff fff7 	bl	8135c <initVariant>
   8136e:	2001      	movs	r0, #1
   81370:	f000 f856 	bl	81420 <delay>
   81374:	4806      	ldr	r0, [pc, #24]	; (81390 <main+0x30>)
   81376:	f000 fa99 	bl	818ac <_ZN10USBDevice_6attachEv>
   8137a:	f7fe ff09 	bl	80190 <setup>
   8137e:	f7fe fee3 	bl	80148 <loop>
   81382:	4b04      	ldr	r3, [pc, #16]	; (81394 <main+0x34>)
   81384:	2b00      	cmp	r3, #0
   81386:	d0fa      	beq.n	8137e <main+0x1e>
   81388:	f7ff f82c 	bl	803e4 <_Z14serialEventRunv>
   8138c:	e7f7      	b.n	8137e <main+0x1e>
   8138e:	bf00      	nop
   81390:	20071040 	.word	0x20071040
   81394:	000803e5 	.word	0x000803e5

00081398 <_sbrk>:
   81398:	4b04      	ldr	r3, [pc, #16]	; (813ac <_sbrk+0x14>)
   8139a:	681a      	ldr	r2, [r3, #0]
   8139c:	b90a      	cbnz	r2, 813a2 <_sbrk+0xa>
   8139e:	4a04      	ldr	r2, [pc, #16]	; (813b0 <_sbrk+0x18>)
   813a0:	601a      	str	r2, [r3, #0]
   813a2:	681a      	ldr	r2, [r3, #0]
   813a4:	4410      	add	r0, r2
   813a6:	6018      	str	r0, [r3, #0]
   813a8:	4610      	mov	r0, r2
   813aa:	4770      	bx	lr
   813ac:	2007102c 	.word	0x2007102c
   813b0:	200797d8 	.word	0x200797d8

000813b4 <link>:
   813b4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   813b8:	4770      	bx	lr

000813ba <_close>:
   813ba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   813be:	4770      	bx	lr

000813c0 <_fstat>:
   813c0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
   813c4:	604b      	str	r3, [r1, #4]
   813c6:	2000      	movs	r0, #0
   813c8:	4770      	bx	lr

000813ca <_isatty>:
   813ca:	2001      	movs	r0, #1
   813cc:	4770      	bx	lr

000813ce <_lseek>:
   813ce:	2000      	movs	r0, #0
   813d0:	4770      	bx	lr

000813d2 <_read>:
   813d2:	2000      	movs	r0, #0
   813d4:	4770      	bx	lr
	...

000813d8 <_write>:
   813d8:	b510      	push	{r4, lr}
   813da:	2300      	movs	r3, #0
   813dc:	4293      	cmp	r3, r2
   813de:	da07      	bge.n	813f0 <_write+0x18>
   813e0:	4805      	ldr	r0, [pc, #20]	; (813f8 <_write+0x20>)
   813e2:	6944      	ldr	r4, [r0, #20]
   813e4:	07a4      	lsls	r4, r4, #30
   813e6:	d5fb      	bpl.n	813e0 <_write+0x8>
   813e8:	5ccc      	ldrb	r4, [r1, r3]
   813ea:	3301      	adds	r3, #1
   813ec:	61c4      	str	r4, [r0, #28]
   813ee:	e7f5      	b.n	813dc <_write+0x4>
   813f0:	ea22 70e2 	bic.w	r0, r2, r2, asr #31
   813f4:	bd10      	pop	{r4, pc}
   813f6:	bf00      	nop
   813f8:	400e0800 	.word	0x400e0800

000813fc <_exit>:
   813fc:	4601      	mov	r1, r0
   813fe:	b508      	push	{r3, lr}
   81400:	4801      	ldr	r0, [pc, #4]	; (81408 <_exit+0xc>)
   81402:	f001 f971 	bl	826e8 <iprintf>
   81406:	e7fe      	b.n	81406 <_exit+0xa>
   81408:	00086060 	.word	0x00086060

0008140c <_kill>:
   8140c:	4770      	bx	lr

0008140e <_getpid>:
   8140e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   81412:	4770      	bx	lr

00081414 <_watchdogDefaultSetup>:
   81414:	4801      	ldr	r0, [pc, #4]	; (8141c <_watchdogDefaultSetup+0x8>)
   81416:	f001 b933 	b.w	82680 <WDT_Disable>
   8141a:	bf00      	nop
   8141c:	400e1a50 	.word	0x400e1a50

00081420 <delay>:
   81420:	b538      	push	{r3, r4, r5, lr}
   81422:	4604      	mov	r4, r0
   81424:	b148      	cbz	r0, 8143a <delay+0x1a>
   81426:	f000 fddb 	bl	81fe0 <GetTickCount>
   8142a:	4605      	mov	r5, r0
   8142c:	f7ff ff92 	bl	81354 <yield>
   81430:	f000 fdd6 	bl	81fe0 <GetTickCount>
   81434:	1b40      	subs	r0, r0, r5
   81436:	42a0      	cmp	r0, r4
   81438:	d3f8      	bcc.n	8142c <delay+0xc>
   8143a:	bd38      	pop	{r3, r4, r5, pc}

0008143c <analogOutputInit>:
   8143c:	4770      	bx	lr
	...

00081440 <pinMode>:
   81440:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   81444:	4e3d      	ldr	r6, [pc, #244]	; (8153c <pinMode+0xfc>)
   81446:	231c      	movs	r3, #28
   81448:	fb03 6300 	mla	r3, r3, r0, r6
   8144c:	7b1a      	ldrb	r2, [r3, #12]
   8144e:	4604      	mov	r4, r0
   81450:	460f      	mov	r7, r1
   81452:	2a00      	cmp	r2, #0
   81454:	d070      	beq.n	81538 <pinMode+0xf8>
   81456:	4d3a      	ldr	r5, [pc, #232]	; (81540 <pinMode+0x100>)
   81458:	5c2a      	ldrb	r2, [r5, r0]
   8145a:	f002 020f 	and.w	r2, r2, #15
   8145e:	2a04      	cmp	r2, #4
   81460:	d103      	bne.n	8146a <pinMode+0x2a>
   81462:	4838      	ldr	r0, [pc, #224]	; (81544 <pinMode+0x104>)
   81464:	7e59      	ldrb	r1, [r3, #25]
   81466:	f7ff f8cf 	bl	80608 <adc_disable_channel>
   8146a:	5d2a      	ldrb	r2, [r5, r4]
   8146c:	f002 030f 	and.w	r3, r2, #15
   81470:	2b02      	cmp	r3, #2
   81472:	dc11      	bgt.n	81498 <pinMode+0x58>
   81474:	b182      	cbz	r2, 81498 <pinMode+0x58>
   81476:	2b02      	cmp	r3, #2
   81478:	d102      	bne.n	81480 <pinMode+0x40>
   8147a:	b96f      	cbnz	r7, 81498 <pinMode+0x58>
   8147c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   81480:	2b01      	cmp	r3, #1
   81482:	d103      	bne.n	8148c <pinMode+0x4c>
   81484:	2f02      	cmp	r7, #2
   81486:	d107      	bne.n	81498 <pinMode+0x58>
   81488:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   8148c:	2b03      	cmp	r3, #3
   8148e:	d103      	bne.n	81498 <pinMode+0x58>
   81490:	2f01      	cmp	r7, #1
   81492:	d103      	bne.n	8149c <pinMode+0x5c>
   81494:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   81498:	2f01      	cmp	r7, #1
   8149a:	d032      	beq.n	81502 <pinMode+0xc2>
   8149c:	b11f      	cbz	r7, 814a6 <pinMode+0x66>
   8149e:	2f02      	cmp	r7, #2
   814a0:	d017      	beq.n	814d2 <pinMode+0x92>
   814a2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   814a6:	f04f 081c 	mov.w	r8, #28
   814aa:	fb08 f804 	mul.w	r8, r8, r4
   814ae:	eb06 0708 	add.w	r7, r6, r8
   814b2:	68b8      	ldr	r0, [r7, #8]
   814b4:	f7ff fbba 	bl	80c2c <pmc_enable_periph_clk>
   814b8:	2300      	movs	r3, #0
   814ba:	f856 0008 	ldr.w	r0, [r6, r8]
   814be:	2103      	movs	r1, #3
   814c0:	687a      	ldr	r2, [r7, #4]
   814c2:	f7ff fb27 	bl	80b14 <PIO_Configure>
   814c6:	5d2b      	ldrb	r3, [r5, r4]
   814c8:	f023 030f 	bic.w	r3, r3, #15
   814cc:	f043 0302 	orr.w	r3, r3, #2
   814d0:	e014      	b.n	814fc <pinMode+0xbc>
   814d2:	f04f 081c 	mov.w	r8, #28
   814d6:	fb08 f804 	mul.w	r8, r8, r4
   814da:	eb06 0708 	add.w	r7, r6, r8
   814de:	68b8      	ldr	r0, [r7, #8]
   814e0:	f7ff fba4 	bl	80c2c <pmc_enable_periph_clk>
   814e4:	2301      	movs	r3, #1
   814e6:	f856 0008 	ldr.w	r0, [r6, r8]
   814ea:	2103      	movs	r1, #3
   814ec:	687a      	ldr	r2, [r7, #4]
   814ee:	f7ff fb11 	bl	80b14 <PIO_Configure>
   814f2:	5d2b      	ldrb	r3, [r5, r4]
   814f4:	f023 030f 	bic.w	r3, r3, #15
   814f8:	f043 0301 	orr.w	r3, r3, #1
   814fc:	552b      	strb	r3, [r5, r4]
   814fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   81502:	231c      	movs	r3, #28
   81504:	4363      	muls	r3, r4
   81506:	58f7      	ldr	r7, [r6, r3]
   81508:	0912      	lsrs	r2, r2, #4
   8150a:	441e      	add	r6, r3
   8150c:	bf0c      	ite	eq
   8150e:	2104      	moveq	r1, #4
   81510:	2105      	movne	r1, #5
   81512:	6933      	ldr	r3, [r6, #16]
   81514:	4638      	mov	r0, r7
   81516:	6872      	ldr	r2, [r6, #4]
   81518:	f7ff fafc 	bl	80b14 <PIO_Configure>
   8151c:	5d2b      	ldrb	r3, [r5, r4]
   8151e:	f023 030f 	bic.w	r3, r3, #15
   81522:	f043 0303 	orr.w	r3, r3, #3
   81526:	552b      	strb	r3, [r5, r4]
   81528:	69bb      	ldr	r3, [r7, #24]
   8152a:	3301      	adds	r3, #1
   8152c:	d104      	bne.n	81538 <pinMode+0xf8>
   8152e:	68b0      	ldr	r0, [r6, #8]
   81530:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
   81534:	f7ff bbbc 	b.w	80cb0 <pmc_disable_periph_clk>
   81538:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   8153c:	0008554c 	.word	0x0008554c
   81540:	20070c34 	.word	0x20070c34
   81544:	400c0000 	.word	0x400c0000

00081548 <digitalWrite>:
   81548:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
   8154a:	4e19      	ldr	r6, [pc, #100]	; (815b0 <digitalWrite+0x68>)
   8154c:	231c      	movs	r3, #28
   8154e:	fb03 6300 	mla	r3, r3, r0, r6
   81552:	7b1b      	ldrb	r3, [r3, #12]
   81554:	4604      	mov	r4, r0
   81556:	460d      	mov	r5, r1
   81558:	b343      	cbz	r3, 815ac <digitalWrite+0x64>
   8155a:	4f16      	ldr	r7, [pc, #88]	; (815b4 <digitalWrite+0x6c>)
   8155c:	5c3b      	ldrb	r3, [r7, r0]
   8155e:	f003 030f 	and.w	r3, r3, #15
   81562:	2b05      	cmp	r3, #5
   81564:	d102      	bne.n	8156c <digitalWrite+0x24>
   81566:	2101      	movs	r1, #1
   81568:	f7ff ff6a 	bl	81440 <pinMode>
   8156c:	5d3b      	ldrb	r3, [r7, r4]
   8156e:	f003 030f 	and.w	r3, r3, #15
   81572:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
   81576:	553b      	strb	r3, [r7, r4]
   81578:	231c      	movs	r3, #28
   8157a:	435c      	muls	r4, r3
   8157c:	1933      	adds	r3, r6, r4
   8157e:	5936      	ldr	r6, [r6, r4]
   81580:	685c      	ldr	r4, [r3, #4]
   81582:	4630      	mov	r0, r6
   81584:	4621      	mov	r1, r4
   81586:	f7ff fb0d 	bl	80ba4 <PIO_GetOutputDataStatus>
   8158a:	b938      	cbnz	r0, 8159c <digitalWrite+0x54>
   8158c:	4630      	mov	r0, r6
   8158e:	4621      	mov	r1, r4
   81590:	462a      	mov	r2, r5
   81592:	b003      	add	sp, #12
   81594:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
   81598:	f7ff b9a6 	b.w	808e8 <PIO_PullUp>
   8159c:	2301      	movs	r3, #1
   8159e:	9300      	str	r3, [sp, #0]
   815a0:	4630      	mov	r0, r6
   815a2:	4621      	mov	r1, r4
   815a4:	462a      	mov	r2, r5
   815a6:	2300      	movs	r3, #0
   815a8:	f7ff fa66 	bl	80a78 <PIO_SetOutput>
   815ac:	b003      	add	sp, #12
   815ae:	bdf0      	pop	{r4, r5, r6, r7, pc}
   815b0:	0008554c 	.word	0x0008554c
   815b4:	20070c34 	.word	0x20070c34

000815b8 <_ZN5Print5writeEPKhj>:
   815b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   815ba:	4605      	mov	r5, r0
   815bc:	460e      	mov	r6, r1
   815be:	4617      	mov	r7, r2
   815c0:	2400      	movs	r4, #0
   815c2:	42bc      	cmp	r4, r7
   815c4:	d007      	beq.n	815d6 <_ZN5Print5writeEPKhj+0x1e>
   815c6:	682b      	ldr	r3, [r5, #0]
   815c8:	4628      	mov	r0, r5
   815ca:	681b      	ldr	r3, [r3, #0]
   815cc:	5d31      	ldrb	r1, [r6, r4]
   815ce:	4798      	blx	r3
   815d0:	b108      	cbz	r0, 815d6 <_ZN5Print5writeEPKhj+0x1e>
   815d2:	3401      	adds	r4, #1
   815d4:	e7f5      	b.n	815c2 <_ZN5Print5writeEPKhj+0xa>
   815d6:	4620      	mov	r0, r4
   815d8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

000815dc <initiateReset>:
   815dc:	4b01      	ldr	r3, [pc, #4]	; (815e4 <initiateReset+0x8>)
   815de:	6018      	str	r0, [r3, #0]
   815e0:	4770      	bx	lr
   815e2:	bf00      	nop
   815e4:	20070034 	.word	0x20070034

000815e8 <cancelReset>:
   815e8:	4b02      	ldr	r3, [pc, #8]	; (815f4 <cancelReset+0xc>)
   815ea:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
   815ee:	601a      	str	r2, [r3, #0]
   815f0:	4770      	bx	lr
   815f2:	bf00      	nop
   815f4:	20070034 	.word	0x20070034

000815f8 <tickReset>:
   815f8:	4a05      	ldr	r2, [pc, #20]	; (81610 <tickReset+0x18>)
   815fa:	b508      	push	{r3, lr}
   815fc:	6813      	ldr	r3, [r2, #0]
   815fe:	1c59      	adds	r1, r3, #1
   81600:	d004      	beq.n	8160c <tickReset+0x14>
   81602:	3b01      	subs	r3, #1
   81604:	6013      	str	r3, [r2, #0]
   81606:	b90b      	cbnz	r3, 8160c <tickReset+0x14>
   81608:	4b02      	ldr	r3, [pc, #8]	; (81614 <tickReset+0x1c>)
   8160a:	4798      	blx	r3
   8160c:	bd08      	pop	{r3, pc}
   8160e:	bf00      	nop
   81610:	20070034 	.word	0x20070034
   81614:	20070001 	.word	0x20070001

00081618 <_ZL11USB_SendZlpv>:
   81618:	4b06      	ldr	r3, [pc, #24]	; (81634 <_ZL11USB_SendZlpv+0x1c>)
   8161a:	f8d3 2130 	ldr.w	r2, [r3, #304]	; 0x130
   8161e:	07d2      	lsls	r2, r2, #31
   81620:	d403      	bmi.n	8162a <_ZL11USB_SendZlpv+0x12>
   81622:	685b      	ldr	r3, [r3, #4]
   81624:	07d9      	lsls	r1, r3, #31
   81626:	d403      	bmi.n	81630 <_ZL11USB_SendZlpv+0x18>
   81628:	e7f6      	b.n	81618 <_ZL11USB_SendZlpv>
   8162a:	2201      	movs	r2, #1
   8162c:	f8c3 2160 	str.w	r2, [r3, #352]	; 0x160
   81630:	4770      	bx	lr
   81632:	bf00      	nop
   81634:	400ac000 	.word	0x400ac000

00081638 <_Z14USBD_Availablem>:
   81638:	b538      	push	{r3, r4, r5, lr}
   8163a:	4b09      	ldr	r3, [pc, #36]	; (81660 <_Z14USBD_Availablem+0x28>)
   8163c:	681d      	ldr	r5, [r3, #0]
   8163e:	b672      	cpsid	i
   81640:	f3bf 8f5f 	dmb	sy
   81644:	461c      	mov	r4, r3
   81646:	f000 000f 	and.w	r0, r0, #15
   8164a:	2300      	movs	r3, #0
   8164c:	6023      	str	r3, [r4, #0]
   8164e:	f000 ffb3 	bl	825b8 <UDD_FifoByteCount>
   81652:	b125      	cbz	r5, 8165e <_Z14USBD_Availablem+0x26>
   81654:	2301      	movs	r3, #1
   81656:	6023      	str	r3, [r4, #0]
   81658:	f3bf 8f5f 	dmb	sy
   8165c:	b662      	cpsie	i
   8165e:	bd38      	pop	{r3, r4, r5, pc}
   81660:	2007006c 	.word	0x2007006c

00081664 <_Z9USBD_RecvmPvm>:
   81664:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   81668:	4b1b      	ldr	r3, [pc, #108]	; (816d8 <_Z9USBD_RecvmPvm+0x74>)
   8166a:	4689      	mov	r9, r1
   8166c:	681b      	ldr	r3, [r3, #0]
   8166e:	4615      	mov	r5, r2
   81670:	b33b      	cbz	r3, 816c2 <_Z9USBD_RecvmPvm+0x5e>
   81672:	4b1a      	ldr	r3, [pc, #104]	; (816dc <_Z9USBD_RecvmPvm+0x78>)
   81674:	f8d3 8000 	ldr.w	r8, [r3]
   81678:	b672      	cpsid	i
   8167a:	f3bf 8f5f 	dmb	sy
   8167e:	f000 040f 	and.w	r4, r0, #15
   81682:	2600      	movs	r6, #0
   81684:	4620      	mov	r0, r4
   81686:	461f      	mov	r7, r3
   81688:	601e      	str	r6, [r3, #0]
   8168a:	f000 ff95 	bl	825b8 <UDD_FifoByteCount>
   8168e:	42a8      	cmp	r0, r5
   81690:	bf38      	it	cc
   81692:	4605      	movcc	r5, r0
   81694:	42ae      	cmp	r6, r5
   81696:	d006      	beq.n	816a6 <_Z9USBD_RecvmPvm+0x42>
   81698:	4620      	mov	r0, r4
   8169a:	f000 ff3f 	bl	8251c <UDD_Recv8>
   8169e:	f809 0006 	strb.w	r0, [r9, r6]
   816a2:	3601      	adds	r6, #1
   816a4:	e7f6      	b.n	81694 <_Z9USBD_RecvmPvm+0x30>
   816a6:	b11d      	cbz	r5, 816b0 <_Z9USBD_RecvmPvm+0x4c>
   816a8:	4620      	mov	r0, r4
   816aa:	f000 ff85 	bl	825b8 <UDD_FifoByteCount>
   816ae:	b178      	cbz	r0, 816d0 <_Z9USBD_RecvmPvm+0x6c>
   816b0:	f1b8 0f00 	cmp.w	r8, #0
   816b4:	d009      	beq.n	816ca <_Z9USBD_RecvmPvm+0x66>
   816b6:	2301      	movs	r3, #1
   816b8:	603b      	str	r3, [r7, #0]
   816ba:	f3bf 8f5f 	dmb	sy
   816be:	b662      	cpsie	i
   816c0:	e003      	b.n	816ca <_Z9USBD_RecvmPvm+0x66>
   816c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   816c6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   816ca:	4628      	mov	r0, r5
   816cc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   816d0:	4620      	mov	r0, r4
   816d2:	f000 ff7a 	bl	825ca <UDD_ReleaseRX>
   816d6:	e7eb      	b.n	816b0 <_Z9USBD_RecvmPvm+0x4c>
   816d8:	2007104c 	.word	0x2007104c
   816dc:	2007006c 	.word	0x2007006c

000816e0 <_Z9USBD_Recvm>:
   816e0:	b507      	push	{r0, r1, r2, lr}
   816e2:	2201      	movs	r2, #1
   816e4:	f10d 0107 	add.w	r1, sp, #7
   816e8:	f000 000f 	and.w	r0, r0, #15
   816ec:	f7ff ffba 	bl	81664 <_Z9USBD_RecvmPvm>
   816f0:	2801      	cmp	r0, #1
   816f2:	bf0c      	ite	eq
   816f4:	f89d 0007 	ldrbeq.w	r0, [sp, #7]
   816f8:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
   816fc:	b003      	add	sp, #12
   816fe:	f85d fb04 	ldr.w	pc, [sp], #4
	...

00081704 <_Z9USBD_SendmPKvm>:
   81704:	4b11      	ldr	r3, [pc, #68]	; (8174c <_Z9USBD_SendmPKvm+0x48>)
   81706:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   8170a:	681b      	ldr	r3, [r3, #0]
   8170c:	4680      	mov	r8, r0
   8170e:	460d      	mov	r5, r1
   81710:	4617      	mov	r7, r2
   81712:	b1b3      	cbz	r3, 81742 <_Z9USBD_SendmPKvm+0x3e>
   81714:	4614      	mov	r4, r2
   81716:	b18c      	cbz	r4, 8173c <_Z9USBD_SendmPKvm+0x38>
   81718:	f1b8 0f00 	cmp.w	r8, #0
   8171c:	bf14      	ite	ne
   8171e:	f44f 7600 	movne.w	r6, #512	; 0x200
   81722:	2640      	moveq	r6, #64	; 0x40
   81724:	42a6      	cmp	r6, r4
   81726:	bf28      	it	cs
   81728:	4626      	movcs	r6, r4
   8172a:	4629      	mov	r1, r5
   8172c:	f008 000f 	and.w	r0, r8, #15
   81730:	4632      	mov	r2, r6
   81732:	1ba4      	subs	r4, r4, r6
   81734:	f000 fe84 	bl	82440 <UDD_Send>
   81738:	4435      	add	r5, r6
   8173a:	e7ec      	b.n	81716 <_Z9USBD_SendmPKvm+0x12>
   8173c:	4638      	mov	r0, r7
   8173e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   81742:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   81746:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   8174a:	bf00      	nop
   8174c:	2007104c 	.word	0x2007104c

00081750 <_Z16USBD_SendControlhPKvm>:
   81750:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   81754:	4b0c      	ldr	r3, [pc, #48]	; (81788 <_Z16USBD_SendControlhPKvm+0x38>)
   81756:	4f0d      	ldr	r7, [pc, #52]	; (8178c <_Z16USBD_SendControlhPKvm+0x3c>)
   81758:	4615      	mov	r5, r2
   8175a:	881b      	ldrh	r3, [r3, #0]
   8175c:	883a      	ldrh	r2, [r7, #0]
   8175e:	4688      	mov	r8, r1
   81760:	429a      	cmp	r2, r3
   81762:	d20b      	bcs.n	8177c <_Z16USBD_SendControlhPKvm+0x2c>
   81764:	462c      	mov	r4, r5
   81766:	2600      	movs	r6, #0
   81768:	b144      	cbz	r4, 8177c <_Z16USBD_SendControlhPKvm+0x2c>
   8176a:	eb08 0106 	add.w	r1, r8, r6
   8176e:	4622      	mov	r2, r4
   81770:	2000      	movs	r0, #0
   81772:	f000 fe65 	bl	82440 <UDD_Send>
   81776:	4406      	add	r6, r0
   81778:	1a24      	subs	r4, r4, r0
   8177a:	e7f5      	b.n	81768 <_Z16USBD_SendControlhPKvm+0x18>
   8177c:	883b      	ldrh	r3, [r7, #0]
   8177e:	4628      	mov	r0, r5
   81780:	442b      	add	r3, r5
   81782:	803b      	strh	r3, [r7, #0]
   81784:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   81788:	20071048 	.word	0x20071048
   8178c:	20071030 	.word	0x20071030

00081790 <_ZL24USB_SendStringDescriptorPKhi>:
   81790:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   81792:	2901      	cmp	r1, #1
   81794:	af00      	add	r7, sp, #0
   81796:	4606      	mov	r6, r0
   81798:	460c      	mov	r4, r1
   8179a:	dd28      	ble.n	817ee <_ZL24USB_SendStringDescriptorPKhi+0x5e>
   8179c:	1dcb      	adds	r3, r1, #7
   8179e:	f023 0307 	bic.w	r3, r3, #7
   817a2:	ebad 0d03 	sub.w	sp, sp, r3
   817a6:	f000 fffd 	bl	827a4 <strlen>
   817aa:	3001      	adds	r0, #1
   817ac:	0040      	lsls	r0, r0, #1
   817ae:	2303      	movs	r3, #3
   817b0:	f88d 0000 	strb.w	r0, [sp]
   817b4:	466d      	mov	r5, sp
   817b6:	f88d 3001 	strb.w	r3, [sp, #1]
   817ba:	1e70      	subs	r0, r6, #1
   817bc:	2202      	movs	r2, #2
   817be:	42a2      	cmp	r2, r4
   817c0:	da0d      	bge.n	817de <_ZL24USB_SendStringDescriptorPKhi+0x4e>
   817c2:	f810 3f01 	ldrb.w	r3, [r0, #1]!
   817c6:	b153      	cbz	r3, 817de <_ZL24USB_SendStringDescriptorPKhi+0x4e>
   817c8:	1c51      	adds	r1, r2, #1
   817ca:	b2c9      	uxtb	r1, r1
   817cc:	42a1      	cmp	r1, r4
   817ce:	54ab      	strb	r3, [r5, r2]
   817d0:	d004      	beq.n	817dc <_ZL24USB_SendStringDescriptorPKhi+0x4c>
   817d2:	2300      	movs	r3, #0
   817d4:	3202      	adds	r2, #2
   817d6:	546b      	strb	r3, [r5, r1]
   817d8:	b2d2      	uxtb	r2, r2
   817da:	e7f0      	b.n	817be <_ZL24USB_SendStringDescriptorPKhi+0x2e>
   817dc:	4622      	mov	r2, r4
   817de:	2000      	movs	r0, #0
   817e0:	4629      	mov	r1, r5
   817e2:	f7ff ffb5 	bl	81750 <_Z16USBD_SendControlhPKvm>
   817e6:	3000      	adds	r0, #0
   817e8:	bf18      	it	ne
   817ea:	2001      	movne	r0, #1
   817ec:	e000      	b.n	817f0 <_ZL24USB_SendStringDescriptorPKhi+0x60>
   817ee:	2000      	movs	r0, #0
   817f0:	46bd      	mov	sp, r7
   817f2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000817f4 <_Z16USBD_RecvControlPvm>:
   817f4:	b538      	push	{r3, r4, r5, lr}
   817f6:	460c      	mov	r4, r1
   817f8:	4605      	mov	r5, r0
   817fa:	f000 fdc3 	bl	82384 <UDD_WaitOUT>
   817fe:	2000      	movs	r0, #0
   81800:	4629      	mov	r1, r5
   81802:	4622      	mov	r2, r4
   81804:	f000 fe9d 	bl	82542 <UDD_Recv>
   81808:	f000 fde8 	bl	823dc <UDD_ClearOUT>
   8180c:	4620      	mov	r0, r4
   8180e:	bd38      	pop	{r3, r4, r5, pc}

00081810 <_Z26USBD_ClassInterfaceRequestR8USBSetup>:
   81810:	7903      	ldrb	r3, [r0, #4]
   81812:	b510      	push	{r4, lr}
   81814:	4604      	mov	r4, r0
   81816:	b91b      	cbnz	r3, 81820 <_Z26USBD_ClassInterfaceRequestR8USBSetup+0x10>
   81818:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   8181c:	f000 bb3a 	b.w	81e94 <_Z9CDC_SetupR8USBSetup>
   81820:	f000 fbc2 	bl	81fa8 <_Z12PluggableUSBv>
   81824:	4621      	mov	r1, r4
   81826:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   8182a:	f000 bbad 	b.w	81f88 <_ZN13PluggableUSB_5setupER8USBSetup>

0008182e <_Z19USBD_SendInterfacesv>:
   8182e:	b513      	push	{r0, r1, r4, lr}
   81830:	2300      	movs	r3, #0
   81832:	ac02      	add	r4, sp, #8
   81834:	f804 3d01 	strb.w	r3, [r4, #-1]!
   81838:	4620      	mov	r0, r4
   8183a:	f000 fb17 	bl	81e6c <_Z16CDC_GetInterfacePh>
   8183e:	f000 fbb3 	bl	81fa8 <_Z12PluggableUSBv>
   81842:	4621      	mov	r1, r4
   81844:	f000 fb70 	bl	81f28 <_ZN13PluggableUSB_12getInterfaceEPh>
   81848:	f89d 0007 	ldrb.w	r0, [sp, #7]
   8184c:	b002      	add	sp, #8
   8184e:	bd10      	pop	{r4, pc}

00081850 <_Z24USBD_SendOtherInterfacesv>:
   81850:	b513      	push	{r0, r1, r4, lr}
   81852:	2300      	movs	r3, #0
   81854:	ac02      	add	r4, sp, #8
   81856:	f804 3d01 	strb.w	r3, [r4, #-1]!
   8185a:	4620      	mov	r0, r4
   8185c:	f000 fb10 	bl	81e80 <_Z21CDC_GetOtherInterfacePh>
   81860:	f000 fba2 	bl	81fa8 <_Z12PluggableUSBv>
   81864:	4621      	mov	r1, r4
   81866:	f000 fb5f 	bl	81f28 <_ZN13PluggableUSB_12getInterfaceEPh>
   8186a:	f89d 0007 	ldrb.w	r0, [sp, #7]
   8186e:	b002      	add	sp, #8
   81870:	bd10      	pop	{r4, pc}

00081872 <_Z10USBD_Flushm>:
   81872:	b510      	push	{r4, lr}
   81874:	4604      	mov	r4, r0
   81876:	f000 fe9f 	bl	825b8 <UDD_FifoByteCount>
   8187a:	b120      	cbz	r0, 81886 <_Z10USBD_Flushm+0x14>
   8187c:	4620      	mov	r0, r4
   8187e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   81882:	f000 beb7 	b.w	825f4 <UDD_ReleaseTX>
   81886:	bd10      	pop	{r4, pc}

00081888 <_ZN10USBDevice_C1Ev>:
   81888:	b510      	push	{r4, lr}
   8188a:	4604      	mov	r4, r0
   8188c:	4805      	ldr	r0, [pc, #20]	; (818a4 <_ZN10USBDevice_C1Ev+0x1c>)
   8188e:	f000 fbad 	bl	81fec <UDD_SetStack>
   81892:	f000 fbb1 	bl	81ff8 <UDD_Init>
   81896:	b910      	cbnz	r0, 8189e <_ZN10USBDevice_C1Ev+0x16>
   81898:	4b03      	ldr	r3, [pc, #12]	; (818a8 <_ZN10USBDevice_C1Ev+0x20>)
   8189a:	2201      	movs	r2, #1
   8189c:	601a      	str	r2, [r3, #0]
   8189e:	4620      	mov	r0, r4
   818a0:	bd10      	pop	{r4, pc}
   818a2:	bf00      	nop
   818a4:	000818d9 	.word	0x000818d9
   818a8:	2007103c 	.word	0x2007103c

000818ac <_ZN10USBDevice_6attachEv>:
   818ac:	b508      	push	{r3, lr}
   818ae:	4b05      	ldr	r3, [pc, #20]	; (818c4 <_ZN10USBDevice_6attachEv+0x18>)
   818b0:	6818      	ldr	r0, [r3, #0]
   818b2:	b128      	cbz	r0, 818c0 <_ZN10USBDevice_6attachEv+0x14>
   818b4:	f000 fc8e 	bl	821d4 <UDD_Attach>
   818b8:	4b03      	ldr	r3, [pc, #12]	; (818c8 <_ZN10USBDevice_6attachEv+0x1c>)
   818ba:	2200      	movs	r2, #0
   818bc:	601a      	str	r2, [r3, #0]
   818be:	2001      	movs	r0, #1
   818c0:	bd08      	pop	{r3, pc}
   818c2:	bf00      	nop
   818c4:	2007103c 	.word	0x2007103c
   818c8:	2007104c 	.word	0x2007104c

000818cc <_GLOBAL__sub_I_EndPoints>:
   818cc:	4801      	ldr	r0, [pc, #4]	; (818d4 <_GLOBAL__sub_I_EndPoints+0x8>)
   818ce:	f7ff bfdb 	b.w	81888 <_ZN10USBDevice_C1Ev>
   818d2:	bf00      	nop
   818d4:	20071040 	.word	0x20071040

000818d8 <_ZL7USB_ISRv>:
   818d8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
   818dc:	4cac      	ldr	r4, [pc, #688]	; (81b90 <_ZL7USB_ISRv+0x2b8>)
   818de:	b088      	sub	sp, #32
   818e0:	6863      	ldr	r3, [r4, #4]
   818e2:	071f      	lsls	r7, r3, #28
   818e4:	d517      	bpl.n	81916 <_ZL7USB_ISRv+0x3e>
   818e6:	6823      	ldr	r3, [r4, #0]
   818e8:	2000      	movs	r0, #0
   818ea:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
   818ee:	6023      	str	r3, [r4, #0]
   818f0:	6823      	ldr	r3, [r4, #0]
   818f2:	f242 0132 	movw	r1, #8242	; 0x2032
   818f6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
   818fa:	6023      	str	r3, [r4, #0]
   818fc:	f000 fcca 	bl	82294 <UDD_InitEP>
   81900:	4ba4      	ldr	r3, [pc, #656]	; (81b94 <_ZL7USB_ISRv+0x2bc>)
   81902:	2204      	movs	r2, #4
   81904:	601a      	str	r2, [r3, #0]
   81906:	f44f 5380 	mov.w	r3, #4096	; 0x1000
   8190a:	61a3      	str	r3, [r4, #24]
   8190c:	4ba2      	ldr	r3, [pc, #648]	; (81b98 <_ZL7USB_ISRv+0x2c0>)
   8190e:	2200      	movs	r2, #0
   81910:	601a      	str	r2, [r3, #0]
   81912:	2308      	movs	r3, #8
   81914:	60a3      	str	r3, [r4, #8]
   81916:	4b9e      	ldr	r3, [pc, #632]	; (81b90 <_ZL7USB_ISRv+0x2b8>)
   81918:	685b      	ldr	r3, [r3, #4]
   8191a:	045e      	lsls	r6, r3, #17
   8191c:	d508      	bpl.n	81930 <_ZL7USB_ISRv+0x58>
   8191e:	4b9f      	ldr	r3, [pc, #636]	; (81b9c <_ZL7USB_ISRv+0x2c4>)
   81920:	2002      	movs	r0, #2
   81922:	6018      	str	r0, [r3, #0]
   81924:	f7ff fe88 	bl	81638 <_Z14USBD_Availablem>
   81928:	b110      	cbz	r0, 81930 <_ZL7USB_ISRv+0x58>
   8192a:	489d      	ldr	r0, [pc, #628]	; (81ba0 <_ZL7USB_ISRv+0x2c8>)
   8192c:	f000 fa50 	bl	81dd0 <_ZN7Serial_6acceptEv>
   81930:	4b97      	ldr	r3, [pc, #604]	; (81b90 <_ZL7USB_ISRv+0x2b8>)
   81932:	685a      	ldr	r2, [r3, #4]
   81934:	0755      	lsls	r5, r2, #29
   81936:	bf44      	itt	mi
   81938:	2204      	movmi	r2, #4
   8193a:	609a      	strmi	r2, [r3, #8]
   8193c:	685b      	ldr	r3, [r3, #4]
   8193e:	04dc      	lsls	r4, r3, #19
   81940:	f140 81e2 	bpl.w	81d08 <_ZL7USB_ISRv+0x430>
   81944:	f000 fd60 	bl	82408 <UDD_ReceivedSetupInt>
   81948:	2800      	cmp	r0, #0
   8194a:	f000 81dd 	beq.w	81d08 <_ZL7USB_ISRv+0x430>
   8194e:	2000      	movs	r0, #0
   81950:	a901      	add	r1, sp, #4
   81952:	2208      	movs	r2, #8
   81954:	f000 fdf5 	bl	82542 <UDD_Recv>
   81958:	f000 fd66 	bl	82428 <UDD_ClearSetupInt>
   8195c:	f89d 5004 	ldrb.w	r5, [sp, #4]
   81960:	0628      	lsls	r0, r5, #24
   81962:	d502      	bpl.n	8196a <_ZL7USB_ISRv+0x92>
   81964:	f000 fcf8 	bl	82358 <UDD_WaitIN>
   81968:	e001      	b.n	8196e <_ZL7USB_ISRv+0x96>
   8196a:	f000 fd21 	bl	823b0 <UDD_ClearIN>
   8196e:	f015 0460 	ands.w	r4, r5, #96	; 0x60
   81972:	f040 81b4 	bne.w	81cde <_ZL7USB_ISRv+0x406>
   81976:	f89d 3005 	ldrb.w	r3, [sp, #5]
   8197a:	b973      	cbnz	r3, 8199a <_ZL7USB_ISRv+0xc2>
   8197c:	f89d 4004 	ldrb.w	r4, [sp, #4]
   81980:	b1ac      	cbz	r4, 819ae <_ZL7USB_ISRv+0xd6>
   81982:	4b88      	ldr	r3, [pc, #544]	; (81ba4 <_ZL7USB_ISRv+0x2cc>)
   81984:	781b      	ldrb	r3, [r3, #0]
   81986:	2000      	movs	r0, #0
   81988:	2b01      	cmp	r3, #1
   8198a:	bf14      	ite	ne
   8198c:	4601      	movne	r1, r0
   8198e:	2101      	moveq	r1, #1
   81990:	f000 fdb2 	bl	824f8 <UDD_Send8>
   81994:	2000      	movs	r0, #0
   81996:	4601      	mov	r1, r0
   81998:	e197      	b.n	81cca <_ZL7USB_ISRv+0x3f2>
   8199a:	2b01      	cmp	r3, #1
   8199c:	d10d      	bne.n	819ba <_ZL7USB_ISRv+0xe2>
   8199e:	f89d 3006 	ldrb.w	r3, [sp, #6]
   819a2:	2b01      	cmp	r3, #1
   819a4:	d101      	bne.n	819aa <_ZL7USB_ISRv+0xd2>
   819a6:	4b80      	ldr	r3, [pc, #512]	; (81ba8 <_ZL7USB_ISRv+0x2d0>)
   819a8:	e7ec      	b.n	81984 <_ZL7USB_ISRv+0xac>
   819aa:	4b7e      	ldr	r3, [pc, #504]	; (81ba4 <_ZL7USB_ISRv+0x2cc>)
   819ac:	701c      	strb	r4, [r3, #0]
   819ae:	4620      	mov	r0, r4
   819b0:	4621      	mov	r1, r4
   819b2:	f000 fda1 	bl	824f8 <UDD_Send8>
   819b6:	4620      	mov	r0, r4
   819b8:	e7ed      	b.n	81996 <_ZL7USB_ISRv+0xbe>
   819ba:	2b03      	cmp	r3, #3
   819bc:	d175      	bne.n	81aaa <_ZL7USB_ISRv+0x1d2>
   819be:	f89d 3006 	ldrb.w	r3, [sp, #6]
   819c2:	2b01      	cmp	r3, #1
   819c4:	d105      	bne.n	819d2 <_ZL7USB_ISRv+0xfa>
   819c6:	4a78      	ldr	r2, [pc, #480]	; (81ba8 <_ZL7USB_ISRv+0x2d0>)
   819c8:	4620      	mov	r0, r4
   819ca:	4621      	mov	r1, r4
   819cc:	7013      	strb	r3, [r2, #0]
   819ce:	f000 fd93 	bl	824f8 <UDD_Send8>
   819d2:	f89d 0006 	ldrb.w	r0, [sp, #6]
   819d6:	b928      	cbnz	r0, 819e4 <_ZL7USB_ISRv+0x10c>
   819d8:	4b72      	ldr	r3, [pc, #456]	; (81ba4 <_ZL7USB_ISRv+0x2cc>)
   819da:	2201      	movs	r2, #1
   819dc:	4601      	mov	r1, r0
   819de:	701a      	strb	r2, [r3, #0]
   819e0:	f000 fd8a 	bl	824f8 <UDD_Send8>
   819e4:	f89d 3006 	ldrb.w	r3, [sp, #6]
   819e8:	2b02      	cmp	r3, #2
   819ea:	f040 8185 	bne.w	81cf8 <_ZL7USB_ISRv+0x420>
   819ee:	f89d 3004 	ldrb.w	r3, [sp, #4]
   819f2:	2b00      	cmp	r3, #0
   819f4:	f040 8180 	bne.w	81cf8 <_ZL7USB_ISRv+0x420>
   819f8:	f8bd 3008 	ldrh.w	r3, [sp, #8]
   819fc:	0719      	lsls	r1, r3, #28
   819fe:	f040 817b 	bne.w	81cf8 <_ZL7USB_ISRv+0x420>
   81a02:	4c63      	ldr	r4, [pc, #396]	; (81b90 <_ZL7USB_ISRv+0x2b8>)
   81a04:	0a1b      	lsrs	r3, r3, #8
   81a06:	6962      	ldr	r2, [r4, #20]
   81a08:	3b01      	subs	r3, #1
   81a0a:	f022 0201 	bic.w	r2, r2, #1
   81a0e:	6162      	str	r2, [r4, #20]
   81a10:	6822      	ldr	r2, [r4, #0]
   81a12:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
   81a16:	6022      	str	r2, [r4, #0]
   81a18:	2b03      	cmp	r3, #3
   81a1a:	f200 816d 	bhi.w	81cf8 <_ZL7USB_ISRv+0x420>
   81a1e:	e8df f003 	tbb	[pc, r3]
   81a22:	3831      	.short	0x3831
   81a24:	023f      	.short	0x023f
   81a26:	f7ff fdf7 	bl	81618 <_ZL11USB_SendZlpv>
   81a2a:	2300      	movs	r3, #0
   81a2c:	f8c4 3318 	str.w	r3, [r4, #792]	; 0x318
   81a30:	f8c4 3328 	str.w	r3, [r4, #808]	; 0x328
   81a34:	f241 1330 	movw	r3, #4400	; 0x1130
   81a38:	f8c4 3108 	str.w	r3, [r4, #264]	; 0x108
   81a3c:	f8d4 3108 	ldr.w	r3, [r4, #264]	; 0x108
   81a40:	f043 0302 	orr.w	r3, r3, #2
   81a44:	f8c4 3108 	str.w	r3, [r4, #264]	; 0x108
   81a48:	4b51      	ldr	r3, [pc, #324]	; (81b90 <_ZL7USB_ISRv+0x2b8>)
   81a4a:	f8d3 2138 	ldr.w	r2, [r3, #312]	; 0x138
   81a4e:	0352      	lsls	r2, r2, #13
   81a50:	d5fa      	bpl.n	81a48 <_ZL7USB_ISRv+0x170>
   81a52:	69da      	ldr	r2, [r3, #28]
   81a54:	f042 0204 	orr.w	r2, r2, #4
   81a58:	61da      	str	r2, [r3, #28]
   81a5a:	4b54      	ldr	r3, [pc, #336]	; (81bac <_ZL7USB_ISRv+0x2d4>)
   81a5c:	4a54      	ldr	r2, [pc, #336]	; (81bb0 <_ZL7USB_ISRv+0x2d8>)
   81a5e:	5c9a      	ldrb	r2, [r3, r2]
   81a60:	f803 2f01 	strb.w	r2, [r3, #1]!
   81a64:	4a53      	ldr	r2, [pc, #332]	; (81bb4 <_ZL7USB_ISRv+0x2dc>)
   81a66:	4293      	cmp	r3, r2
   81a68:	d1f8      	bne.n	81a5c <_ZL7USB_ISRv+0x184>
   81a6a:	4b49      	ldr	r3, [pc, #292]	; (81b90 <_ZL7USB_ISRv+0x2b8>)
   81a6c:	681a      	ldr	r2, [r3, #0]
   81a6e:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
   81a72:	601a      	str	r2, [r3, #0]
   81a74:	2201      	movs	r2, #1
   81a76:	f8c3 2168 	str.w	r2, [r3, #360]	; 0x168
   81a7a:	f44f 4280 	mov.w	r2, #16384	; 0x4000
   81a7e:	f8c3 2228 	str.w	r2, [r3, #552]	; 0x228
   81a82:	e7fe      	b.n	81a82 <_ZL7USB_ISRv+0x1aa>
   81a84:	f7ff fdc8 	bl	81618 <_ZL11USB_SendZlpv>
   81a88:	6823      	ldr	r3, [r4, #0]
   81a8a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
   81a8e:	6023      	str	r3, [r4, #0]
   81a90:	e7fe      	b.n	81a90 <_ZL7USB_ISRv+0x1b8>
   81a92:	f7ff fdc1 	bl	81618 <_ZL11USB_SendZlpv>
   81a96:	6823      	ldr	r3, [r4, #0]
   81a98:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
   81a9c:	6023      	str	r3, [r4, #0]
   81a9e:	e7fe      	b.n	81a9e <_ZL7USB_ISRv+0x1c6>
   81aa0:	f7ff fdba 	bl	81618 <_ZL11USB_SendZlpv>
   81aa4:	4b44      	ldr	r3, [pc, #272]	; (81bb8 <_ZL7USB_ISRv+0x2e0>)
   81aa6:	6163      	str	r3, [r4, #20]
   81aa8:	e7fe      	b.n	81aa8 <_ZL7USB_ISRv+0x1d0>
   81aaa:	2b05      	cmp	r3, #5
   81aac:	d106      	bne.n	81abc <_ZL7USB_ISRv+0x1e4>
   81aae:	f000 fc53 	bl	82358 <UDD_WaitIN>
   81ab2:	f89d 0006 	ldrb.w	r0, [sp, #6]
   81ab6:	f000 fdb3 	bl	82620 <UDD_SetAddress>
   81aba:	e11d      	b.n	81cf8 <_ZL7USB_ISRv+0x420>
   81abc:	2b06      	cmp	r3, #6
   81abe:	f040 80dc 	bne.w	81c7a <_ZL7USB_ISRv+0x3a2>
   81ac2:	f89d 6007 	ldrb.w	r6, [sp, #7]
   81ac6:	4d3d      	ldr	r5, [pc, #244]	; (81bbc <_ZL7USB_ISRv+0x2e4>)
   81ac8:	2e02      	cmp	r6, #2
   81aca:	f8bd 900a 	ldrh.w	r9, [sp, #10]
   81ace:	4f3c      	ldr	r7, [pc, #240]	; (81bc0 <_ZL7USB_ISRv+0x2e8>)
   81ad0:	802c      	strh	r4, [r5, #0]
   81ad2:	d128      	bne.n	81b26 <_ZL7USB_ISRv+0x24e>
   81ad4:	803c      	strh	r4, [r7, #0]
   81ad6:	f7ff feaa 	bl	8182e <_Z19USBD_SendInterfacesv>
   81ada:	f04f 0809 	mov.w	r8, #9
   81ade:	4682      	mov	sl, r0
   81ae0:	4621      	mov	r1, r4
   81ae2:	4642      	mov	r2, r8
   81ae4:	a803      	add	r0, sp, #12
   81ae6:	f000 fe13 	bl	82710 <memset>
   81aea:	2301      	movs	r3, #1
   81aec:	f88d 3011 	strb.w	r3, [sp, #17]
   81af0:	23c0      	movs	r3, #192	; 0xc0
   81af2:	f88d 3013 	strb.w	r3, [sp, #19]
   81af6:	23fa      	movs	r3, #250	; 0xfa
   81af8:	f88d 3014 	strb.w	r3, [sp, #20]
   81afc:	882b      	ldrh	r3, [r5, #0]
   81afe:	a903      	add	r1, sp, #12
   81b00:	4443      	add	r3, r8
   81b02:	4642      	mov	r2, r8
   81b04:	4620      	mov	r0, r4
   81b06:	f8ad 300e 	strh.w	r3, [sp, #14]
   81b0a:	f88d 800c 	strb.w	r8, [sp, #12]
   81b0e:	f88d 600d 	strb.w	r6, [sp, #13]
   81b12:	f88d a010 	strb.w	sl, [sp, #16]
   81b16:	802c      	strh	r4, [r5, #0]
   81b18:	f8a7 9000 	strh.w	r9, [r7]
   81b1c:	f7ff fe18 	bl	81750 <_Z16USBD_SendControlhPKvm>
   81b20:	f7ff fe85 	bl	8182e <_Z19USBD_SendInterfacesv>
   81b24:	e0e8      	b.n	81cf8 <_ZL7USB_ISRv+0x420>
   81b26:	f8a7 9000 	strh.w	r9, [r7]
   81b2a:	f000 fa3d 	bl	81fa8 <_Z12PluggableUSBv>
   81b2e:	a901      	add	r1, sp, #4
   81b30:	f000 fa0e 	bl	81f50 <_ZN13PluggableUSB_13getDescriptorER8USBSetup>
   81b34:	2800      	cmp	r0, #0
   81b36:	d003      	beq.n	81b40 <_ZL7USB_ISRv+0x268>
   81b38:	bfd4      	ite	le
   81b3a:	2000      	movle	r0, #0
   81b3c:	2001      	movgt	r0, #1
   81b3e:	e0da      	b.n	81cf6 <_ZL7USB_ISRv+0x41e>
   81b40:	2e01      	cmp	r6, #1
   81b42:	d110      	bne.n	81b66 <_ZL7USB_ISRv+0x28e>
   81b44:	f8bd 200a 	ldrh.w	r2, [sp, #10]
   81b48:	4b1e      	ldr	r3, [pc, #120]	; (81bc4 <_ZL7USB_ISRv+0x2ec>)
   81b4a:	2a08      	cmp	r2, #8
   81b4c:	bf04      	itt	eq
   81b4e:	2101      	moveq	r1, #1
   81b50:	6019      	streq	r1, [r3, #0]
   81b52:	6818      	ldr	r0, [r3, #0]
   81b54:	491c      	ldr	r1, [pc, #112]	; (81bc8 <_ZL7USB_ISRv+0x2f0>)
   81b56:	4b1d      	ldr	r3, [pc, #116]	; (81bcc <_ZL7USB_ISRv+0x2f4>)
   81b58:	2800      	cmp	r0, #0
   81b5a:	bf08      	it	eq
   81b5c:	4619      	moveq	r1, r3
   81b5e:	2a11      	cmp	r2, #17
   81b60:	f200 8086 	bhi.w	81c70 <_ZL7USB_ISRv+0x398>
   81b64:	e048      	b.n	81bf8 <_ZL7USB_ISRv+0x320>
   81b66:	2e03      	cmp	r6, #3
   81b68:	d148      	bne.n	81bfc <_ZL7USB_ISRv+0x324>
   81b6a:	f89d 3006 	ldrb.w	r3, [sp, #6]
   81b6e:	b933      	cbnz	r3, 81b7e <_ZL7USB_ISRv+0x2a6>
   81b70:	4917      	ldr	r1, [pc, #92]	; (81bd0 <_ZL7USB_ISRv+0x2f8>)
   81b72:	f8bd 200a 	ldrh.w	r2, [sp, #10]
   81b76:	780b      	ldrb	r3, [r1, #0]
   81b78:	4293      	cmp	r3, r2
   81b7a:	d83d      	bhi.n	81bf8 <_ZL7USB_ISRv+0x320>
   81b7c:	e078      	b.n	81c70 <_ZL7USB_ISRv+0x398>
   81b7e:	2b02      	cmp	r3, #2
   81b80:	d101      	bne.n	81b86 <_ZL7USB_ISRv+0x2ae>
   81b82:	4814      	ldr	r0, [pc, #80]	; (81bd4 <_ZL7USB_ISRv+0x2fc>)
   81b84:	e033      	b.n	81bee <_ZL7USB_ISRv+0x316>
   81b86:	2b01      	cmp	r3, #1
   81b88:	d128      	bne.n	81bdc <_ZL7USB_ISRv+0x304>
   81b8a:	4813      	ldr	r0, [pc, #76]	; (81bd8 <_ZL7USB_ISRv+0x300>)
   81b8c:	e02f      	b.n	81bee <_ZL7USB_ISRv+0x316>
   81b8e:	bf00      	nop
   81b90:	400ac000 	.word	0x400ac000
   81b94:	400ac1f0 	.word	0x400ac1f0
   81b98:	2007104c 	.word	0x2007104c
   81b9c:	400ac168 	.word	0x400ac168
   81ba0:	2007125c 	.word	0x2007125c
   81ba4:	20071032 	.word	0x20071032
   81ba8:	20071038 	.word	0x20071038
   81bac:	2018ffff 	.word	0x2018ffff
   81bb0:	dfef609d 	.word	0xdfef609d
   81bb4:	20190034 	.word	0x20190034
   81bb8:	7e07f07f 	.word	0x7e07f07f
   81bbc:	20071030 	.word	0x20071030
   81bc0:	20071048 	.word	0x20071048
   81bc4:	20071034 	.word	0x20071034
   81bc8:	000860dd 	.word	0x000860dd
   81bcc:	00086085 	.word	0x00086085
   81bd0:	00086098 	.word	0x00086098
   81bd4:	00086079 	.word	0x00086079
   81bd8:	000860d1 	.word	0x000860d1
   81bdc:	2b03      	cmp	r3, #3
   81bde:	f040 808e 	bne.w	81cfe <_ZL7USB_ISRv+0x426>
   81be2:	f000 f9e1 	bl	81fa8 <_Z12PluggableUSBv>
   81be6:	a903      	add	r1, sp, #12
   81be8:	f000 f9c0 	bl	81f6c <_ZN13PluggableUSB_12getShortNameEPc>
   81bec:	a803      	add	r0, sp, #12
   81bee:	f8bd 100a 	ldrh.w	r1, [sp, #10]
   81bf2:	f7ff fdcd 	bl	81790 <_ZL24USB_SendStringDescriptorPKhi>
   81bf6:	e07e      	b.n	81cf6 <_ZL7USB_ISRv+0x41e>
   81bf8:	b2d2      	uxtb	r2, r2
   81bfa:	e038      	b.n	81c6e <_ZL7USB_ISRv+0x396>
   81bfc:	2e06      	cmp	r6, #6
   81bfe:	d106      	bne.n	81c0e <_ZL7USB_ISRv+0x336>
   81c00:	f8bd 200a 	ldrh.w	r2, [sp, #10]
   81c04:	2a09      	cmp	r2, #9
   81c06:	d87d      	bhi.n	81d04 <_ZL7USB_ISRv+0x42c>
   81c08:	b2d2      	uxtb	r2, r2
   81c0a:	4941      	ldr	r1, [pc, #260]	; (81d10 <_ZL7USB_ISRv+0x438>)
   81c0c:	e02f      	b.n	81c6e <_ZL7USB_ISRv+0x396>
   81c0e:	2e07      	cmp	r6, #7
   81c10:	f04f 0400 	mov.w	r4, #0
   81c14:	d173      	bne.n	81cfe <_ZL7USB_ISRv+0x426>
   81c16:	f8bd 900a 	ldrh.w	r9, [sp, #10]
   81c1a:	802c      	strh	r4, [r5, #0]
   81c1c:	803c      	strh	r4, [r7, #0]
   81c1e:	f7ff fe17 	bl	81850 <_Z24USBD_SendOtherInterfacesv>
   81c22:	f04f 0809 	mov.w	r8, #9
   81c26:	4682      	mov	sl, r0
   81c28:	4621      	mov	r1, r4
   81c2a:	4642      	mov	r2, r8
   81c2c:	a803      	add	r0, sp, #12
   81c2e:	f000 fd6f 	bl	82710 <memset>
   81c32:	2301      	movs	r3, #1
   81c34:	f88d 3011 	strb.w	r3, [sp, #17]
   81c38:	23c0      	movs	r3, #192	; 0xc0
   81c3a:	f88d 3013 	strb.w	r3, [sp, #19]
   81c3e:	23fa      	movs	r3, #250	; 0xfa
   81c40:	f88d 3014 	strb.w	r3, [sp, #20]
   81c44:	882b      	ldrh	r3, [r5, #0]
   81c46:	a903      	add	r1, sp, #12
   81c48:	4443      	add	r3, r8
   81c4a:	4642      	mov	r2, r8
   81c4c:	4620      	mov	r0, r4
   81c4e:	f8ad 300e 	strh.w	r3, [sp, #14]
   81c52:	f88d 800c 	strb.w	r8, [sp, #12]
   81c56:	f88d 600d 	strb.w	r6, [sp, #13]
   81c5a:	f88d a010 	strb.w	sl, [sp, #16]
   81c5e:	802c      	strh	r4, [r5, #0]
   81c60:	f8a7 9000 	strh.w	r9, [r7]
   81c64:	f7ff fd74 	bl	81750 <_Z16USBD_SendControlhPKvm>
   81c68:	f7ff fdf2 	bl	81850 <_Z24USBD_SendOtherInterfacesv>
   81c6c:	e044      	b.n	81cf8 <_ZL7USB_ISRv+0x420>
   81c6e:	b902      	cbnz	r2, 81c72 <_ZL7USB_ISRv+0x39a>
   81c70:	780a      	ldrb	r2, [r1, #0]
   81c72:	2000      	movs	r0, #0
   81c74:	f7ff fd6c 	bl	81750 <_Z16USBD_SendControlhPKvm>
   81c78:	e03e      	b.n	81cf8 <_ZL7USB_ISRv+0x420>
   81c7a:	2b07      	cmp	r3, #7
   81c7c:	d03f      	beq.n	81cfe <_ZL7USB_ISRv+0x426>
   81c7e:	2b08      	cmp	r3, #8
   81c80:	d104      	bne.n	81c8c <_ZL7USB_ISRv+0x3b4>
   81c82:	4b24      	ldr	r3, [pc, #144]	; (81d14 <_ZL7USB_ISRv+0x43c>)
   81c84:	4620      	mov	r0, r4
   81c86:	6819      	ldr	r1, [r3, #0]
   81c88:	b2c9      	uxtb	r1, r1
   81c8a:	e01e      	b.n	81cca <_ZL7USB_ISRv+0x3f2>
   81c8c:	2b09      	cmp	r3, #9
   81c8e:	d117      	bne.n	81cc0 <_ZL7USB_ISRv+0x3e8>
   81c90:	06eb      	lsls	r3, r5, #27
   81c92:	d134      	bne.n	81cfe <_ZL7USB_ISRv+0x426>
   81c94:	2100      	movs	r1, #0
   81c96:	4820      	ldr	r0, [pc, #128]	; (81d18 <_ZL7USB_ISRv+0x440>)
   81c98:	f850 3021 	ldr.w	r3, [r0, r1, lsl #2]
   81c9c:	b10b      	cbz	r3, 81ca2 <_ZL7USB_ISRv+0x3ca>
   81c9e:	3101      	adds	r1, #1
   81ca0:	e7f9      	b.n	81c96 <_ZL7USB_ISRv+0x3be>
   81ca2:	f000 fb21 	bl	822e8 <UDD_InitEndpoints>
   81ca6:	f89d 2006 	ldrb.w	r2, [sp, #6]
   81caa:	4b1a      	ldr	r3, [pc, #104]	; (81d14 <_ZL7USB_ISRv+0x43c>)
   81cac:	601a      	str	r2, [r3, #0]
   81cae:	4b1b      	ldr	r3, [pc, #108]	; (81d1c <_ZL7USB_ISRv+0x444>)
   81cb0:	2202      	movs	r2, #2
   81cb2:	601a      	str	r2, [r3, #0]
   81cb4:	f44f 4280 	mov.w	r2, #16384	; 0x4000
   81cb8:	f5a3 73fc 	sub.w	r3, r3, #504	; 0x1f8
   81cbc:	619a      	str	r2, [r3, #24]
   81cbe:	e01b      	b.n	81cf8 <_ZL7USB_ISRv+0x420>
   81cc0:	2b0a      	cmp	r3, #10
   81cc2:	d105      	bne.n	81cd0 <_ZL7USB_ISRv+0x3f8>
   81cc4:	4b16      	ldr	r3, [pc, #88]	; (81d20 <_ZL7USB_ISRv+0x448>)
   81cc6:	2000      	movs	r0, #0
   81cc8:	7819      	ldrb	r1, [r3, #0]
   81cca:	f000 fc15 	bl	824f8 <UDD_Send8>
   81cce:	e013      	b.n	81cf8 <_ZL7USB_ISRv+0x420>
   81cd0:	2b0b      	cmp	r3, #11
   81cd2:	d111      	bne.n	81cf8 <_ZL7USB_ISRv+0x420>
   81cd4:	f89d 2006 	ldrb.w	r2, [sp, #6]
   81cd8:	4b11      	ldr	r3, [pc, #68]	; (81d20 <_ZL7USB_ISRv+0x448>)
   81cda:	601a      	str	r2, [r3, #0]
   81cdc:	e00c      	b.n	81cf8 <_ZL7USB_ISRv+0x420>
   81cde:	f000 fb3b 	bl	82358 <UDD_WaitIN>
   81ce2:	4b10      	ldr	r3, [pc, #64]	; (81d24 <_ZL7USB_ISRv+0x44c>)
   81ce4:	2100      	movs	r1, #0
   81ce6:	8019      	strh	r1, [r3, #0]
   81ce8:	f8bd 200a 	ldrh.w	r2, [sp, #10]
   81cec:	4b0e      	ldr	r3, [pc, #56]	; (81d28 <_ZL7USB_ISRv+0x450>)
   81cee:	a801      	add	r0, sp, #4
   81cf0:	801a      	strh	r2, [r3, #0]
   81cf2:	f7ff fd8d 	bl	81810 <_Z26USBD_ClassInterfaceRequestR8USBSetup>
   81cf6:	b110      	cbz	r0, 81cfe <_ZL7USB_ISRv+0x426>
   81cf8:	f000 fb5a 	bl	823b0 <UDD_ClearIN>
   81cfc:	e004      	b.n	81d08 <_ZL7USB_ISRv+0x430>
   81cfe:	f000 fc3d 	bl	8257c <UDD_Stall>
   81d02:	e001      	b.n	81d08 <_ZL7USB_ISRv+0x430>
   81d04:	4902      	ldr	r1, [pc, #8]	; (81d10 <_ZL7USB_ISRv+0x438>)
   81d06:	e7b3      	b.n	81c70 <_ZL7USB_ISRv+0x398>
   81d08:	b008      	add	sp, #32
   81d0a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
   81d0e:	bf00      	nop
   81d10:	000860ef 	.word	0x000860ef
   81d14:	2007104c 	.word	0x2007104c
   81d18:	20070038 	.word	0x20070038
   81d1c:	400ac1f8 	.word	0x400ac1f8
   81d20:	20071044 	.word	0x20071044
   81d24:	20071030 	.word	0x20071030
   81d28:	20071048 	.word	0x20071048

00081d2c <_ZN7Serial_9availableEv>:
   81d2c:	4b04      	ldr	r3, [pc, #16]	; (81d40 <_ZN7Serial_9availableEv+0x14>)
   81d2e:	f8d3 0200 	ldr.w	r0, [r3, #512]	; 0x200
   81d32:	f8d3 3204 	ldr.w	r3, [r3, #516]	; 0x204
   81d36:	1ac0      	subs	r0, r0, r3
   81d38:	f3c0 0008 	ubfx	r0, r0, #0, #9
   81d3c:	4770      	bx	lr
   81d3e:	bf00      	nop
   81d40:	20071050 	.word	0x20071050

00081d44 <_ZN7Serial_17availableForWriteEv>:
   81d44:	f240 10ff 	movw	r0, #511	; 0x1ff
   81d48:	4770      	bx	lr
	...

00081d4c <_ZN7Serial_4peekEv>:
   81d4c:	4b06      	ldr	r3, [pc, #24]	; (81d68 <_ZN7Serial_4peekEv+0x1c>)
   81d4e:	f8d3 1200 	ldr.w	r1, [r3, #512]	; 0x200
   81d52:	f8d3 2204 	ldr.w	r2, [r3, #516]	; 0x204
   81d56:	4291      	cmp	r1, r2
   81d58:	bf1a      	itte	ne
   81d5a:	f8d3 2204 	ldrne.w	r2, [r3, #516]	; 0x204
   81d5e:	5c98      	ldrbne	r0, [r3, r2]
   81d60:	f04f 30ff 	moveq.w	r0, #4294967295	; 0xffffffff
   81d64:	4770      	bx	lr
   81d66:	bf00      	nop
   81d68:	20071050 	.word	0x20071050

00081d6c <_ZN7Serial_5writeEh>:
   81d6c:	b513      	push	{r0, r1, r4, lr}
   81d6e:	6802      	ldr	r2, [r0, #0]
   81d70:	ab02      	add	r3, sp, #8
   81d72:	f803 1d01 	strb.w	r1, [r3, #-1]!
   81d76:	6854      	ldr	r4, [r2, #4]
   81d78:	4619      	mov	r1, r3
   81d7a:	2201      	movs	r2, #1
   81d7c:	47a0      	blx	r4
   81d7e:	b002      	add	sp, #8
   81d80:	bd10      	pop	{r4, pc}
	...

00081d84 <_ZN7Serial_4readEv>:
   81d84:	b538      	push	{r3, r4, r5, lr}
   81d86:	4b0f      	ldr	r3, [pc, #60]	; (81dc4 <_ZN7Serial_4readEv+0x40>)
   81d88:	4604      	mov	r4, r0
   81d8a:	f8d3 1200 	ldr.w	r1, [r3, #512]	; 0x200
   81d8e:	f8d3 2204 	ldr.w	r2, [r3, #516]	; 0x204
   81d92:	4291      	cmp	r1, r2
   81d94:	d013      	beq.n	81dbe <_ZN7Serial_4readEv+0x3a>
   81d96:	f8d3 2204 	ldr.w	r2, [r3, #516]	; 0x204
   81d9a:	2002      	movs	r0, #2
   81d9c:	5c9d      	ldrb	r5, [r3, r2]
   81d9e:	f8d3 2204 	ldr.w	r2, [r3, #516]	; 0x204
   81da2:	3201      	adds	r2, #1
   81da4:	f3c2 0208 	ubfx	r2, r2, #0, #9
   81da8:	f8c3 2204 	str.w	r2, [r3, #516]	; 0x204
   81dac:	f7ff fc44 	bl	81638 <_Z14USBD_Availablem>
   81db0:	b118      	cbz	r0, 81dba <_ZN7Serial_4readEv+0x36>
   81db2:	6823      	ldr	r3, [r4, #0]
   81db4:	4620      	mov	r0, r4
   81db6:	69db      	ldr	r3, [r3, #28]
   81db8:	4798      	blx	r3
   81dba:	4628      	mov	r0, r5
   81dbc:	bd38      	pop	{r3, r4, r5, pc}
   81dbe:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   81dc2:	bd38      	pop	{r3, r4, r5, pc}
   81dc4:	20071050 	.word	0x20071050

00081dc8 <_ZN7Serial_5flushEv>:
   81dc8:	2003      	movs	r0, #3
   81dca:	f7ff bd52 	b.w	81872 <_Z10USBD_Flushm>
	...

00081dd0 <_ZN7Serial_6acceptEv>:
   81dd0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   81dd2:	4b18      	ldr	r3, [pc, #96]	; (81e34 <_ZN7Serial_6acceptEv+0x64>)
   81dd4:	e853 3f00 	ldrex	r3, [r3]
   81dd8:	4e16      	ldr	r6, [pc, #88]	; (81e34 <_ZN7Serial_6acceptEv+0x64>)
   81dda:	b113      	cbz	r3, 81de2 <_ZN7Serial_6acceptEv+0x12>
   81ddc:	f3bf 8f2f 	clrex
   81de0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   81de2:	2301      	movs	r3, #1
   81de4:	e846 3300 	strex	r3, r3, [r6]
   81de8:	2b00      	cmp	r3, #0
   81dea:	d1f2      	bne.n	81dd2 <_ZN7Serial_6acceptEv+0x2>
   81dec:	4b12      	ldr	r3, [pc, #72]	; (81e38 <_ZN7Serial_6acceptEv+0x68>)
   81dee:	f8d3 4200 	ldr.w	r4, [r3, #512]	; 0x200
   81df2:	461f      	mov	r7, r3
   81df4:	3401      	adds	r4, #1
   81df6:	f3c4 0408 	ubfx	r4, r4, #0, #9
   81dfa:	f8d7 3204 	ldr.w	r3, [r7, #516]	; 0x204
   81dfe:	4d0e      	ldr	r5, [pc, #56]	; (81e38 <_ZN7Serial_6acceptEv+0x68>)
   81e00:	429c      	cmp	r4, r3
   81e02:	d014      	beq.n	81e2e <_ZN7Serial_6acceptEv+0x5e>
   81e04:	2002      	movs	r0, #2
   81e06:	f7ff fc17 	bl	81638 <_Z14USBD_Availablem>
   81e0a:	b920      	cbnz	r0, 81e16 <_ZN7Serial_6acceptEv+0x46>
   81e0c:	4b0b      	ldr	r3, [pc, #44]	; (81e3c <_ZN7Serial_6acceptEv+0x6c>)
   81e0e:	f44f 4280 	mov.w	r2, #16384	; 0x4000
   81e12:	601a      	str	r2, [r3, #0]
   81e14:	e00b      	b.n	81e2e <_ZN7Serial_6acceptEv+0x5e>
   81e16:	2002      	movs	r0, #2
   81e18:	f7ff fc62 	bl	816e0 <_Z9USBD_Recvm>
   81e1c:	f8d5 3200 	ldr.w	r3, [r5, #512]	; 0x200
   81e20:	f8c5 4200 	str.w	r4, [r5, #512]	; 0x200
   81e24:	3401      	adds	r4, #1
   81e26:	54e8      	strb	r0, [r5, r3]
   81e28:	f3c4 0408 	ubfx	r4, r4, #0, #9
   81e2c:	e7e5      	b.n	81dfa <_ZN7Serial_6acceptEv+0x2a>
   81e2e:	2300      	movs	r3, #0
   81e30:	6033      	str	r3, [r6, #0]
   81e32:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   81e34:	20071258 	.word	0x20071258
   81e38:	20071050 	.word	0x20071050
   81e3c:	400ac228 	.word	0x400ac228

00081e40 <_ZN7Serial_5writeEPKhj>:
   81e40:	b510      	push	{r4, lr}
   81e42:	4b09      	ldr	r3, [pc, #36]	; (81e68 <_ZN7Serial_5writeEPKhj+0x28>)
   81e44:	4604      	mov	r4, r0
   81e46:	79db      	ldrb	r3, [r3, #7]
   81e48:	f003 00ff 	and.w	r0, r3, #255	; 0xff
   81e4c:	b143      	cbz	r3, 81e60 <_ZN7Serial_5writeEPKhj+0x20>
   81e4e:	2003      	movs	r0, #3
   81e50:	f7ff fc58 	bl	81704 <_Z9USBD_SendmPKvm>
   81e54:	2800      	cmp	r0, #0
   81e56:	dc05      	bgt.n	81e64 <_ZN7Serial_5writeEPKhj+0x24>
   81e58:	2301      	movs	r3, #1
   81e5a:	6063      	str	r3, [r4, #4]
   81e5c:	2000      	movs	r0, #0
   81e5e:	bd10      	pop	{r4, pc}
   81e60:	2301      	movs	r3, #1
   81e62:	6063      	str	r3, [r4, #4]
   81e64:	bd10      	pop	{r4, pc}
   81e66:	bf00      	nop
   81e68:	20070064 	.word	0x20070064

00081e6c <_Z16CDC_GetInterfacePh>:
   81e6c:	7803      	ldrb	r3, [r0, #0]
   81e6e:	4903      	ldr	r1, [pc, #12]	; (81e7c <_Z16CDC_GetInterfacePh+0x10>)
   81e70:	3302      	adds	r3, #2
   81e72:	7003      	strb	r3, [r0, #0]
   81e74:	2242      	movs	r2, #66	; 0x42
   81e76:	2000      	movs	r0, #0
   81e78:	f7ff bc6a 	b.w	81750 <_Z16USBD_SendControlhPKvm>
   81e7c:	00086162 	.word	0x00086162

00081e80 <_Z21CDC_GetOtherInterfacePh>:
   81e80:	7803      	ldrb	r3, [r0, #0]
   81e82:	4903      	ldr	r1, [pc, #12]	; (81e90 <_Z21CDC_GetOtherInterfacePh+0x10>)
   81e84:	3302      	adds	r3, #2
   81e86:	7003      	strb	r3, [r0, #0]
   81e88:	2242      	movs	r2, #66	; 0x42
   81e8a:	2000      	movs	r0, #0
   81e8c:	f7ff bc60 	b.w	81750 <_Z16USBD_SendControlhPKvm>
   81e90:	00086120 	.word	0x00086120

00081e94 <_Z9CDC_SetupR8USBSetup>:
   81e94:	b508      	push	{r3, lr}
   81e96:	7802      	ldrb	r2, [r0, #0]
   81e98:	7843      	ldrb	r3, [r0, #1]
   81e9a:	2aa1      	cmp	r2, #161	; 0xa1
   81e9c:	d108      	bne.n	81eb0 <_Z9CDC_SetupR8USBSetup+0x1c>
   81e9e:	2b21      	cmp	r3, #33	; 0x21
   81ea0:	f04f 0000 	mov.w	r0, #0
   81ea4:	d129      	bne.n	81efa <_Z9CDC_SetupR8USBSetup+0x66>
   81ea6:	4917      	ldr	r1, [pc, #92]	; (81f04 <_Z9CDC_SetupR8USBSetup+0x70>)
   81ea8:	2207      	movs	r2, #7
   81eaa:	f7ff fc51 	bl	81750 <_Z16USBD_SendControlhPKvm>
   81eae:	e025      	b.n	81efc <_Z9CDC_SetupR8USBSetup+0x68>
   81eb0:	2a21      	cmp	r2, #33	; 0x21
   81eb2:	d125      	bne.n	81f00 <_Z9CDC_SetupR8USBSetup+0x6c>
   81eb4:	2b20      	cmp	r3, #32
   81eb6:	d104      	bne.n	81ec2 <_Z9CDC_SetupR8USBSetup+0x2e>
   81eb8:	2107      	movs	r1, #7
   81eba:	4812      	ldr	r0, [pc, #72]	; (81f04 <_Z9CDC_SetupR8USBSetup+0x70>)
   81ebc:	f7ff fc9a 	bl	817f4 <_Z16USBD_RecvControlPvm>
   81ec0:	e01c      	b.n	81efc <_Z9CDC_SetupR8USBSetup+0x68>
   81ec2:	2b22      	cmp	r3, #34	; 0x22
   81ec4:	d110      	bne.n	81ee8 <_Z9CDC_SetupR8USBSetup+0x54>
   81ec6:	7882      	ldrb	r2, [r0, #2]
   81ec8:	4b0e      	ldr	r3, [pc, #56]	; (81f04 <_Z9CDC_SetupR8USBSetup+0x70>)
   81eca:	71da      	strb	r2, [r3, #7]
   81ecc:	681a      	ldr	r2, [r3, #0]
   81ece:	f5b2 6f96 	cmp.w	r2, #1200	; 0x4b0
   81ed2:	d113      	bne.n	81efc <_Z9CDC_SetupR8USBSetup+0x68>
   81ed4:	79db      	ldrb	r3, [r3, #7]
   81ed6:	07db      	lsls	r3, r3, #31
   81ed8:	d403      	bmi.n	81ee2 <_Z9CDC_SetupR8USBSetup+0x4e>
   81eda:	20fa      	movs	r0, #250	; 0xfa
   81edc:	f7ff fb7e 	bl	815dc <initiateReset>
   81ee0:	e00c      	b.n	81efc <_Z9CDC_SetupR8USBSetup+0x68>
   81ee2:	f7ff fb81 	bl	815e8 <cancelReset>
   81ee6:	e009      	b.n	81efc <_Z9CDC_SetupR8USBSetup+0x68>
   81ee8:	2b23      	cmp	r3, #35	; 0x23
   81eea:	d109      	bne.n	81f00 <_Z9CDC_SetupR8USBSetup+0x6c>
   81eec:	7883      	ldrb	r3, [r0, #2]
   81eee:	78c2      	ldrb	r2, [r0, #3]
   81ef0:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
   81ef4:	4b04      	ldr	r3, [pc, #16]	; (81f08 <_Z9CDC_SetupR8USBSetup+0x74>)
   81ef6:	601a      	str	r2, [r3, #0]
   81ef8:	e000      	b.n	81efc <_Z9CDC_SetupR8USBSetup+0x68>
   81efa:	bd08      	pop	{r3, pc}
   81efc:	2001      	movs	r0, #1
   81efe:	bd08      	pop	{r3, pc}
   81f00:	2000      	movs	r0, #0
   81f02:	bd08      	pop	{r3, pc}
   81f04:	20070064 	.word	0x20070064
   81f08:	20070060 	.word	0x20070060

00081f0c <_GLOBAL__sub_I_cdc_rx_buffer>:
   81f0c:	4b04      	ldr	r3, [pc, #16]	; (81f20 <_GLOBAL__sub_I_cdc_rx_buffer+0x14>)
   81f0e:	2200      	movs	r2, #0
   81f10:	605a      	str	r2, [r3, #4]
   81f12:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
   81f16:	609a      	str	r2, [r3, #8]
   81f18:	4a02      	ldr	r2, [pc, #8]	; (81f24 <_GLOBAL__sub_I_cdc_rx_buffer+0x18>)
   81f1a:	601a      	str	r2, [r3, #0]
   81f1c:	4770      	bx	lr
   81f1e:	bf00      	nop
   81f20:	2007125c 	.word	0x2007125c
   81f24:	00086100 	.word	0x00086100

00081f28 <_ZN13PluggableUSB_12getInterfaceEPh>:
   81f28:	b570      	push	{r4, r5, r6, lr}
   81f2a:	6844      	ldr	r4, [r0, #4]
   81f2c:	460e      	mov	r6, r1
   81f2e:	2500      	movs	r5, #0
   81f30:	b14c      	cbz	r4, 81f46 <_ZN13PluggableUSB_12getInterfaceEPh+0x1e>
   81f32:	6823      	ldr	r3, [r4, #0]
   81f34:	4620      	mov	r0, r4
   81f36:	685b      	ldr	r3, [r3, #4]
   81f38:	4631      	mov	r1, r6
   81f3a:	4798      	blx	r3
   81f3c:	2800      	cmp	r0, #0
   81f3e:	db04      	blt.n	81f4a <_ZN13PluggableUSB_12getInterfaceEPh+0x22>
   81f40:	4405      	add	r5, r0
   81f42:	68e4      	ldr	r4, [r4, #12]
   81f44:	e7f4      	b.n	81f30 <_ZN13PluggableUSB_12getInterfaceEPh+0x8>
   81f46:	4628      	mov	r0, r5
   81f48:	bd70      	pop	{r4, r5, r6, pc}
   81f4a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   81f4e:	bd70      	pop	{r4, r5, r6, pc}

00081f50 <_ZN13PluggableUSB_13getDescriptorER8USBSetup>:
   81f50:	b538      	push	{r3, r4, r5, lr}
   81f52:	6844      	ldr	r4, [r0, #4]
   81f54:	460d      	mov	r5, r1
   81f56:	b13c      	cbz	r4, 81f68 <_ZN13PluggableUSB_13getDescriptorER8USBSetup+0x18>
   81f58:	6823      	ldr	r3, [r4, #0]
   81f5a:	4620      	mov	r0, r4
   81f5c:	689b      	ldr	r3, [r3, #8]
   81f5e:	4629      	mov	r1, r5
   81f60:	4798      	blx	r3
   81f62:	b910      	cbnz	r0, 81f6a <_ZN13PluggableUSB_13getDescriptorER8USBSetup+0x1a>
   81f64:	68e4      	ldr	r4, [r4, #12]
   81f66:	e7f6      	b.n	81f56 <_ZN13PluggableUSB_13getDescriptorER8USBSetup+0x6>
   81f68:	4620      	mov	r0, r4
   81f6a:	bd38      	pop	{r3, r4, r5, pc}

00081f6c <_ZN13PluggableUSB_12getShortNameEPc>:
   81f6c:	b538      	push	{r3, r4, r5, lr}
   81f6e:	6844      	ldr	r4, [r0, #4]
   81f70:	460d      	mov	r5, r1
   81f72:	b13c      	cbz	r4, 81f84 <_ZN13PluggableUSB_12getShortNameEPc+0x18>
   81f74:	6823      	ldr	r3, [r4, #0]
   81f76:	4620      	mov	r0, r4
   81f78:	4629      	mov	r1, r5
   81f7a:	68db      	ldr	r3, [r3, #12]
   81f7c:	4798      	blx	r3
   81f7e:	68e4      	ldr	r4, [r4, #12]
   81f80:	4405      	add	r5, r0
   81f82:	e7f6      	b.n	81f72 <_ZN13PluggableUSB_12getShortNameEPc+0x6>
   81f84:	702c      	strb	r4, [r5, #0]
   81f86:	bd38      	pop	{r3, r4, r5, pc}

00081f88 <_ZN13PluggableUSB_5setupER8USBSetup>:
   81f88:	b538      	push	{r3, r4, r5, lr}
   81f8a:	6844      	ldr	r4, [r0, #4]
   81f8c:	460d      	mov	r5, r1
   81f8e:	b13c      	cbz	r4, 81fa0 <_ZN13PluggableUSB_5setupER8USBSetup+0x18>
   81f90:	6823      	ldr	r3, [r4, #0]
   81f92:	4620      	mov	r0, r4
   81f94:	681b      	ldr	r3, [r3, #0]
   81f96:	4629      	mov	r1, r5
   81f98:	4798      	blx	r3
   81f9a:	b918      	cbnz	r0, 81fa4 <_ZN13PluggableUSB_5setupER8USBSetup+0x1c>
   81f9c:	68e4      	ldr	r4, [r4, #12]
   81f9e:	e7f6      	b.n	81f8e <_ZN13PluggableUSB_5setupER8USBSetup+0x6>
   81fa0:	4620      	mov	r0, r4
   81fa2:	bd38      	pop	{r3, r4, r5, pc}
   81fa4:	2001      	movs	r0, #1
   81fa6:	bd38      	pop	{r3, r4, r5, pc}

00081fa8 <_Z12PluggableUSBv>:
   81fa8:	4a07      	ldr	r2, [pc, #28]	; (81fc8 <_Z12PluggableUSBv+0x20>)
   81faa:	6813      	ldr	r3, [r2, #0]
   81fac:	f013 0101 	ands.w	r1, r3, #1
   81fb0:	d107      	bne.n	81fc2 <_Z12PluggableUSBv+0x1a>
   81fb2:	4b06      	ldr	r3, [pc, #24]	; (81fcc <_Z12PluggableUSBv+0x24>)
   81fb4:	2002      	movs	r0, #2
   81fb6:	7018      	strb	r0, [r3, #0]
   81fb8:	2004      	movs	r0, #4
   81fba:	7058      	strb	r0, [r3, #1]
   81fbc:	6059      	str	r1, [r3, #4]
   81fbe:	2301      	movs	r3, #1
   81fc0:	6013      	str	r3, [r2, #0]
   81fc2:	4802      	ldr	r0, [pc, #8]	; (81fcc <_Z12PluggableUSBv+0x24>)
   81fc4:	4770      	bx	lr
   81fc6:	bf00      	nop
   81fc8:	20071278 	.word	0x20071278
   81fcc:	20071270 	.word	0x20071270

00081fd0 <TimeTick_Increment>:
   81fd0:	f241 207c 	movw	r0, #4732	; 0x127c
   81fd4:	f2c2 0007 	movt	r0, #8199	; 0x2007
   81fd8:	6801      	ldr	r1, [r0, #0]
   81fda:	3101      	adds	r1, #1
   81fdc:	6001      	str	r1, [r0, #0]
   81fde:	4770      	bx	lr

00081fe0 <GetTickCount>:
   81fe0:	f241 207c 	movw	r0, #4732	; 0x127c
   81fe4:	f2c2 0007 	movt	r0, #8199	; 0x2007
   81fe8:	6800      	ldr	r0, [r0, #0]
   81fea:	4770      	bx	lr

00081fec <UDD_SetStack>:
   81fec:	f640 6128 	movw	r1, #3624	; 0xe28
   81ff0:	f2c2 0107 	movt	r1, #8199	; 0x2007
   81ff4:	6008      	str	r0, [r1, #0]
   81ff6:	4770      	bx	lr

00081ff8 <UDD_Init>:
   81ff8:	f241 2180 	movw	r1, #4736	; 0x1280
   81ffc:	f241 22a8 	movw	r2, #4776	; 0x12a8
   82000:	2000      	movs	r0, #0
   82002:	2300      	movs	r3, #0
   82004:	f2c2 0107 	movt	r1, #8199	; 0x2007
   82008:	f2c2 0207 	movt	r2, #8199	; 0x2007
   8200c:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
   82010:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
   82014:	3301      	adds	r3, #1
   82016:	2b0a      	cmp	r3, #10
   82018:	d1f8      	bne.n	8200c <UDD_Init+0x14>
   8201a:	b5f0      	push	{r4, r5, r6, r7, lr}
   8201c:	af03      	add	r7, sp, #12
   8201e:	f84d 8d04 	str.w	r8, [sp, #-4]!
   82022:	4954      	ldr	r1, [pc, #336]	; (82174 <UDD_Init+0x17c>)
   82024:	2028      	movs	r0, #40	; 0x28
   82026:	4788      	blx	r1
   82028:	4853      	ldr	r0, [pc, #332]	; (82178 <UDD_Init+0x180>)
   8202a:	4780      	blx	r0
   8202c:	4953      	ldr	r1, [pc, #332]	; (8217c <UDD_Init+0x184>)
   8202e:	2000      	movs	r0, #0
   82030:	2400      	movs	r4, #0
   82032:	4788      	blx	r1
   82034:	4852      	ldr	r0, [pc, #328]	; (82180 <UDD_Init+0x188>)
   82036:	4780      	blx	r0
   82038:	f24e 1004 	movw	r0, #57604	; 0xe104
   8203c:	f44f 7180 	mov.w	r1, #256	; 0x100
   82040:	4b50      	ldr	r3, [pc, #320]	; (82184 <UDD_Init+0x18c>)
   82042:	2200      	movs	r2, #0
   82044:	f2ce 0000 	movt	r0, #57344	; 0xe000
   82048:	f880 4324 	strb.w	r4, [r0, #804]	; 0x324
   8204c:	f64c 0400 	movw	r4, #51200	; 0xc800
   82050:	6001      	str	r1, [r0, #0]
   82052:	f2c4 040a 	movt	r4, #16394	; 0x400a
   82056:	6825      	ldr	r5, [r4, #0]
   82058:	4620      	mov	r0, r4
   8205a:	4629      	mov	r1, r5
   8205c:	4798      	blx	r3
   8205e:	4b4a      	ldr	r3, [pc, #296]	; (82188 <UDD_Init+0x190>)
   82060:	f025 7180 	bic.w	r1, r5, #16777216	; 0x1000000
   82064:	4620      	mov	r0, r4
   82066:	2201      	movs	r2, #1
   82068:	6021      	str	r1, [r4, #0]
   8206a:	4798      	blx	r3
   8206c:	6825      	ldr	r5, [r4, #0]
   8206e:	4b47      	ldr	r3, [pc, #284]	; (8218c <UDD_Init+0x194>)
   82070:	4620      	mov	r0, r4
   82072:	2200      	movs	r2, #0
   82074:	4629      	mov	r1, r5
   82076:	4798      	blx	r3
   82078:	4b45      	ldr	r3, [pc, #276]	; (82190 <UDD_Init+0x198>)
   8207a:	f045 7100 	orr.w	r1, r5, #33554432	; 0x2000000
   8207e:	4620      	mov	r0, r4
   82080:	2201      	movs	r2, #1
   82082:	6021      	str	r1, [r4, #0]
   82084:	4798      	blx	r3
   82086:	6825      	ldr	r5, [r4, #0]
   82088:	4b42      	ldr	r3, [pc, #264]	; (82194 <UDD_Init+0x19c>)
   8208a:	4620      	mov	r0, r4
   8208c:	2200      	movs	r2, #0
   8208e:	4629      	mov	r1, r5
   82090:	4798      	blx	r3
   82092:	4b41      	ldr	r3, [pc, #260]	; (82198 <UDD_Init+0x1a0>)
   82094:	f025 7180 	bic.w	r1, r5, #16777216	; 0x1000000
   82098:	4620      	mov	r0, r4
   8209a:	2201      	movs	r2, #1
   8209c:	6021      	str	r1, [r4, #0]
   8209e:	4798      	blx	r3
   820a0:	6825      	ldr	r5, [r4, #0]
   820a2:	4b3e      	ldr	r3, [pc, #248]	; (8219c <UDD_Init+0x1a4>)
   820a4:	4620      	mov	r0, r4
   820a6:	2200      	movs	r2, #0
   820a8:	4629      	mov	r1, r5
   820aa:	4798      	blx	r3
   820ac:	4b3c      	ldr	r3, [pc, #240]	; (821a0 <UDD_Init+0x1a8>)
   820ae:	f425 5180 	bic.w	r1, r5, #4096	; 0x1000
   820b2:	4620      	mov	r0, r4
   820b4:	2201      	movs	r2, #1
   820b6:	6021      	str	r1, [r4, #0]
   820b8:	4798      	blx	r3
   820ba:	6825      	ldr	r5, [r4, #0]
   820bc:	4b39      	ldr	r3, [pc, #228]	; (821a4 <UDD_Init+0x1ac>)
   820be:	4620      	mov	r0, r4
   820c0:	2200      	movs	r2, #0
   820c2:	4629      	mov	r1, r5
   820c4:	4798      	blx	r3
   820c6:	4b38      	ldr	r3, [pc, #224]	; (821a8 <UDD_Init+0x1b0>)
   820c8:	f445 5180 	orr.w	r1, r5, #4096	; 0x1000
   820cc:	4620      	mov	r0, r4
   820ce:	2201      	movs	r2, #1
   820d0:	6021      	str	r1, [r4, #0]
   820d2:	4798      	blx	r3
   820d4:	6825      	ldr	r5, [r4, #0]
   820d6:	4b35      	ldr	r3, [pc, #212]	; (821ac <UDD_Init+0x1b4>)
   820d8:	4620      	mov	r0, r4
   820da:	2200      	movs	r2, #0
   820dc:	4629      	mov	r1, r5
   820de:	4798      	blx	r3
   820e0:	4b33      	ldr	r3, [pc, #204]	; (821b0 <UDD_Init+0x1b8>)
   820e2:	f445 4100 	orr.w	r1, r5, #32768	; 0x8000
   820e6:	4620      	mov	r0, r4
   820e8:	2201      	movs	r2, #1
   820ea:	6021      	str	r1, [r4, #0]
   820ec:	4798      	blx	r3
   820ee:	6825      	ldr	r5, [r4, #0]
   820f0:	4b30      	ldr	r3, [pc, #192]	; (821b4 <UDD_Init+0x1bc>)
   820f2:	4620      	mov	r0, r4
   820f4:	2200      	movs	r2, #0
   820f6:	4629      	mov	r1, r5
   820f8:	4798      	blx	r3
   820fa:	4b2f      	ldr	r3, [pc, #188]	; (821b8 <UDD_Init+0x1c0>)
   820fc:	f425 4180 	bic.w	r1, r5, #16384	; 0x4000
   82100:	4620      	mov	r0, r4
   82102:	2201      	movs	r2, #1
   82104:	6021      	str	r1, [r4, #0]
   82106:	4798      	blx	r3
   82108:	f64f 0800 	movw	r8, #63488	; 0xf800
   8210c:	f5a4 6600 	sub.w	r6, r4, #2048	; 0x800
   82110:	4b2a      	ldr	r3, [pc, #168]	; (821bc <UDD_Init+0x1c4>)
   82112:	2200      	movs	r2, #0
   82114:	f6cf 78ff 	movt	r8, #65535	; 0xffff
   82118:	4630      	mov	r0, r6
   8211a:	f854 5008 	ldr.w	r5, [r4, r8]
   8211e:	4629      	mov	r1, r5
   82120:	4798      	blx	r3
   82122:	4b27      	ldr	r3, [pc, #156]	; (821c0 <UDD_Init+0x1c8>)
   82124:	f425 5180 	bic.w	r1, r5, #4096	; 0x1000
   82128:	4630      	mov	r0, r6
   8212a:	2201      	movs	r2, #1
   8212c:	f844 1008 	str.w	r1, [r4, r8]
   82130:	4798      	blx	r3
   82132:	f854 5008 	ldr.w	r5, [r4, r8]
   82136:	4b23      	ldr	r3, [pc, #140]	; (821c4 <UDD_Init+0x1cc>)
   82138:	4630      	mov	r0, r6
   8213a:	2200      	movs	r2, #0
   8213c:	4629      	mov	r1, r5
   8213e:	4798      	blx	r3
   82140:	4b21      	ldr	r3, [pc, #132]	; (821c8 <UDD_Init+0x1d0>)
   82142:	f425 6140 	bic.w	r1, r5, #3072	; 0xc00
   82146:	4630      	mov	r0, r6
   82148:	2201      	movs	r2, #1
   8214a:	f844 1008 	str.w	r1, [r4, r8]
   8214e:	4798      	blx	r3
   82150:	6825      	ldr	r5, [r4, #0]
   82152:	4b1e      	ldr	r3, [pc, #120]	; (821cc <UDD_Init+0x1d4>)
   82154:	4620      	mov	r0, r4
   82156:	2200      	movs	r2, #0
   82158:	4629      	mov	r1, r5
   8215a:	4798      	blx	r3
   8215c:	4b1c      	ldr	r3, [pc, #112]	; (821d0 <UDD_Init+0x1d8>)
   8215e:	f445 4180 	orr.w	r1, r5, #16384	; 0x4000
   82162:	4620      	mov	r0, r4
   82164:	2201      	movs	r2, #1
   82166:	6021      	str	r1, [r4, #0]
   82168:	4798      	blx	r3
   8216a:	2000      	movs	r0, #0
   8216c:	f85d 8b04 	ldr.w	r8, [sp], #4
   82170:	bdf0      	pop	{r4, r5, r6, r7, pc}
   82172:	bf00      	nop
   82174:	00080c2d 	.word	0x00080c2d
   82178:	00080be9 	.word	0x00080be9
   8217c:	00080d35 	.word	0x00080d35
   82180:	00080d51 	.word	0x00080d51
   82184:	000808c5 	.word	0x000808c5
   82188:	000808c5 	.word	0x000808c5
   8218c:	000808c5 	.word	0x000808c5
   82190:	000808c5 	.word	0x000808c5
   82194:	000808c5 	.word	0x000808c5
   82198:	000808c5 	.word	0x000808c5
   8219c:	000808c5 	.word	0x000808c5
   821a0:	000808c5 	.word	0x000808c5
   821a4:	000808c5 	.word	0x000808c5
   821a8:	000808c5 	.word	0x000808c5
   821ac:	000808c5 	.word	0x000808c5
   821b0:	000808c5 	.word	0x000808c5
   821b4:	000808c5 	.word	0x000808c5
   821b8:	000808c5 	.word	0x000808c5
   821bc:	000808c5 	.word	0x000808c5
   821c0:	000808c5 	.word	0x000808c5
   821c4:	000808c5 	.word	0x000808c5
   821c8:	000808c5 	.word	0x000808c5
   821cc:	000808c5 	.word	0x000808c5
   821d0:	000808c5 	.word	0x000808c5

000821d4 <UDD_Attach>:
   821d4:	b5f0      	push	{r4, r5, r6, r7, lr}
   821d6:	af03      	add	r7, sp, #12
   821d8:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
   821dc:	f240 086c 	movw	r8, #108	; 0x6c
   821e0:	f24c 0a00 	movw	sl, #49152	; 0xc000
   821e4:	2000      	movs	r0, #0
   821e6:	4b25      	ldr	r3, [pc, #148]	; (8227c <UDD_Attach+0xa8>)
   821e8:	2200      	movs	r2, #0
   821ea:	f2c2 0807 	movt	r8, #8199	; 0x2007
   821ee:	f2c4 0a0a 	movt	sl, #16394	; 0x400a
   821f2:	f8d8 9000 	ldr.w	r9, [r8]
   821f6:	b672      	cpsid	i
   821f8:	f3bf 8f5f 	dmb	sy
   821fc:	f8c8 0000 	str.w	r0, [r8]
   82200:	f50a 6600 	add.w	r6, sl, #2048	; 0x800
   82204:	f8da 5800 	ldr.w	r5, [sl, #2048]	; 0x800
   82208:	4630      	mov	r0, r6
   8220a:	4629      	mov	r1, r5
   8220c:	4798      	blx	r3
   8220e:	4b1c      	ldr	r3, [pc, #112]	; (82280 <UDD_Attach+0xac>)
   82210:	f425 4180 	bic.w	r1, r5, #16384	; 0x4000
   82214:	4630      	mov	r0, r6
   82216:	2201      	movs	r2, #1
   82218:	f8ca 1800 	str.w	r1, [sl, #2048]	; 0x800
   8221c:	4798      	blx	r3
   8221e:	f64c 0504 	movw	r5, #51204	; 0xc804
   82222:	4c18      	ldr	r4, [pc, #96]	; (82284 <UDD_Attach+0xb0>)
   82224:	f2c4 050a 	movt	r5, #16394	; 0x400a
   82228:	682e      	ldr	r6, [r5, #0]
   8222a:	4628      	mov	r0, r5
   8222c:	2200      	movs	r2, #0
   8222e:	4631      	mov	r1, r6
   82230:	47a0      	blx	r4
   82232:	0470      	lsls	r0, r6, #17
   82234:	d5f8      	bpl.n	82228 <UDD_Attach+0x54>
   82236:	f8da 5000 	ldr.w	r5, [sl]
   8223a:	4b13      	ldr	r3, [pc, #76]	; (82288 <UDD_Attach+0xb4>)
   8223c:	4650      	mov	r0, sl
   8223e:	2200      	movs	r2, #0
   82240:	4629      	mov	r1, r5
   82242:	4798      	blx	r3
   82244:	4b11      	ldr	r3, [pc, #68]	; (8228c <UDD_Attach+0xb8>)
   82246:	f425 7180 	bic.w	r1, r5, #256	; 0x100
   8224a:	4650      	mov	r0, sl
   8224c:	2201      	movs	r2, #1
   8224e:	2501      	movs	r5, #1
   82250:	f8ca 1000 	str.w	r1, [sl]
   82254:	4798      	blx	r3
   82256:	2008      	movs	r0, #8
   82258:	4b0d      	ldr	r3, [pc, #52]	; (82290 <UDD_Attach+0xbc>)
   8225a:	2108      	movs	r1, #8
   8225c:	2201      	movs	r2, #1
   8225e:	f84a 0f18 	str.w	r0, [sl, #24]!
   82262:	4650      	mov	r0, sl
   82264:	4798      	blx	r3
   82266:	f1b9 0f00 	cmp.w	r9, #0
   8226a:	d004      	beq.n	82276 <UDD_Attach+0xa2>
   8226c:	f8c8 5000 	str.w	r5, [r8]
   82270:	f3bf 8f5f 	dmb	sy
   82274:	b662      	cpsie	i
   82276:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
   8227a:	bdf0      	pop	{r4, r5, r6, r7, pc}
   8227c:	000808c5 	.word	0x000808c5
   82280:	000808c5 	.word	0x000808c5
   82284:	000808c5 	.word	0x000808c5
   82288:	000808c5 	.word	0x000808c5
   8228c:	000808c5 	.word	0x000808c5
   82290:	000808c5 	.word	0x000808c5

00082294 <UDD_InitEP>:
   82294:	b5f0      	push	{r4, r5, r6, r7, lr}
   82296:	af03      	add	r7, sp, #12
   82298:	f84d 8d04 	str.w	r8, [sp, #-4]!
   8229c:	f24c 041c 	movw	r4, #49180	; 0xc01c
   822a0:	f000 060f 	and.w	r6, r0, #15
   822a4:	4b0e      	ldr	r3, [pc, #56]	; (822e0 <UDD_InitEP+0x4c>)
   822a6:	2200      	movs	r2, #0
   822a8:	f2c4 040a 	movt	r4, #16394	; 0x400a
   822ac:	eb04 0886 	add.w	r8, r4, r6, lsl #2
   822b0:	4620      	mov	r0, r4
   822b2:	f8c8 10e4 	str.w	r1, [r8, #228]	; 0xe4
   822b6:	6825      	ldr	r5, [r4, #0]
   822b8:	4629      	mov	r1, r5
   822ba:	4798      	blx	r3
   822bc:	2001      	movs	r0, #1
   822be:	4b09      	ldr	r3, [pc, #36]	; (822e4 <UDD_InitEP+0x50>)
   822c0:	2201      	movs	r2, #1
   822c2:	40b0      	lsls	r0, r6
   822c4:	ea45 0100 	orr.w	r1, r5, r0
   822c8:	4620      	mov	r0, r4
   822ca:	6021      	str	r1, [r4, #0]
   822cc:	4798      	blx	r3
   822ce:	f8d8 0114 	ldr.w	r0, [r8, #276]	; 0x114
   822d2:	0340      	lsls	r0, r0, #13
   822d4:	bf44      	itt	mi
   822d6:	f85d 8b04 	ldrmi.w	r8, [sp], #4
   822da:	bdf0      	popmi	{r4, r5, r6, r7, pc}
   822dc:	e7fe      	b.n	822dc <UDD_InitEP+0x48>
   822de:	bf00      	nop
   822e0:	000808c5 	.word	0x000808c5
   822e4:	000808c5 	.word	0x000808c5

000822e8 <UDD_InitEndpoints>:
   822e8:	b5f0      	push	{r4, r5, r6, r7, lr}
   822ea:	af03      	add	r7, sp, #12
   822ec:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
   822f0:	b081      	sub	sp, #4
   822f2:	2902      	cmp	r1, #2
   822f4:	d326      	bcc.n	82344 <UDD_InitEndpoints+0x5c>
   822f6:	f24c 061c 	movw	r6, #49180	; 0xc01c
   822fa:	f8df b058 	ldr.w	fp, [pc, #88]	; 82354 <UDD_InitEndpoints+0x6c>
   822fe:	460c      	mov	r4, r1
   82300:	4680      	mov	r8, r0
   82302:	f04f 0901 	mov.w	r9, #1
   82306:	f2c4 060a 	movt	r6, #16394	; 0x400a
   8230a:	f858 0029 	ldr.w	r0, [r8, r9, lsl #2]
   8230e:	eb06 0a89 	add.w	sl, r6, r9, lsl #2
   82312:	4b0f      	ldr	r3, [pc, #60]	; (82350 <UDD_InitEndpoints+0x68>)
   82314:	2200      	movs	r2, #0
   82316:	f8ca 00e4 	str.w	r0, [sl, #228]	; 0xe4
   8231a:	4630      	mov	r0, r6
   8231c:	6835      	ldr	r5, [r6, #0]
   8231e:	4629      	mov	r1, r5
   82320:	4798      	blx	r3
   82322:	2001      	movs	r0, #1
   82324:	2201      	movs	r2, #1
   82326:	fa00 f009 	lsl.w	r0, r0, r9
   8232a:	ea45 0100 	orr.w	r1, r5, r0
   8232e:	4630      	mov	r0, r6
   82330:	6031      	str	r1, [r6, #0]
   82332:	47d8      	blx	fp
   82334:	f8da 0114 	ldr.w	r0, [sl, #276]	; 0x114
   82338:	0340      	lsls	r0, r0, #13
   8233a:	d507      	bpl.n	8234c <UDD_InitEndpoints+0x64>
   8233c:	f109 0901 	add.w	r9, r9, #1
   82340:	45a1      	cmp	r9, r4
   82342:	d3e2      	bcc.n	8230a <UDD_InitEndpoints+0x22>
   82344:	b001      	add	sp, #4
   82346:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
   8234a:	bdf0      	pop	{r4, r5, r6, r7, pc}
   8234c:	e7fe      	b.n	8234c <UDD_InitEndpoints+0x64>
   8234e:	bf00      	nop
   82350:	000808c5 	.word	0x000808c5
   82354:	000808c5 	.word	0x000808c5

00082358 <UDD_WaitIN>:
   82358:	b5f0      	push	{r4, r5, r6, r7, lr}
   8235a:	af03      	add	r7, sp, #12
   8235c:	f84d bd04 	str.w	fp, [sp, #-4]!
   82360:	f24c 1430 	movw	r4, #49456	; 0xc130
   82364:	4e06      	ldr	r6, [pc, #24]	; (82380 <UDD_WaitIN+0x28>)
   82366:	f2c4 040a 	movt	r4, #16394	; 0x400a
   8236a:	6825      	ldr	r5, [r4, #0]
   8236c:	4620      	mov	r0, r4
   8236e:	2200      	movs	r2, #0
   82370:	4629      	mov	r1, r5
   82372:	47b0      	blx	r6
   82374:	07e8      	lsls	r0, r5, #31
   82376:	d0f8      	beq.n	8236a <UDD_WaitIN+0x12>
   82378:	f85d bb04 	ldr.w	fp, [sp], #4
   8237c:	bdf0      	pop	{r4, r5, r6, r7, pc}
   8237e:	bf00      	nop
   82380:	000808c5 	.word	0x000808c5

00082384 <UDD_WaitOUT>:
   82384:	b5f0      	push	{r4, r5, r6, r7, lr}
   82386:	af03      	add	r7, sp, #12
   82388:	f84d bd04 	str.w	fp, [sp, #-4]!
   8238c:	f24c 1430 	movw	r4, #49456	; 0xc130
   82390:	4e06      	ldr	r6, [pc, #24]	; (823ac <UDD_WaitOUT+0x28>)
   82392:	f2c4 040a 	movt	r4, #16394	; 0x400a
   82396:	6825      	ldr	r5, [r4, #0]
   82398:	4620      	mov	r0, r4
   8239a:	2200      	movs	r2, #0
   8239c:	4629      	mov	r1, r5
   8239e:	47b0      	blx	r6
   823a0:	07a8      	lsls	r0, r5, #30
   823a2:	d5f8      	bpl.n	82396 <UDD_WaitOUT+0x12>
   823a4:	f85d bb04 	ldr.w	fp, [sp], #4
   823a8:	bdf0      	pop	{r4, r5, r6, r7, pc}
   823aa:	bf00      	nop
   823ac:	000808c5 	.word	0x000808c5

000823b0 <UDD_ClearIN>:
   823b0:	b580      	push	{r7, lr}
   823b2:	466f      	mov	r7, sp
   823b4:	f24c 1060 	movw	r0, #49504	; 0xc160
   823b8:	2101      	movs	r1, #1
   823ba:	4b07      	ldr	r3, [pc, #28]	; (823d8 <UDD_ClearIN+0x28>)
   823bc:	2201      	movs	r2, #1
   823be:	f2c4 000a 	movt	r0, #16394	; 0x400a
   823c2:	6001      	str	r1, [r0, #0]
   823c4:	2101      	movs	r1, #1
   823c6:	4798      	blx	r3
   823c8:	f241 2080 	movw	r0, #4736	; 0x1280
   823cc:	2100      	movs	r1, #0
   823ce:	f2c2 0007 	movt	r0, #8199	; 0x2007
   823d2:	6001      	str	r1, [r0, #0]
   823d4:	bd80      	pop	{r7, pc}
   823d6:	bf00      	nop
   823d8:	000808c5 	.word	0x000808c5

000823dc <UDD_ClearOUT>:
   823dc:	b580      	push	{r7, lr}
   823de:	466f      	mov	r7, sp
   823e0:	f24c 1060 	movw	r0, #49504	; 0xc160
   823e4:	2102      	movs	r1, #2
   823e6:	4b07      	ldr	r3, [pc, #28]	; (82404 <UDD_ClearOUT+0x28>)
   823e8:	2201      	movs	r2, #1
   823ea:	f2c4 000a 	movt	r0, #16394	; 0x400a
   823ee:	6001      	str	r1, [r0, #0]
   823f0:	2102      	movs	r1, #2
   823f2:	4798      	blx	r3
   823f4:	f241 20a8 	movw	r0, #4776	; 0x12a8
   823f8:	2100      	movs	r1, #0
   823fa:	f2c2 0007 	movt	r0, #8199	; 0x2007
   823fe:	6001      	str	r1, [r0, #0]
   82400:	bd80      	pop	{r7, pc}
   82402:	bf00      	nop
   82404:	000808c5 	.word	0x000808c5

00082408 <UDD_ReceivedSetupInt>:
   82408:	b5d0      	push	{r4, r6, r7, lr}
   8240a:	af02      	add	r7, sp, #8
   8240c:	f24c 1030 	movw	r0, #49456	; 0xc130
   82410:	4b04      	ldr	r3, [pc, #16]	; (82424 <UDD_ReceivedSetupInt+0x1c>)
   82412:	2200      	movs	r2, #0
   82414:	f2c4 000a 	movt	r0, #16394	; 0x400a
   82418:	6804      	ldr	r4, [r0, #0]
   8241a:	4621      	mov	r1, r4
   8241c:	4798      	blx	r3
   8241e:	f004 0004 	and.w	r0, r4, #4
   82422:	bdd0      	pop	{r4, r6, r7, pc}
   82424:	000808c5 	.word	0x000808c5

00082428 <UDD_ClearSetupInt>:
   82428:	f24c 1060 	movw	r0, #49504	; 0xc160
   8242c:	2104      	movs	r1, #4
   8242e:	4b03      	ldr	r3, [pc, #12]	; (8243c <UDD_ClearSetupInt+0x14>)
   82430:	2201      	movs	r2, #1
   82432:	f2c4 000a 	movt	r0, #16394	; 0x400a
   82436:	6001      	str	r1, [r0, #0]
   82438:	2104      	movs	r1, #4
   8243a:	4718      	bx	r3
   8243c:	000808c5 	.word	0x000808c5

00082440 <UDD_Send>:
   82440:	b5f0      	push	{r4, r5, r6, r7, lr}
   82442:	af03      	add	r7, sp, #12
   82444:	f84d 8d04 	str.w	r8, [sp, #-4]!
   82448:	4616      	mov	r6, r2
   8244a:	4602      	mov	r2, r0
   8244c:	f24c 1060 	movw	r0, #49504	; 0xc160
   82450:	f2c4 000a 	movt	r0, #16394	; 0x400a
   82454:	f1a0 0330 	sub.w	r3, r0, #48	; 0x30
   82458:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
   8245c:	07ed      	lsls	r5, r5, #31
   8245e:	d0fb      	beq.n	82458 <UDD_Send+0x18>
   82460:	f241 2380 	movw	r3, #4736	; 0x1280
   82464:	2a00      	cmp	r2, #0
   82466:	f2c2 0307 	movt	r3, #8199	; 0x2007
   8246a:	d003      	beq.n	82474 <UDD_Send+0x34>
   8246c:	2500      	movs	r5, #0
   8246e:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
   82472:	e008      	b.n	82486 <UDD_Send+0x46>
   82474:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
   82478:	4435      	add	r5, r6
   8247a:	2d41      	cmp	r5, #65	; 0x41
   8247c:	bf24      	itt	cs
   8247e:	f853 3022 	ldrcs.w	r3, [r3, r2, lsl #2]
   82482:	f1c3 0640 	rsbcs	r6, r3, #64	; 0x40
   82486:	f241 2880 	movw	r8, #4736	; 0x1280
   8248a:	2e00      	cmp	r6, #0
   8248c:	f2c2 0807 	movt	r8, #8199	; 0x2007
   82490:	f858 3022 	ldr.w	r3, [r8, r2, lsl #2]
   82494:	d00c      	beq.n	824b0 <UDD_Send+0x70>
   82496:	eb03 33c2 	add.w	r3, r3, r2, lsl #15
   8249a:	4634      	mov	r4, r6
   8249c:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
   824a0:	f503 13c0 	add.w	r3, r3, #1572864	; 0x180000
   824a4:	f811 5b01 	ldrb.w	r5, [r1], #1
   824a8:	3c01      	subs	r4, #1
   824aa:	f803 5b01 	strb.w	r5, [r3], #1
   824ae:	d1f9      	bne.n	824a4 <UDD_Send+0x64>
   824b0:	f858 1022 	ldr.w	r1, [r8, r2, lsl #2]
   824b4:	2a00      	cmp	r2, #0
   824b6:	4431      	add	r1, r6
   824b8:	f848 1022 	str.w	r1, [r8, r2, lsl #2]
   824bc:	d009      	beq.n	824d2 <UDD_Send+0x92>
   824be:	2101      	movs	r1, #1
   824c0:	f840 1022 	str.w	r1, [r0, r2, lsl #2]
   824c4:	eb00 0082 	add.w	r0, r0, r2, lsl #2
   824c8:	f44f 4180 	mov.w	r1, #16384	; 0x4000
   824cc:	f8c0 10c0 	str.w	r1, [r0, #192]	; 0xc0
   824d0:	e00c      	b.n	824ec <UDD_Send+0xac>
   824d2:	f858 1022 	ldr.w	r1, [r8, r2, lsl #2]
   824d6:	2940      	cmp	r1, #64	; 0x40
   824d8:	d108      	bne.n	824ec <UDD_Send+0xac>
   824da:	2101      	movs	r1, #1
   824dc:	4b05      	ldr	r3, [pc, #20]	; (824f4 <UDD_Send+0xb4>)
   824de:	2201      	movs	r2, #1
   824e0:	6001      	str	r1, [r0, #0]
   824e2:	2101      	movs	r1, #1
   824e4:	4798      	blx	r3
   824e6:	2000      	movs	r0, #0
   824e8:	f8c8 0000 	str.w	r0, [r8]
   824ec:	4630      	mov	r0, r6
   824ee:	f85d 8b04 	ldr.w	r8, [sp], #4
   824f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
   824f4:	000808c5 	.word	0x000808c5

000824f8 <UDD_Send8>:
   824f8:	f241 2c80 	movw	ip, #4736	; 0x1280
   824fc:	2200      	movs	r2, #0
   824fe:	f2c2 0c07 	movt	ip, #8199	; 0x2007
   82502:	f2c2 0218 	movt	r2, #8216	; 0x2018
   82506:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
   8250a:	eb03 33c0 	add.w	r3, r3, r0, lsl #15
   8250e:	5499      	strb	r1, [r3, r2]
   82510:	f85c 1020 	ldr.w	r1, [ip, r0, lsl #2]
   82514:	3101      	adds	r1, #1
   82516:	f84c 1020 	str.w	r1, [ip, r0, lsl #2]
   8251a:	4770      	bx	lr

0008251c <UDD_Recv8>:
   8251c:	f241 22a8 	movw	r2, #4776	; 0x12a8
   82520:	2300      	movs	r3, #0
   82522:	f2c2 0207 	movt	r2, #8199	; 0x2007
   82526:	f2c2 0318 	movt	r3, #8216	; 0x2018
   8252a:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
   8252e:	eb01 31c0 	add.w	r1, r1, r0, lsl #15
   82532:	5cc9      	ldrb	r1, [r1, r3]
   82534:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
   82538:	3301      	adds	r3, #1
   8253a:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
   8253e:	4608      	mov	r0, r1
   82540:	4770      	bx	lr

00082542 <UDD_Recv>:
   82542:	b5d0      	push	{r4, r6, r7, lr}
   82544:	af02      	add	r7, sp, #8
   82546:	f241 2ca8 	movw	ip, #4776	; 0x12a8
   8254a:	2a00      	cmp	r2, #0
   8254c:	f2c2 0c07 	movt	ip, #8199	; 0x2007
   82550:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
   82554:	d00c      	beq.n	82570 <UDD_Recv+0x2e>
   82556:	eb03 33c0 	add.w	r3, r3, r0, lsl #15
   8255a:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
   8255e:	f503 1ec0 	add.w	lr, r3, #1572864	; 0x180000
   82562:	4613      	mov	r3, r2
   82564:	f81e 4b01 	ldrb.w	r4, [lr], #1
   82568:	3b01      	subs	r3, #1
   8256a:	f801 4b01 	strb.w	r4, [r1], #1
   8256e:	d1f9      	bne.n	82564 <UDD_Recv+0x22>
   82570:	f85c 1020 	ldr.w	r1, [ip, r0, lsl #2]
   82574:	4411      	add	r1, r2
   82576:	f84c 1020 	str.w	r1, [ip, r0, lsl #2]
   8257a:	bdd0      	pop	{r4, r6, r7, pc}

0008257c <UDD_Stall>:
   8257c:	b5d0      	push	{r4, r6, r7, lr}
   8257e:	af02      	add	r7, sp, #8
   82580:	f24c 041c 	movw	r4, #49180	; 0xc01c
   82584:	2001      	movs	r0, #1
   82586:	4b0a      	ldr	r3, [pc, #40]	; (825b0 <UDD_Stall+0x34>)
   82588:	2101      	movs	r1, #1
   8258a:	2201      	movs	r2, #1
   8258c:	f2c4 040a 	movt	r4, #16394	; 0x400a
   82590:	6020      	str	r0, [r4, #0]
   82592:	4620      	mov	r0, r4
   82594:	4798      	blx	r3
   82596:	f44f 2000 	mov.w	r0, #524288	; 0x80000
   8259a:	4b06      	ldr	r3, [pc, #24]	; (825b4 <UDD_Stall+0x38>)
   8259c:	f44f 2100 	mov.w	r1, #524288	; 0x80000
   825a0:	2201      	movs	r2, #1
   825a2:	f8c4 01d4 	str.w	r0, [r4, #468]	; 0x1d4
   825a6:	f504 70ea 	add.w	r0, r4, #468	; 0x1d4
   825aa:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
   825ae:	4718      	bx	r3
   825b0:	000808c5 	.word	0x000808c5
   825b4:	000808c5 	.word	0x000808c5

000825b8 <UDD_FifoByteCount>:
   825b8:	f24c 1130 	movw	r1, #49456	; 0xc130
   825bc:	f2c4 010a 	movt	r1, #16394	; 0x400a
   825c0:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
   825c4:	f3c0 500a 	ubfx	r0, r0, #20, #11
   825c8:	4770      	bx	lr

000825ca <UDD_ReleaseRX>:
   825ca:	f24c 1160 	movw	r1, #49504	; 0xc160
   825ce:	2202      	movs	r2, #2
   825d0:	f2c4 010a 	movt	r1, #16394	; 0x400a
   825d4:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   825d8:	eb01 0180 	add.w	r1, r1, r0, lsl #2
   825dc:	f44f 4280 	mov.w	r2, #16384	; 0x4000
   825e0:	f8c1 20c0 	str.w	r2, [r1, #192]	; 0xc0
   825e4:	f241 21a8 	movw	r1, #4776	; 0x12a8
   825e8:	2200      	movs	r2, #0
   825ea:	f2c2 0107 	movt	r1, #8199	; 0x2007
   825ee:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   825f2:	4770      	bx	lr

000825f4 <UDD_ReleaseTX>:
   825f4:	f24c 1160 	movw	r1, #49504	; 0xc160
   825f8:	2201      	movs	r2, #1
   825fa:	f2c4 010a 	movt	r1, #16394	; 0x400a
   825fe:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   82602:	eb01 0180 	add.w	r1, r1, r0, lsl #2
   82606:	f44f 4280 	mov.w	r2, #16384	; 0x4000
   8260a:	f8c1 20c0 	str.w	r2, [r1, #192]	; 0xc0
   8260e:	f241 2180 	movw	r1, #4736	; 0x1280
   82612:	2200      	movs	r2, #0
   82614:	f2c2 0107 	movt	r1, #8199	; 0x2007
   82618:	f841 2020 	str.w	r2, [r1, r0, lsl #2]
   8261c:	4770      	bx	lr
	...

00082620 <UDD_SetAddress>:
   82620:	b5f0      	push	{r4, r5, r6, r7, lr}
   82622:	af03      	add	r7, sp, #12
   82624:	f84d bd04 	str.w	fp, [sp, #-4]!
   82628:	f24c 0400 	movw	r4, #49152	; 0xc000
   8262c:	4b10      	ldr	r3, [pc, #64]	; (82670 <UDD_SetAddress+0x50>)
   8262e:	4605      	mov	r5, r0
   82630:	2200      	movs	r2, #0
   82632:	f2c4 040a 	movt	r4, #16394	; 0x400a
   82636:	6826      	ldr	r6, [r4, #0]
   82638:	4620      	mov	r0, r4
   8263a:	4631      	mov	r1, r6
   8263c:	4798      	blx	r3
   8263e:	f365 0606 	bfi	r6, r5, #0, #7
   82642:	4b0c      	ldr	r3, [pc, #48]	; (82674 <UDD_SetAddress+0x54>)
   82644:	4620      	mov	r0, r4
   82646:	2201      	movs	r2, #1
   82648:	4631      	mov	r1, r6
   8264a:	6026      	str	r6, [r4, #0]
   8264c:	4798      	blx	r3
   8264e:	6825      	ldr	r5, [r4, #0]
   82650:	4b09      	ldr	r3, [pc, #36]	; (82678 <UDD_SetAddress+0x58>)
   82652:	4620      	mov	r0, r4
   82654:	2200      	movs	r2, #0
   82656:	4629      	mov	r1, r5
   82658:	4798      	blx	r3
   8265a:	f045 0180 	orr.w	r1, r5, #128	; 0x80
   8265e:	4b07      	ldr	r3, [pc, #28]	; (8267c <UDD_SetAddress+0x5c>)
   82660:	4620      	mov	r0, r4
   82662:	2201      	movs	r2, #1
   82664:	6021      	str	r1, [r4, #0]
   82666:	f85d bb04 	ldr.w	fp, [sp], #4
   8266a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
   8266e:	4718      	bx	r3
   82670:	000808c5 	.word	0x000808c5
   82674:	000808c5 	.word	0x000808c5
   82678:	000808c5 	.word	0x000808c5
   8267c:	000808c5 	.word	0x000808c5

00082680 <WDT_Disable>:
   82680:	f44f 4100 	mov.w	r1, #32768	; 0x8000
   82684:	4b03      	ldr	r3, [pc, #12]	; (82694 <WDT_Disable+0x14>)
   82686:	2201      	movs	r2, #1
   82688:	f840 1f04 	str.w	r1, [r0, #4]!
   8268c:	f44f 4100 	mov.w	r1, #32768	; 0x8000
   82690:	4718      	bx	r3
   82692:	bf00      	nop
   82694:	000808c5 	.word	0x000808c5

00082698 <__libc_init_array>:
   82698:	b570      	push	{r4, r5, r6, lr}
   8269a:	4e0f      	ldr	r6, [pc, #60]	; (826d8 <__libc_init_array+0x40>)
   8269c:	4d0f      	ldr	r5, [pc, #60]	; (826dc <__libc_init_array+0x44>)
   8269e:	1b76      	subs	r6, r6, r5
   826a0:	10b6      	asrs	r6, r6, #2
   826a2:	d007      	beq.n	826b4 <__libc_init_array+0x1c>
   826a4:	3d04      	subs	r5, #4
   826a6:	2400      	movs	r4, #0
   826a8:	3401      	adds	r4, #1
   826aa:	f855 3f04 	ldr.w	r3, [r5, #4]!
   826ae:	4798      	blx	r3
   826b0:	42a6      	cmp	r6, r4
   826b2:	d1f9      	bne.n	826a8 <__libc_init_array+0x10>
   826b4:	4e0a      	ldr	r6, [pc, #40]	; (826e0 <__libc_init_array+0x48>)
   826b6:	4d0b      	ldr	r5, [pc, #44]	; (826e4 <__libc_init_array+0x4c>)
   826b8:	f003 fda0 	bl	861fc <_init>
   826bc:	1b76      	subs	r6, r6, r5
   826be:	10b6      	asrs	r6, r6, #2
   826c0:	d008      	beq.n	826d4 <__libc_init_array+0x3c>
   826c2:	3d04      	subs	r5, #4
   826c4:	2400      	movs	r4, #0
   826c6:	3401      	adds	r4, #1
   826c8:	f855 3f04 	ldr.w	r3, [r5, #4]!
   826cc:	4798      	blx	r3
   826ce:	42a6      	cmp	r6, r4
   826d0:	d1f9      	bne.n	826c6 <__libc_init_array+0x2e>
   826d2:	bd70      	pop	{r4, r5, r6, pc}
   826d4:	bd70      	pop	{r4, r5, r6, pc}
   826d6:	bf00      	nop
   826d8:	00086208 	.word	0x00086208
   826dc:	00086208 	.word	0x00086208
   826e0:	0008621c 	.word	0x0008621c
   826e4:	00086208 	.word	0x00086208

000826e8 <iprintf>:
   826e8:	b40f      	push	{r0, r1, r2, r3}
   826ea:	b510      	push	{r4, lr}
   826ec:	4b07      	ldr	r3, [pc, #28]	; (8270c <iprintf+0x24>)
   826ee:	b082      	sub	sp, #8
   826f0:	ac04      	add	r4, sp, #16
   826f2:	f854 2b04 	ldr.w	r2, [r4], #4
   826f6:	6818      	ldr	r0, [r3, #0]
   826f8:	4623      	mov	r3, r4
   826fa:	6881      	ldr	r1, [r0, #8]
   826fc:	9401      	str	r4, [sp, #4]
   826fe:	f000 f8c5 	bl	8288c <_vfiprintf_r>
   82702:	b002      	add	sp, #8
   82704:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   82708:	b004      	add	sp, #16
   8270a:	4770      	bx	lr
   8270c:	20070498 	.word	0x20070498

00082710 <memset>:
   82710:	b4f0      	push	{r4, r5, r6, r7}
   82712:	0784      	lsls	r4, r0, #30
   82714:	d043      	beq.n	8279e <memset+0x8e>
   82716:	1e54      	subs	r4, r2, #1
   82718:	2a00      	cmp	r2, #0
   8271a:	d03e      	beq.n	8279a <memset+0x8a>
   8271c:	b2cd      	uxtb	r5, r1
   8271e:	4603      	mov	r3, r0
   82720:	e003      	b.n	8272a <memset+0x1a>
   82722:	1e62      	subs	r2, r4, #1
   82724:	2c00      	cmp	r4, #0
   82726:	d038      	beq.n	8279a <memset+0x8a>
   82728:	4614      	mov	r4, r2
   8272a:	f803 5b01 	strb.w	r5, [r3], #1
   8272e:	079a      	lsls	r2, r3, #30
   82730:	d1f7      	bne.n	82722 <memset+0x12>
   82732:	2c03      	cmp	r4, #3
   82734:	d92a      	bls.n	8278c <memset+0x7c>
   82736:	b2cd      	uxtb	r5, r1
   82738:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
   8273c:	2c0f      	cmp	r4, #15
   8273e:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
   82742:	d915      	bls.n	82770 <memset+0x60>
   82744:	f1a4 0710 	sub.w	r7, r4, #16
   82748:	093f      	lsrs	r7, r7, #4
   8274a:	f103 0610 	add.w	r6, r3, #16
   8274e:	eb06 1607 	add.w	r6, r6, r7, lsl #4
   82752:	461a      	mov	r2, r3
   82754:	6015      	str	r5, [r2, #0]
   82756:	6055      	str	r5, [r2, #4]
   82758:	6095      	str	r5, [r2, #8]
   8275a:	60d5      	str	r5, [r2, #12]
   8275c:	3210      	adds	r2, #16
   8275e:	42b2      	cmp	r2, r6
   82760:	d1f8      	bne.n	82754 <memset+0x44>
   82762:	f004 040f 	and.w	r4, r4, #15
   82766:	3701      	adds	r7, #1
   82768:	2c03      	cmp	r4, #3
   8276a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
   8276e:	d90d      	bls.n	8278c <memset+0x7c>
   82770:	461e      	mov	r6, r3
   82772:	4622      	mov	r2, r4
   82774:	3a04      	subs	r2, #4
   82776:	2a03      	cmp	r2, #3
   82778:	f846 5b04 	str.w	r5, [r6], #4
   8277c:	d8fa      	bhi.n	82774 <memset+0x64>
   8277e:	1f22      	subs	r2, r4, #4
   82780:	f022 0203 	bic.w	r2, r2, #3
   82784:	3204      	adds	r2, #4
   82786:	4413      	add	r3, r2
   82788:	f004 0403 	and.w	r4, r4, #3
   8278c:	b12c      	cbz	r4, 8279a <memset+0x8a>
   8278e:	b2c9      	uxtb	r1, r1
   82790:	441c      	add	r4, r3
   82792:	f803 1b01 	strb.w	r1, [r3], #1
   82796:	42a3      	cmp	r3, r4
   82798:	d1fb      	bne.n	82792 <memset+0x82>
   8279a:	bcf0      	pop	{r4, r5, r6, r7}
   8279c:	4770      	bx	lr
   8279e:	4614      	mov	r4, r2
   827a0:	4603      	mov	r3, r0
   827a2:	e7c6      	b.n	82732 <memset+0x22>

000827a4 <strlen>:
   827a4:	f020 0103 	bic.w	r1, r0, #3
   827a8:	f010 0003 	ands.w	r0, r0, #3
   827ac:	f1c0 0000 	rsb	r0, r0, #0
   827b0:	f851 3b04 	ldr.w	r3, [r1], #4
   827b4:	f100 0c04 	add.w	ip, r0, #4
   827b8:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
   827bc:	f06f 0200 	mvn.w	r2, #0
   827c0:	bf1c      	itt	ne
   827c2:	fa22 f20c 	lsrne.w	r2, r2, ip
   827c6:	4313      	orrne	r3, r2
   827c8:	f04f 0c01 	mov.w	ip, #1
   827cc:	ea4c 2c0c 	orr.w	ip, ip, ip, lsl #8
   827d0:	ea4c 4c0c 	orr.w	ip, ip, ip, lsl #16
   827d4:	eba3 020c 	sub.w	r2, r3, ip
   827d8:	ea22 0203 	bic.w	r2, r2, r3
   827dc:	ea12 12cc 	ands.w	r2, r2, ip, lsl #7
   827e0:	bf04      	itt	eq
   827e2:	f851 3b04 	ldreq.w	r3, [r1], #4
   827e6:	3004      	addeq	r0, #4
   827e8:	d0f4      	beq.n	827d4 <strlen+0x30>
   827ea:	f013 0fff 	tst.w	r3, #255	; 0xff
   827ee:	bf1f      	itttt	ne
   827f0:	3001      	addne	r0, #1
   827f2:	f413 4f7f 	tstne.w	r3, #65280	; 0xff00
   827f6:	3001      	addne	r0, #1
   827f8:	f413 0f7f 	tstne.w	r3, #16711680	; 0xff0000
   827fc:	bf18      	it	ne
   827fe:	3001      	addne	r0, #1
   82800:	4770      	bx	lr
   82802:	bf00      	nop

00082804 <kill>:
   82804:	4b02      	ldr	r3, [pc, #8]	; (82810 <kill+0xc>)
   82806:	460a      	mov	r2, r1
   82808:	4601      	mov	r1, r0
   8280a:	6818      	ldr	r0, [r3, #0]
   8280c:	f002 b9c8 	b.w	84ba0 <_kill_r>
   82810:	20070498 	.word	0x20070498

00082814 <__sprint_r.part.0>:
   82814:	6e4b      	ldr	r3, [r1, #100]	; 0x64
   82816:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
   8281a:	049c      	lsls	r4, r3, #18
   8281c:	460e      	mov	r6, r1
   8281e:	4680      	mov	r8, r0
   82820:	4691      	mov	r9, r2
   82822:	d52a      	bpl.n	8287a <__sprint_r.part.0+0x66>
   82824:	6893      	ldr	r3, [r2, #8]
   82826:	6812      	ldr	r2, [r2, #0]
   82828:	f102 0a08 	add.w	sl, r2, #8
   8282c:	b31b      	cbz	r3, 82876 <__sprint_r.part.0+0x62>
   8282e:	e91a 00a0 	ldmdb	sl, {r5, r7}
   82832:	08bf      	lsrs	r7, r7, #2
   82834:	d017      	beq.n	82866 <__sprint_r.part.0+0x52>
   82836:	3d04      	subs	r5, #4
   82838:	2400      	movs	r4, #0
   8283a:	e001      	b.n	82840 <__sprint_r.part.0+0x2c>
   8283c:	42a7      	cmp	r7, r4
   8283e:	d010      	beq.n	82862 <__sprint_r.part.0+0x4e>
   82840:	4640      	mov	r0, r8
   82842:	f855 1f04 	ldr.w	r1, [r5, #4]!
   82846:	4632      	mov	r2, r6
   82848:	f001 f850 	bl	838ec <_fputwc_r>
   8284c:	1c43      	adds	r3, r0, #1
   8284e:	f104 0401 	add.w	r4, r4, #1
   82852:	d1f3      	bne.n	8283c <__sprint_r.part.0+0x28>
   82854:	2300      	movs	r3, #0
   82856:	f8c9 3008 	str.w	r3, [r9, #8]
   8285a:	f8c9 3004 	str.w	r3, [r9, #4]
   8285e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
   82862:	f8d9 3008 	ldr.w	r3, [r9, #8]
   82866:	eba3 0387 	sub.w	r3, r3, r7, lsl #2
   8286a:	f8c9 3008 	str.w	r3, [r9, #8]
   8286e:	f10a 0a08 	add.w	sl, sl, #8
   82872:	2b00      	cmp	r3, #0
   82874:	d1db      	bne.n	8282e <__sprint_r.part.0+0x1a>
   82876:	2000      	movs	r0, #0
   82878:	e7ec      	b.n	82854 <__sprint_r.part.0+0x40>
   8287a:	f001 f9b1 	bl	83be0 <__sfvwrite_r>
   8287e:	2300      	movs	r3, #0
   82880:	f8c9 3008 	str.w	r3, [r9, #8]
   82884:	f8c9 3004 	str.w	r3, [r9, #4]
   82888:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

0008288c <_vfiprintf_r>:
   8288c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   82890:	b0b1      	sub	sp, #196	; 0xc4
   82892:	461c      	mov	r4, r3
   82894:	9102      	str	r1, [sp, #8]
   82896:	4690      	mov	r8, r2
   82898:	9308      	str	r3, [sp, #32]
   8289a:	9006      	str	r0, [sp, #24]
   8289c:	b118      	cbz	r0, 828a6 <_vfiprintf_r+0x1a>
   8289e:	6b83      	ldr	r3, [r0, #56]	; 0x38
   828a0:	2b00      	cmp	r3, #0
   828a2:	f000 80e8 	beq.w	82a76 <_vfiprintf_r+0x1ea>
   828a6:	9d02      	ldr	r5, [sp, #8]
   828a8:	89ab      	ldrh	r3, [r5, #12]
   828aa:	b29a      	uxth	r2, r3
   828ac:	0490      	lsls	r0, r2, #18
   828ae:	d407      	bmi.n	828c0 <_vfiprintf_r+0x34>
   828b0:	6e6a      	ldr	r2, [r5, #100]	; 0x64
   828b2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
   828b6:	f422 5100 	bic.w	r1, r2, #8192	; 0x2000
   828ba:	81ab      	strh	r3, [r5, #12]
   828bc:	b29a      	uxth	r2, r3
   828be:	6669      	str	r1, [r5, #100]	; 0x64
   828c0:	0711      	lsls	r1, r2, #28
   828c2:	f140 80b7 	bpl.w	82a34 <_vfiprintf_r+0x1a8>
   828c6:	f8dd b008 	ldr.w	fp, [sp, #8]
   828ca:	f8db 3010 	ldr.w	r3, [fp, #16]
   828ce:	2b00      	cmp	r3, #0
   828d0:	f000 80b0 	beq.w	82a34 <_vfiprintf_r+0x1a8>
   828d4:	f002 021a 	and.w	r2, r2, #26
   828d8:	2a0a      	cmp	r2, #10
   828da:	f000 80b7 	beq.w	82a4c <_vfiprintf_r+0x1c0>
   828de:	2300      	movs	r3, #0
   828e0:	f10d 0980 	add.w	r9, sp, #128	; 0x80
   828e4:	930a      	str	r3, [sp, #40]	; 0x28
   828e6:	9315      	str	r3, [sp, #84]	; 0x54
   828e8:	9314      	str	r3, [sp, #80]	; 0x50
   828ea:	9309      	str	r3, [sp, #36]	; 0x24
   828ec:	f8cd 904c 	str.w	r9, [sp, #76]	; 0x4c
   828f0:	464e      	mov	r6, r9
   828f2:	f898 3000 	ldrb.w	r3, [r8]
   828f6:	2b00      	cmp	r3, #0
   828f8:	f000 84c8 	beq.w	8328c <_vfiprintf_r+0xa00>
   828fc:	2b25      	cmp	r3, #37	; 0x25
   828fe:	f000 84c5 	beq.w	8328c <_vfiprintf_r+0xa00>
   82902:	f108 0201 	add.w	r2, r8, #1
   82906:	e001      	b.n	8290c <_vfiprintf_r+0x80>
   82908:	2b25      	cmp	r3, #37	; 0x25
   8290a:	d004      	beq.n	82916 <_vfiprintf_r+0x8a>
   8290c:	7813      	ldrb	r3, [r2, #0]
   8290e:	4614      	mov	r4, r2
   82910:	3201      	adds	r2, #1
   82912:	2b00      	cmp	r3, #0
   82914:	d1f8      	bne.n	82908 <_vfiprintf_r+0x7c>
   82916:	ebc8 0504 	rsb	r5, r8, r4
   8291a:	b195      	cbz	r5, 82942 <_vfiprintf_r+0xb6>
   8291c:	9b14      	ldr	r3, [sp, #80]	; 0x50
   8291e:	9a15      	ldr	r2, [sp, #84]	; 0x54
   82920:	3301      	adds	r3, #1
   82922:	442a      	add	r2, r5
   82924:	2b07      	cmp	r3, #7
   82926:	f8c6 8000 	str.w	r8, [r6]
   8292a:	6075      	str	r5, [r6, #4]
   8292c:	9215      	str	r2, [sp, #84]	; 0x54
   8292e:	9314      	str	r3, [sp, #80]	; 0x50
   82930:	dd7b      	ble.n	82a2a <_vfiprintf_r+0x19e>
   82932:	2a00      	cmp	r2, #0
   82934:	f040 84d5 	bne.w	832e2 <_vfiprintf_r+0xa56>
   82938:	9809      	ldr	r0, [sp, #36]	; 0x24
   8293a:	9214      	str	r2, [sp, #80]	; 0x50
   8293c:	4428      	add	r0, r5
   8293e:	464e      	mov	r6, r9
   82940:	9009      	str	r0, [sp, #36]	; 0x24
   82942:	7823      	ldrb	r3, [r4, #0]
   82944:	2b00      	cmp	r3, #0
   82946:	f000 83ed 	beq.w	83124 <_vfiprintf_r+0x898>
   8294a:	2100      	movs	r1, #0
   8294c:	f04f 0200 	mov.w	r2, #0
   82950:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
   82954:	7863      	ldrb	r3, [r4, #1]
   82956:	f88d 2047 	strb.w	r2, [sp, #71]	; 0x47
   8295a:	9104      	str	r1, [sp, #16]
   8295c:	468a      	mov	sl, r1
   8295e:	f104 0801 	add.w	r8, r4, #1
   82962:	4608      	mov	r0, r1
   82964:	4665      	mov	r5, ip
   82966:	f108 0801 	add.w	r8, r8, #1
   8296a:	f1a3 0220 	sub.w	r2, r3, #32
   8296e:	2a58      	cmp	r2, #88	; 0x58
   82970:	f200 82d9 	bhi.w	82f26 <_vfiprintf_r+0x69a>
   82974:	e8df f012 	tbh	[pc, r2, lsl #1]
   82978:	02d702cb 	.word	0x02d702cb
   8297c:	02d202d7 	.word	0x02d202d7
   82980:	02d702d7 	.word	0x02d702d7
   82984:	02d702d7 	.word	0x02d702d7
   82988:	02d702d7 	.word	0x02d702d7
   8298c:	028f0282 	.word	0x028f0282
   82990:	008402d7 	.word	0x008402d7
   82994:	02d70293 	.word	0x02d70293
   82998:	0196012b 	.word	0x0196012b
   8299c:	01960196 	.word	0x01960196
   829a0:	01960196 	.word	0x01960196
   829a4:	01960196 	.word	0x01960196
   829a8:	01960196 	.word	0x01960196
   829ac:	02d702d7 	.word	0x02d702d7
   829b0:	02d702d7 	.word	0x02d702d7
   829b4:	02d702d7 	.word	0x02d702d7
   829b8:	02d702d7 	.word	0x02d702d7
   829bc:	02d702d7 	.word	0x02d702d7
   829c0:	02d70130 	.word	0x02d70130
   829c4:	02d702d7 	.word	0x02d702d7
   829c8:	02d702d7 	.word	0x02d702d7
   829cc:	02d702d7 	.word	0x02d702d7
   829d0:	02d702d7 	.word	0x02d702d7
   829d4:	017b02d7 	.word	0x017b02d7
   829d8:	02d702d7 	.word	0x02d702d7
   829dc:	02d702d7 	.word	0x02d702d7
   829e0:	01a402d7 	.word	0x01a402d7
   829e4:	02d702d7 	.word	0x02d702d7
   829e8:	02d701bf 	.word	0x02d701bf
   829ec:	02d702d7 	.word	0x02d702d7
   829f0:	02d702d7 	.word	0x02d702d7
   829f4:	02d702d7 	.word	0x02d702d7
   829f8:	02d702d7 	.word	0x02d702d7
   829fc:	01e402d7 	.word	0x01e402d7
   82a00:	02d701fa 	.word	0x02d701fa
   82a04:	02d702d7 	.word	0x02d702d7
   82a08:	01fa0216 	.word	0x01fa0216
   82a0c:	02d702d7 	.word	0x02d702d7
   82a10:	02d7021b 	.word	0x02d7021b
   82a14:	00890228 	.word	0x00890228
   82a18:	027d0266 	.word	0x027d0266
   82a1c:	023a02d7 	.word	0x023a02d7
   82a20:	011902d7 	.word	0x011902d7
   82a24:	02d702d7 	.word	0x02d702d7
   82a28:	02af      	.short	0x02af
   82a2a:	3608      	adds	r6, #8
   82a2c:	9809      	ldr	r0, [sp, #36]	; 0x24
   82a2e:	4428      	add	r0, r5
   82a30:	9009      	str	r0, [sp, #36]	; 0x24
   82a32:	e786      	b.n	82942 <_vfiprintf_r+0xb6>
   82a34:	9806      	ldr	r0, [sp, #24]
   82a36:	9902      	ldr	r1, [sp, #8]
   82a38:	f000 fd90 	bl	8355c <__swsetup_r>
   82a3c:	b9b0      	cbnz	r0, 82a6c <_vfiprintf_r+0x1e0>
   82a3e:	9d02      	ldr	r5, [sp, #8]
   82a40:	89aa      	ldrh	r2, [r5, #12]
   82a42:	f002 021a 	and.w	r2, r2, #26
   82a46:	2a0a      	cmp	r2, #10
   82a48:	f47f af49 	bne.w	828de <_vfiprintf_r+0x52>
   82a4c:	f8dd b008 	ldr.w	fp, [sp, #8]
   82a50:	f9bb 300e 	ldrsh.w	r3, [fp, #14]
   82a54:	2b00      	cmp	r3, #0
   82a56:	f6ff af42 	blt.w	828de <_vfiprintf_r+0x52>
   82a5a:	9806      	ldr	r0, [sp, #24]
   82a5c:	4659      	mov	r1, fp
   82a5e:	4642      	mov	r2, r8
   82a60:	4623      	mov	r3, r4
   82a62:	f000 fd3d 	bl	834e0 <__sbprintf>
   82a66:	b031      	add	sp, #196	; 0xc4
   82a68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   82a6c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   82a70:	b031      	add	sp, #196	; 0xc4
   82a72:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   82a76:	f000 fea3 	bl	837c0 <__sinit>
   82a7a:	e714      	b.n	828a6 <_vfiprintf_r+0x1a>
   82a7c:	4240      	negs	r0, r0
   82a7e:	9308      	str	r3, [sp, #32]
   82a80:	f04a 0a04 	orr.w	sl, sl, #4
   82a84:	f898 3000 	ldrb.w	r3, [r8]
   82a88:	e76d      	b.n	82966 <_vfiprintf_r+0xda>
   82a8a:	f01a 0320 	ands.w	r3, sl, #32
   82a8e:	9004      	str	r0, [sp, #16]
   82a90:	46ac      	mov	ip, r5
   82a92:	f000 80f4 	beq.w	82c7e <_vfiprintf_r+0x3f2>
   82a96:	f8dd b020 	ldr.w	fp, [sp, #32]
   82a9a:	f10b 0307 	add.w	r3, fp, #7
   82a9e:	f023 0307 	bic.w	r3, r3, #7
   82aa2:	f103 0408 	add.w	r4, r3, #8
   82aa6:	9408      	str	r4, [sp, #32]
   82aa8:	e9d3 4500 	ldrd	r4, r5, [r3]
   82aac:	2300      	movs	r3, #0
   82aae:	f04f 0000 	mov.w	r0, #0
   82ab2:	2100      	movs	r1, #0
   82ab4:	f88d 0047 	strb.w	r0, [sp, #71]	; 0x47
   82ab8:	f8cd c014 	str.w	ip, [sp, #20]
   82abc:	9107      	str	r1, [sp, #28]
   82abe:	f1bc 0f00 	cmp.w	ip, #0
   82ac2:	bfa8      	it	ge
   82ac4:	f02a 0a80 	bicge.w	sl, sl, #128	; 0x80
   82ac8:	ea54 0205 	orrs.w	r2, r4, r5
   82acc:	f040 80ad 	bne.w	82c2a <_vfiprintf_r+0x39e>
   82ad0:	f1bc 0f00 	cmp.w	ip, #0
   82ad4:	f040 80a9 	bne.w	82c2a <_vfiprintf_r+0x39e>
   82ad8:	2b00      	cmp	r3, #0
   82ada:	f040 83c0 	bne.w	8325e <_vfiprintf_r+0x9d2>
   82ade:	f01a 0f01 	tst.w	sl, #1
   82ae2:	f000 83bc 	beq.w	8325e <_vfiprintf_r+0x9d2>
   82ae6:	2330      	movs	r3, #48	; 0x30
   82ae8:	af30      	add	r7, sp, #192	; 0xc0
   82aea:	f807 3d41 	strb.w	r3, [r7, #-65]!
   82aee:	ebc7 0409 	rsb	r4, r7, r9
   82af2:	9405      	str	r4, [sp, #20]
   82af4:	f8dd b014 	ldr.w	fp, [sp, #20]
   82af8:	9c07      	ldr	r4, [sp, #28]
   82afa:	45e3      	cmp	fp, ip
   82afc:	bfb8      	it	lt
   82afe:	46e3      	movlt	fp, ip
   82b00:	f8cd b00c 	str.w	fp, [sp, #12]
   82b04:	b11c      	cbz	r4, 82b0e <_vfiprintf_r+0x282>
   82b06:	f10b 0b01 	add.w	fp, fp, #1
   82b0a:	f8cd b00c 	str.w	fp, [sp, #12]
   82b0e:	f01a 0502 	ands.w	r5, sl, #2
   82b12:	9507      	str	r5, [sp, #28]
   82b14:	d005      	beq.n	82b22 <_vfiprintf_r+0x296>
   82b16:	f8dd b00c 	ldr.w	fp, [sp, #12]
   82b1a:	f10b 0b02 	add.w	fp, fp, #2
   82b1e:	f8cd b00c 	str.w	fp, [sp, #12]
   82b22:	f01a 0384 	ands.w	r3, sl, #132	; 0x84
   82b26:	930b      	str	r3, [sp, #44]	; 0x2c
   82b28:	f040 821b 	bne.w	82f62 <_vfiprintf_r+0x6d6>
   82b2c:	9d04      	ldr	r5, [sp, #16]
   82b2e:	f8dd b00c 	ldr.w	fp, [sp, #12]
   82b32:	ebcb 0405 	rsb	r4, fp, r5
   82b36:	2c00      	cmp	r4, #0
   82b38:	f340 8213 	ble.w	82f62 <_vfiprintf_r+0x6d6>
   82b3c:	2c10      	cmp	r4, #16
   82b3e:	f340 8489 	ble.w	83454 <_vfiprintf_r+0xbc8>
   82b42:	4dbe      	ldr	r5, [pc, #760]	; (82e3c <_vfiprintf_r+0x5b0>)
   82b44:	9a15      	ldr	r2, [sp, #84]	; 0x54
   82b46:	462b      	mov	r3, r5
   82b48:	9814      	ldr	r0, [sp, #80]	; 0x50
   82b4a:	4625      	mov	r5, r4
   82b4c:	f04f 0b10 	mov.w	fp, #16
   82b50:	4664      	mov	r4, ip
   82b52:	46b4      	mov	ip, r6
   82b54:	461e      	mov	r6, r3
   82b56:	e006      	b.n	82b66 <_vfiprintf_r+0x2da>
   82b58:	1c83      	adds	r3, r0, #2
   82b5a:	f10c 0c08 	add.w	ip, ip, #8
   82b5e:	4608      	mov	r0, r1
   82b60:	3d10      	subs	r5, #16
   82b62:	2d10      	cmp	r5, #16
   82b64:	dd11      	ble.n	82b8a <_vfiprintf_r+0x2fe>
   82b66:	1c41      	adds	r1, r0, #1
   82b68:	3210      	adds	r2, #16
   82b6a:	2907      	cmp	r1, #7
   82b6c:	9215      	str	r2, [sp, #84]	; 0x54
   82b6e:	e88c 0840 	stmia.w	ip, {r6, fp}
   82b72:	9114      	str	r1, [sp, #80]	; 0x50
   82b74:	ddf0      	ble.n	82b58 <_vfiprintf_r+0x2cc>
   82b76:	2a00      	cmp	r2, #0
   82b78:	f040 81e6 	bne.w	82f48 <_vfiprintf_r+0x6bc>
   82b7c:	3d10      	subs	r5, #16
   82b7e:	2d10      	cmp	r5, #16
   82b80:	f04f 0301 	mov.w	r3, #1
   82b84:	4610      	mov	r0, r2
   82b86:	46cc      	mov	ip, r9
   82b88:	dced      	bgt.n	82b66 <_vfiprintf_r+0x2da>
   82b8a:	4631      	mov	r1, r6
   82b8c:	4666      	mov	r6, ip
   82b8e:	46a4      	mov	ip, r4
   82b90:	462c      	mov	r4, r5
   82b92:	460d      	mov	r5, r1
   82b94:	4422      	add	r2, r4
   82b96:	2b07      	cmp	r3, #7
   82b98:	9215      	str	r2, [sp, #84]	; 0x54
   82b9a:	6035      	str	r5, [r6, #0]
   82b9c:	6074      	str	r4, [r6, #4]
   82b9e:	9314      	str	r3, [sp, #80]	; 0x50
   82ba0:	f300 836d 	bgt.w	8327e <_vfiprintf_r+0x9f2>
   82ba4:	3608      	adds	r6, #8
   82ba6:	1c59      	adds	r1, r3, #1
   82ba8:	e1de      	b.n	82f68 <_vfiprintf_r+0x6dc>
   82baa:	f01a 0f20 	tst.w	sl, #32
   82bae:	9004      	str	r0, [sp, #16]
   82bb0:	46ac      	mov	ip, r5
   82bb2:	f000 808d 	beq.w	82cd0 <_vfiprintf_r+0x444>
   82bb6:	9d08      	ldr	r5, [sp, #32]
   82bb8:	1deb      	adds	r3, r5, #7
   82bba:	f023 0307 	bic.w	r3, r3, #7
   82bbe:	f103 0b08 	add.w	fp, r3, #8
   82bc2:	e9d3 4500 	ldrd	r4, r5, [r3]
   82bc6:	f8cd b020 	str.w	fp, [sp, #32]
   82bca:	2301      	movs	r3, #1
   82bcc:	e76f      	b.n	82aae <_vfiprintf_r+0x222>
   82bce:	f04a 0a80 	orr.w	sl, sl, #128	; 0x80
   82bd2:	f898 3000 	ldrb.w	r3, [r8]
   82bd6:	e6c6      	b.n	82966 <_vfiprintf_r+0xda>
   82bd8:	f04a 0a10 	orr.w	sl, sl, #16
   82bdc:	f01a 0f20 	tst.w	sl, #32
   82be0:	9004      	str	r0, [sp, #16]
   82be2:	46ac      	mov	ip, r5
   82be4:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82be8:	f000 80c8 	beq.w	82d7c <_vfiprintf_r+0x4f0>
   82bec:	9c08      	ldr	r4, [sp, #32]
   82bee:	1de1      	adds	r1, r4, #7
   82bf0:	f021 0107 	bic.w	r1, r1, #7
   82bf4:	e9d1 2300 	ldrd	r2, r3, [r1]
   82bf8:	3108      	adds	r1, #8
   82bfa:	9108      	str	r1, [sp, #32]
   82bfc:	4614      	mov	r4, r2
   82bfe:	461d      	mov	r5, r3
   82c00:	2a00      	cmp	r2, #0
   82c02:	f173 0b00 	sbcs.w	fp, r3, #0
   82c06:	f2c0 83ce 	blt.w	833a6 <_vfiprintf_r+0xb1a>
   82c0a:	f1bc 0f00 	cmp.w	ip, #0
   82c0e:	f89d 0047 	ldrb.w	r0, [sp, #71]	; 0x47
   82c12:	bfa8      	it	ge
   82c14:	f02a 0a80 	bicge.w	sl, sl, #128	; 0x80
   82c18:	ea54 0205 	orrs.w	r2, r4, r5
   82c1c:	9007      	str	r0, [sp, #28]
   82c1e:	f8cd c014 	str.w	ip, [sp, #20]
   82c22:	f04f 0301 	mov.w	r3, #1
   82c26:	f43f af53 	beq.w	82ad0 <_vfiprintf_r+0x244>
   82c2a:	2b01      	cmp	r3, #1
   82c2c:	f000 8319 	beq.w	83262 <_vfiprintf_r+0x9d6>
   82c30:	2b02      	cmp	r3, #2
   82c32:	f10d 037f 	add.w	r3, sp, #127	; 0x7f
   82c36:	f040 824c 	bne.w	830d2 <_vfiprintf_r+0x846>
   82c3a:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
   82c3e:	4619      	mov	r1, r3
   82c40:	f004 000f 	and.w	r0, r4, #15
   82c44:	0922      	lsrs	r2, r4, #4
   82c46:	f81b 0000 	ldrb.w	r0, [fp, r0]
   82c4a:	ea42 7205 	orr.w	r2, r2, r5, lsl #28
   82c4e:	092b      	lsrs	r3, r5, #4
   82c50:	7008      	strb	r0, [r1, #0]
   82c52:	ea52 0003 	orrs.w	r0, r2, r3
   82c56:	460f      	mov	r7, r1
   82c58:	4614      	mov	r4, r2
   82c5a:	461d      	mov	r5, r3
   82c5c:	f101 31ff 	add.w	r1, r1, #4294967295	; 0xffffffff
   82c60:	d1ee      	bne.n	82c40 <_vfiprintf_r+0x3b4>
   82c62:	e9cd 230e 	strd	r2, r3, [sp, #56]	; 0x38
   82c66:	ebc7 0309 	rsb	r3, r7, r9
   82c6a:	9305      	str	r3, [sp, #20]
   82c6c:	e742      	b.n	82af4 <_vfiprintf_r+0x268>
   82c6e:	f04a 0a10 	orr.w	sl, sl, #16
   82c72:	f01a 0320 	ands.w	r3, sl, #32
   82c76:	9004      	str	r0, [sp, #16]
   82c78:	46ac      	mov	ip, r5
   82c7a:	f47f af0c 	bne.w	82a96 <_vfiprintf_r+0x20a>
   82c7e:	f01a 0210 	ands.w	r2, sl, #16
   82c82:	f040 8311 	bne.w	832a8 <_vfiprintf_r+0xa1c>
   82c86:	f01a 0340 	ands.w	r3, sl, #64	; 0x40
   82c8a:	f000 830d 	beq.w	832a8 <_vfiprintf_r+0xa1c>
   82c8e:	f8dd b020 	ldr.w	fp, [sp, #32]
   82c92:	4613      	mov	r3, r2
   82c94:	f8bb 4000 	ldrh.w	r4, [fp]
   82c98:	f10b 0b04 	add.w	fp, fp, #4
   82c9c:	2500      	movs	r5, #0
   82c9e:	f8cd b020 	str.w	fp, [sp, #32]
   82ca2:	e704      	b.n	82aae <_vfiprintf_r+0x222>
   82ca4:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
   82ca8:	2000      	movs	r0, #0
   82caa:	f818 3b01 	ldrb.w	r3, [r8], #1
   82cae:	eb00 0080 	add.w	r0, r0, r0, lsl #2
   82cb2:	eb02 0040 	add.w	r0, r2, r0, lsl #1
   82cb6:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
   82cba:	2a09      	cmp	r2, #9
   82cbc:	d9f5      	bls.n	82caa <_vfiprintf_r+0x41e>
   82cbe:	e654      	b.n	8296a <_vfiprintf_r+0xde>
   82cc0:	f04a 0a10 	orr.w	sl, sl, #16
   82cc4:	f01a 0f20 	tst.w	sl, #32
   82cc8:	9004      	str	r0, [sp, #16]
   82cca:	46ac      	mov	ip, r5
   82ccc:	f47f af73 	bne.w	82bb6 <_vfiprintf_r+0x32a>
   82cd0:	f01a 0f10 	tst.w	sl, #16
   82cd4:	f040 82ef 	bne.w	832b6 <_vfiprintf_r+0xa2a>
   82cd8:	f01a 0f40 	tst.w	sl, #64	; 0x40
   82cdc:	f000 82eb 	beq.w	832b6 <_vfiprintf_r+0xa2a>
   82ce0:	f8dd b020 	ldr.w	fp, [sp, #32]
   82ce4:	2500      	movs	r5, #0
   82ce6:	f8bb 4000 	ldrh.w	r4, [fp]
   82cea:	f10b 0b04 	add.w	fp, fp, #4
   82cee:	2301      	movs	r3, #1
   82cf0:	f8cd b020 	str.w	fp, [sp, #32]
   82cf4:	e6db      	b.n	82aae <_vfiprintf_r+0x222>
   82cf6:	46ac      	mov	ip, r5
   82cf8:	4d51      	ldr	r5, [pc, #324]	; (82e40 <_vfiprintf_r+0x5b4>)
   82cfa:	f01a 0f20 	tst.w	sl, #32
   82cfe:	9004      	str	r0, [sp, #16]
   82d00:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82d04:	950a      	str	r5, [sp, #40]	; 0x28
   82d06:	f000 80f0 	beq.w	82eea <_vfiprintf_r+0x65e>
   82d0a:	9d08      	ldr	r5, [sp, #32]
   82d0c:	1dea      	adds	r2, r5, #7
   82d0e:	f022 0207 	bic.w	r2, r2, #7
   82d12:	f102 0b08 	add.w	fp, r2, #8
   82d16:	f8cd b020 	str.w	fp, [sp, #32]
   82d1a:	e9d2 4500 	ldrd	r4, r5, [r2]
   82d1e:	f01a 0f01 	tst.w	sl, #1
   82d22:	f000 82aa 	beq.w	8327a <_vfiprintf_r+0x9ee>
   82d26:	ea54 0b05 	orrs.w	fp, r4, r5
   82d2a:	f000 82a6 	beq.w	8327a <_vfiprintf_r+0x9ee>
   82d2e:	2230      	movs	r2, #48	; 0x30
   82d30:	f88d 3049 	strb.w	r3, [sp, #73]	; 0x49
   82d34:	f04a 0a02 	orr.w	sl, sl, #2
   82d38:	f88d 2048 	strb.w	r2, [sp, #72]	; 0x48
   82d3c:	2302      	movs	r3, #2
   82d3e:	e6b6      	b.n	82aae <_vfiprintf_r+0x222>
   82d40:	9b08      	ldr	r3, [sp, #32]
   82d42:	f8dd b020 	ldr.w	fp, [sp, #32]
   82d46:	681b      	ldr	r3, [r3, #0]
   82d48:	2401      	movs	r4, #1
   82d4a:	f04f 0500 	mov.w	r5, #0
   82d4e:	f10b 0b04 	add.w	fp, fp, #4
   82d52:	9004      	str	r0, [sp, #16]
   82d54:	9403      	str	r4, [sp, #12]
   82d56:	f88d 5047 	strb.w	r5, [sp, #71]	; 0x47
   82d5a:	f88d 3058 	strb.w	r3, [sp, #88]	; 0x58
   82d5e:	f8cd b020 	str.w	fp, [sp, #32]
   82d62:	9405      	str	r4, [sp, #20]
   82d64:	af16      	add	r7, sp, #88	; 0x58
   82d66:	f04f 0c00 	mov.w	ip, #0
   82d6a:	e6d0      	b.n	82b0e <_vfiprintf_r+0x282>
   82d6c:	f01a 0f20 	tst.w	sl, #32
   82d70:	9004      	str	r0, [sp, #16]
   82d72:	46ac      	mov	ip, r5
   82d74:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82d78:	f47f af38 	bne.w	82bec <_vfiprintf_r+0x360>
   82d7c:	f01a 0f10 	tst.w	sl, #16
   82d80:	f040 82a7 	bne.w	832d2 <_vfiprintf_r+0xa46>
   82d84:	f01a 0f40 	tst.w	sl, #64	; 0x40
   82d88:	f000 82a3 	beq.w	832d2 <_vfiprintf_r+0xa46>
   82d8c:	f8dd b020 	ldr.w	fp, [sp, #32]
   82d90:	f9bb 4000 	ldrsh.w	r4, [fp]
   82d94:	f10b 0b04 	add.w	fp, fp, #4
   82d98:	17e5      	asrs	r5, r4, #31
   82d9a:	4622      	mov	r2, r4
   82d9c:	462b      	mov	r3, r5
   82d9e:	f8cd b020 	str.w	fp, [sp, #32]
   82da2:	e72d      	b.n	82c00 <_vfiprintf_r+0x374>
   82da4:	f04a 0a40 	orr.w	sl, sl, #64	; 0x40
   82da8:	f898 3000 	ldrb.w	r3, [r8]
   82dac:	e5db      	b.n	82966 <_vfiprintf_r+0xda>
   82dae:	f898 3000 	ldrb.w	r3, [r8]
   82db2:	4642      	mov	r2, r8
   82db4:	2b6c      	cmp	r3, #108	; 0x6c
   82db6:	bf03      	ittte	eq
   82db8:	f108 0801 	addeq.w	r8, r8, #1
   82dbc:	f04a 0a20 	orreq.w	sl, sl, #32
   82dc0:	7853      	ldrbeq	r3, [r2, #1]
   82dc2:	f04a 0a10 	orrne.w	sl, sl, #16
   82dc6:	e5ce      	b.n	82966 <_vfiprintf_r+0xda>
   82dc8:	f01a 0f20 	tst.w	sl, #32
   82dcc:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82dd0:	f000 82f7 	beq.w	833c2 <_vfiprintf_r+0xb36>
   82dd4:	9c08      	ldr	r4, [sp, #32]
   82dd6:	6821      	ldr	r1, [r4, #0]
   82dd8:	9c09      	ldr	r4, [sp, #36]	; 0x24
   82dda:	17e5      	asrs	r5, r4, #31
   82ddc:	462b      	mov	r3, r5
   82dde:	9d08      	ldr	r5, [sp, #32]
   82de0:	4622      	mov	r2, r4
   82de2:	3504      	adds	r5, #4
   82de4:	9508      	str	r5, [sp, #32]
   82de6:	e9c1 2300 	strd	r2, r3, [r1]
   82dea:	e582      	b.n	828f2 <_vfiprintf_r+0x66>
   82dec:	9c08      	ldr	r4, [sp, #32]
   82dee:	46ac      	mov	ip, r5
   82df0:	6827      	ldr	r7, [r4, #0]
   82df2:	f04f 0500 	mov.w	r5, #0
   82df6:	9004      	str	r0, [sp, #16]
   82df8:	f88d 5047 	strb.w	r5, [sp, #71]	; 0x47
   82dfc:	3404      	adds	r4, #4
   82dfe:	2f00      	cmp	r7, #0
   82e00:	f000 8332 	beq.w	83468 <_vfiprintf_r+0xbdc>
   82e04:	f1bc 0f00 	cmp.w	ip, #0
   82e08:	4638      	mov	r0, r7
   82e0a:	f2c0 8307 	blt.w	8341c <_vfiprintf_r+0xb90>
   82e0e:	4662      	mov	r2, ip
   82e10:	2100      	movs	r1, #0
   82e12:	f8cd c004 	str.w	ip, [sp, #4]
   82e16:	f001 fba7 	bl	84568 <memchr>
   82e1a:	f8dd c004 	ldr.w	ip, [sp, #4]
   82e1e:	2800      	cmp	r0, #0
   82e20:	f000 833a 	beq.w	83498 <_vfiprintf_r+0xc0c>
   82e24:	1bc0      	subs	r0, r0, r7
   82e26:	f89d 5047 	ldrb.w	r5, [sp, #71]	; 0x47
   82e2a:	4560      	cmp	r0, ip
   82e2c:	bfa8      	it	ge
   82e2e:	4660      	movge	r0, ip
   82e30:	9005      	str	r0, [sp, #20]
   82e32:	9408      	str	r4, [sp, #32]
   82e34:	9507      	str	r5, [sp, #28]
   82e36:	f04f 0c00 	mov.w	ip, #0
   82e3a:	e65b      	b.n	82af4 <_vfiprintf_r+0x268>
   82e3c:	000861ac 	.word	0x000861ac
   82e40:	000861bc 	.word	0x000861bc
   82e44:	9b08      	ldr	r3, [sp, #32]
   82e46:	f8dd b020 	ldr.w	fp, [sp, #32]
   82e4a:	9004      	str	r0, [sp, #16]
   82e4c:	48b2      	ldr	r0, [pc, #712]	; (83118 <_vfiprintf_r+0x88c>)
   82e4e:	681c      	ldr	r4, [r3, #0]
   82e50:	2230      	movs	r2, #48	; 0x30
   82e52:	2378      	movs	r3, #120	; 0x78
   82e54:	f10b 0b04 	add.w	fp, fp, #4
   82e58:	46ac      	mov	ip, r5
   82e5a:	f88d 3049 	strb.w	r3, [sp, #73]	; 0x49
   82e5e:	f04a 0a02 	orr.w	sl, sl, #2
   82e62:	f8cd b020 	str.w	fp, [sp, #32]
   82e66:	2500      	movs	r5, #0
   82e68:	f88d 2048 	strb.w	r2, [sp, #72]	; 0x48
   82e6c:	900a      	str	r0, [sp, #40]	; 0x28
   82e6e:	2302      	movs	r3, #2
   82e70:	e61d      	b.n	82aae <_vfiprintf_r+0x222>
   82e72:	f04a 0a20 	orr.w	sl, sl, #32
   82e76:	f898 3000 	ldrb.w	r3, [r8]
   82e7a:	e574      	b.n	82966 <_vfiprintf_r+0xda>
   82e7c:	f8dd b020 	ldr.w	fp, [sp, #32]
   82e80:	f8db 0000 	ldr.w	r0, [fp]
   82e84:	f10b 0304 	add.w	r3, fp, #4
   82e88:	2800      	cmp	r0, #0
   82e8a:	f6ff adf7 	blt.w	82a7c <_vfiprintf_r+0x1f0>
   82e8e:	9308      	str	r3, [sp, #32]
   82e90:	f898 3000 	ldrb.w	r3, [r8]
   82e94:	e567      	b.n	82966 <_vfiprintf_r+0xda>
   82e96:	f898 3000 	ldrb.w	r3, [r8]
   82e9a:	212b      	movs	r1, #43	; 0x2b
   82e9c:	e563      	b.n	82966 <_vfiprintf_r+0xda>
   82e9e:	f898 3000 	ldrb.w	r3, [r8]
   82ea2:	f108 0401 	add.w	r4, r8, #1
   82ea6:	2b2a      	cmp	r3, #42	; 0x2a
   82ea8:	f000 8305 	beq.w	834b6 <_vfiprintf_r+0xc2a>
   82eac:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
   82eb0:	2a09      	cmp	r2, #9
   82eb2:	bf98      	it	ls
   82eb4:	2500      	movls	r5, #0
   82eb6:	f200 82fa 	bhi.w	834ae <_vfiprintf_r+0xc22>
   82eba:	f814 3b01 	ldrb.w	r3, [r4], #1
   82ebe:	eb05 0585 	add.w	r5, r5, r5, lsl #2
   82ec2:	eb02 0545 	add.w	r5, r2, r5, lsl #1
   82ec6:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
   82eca:	2a09      	cmp	r2, #9
   82ecc:	d9f5      	bls.n	82eba <_vfiprintf_r+0x62e>
   82ece:	ea45 75e5 	orr.w	r5, r5, r5, asr #31
   82ed2:	46a0      	mov	r8, r4
   82ed4:	e549      	b.n	8296a <_vfiprintf_r+0xde>
   82ed6:	4c90      	ldr	r4, [pc, #576]	; (83118 <_vfiprintf_r+0x88c>)
   82ed8:	f01a 0f20 	tst.w	sl, #32
   82edc:	9004      	str	r0, [sp, #16]
   82ede:	46ac      	mov	ip, r5
   82ee0:	940a      	str	r4, [sp, #40]	; 0x28
   82ee2:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82ee6:	f47f af10 	bne.w	82d0a <_vfiprintf_r+0x47e>
   82eea:	f01a 0f10 	tst.w	sl, #16
   82eee:	f040 81ea 	bne.w	832c6 <_vfiprintf_r+0xa3a>
   82ef2:	f01a 0f40 	tst.w	sl, #64	; 0x40
   82ef6:	f000 81e6 	beq.w	832c6 <_vfiprintf_r+0xa3a>
   82efa:	f8dd b020 	ldr.w	fp, [sp, #32]
   82efe:	2500      	movs	r5, #0
   82f00:	f8bb 4000 	ldrh.w	r4, [fp]
   82f04:	f10b 0b04 	add.w	fp, fp, #4
   82f08:	f8cd b020 	str.w	fp, [sp, #32]
   82f0c:	e707      	b.n	82d1e <_vfiprintf_r+0x492>
   82f0e:	f898 3000 	ldrb.w	r3, [r8]
   82f12:	2900      	cmp	r1, #0
   82f14:	f47f ad27 	bne.w	82966 <_vfiprintf_r+0xda>
   82f18:	2120      	movs	r1, #32
   82f1a:	e524      	b.n	82966 <_vfiprintf_r+0xda>
   82f1c:	f04a 0a01 	orr.w	sl, sl, #1
   82f20:	f898 3000 	ldrb.w	r3, [r8]
   82f24:	e51f      	b.n	82966 <_vfiprintf_r+0xda>
   82f26:	9004      	str	r0, [sp, #16]
   82f28:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
   82f2c:	2b00      	cmp	r3, #0
   82f2e:	f000 80f9 	beq.w	83124 <_vfiprintf_r+0x898>
   82f32:	2501      	movs	r5, #1
   82f34:	f04f 0b00 	mov.w	fp, #0
   82f38:	9503      	str	r5, [sp, #12]
   82f3a:	f88d 3058 	strb.w	r3, [sp, #88]	; 0x58
   82f3e:	f88d b047 	strb.w	fp, [sp, #71]	; 0x47
   82f42:	9505      	str	r5, [sp, #20]
   82f44:	af16      	add	r7, sp, #88	; 0x58
   82f46:	e70e      	b.n	82d66 <_vfiprintf_r+0x4da>
   82f48:	9806      	ldr	r0, [sp, #24]
   82f4a:	9902      	ldr	r1, [sp, #8]
   82f4c:	aa13      	add	r2, sp, #76	; 0x4c
   82f4e:	f7ff fc61 	bl	82814 <__sprint_r.part.0>
   82f52:	2800      	cmp	r0, #0
   82f54:	f040 80ed 	bne.w	83132 <_vfiprintf_r+0x8a6>
   82f58:	9814      	ldr	r0, [sp, #80]	; 0x50
   82f5a:	9a15      	ldr	r2, [sp, #84]	; 0x54
   82f5c:	1c43      	adds	r3, r0, #1
   82f5e:	46cc      	mov	ip, r9
   82f60:	e5fe      	b.n	82b60 <_vfiprintf_r+0x2d4>
   82f62:	9b14      	ldr	r3, [sp, #80]	; 0x50
   82f64:	9a15      	ldr	r2, [sp, #84]	; 0x54
   82f66:	1c59      	adds	r1, r3, #1
   82f68:	f89d 0047 	ldrb.w	r0, [sp, #71]	; 0x47
   82f6c:	b168      	cbz	r0, 82f8a <_vfiprintf_r+0x6fe>
   82f6e:	3201      	adds	r2, #1
   82f70:	f10d 0047 	add.w	r0, sp, #71	; 0x47
   82f74:	2301      	movs	r3, #1
   82f76:	2907      	cmp	r1, #7
   82f78:	9215      	str	r2, [sp, #84]	; 0x54
   82f7a:	9114      	str	r1, [sp, #80]	; 0x50
   82f7c:	e886 0009 	stmia.w	r6, {r0, r3}
   82f80:	f300 8160 	bgt.w	83244 <_vfiprintf_r+0x9b8>
   82f84:	460b      	mov	r3, r1
   82f86:	3608      	adds	r6, #8
   82f88:	3101      	adds	r1, #1
   82f8a:	9c07      	ldr	r4, [sp, #28]
   82f8c:	b164      	cbz	r4, 82fa8 <_vfiprintf_r+0x71c>
   82f8e:	3202      	adds	r2, #2
   82f90:	a812      	add	r0, sp, #72	; 0x48
   82f92:	2302      	movs	r3, #2
   82f94:	2907      	cmp	r1, #7
   82f96:	9215      	str	r2, [sp, #84]	; 0x54
   82f98:	9114      	str	r1, [sp, #80]	; 0x50
   82f9a:	e886 0009 	stmia.w	r6, {r0, r3}
   82f9e:	f300 8157 	bgt.w	83250 <_vfiprintf_r+0x9c4>
   82fa2:	460b      	mov	r3, r1
   82fa4:	3608      	adds	r6, #8
   82fa6:	3101      	adds	r1, #1
   82fa8:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
   82faa:	2d80      	cmp	r5, #128	; 0x80
   82fac:	f000 8101 	beq.w	831b2 <_vfiprintf_r+0x926>
   82fb0:	9d05      	ldr	r5, [sp, #20]
   82fb2:	ebc5 040c 	rsb	r4, r5, ip
   82fb6:	2c00      	cmp	r4, #0
   82fb8:	dd2f      	ble.n	8301a <_vfiprintf_r+0x78e>
   82fba:	2c10      	cmp	r4, #16
   82fbc:	4d57      	ldr	r5, [pc, #348]	; (8311c <_vfiprintf_r+0x890>)
   82fbe:	dd22      	ble.n	83006 <_vfiprintf_r+0x77a>
   82fc0:	4630      	mov	r0, r6
   82fc2:	f04f 0b10 	mov.w	fp, #16
   82fc6:	462e      	mov	r6, r5
   82fc8:	4625      	mov	r5, r4
   82fca:	9c06      	ldr	r4, [sp, #24]
   82fcc:	e006      	b.n	82fdc <_vfiprintf_r+0x750>
   82fce:	f103 0c02 	add.w	ip, r3, #2
   82fd2:	3008      	adds	r0, #8
   82fd4:	460b      	mov	r3, r1
   82fd6:	3d10      	subs	r5, #16
   82fd8:	2d10      	cmp	r5, #16
   82fda:	dd10      	ble.n	82ffe <_vfiprintf_r+0x772>
   82fdc:	1c59      	adds	r1, r3, #1
   82fde:	3210      	adds	r2, #16
   82fe0:	2907      	cmp	r1, #7
   82fe2:	9215      	str	r2, [sp, #84]	; 0x54
   82fe4:	e880 0840 	stmia.w	r0, {r6, fp}
   82fe8:	9114      	str	r1, [sp, #80]	; 0x50
   82fea:	ddf0      	ble.n	82fce <_vfiprintf_r+0x742>
   82fec:	2a00      	cmp	r2, #0
   82fee:	d163      	bne.n	830b8 <_vfiprintf_r+0x82c>
   82ff0:	3d10      	subs	r5, #16
   82ff2:	2d10      	cmp	r5, #16
   82ff4:	f04f 0c01 	mov.w	ip, #1
   82ff8:	4613      	mov	r3, r2
   82ffa:	4648      	mov	r0, r9
   82ffc:	dcee      	bgt.n	82fdc <_vfiprintf_r+0x750>
   82ffe:	462c      	mov	r4, r5
   83000:	4661      	mov	r1, ip
   83002:	4635      	mov	r5, r6
   83004:	4606      	mov	r6, r0
   83006:	4422      	add	r2, r4
   83008:	2907      	cmp	r1, #7
   8300a:	9215      	str	r2, [sp, #84]	; 0x54
   8300c:	6035      	str	r5, [r6, #0]
   8300e:	6074      	str	r4, [r6, #4]
   83010:	9114      	str	r1, [sp, #80]	; 0x50
   83012:	f300 80c1 	bgt.w	83198 <_vfiprintf_r+0x90c>
   83016:	3608      	adds	r6, #8
   83018:	3101      	adds	r1, #1
   8301a:	9d05      	ldr	r5, [sp, #20]
   8301c:	2907      	cmp	r1, #7
   8301e:	442a      	add	r2, r5
   83020:	9215      	str	r2, [sp, #84]	; 0x54
   83022:	6037      	str	r7, [r6, #0]
   83024:	6075      	str	r5, [r6, #4]
   83026:	9114      	str	r1, [sp, #80]	; 0x50
   83028:	f340 80c1 	ble.w	831ae <_vfiprintf_r+0x922>
   8302c:	2a00      	cmp	r2, #0
   8302e:	f040 8130 	bne.w	83292 <_vfiprintf_r+0xa06>
   83032:	9214      	str	r2, [sp, #80]	; 0x50
   83034:	464e      	mov	r6, r9
   83036:	f01a 0f04 	tst.w	sl, #4
   8303a:	f000 808b 	beq.w	83154 <_vfiprintf_r+0x8c8>
   8303e:	9d04      	ldr	r5, [sp, #16]
   83040:	f8dd b00c 	ldr.w	fp, [sp, #12]
   83044:	ebcb 0405 	rsb	r4, fp, r5
   83048:	2c00      	cmp	r4, #0
   8304a:	f340 8083 	ble.w	83154 <_vfiprintf_r+0x8c8>
   8304e:	2c10      	cmp	r4, #16
   83050:	f340 821e 	ble.w	83490 <_vfiprintf_r+0xc04>
   83054:	9914      	ldr	r1, [sp, #80]	; 0x50
   83056:	4d32      	ldr	r5, [pc, #200]	; (83120 <_vfiprintf_r+0x894>)
   83058:	2710      	movs	r7, #16
   8305a:	f8dd a018 	ldr.w	sl, [sp, #24]
   8305e:	f8dd b008 	ldr.w	fp, [sp, #8]
   83062:	e005      	b.n	83070 <_vfiprintf_r+0x7e4>
   83064:	1c88      	adds	r0, r1, #2
   83066:	3608      	adds	r6, #8
   83068:	4619      	mov	r1, r3
   8306a:	3c10      	subs	r4, #16
   8306c:	2c10      	cmp	r4, #16
   8306e:	dd10      	ble.n	83092 <_vfiprintf_r+0x806>
   83070:	1c4b      	adds	r3, r1, #1
   83072:	3210      	adds	r2, #16
   83074:	2b07      	cmp	r3, #7
   83076:	9215      	str	r2, [sp, #84]	; 0x54
   83078:	e886 00a0 	stmia.w	r6, {r5, r7}
   8307c:	9314      	str	r3, [sp, #80]	; 0x50
   8307e:	ddf1      	ble.n	83064 <_vfiprintf_r+0x7d8>
   83080:	2a00      	cmp	r2, #0
   83082:	d17d      	bne.n	83180 <_vfiprintf_r+0x8f4>
   83084:	3c10      	subs	r4, #16
   83086:	2c10      	cmp	r4, #16
   83088:	f04f 0001 	mov.w	r0, #1
   8308c:	4611      	mov	r1, r2
   8308e:	464e      	mov	r6, r9
   83090:	dcee      	bgt.n	83070 <_vfiprintf_r+0x7e4>
   83092:	4422      	add	r2, r4
   83094:	2807      	cmp	r0, #7
   83096:	9215      	str	r2, [sp, #84]	; 0x54
   83098:	6035      	str	r5, [r6, #0]
   8309a:	6074      	str	r4, [r6, #4]
   8309c:	9014      	str	r0, [sp, #80]	; 0x50
   8309e:	dd59      	ble.n	83154 <_vfiprintf_r+0x8c8>
   830a0:	2a00      	cmp	r2, #0
   830a2:	d14f      	bne.n	83144 <_vfiprintf_r+0x8b8>
   830a4:	9c09      	ldr	r4, [sp, #36]	; 0x24
   830a6:	f8dd b00c 	ldr.w	fp, [sp, #12]
   830aa:	9d04      	ldr	r5, [sp, #16]
   830ac:	45ab      	cmp	fp, r5
   830ae:	bfac      	ite	ge
   830b0:	445c      	addge	r4, fp
   830b2:	1964      	addlt	r4, r4, r5
   830b4:	9409      	str	r4, [sp, #36]	; 0x24
   830b6:	e05e      	b.n	83176 <_vfiprintf_r+0x8ea>
   830b8:	4620      	mov	r0, r4
   830ba:	9902      	ldr	r1, [sp, #8]
   830bc:	aa13      	add	r2, sp, #76	; 0x4c
   830be:	f7ff fba9 	bl	82814 <__sprint_r.part.0>
   830c2:	2800      	cmp	r0, #0
   830c4:	d135      	bne.n	83132 <_vfiprintf_r+0x8a6>
   830c6:	9b14      	ldr	r3, [sp, #80]	; 0x50
   830c8:	9a15      	ldr	r2, [sp, #84]	; 0x54
   830ca:	f103 0c01 	add.w	ip, r3, #1
   830ce:	4648      	mov	r0, r9
   830d0:	e781      	b.n	82fd6 <_vfiprintf_r+0x74a>
   830d2:	08e0      	lsrs	r0, r4, #3
   830d4:	ea40 7045 	orr.w	r0, r0, r5, lsl #29
   830d8:	f004 0207 	and.w	r2, r4, #7
   830dc:	08e9      	lsrs	r1, r5, #3
   830de:	3230      	adds	r2, #48	; 0x30
   830e0:	ea50 0b01 	orrs.w	fp, r0, r1
   830e4:	461f      	mov	r7, r3
   830e6:	701a      	strb	r2, [r3, #0]
   830e8:	4604      	mov	r4, r0
   830ea:	460d      	mov	r5, r1
   830ec:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
   830f0:	d1ef      	bne.n	830d2 <_vfiprintf_r+0x846>
   830f2:	f01a 0f01 	tst.w	sl, #1
   830f6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
   830fa:	4639      	mov	r1, r7
   830fc:	f000 80b9 	beq.w	83272 <_vfiprintf_r+0x9e6>
   83100:	2a30      	cmp	r2, #48	; 0x30
   83102:	f43f acf4 	beq.w	82aee <_vfiprintf_r+0x262>
   83106:	461f      	mov	r7, r3
   83108:	ebc7 0509 	rsb	r5, r7, r9
   8310c:	2330      	movs	r3, #48	; 0x30
   8310e:	9505      	str	r5, [sp, #20]
   83110:	f801 3c01 	strb.w	r3, [r1, #-1]
   83114:	e4ee      	b.n	82af4 <_vfiprintf_r+0x268>
   83116:	bf00      	nop
   83118:	000861d0 	.word	0x000861d0
   8311c:	000861ec 	.word	0x000861ec
   83120:	000861ac 	.word	0x000861ac
   83124:	9b15      	ldr	r3, [sp, #84]	; 0x54
   83126:	b123      	cbz	r3, 83132 <_vfiprintf_r+0x8a6>
   83128:	9806      	ldr	r0, [sp, #24]
   8312a:	9902      	ldr	r1, [sp, #8]
   8312c:	aa13      	add	r2, sp, #76	; 0x4c
   8312e:	f7ff fb71 	bl	82814 <__sprint_r.part.0>
   83132:	9c02      	ldr	r4, [sp, #8]
   83134:	89a3      	ldrh	r3, [r4, #12]
   83136:	065b      	lsls	r3, r3, #25
   83138:	f53f ac98 	bmi.w	82a6c <_vfiprintf_r+0x1e0>
   8313c:	9809      	ldr	r0, [sp, #36]	; 0x24
   8313e:	b031      	add	sp, #196	; 0xc4
   83140:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   83144:	9806      	ldr	r0, [sp, #24]
   83146:	9902      	ldr	r1, [sp, #8]
   83148:	aa13      	add	r2, sp, #76	; 0x4c
   8314a:	f7ff fb63 	bl	82814 <__sprint_r.part.0>
   8314e:	2800      	cmp	r0, #0
   83150:	d1ef      	bne.n	83132 <_vfiprintf_r+0x8a6>
   83152:	9a15      	ldr	r2, [sp, #84]	; 0x54
   83154:	9c09      	ldr	r4, [sp, #36]	; 0x24
   83156:	f8dd b00c 	ldr.w	fp, [sp, #12]
   8315a:	9d04      	ldr	r5, [sp, #16]
   8315c:	45ab      	cmp	fp, r5
   8315e:	bfac      	ite	ge
   83160:	445c      	addge	r4, fp
   83162:	1964      	addlt	r4, r4, r5
   83164:	9409      	str	r4, [sp, #36]	; 0x24
   83166:	b132      	cbz	r2, 83176 <_vfiprintf_r+0x8ea>
   83168:	9806      	ldr	r0, [sp, #24]
   8316a:	9902      	ldr	r1, [sp, #8]
   8316c:	aa13      	add	r2, sp, #76	; 0x4c
   8316e:	f7ff fb51 	bl	82814 <__sprint_r.part.0>
   83172:	2800      	cmp	r0, #0
   83174:	d1dd      	bne.n	83132 <_vfiprintf_r+0x8a6>
   83176:	2000      	movs	r0, #0
   83178:	9014      	str	r0, [sp, #80]	; 0x50
   8317a:	464e      	mov	r6, r9
   8317c:	f7ff bbb9 	b.w	828f2 <_vfiprintf_r+0x66>
   83180:	4650      	mov	r0, sl
   83182:	4659      	mov	r1, fp
   83184:	aa13      	add	r2, sp, #76	; 0x4c
   83186:	f7ff fb45 	bl	82814 <__sprint_r.part.0>
   8318a:	2800      	cmp	r0, #0
   8318c:	d1d1      	bne.n	83132 <_vfiprintf_r+0x8a6>
   8318e:	9914      	ldr	r1, [sp, #80]	; 0x50
   83190:	9a15      	ldr	r2, [sp, #84]	; 0x54
   83192:	1c48      	adds	r0, r1, #1
   83194:	464e      	mov	r6, r9
   83196:	e768      	b.n	8306a <_vfiprintf_r+0x7de>
   83198:	2a00      	cmp	r2, #0
   8319a:	f040 80f7 	bne.w	8338c <_vfiprintf_r+0xb00>
   8319e:	9c05      	ldr	r4, [sp, #20]
   831a0:	2301      	movs	r3, #1
   831a2:	9720      	str	r7, [sp, #128]	; 0x80
   831a4:	9421      	str	r4, [sp, #132]	; 0x84
   831a6:	9415      	str	r4, [sp, #84]	; 0x54
   831a8:	4622      	mov	r2, r4
   831aa:	9314      	str	r3, [sp, #80]	; 0x50
   831ac:	464e      	mov	r6, r9
   831ae:	3608      	adds	r6, #8
   831b0:	e741      	b.n	83036 <_vfiprintf_r+0x7aa>
   831b2:	9d04      	ldr	r5, [sp, #16]
   831b4:	f8dd b00c 	ldr.w	fp, [sp, #12]
   831b8:	ebcb 0405 	rsb	r4, fp, r5
   831bc:	2c00      	cmp	r4, #0
   831be:	f77f aef7 	ble.w	82fb0 <_vfiprintf_r+0x724>
   831c2:	2c10      	cmp	r4, #16
   831c4:	4da6      	ldr	r5, [pc, #664]	; (83460 <_vfiprintf_r+0xbd4>)
   831c6:	f340 8170 	ble.w	834aa <_vfiprintf_r+0xc1e>
   831ca:	4629      	mov	r1, r5
   831cc:	f04f 0b10 	mov.w	fp, #16
   831d0:	4625      	mov	r5, r4
   831d2:	4664      	mov	r4, ip
   831d4:	46b4      	mov	ip, r6
   831d6:	460e      	mov	r6, r1
   831d8:	e006      	b.n	831e8 <_vfiprintf_r+0x95c>
   831da:	1c98      	adds	r0, r3, #2
   831dc:	f10c 0c08 	add.w	ip, ip, #8
   831e0:	460b      	mov	r3, r1
   831e2:	3d10      	subs	r5, #16
   831e4:	2d10      	cmp	r5, #16
   831e6:	dd0f      	ble.n	83208 <_vfiprintf_r+0x97c>
   831e8:	1c59      	adds	r1, r3, #1
   831ea:	3210      	adds	r2, #16
   831ec:	2907      	cmp	r1, #7
   831ee:	9215      	str	r2, [sp, #84]	; 0x54
   831f0:	e88c 0840 	stmia.w	ip, {r6, fp}
   831f4:	9114      	str	r1, [sp, #80]	; 0x50
   831f6:	ddf0      	ble.n	831da <_vfiprintf_r+0x94e>
   831f8:	b9ba      	cbnz	r2, 8322a <_vfiprintf_r+0x99e>
   831fa:	3d10      	subs	r5, #16
   831fc:	2d10      	cmp	r5, #16
   831fe:	f04f 0001 	mov.w	r0, #1
   83202:	4613      	mov	r3, r2
   83204:	46cc      	mov	ip, r9
   83206:	dcef      	bgt.n	831e8 <_vfiprintf_r+0x95c>
   83208:	4633      	mov	r3, r6
   8320a:	4666      	mov	r6, ip
   8320c:	46a4      	mov	ip, r4
   8320e:	462c      	mov	r4, r5
   83210:	461d      	mov	r5, r3
   83212:	4422      	add	r2, r4
   83214:	2807      	cmp	r0, #7
   83216:	9215      	str	r2, [sp, #84]	; 0x54
   83218:	6035      	str	r5, [r6, #0]
   8321a:	6074      	str	r4, [r6, #4]
   8321c:	9014      	str	r0, [sp, #80]	; 0x50
   8321e:	f300 80af 	bgt.w	83380 <_vfiprintf_r+0xaf4>
   83222:	3608      	adds	r6, #8
   83224:	1c41      	adds	r1, r0, #1
   83226:	4603      	mov	r3, r0
   83228:	e6c2      	b.n	82fb0 <_vfiprintf_r+0x724>
   8322a:	9806      	ldr	r0, [sp, #24]
   8322c:	9902      	ldr	r1, [sp, #8]
   8322e:	aa13      	add	r2, sp, #76	; 0x4c
   83230:	f7ff faf0 	bl	82814 <__sprint_r.part.0>
   83234:	2800      	cmp	r0, #0
   83236:	f47f af7c 	bne.w	83132 <_vfiprintf_r+0x8a6>
   8323a:	9b14      	ldr	r3, [sp, #80]	; 0x50
   8323c:	9a15      	ldr	r2, [sp, #84]	; 0x54
   8323e:	1c58      	adds	r0, r3, #1
   83240:	46cc      	mov	ip, r9
   83242:	e7ce      	b.n	831e2 <_vfiprintf_r+0x956>
   83244:	2a00      	cmp	r2, #0
   83246:	d179      	bne.n	8333c <_vfiprintf_r+0xab0>
   83248:	4619      	mov	r1, r3
   8324a:	464e      	mov	r6, r9
   8324c:	4613      	mov	r3, r2
   8324e:	e69c      	b.n	82f8a <_vfiprintf_r+0x6fe>
   83250:	2a00      	cmp	r2, #0
   83252:	f040 8084 	bne.w	8335e <_vfiprintf_r+0xad2>
   83256:	2101      	movs	r1, #1
   83258:	4613      	mov	r3, r2
   8325a:	464e      	mov	r6, r9
   8325c:	e6a4      	b.n	82fa8 <_vfiprintf_r+0x71c>
   8325e:	464f      	mov	r7, r9
   83260:	e448      	b.n	82af4 <_vfiprintf_r+0x268>
   83262:	2d00      	cmp	r5, #0
   83264:	bf08      	it	eq
   83266:	2c0a      	cmpeq	r4, #10
   83268:	d246      	bcs.n	832f8 <_vfiprintf_r+0xa6c>
   8326a:	3430      	adds	r4, #48	; 0x30
   8326c:	af30      	add	r7, sp, #192	; 0xc0
   8326e:	f807 4d41 	strb.w	r4, [r7, #-65]!
   83272:	ebc7 0309 	rsb	r3, r7, r9
   83276:	9305      	str	r3, [sp, #20]
   83278:	e43c      	b.n	82af4 <_vfiprintf_r+0x268>
   8327a:	2302      	movs	r3, #2
   8327c:	e417      	b.n	82aae <_vfiprintf_r+0x222>
   8327e:	2a00      	cmp	r2, #0
   83280:	f040 80af 	bne.w	833e2 <_vfiprintf_r+0xb56>
   83284:	4613      	mov	r3, r2
   83286:	2101      	movs	r1, #1
   83288:	464e      	mov	r6, r9
   8328a:	e66d      	b.n	82f68 <_vfiprintf_r+0x6dc>
   8328c:	4644      	mov	r4, r8
   8328e:	f7ff bb58 	b.w	82942 <_vfiprintf_r+0xb6>
   83292:	9806      	ldr	r0, [sp, #24]
   83294:	9902      	ldr	r1, [sp, #8]
   83296:	aa13      	add	r2, sp, #76	; 0x4c
   83298:	f7ff fabc 	bl	82814 <__sprint_r.part.0>
   8329c:	2800      	cmp	r0, #0
   8329e:	f47f af48 	bne.w	83132 <_vfiprintf_r+0x8a6>
   832a2:	9a15      	ldr	r2, [sp, #84]	; 0x54
   832a4:	464e      	mov	r6, r9
   832a6:	e6c6      	b.n	83036 <_vfiprintf_r+0x7aa>
   832a8:	9d08      	ldr	r5, [sp, #32]
   832aa:	682c      	ldr	r4, [r5, #0]
   832ac:	3504      	adds	r5, #4
   832ae:	9508      	str	r5, [sp, #32]
   832b0:	2500      	movs	r5, #0
   832b2:	f7ff bbfc 	b.w	82aae <_vfiprintf_r+0x222>
   832b6:	9d08      	ldr	r5, [sp, #32]
   832b8:	2301      	movs	r3, #1
   832ba:	682c      	ldr	r4, [r5, #0]
   832bc:	3504      	adds	r5, #4
   832be:	9508      	str	r5, [sp, #32]
   832c0:	2500      	movs	r5, #0
   832c2:	f7ff bbf4 	b.w	82aae <_vfiprintf_r+0x222>
   832c6:	9d08      	ldr	r5, [sp, #32]
   832c8:	682c      	ldr	r4, [r5, #0]
   832ca:	3504      	adds	r5, #4
   832cc:	9508      	str	r5, [sp, #32]
   832ce:	2500      	movs	r5, #0
   832d0:	e525      	b.n	82d1e <_vfiprintf_r+0x492>
   832d2:	9d08      	ldr	r5, [sp, #32]
   832d4:	682c      	ldr	r4, [r5, #0]
   832d6:	3504      	adds	r5, #4
   832d8:	9508      	str	r5, [sp, #32]
   832da:	17e5      	asrs	r5, r4, #31
   832dc:	4622      	mov	r2, r4
   832de:	462b      	mov	r3, r5
   832e0:	e48e      	b.n	82c00 <_vfiprintf_r+0x374>
   832e2:	9806      	ldr	r0, [sp, #24]
   832e4:	9902      	ldr	r1, [sp, #8]
   832e6:	aa13      	add	r2, sp, #76	; 0x4c
   832e8:	f7ff fa94 	bl	82814 <__sprint_r.part.0>
   832ec:	2800      	cmp	r0, #0
   832ee:	f47f af20 	bne.w	83132 <_vfiprintf_r+0x8a6>
   832f2:	464e      	mov	r6, r9
   832f4:	f7ff bb9a 	b.w	82a2c <_vfiprintf_r+0x1a0>
   832f8:	f10d 0b7f 	add.w	fp, sp, #127	; 0x7f
   832fc:	9603      	str	r6, [sp, #12]
   832fe:	465e      	mov	r6, fp
   83300:	46e3      	mov	fp, ip
   83302:	4620      	mov	r0, r4
   83304:	4629      	mov	r1, r5
   83306:	220a      	movs	r2, #10
   83308:	2300      	movs	r3, #0
   8330a:	f001 fe39 	bl	84f80 <__aeabi_uldivmod>
   8330e:	3230      	adds	r2, #48	; 0x30
   83310:	7032      	strb	r2, [r6, #0]
   83312:	4620      	mov	r0, r4
   83314:	4629      	mov	r1, r5
   83316:	220a      	movs	r2, #10
   83318:	2300      	movs	r3, #0
   8331a:	f001 fe31 	bl	84f80 <__aeabi_uldivmod>
   8331e:	4604      	mov	r4, r0
   83320:	460d      	mov	r5, r1
   83322:	ea54 0005 	orrs.w	r0, r4, r5
   83326:	4637      	mov	r7, r6
   83328:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
   8332c:	d1e9      	bne.n	83302 <_vfiprintf_r+0xa76>
   8332e:	ebc7 0309 	rsb	r3, r7, r9
   83332:	46dc      	mov	ip, fp
   83334:	9e03      	ldr	r6, [sp, #12]
   83336:	9305      	str	r3, [sp, #20]
   83338:	f7ff bbdc 	b.w	82af4 <_vfiprintf_r+0x268>
   8333c:	9806      	ldr	r0, [sp, #24]
   8333e:	9902      	ldr	r1, [sp, #8]
   83340:	aa13      	add	r2, sp, #76	; 0x4c
   83342:	f8cd c004 	str.w	ip, [sp, #4]
   83346:	f7ff fa65 	bl	82814 <__sprint_r.part.0>
   8334a:	f8dd c004 	ldr.w	ip, [sp, #4]
   8334e:	2800      	cmp	r0, #0
   83350:	f47f aeef 	bne.w	83132 <_vfiprintf_r+0x8a6>
   83354:	9b14      	ldr	r3, [sp, #80]	; 0x50
   83356:	9a15      	ldr	r2, [sp, #84]	; 0x54
   83358:	1c59      	adds	r1, r3, #1
   8335a:	464e      	mov	r6, r9
   8335c:	e615      	b.n	82f8a <_vfiprintf_r+0x6fe>
   8335e:	9806      	ldr	r0, [sp, #24]
   83360:	9902      	ldr	r1, [sp, #8]
   83362:	aa13      	add	r2, sp, #76	; 0x4c
   83364:	f8cd c004 	str.w	ip, [sp, #4]
   83368:	f7ff fa54 	bl	82814 <__sprint_r.part.0>
   8336c:	f8dd c004 	ldr.w	ip, [sp, #4]
   83370:	2800      	cmp	r0, #0
   83372:	f47f aede 	bne.w	83132 <_vfiprintf_r+0x8a6>
   83376:	9b14      	ldr	r3, [sp, #80]	; 0x50
   83378:	9a15      	ldr	r2, [sp, #84]	; 0x54
   8337a:	1c59      	adds	r1, r3, #1
   8337c:	464e      	mov	r6, r9
   8337e:	e613      	b.n	82fa8 <_vfiprintf_r+0x71c>
   83380:	2a00      	cmp	r2, #0
   83382:	d156      	bne.n	83432 <_vfiprintf_r+0xba6>
   83384:	2101      	movs	r1, #1
   83386:	4613      	mov	r3, r2
   83388:	464e      	mov	r6, r9
   8338a:	e611      	b.n	82fb0 <_vfiprintf_r+0x724>
   8338c:	9806      	ldr	r0, [sp, #24]
   8338e:	9902      	ldr	r1, [sp, #8]
   83390:	aa13      	add	r2, sp, #76	; 0x4c
   83392:	f7ff fa3f 	bl	82814 <__sprint_r.part.0>
   83396:	2800      	cmp	r0, #0
   83398:	f47f aecb 	bne.w	83132 <_vfiprintf_r+0x8a6>
   8339c:	9914      	ldr	r1, [sp, #80]	; 0x50
   8339e:	9a15      	ldr	r2, [sp, #84]	; 0x54
   833a0:	3101      	adds	r1, #1
   833a2:	464e      	mov	r6, r9
   833a4:	e639      	b.n	8301a <_vfiprintf_r+0x78e>
   833a6:	f04f 0b2d 	mov.w	fp, #45	; 0x2d
   833aa:	4264      	negs	r4, r4
   833ac:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
   833b0:	f88d b047 	strb.w	fp, [sp, #71]	; 0x47
   833b4:	f8cd b01c 	str.w	fp, [sp, #28]
   833b8:	f8cd c014 	str.w	ip, [sp, #20]
   833bc:	2301      	movs	r3, #1
   833be:	f7ff bb7e 	b.w	82abe <_vfiprintf_r+0x232>
   833c2:	f01a 0f10 	tst.w	sl, #16
   833c6:	d11d      	bne.n	83404 <_vfiprintf_r+0xb78>
   833c8:	f01a 0f40 	tst.w	sl, #64	; 0x40
   833cc:	d058      	beq.n	83480 <_vfiprintf_r+0xbf4>
   833ce:	9d08      	ldr	r5, [sp, #32]
   833d0:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
   833d4:	682b      	ldr	r3, [r5, #0]
   833d6:	3504      	adds	r5, #4
   833d8:	9508      	str	r5, [sp, #32]
   833da:	f8a3 b000 	strh.w	fp, [r3]
   833de:	f7ff ba88 	b.w	828f2 <_vfiprintf_r+0x66>
   833e2:	9806      	ldr	r0, [sp, #24]
   833e4:	9902      	ldr	r1, [sp, #8]
   833e6:	aa13      	add	r2, sp, #76	; 0x4c
   833e8:	f8cd c004 	str.w	ip, [sp, #4]
   833ec:	f7ff fa12 	bl	82814 <__sprint_r.part.0>
   833f0:	f8dd c004 	ldr.w	ip, [sp, #4]
   833f4:	2800      	cmp	r0, #0
   833f6:	f47f ae9c 	bne.w	83132 <_vfiprintf_r+0x8a6>
   833fa:	9b14      	ldr	r3, [sp, #80]	; 0x50
   833fc:	9a15      	ldr	r2, [sp, #84]	; 0x54
   833fe:	1c59      	adds	r1, r3, #1
   83400:	464e      	mov	r6, r9
   83402:	e5b1      	b.n	82f68 <_vfiprintf_r+0x6dc>
   83404:	f8dd b020 	ldr.w	fp, [sp, #32]
   83408:	9c09      	ldr	r4, [sp, #36]	; 0x24
   8340a:	f8db 3000 	ldr.w	r3, [fp]
   8340e:	f10b 0b04 	add.w	fp, fp, #4
   83412:	f8cd b020 	str.w	fp, [sp, #32]
   83416:	601c      	str	r4, [r3, #0]
   83418:	f7ff ba6b 	b.w	828f2 <_vfiprintf_r+0x66>
   8341c:	9408      	str	r4, [sp, #32]
   8341e:	f7ff f9c1 	bl	827a4 <strlen>
   83422:	f89d 4047 	ldrb.w	r4, [sp, #71]	; 0x47
   83426:	9005      	str	r0, [sp, #20]
   83428:	9407      	str	r4, [sp, #28]
   8342a:	f04f 0c00 	mov.w	ip, #0
   8342e:	f7ff bb61 	b.w	82af4 <_vfiprintf_r+0x268>
   83432:	9806      	ldr	r0, [sp, #24]
   83434:	9902      	ldr	r1, [sp, #8]
   83436:	aa13      	add	r2, sp, #76	; 0x4c
   83438:	f8cd c004 	str.w	ip, [sp, #4]
   8343c:	f7ff f9ea 	bl	82814 <__sprint_r.part.0>
   83440:	f8dd c004 	ldr.w	ip, [sp, #4]
   83444:	2800      	cmp	r0, #0
   83446:	f47f ae74 	bne.w	83132 <_vfiprintf_r+0x8a6>
   8344a:	9b14      	ldr	r3, [sp, #80]	; 0x50
   8344c:	9a15      	ldr	r2, [sp, #84]	; 0x54
   8344e:	1c59      	adds	r1, r3, #1
   83450:	464e      	mov	r6, r9
   83452:	e5ad      	b.n	82fb0 <_vfiprintf_r+0x724>
   83454:	9b14      	ldr	r3, [sp, #80]	; 0x50
   83456:	9a15      	ldr	r2, [sp, #84]	; 0x54
   83458:	3301      	adds	r3, #1
   8345a:	4d02      	ldr	r5, [pc, #8]	; (83464 <_vfiprintf_r+0xbd8>)
   8345c:	f7ff bb9a 	b.w	82b94 <_vfiprintf_r+0x308>
   83460:	000861ec 	.word	0x000861ec
   83464:	000861ac 	.word	0x000861ac
   83468:	f1bc 0f06 	cmp.w	ip, #6
   8346c:	bf34      	ite	cc
   8346e:	4663      	movcc	r3, ip
   83470:	2306      	movcs	r3, #6
   83472:	9408      	str	r4, [sp, #32]
   83474:	ea23 74e3 	bic.w	r4, r3, r3, asr #31
   83478:	9305      	str	r3, [sp, #20]
   8347a:	9403      	str	r4, [sp, #12]
   8347c:	4f16      	ldr	r7, [pc, #88]	; (834d8 <_vfiprintf_r+0xc4c>)
   8347e:	e472      	b.n	82d66 <_vfiprintf_r+0x4da>
   83480:	9c08      	ldr	r4, [sp, #32]
   83482:	9d09      	ldr	r5, [sp, #36]	; 0x24
   83484:	6823      	ldr	r3, [r4, #0]
   83486:	3404      	adds	r4, #4
   83488:	9408      	str	r4, [sp, #32]
   8348a:	601d      	str	r5, [r3, #0]
   8348c:	f7ff ba31 	b.w	828f2 <_vfiprintf_r+0x66>
   83490:	9814      	ldr	r0, [sp, #80]	; 0x50
   83492:	4d12      	ldr	r5, [pc, #72]	; (834dc <_vfiprintf_r+0xc50>)
   83494:	3001      	adds	r0, #1
   83496:	e5fc      	b.n	83092 <_vfiprintf_r+0x806>
   83498:	f89d 5047 	ldrb.w	r5, [sp, #71]	; 0x47
   8349c:	f8cd c014 	str.w	ip, [sp, #20]
   834a0:	9507      	str	r5, [sp, #28]
   834a2:	9408      	str	r4, [sp, #32]
   834a4:	4684      	mov	ip, r0
   834a6:	f7ff bb25 	b.w	82af4 <_vfiprintf_r+0x268>
   834aa:	4608      	mov	r0, r1
   834ac:	e6b1      	b.n	83212 <_vfiprintf_r+0x986>
   834ae:	46a0      	mov	r8, r4
   834b0:	2500      	movs	r5, #0
   834b2:	f7ff ba5a 	b.w	8296a <_vfiprintf_r+0xde>
   834b6:	f8dd b020 	ldr.w	fp, [sp, #32]
   834ba:	f898 3001 	ldrb.w	r3, [r8, #1]
   834be:	f8db 5000 	ldr.w	r5, [fp]
   834c2:	f10b 0204 	add.w	r2, fp, #4
   834c6:	2d00      	cmp	r5, #0
   834c8:	9208      	str	r2, [sp, #32]
   834ca:	46a0      	mov	r8, r4
   834cc:	f6bf aa4b 	bge.w	82966 <_vfiprintf_r+0xda>
   834d0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
   834d4:	f7ff ba47 	b.w	82966 <_vfiprintf_r+0xda>
   834d8:	000861e4 	.word	0x000861e4
   834dc:	000861ac 	.word	0x000861ac

000834e0 <__sbprintf>:
   834e0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
   834e4:	6e4f      	ldr	r7, [r1, #100]	; 0x64
   834e6:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
   834ea:	4688      	mov	r8, r1
   834ec:	9719      	str	r7, [sp, #100]	; 0x64
   834ee:	f8d8 701c 	ldr.w	r7, [r8, #28]
   834f2:	f8b1 a00c 	ldrh.w	sl, [r1, #12]
   834f6:	f8b1 900e 	ldrh.w	r9, [r1, #14]
   834fa:	9707      	str	r7, [sp, #28]
   834fc:	f8d8 7024 	ldr.w	r7, [r8, #36]	; 0x24
   83500:	ac1a      	add	r4, sp, #104	; 0x68
   83502:	f44f 6580 	mov.w	r5, #1024	; 0x400
   83506:	f02a 0a02 	bic.w	sl, sl, #2
   8350a:	2600      	movs	r6, #0
   8350c:	4669      	mov	r1, sp
   8350e:	9400      	str	r4, [sp, #0]
   83510:	9404      	str	r4, [sp, #16]
   83512:	9502      	str	r5, [sp, #8]
   83514:	9505      	str	r5, [sp, #20]
   83516:	f8ad a00c 	strh.w	sl, [sp, #12]
   8351a:	f8ad 900e 	strh.w	r9, [sp, #14]
   8351e:	9709      	str	r7, [sp, #36]	; 0x24
   83520:	9606      	str	r6, [sp, #24]
   83522:	4605      	mov	r5, r0
   83524:	f7ff f9b2 	bl	8288c <_vfiprintf_r>
   83528:	1e04      	subs	r4, r0, #0
   8352a:	db07      	blt.n	8353c <__sbprintf+0x5c>
   8352c:	4628      	mov	r0, r5
   8352e:	4669      	mov	r1, sp
   83530:	f000 f92a 	bl	83788 <_fflush_r>
   83534:	42b0      	cmp	r0, r6
   83536:	bf18      	it	ne
   83538:	f04f 34ff 	movne.w	r4, #4294967295	; 0xffffffff
   8353c:	f8bd 300c 	ldrh.w	r3, [sp, #12]
   83540:	065b      	lsls	r3, r3, #25
   83542:	d505      	bpl.n	83550 <__sbprintf+0x70>
   83544:	f8b8 300c 	ldrh.w	r3, [r8, #12]
   83548:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   8354c:	f8a8 300c 	strh.w	r3, [r8, #12]
   83550:	4620      	mov	r0, r4
   83552:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
   83556:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
   8355a:	bf00      	nop

0008355c <__swsetup_r>:
   8355c:	4b2f      	ldr	r3, [pc, #188]	; (8361c <__swsetup_r+0xc0>)
   8355e:	b570      	push	{r4, r5, r6, lr}
   83560:	4606      	mov	r6, r0
   83562:	6818      	ldr	r0, [r3, #0]
   83564:	460c      	mov	r4, r1
   83566:	b110      	cbz	r0, 8356e <__swsetup_r+0x12>
   83568:	6b82      	ldr	r2, [r0, #56]	; 0x38
   8356a:	2a00      	cmp	r2, #0
   8356c:	d036      	beq.n	835dc <__swsetup_r+0x80>
   8356e:	89a5      	ldrh	r5, [r4, #12]
   83570:	b2ab      	uxth	r3, r5
   83572:	0719      	lsls	r1, r3, #28
   83574:	d50c      	bpl.n	83590 <__swsetup_r+0x34>
   83576:	6922      	ldr	r2, [r4, #16]
   83578:	b1aa      	cbz	r2, 835a6 <__swsetup_r+0x4a>
   8357a:	f013 0101 	ands.w	r1, r3, #1
   8357e:	d01e      	beq.n	835be <__swsetup_r+0x62>
   83580:	6963      	ldr	r3, [r4, #20]
   83582:	2100      	movs	r1, #0
   83584:	425b      	negs	r3, r3
   83586:	61a3      	str	r3, [r4, #24]
   83588:	60a1      	str	r1, [r4, #8]
   8358a:	b1f2      	cbz	r2, 835ca <__swsetup_r+0x6e>
   8358c:	2000      	movs	r0, #0
   8358e:	bd70      	pop	{r4, r5, r6, pc}
   83590:	06da      	lsls	r2, r3, #27
   83592:	d53a      	bpl.n	8360a <__swsetup_r+0xae>
   83594:	075b      	lsls	r3, r3, #29
   83596:	d424      	bmi.n	835e2 <__swsetup_r+0x86>
   83598:	6922      	ldr	r2, [r4, #16]
   8359a:	f045 0308 	orr.w	r3, r5, #8
   8359e:	81a3      	strh	r3, [r4, #12]
   835a0:	b29b      	uxth	r3, r3
   835a2:	2a00      	cmp	r2, #0
   835a4:	d1e9      	bne.n	8357a <__swsetup_r+0x1e>
   835a6:	f403 7120 	and.w	r1, r3, #640	; 0x280
   835aa:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
   835ae:	d0e4      	beq.n	8357a <__swsetup_r+0x1e>
   835b0:	4630      	mov	r0, r6
   835b2:	4621      	mov	r1, r4
   835b4:	f000 fccc 	bl	83f50 <__smakebuf_r>
   835b8:	89a3      	ldrh	r3, [r4, #12]
   835ba:	6922      	ldr	r2, [r4, #16]
   835bc:	e7dd      	b.n	8357a <__swsetup_r+0x1e>
   835be:	0798      	lsls	r0, r3, #30
   835c0:	bf58      	it	pl
   835c2:	6961      	ldrpl	r1, [r4, #20]
   835c4:	60a1      	str	r1, [r4, #8]
   835c6:	2a00      	cmp	r2, #0
   835c8:	d1e0      	bne.n	8358c <__swsetup_r+0x30>
   835ca:	89a3      	ldrh	r3, [r4, #12]
   835cc:	061a      	lsls	r2, r3, #24
   835ce:	d5dd      	bpl.n	8358c <__swsetup_r+0x30>
   835d0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   835d4:	81a3      	strh	r3, [r4, #12]
   835d6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   835da:	bd70      	pop	{r4, r5, r6, pc}
   835dc:	f000 f8f0 	bl	837c0 <__sinit>
   835e0:	e7c5      	b.n	8356e <__swsetup_r+0x12>
   835e2:	6b21      	ldr	r1, [r4, #48]	; 0x30
   835e4:	b149      	cbz	r1, 835fa <__swsetup_r+0x9e>
   835e6:	f104 0340 	add.w	r3, r4, #64	; 0x40
   835ea:	4299      	cmp	r1, r3
   835ec:	d003      	beq.n	835f6 <__swsetup_r+0x9a>
   835ee:	4630      	mov	r0, r6
   835f0:	f000 fa2a 	bl	83a48 <_free_r>
   835f4:	89a5      	ldrh	r5, [r4, #12]
   835f6:	2300      	movs	r3, #0
   835f8:	6323      	str	r3, [r4, #48]	; 0x30
   835fa:	6922      	ldr	r2, [r4, #16]
   835fc:	f025 0524 	bic.w	r5, r5, #36	; 0x24
   83600:	2100      	movs	r1, #0
   83602:	b2ad      	uxth	r5, r5
   83604:	6022      	str	r2, [r4, #0]
   83606:	6061      	str	r1, [r4, #4]
   83608:	e7c7      	b.n	8359a <__swsetup_r+0x3e>
   8360a:	f045 0540 	orr.w	r5, r5, #64	; 0x40
   8360e:	2309      	movs	r3, #9
   83610:	6033      	str	r3, [r6, #0]
   83612:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   83616:	81a5      	strh	r5, [r4, #12]
   83618:	bd70      	pop	{r4, r5, r6, pc}
   8361a:	bf00      	nop
   8361c:	20070498 	.word	0x20070498

00083620 <register_fini>:
   83620:	4b02      	ldr	r3, [pc, #8]	; (8362c <register_fini+0xc>)
   83622:	b113      	cbz	r3, 8362a <register_fini+0xa>
   83624:	4802      	ldr	r0, [pc, #8]	; (83630 <register_fini+0x10>)
   83626:	f000 b805 	b.w	83634 <atexit>
   8362a:	4770      	bx	lr
   8362c:	00000000 	.word	0x00000000
   83630:	000838bd 	.word	0x000838bd

00083634 <atexit>:
   83634:	4601      	mov	r1, r0
   83636:	2000      	movs	r0, #0
   83638:	4602      	mov	r2, r0
   8363a:	4603      	mov	r3, r0
   8363c:	f001 bba4 	b.w	84d88 <__register_exitproc>

00083640 <__sflush_r>:
   83640:	898b      	ldrh	r3, [r1, #12]
   83642:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   83646:	b29a      	uxth	r2, r3
   83648:	460d      	mov	r5, r1
   8364a:	0711      	lsls	r1, r2, #28
   8364c:	4680      	mov	r8, r0
   8364e:	d43c      	bmi.n	836ca <__sflush_r+0x8a>
   83650:	686a      	ldr	r2, [r5, #4]
   83652:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
   83656:	2a00      	cmp	r2, #0
   83658:	81ab      	strh	r3, [r5, #12]
   8365a:	dd59      	ble.n	83710 <__sflush_r+0xd0>
   8365c:	6aac      	ldr	r4, [r5, #40]	; 0x28
   8365e:	2c00      	cmp	r4, #0
   83660:	d04b      	beq.n	836fa <__sflush_r+0xba>
   83662:	b29b      	uxth	r3, r3
   83664:	f403 5280 	and.w	r2, r3, #4096	; 0x1000
   83668:	2100      	movs	r1, #0
   8366a:	b292      	uxth	r2, r2
   8366c:	f8d8 6000 	ldr.w	r6, [r8]
   83670:	f8c8 1000 	str.w	r1, [r8]
   83674:	2a00      	cmp	r2, #0
   83676:	d04f      	beq.n	83718 <__sflush_r+0xd8>
   83678:	6d2a      	ldr	r2, [r5, #80]	; 0x50
   8367a:	075f      	lsls	r7, r3, #29
   8367c:	d505      	bpl.n	8368a <__sflush_r+0x4a>
   8367e:	6869      	ldr	r1, [r5, #4]
   83680:	6b2b      	ldr	r3, [r5, #48]	; 0x30
   83682:	1a52      	subs	r2, r2, r1
   83684:	b10b      	cbz	r3, 8368a <__sflush_r+0x4a>
   83686:	6beb      	ldr	r3, [r5, #60]	; 0x3c
   83688:	1ad2      	subs	r2, r2, r3
   8368a:	4640      	mov	r0, r8
   8368c:	69e9      	ldr	r1, [r5, #28]
   8368e:	2300      	movs	r3, #0
   83690:	47a0      	blx	r4
   83692:	1c44      	adds	r4, r0, #1
   83694:	d04a      	beq.n	8372c <__sflush_r+0xec>
   83696:	89ab      	ldrh	r3, [r5, #12]
   83698:	692a      	ldr	r2, [r5, #16]
   8369a:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
   8369e:	b29b      	uxth	r3, r3
   836a0:	2100      	movs	r1, #0
   836a2:	602a      	str	r2, [r5, #0]
   836a4:	04da      	lsls	r2, r3, #19
   836a6:	81ab      	strh	r3, [r5, #12]
   836a8:	6069      	str	r1, [r5, #4]
   836aa:	d44c      	bmi.n	83746 <__sflush_r+0x106>
   836ac:	6b29      	ldr	r1, [r5, #48]	; 0x30
   836ae:	f8c8 6000 	str.w	r6, [r8]
   836b2:	b311      	cbz	r1, 836fa <__sflush_r+0xba>
   836b4:	f105 0340 	add.w	r3, r5, #64	; 0x40
   836b8:	4299      	cmp	r1, r3
   836ba:	d002      	beq.n	836c2 <__sflush_r+0x82>
   836bc:	4640      	mov	r0, r8
   836be:	f000 f9c3 	bl	83a48 <_free_r>
   836c2:	2000      	movs	r0, #0
   836c4:	6328      	str	r0, [r5, #48]	; 0x30
   836c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   836ca:	692e      	ldr	r6, [r5, #16]
   836cc:	b1ae      	cbz	r6, 836fa <__sflush_r+0xba>
   836ce:	0791      	lsls	r1, r2, #30
   836d0:	682c      	ldr	r4, [r5, #0]
   836d2:	bf0c      	ite	eq
   836d4:	696b      	ldreq	r3, [r5, #20]
   836d6:	2300      	movne	r3, #0
   836d8:	602e      	str	r6, [r5, #0]
   836da:	1ba4      	subs	r4, r4, r6
   836dc:	60ab      	str	r3, [r5, #8]
   836de:	e00a      	b.n	836f6 <__sflush_r+0xb6>
   836e0:	4632      	mov	r2, r6
   836e2:	4623      	mov	r3, r4
   836e4:	6a6f      	ldr	r7, [r5, #36]	; 0x24
   836e6:	4640      	mov	r0, r8
   836e8:	69e9      	ldr	r1, [r5, #28]
   836ea:	47b8      	blx	r7
   836ec:	2800      	cmp	r0, #0
   836ee:	ebc0 0404 	rsb	r4, r0, r4
   836f2:	4406      	add	r6, r0
   836f4:	dd04      	ble.n	83700 <__sflush_r+0xc0>
   836f6:	2c00      	cmp	r4, #0
   836f8:	dcf2      	bgt.n	836e0 <__sflush_r+0xa0>
   836fa:	2000      	movs	r0, #0
   836fc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83700:	89ab      	ldrh	r3, [r5, #12]
   83702:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   83706:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   8370a:	81ab      	strh	r3, [r5, #12]
   8370c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83710:	6bea      	ldr	r2, [r5, #60]	; 0x3c
   83712:	2a00      	cmp	r2, #0
   83714:	dca2      	bgt.n	8365c <__sflush_r+0x1c>
   83716:	e7f0      	b.n	836fa <__sflush_r+0xba>
   83718:	2301      	movs	r3, #1
   8371a:	4640      	mov	r0, r8
   8371c:	69e9      	ldr	r1, [r5, #28]
   8371e:	47a0      	blx	r4
   83720:	1c43      	adds	r3, r0, #1
   83722:	4602      	mov	r2, r0
   83724:	d01e      	beq.n	83764 <__sflush_r+0x124>
   83726:	89ab      	ldrh	r3, [r5, #12]
   83728:	6aac      	ldr	r4, [r5, #40]	; 0x28
   8372a:	e7a6      	b.n	8367a <__sflush_r+0x3a>
   8372c:	f8d8 3000 	ldr.w	r3, [r8]
   83730:	b95b      	cbnz	r3, 8374a <__sflush_r+0x10a>
   83732:	89aa      	ldrh	r2, [r5, #12]
   83734:	6929      	ldr	r1, [r5, #16]
   83736:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
   8373a:	b292      	uxth	r2, r2
   8373c:	606b      	str	r3, [r5, #4]
   8373e:	04d3      	lsls	r3, r2, #19
   83740:	81aa      	strh	r2, [r5, #12]
   83742:	6029      	str	r1, [r5, #0]
   83744:	d5b2      	bpl.n	836ac <__sflush_r+0x6c>
   83746:	6528      	str	r0, [r5, #80]	; 0x50
   83748:	e7b0      	b.n	836ac <__sflush_r+0x6c>
   8374a:	2b1d      	cmp	r3, #29
   8374c:	d001      	beq.n	83752 <__sflush_r+0x112>
   8374e:	2b16      	cmp	r3, #22
   83750:	d113      	bne.n	8377a <__sflush_r+0x13a>
   83752:	89a9      	ldrh	r1, [r5, #12]
   83754:	692b      	ldr	r3, [r5, #16]
   83756:	f421 6100 	bic.w	r1, r1, #2048	; 0x800
   8375a:	2200      	movs	r2, #0
   8375c:	81a9      	strh	r1, [r5, #12]
   8375e:	602b      	str	r3, [r5, #0]
   83760:	606a      	str	r2, [r5, #4]
   83762:	e7a3      	b.n	836ac <__sflush_r+0x6c>
   83764:	f8d8 3000 	ldr.w	r3, [r8]
   83768:	2b00      	cmp	r3, #0
   8376a:	d0dc      	beq.n	83726 <__sflush_r+0xe6>
   8376c:	2b1d      	cmp	r3, #29
   8376e:	d001      	beq.n	83774 <__sflush_r+0x134>
   83770:	2b16      	cmp	r3, #22
   83772:	d1c5      	bne.n	83700 <__sflush_r+0xc0>
   83774:	f8c8 6000 	str.w	r6, [r8]
   83778:	e7bf      	b.n	836fa <__sflush_r+0xba>
   8377a:	89ab      	ldrh	r3, [r5, #12]
   8377c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   83780:	81ab      	strh	r3, [r5, #12]
   83782:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83786:	bf00      	nop

00083788 <_fflush_r>:
   83788:	b510      	push	{r4, lr}
   8378a:	4604      	mov	r4, r0
   8378c:	b082      	sub	sp, #8
   8378e:	b108      	cbz	r0, 83794 <_fflush_r+0xc>
   83790:	6b83      	ldr	r3, [r0, #56]	; 0x38
   83792:	b153      	cbz	r3, 837aa <_fflush_r+0x22>
   83794:	f9b1 000c 	ldrsh.w	r0, [r1, #12]
   83798:	b908      	cbnz	r0, 8379e <_fflush_r+0x16>
   8379a:	b002      	add	sp, #8
   8379c:	bd10      	pop	{r4, pc}
   8379e:	4620      	mov	r0, r4
   837a0:	b002      	add	sp, #8
   837a2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
   837a6:	f7ff bf4b 	b.w	83640 <__sflush_r>
   837aa:	9101      	str	r1, [sp, #4]
   837ac:	f000 f808 	bl	837c0 <__sinit>
   837b0:	9901      	ldr	r1, [sp, #4]
   837b2:	e7ef      	b.n	83794 <_fflush_r+0xc>

000837b4 <_cleanup_r>:
   837b4:	4901      	ldr	r1, [pc, #4]	; (837bc <_cleanup_r+0x8>)
   837b6:	f000 bb9d 	b.w	83ef4 <_fwalk>
   837ba:	bf00      	nop
   837bc:	00084ed5 	.word	0x00084ed5

000837c0 <__sinit>:
   837c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   837c4:	6b84      	ldr	r4, [r0, #56]	; 0x38
   837c6:	b083      	sub	sp, #12
   837c8:	4607      	mov	r7, r0
   837ca:	2c00      	cmp	r4, #0
   837cc:	d165      	bne.n	8389a <__sinit+0xda>
   837ce:	687d      	ldr	r5, [r7, #4]
   837d0:	4833      	ldr	r0, [pc, #204]	; (838a0 <__sinit+0xe0>)
   837d2:	2304      	movs	r3, #4
   837d4:	2103      	movs	r1, #3
   837d6:	f507 723b 	add.w	r2, r7, #748	; 0x2ec
   837da:	63f8      	str	r0, [r7, #60]	; 0x3c
   837dc:	f8c7 12e4 	str.w	r1, [r7, #740]	; 0x2e4
   837e0:	f8c7 22e8 	str.w	r2, [r7, #744]	; 0x2e8
   837e4:	f8c7 42e0 	str.w	r4, [r7, #736]	; 0x2e0
   837e8:	f105 005c 	add.w	r0, r5, #92	; 0x5c
   837ec:	81ab      	strh	r3, [r5, #12]
   837ee:	602c      	str	r4, [r5, #0]
   837f0:	606c      	str	r4, [r5, #4]
   837f2:	60ac      	str	r4, [r5, #8]
   837f4:	666c      	str	r4, [r5, #100]	; 0x64
   837f6:	81ec      	strh	r4, [r5, #14]
   837f8:	612c      	str	r4, [r5, #16]
   837fa:	616c      	str	r4, [r5, #20]
   837fc:	61ac      	str	r4, [r5, #24]
   837fe:	4621      	mov	r1, r4
   83800:	2208      	movs	r2, #8
   83802:	f7fe ff85 	bl	82710 <memset>
   83806:	f8df b09c 	ldr.w	fp, [pc, #156]	; 838a4 <__sinit+0xe4>
   8380a:	68be      	ldr	r6, [r7, #8]
   8380c:	f8df a098 	ldr.w	sl, [pc, #152]	; 838a8 <__sinit+0xe8>
   83810:	f8df 9098 	ldr.w	r9, [pc, #152]	; 838ac <__sinit+0xec>
   83814:	f8df 8098 	ldr.w	r8, [pc, #152]	; 838b0 <__sinit+0xf0>
   83818:	2301      	movs	r3, #1
   8381a:	2209      	movs	r2, #9
   8381c:	61ed      	str	r5, [r5, #28]
   8381e:	f8c5 b020 	str.w	fp, [r5, #32]
   83822:	f8c5 a024 	str.w	sl, [r5, #36]	; 0x24
   83826:	f8c5 9028 	str.w	r9, [r5, #40]	; 0x28
   8382a:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
   8382e:	4621      	mov	r1, r4
   83830:	81f3      	strh	r3, [r6, #14]
   83832:	81b2      	strh	r2, [r6, #12]
   83834:	6034      	str	r4, [r6, #0]
   83836:	6074      	str	r4, [r6, #4]
   83838:	60b4      	str	r4, [r6, #8]
   8383a:	6674      	str	r4, [r6, #100]	; 0x64
   8383c:	6134      	str	r4, [r6, #16]
   8383e:	6174      	str	r4, [r6, #20]
   83840:	61b4      	str	r4, [r6, #24]
   83842:	2208      	movs	r2, #8
   83844:	f106 005c 	add.w	r0, r6, #92	; 0x5c
   83848:	9301      	str	r3, [sp, #4]
   8384a:	f7fe ff61 	bl	82710 <memset>
   8384e:	68fd      	ldr	r5, [r7, #12]
   83850:	2012      	movs	r0, #18
   83852:	2202      	movs	r2, #2
   83854:	61f6      	str	r6, [r6, #28]
   83856:	f8c6 b020 	str.w	fp, [r6, #32]
   8385a:	f8c6 a024 	str.w	sl, [r6, #36]	; 0x24
   8385e:	f8c6 9028 	str.w	r9, [r6, #40]	; 0x28
   83862:	f8c6 802c 	str.w	r8, [r6, #44]	; 0x2c
   83866:	4621      	mov	r1, r4
   83868:	81a8      	strh	r0, [r5, #12]
   8386a:	81ea      	strh	r2, [r5, #14]
   8386c:	602c      	str	r4, [r5, #0]
   8386e:	606c      	str	r4, [r5, #4]
   83870:	60ac      	str	r4, [r5, #8]
   83872:	666c      	str	r4, [r5, #100]	; 0x64
   83874:	612c      	str	r4, [r5, #16]
   83876:	616c      	str	r4, [r5, #20]
   83878:	61ac      	str	r4, [r5, #24]
   8387a:	f105 005c 	add.w	r0, r5, #92	; 0x5c
   8387e:	2208      	movs	r2, #8
   83880:	f7fe ff46 	bl	82710 <memset>
   83884:	9b01      	ldr	r3, [sp, #4]
   83886:	61ed      	str	r5, [r5, #28]
   83888:	f8c5 b020 	str.w	fp, [r5, #32]
   8388c:	f8c5 a024 	str.w	sl, [r5, #36]	; 0x24
   83890:	f8c5 9028 	str.w	r9, [r5, #40]	; 0x28
   83894:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
   83898:	63bb      	str	r3, [r7, #56]	; 0x38
   8389a:	b003      	add	sp, #12
   8389c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   838a0:	000837b5 	.word	0x000837b5
   838a4:	00084bc9 	.word	0x00084bc9
   838a8:	00084bed 	.word	0x00084bed
   838ac:	00084c25 	.word	0x00084c25
   838b0:	00084c45 	.word	0x00084c45

000838b4 <__sfp_lock_acquire>:
   838b4:	4770      	bx	lr
   838b6:	bf00      	nop

000838b8 <__sfp_lock_release>:
   838b8:	4770      	bx	lr
   838ba:	bf00      	nop

000838bc <__libc_fini_array>:
   838bc:	b538      	push	{r3, r4, r5, lr}
   838be:	4d09      	ldr	r5, [pc, #36]	; (838e4 <__libc_fini_array+0x28>)
   838c0:	4c09      	ldr	r4, [pc, #36]	; (838e8 <__libc_fini_array+0x2c>)
   838c2:	1b64      	subs	r4, r4, r5
   838c4:	10a4      	asrs	r4, r4, #2
   838c6:	bf18      	it	ne
   838c8:	eb05 0584 	addne.w	r5, r5, r4, lsl #2
   838cc:	d005      	beq.n	838da <__libc_fini_array+0x1e>
   838ce:	3c01      	subs	r4, #1
   838d0:	f855 3d04 	ldr.w	r3, [r5, #-4]!
   838d4:	4798      	blx	r3
   838d6:	2c00      	cmp	r4, #0
   838d8:	d1f9      	bne.n	838ce <__libc_fini_array+0x12>
   838da:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
   838de:	f002 bc9d 	b.w	8621c <_fini>
   838e2:	bf00      	nop
   838e4:	00086228 	.word	0x00086228
   838e8:	0008622c 	.word	0x0008622c

000838ec <_fputwc_r>:
   838ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   838f0:	8993      	ldrh	r3, [r2, #12]
   838f2:	460f      	mov	r7, r1
   838f4:	0499      	lsls	r1, r3, #18
   838f6:	b082      	sub	sp, #8
   838f8:	4614      	mov	r4, r2
   838fa:	4680      	mov	r8, r0
   838fc:	d406      	bmi.n	8390c <_fputwc_r+0x20>
   838fe:	6e52      	ldr	r2, [r2, #100]	; 0x64
   83900:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
   83904:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
   83908:	81a3      	strh	r3, [r4, #12]
   8390a:	6662      	str	r2, [r4, #100]	; 0x64
   8390c:	f000 fb1a 	bl	83f44 <__locale_mb_cur_max>
   83910:	2801      	cmp	r0, #1
   83912:	d03e      	beq.n	83992 <_fputwc_r+0xa6>
   83914:	463a      	mov	r2, r7
   83916:	4640      	mov	r0, r8
   83918:	a901      	add	r1, sp, #4
   8391a:	f104 035c 	add.w	r3, r4, #92	; 0x5c
   8391e:	f001 f9e9 	bl	84cf4 <_wcrtomb_r>
   83922:	1c42      	adds	r2, r0, #1
   83924:	4606      	mov	r6, r0
   83926:	d02d      	beq.n	83984 <_fputwc_r+0x98>
   83928:	2800      	cmp	r0, #0
   8392a:	d03a      	beq.n	839a2 <_fputwc_r+0xb6>
   8392c:	f89d 1004 	ldrb.w	r1, [sp, #4]
   83930:	2500      	movs	r5, #0
   83932:	e009      	b.n	83948 <_fputwc_r+0x5c>
   83934:	6823      	ldr	r3, [r4, #0]
   83936:	7019      	strb	r1, [r3, #0]
   83938:	6823      	ldr	r3, [r4, #0]
   8393a:	3301      	adds	r3, #1
   8393c:	6023      	str	r3, [r4, #0]
   8393e:	3501      	adds	r5, #1
   83940:	42b5      	cmp	r5, r6
   83942:	d22e      	bcs.n	839a2 <_fputwc_r+0xb6>
   83944:	ab01      	add	r3, sp, #4
   83946:	5ce9      	ldrb	r1, [r5, r3]
   83948:	68a3      	ldr	r3, [r4, #8]
   8394a:	3b01      	subs	r3, #1
   8394c:	2b00      	cmp	r3, #0
   8394e:	60a3      	str	r3, [r4, #8]
   83950:	daf0      	bge.n	83934 <_fputwc_r+0x48>
   83952:	69a2      	ldr	r2, [r4, #24]
   83954:	4293      	cmp	r3, r2
   83956:	db06      	blt.n	83966 <_fputwc_r+0x7a>
   83958:	6823      	ldr	r3, [r4, #0]
   8395a:	7019      	strb	r1, [r3, #0]
   8395c:	6823      	ldr	r3, [r4, #0]
   8395e:	7819      	ldrb	r1, [r3, #0]
   83960:	3301      	adds	r3, #1
   83962:	290a      	cmp	r1, #10
   83964:	d1ea      	bne.n	8393c <_fputwc_r+0x50>
   83966:	4640      	mov	r0, r8
   83968:	4622      	mov	r2, r4
   8396a:	f001 f96f 	bl	84c4c <__swbuf_r>
   8396e:	f1b0 33ff 	subs.w	r3, r0, #4294967295	; 0xffffffff
   83972:	4258      	negs	r0, r3
   83974:	4158      	adcs	r0, r3
   83976:	2800      	cmp	r0, #0
   83978:	d0e1      	beq.n	8393e <_fputwc_r+0x52>
   8397a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   8397e:	b002      	add	sp, #8
   83980:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83984:	89a3      	ldrh	r3, [r4, #12]
   83986:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   8398a:	81a3      	strh	r3, [r4, #12]
   8398c:	b002      	add	sp, #8
   8398e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83992:	1e7b      	subs	r3, r7, #1
   83994:	2bfe      	cmp	r3, #254	; 0xfe
   83996:	d8bd      	bhi.n	83914 <_fputwc_r+0x28>
   83998:	b2f9      	uxtb	r1, r7
   8399a:	4606      	mov	r6, r0
   8399c:	f88d 1004 	strb.w	r1, [sp, #4]
   839a0:	e7c6      	b.n	83930 <_fputwc_r+0x44>
   839a2:	4638      	mov	r0, r7
   839a4:	b002      	add	sp, #8
   839a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   839aa:	bf00      	nop

000839ac <_malloc_trim_r>:
   839ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   839ae:	4d23      	ldr	r5, [pc, #140]	; (83a3c <_malloc_trim_r+0x90>)
   839b0:	460f      	mov	r7, r1
   839b2:	4604      	mov	r4, r0
   839b4:	f000 fefe 	bl	847b4 <__malloc_lock>
   839b8:	68ab      	ldr	r3, [r5, #8]
   839ba:	685e      	ldr	r6, [r3, #4]
   839bc:	f026 0603 	bic.w	r6, r6, #3
   839c0:	1bf1      	subs	r1, r6, r7
   839c2:	f601 71ef 	addw	r1, r1, #4079	; 0xfef
   839c6:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
   839ca:	f021 010f 	bic.w	r1, r1, #15
   839ce:	f5a1 5780 	sub.w	r7, r1, #4096	; 0x1000
   839d2:	f5b7 5f80 	cmp.w	r7, #4096	; 0x1000
   839d6:	db07      	blt.n	839e8 <_malloc_trim_r+0x3c>
   839d8:	4620      	mov	r0, r4
   839da:	2100      	movs	r1, #0
   839dc:	f001 f8ce 	bl	84b7c <_sbrk_r>
   839e0:	68ab      	ldr	r3, [r5, #8]
   839e2:	4433      	add	r3, r6
   839e4:	4298      	cmp	r0, r3
   839e6:	d004      	beq.n	839f2 <_malloc_trim_r+0x46>
   839e8:	4620      	mov	r0, r4
   839ea:	f000 fee5 	bl	847b8 <__malloc_unlock>
   839ee:	2000      	movs	r0, #0
   839f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   839f2:	4620      	mov	r0, r4
   839f4:	4279      	negs	r1, r7
   839f6:	f001 f8c1 	bl	84b7c <_sbrk_r>
   839fa:	3001      	adds	r0, #1
   839fc:	d00d      	beq.n	83a1a <_malloc_trim_r+0x6e>
   839fe:	4b10      	ldr	r3, [pc, #64]	; (83a40 <_malloc_trim_r+0x94>)
   83a00:	68aa      	ldr	r2, [r5, #8]
   83a02:	6819      	ldr	r1, [r3, #0]
   83a04:	1bf6      	subs	r6, r6, r7
   83a06:	f046 0601 	orr.w	r6, r6, #1
   83a0a:	4620      	mov	r0, r4
   83a0c:	1bc9      	subs	r1, r1, r7
   83a0e:	6056      	str	r6, [r2, #4]
   83a10:	6019      	str	r1, [r3, #0]
   83a12:	f000 fed1 	bl	847b8 <__malloc_unlock>
   83a16:	2001      	movs	r0, #1
   83a18:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   83a1a:	4620      	mov	r0, r4
   83a1c:	2100      	movs	r1, #0
   83a1e:	f001 f8ad 	bl	84b7c <_sbrk_r>
   83a22:	68ab      	ldr	r3, [r5, #8]
   83a24:	1ac2      	subs	r2, r0, r3
   83a26:	2a0f      	cmp	r2, #15
   83a28:	ddde      	ble.n	839e8 <_malloc_trim_r+0x3c>
   83a2a:	4d06      	ldr	r5, [pc, #24]	; (83a44 <_malloc_trim_r+0x98>)
   83a2c:	4904      	ldr	r1, [pc, #16]	; (83a40 <_malloc_trim_r+0x94>)
   83a2e:	682d      	ldr	r5, [r5, #0]
   83a30:	f042 0201 	orr.w	r2, r2, #1
   83a34:	1b40      	subs	r0, r0, r5
   83a36:	605a      	str	r2, [r3, #4]
   83a38:	6008      	str	r0, [r1, #0]
   83a3a:	e7d5      	b.n	839e8 <_malloc_trim_r+0x3c>
   83a3c:	200704c0 	.word	0x200704c0
   83a40:	200712dc 	.word	0x200712dc
   83a44:	200708cc 	.word	0x200708cc

00083a48 <_free_r>:
   83a48:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   83a4c:	460d      	mov	r5, r1
   83a4e:	4606      	mov	r6, r0
   83a50:	2900      	cmp	r1, #0
   83a52:	d055      	beq.n	83b00 <_free_r+0xb8>
   83a54:	f000 feae 	bl	847b4 <__malloc_lock>
   83a58:	f855 1c04 	ldr.w	r1, [r5, #-4]
   83a5c:	f8df c170 	ldr.w	ip, [pc, #368]	; 83bd0 <_free_r+0x188>
   83a60:	f1a5 0408 	sub.w	r4, r5, #8
   83a64:	f021 0301 	bic.w	r3, r1, #1
   83a68:	18e2      	adds	r2, r4, r3
   83a6a:	f8dc 0008 	ldr.w	r0, [ip, #8]
   83a6e:	6857      	ldr	r7, [r2, #4]
   83a70:	4290      	cmp	r0, r2
   83a72:	f027 0703 	bic.w	r7, r7, #3
   83a76:	d068      	beq.n	83b4a <_free_r+0x102>
   83a78:	f011 0101 	ands.w	r1, r1, #1
   83a7c:	6057      	str	r7, [r2, #4]
   83a7e:	d032      	beq.n	83ae6 <_free_r+0x9e>
   83a80:	2100      	movs	r1, #0
   83a82:	19d0      	adds	r0, r2, r7
   83a84:	6840      	ldr	r0, [r0, #4]
   83a86:	07c0      	lsls	r0, r0, #31
   83a88:	d406      	bmi.n	83a98 <_free_r+0x50>
   83a8a:	443b      	add	r3, r7
   83a8c:	6890      	ldr	r0, [r2, #8]
   83a8e:	2900      	cmp	r1, #0
   83a90:	d04d      	beq.n	83b2e <_free_r+0xe6>
   83a92:	68d2      	ldr	r2, [r2, #12]
   83a94:	60c2      	str	r2, [r0, #12]
   83a96:	6090      	str	r0, [r2, #8]
   83a98:	f043 0201 	orr.w	r2, r3, #1
   83a9c:	6062      	str	r2, [r4, #4]
   83a9e:	50e3      	str	r3, [r4, r3]
   83aa0:	b9e1      	cbnz	r1, 83adc <_free_r+0x94>
   83aa2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
   83aa6:	d32d      	bcc.n	83b04 <_free_r+0xbc>
   83aa8:	0a5a      	lsrs	r2, r3, #9
   83aaa:	2a04      	cmp	r2, #4
   83aac:	d869      	bhi.n	83b82 <_free_r+0x13a>
   83aae:	0998      	lsrs	r0, r3, #6
   83ab0:	3038      	adds	r0, #56	; 0x38
   83ab2:	0041      	lsls	r1, r0, #1
   83ab4:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
   83ab8:	f8dc 2008 	ldr.w	r2, [ip, #8]
   83abc:	4944      	ldr	r1, [pc, #272]	; (83bd0 <_free_r+0x188>)
   83abe:	4562      	cmp	r2, ip
   83ac0:	d065      	beq.n	83b8e <_free_r+0x146>
   83ac2:	6851      	ldr	r1, [r2, #4]
   83ac4:	f021 0103 	bic.w	r1, r1, #3
   83ac8:	428b      	cmp	r3, r1
   83aca:	d202      	bcs.n	83ad2 <_free_r+0x8a>
   83acc:	6892      	ldr	r2, [r2, #8]
   83ace:	4594      	cmp	ip, r2
   83ad0:	d1f7      	bne.n	83ac2 <_free_r+0x7a>
   83ad2:	68d3      	ldr	r3, [r2, #12]
   83ad4:	60e3      	str	r3, [r4, #12]
   83ad6:	60a2      	str	r2, [r4, #8]
   83ad8:	609c      	str	r4, [r3, #8]
   83ada:	60d4      	str	r4, [r2, #12]
   83adc:	4630      	mov	r0, r6
   83ade:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
   83ae2:	f000 be69 	b.w	847b8 <__malloc_unlock>
   83ae6:	f855 5c08 	ldr.w	r5, [r5, #-8]
   83aea:	f10c 0808 	add.w	r8, ip, #8
   83aee:	1b64      	subs	r4, r4, r5
   83af0:	68a0      	ldr	r0, [r4, #8]
   83af2:	442b      	add	r3, r5
   83af4:	4540      	cmp	r0, r8
   83af6:	d042      	beq.n	83b7e <_free_r+0x136>
   83af8:	68e5      	ldr	r5, [r4, #12]
   83afa:	60c5      	str	r5, [r0, #12]
   83afc:	60a8      	str	r0, [r5, #8]
   83afe:	e7c0      	b.n	83a82 <_free_r+0x3a>
   83b00:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83b04:	08db      	lsrs	r3, r3, #3
   83b06:	109a      	asrs	r2, r3, #2
   83b08:	2001      	movs	r0, #1
   83b0a:	4090      	lsls	r0, r2
   83b0c:	f8dc 1004 	ldr.w	r1, [ip, #4]
   83b10:	eb0c 03c3 	add.w	r3, ip, r3, lsl #3
   83b14:	689a      	ldr	r2, [r3, #8]
   83b16:	4301      	orrs	r1, r0
   83b18:	60a2      	str	r2, [r4, #8]
   83b1a:	60e3      	str	r3, [r4, #12]
   83b1c:	f8cc 1004 	str.w	r1, [ip, #4]
   83b20:	4630      	mov	r0, r6
   83b22:	609c      	str	r4, [r3, #8]
   83b24:	60d4      	str	r4, [r2, #12]
   83b26:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
   83b2a:	f000 be45 	b.w	847b8 <__malloc_unlock>
   83b2e:	4d29      	ldr	r5, [pc, #164]	; (83bd4 <_free_r+0x18c>)
   83b30:	42a8      	cmp	r0, r5
   83b32:	d1ae      	bne.n	83a92 <_free_r+0x4a>
   83b34:	f043 0201 	orr.w	r2, r3, #1
   83b38:	f8cc 4014 	str.w	r4, [ip, #20]
   83b3c:	f8cc 4010 	str.w	r4, [ip, #16]
   83b40:	60e0      	str	r0, [r4, #12]
   83b42:	60a0      	str	r0, [r4, #8]
   83b44:	6062      	str	r2, [r4, #4]
   83b46:	50e3      	str	r3, [r4, r3]
   83b48:	e7c8      	b.n	83adc <_free_r+0x94>
   83b4a:	441f      	add	r7, r3
   83b4c:	07cb      	lsls	r3, r1, #31
   83b4e:	d407      	bmi.n	83b60 <_free_r+0x118>
   83b50:	f855 1c08 	ldr.w	r1, [r5, #-8]
   83b54:	1a64      	subs	r4, r4, r1
   83b56:	68e3      	ldr	r3, [r4, #12]
   83b58:	68a2      	ldr	r2, [r4, #8]
   83b5a:	440f      	add	r7, r1
   83b5c:	60d3      	str	r3, [r2, #12]
   83b5e:	609a      	str	r2, [r3, #8]
   83b60:	4b1d      	ldr	r3, [pc, #116]	; (83bd8 <_free_r+0x190>)
   83b62:	f047 0201 	orr.w	r2, r7, #1
   83b66:	681b      	ldr	r3, [r3, #0]
   83b68:	6062      	str	r2, [r4, #4]
   83b6a:	429f      	cmp	r7, r3
   83b6c:	f8cc 4008 	str.w	r4, [ip, #8]
   83b70:	d3b4      	bcc.n	83adc <_free_r+0x94>
   83b72:	4b1a      	ldr	r3, [pc, #104]	; (83bdc <_free_r+0x194>)
   83b74:	4630      	mov	r0, r6
   83b76:	6819      	ldr	r1, [r3, #0]
   83b78:	f7ff ff18 	bl	839ac <_malloc_trim_r>
   83b7c:	e7ae      	b.n	83adc <_free_r+0x94>
   83b7e:	2101      	movs	r1, #1
   83b80:	e77f      	b.n	83a82 <_free_r+0x3a>
   83b82:	2a14      	cmp	r2, #20
   83b84:	d80b      	bhi.n	83b9e <_free_r+0x156>
   83b86:	f102 005b 	add.w	r0, r2, #91	; 0x5b
   83b8a:	0041      	lsls	r1, r0, #1
   83b8c:	e792      	b.n	83ab4 <_free_r+0x6c>
   83b8e:	1080      	asrs	r0, r0, #2
   83b90:	2501      	movs	r5, #1
   83b92:	4085      	lsls	r5, r0
   83b94:	6848      	ldr	r0, [r1, #4]
   83b96:	4613      	mov	r3, r2
   83b98:	4328      	orrs	r0, r5
   83b9a:	6048      	str	r0, [r1, #4]
   83b9c:	e79a      	b.n	83ad4 <_free_r+0x8c>
   83b9e:	2a54      	cmp	r2, #84	; 0x54
   83ba0:	d803      	bhi.n	83baa <_free_r+0x162>
   83ba2:	0b18      	lsrs	r0, r3, #12
   83ba4:	306e      	adds	r0, #110	; 0x6e
   83ba6:	0041      	lsls	r1, r0, #1
   83ba8:	e784      	b.n	83ab4 <_free_r+0x6c>
   83baa:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
   83bae:	d803      	bhi.n	83bb8 <_free_r+0x170>
   83bb0:	0bd8      	lsrs	r0, r3, #15
   83bb2:	3077      	adds	r0, #119	; 0x77
   83bb4:	0041      	lsls	r1, r0, #1
   83bb6:	e77d      	b.n	83ab4 <_free_r+0x6c>
   83bb8:	f240 5154 	movw	r1, #1364	; 0x554
   83bbc:	428a      	cmp	r2, r1
   83bbe:	d803      	bhi.n	83bc8 <_free_r+0x180>
   83bc0:	0c98      	lsrs	r0, r3, #18
   83bc2:	307c      	adds	r0, #124	; 0x7c
   83bc4:	0041      	lsls	r1, r0, #1
   83bc6:	e775      	b.n	83ab4 <_free_r+0x6c>
   83bc8:	21fc      	movs	r1, #252	; 0xfc
   83bca:	207e      	movs	r0, #126	; 0x7e
   83bcc:	e772      	b.n	83ab4 <_free_r+0x6c>
   83bce:	bf00      	nop
   83bd0:	200704c0 	.word	0x200704c0
   83bd4:	200704c8 	.word	0x200704c8
   83bd8:	200708c8 	.word	0x200708c8
   83bdc:	200712d8 	.word	0x200712d8

00083be0 <__sfvwrite_r>:
   83be0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   83be4:	6893      	ldr	r3, [r2, #8]
   83be6:	b083      	sub	sp, #12
   83be8:	4616      	mov	r6, r2
   83bea:	4681      	mov	r9, r0
   83bec:	460c      	mov	r4, r1
   83bee:	b32b      	cbz	r3, 83c3c <__sfvwrite_r+0x5c>
   83bf0:	898b      	ldrh	r3, [r1, #12]
   83bf2:	0719      	lsls	r1, r3, #28
   83bf4:	d526      	bpl.n	83c44 <__sfvwrite_r+0x64>
   83bf6:	6922      	ldr	r2, [r4, #16]
   83bf8:	b322      	cbz	r2, 83c44 <__sfvwrite_r+0x64>
   83bfa:	f003 0202 	and.w	r2, r3, #2
   83bfe:	b292      	uxth	r2, r2
   83c00:	6835      	ldr	r5, [r6, #0]
   83c02:	2a00      	cmp	r2, #0
   83c04:	d02c      	beq.n	83c60 <__sfvwrite_r+0x80>
   83c06:	f04f 0a00 	mov.w	sl, #0
   83c0a:	f8df b2e4 	ldr.w	fp, [pc, #740]	; 83ef0 <__sfvwrite_r+0x310>
   83c0e:	46d0      	mov	r8, sl
   83c10:	45d8      	cmp	r8, fp
   83c12:	bf34      	ite	cc
   83c14:	4643      	movcc	r3, r8
   83c16:	465b      	movcs	r3, fp
   83c18:	4652      	mov	r2, sl
   83c1a:	4648      	mov	r0, r9
   83c1c:	f1b8 0f00 	cmp.w	r8, #0
   83c20:	d04f      	beq.n	83cc2 <__sfvwrite_r+0xe2>
   83c22:	69e1      	ldr	r1, [r4, #28]
   83c24:	6a67      	ldr	r7, [r4, #36]	; 0x24
   83c26:	47b8      	blx	r7
   83c28:	2800      	cmp	r0, #0
   83c2a:	dd56      	ble.n	83cda <__sfvwrite_r+0xfa>
   83c2c:	68b3      	ldr	r3, [r6, #8]
   83c2e:	4482      	add	sl, r0
   83c30:	1a1b      	subs	r3, r3, r0
   83c32:	ebc0 0808 	rsb	r8, r0, r8
   83c36:	60b3      	str	r3, [r6, #8]
   83c38:	2b00      	cmp	r3, #0
   83c3a:	d1e9      	bne.n	83c10 <__sfvwrite_r+0x30>
   83c3c:	2000      	movs	r0, #0
   83c3e:	b003      	add	sp, #12
   83c40:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   83c44:	4648      	mov	r0, r9
   83c46:	4621      	mov	r1, r4
   83c48:	f7ff fc88 	bl	8355c <__swsetup_r>
   83c4c:	2800      	cmp	r0, #0
   83c4e:	f040 8146 	bne.w	83ede <__sfvwrite_r+0x2fe>
   83c52:	89a3      	ldrh	r3, [r4, #12]
   83c54:	6835      	ldr	r5, [r6, #0]
   83c56:	f003 0202 	and.w	r2, r3, #2
   83c5a:	b292      	uxth	r2, r2
   83c5c:	2a00      	cmp	r2, #0
   83c5e:	d1d2      	bne.n	83c06 <__sfvwrite_r+0x26>
   83c60:	f013 0a01 	ands.w	sl, r3, #1
   83c64:	d142      	bne.n	83cec <__sfvwrite_r+0x10c>
   83c66:	46d0      	mov	r8, sl
   83c68:	f1b8 0f00 	cmp.w	r8, #0
   83c6c:	d023      	beq.n	83cb6 <__sfvwrite_r+0xd6>
   83c6e:	059a      	lsls	r2, r3, #22
   83c70:	68a7      	ldr	r7, [r4, #8]
   83c72:	d576      	bpl.n	83d62 <__sfvwrite_r+0x182>
   83c74:	45b8      	cmp	r8, r7
   83c76:	f0c0 80a4 	bcc.w	83dc2 <__sfvwrite_r+0x1e2>
   83c7a:	f413 6f90 	tst.w	r3, #1152	; 0x480
   83c7e:	f040 80b2 	bne.w	83de6 <__sfvwrite_r+0x206>
   83c82:	6820      	ldr	r0, [r4, #0]
   83c84:	46bb      	mov	fp, r7
   83c86:	4651      	mov	r1, sl
   83c88:	465a      	mov	r2, fp
   83c8a:	f000 fd2d 	bl	846e8 <memmove>
   83c8e:	68a2      	ldr	r2, [r4, #8]
   83c90:	6821      	ldr	r1, [r4, #0]
   83c92:	1bd2      	subs	r2, r2, r7
   83c94:	eb01 030b 	add.w	r3, r1, fp
   83c98:	60a2      	str	r2, [r4, #8]
   83c9a:	6023      	str	r3, [r4, #0]
   83c9c:	4642      	mov	r2, r8
   83c9e:	68b3      	ldr	r3, [r6, #8]
   83ca0:	4492      	add	sl, r2
   83ca2:	1a9b      	subs	r3, r3, r2
   83ca4:	ebc2 0808 	rsb	r8, r2, r8
   83ca8:	60b3      	str	r3, [r6, #8]
   83caa:	2b00      	cmp	r3, #0
   83cac:	d0c6      	beq.n	83c3c <__sfvwrite_r+0x5c>
   83cae:	89a3      	ldrh	r3, [r4, #12]
   83cb0:	f1b8 0f00 	cmp.w	r8, #0
   83cb4:	d1db      	bne.n	83c6e <__sfvwrite_r+0x8e>
   83cb6:	f8d5 a000 	ldr.w	sl, [r5]
   83cba:	f8d5 8004 	ldr.w	r8, [r5, #4]
   83cbe:	3508      	adds	r5, #8
   83cc0:	e7d2      	b.n	83c68 <__sfvwrite_r+0x88>
   83cc2:	f8d5 a000 	ldr.w	sl, [r5]
   83cc6:	f8d5 8004 	ldr.w	r8, [r5, #4]
   83cca:	3508      	adds	r5, #8
   83ccc:	e7a0      	b.n	83c10 <__sfvwrite_r+0x30>
   83cce:	4648      	mov	r0, r9
   83cd0:	4621      	mov	r1, r4
   83cd2:	f7ff fd59 	bl	83788 <_fflush_r>
   83cd6:	2800      	cmp	r0, #0
   83cd8:	d059      	beq.n	83d8e <__sfvwrite_r+0x1ae>
   83cda:	89a3      	ldrh	r3, [r4, #12]
   83cdc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
   83ce0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   83ce4:	81a3      	strh	r3, [r4, #12]
   83ce6:	b003      	add	sp, #12
   83ce8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   83cec:	4692      	mov	sl, r2
   83cee:	9201      	str	r2, [sp, #4]
   83cf0:	4693      	mov	fp, r2
   83cf2:	4690      	mov	r8, r2
   83cf4:	f1b8 0f00 	cmp.w	r8, #0
   83cf8:	d02b      	beq.n	83d52 <__sfvwrite_r+0x172>
   83cfa:	9f01      	ldr	r7, [sp, #4]
   83cfc:	2f00      	cmp	r7, #0
   83cfe:	d064      	beq.n	83dca <__sfvwrite_r+0x1ea>
   83d00:	6820      	ldr	r0, [r4, #0]
   83d02:	6921      	ldr	r1, [r4, #16]
   83d04:	45c2      	cmp	sl, r8
   83d06:	bf34      	ite	cc
   83d08:	4653      	movcc	r3, sl
   83d0a:	4643      	movcs	r3, r8
   83d0c:	4288      	cmp	r0, r1
   83d0e:	461f      	mov	r7, r3
   83d10:	f8d4 c008 	ldr.w	ip, [r4, #8]
   83d14:	6962      	ldr	r2, [r4, #20]
   83d16:	d903      	bls.n	83d20 <__sfvwrite_r+0x140>
   83d18:	4494      	add	ip, r2
   83d1a:	4563      	cmp	r3, ip
   83d1c:	f300 80ae 	bgt.w	83e7c <__sfvwrite_r+0x29c>
   83d20:	4293      	cmp	r3, r2
   83d22:	db36      	blt.n	83d92 <__sfvwrite_r+0x1b2>
   83d24:	4613      	mov	r3, r2
   83d26:	6a67      	ldr	r7, [r4, #36]	; 0x24
   83d28:	4648      	mov	r0, r9
   83d2a:	69e1      	ldr	r1, [r4, #28]
   83d2c:	465a      	mov	r2, fp
   83d2e:	47b8      	blx	r7
   83d30:	1e07      	subs	r7, r0, #0
   83d32:	ddd2      	ble.n	83cda <__sfvwrite_r+0xfa>
   83d34:	ebba 0a07 	subs.w	sl, sl, r7
   83d38:	d03a      	beq.n	83db0 <__sfvwrite_r+0x1d0>
   83d3a:	68b3      	ldr	r3, [r6, #8]
   83d3c:	44bb      	add	fp, r7
   83d3e:	1bdb      	subs	r3, r3, r7
   83d40:	ebc7 0808 	rsb	r8, r7, r8
   83d44:	60b3      	str	r3, [r6, #8]
   83d46:	2b00      	cmp	r3, #0
   83d48:	f43f af78 	beq.w	83c3c <__sfvwrite_r+0x5c>
   83d4c:	f1b8 0f00 	cmp.w	r8, #0
   83d50:	d1d3      	bne.n	83cfa <__sfvwrite_r+0x11a>
   83d52:	2700      	movs	r7, #0
   83d54:	f8d5 b000 	ldr.w	fp, [r5]
   83d58:	f8d5 8004 	ldr.w	r8, [r5, #4]
   83d5c:	9701      	str	r7, [sp, #4]
   83d5e:	3508      	adds	r5, #8
   83d60:	e7c8      	b.n	83cf4 <__sfvwrite_r+0x114>
   83d62:	6820      	ldr	r0, [r4, #0]
   83d64:	6923      	ldr	r3, [r4, #16]
   83d66:	4298      	cmp	r0, r3
   83d68:	d802      	bhi.n	83d70 <__sfvwrite_r+0x190>
   83d6a:	6963      	ldr	r3, [r4, #20]
   83d6c:	4598      	cmp	r8, r3
   83d6e:	d272      	bcs.n	83e56 <__sfvwrite_r+0x276>
   83d70:	45b8      	cmp	r8, r7
   83d72:	bf38      	it	cc
   83d74:	4647      	movcc	r7, r8
   83d76:	463a      	mov	r2, r7
   83d78:	4651      	mov	r1, sl
   83d7a:	f000 fcb5 	bl	846e8 <memmove>
   83d7e:	68a3      	ldr	r3, [r4, #8]
   83d80:	6822      	ldr	r2, [r4, #0]
   83d82:	1bdb      	subs	r3, r3, r7
   83d84:	443a      	add	r2, r7
   83d86:	60a3      	str	r3, [r4, #8]
   83d88:	6022      	str	r2, [r4, #0]
   83d8a:	2b00      	cmp	r3, #0
   83d8c:	d09f      	beq.n	83cce <__sfvwrite_r+0xee>
   83d8e:	463a      	mov	r2, r7
   83d90:	e785      	b.n	83c9e <__sfvwrite_r+0xbe>
   83d92:	461a      	mov	r2, r3
   83d94:	4659      	mov	r1, fp
   83d96:	9300      	str	r3, [sp, #0]
   83d98:	f000 fca6 	bl	846e8 <memmove>
   83d9c:	9b00      	ldr	r3, [sp, #0]
   83d9e:	68a1      	ldr	r1, [r4, #8]
   83da0:	6822      	ldr	r2, [r4, #0]
   83da2:	1ac9      	subs	r1, r1, r3
   83da4:	ebba 0a07 	subs.w	sl, sl, r7
   83da8:	4413      	add	r3, r2
   83daa:	60a1      	str	r1, [r4, #8]
   83dac:	6023      	str	r3, [r4, #0]
   83dae:	d1c4      	bne.n	83d3a <__sfvwrite_r+0x15a>
   83db0:	4648      	mov	r0, r9
   83db2:	4621      	mov	r1, r4
   83db4:	f7ff fce8 	bl	83788 <_fflush_r>
   83db8:	2800      	cmp	r0, #0
   83dba:	d18e      	bne.n	83cda <__sfvwrite_r+0xfa>
   83dbc:	f8cd a004 	str.w	sl, [sp, #4]
   83dc0:	e7bb      	b.n	83d3a <__sfvwrite_r+0x15a>
   83dc2:	6820      	ldr	r0, [r4, #0]
   83dc4:	4647      	mov	r7, r8
   83dc6:	46c3      	mov	fp, r8
   83dc8:	e75d      	b.n	83c86 <__sfvwrite_r+0xa6>
   83dca:	4658      	mov	r0, fp
   83dcc:	210a      	movs	r1, #10
   83dce:	4642      	mov	r2, r8
   83dd0:	f000 fbca 	bl	84568 <memchr>
   83dd4:	2800      	cmp	r0, #0
   83dd6:	d07d      	beq.n	83ed4 <__sfvwrite_r+0x2f4>
   83dd8:	f100 0a01 	add.w	sl, r0, #1
   83ddc:	2701      	movs	r7, #1
   83dde:	ebcb 0a0a 	rsb	sl, fp, sl
   83de2:	9701      	str	r7, [sp, #4]
   83de4:	e78c      	b.n	83d00 <__sfvwrite_r+0x120>
   83de6:	6822      	ldr	r2, [r4, #0]
   83de8:	6921      	ldr	r1, [r4, #16]
   83dea:	6967      	ldr	r7, [r4, #20]
   83dec:	ebc1 0c02 	rsb	ip, r1, r2
   83df0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
   83df4:	f10c 0201 	add.w	r2, ip, #1
   83df8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
   83dfc:	4442      	add	r2, r8
   83dfe:	107f      	asrs	r7, r7, #1
   83e00:	4297      	cmp	r7, r2
   83e02:	bf34      	ite	cc
   83e04:	4617      	movcc	r7, r2
   83e06:	463a      	movcs	r2, r7
   83e08:	055b      	lsls	r3, r3, #21
   83e0a:	d54d      	bpl.n	83ea8 <__sfvwrite_r+0x2c8>
   83e0c:	4611      	mov	r1, r2
   83e0e:	4648      	mov	r0, r9
   83e10:	f8cd c000 	str.w	ip, [sp]
   83e14:	f000 f90c 	bl	84030 <_malloc_r>
   83e18:	f8dd c000 	ldr.w	ip, [sp]
   83e1c:	4683      	mov	fp, r0
   83e1e:	2800      	cmp	r0, #0
   83e20:	d060      	beq.n	83ee4 <__sfvwrite_r+0x304>
   83e22:	4662      	mov	r2, ip
   83e24:	6921      	ldr	r1, [r4, #16]
   83e26:	f8cd c000 	str.w	ip, [sp]
   83e2a:	f000 fbe7 	bl	845fc <memcpy>
   83e2e:	89a2      	ldrh	r2, [r4, #12]
   83e30:	f8dd c000 	ldr.w	ip, [sp]
   83e34:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
   83e38:	f042 0280 	orr.w	r2, r2, #128	; 0x80
   83e3c:	81a2      	strh	r2, [r4, #12]
   83e3e:	eb0b 000c 	add.w	r0, fp, ip
   83e42:	ebcc 0207 	rsb	r2, ip, r7
   83e46:	f8c4 b010 	str.w	fp, [r4, #16]
   83e4a:	6167      	str	r7, [r4, #20]
   83e4c:	6020      	str	r0, [r4, #0]
   83e4e:	60a2      	str	r2, [r4, #8]
   83e50:	4647      	mov	r7, r8
   83e52:	46c3      	mov	fp, r8
   83e54:	e717      	b.n	83c86 <__sfvwrite_r+0xa6>
   83e56:	f06f 4200 	mvn.w	r2, #2147483648	; 0x80000000
   83e5a:	4590      	cmp	r8, r2
   83e5c:	bf38      	it	cc
   83e5e:	4642      	movcc	r2, r8
   83e60:	fb92 f2f3 	sdiv	r2, r2, r3
   83e64:	fb02 f303 	mul.w	r3, r2, r3
   83e68:	6a67      	ldr	r7, [r4, #36]	; 0x24
   83e6a:	4648      	mov	r0, r9
   83e6c:	69e1      	ldr	r1, [r4, #28]
   83e6e:	4652      	mov	r2, sl
   83e70:	47b8      	blx	r7
   83e72:	2800      	cmp	r0, #0
   83e74:	f77f af31 	ble.w	83cda <__sfvwrite_r+0xfa>
   83e78:	4602      	mov	r2, r0
   83e7a:	e710      	b.n	83c9e <__sfvwrite_r+0xbe>
   83e7c:	4662      	mov	r2, ip
   83e7e:	4659      	mov	r1, fp
   83e80:	f8cd c000 	str.w	ip, [sp]
   83e84:	f000 fc30 	bl	846e8 <memmove>
   83e88:	f8dd c000 	ldr.w	ip, [sp]
   83e8c:	6823      	ldr	r3, [r4, #0]
   83e8e:	4648      	mov	r0, r9
   83e90:	4463      	add	r3, ip
   83e92:	6023      	str	r3, [r4, #0]
   83e94:	4621      	mov	r1, r4
   83e96:	f7ff fc77 	bl	83788 <_fflush_r>
   83e9a:	f8dd c000 	ldr.w	ip, [sp]
   83e9e:	2800      	cmp	r0, #0
   83ea0:	f47f af1b 	bne.w	83cda <__sfvwrite_r+0xfa>
   83ea4:	4667      	mov	r7, ip
   83ea6:	e745      	b.n	83d34 <__sfvwrite_r+0x154>
   83ea8:	4648      	mov	r0, r9
   83eaa:	f8cd c000 	str.w	ip, [sp]
   83eae:	f000 fc85 	bl	847bc <_realloc_r>
   83eb2:	f8dd c000 	ldr.w	ip, [sp]
   83eb6:	4683      	mov	fp, r0
   83eb8:	2800      	cmp	r0, #0
   83eba:	d1c0      	bne.n	83e3e <__sfvwrite_r+0x25e>
   83ebc:	4648      	mov	r0, r9
   83ebe:	6921      	ldr	r1, [r4, #16]
   83ec0:	f7ff fdc2 	bl	83a48 <_free_r>
   83ec4:	89a3      	ldrh	r3, [r4, #12]
   83ec6:	220c      	movs	r2, #12
   83ec8:	f023 0380 	bic.w	r3, r3, #128	; 0x80
   83ecc:	b29b      	uxth	r3, r3
   83ece:	f8c9 2000 	str.w	r2, [r9]
   83ed2:	e703      	b.n	83cdc <__sfvwrite_r+0xfc>
   83ed4:	2701      	movs	r7, #1
   83ed6:	f108 0a01 	add.w	sl, r8, #1
   83eda:	9701      	str	r7, [sp, #4]
   83edc:	e710      	b.n	83d00 <__sfvwrite_r+0x120>
   83ede:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   83ee2:	e6ac      	b.n	83c3e <__sfvwrite_r+0x5e>
   83ee4:	230c      	movs	r3, #12
   83ee6:	f8c9 3000 	str.w	r3, [r9]
   83eea:	89a3      	ldrh	r3, [r4, #12]
   83eec:	e6f6      	b.n	83cdc <__sfvwrite_r+0xfc>
   83eee:	bf00      	nop
   83ef0:	7ffffc00 	.word	0x7ffffc00

00083ef4 <_fwalk>:
   83ef4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   83ef8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
   83efc:	4688      	mov	r8, r1
   83efe:	d019      	beq.n	83f34 <_fwalk+0x40>
   83f00:	2600      	movs	r6, #0
   83f02:	687d      	ldr	r5, [r7, #4]
   83f04:	68bc      	ldr	r4, [r7, #8]
   83f06:	3d01      	subs	r5, #1
   83f08:	d40e      	bmi.n	83f28 <_fwalk+0x34>
   83f0a:	89a3      	ldrh	r3, [r4, #12]
   83f0c:	3d01      	subs	r5, #1
   83f0e:	2b01      	cmp	r3, #1
   83f10:	d906      	bls.n	83f20 <_fwalk+0x2c>
   83f12:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
   83f16:	4620      	mov	r0, r4
   83f18:	3301      	adds	r3, #1
   83f1a:	d001      	beq.n	83f20 <_fwalk+0x2c>
   83f1c:	47c0      	blx	r8
   83f1e:	4306      	orrs	r6, r0
   83f20:	1c6b      	adds	r3, r5, #1
   83f22:	f104 0468 	add.w	r4, r4, #104	; 0x68
   83f26:	d1f0      	bne.n	83f0a <_fwalk+0x16>
   83f28:	683f      	ldr	r7, [r7, #0]
   83f2a:	2f00      	cmp	r7, #0
   83f2c:	d1e9      	bne.n	83f02 <_fwalk+0xe>
   83f2e:	4630      	mov	r0, r6
   83f30:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   83f34:	463e      	mov	r6, r7
   83f36:	4630      	mov	r0, r6
   83f38:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

00083f3c <__locale_charset>:
   83f3c:	4800      	ldr	r0, [pc, #0]	; (83f40 <__locale_charset+0x4>)
   83f3e:	4770      	bx	lr
   83f40:	2007049c 	.word	0x2007049c

00083f44 <__locale_mb_cur_max>:
   83f44:	4b01      	ldr	r3, [pc, #4]	; (83f4c <__locale_mb_cur_max+0x8>)
   83f46:	6818      	ldr	r0, [r3, #0]
   83f48:	4770      	bx	lr
   83f4a:	bf00      	nop
   83f4c:	200704bc 	.word	0x200704bc

00083f50 <__smakebuf_r>:
   83f50:	b5f0      	push	{r4, r5, r6, r7, lr}
   83f52:	898b      	ldrh	r3, [r1, #12]
   83f54:	b091      	sub	sp, #68	; 0x44
   83f56:	b29a      	uxth	r2, r3
   83f58:	0796      	lsls	r6, r2, #30
   83f5a:	460c      	mov	r4, r1
   83f5c:	4605      	mov	r5, r0
   83f5e:	d437      	bmi.n	83fd0 <__smakebuf_r+0x80>
   83f60:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
   83f64:	2900      	cmp	r1, #0
   83f66:	db17      	blt.n	83f98 <__smakebuf_r+0x48>
   83f68:	aa01      	add	r2, sp, #4
   83f6a:	f000 ffbb 	bl	84ee4 <_fstat_r>
   83f6e:	2800      	cmp	r0, #0
   83f70:	db10      	blt.n	83f94 <__smakebuf_r+0x44>
   83f72:	9b02      	ldr	r3, [sp, #8]
   83f74:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
   83f78:	f5b3 5100 	subs.w	r1, r3, #8192	; 0x2000
   83f7c:	424f      	negs	r7, r1
   83f7e:	414f      	adcs	r7, r1
   83f80:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
   83f84:	d02c      	beq.n	83fe0 <__smakebuf_r+0x90>
   83f86:	89a3      	ldrh	r3, [r4, #12]
   83f88:	f44f 6680 	mov.w	r6, #1024	; 0x400
   83f8c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
   83f90:	81a3      	strh	r3, [r4, #12]
   83f92:	e00b      	b.n	83fac <__smakebuf_r+0x5c>
   83f94:	89a3      	ldrh	r3, [r4, #12]
   83f96:	b29a      	uxth	r2, r3
   83f98:	f012 0f80 	tst.w	r2, #128	; 0x80
   83f9c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
   83fa0:	81a3      	strh	r3, [r4, #12]
   83fa2:	bf14      	ite	ne
   83fa4:	2640      	movne	r6, #64	; 0x40
   83fa6:	f44f 6680 	moveq.w	r6, #1024	; 0x400
   83faa:	2700      	movs	r7, #0
   83fac:	4628      	mov	r0, r5
   83fae:	4631      	mov	r1, r6
   83fb0:	f000 f83e 	bl	84030 <_malloc_r>
   83fb4:	89a3      	ldrh	r3, [r4, #12]
   83fb6:	2800      	cmp	r0, #0
   83fb8:	d029      	beq.n	8400e <__smakebuf_r+0xbe>
   83fba:	4a1b      	ldr	r2, [pc, #108]	; (84028 <__smakebuf_r+0xd8>)
   83fbc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
   83fc0:	63ea      	str	r2, [r5, #60]	; 0x3c
   83fc2:	81a3      	strh	r3, [r4, #12]
   83fc4:	6020      	str	r0, [r4, #0]
   83fc6:	6120      	str	r0, [r4, #16]
   83fc8:	6166      	str	r6, [r4, #20]
   83fca:	b9a7      	cbnz	r7, 83ff6 <__smakebuf_r+0xa6>
   83fcc:	b011      	add	sp, #68	; 0x44
   83fce:	bdf0      	pop	{r4, r5, r6, r7, pc}
   83fd0:	f101 0343 	add.w	r3, r1, #67	; 0x43
   83fd4:	2201      	movs	r2, #1
   83fd6:	600b      	str	r3, [r1, #0]
   83fd8:	610b      	str	r3, [r1, #16]
   83fda:	614a      	str	r2, [r1, #20]
   83fdc:	b011      	add	sp, #68	; 0x44
   83fde:	bdf0      	pop	{r4, r5, r6, r7, pc}
   83fe0:	4a12      	ldr	r2, [pc, #72]	; (8402c <__smakebuf_r+0xdc>)
   83fe2:	6aa3      	ldr	r3, [r4, #40]	; 0x28
   83fe4:	4293      	cmp	r3, r2
   83fe6:	d1ce      	bne.n	83f86 <__smakebuf_r+0x36>
   83fe8:	89a3      	ldrh	r3, [r4, #12]
   83fea:	f44f 6680 	mov.w	r6, #1024	; 0x400
   83fee:	4333      	orrs	r3, r6
   83ff0:	81a3      	strh	r3, [r4, #12]
   83ff2:	64e6      	str	r6, [r4, #76]	; 0x4c
   83ff4:	e7da      	b.n	83fac <__smakebuf_r+0x5c>
   83ff6:	4628      	mov	r0, r5
   83ff8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
   83ffc:	f000 ff86 	bl	84f0c <_isatty_r>
   84000:	2800      	cmp	r0, #0
   84002:	d0e3      	beq.n	83fcc <__smakebuf_r+0x7c>
   84004:	89a3      	ldrh	r3, [r4, #12]
   84006:	f043 0301 	orr.w	r3, r3, #1
   8400a:	81a3      	strh	r3, [r4, #12]
   8400c:	e7de      	b.n	83fcc <__smakebuf_r+0x7c>
   8400e:	059a      	lsls	r2, r3, #22
   84010:	d4dc      	bmi.n	83fcc <__smakebuf_r+0x7c>
   84012:	f104 0243 	add.w	r2, r4, #67	; 0x43
   84016:	f043 0302 	orr.w	r3, r3, #2
   8401a:	2101      	movs	r1, #1
   8401c:	81a3      	strh	r3, [r4, #12]
   8401e:	6022      	str	r2, [r4, #0]
   84020:	6122      	str	r2, [r4, #16]
   84022:	6161      	str	r1, [r4, #20]
   84024:	e7d2      	b.n	83fcc <__smakebuf_r+0x7c>
   84026:	bf00      	nop
   84028:	000837b5 	.word	0x000837b5
   8402c:	00084c25 	.word	0x00084c25

00084030 <_malloc_r>:
   84030:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   84034:	f101 050b 	add.w	r5, r1, #11
   84038:	2d16      	cmp	r5, #22
   8403a:	b083      	sub	sp, #12
   8403c:	4606      	mov	r6, r0
   8403e:	d927      	bls.n	84090 <_malloc_r+0x60>
   84040:	f035 0507 	bics.w	r5, r5, #7
   84044:	d427      	bmi.n	84096 <_malloc_r+0x66>
   84046:	42a9      	cmp	r1, r5
   84048:	d825      	bhi.n	84096 <_malloc_r+0x66>
   8404a:	4630      	mov	r0, r6
   8404c:	f000 fbb2 	bl	847b4 <__malloc_lock>
   84050:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
   84054:	d226      	bcs.n	840a4 <_malloc_r+0x74>
   84056:	4fc1      	ldr	r7, [pc, #772]	; (8435c <_malloc_r+0x32c>)
   84058:	ea4f 0cd5 	mov.w	ip, r5, lsr #3
   8405c:	eb07 03cc 	add.w	r3, r7, ip, lsl #3
   84060:	68dc      	ldr	r4, [r3, #12]
   84062:	429c      	cmp	r4, r3
   84064:	f000 81d2 	beq.w	8440c <_malloc_r+0x3dc>
   84068:	6863      	ldr	r3, [r4, #4]
   8406a:	68e2      	ldr	r2, [r4, #12]
   8406c:	f023 0303 	bic.w	r3, r3, #3
   84070:	4423      	add	r3, r4
   84072:	6858      	ldr	r0, [r3, #4]
   84074:	68a1      	ldr	r1, [r4, #8]
   84076:	f040 0501 	orr.w	r5, r0, #1
   8407a:	60ca      	str	r2, [r1, #12]
   8407c:	4630      	mov	r0, r6
   8407e:	6091      	str	r1, [r2, #8]
   84080:	605d      	str	r5, [r3, #4]
   84082:	f000 fb99 	bl	847b8 <__malloc_unlock>
   84086:	3408      	adds	r4, #8
   84088:	4620      	mov	r0, r4
   8408a:	b003      	add	sp, #12
   8408c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   84090:	2510      	movs	r5, #16
   84092:	42a9      	cmp	r1, r5
   84094:	d9d9      	bls.n	8404a <_malloc_r+0x1a>
   84096:	2400      	movs	r4, #0
   84098:	230c      	movs	r3, #12
   8409a:	4620      	mov	r0, r4
   8409c:	6033      	str	r3, [r6, #0]
   8409e:	b003      	add	sp, #12
   840a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   840a4:	ea5f 2c55 	movs.w	ip, r5, lsr #9
   840a8:	f000 8089 	beq.w	841be <_malloc_r+0x18e>
   840ac:	f1bc 0f04 	cmp.w	ip, #4
   840b0:	f200 8160 	bhi.w	84374 <_malloc_r+0x344>
   840b4:	ea4f 1c95 	mov.w	ip, r5, lsr #6
   840b8:	f10c 0c38 	add.w	ip, ip, #56	; 0x38
   840bc:	ea4f 014c 	mov.w	r1, ip, lsl #1
   840c0:	4fa6      	ldr	r7, [pc, #664]	; (8435c <_malloc_r+0x32c>)
   840c2:	eb07 0181 	add.w	r1, r7, r1, lsl #2
   840c6:	68cc      	ldr	r4, [r1, #12]
   840c8:	42a1      	cmp	r1, r4
   840ca:	d105      	bne.n	840d8 <_malloc_r+0xa8>
   840cc:	e00c      	b.n	840e8 <_malloc_r+0xb8>
   840ce:	2b00      	cmp	r3, #0
   840d0:	da79      	bge.n	841c6 <_malloc_r+0x196>
   840d2:	68e4      	ldr	r4, [r4, #12]
   840d4:	42a1      	cmp	r1, r4
   840d6:	d007      	beq.n	840e8 <_malloc_r+0xb8>
   840d8:	6862      	ldr	r2, [r4, #4]
   840da:	f022 0203 	bic.w	r2, r2, #3
   840de:	1b53      	subs	r3, r2, r5
   840e0:	2b0f      	cmp	r3, #15
   840e2:	ddf4      	ble.n	840ce <_malloc_r+0x9e>
   840e4:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
   840e8:	f10c 0c01 	add.w	ip, ip, #1
   840ec:	4b9b      	ldr	r3, [pc, #620]	; (8435c <_malloc_r+0x32c>)
   840ee:	693c      	ldr	r4, [r7, #16]
   840f0:	f103 0e08 	add.w	lr, r3, #8
   840f4:	4574      	cmp	r4, lr
   840f6:	f000 817e 	beq.w	843f6 <_malloc_r+0x3c6>
   840fa:	6861      	ldr	r1, [r4, #4]
   840fc:	f021 0103 	bic.w	r1, r1, #3
   84100:	1b4a      	subs	r2, r1, r5
   84102:	2a0f      	cmp	r2, #15
   84104:	f300 8164 	bgt.w	843d0 <_malloc_r+0x3a0>
   84108:	2a00      	cmp	r2, #0
   8410a:	f8c3 e014 	str.w	lr, [r3, #20]
   8410e:	f8c3 e010 	str.w	lr, [r3, #16]
   84112:	da69      	bge.n	841e8 <_malloc_r+0x1b8>
   84114:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
   84118:	f080 813a 	bcs.w	84390 <_malloc_r+0x360>
   8411c:	08c9      	lsrs	r1, r1, #3
   8411e:	108a      	asrs	r2, r1, #2
   84120:	f04f 0801 	mov.w	r8, #1
   84124:	fa08 f802 	lsl.w	r8, r8, r2
   84128:	eb03 01c1 	add.w	r1, r3, r1, lsl #3
   8412c:	685a      	ldr	r2, [r3, #4]
   8412e:	6888      	ldr	r0, [r1, #8]
   84130:	ea48 0202 	orr.w	r2, r8, r2
   84134:	60a0      	str	r0, [r4, #8]
   84136:	60e1      	str	r1, [r4, #12]
   84138:	605a      	str	r2, [r3, #4]
   8413a:	608c      	str	r4, [r1, #8]
   8413c:	60c4      	str	r4, [r0, #12]
   8413e:	ea4f 03ac 	mov.w	r3, ip, asr #2
   84142:	2001      	movs	r0, #1
   84144:	4098      	lsls	r0, r3
   84146:	4290      	cmp	r0, r2
   84148:	d85b      	bhi.n	84202 <_malloc_r+0x1d2>
   8414a:	4202      	tst	r2, r0
   8414c:	d106      	bne.n	8415c <_malloc_r+0x12c>
   8414e:	f02c 0c03 	bic.w	ip, ip, #3
   84152:	0040      	lsls	r0, r0, #1
   84154:	4202      	tst	r2, r0
   84156:	f10c 0c04 	add.w	ip, ip, #4
   8415a:	d0fa      	beq.n	84152 <_malloc_r+0x122>
   8415c:	eb07 08cc 	add.w	r8, r7, ip, lsl #3
   84160:	4644      	mov	r4, r8
   84162:	46e1      	mov	r9, ip
   84164:	68e3      	ldr	r3, [r4, #12]
   84166:	429c      	cmp	r4, r3
   84168:	d107      	bne.n	8417a <_malloc_r+0x14a>
   8416a:	e146      	b.n	843fa <_malloc_r+0x3ca>
   8416c:	2a00      	cmp	r2, #0
   8416e:	f280 8157 	bge.w	84420 <_malloc_r+0x3f0>
   84172:	68db      	ldr	r3, [r3, #12]
   84174:	429c      	cmp	r4, r3
   84176:	f000 8140 	beq.w	843fa <_malloc_r+0x3ca>
   8417a:	6859      	ldr	r1, [r3, #4]
   8417c:	f021 0103 	bic.w	r1, r1, #3
   84180:	1b4a      	subs	r2, r1, r5
   84182:	2a0f      	cmp	r2, #15
   84184:	ddf2      	ble.n	8416c <_malloc_r+0x13c>
   84186:	461c      	mov	r4, r3
   84188:	f854 cf08 	ldr.w	ip, [r4, #8]!
   8418c:	68d9      	ldr	r1, [r3, #12]
   8418e:	f045 0901 	orr.w	r9, r5, #1
   84192:	f042 0801 	orr.w	r8, r2, #1
   84196:	441d      	add	r5, r3
   84198:	f8c3 9004 	str.w	r9, [r3, #4]
   8419c:	4630      	mov	r0, r6
   8419e:	f8cc 100c 	str.w	r1, [ip, #12]
   841a2:	f8c1 c008 	str.w	ip, [r1, #8]
   841a6:	617d      	str	r5, [r7, #20]
   841a8:	613d      	str	r5, [r7, #16]
   841aa:	f8c5 e00c 	str.w	lr, [r5, #12]
   841ae:	f8c5 e008 	str.w	lr, [r5, #8]
   841b2:	f8c5 8004 	str.w	r8, [r5, #4]
   841b6:	50aa      	str	r2, [r5, r2]
   841b8:	f000 fafe 	bl	847b8 <__malloc_unlock>
   841bc:	e764      	b.n	84088 <_malloc_r+0x58>
   841be:	217e      	movs	r1, #126	; 0x7e
   841c0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
   841c4:	e77c      	b.n	840c0 <_malloc_r+0x90>
   841c6:	4422      	add	r2, r4
   841c8:	6850      	ldr	r0, [r2, #4]
   841ca:	68e3      	ldr	r3, [r4, #12]
   841cc:	68a1      	ldr	r1, [r4, #8]
   841ce:	f040 0501 	orr.w	r5, r0, #1
   841d2:	60cb      	str	r3, [r1, #12]
   841d4:	4630      	mov	r0, r6
   841d6:	6099      	str	r1, [r3, #8]
   841d8:	6055      	str	r5, [r2, #4]
   841da:	f000 faed 	bl	847b8 <__malloc_unlock>
   841de:	3408      	adds	r4, #8
   841e0:	4620      	mov	r0, r4
   841e2:	b003      	add	sp, #12
   841e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   841e8:	4421      	add	r1, r4
   841ea:	684b      	ldr	r3, [r1, #4]
   841ec:	4630      	mov	r0, r6
   841ee:	f043 0301 	orr.w	r3, r3, #1
   841f2:	604b      	str	r3, [r1, #4]
   841f4:	f000 fae0 	bl	847b8 <__malloc_unlock>
   841f8:	3408      	adds	r4, #8
   841fa:	4620      	mov	r0, r4
   841fc:	b003      	add	sp, #12
   841fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   84202:	68bc      	ldr	r4, [r7, #8]
   84204:	6863      	ldr	r3, [r4, #4]
   84206:	f023 0903 	bic.w	r9, r3, #3
   8420a:	45a9      	cmp	r9, r5
   8420c:	d304      	bcc.n	84218 <_malloc_r+0x1e8>
   8420e:	ebc5 0309 	rsb	r3, r5, r9
   84212:	2b0f      	cmp	r3, #15
   84214:	f300 8091 	bgt.w	8433a <_malloc_r+0x30a>
   84218:	4b51      	ldr	r3, [pc, #324]	; (84360 <_malloc_r+0x330>)
   8421a:	4a52      	ldr	r2, [pc, #328]	; (84364 <_malloc_r+0x334>)
   8421c:	6819      	ldr	r1, [r3, #0]
   8421e:	6813      	ldr	r3, [r2, #0]
   84220:	eb05 0a01 	add.w	sl, r5, r1
   84224:	3301      	adds	r3, #1
   84226:	eb04 0b09 	add.w	fp, r4, r9
   8422a:	f000 8161 	beq.w	844f0 <_malloc_r+0x4c0>
   8422e:	f50a 5a80 	add.w	sl, sl, #4096	; 0x1000
   84232:	f10a 0a0f 	add.w	sl, sl, #15
   84236:	f42a 6a7f 	bic.w	sl, sl, #4080	; 0xff0
   8423a:	f02a 0a0f 	bic.w	sl, sl, #15
   8423e:	4630      	mov	r0, r6
   84240:	4651      	mov	r1, sl
   84242:	9201      	str	r2, [sp, #4]
   84244:	f000 fc9a 	bl	84b7c <_sbrk_r>
   84248:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
   8424c:	4680      	mov	r8, r0
   8424e:	9a01      	ldr	r2, [sp, #4]
   84250:	f000 8101 	beq.w	84456 <_malloc_r+0x426>
   84254:	4583      	cmp	fp, r0
   84256:	f200 80fb 	bhi.w	84450 <_malloc_r+0x420>
   8425a:	f8df c114 	ldr.w	ip, [pc, #276]	; 84370 <_malloc_r+0x340>
   8425e:	45c3      	cmp	fp, r8
   84260:	f8dc 3000 	ldr.w	r3, [ip]
   84264:	4453      	add	r3, sl
   84266:	f8cc 3000 	str.w	r3, [ip]
   8426a:	f000 814a 	beq.w	84502 <_malloc_r+0x4d2>
   8426e:	6812      	ldr	r2, [r2, #0]
   84270:	493c      	ldr	r1, [pc, #240]	; (84364 <_malloc_r+0x334>)
   84272:	3201      	adds	r2, #1
   84274:	bf1b      	ittet	ne
   84276:	ebcb 0b08 	rsbne	fp, fp, r8
   8427a:	445b      	addne	r3, fp
   8427c:	f8c1 8000 	streq.w	r8, [r1]
   84280:	f8cc 3000 	strne.w	r3, [ip]
   84284:	f018 0307 	ands.w	r3, r8, #7
   84288:	f000 8114 	beq.w	844b4 <_malloc_r+0x484>
   8428c:	f1c3 0208 	rsb	r2, r3, #8
   84290:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
   84294:	4490      	add	r8, r2
   84296:	3308      	adds	r3, #8
   84298:	44c2      	add	sl, r8
   8429a:	f3ca 0a0b 	ubfx	sl, sl, #0, #12
   8429e:	ebca 0a03 	rsb	sl, sl, r3
   842a2:	4651      	mov	r1, sl
   842a4:	4630      	mov	r0, r6
   842a6:	f8cd c004 	str.w	ip, [sp, #4]
   842aa:	f000 fc67 	bl	84b7c <_sbrk_r>
   842ae:	1c43      	adds	r3, r0, #1
   842b0:	f8dd c004 	ldr.w	ip, [sp, #4]
   842b4:	f000 8135 	beq.w	84522 <_malloc_r+0x4f2>
   842b8:	ebc8 0200 	rsb	r2, r8, r0
   842bc:	4452      	add	r2, sl
   842be:	f042 0201 	orr.w	r2, r2, #1
   842c2:	f8dc 3000 	ldr.w	r3, [ip]
   842c6:	42bc      	cmp	r4, r7
   842c8:	4453      	add	r3, sl
   842ca:	f8c7 8008 	str.w	r8, [r7, #8]
   842ce:	f8cc 3000 	str.w	r3, [ip]
   842d2:	f8c8 2004 	str.w	r2, [r8, #4]
   842d6:	f8df a098 	ldr.w	sl, [pc, #152]	; 84370 <_malloc_r+0x340>
   842da:	d015      	beq.n	84308 <_malloc_r+0x2d8>
   842dc:	f1b9 0f0f 	cmp.w	r9, #15
   842e0:	f240 80eb 	bls.w	844ba <_malloc_r+0x48a>
   842e4:	6861      	ldr	r1, [r4, #4]
   842e6:	f1a9 020c 	sub.w	r2, r9, #12
   842ea:	f022 0207 	bic.w	r2, r2, #7
   842ee:	f001 0101 	and.w	r1, r1, #1
   842f2:	ea42 0e01 	orr.w	lr, r2, r1
   842f6:	2005      	movs	r0, #5
   842f8:	18a1      	adds	r1, r4, r2
   842fa:	2a0f      	cmp	r2, #15
   842fc:	f8c4 e004 	str.w	lr, [r4, #4]
   84300:	6048      	str	r0, [r1, #4]
   84302:	6088      	str	r0, [r1, #8]
   84304:	f200 8111 	bhi.w	8452a <_malloc_r+0x4fa>
   84308:	4a17      	ldr	r2, [pc, #92]	; (84368 <_malloc_r+0x338>)
   8430a:	68bc      	ldr	r4, [r7, #8]
   8430c:	6811      	ldr	r1, [r2, #0]
   8430e:	428b      	cmp	r3, r1
   84310:	bf88      	it	hi
   84312:	6013      	strhi	r3, [r2, #0]
   84314:	4a15      	ldr	r2, [pc, #84]	; (8436c <_malloc_r+0x33c>)
   84316:	6811      	ldr	r1, [r2, #0]
   84318:	428b      	cmp	r3, r1
   8431a:	bf88      	it	hi
   8431c:	6013      	strhi	r3, [r2, #0]
   8431e:	6862      	ldr	r2, [r4, #4]
   84320:	f022 0203 	bic.w	r2, r2, #3
   84324:	4295      	cmp	r5, r2
   84326:	ebc5 0302 	rsb	r3, r5, r2
   8432a:	d801      	bhi.n	84330 <_malloc_r+0x300>
   8432c:	2b0f      	cmp	r3, #15
   8432e:	dc04      	bgt.n	8433a <_malloc_r+0x30a>
   84330:	4630      	mov	r0, r6
   84332:	f000 fa41 	bl	847b8 <__malloc_unlock>
   84336:	2400      	movs	r4, #0
   84338:	e6a6      	b.n	84088 <_malloc_r+0x58>
   8433a:	f045 0201 	orr.w	r2, r5, #1
   8433e:	f043 0301 	orr.w	r3, r3, #1
   84342:	4425      	add	r5, r4
   84344:	6062      	str	r2, [r4, #4]
   84346:	4630      	mov	r0, r6
   84348:	60bd      	str	r5, [r7, #8]
   8434a:	606b      	str	r3, [r5, #4]
   8434c:	f000 fa34 	bl	847b8 <__malloc_unlock>
   84350:	3408      	adds	r4, #8
   84352:	4620      	mov	r0, r4
   84354:	b003      	add	sp, #12
   84356:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   8435a:	bf00      	nop
   8435c:	200704c0 	.word	0x200704c0
   84360:	200712d8 	.word	0x200712d8
   84364:	200708cc 	.word	0x200708cc
   84368:	200712d4 	.word	0x200712d4
   8436c:	200712d0 	.word	0x200712d0
   84370:	200712dc 	.word	0x200712dc
   84374:	f1bc 0f14 	cmp.w	ip, #20
   84378:	d961      	bls.n	8443e <_malloc_r+0x40e>
   8437a:	f1bc 0f54 	cmp.w	ip, #84	; 0x54
   8437e:	f200 808f 	bhi.w	844a0 <_malloc_r+0x470>
   84382:	ea4f 3c15 	mov.w	ip, r5, lsr #12
   84386:	f10c 0c6e 	add.w	ip, ip, #110	; 0x6e
   8438a:	ea4f 014c 	mov.w	r1, ip, lsl #1
   8438e:	e697      	b.n	840c0 <_malloc_r+0x90>
   84390:	0a4b      	lsrs	r3, r1, #9
   84392:	2b04      	cmp	r3, #4
   84394:	d958      	bls.n	84448 <_malloc_r+0x418>
   84396:	2b14      	cmp	r3, #20
   84398:	f200 80ad 	bhi.w	844f6 <_malloc_r+0x4c6>
   8439c:	f103 025b 	add.w	r2, r3, #91	; 0x5b
   843a0:	0050      	lsls	r0, r2, #1
   843a2:	eb07 0080 	add.w	r0, r7, r0, lsl #2
   843a6:	6883      	ldr	r3, [r0, #8]
   843a8:	f8df 81b8 	ldr.w	r8, [pc, #440]	; 84564 <_malloc_r+0x534>
   843ac:	4283      	cmp	r3, r0
   843ae:	f000 808a 	beq.w	844c6 <_malloc_r+0x496>
   843b2:	685a      	ldr	r2, [r3, #4]
   843b4:	f022 0203 	bic.w	r2, r2, #3
   843b8:	4291      	cmp	r1, r2
   843ba:	d202      	bcs.n	843c2 <_malloc_r+0x392>
   843bc:	689b      	ldr	r3, [r3, #8]
   843be:	4298      	cmp	r0, r3
   843c0:	d1f7      	bne.n	843b2 <_malloc_r+0x382>
   843c2:	68d9      	ldr	r1, [r3, #12]
   843c4:	687a      	ldr	r2, [r7, #4]
   843c6:	60e1      	str	r1, [r4, #12]
   843c8:	60a3      	str	r3, [r4, #8]
   843ca:	608c      	str	r4, [r1, #8]
   843cc:	60dc      	str	r4, [r3, #12]
   843ce:	e6b6      	b.n	8413e <_malloc_r+0x10e>
   843d0:	f045 0701 	orr.w	r7, r5, #1
   843d4:	f042 0101 	orr.w	r1, r2, #1
   843d8:	4425      	add	r5, r4
   843da:	6067      	str	r7, [r4, #4]
   843dc:	4630      	mov	r0, r6
   843de:	615d      	str	r5, [r3, #20]
   843e0:	611d      	str	r5, [r3, #16]
   843e2:	f8c5 e00c 	str.w	lr, [r5, #12]
   843e6:	f8c5 e008 	str.w	lr, [r5, #8]
   843ea:	6069      	str	r1, [r5, #4]
   843ec:	50aa      	str	r2, [r5, r2]
   843ee:	3408      	adds	r4, #8
   843f0:	f000 f9e2 	bl	847b8 <__malloc_unlock>
   843f4:	e648      	b.n	84088 <_malloc_r+0x58>
   843f6:	685a      	ldr	r2, [r3, #4]
   843f8:	e6a1      	b.n	8413e <_malloc_r+0x10e>
   843fa:	f109 0901 	add.w	r9, r9, #1
   843fe:	f019 0f03 	tst.w	r9, #3
   84402:	f104 0408 	add.w	r4, r4, #8
   84406:	f47f aead 	bne.w	84164 <_malloc_r+0x134>
   8440a:	e02d      	b.n	84468 <_malloc_r+0x438>
   8440c:	f104 0308 	add.w	r3, r4, #8
   84410:	6964      	ldr	r4, [r4, #20]
   84412:	42a3      	cmp	r3, r4
   84414:	bf08      	it	eq
   84416:	f10c 0c02 	addeq.w	ip, ip, #2
   8441a:	f43f ae67 	beq.w	840ec <_malloc_r+0xbc>
   8441e:	e623      	b.n	84068 <_malloc_r+0x38>
   84420:	4419      	add	r1, r3
   84422:	6848      	ldr	r0, [r1, #4]
   84424:	461c      	mov	r4, r3
   84426:	f854 2f08 	ldr.w	r2, [r4, #8]!
   8442a:	68db      	ldr	r3, [r3, #12]
   8442c:	f040 0501 	orr.w	r5, r0, #1
   84430:	604d      	str	r5, [r1, #4]
   84432:	4630      	mov	r0, r6
   84434:	60d3      	str	r3, [r2, #12]
   84436:	609a      	str	r2, [r3, #8]
   84438:	f000 f9be 	bl	847b8 <__malloc_unlock>
   8443c:	e624      	b.n	84088 <_malloc_r+0x58>
   8443e:	f10c 0c5b 	add.w	ip, ip, #91	; 0x5b
   84442:	ea4f 014c 	mov.w	r1, ip, lsl #1
   84446:	e63b      	b.n	840c0 <_malloc_r+0x90>
   84448:	098a      	lsrs	r2, r1, #6
   8444a:	3238      	adds	r2, #56	; 0x38
   8444c:	0050      	lsls	r0, r2, #1
   8444e:	e7a8      	b.n	843a2 <_malloc_r+0x372>
   84450:	42bc      	cmp	r4, r7
   84452:	f43f af02 	beq.w	8425a <_malloc_r+0x22a>
   84456:	68bc      	ldr	r4, [r7, #8]
   84458:	6862      	ldr	r2, [r4, #4]
   8445a:	f022 0203 	bic.w	r2, r2, #3
   8445e:	e761      	b.n	84324 <_malloc_r+0x2f4>
   84460:	f8d8 8000 	ldr.w	r8, [r8]
   84464:	4598      	cmp	r8, r3
   84466:	d17a      	bne.n	8455e <_malloc_r+0x52e>
   84468:	f01c 0f03 	tst.w	ip, #3
   8446c:	f1a8 0308 	sub.w	r3, r8, #8
   84470:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
   84474:	d1f4      	bne.n	84460 <_malloc_r+0x430>
   84476:	687b      	ldr	r3, [r7, #4]
   84478:	ea23 0300 	bic.w	r3, r3, r0
   8447c:	607b      	str	r3, [r7, #4]
   8447e:	0040      	lsls	r0, r0, #1
   84480:	4298      	cmp	r0, r3
   84482:	f63f aebe 	bhi.w	84202 <_malloc_r+0x1d2>
   84486:	2800      	cmp	r0, #0
   84488:	f43f aebb 	beq.w	84202 <_malloc_r+0x1d2>
   8448c:	4203      	tst	r3, r0
   8448e:	46cc      	mov	ip, r9
   84490:	f47f ae64 	bne.w	8415c <_malloc_r+0x12c>
   84494:	0040      	lsls	r0, r0, #1
   84496:	4203      	tst	r3, r0
   84498:	f10c 0c04 	add.w	ip, ip, #4
   8449c:	d0fa      	beq.n	84494 <_malloc_r+0x464>
   8449e:	e65d      	b.n	8415c <_malloc_r+0x12c>
   844a0:	f5bc 7faa 	cmp.w	ip, #340	; 0x154
   844a4:	d819      	bhi.n	844da <_malloc_r+0x4aa>
   844a6:	ea4f 3cd5 	mov.w	ip, r5, lsr #15
   844aa:	f10c 0c77 	add.w	ip, ip, #119	; 0x77
   844ae:	ea4f 014c 	mov.w	r1, ip, lsl #1
   844b2:	e605      	b.n	840c0 <_malloc_r+0x90>
   844b4:	f44f 5380 	mov.w	r3, #4096	; 0x1000
   844b8:	e6ee      	b.n	84298 <_malloc_r+0x268>
   844ba:	2301      	movs	r3, #1
   844bc:	f8c8 3004 	str.w	r3, [r8, #4]
   844c0:	4644      	mov	r4, r8
   844c2:	2200      	movs	r2, #0
   844c4:	e72e      	b.n	84324 <_malloc_r+0x2f4>
   844c6:	1092      	asrs	r2, r2, #2
   844c8:	2001      	movs	r0, #1
   844ca:	4090      	lsls	r0, r2
   844cc:	f8d8 2004 	ldr.w	r2, [r8, #4]
   844d0:	4619      	mov	r1, r3
   844d2:	4302      	orrs	r2, r0
   844d4:	f8c8 2004 	str.w	r2, [r8, #4]
   844d8:	e775      	b.n	843c6 <_malloc_r+0x396>
   844da:	f240 5354 	movw	r3, #1364	; 0x554
   844de:	459c      	cmp	ip, r3
   844e0:	d81b      	bhi.n	8451a <_malloc_r+0x4ea>
   844e2:	ea4f 4c95 	mov.w	ip, r5, lsr #18
   844e6:	f10c 0c7c 	add.w	ip, ip, #124	; 0x7c
   844ea:	ea4f 014c 	mov.w	r1, ip, lsl #1
   844ee:	e5e7      	b.n	840c0 <_malloc_r+0x90>
   844f0:	f10a 0a10 	add.w	sl, sl, #16
   844f4:	e6a3      	b.n	8423e <_malloc_r+0x20e>
   844f6:	2b54      	cmp	r3, #84	; 0x54
   844f8:	d81f      	bhi.n	8453a <_malloc_r+0x50a>
   844fa:	0b0a      	lsrs	r2, r1, #12
   844fc:	326e      	adds	r2, #110	; 0x6e
   844fe:	0050      	lsls	r0, r2, #1
   84500:	e74f      	b.n	843a2 <_malloc_r+0x372>
   84502:	f3cb 010b 	ubfx	r1, fp, #0, #12
   84506:	2900      	cmp	r1, #0
   84508:	f47f aeb1 	bne.w	8426e <_malloc_r+0x23e>
   8450c:	eb0a 0109 	add.w	r1, sl, r9
   84510:	68ba      	ldr	r2, [r7, #8]
   84512:	f041 0101 	orr.w	r1, r1, #1
   84516:	6051      	str	r1, [r2, #4]
   84518:	e6f6      	b.n	84308 <_malloc_r+0x2d8>
   8451a:	21fc      	movs	r1, #252	; 0xfc
   8451c:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
   84520:	e5ce      	b.n	840c0 <_malloc_r+0x90>
   84522:	2201      	movs	r2, #1
   84524:	f04f 0a00 	mov.w	sl, #0
   84528:	e6cb      	b.n	842c2 <_malloc_r+0x292>
   8452a:	f104 0108 	add.w	r1, r4, #8
   8452e:	4630      	mov	r0, r6
   84530:	f7ff fa8a 	bl	83a48 <_free_r>
   84534:	f8da 3000 	ldr.w	r3, [sl]
   84538:	e6e6      	b.n	84308 <_malloc_r+0x2d8>
   8453a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
   8453e:	d803      	bhi.n	84548 <_malloc_r+0x518>
   84540:	0bca      	lsrs	r2, r1, #15
   84542:	3277      	adds	r2, #119	; 0x77
   84544:	0050      	lsls	r0, r2, #1
   84546:	e72c      	b.n	843a2 <_malloc_r+0x372>
   84548:	f240 5254 	movw	r2, #1364	; 0x554
   8454c:	4293      	cmp	r3, r2
   8454e:	d803      	bhi.n	84558 <_malloc_r+0x528>
   84550:	0c8a      	lsrs	r2, r1, #18
   84552:	327c      	adds	r2, #124	; 0x7c
   84554:	0050      	lsls	r0, r2, #1
   84556:	e724      	b.n	843a2 <_malloc_r+0x372>
   84558:	20fc      	movs	r0, #252	; 0xfc
   8455a:	227e      	movs	r2, #126	; 0x7e
   8455c:	e721      	b.n	843a2 <_malloc_r+0x372>
   8455e:	687b      	ldr	r3, [r7, #4]
   84560:	e78d      	b.n	8447e <_malloc_r+0x44e>
   84562:	bf00      	nop
   84564:	200704c0 	.word	0x200704c0

00084568 <memchr>:
   84568:	0783      	lsls	r3, r0, #30
   8456a:	b470      	push	{r4, r5, r6}
   8456c:	b2c9      	uxtb	r1, r1
   8456e:	d040      	beq.n	845f2 <memchr+0x8a>
   84570:	1e54      	subs	r4, r2, #1
   84572:	b32a      	cbz	r2, 845c0 <memchr+0x58>
   84574:	7803      	ldrb	r3, [r0, #0]
   84576:	428b      	cmp	r3, r1
   84578:	d023      	beq.n	845c2 <memchr+0x5a>
   8457a:	1c43      	adds	r3, r0, #1
   8457c:	e004      	b.n	84588 <memchr+0x20>
   8457e:	b1fc      	cbz	r4, 845c0 <memchr+0x58>
   84580:	7805      	ldrb	r5, [r0, #0]
   84582:	4614      	mov	r4, r2
   84584:	428d      	cmp	r5, r1
   84586:	d01c      	beq.n	845c2 <memchr+0x5a>
   84588:	f013 0f03 	tst.w	r3, #3
   8458c:	4618      	mov	r0, r3
   8458e:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
   84592:	f103 0301 	add.w	r3, r3, #1
   84596:	d1f2      	bne.n	8457e <memchr+0x16>
   84598:	2c03      	cmp	r4, #3
   8459a:	d814      	bhi.n	845c6 <memchr+0x5e>
   8459c:	1e65      	subs	r5, r4, #1
   8459e:	b354      	cbz	r4, 845f6 <memchr+0x8e>
   845a0:	7803      	ldrb	r3, [r0, #0]
   845a2:	428b      	cmp	r3, r1
   845a4:	d00d      	beq.n	845c2 <memchr+0x5a>
   845a6:	1c42      	adds	r2, r0, #1
   845a8:	2300      	movs	r3, #0
   845aa:	e002      	b.n	845b2 <memchr+0x4a>
   845ac:	7804      	ldrb	r4, [r0, #0]
   845ae:	428c      	cmp	r4, r1
   845b0:	d007      	beq.n	845c2 <memchr+0x5a>
   845b2:	42ab      	cmp	r3, r5
   845b4:	4610      	mov	r0, r2
   845b6:	f103 0301 	add.w	r3, r3, #1
   845ba:	f102 0201 	add.w	r2, r2, #1
   845be:	d1f5      	bne.n	845ac <memchr+0x44>
   845c0:	2000      	movs	r0, #0
   845c2:	bc70      	pop	{r4, r5, r6}
   845c4:	4770      	bx	lr
   845c6:	ea41 2601 	orr.w	r6, r1, r1, lsl #8
   845ca:	4603      	mov	r3, r0
   845cc:	ea46 4606 	orr.w	r6, r6, r6, lsl #16
   845d0:	681a      	ldr	r2, [r3, #0]
   845d2:	4618      	mov	r0, r3
   845d4:	4072      	eors	r2, r6
   845d6:	f1a2 3501 	sub.w	r5, r2, #16843009	; 0x1010101
   845da:	ea25 0202 	bic.w	r2, r5, r2
   845de:	f012 3f80 	tst.w	r2, #2155905152	; 0x80808080
   845e2:	f103 0304 	add.w	r3, r3, #4
   845e6:	d1d9      	bne.n	8459c <memchr+0x34>
   845e8:	3c04      	subs	r4, #4
   845ea:	2c03      	cmp	r4, #3
   845ec:	4618      	mov	r0, r3
   845ee:	d8ef      	bhi.n	845d0 <memchr+0x68>
   845f0:	e7d4      	b.n	8459c <memchr+0x34>
   845f2:	4614      	mov	r4, r2
   845f4:	e7d0      	b.n	84598 <memchr+0x30>
   845f6:	4620      	mov	r0, r4
   845f8:	e7e3      	b.n	845c2 <memchr+0x5a>
   845fa:	bf00      	nop

000845fc <memcpy>:
   845fc:	4684      	mov	ip, r0
   845fe:	ea41 0300 	orr.w	r3, r1, r0
   84602:	f013 0303 	ands.w	r3, r3, #3
   84606:	d149      	bne.n	8469c <memcpy+0xa0>
   84608:	3a40      	subs	r2, #64	; 0x40
   8460a:	d323      	bcc.n	84654 <memcpy+0x58>
   8460c:	680b      	ldr	r3, [r1, #0]
   8460e:	6003      	str	r3, [r0, #0]
   84610:	684b      	ldr	r3, [r1, #4]
   84612:	6043      	str	r3, [r0, #4]
   84614:	688b      	ldr	r3, [r1, #8]
   84616:	6083      	str	r3, [r0, #8]
   84618:	68cb      	ldr	r3, [r1, #12]
   8461a:	60c3      	str	r3, [r0, #12]
   8461c:	690b      	ldr	r3, [r1, #16]
   8461e:	6103      	str	r3, [r0, #16]
   84620:	694b      	ldr	r3, [r1, #20]
   84622:	6143      	str	r3, [r0, #20]
   84624:	698b      	ldr	r3, [r1, #24]
   84626:	6183      	str	r3, [r0, #24]
   84628:	69cb      	ldr	r3, [r1, #28]
   8462a:	61c3      	str	r3, [r0, #28]
   8462c:	6a0b      	ldr	r3, [r1, #32]
   8462e:	6203      	str	r3, [r0, #32]
   84630:	6a4b      	ldr	r3, [r1, #36]	; 0x24
   84632:	6243      	str	r3, [r0, #36]	; 0x24
   84634:	6a8b      	ldr	r3, [r1, #40]	; 0x28
   84636:	6283      	str	r3, [r0, #40]	; 0x28
   84638:	6acb      	ldr	r3, [r1, #44]	; 0x2c
   8463a:	62c3      	str	r3, [r0, #44]	; 0x2c
   8463c:	6b0b      	ldr	r3, [r1, #48]	; 0x30
   8463e:	6303      	str	r3, [r0, #48]	; 0x30
   84640:	6b4b      	ldr	r3, [r1, #52]	; 0x34
   84642:	6343      	str	r3, [r0, #52]	; 0x34
   84644:	6b8b      	ldr	r3, [r1, #56]	; 0x38
   84646:	6383      	str	r3, [r0, #56]	; 0x38
   84648:	6bcb      	ldr	r3, [r1, #60]	; 0x3c
   8464a:	63c3      	str	r3, [r0, #60]	; 0x3c
   8464c:	3040      	adds	r0, #64	; 0x40
   8464e:	3140      	adds	r1, #64	; 0x40
   84650:	3a40      	subs	r2, #64	; 0x40
   84652:	d2db      	bcs.n	8460c <memcpy+0x10>
   84654:	3230      	adds	r2, #48	; 0x30
   84656:	d30b      	bcc.n	84670 <memcpy+0x74>
   84658:	680b      	ldr	r3, [r1, #0]
   8465a:	6003      	str	r3, [r0, #0]
   8465c:	684b      	ldr	r3, [r1, #4]
   8465e:	6043      	str	r3, [r0, #4]
   84660:	688b      	ldr	r3, [r1, #8]
   84662:	6083      	str	r3, [r0, #8]
   84664:	68cb      	ldr	r3, [r1, #12]
   84666:	60c3      	str	r3, [r0, #12]
   84668:	3010      	adds	r0, #16
   8466a:	3110      	adds	r1, #16
   8466c:	3a10      	subs	r2, #16
   8466e:	d2f3      	bcs.n	84658 <memcpy+0x5c>
   84670:	320c      	adds	r2, #12
   84672:	d305      	bcc.n	84680 <memcpy+0x84>
   84674:	f851 3b04 	ldr.w	r3, [r1], #4
   84678:	f840 3b04 	str.w	r3, [r0], #4
   8467c:	3a04      	subs	r2, #4
   8467e:	d2f9      	bcs.n	84674 <memcpy+0x78>
   84680:	3204      	adds	r2, #4
   84682:	d008      	beq.n	84696 <memcpy+0x9a>
   84684:	07d2      	lsls	r2, r2, #31
   84686:	bf1c      	itt	ne
   84688:	f811 3b01 	ldrbne.w	r3, [r1], #1
   8468c:	f800 3b01 	strbne.w	r3, [r0], #1
   84690:	d301      	bcc.n	84696 <memcpy+0x9a>
   84692:	880b      	ldrh	r3, [r1, #0]
   84694:	8003      	strh	r3, [r0, #0]
   84696:	4660      	mov	r0, ip
   84698:	4770      	bx	lr
   8469a:	bf00      	nop
   8469c:	2a08      	cmp	r2, #8
   8469e:	d313      	bcc.n	846c8 <memcpy+0xcc>
   846a0:	078b      	lsls	r3, r1, #30
   846a2:	d0b1      	beq.n	84608 <memcpy+0xc>
   846a4:	f010 0303 	ands.w	r3, r0, #3
   846a8:	d0ae      	beq.n	84608 <memcpy+0xc>
   846aa:	f1c3 0304 	rsb	r3, r3, #4
   846ae:	1ad2      	subs	r2, r2, r3
   846b0:	07db      	lsls	r3, r3, #31
   846b2:	bf1c      	itt	ne
   846b4:	f811 3b01 	ldrbne.w	r3, [r1], #1
   846b8:	f800 3b01 	strbne.w	r3, [r0], #1
   846bc:	d3a4      	bcc.n	84608 <memcpy+0xc>
   846be:	f831 3b02 	ldrh.w	r3, [r1], #2
   846c2:	f820 3b02 	strh.w	r3, [r0], #2
   846c6:	e79f      	b.n	84608 <memcpy+0xc>
   846c8:	3a04      	subs	r2, #4
   846ca:	d3d9      	bcc.n	84680 <memcpy+0x84>
   846cc:	3a01      	subs	r2, #1
   846ce:	f811 3b01 	ldrb.w	r3, [r1], #1
   846d2:	f800 3b01 	strb.w	r3, [r0], #1
   846d6:	d2f9      	bcs.n	846cc <memcpy+0xd0>
   846d8:	780b      	ldrb	r3, [r1, #0]
   846da:	7003      	strb	r3, [r0, #0]
   846dc:	784b      	ldrb	r3, [r1, #1]
   846de:	7043      	strb	r3, [r0, #1]
   846e0:	788b      	ldrb	r3, [r1, #2]
   846e2:	7083      	strb	r3, [r0, #2]
   846e4:	4660      	mov	r0, ip
   846e6:	4770      	bx	lr

000846e8 <memmove>:
   846e8:	4288      	cmp	r0, r1
   846ea:	b4f0      	push	{r4, r5, r6, r7}
   846ec:	d910      	bls.n	84710 <memmove+0x28>
   846ee:	188c      	adds	r4, r1, r2
   846f0:	42a0      	cmp	r0, r4
   846f2:	d20d      	bcs.n	84710 <memmove+0x28>
   846f4:	1885      	adds	r5, r0, r2
   846f6:	1e53      	subs	r3, r2, #1
   846f8:	b142      	cbz	r2, 8470c <memmove+0x24>
   846fa:	4621      	mov	r1, r4
   846fc:	462a      	mov	r2, r5
   846fe:	f811 4d01 	ldrb.w	r4, [r1, #-1]!
   84702:	3b01      	subs	r3, #1
   84704:	f802 4d01 	strb.w	r4, [r2, #-1]!
   84708:	1c5c      	adds	r4, r3, #1
   8470a:	d1f8      	bne.n	846fe <memmove+0x16>
   8470c:	bcf0      	pop	{r4, r5, r6, r7}
   8470e:	4770      	bx	lr
   84710:	2a0f      	cmp	r2, #15
   84712:	d944      	bls.n	8479e <memmove+0xb6>
   84714:	ea40 0301 	orr.w	r3, r0, r1
   84718:	079b      	lsls	r3, r3, #30
   8471a:	d144      	bne.n	847a6 <memmove+0xbe>
   8471c:	f1a2 0710 	sub.w	r7, r2, #16
   84720:	093f      	lsrs	r7, r7, #4
   84722:	eb00 1607 	add.w	r6, r0, r7, lsl #4
   84726:	3610      	adds	r6, #16
   84728:	460c      	mov	r4, r1
   8472a:	4603      	mov	r3, r0
   8472c:	6825      	ldr	r5, [r4, #0]
   8472e:	3310      	adds	r3, #16
   84730:	f843 5c10 	str.w	r5, [r3, #-16]
   84734:	6865      	ldr	r5, [r4, #4]
   84736:	3410      	adds	r4, #16
   84738:	f843 5c0c 	str.w	r5, [r3, #-12]
   8473c:	f854 5c08 	ldr.w	r5, [r4, #-8]
   84740:	f843 5c08 	str.w	r5, [r3, #-8]
   84744:	f854 5c04 	ldr.w	r5, [r4, #-4]
   84748:	f843 5c04 	str.w	r5, [r3, #-4]
   8474c:	42b3      	cmp	r3, r6
   8474e:	d1ed      	bne.n	8472c <memmove+0x44>
   84750:	1c7b      	adds	r3, r7, #1
   84752:	f002 0c0f 	and.w	ip, r2, #15
   84756:	011b      	lsls	r3, r3, #4
   84758:	f1bc 0f03 	cmp.w	ip, #3
   8475c:	4419      	add	r1, r3
   8475e:	4403      	add	r3, r0
   84760:	d923      	bls.n	847aa <memmove+0xc2>
   84762:	460e      	mov	r6, r1
   84764:	461d      	mov	r5, r3
   84766:	4664      	mov	r4, ip
   84768:	f856 7b04 	ldr.w	r7, [r6], #4
   8476c:	3c04      	subs	r4, #4
   8476e:	2c03      	cmp	r4, #3
   84770:	f845 7b04 	str.w	r7, [r5], #4
   84774:	d8f8      	bhi.n	84768 <memmove+0x80>
   84776:	f1ac 0404 	sub.w	r4, ip, #4
   8477a:	f024 0403 	bic.w	r4, r4, #3
   8477e:	3404      	adds	r4, #4
   84780:	f002 0203 	and.w	r2, r2, #3
   84784:	4423      	add	r3, r4
   84786:	4421      	add	r1, r4
   84788:	2a00      	cmp	r2, #0
   8478a:	d0bf      	beq.n	8470c <memmove+0x24>
   8478c:	441a      	add	r2, r3
   8478e:	f811 4b01 	ldrb.w	r4, [r1], #1
   84792:	f803 4b01 	strb.w	r4, [r3], #1
   84796:	4293      	cmp	r3, r2
   84798:	d1f9      	bne.n	8478e <memmove+0xa6>
   8479a:	bcf0      	pop	{r4, r5, r6, r7}
   8479c:	4770      	bx	lr
   8479e:	4603      	mov	r3, r0
   847a0:	2a00      	cmp	r2, #0
   847a2:	d1f3      	bne.n	8478c <memmove+0xa4>
   847a4:	e7b2      	b.n	8470c <memmove+0x24>
   847a6:	4603      	mov	r3, r0
   847a8:	e7f0      	b.n	8478c <memmove+0xa4>
   847aa:	4662      	mov	r2, ip
   847ac:	2a00      	cmp	r2, #0
   847ae:	d1ed      	bne.n	8478c <memmove+0xa4>
   847b0:	e7ac      	b.n	8470c <memmove+0x24>
   847b2:	bf00      	nop

000847b4 <__malloc_lock>:
   847b4:	4770      	bx	lr
   847b6:	bf00      	nop

000847b8 <__malloc_unlock>:
   847b8:	4770      	bx	lr
   847ba:	bf00      	nop

000847bc <_realloc_r>:
   847bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   847c0:	460c      	mov	r4, r1
   847c2:	b083      	sub	sp, #12
   847c4:	4690      	mov	r8, r2
   847c6:	4681      	mov	r9, r0
   847c8:	2900      	cmp	r1, #0
   847ca:	f000 80ba 	beq.w	84942 <_realloc_r+0x186>
   847ce:	f7ff fff1 	bl	847b4 <__malloc_lock>
   847d2:	f108 060b 	add.w	r6, r8, #11
   847d6:	f854 3c04 	ldr.w	r3, [r4, #-4]
   847da:	2e16      	cmp	r6, #22
   847dc:	f023 0503 	bic.w	r5, r3, #3
   847e0:	f1a4 0708 	sub.w	r7, r4, #8
   847e4:	d84b      	bhi.n	8487e <_realloc_r+0xc2>
   847e6:	2110      	movs	r1, #16
   847e8:	460e      	mov	r6, r1
   847ea:	45b0      	cmp	r8, r6
   847ec:	d84c      	bhi.n	84888 <_realloc_r+0xcc>
   847ee:	428d      	cmp	r5, r1
   847f0:	da51      	bge.n	84896 <_realloc_r+0xda>
   847f2:	f8df b384 	ldr.w	fp, [pc, #900]	; 84b78 <_realloc_r+0x3bc>
   847f6:	1978      	adds	r0, r7, r5
   847f8:	f8db e008 	ldr.w	lr, [fp, #8]
   847fc:	4586      	cmp	lr, r0
   847fe:	f000 80a6 	beq.w	8494e <_realloc_r+0x192>
   84802:	6842      	ldr	r2, [r0, #4]
   84804:	f022 0c01 	bic.w	ip, r2, #1
   84808:	4484      	add	ip, r0
   8480a:	f8dc c004 	ldr.w	ip, [ip, #4]
   8480e:	f01c 0f01 	tst.w	ip, #1
   84812:	d054      	beq.n	848be <_realloc_r+0x102>
   84814:	2200      	movs	r2, #0
   84816:	4610      	mov	r0, r2
   84818:	07db      	lsls	r3, r3, #31
   8481a:	d46f      	bmi.n	848fc <_realloc_r+0x140>
   8481c:	f854 3c08 	ldr.w	r3, [r4, #-8]
   84820:	ebc3 0a07 	rsb	sl, r3, r7
   84824:	f8da 3004 	ldr.w	r3, [sl, #4]
   84828:	f023 0303 	bic.w	r3, r3, #3
   8482c:	442b      	add	r3, r5
   8482e:	2800      	cmp	r0, #0
   84830:	d062      	beq.n	848f8 <_realloc_r+0x13c>
   84832:	4570      	cmp	r0, lr
   84834:	f000 80e9 	beq.w	84a0a <_realloc_r+0x24e>
   84838:	eb02 0e03 	add.w	lr, r2, r3
   8483c:	458e      	cmp	lr, r1
   8483e:	db5b      	blt.n	848f8 <_realloc_r+0x13c>
   84840:	68c3      	ldr	r3, [r0, #12]
   84842:	6882      	ldr	r2, [r0, #8]
   84844:	46d0      	mov	r8, sl
   84846:	60d3      	str	r3, [r2, #12]
   84848:	609a      	str	r2, [r3, #8]
   8484a:	f858 1f08 	ldr.w	r1, [r8, #8]!
   8484e:	f8da 300c 	ldr.w	r3, [sl, #12]
   84852:	1f2a      	subs	r2, r5, #4
   84854:	2a24      	cmp	r2, #36	; 0x24
   84856:	60cb      	str	r3, [r1, #12]
   84858:	6099      	str	r1, [r3, #8]
   8485a:	f200 8123 	bhi.w	84aa4 <_realloc_r+0x2e8>
   8485e:	2a13      	cmp	r2, #19
   84860:	f240 80b0 	bls.w	849c4 <_realloc_r+0x208>
   84864:	6823      	ldr	r3, [r4, #0]
   84866:	2a1b      	cmp	r2, #27
   84868:	f8ca 3008 	str.w	r3, [sl, #8]
   8486c:	6863      	ldr	r3, [r4, #4]
   8486e:	f8ca 300c 	str.w	r3, [sl, #12]
   84872:	f200 812b 	bhi.w	84acc <_realloc_r+0x310>
   84876:	3408      	adds	r4, #8
   84878:	f10a 0310 	add.w	r3, sl, #16
   8487c:	e0a3      	b.n	849c6 <_realloc_r+0x20a>
   8487e:	f026 0607 	bic.w	r6, r6, #7
   84882:	2e00      	cmp	r6, #0
   84884:	4631      	mov	r1, r6
   84886:	dab0      	bge.n	847ea <_realloc_r+0x2e>
   84888:	230c      	movs	r3, #12
   8488a:	2000      	movs	r0, #0
   8488c:	f8c9 3000 	str.w	r3, [r9]
   84890:	b003      	add	sp, #12
   84892:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   84896:	46a0      	mov	r8, r4
   84898:	1baa      	subs	r2, r5, r6
   8489a:	2a0f      	cmp	r2, #15
   8489c:	f003 0301 	and.w	r3, r3, #1
   848a0:	d81a      	bhi.n	848d8 <_realloc_r+0x11c>
   848a2:	432b      	orrs	r3, r5
   848a4:	607b      	str	r3, [r7, #4]
   848a6:	443d      	add	r5, r7
   848a8:	686b      	ldr	r3, [r5, #4]
   848aa:	f043 0301 	orr.w	r3, r3, #1
   848ae:	606b      	str	r3, [r5, #4]
   848b0:	4648      	mov	r0, r9
   848b2:	f7ff ff81 	bl	847b8 <__malloc_unlock>
   848b6:	4640      	mov	r0, r8
   848b8:	b003      	add	sp, #12
   848ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   848be:	f022 0203 	bic.w	r2, r2, #3
   848c2:	eb02 0c05 	add.w	ip, r2, r5
   848c6:	458c      	cmp	ip, r1
   848c8:	dba6      	blt.n	84818 <_realloc_r+0x5c>
   848ca:	68c2      	ldr	r2, [r0, #12]
   848cc:	6881      	ldr	r1, [r0, #8]
   848ce:	46a0      	mov	r8, r4
   848d0:	60ca      	str	r2, [r1, #12]
   848d2:	4665      	mov	r5, ip
   848d4:	6091      	str	r1, [r2, #8]
   848d6:	e7df      	b.n	84898 <_realloc_r+0xdc>
   848d8:	19b9      	adds	r1, r7, r6
   848da:	4333      	orrs	r3, r6
   848dc:	f042 0001 	orr.w	r0, r2, #1
   848e0:	607b      	str	r3, [r7, #4]
   848e2:	440a      	add	r2, r1
   848e4:	6048      	str	r0, [r1, #4]
   848e6:	6853      	ldr	r3, [r2, #4]
   848e8:	3108      	adds	r1, #8
   848ea:	f043 0301 	orr.w	r3, r3, #1
   848ee:	6053      	str	r3, [r2, #4]
   848f0:	4648      	mov	r0, r9
   848f2:	f7ff f8a9 	bl	83a48 <_free_r>
   848f6:	e7db      	b.n	848b0 <_realloc_r+0xf4>
   848f8:	428b      	cmp	r3, r1
   848fa:	da33      	bge.n	84964 <_realloc_r+0x1a8>
   848fc:	4641      	mov	r1, r8
   848fe:	4648      	mov	r0, r9
   84900:	f7ff fb96 	bl	84030 <_malloc_r>
   84904:	4680      	mov	r8, r0
   84906:	2800      	cmp	r0, #0
   84908:	d0d2      	beq.n	848b0 <_realloc_r+0xf4>
   8490a:	f854 3c04 	ldr.w	r3, [r4, #-4]
   8490e:	f1a0 0108 	sub.w	r1, r0, #8
   84912:	f023 0201 	bic.w	r2, r3, #1
   84916:	443a      	add	r2, r7
   84918:	4291      	cmp	r1, r2
   8491a:	f000 80bc 	beq.w	84a96 <_realloc_r+0x2da>
   8491e:	1f2a      	subs	r2, r5, #4
   84920:	2a24      	cmp	r2, #36	; 0x24
   84922:	d86e      	bhi.n	84a02 <_realloc_r+0x246>
   84924:	2a13      	cmp	r2, #19
   84926:	d842      	bhi.n	849ae <_realloc_r+0x1f2>
   84928:	4603      	mov	r3, r0
   8492a:	4622      	mov	r2, r4
   8492c:	6811      	ldr	r1, [r2, #0]
   8492e:	6019      	str	r1, [r3, #0]
   84930:	6851      	ldr	r1, [r2, #4]
   84932:	6059      	str	r1, [r3, #4]
   84934:	6892      	ldr	r2, [r2, #8]
   84936:	609a      	str	r2, [r3, #8]
   84938:	4621      	mov	r1, r4
   8493a:	4648      	mov	r0, r9
   8493c:	f7ff f884 	bl	83a48 <_free_r>
   84940:	e7b6      	b.n	848b0 <_realloc_r+0xf4>
   84942:	4611      	mov	r1, r2
   84944:	b003      	add	sp, #12
   84946:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   8494a:	f7ff bb71 	b.w	84030 <_malloc_r>
   8494e:	f8de 2004 	ldr.w	r2, [lr, #4]
   84952:	f106 0c10 	add.w	ip, r6, #16
   84956:	f022 0203 	bic.w	r2, r2, #3
   8495a:	1950      	adds	r0, r2, r5
   8495c:	4560      	cmp	r0, ip
   8495e:	da3d      	bge.n	849dc <_realloc_r+0x220>
   84960:	4670      	mov	r0, lr
   84962:	e759      	b.n	84818 <_realloc_r+0x5c>
   84964:	46d0      	mov	r8, sl
   84966:	f858 0f08 	ldr.w	r0, [r8, #8]!
   8496a:	f8da 100c 	ldr.w	r1, [sl, #12]
   8496e:	1f2a      	subs	r2, r5, #4
   84970:	2a24      	cmp	r2, #36	; 0x24
   84972:	60c1      	str	r1, [r0, #12]
   84974:	6088      	str	r0, [r1, #8]
   84976:	f200 80a0 	bhi.w	84aba <_realloc_r+0x2fe>
   8497a:	2a13      	cmp	r2, #19
   8497c:	f240 809b 	bls.w	84ab6 <_realloc_r+0x2fa>
   84980:	6821      	ldr	r1, [r4, #0]
   84982:	2a1b      	cmp	r2, #27
   84984:	f8ca 1008 	str.w	r1, [sl, #8]
   84988:	6861      	ldr	r1, [r4, #4]
   8498a:	f8ca 100c 	str.w	r1, [sl, #12]
   8498e:	f200 80b2 	bhi.w	84af6 <_realloc_r+0x33a>
   84992:	3408      	adds	r4, #8
   84994:	f10a 0210 	add.w	r2, sl, #16
   84998:	6821      	ldr	r1, [r4, #0]
   8499a:	461d      	mov	r5, r3
   8499c:	6011      	str	r1, [r2, #0]
   8499e:	6861      	ldr	r1, [r4, #4]
   849a0:	4657      	mov	r7, sl
   849a2:	6051      	str	r1, [r2, #4]
   849a4:	68a3      	ldr	r3, [r4, #8]
   849a6:	6093      	str	r3, [r2, #8]
   849a8:	f8da 3004 	ldr.w	r3, [sl, #4]
   849ac:	e774      	b.n	84898 <_realloc_r+0xdc>
   849ae:	6823      	ldr	r3, [r4, #0]
   849b0:	2a1b      	cmp	r2, #27
   849b2:	6003      	str	r3, [r0, #0]
   849b4:	6863      	ldr	r3, [r4, #4]
   849b6:	6043      	str	r3, [r0, #4]
   849b8:	d862      	bhi.n	84a80 <_realloc_r+0x2c4>
   849ba:	f100 0308 	add.w	r3, r0, #8
   849be:	f104 0208 	add.w	r2, r4, #8
   849c2:	e7b3      	b.n	8492c <_realloc_r+0x170>
   849c4:	4643      	mov	r3, r8
   849c6:	6822      	ldr	r2, [r4, #0]
   849c8:	4675      	mov	r5, lr
   849ca:	601a      	str	r2, [r3, #0]
   849cc:	6862      	ldr	r2, [r4, #4]
   849ce:	4657      	mov	r7, sl
   849d0:	605a      	str	r2, [r3, #4]
   849d2:	68a2      	ldr	r2, [r4, #8]
   849d4:	609a      	str	r2, [r3, #8]
   849d6:	f8da 3004 	ldr.w	r3, [sl, #4]
   849da:	e75d      	b.n	84898 <_realloc_r+0xdc>
   849dc:	1b83      	subs	r3, r0, r6
   849de:	4437      	add	r7, r6
   849e0:	f043 0301 	orr.w	r3, r3, #1
   849e4:	f8cb 7008 	str.w	r7, [fp, #8]
   849e8:	607b      	str	r3, [r7, #4]
   849ea:	f854 3c04 	ldr.w	r3, [r4, #-4]
   849ee:	4648      	mov	r0, r9
   849f0:	f003 0301 	and.w	r3, r3, #1
   849f4:	431e      	orrs	r6, r3
   849f6:	f844 6c04 	str.w	r6, [r4, #-4]
   849fa:	f7ff fedd 	bl	847b8 <__malloc_unlock>
   849fe:	4620      	mov	r0, r4
   84a00:	e75a      	b.n	848b8 <_realloc_r+0xfc>
   84a02:	4621      	mov	r1, r4
   84a04:	f7ff fe70 	bl	846e8 <memmove>
   84a08:	e796      	b.n	84938 <_realloc_r+0x17c>
   84a0a:	eb02 0c03 	add.w	ip, r2, r3
   84a0e:	f106 0210 	add.w	r2, r6, #16
   84a12:	4594      	cmp	ip, r2
   84a14:	f6ff af70 	blt.w	848f8 <_realloc_r+0x13c>
   84a18:	4657      	mov	r7, sl
   84a1a:	f857 1f08 	ldr.w	r1, [r7, #8]!
   84a1e:	f8da 300c 	ldr.w	r3, [sl, #12]
   84a22:	1f2a      	subs	r2, r5, #4
   84a24:	2a24      	cmp	r2, #36	; 0x24
   84a26:	60cb      	str	r3, [r1, #12]
   84a28:	6099      	str	r1, [r3, #8]
   84a2a:	f200 8086 	bhi.w	84b3a <_realloc_r+0x37e>
   84a2e:	2a13      	cmp	r2, #19
   84a30:	d977      	bls.n	84b22 <_realloc_r+0x366>
   84a32:	6823      	ldr	r3, [r4, #0]
   84a34:	2a1b      	cmp	r2, #27
   84a36:	f8ca 3008 	str.w	r3, [sl, #8]
   84a3a:	6863      	ldr	r3, [r4, #4]
   84a3c:	f8ca 300c 	str.w	r3, [sl, #12]
   84a40:	f200 8084 	bhi.w	84b4c <_realloc_r+0x390>
   84a44:	3408      	adds	r4, #8
   84a46:	f10a 0310 	add.w	r3, sl, #16
   84a4a:	6822      	ldr	r2, [r4, #0]
   84a4c:	601a      	str	r2, [r3, #0]
   84a4e:	6862      	ldr	r2, [r4, #4]
   84a50:	605a      	str	r2, [r3, #4]
   84a52:	68a2      	ldr	r2, [r4, #8]
   84a54:	609a      	str	r2, [r3, #8]
   84a56:	ebc6 020c 	rsb	r2, r6, ip
   84a5a:	eb0a 0306 	add.w	r3, sl, r6
   84a5e:	f042 0201 	orr.w	r2, r2, #1
   84a62:	f8cb 3008 	str.w	r3, [fp, #8]
   84a66:	605a      	str	r2, [r3, #4]
   84a68:	f8da 3004 	ldr.w	r3, [sl, #4]
   84a6c:	4648      	mov	r0, r9
   84a6e:	f003 0301 	and.w	r3, r3, #1
   84a72:	431e      	orrs	r6, r3
   84a74:	f8ca 6004 	str.w	r6, [sl, #4]
   84a78:	f7ff fe9e 	bl	847b8 <__malloc_unlock>
   84a7c:	4638      	mov	r0, r7
   84a7e:	e71b      	b.n	848b8 <_realloc_r+0xfc>
   84a80:	68a3      	ldr	r3, [r4, #8]
   84a82:	2a24      	cmp	r2, #36	; 0x24
   84a84:	6083      	str	r3, [r0, #8]
   84a86:	68e3      	ldr	r3, [r4, #12]
   84a88:	60c3      	str	r3, [r0, #12]
   84a8a:	d02b      	beq.n	84ae4 <_realloc_r+0x328>
   84a8c:	f100 0310 	add.w	r3, r0, #16
   84a90:	f104 0210 	add.w	r2, r4, #16
   84a94:	e74a      	b.n	8492c <_realloc_r+0x170>
   84a96:	f850 2c04 	ldr.w	r2, [r0, #-4]
   84a9a:	46a0      	mov	r8, r4
   84a9c:	f022 0203 	bic.w	r2, r2, #3
   84aa0:	4415      	add	r5, r2
   84aa2:	e6f9      	b.n	84898 <_realloc_r+0xdc>
   84aa4:	4621      	mov	r1, r4
   84aa6:	4640      	mov	r0, r8
   84aa8:	4675      	mov	r5, lr
   84aaa:	4657      	mov	r7, sl
   84aac:	f7ff fe1c 	bl	846e8 <memmove>
   84ab0:	f8da 3004 	ldr.w	r3, [sl, #4]
   84ab4:	e6f0      	b.n	84898 <_realloc_r+0xdc>
   84ab6:	4642      	mov	r2, r8
   84ab8:	e76e      	b.n	84998 <_realloc_r+0x1dc>
   84aba:	4621      	mov	r1, r4
   84abc:	4640      	mov	r0, r8
   84abe:	461d      	mov	r5, r3
   84ac0:	4657      	mov	r7, sl
   84ac2:	f7ff fe11 	bl	846e8 <memmove>
   84ac6:	f8da 3004 	ldr.w	r3, [sl, #4]
   84aca:	e6e5      	b.n	84898 <_realloc_r+0xdc>
   84acc:	68a3      	ldr	r3, [r4, #8]
   84ace:	2a24      	cmp	r2, #36	; 0x24
   84ad0:	f8ca 3010 	str.w	r3, [sl, #16]
   84ad4:	68e3      	ldr	r3, [r4, #12]
   84ad6:	f8ca 3014 	str.w	r3, [sl, #20]
   84ada:	d018      	beq.n	84b0e <_realloc_r+0x352>
   84adc:	3410      	adds	r4, #16
   84ade:	f10a 0318 	add.w	r3, sl, #24
   84ae2:	e770      	b.n	849c6 <_realloc_r+0x20a>
   84ae4:	6922      	ldr	r2, [r4, #16]
   84ae6:	f100 0318 	add.w	r3, r0, #24
   84aea:	6102      	str	r2, [r0, #16]
   84aec:	6961      	ldr	r1, [r4, #20]
   84aee:	f104 0218 	add.w	r2, r4, #24
   84af2:	6141      	str	r1, [r0, #20]
   84af4:	e71a      	b.n	8492c <_realloc_r+0x170>
   84af6:	68a1      	ldr	r1, [r4, #8]
   84af8:	2a24      	cmp	r2, #36	; 0x24
   84afa:	f8ca 1010 	str.w	r1, [sl, #16]
   84afe:	68e1      	ldr	r1, [r4, #12]
   84b00:	f8ca 1014 	str.w	r1, [sl, #20]
   84b04:	d00f      	beq.n	84b26 <_realloc_r+0x36a>
   84b06:	3410      	adds	r4, #16
   84b08:	f10a 0218 	add.w	r2, sl, #24
   84b0c:	e744      	b.n	84998 <_realloc_r+0x1dc>
   84b0e:	6922      	ldr	r2, [r4, #16]
   84b10:	f10a 0320 	add.w	r3, sl, #32
   84b14:	f8ca 2018 	str.w	r2, [sl, #24]
   84b18:	6962      	ldr	r2, [r4, #20]
   84b1a:	3418      	adds	r4, #24
   84b1c:	f8ca 201c 	str.w	r2, [sl, #28]
   84b20:	e751      	b.n	849c6 <_realloc_r+0x20a>
   84b22:	463b      	mov	r3, r7
   84b24:	e791      	b.n	84a4a <_realloc_r+0x28e>
   84b26:	6921      	ldr	r1, [r4, #16]
   84b28:	f10a 0220 	add.w	r2, sl, #32
   84b2c:	f8ca 1018 	str.w	r1, [sl, #24]
   84b30:	6961      	ldr	r1, [r4, #20]
   84b32:	3418      	adds	r4, #24
   84b34:	f8ca 101c 	str.w	r1, [sl, #28]
   84b38:	e72e      	b.n	84998 <_realloc_r+0x1dc>
   84b3a:	4621      	mov	r1, r4
   84b3c:	4638      	mov	r0, r7
   84b3e:	f8cd c004 	str.w	ip, [sp, #4]
   84b42:	f7ff fdd1 	bl	846e8 <memmove>
   84b46:	f8dd c004 	ldr.w	ip, [sp, #4]
   84b4a:	e784      	b.n	84a56 <_realloc_r+0x29a>
   84b4c:	68a3      	ldr	r3, [r4, #8]
   84b4e:	2a24      	cmp	r2, #36	; 0x24
   84b50:	f8ca 3010 	str.w	r3, [sl, #16]
   84b54:	68e3      	ldr	r3, [r4, #12]
   84b56:	f8ca 3014 	str.w	r3, [sl, #20]
   84b5a:	d003      	beq.n	84b64 <_realloc_r+0x3a8>
   84b5c:	3410      	adds	r4, #16
   84b5e:	f10a 0318 	add.w	r3, sl, #24
   84b62:	e772      	b.n	84a4a <_realloc_r+0x28e>
   84b64:	6922      	ldr	r2, [r4, #16]
   84b66:	f10a 0320 	add.w	r3, sl, #32
   84b6a:	f8ca 2018 	str.w	r2, [sl, #24]
   84b6e:	6962      	ldr	r2, [r4, #20]
   84b70:	3418      	adds	r4, #24
   84b72:	f8ca 201c 	str.w	r2, [sl, #28]
   84b76:	e768      	b.n	84a4a <_realloc_r+0x28e>
   84b78:	200704c0 	.word	0x200704c0

00084b7c <_sbrk_r>:
   84b7c:	b538      	push	{r3, r4, r5, lr}
   84b7e:	4c07      	ldr	r4, [pc, #28]	; (84b9c <_sbrk_r+0x20>)
   84b80:	2300      	movs	r3, #0
   84b82:	4605      	mov	r5, r0
   84b84:	4608      	mov	r0, r1
   84b86:	6023      	str	r3, [r4, #0]
   84b88:	f7fc fc06 	bl	81398 <_sbrk>
   84b8c:	1c43      	adds	r3, r0, #1
   84b8e:	d000      	beq.n	84b92 <_sbrk_r+0x16>
   84b90:	bd38      	pop	{r3, r4, r5, pc}
   84b92:	6823      	ldr	r3, [r4, #0]
   84b94:	2b00      	cmp	r3, #0
   84b96:	d0fb      	beq.n	84b90 <_sbrk_r+0x14>
   84b98:	602b      	str	r3, [r5, #0]
   84b9a:	bd38      	pop	{r3, r4, r5, pc}
   84b9c:	200797d4 	.word	0x200797d4

00084ba0 <_kill_r>:
   84ba0:	b538      	push	{r3, r4, r5, lr}
   84ba2:	4c08      	ldr	r4, [pc, #32]	; (84bc4 <_kill_r+0x24>)
   84ba4:	2300      	movs	r3, #0
   84ba6:	4605      	mov	r5, r0
   84ba8:	4608      	mov	r0, r1
   84baa:	4611      	mov	r1, r2
   84bac:	6023      	str	r3, [r4, #0]
   84bae:	f7fc fc2d 	bl	8140c <_kill>
   84bb2:	1c43      	adds	r3, r0, #1
   84bb4:	d000      	beq.n	84bb8 <_kill_r+0x18>
   84bb6:	bd38      	pop	{r3, r4, r5, pc}
   84bb8:	6823      	ldr	r3, [r4, #0]
   84bba:	2b00      	cmp	r3, #0
   84bbc:	d0fb      	beq.n	84bb6 <_kill_r+0x16>
   84bbe:	602b      	str	r3, [r5, #0]
   84bc0:	bd38      	pop	{r3, r4, r5, pc}
   84bc2:	bf00      	nop
   84bc4:	200797d4 	.word	0x200797d4

00084bc8 <__sread>:
   84bc8:	b510      	push	{r4, lr}
   84bca:	460c      	mov	r4, r1
   84bcc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
   84bd0:	f000 f9c2 	bl	84f58 <_read_r>
   84bd4:	2800      	cmp	r0, #0
   84bd6:	db03      	blt.n	84be0 <__sread+0x18>
   84bd8:	6d23      	ldr	r3, [r4, #80]	; 0x50
   84bda:	4403      	add	r3, r0
   84bdc:	6523      	str	r3, [r4, #80]	; 0x50
   84bde:	bd10      	pop	{r4, pc}
   84be0:	89a3      	ldrh	r3, [r4, #12]
   84be2:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
   84be6:	81a3      	strh	r3, [r4, #12]
   84be8:	bd10      	pop	{r4, pc}
   84bea:	bf00      	nop

00084bec <__swrite>:
   84bec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   84bf0:	460c      	mov	r4, r1
   84bf2:	8989      	ldrh	r1, [r1, #12]
   84bf4:	461d      	mov	r5, r3
   84bf6:	05cb      	lsls	r3, r1, #23
   84bf8:	4616      	mov	r6, r2
   84bfa:	4607      	mov	r7, r0
   84bfc:	d506      	bpl.n	84c0c <__swrite+0x20>
   84bfe:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
   84c02:	2200      	movs	r2, #0
   84c04:	2302      	movs	r3, #2
   84c06:	f000 f993 	bl	84f30 <_lseek_r>
   84c0a:	89a1      	ldrh	r1, [r4, #12]
   84c0c:	f421 5180 	bic.w	r1, r1, #4096	; 0x1000
   84c10:	81a1      	strh	r1, [r4, #12]
   84c12:	4638      	mov	r0, r7
   84c14:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
   84c18:	4632      	mov	r2, r6
   84c1a:	462b      	mov	r3, r5
   84c1c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
   84c20:	f000 b89e 	b.w	84d60 <_write_r>

00084c24 <__sseek>:
   84c24:	b510      	push	{r4, lr}
   84c26:	460c      	mov	r4, r1
   84c28:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
   84c2c:	f000 f980 	bl	84f30 <_lseek_r>
   84c30:	89a3      	ldrh	r3, [r4, #12]
   84c32:	1c42      	adds	r2, r0, #1
   84c34:	bf0e      	itee	eq
   84c36:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
   84c3a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
   84c3e:	6520      	strne	r0, [r4, #80]	; 0x50
   84c40:	81a3      	strh	r3, [r4, #12]
   84c42:	bd10      	pop	{r4, pc}

00084c44 <__sclose>:
   84c44:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
   84c48:	f000 b8f2 	b.w	84e30 <_close_r>

00084c4c <__swbuf_r>:
   84c4c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   84c4e:	460d      	mov	r5, r1
   84c50:	4614      	mov	r4, r2
   84c52:	4607      	mov	r7, r0
   84c54:	b110      	cbz	r0, 84c5c <__swbuf_r+0x10>
   84c56:	6b83      	ldr	r3, [r0, #56]	; 0x38
   84c58:	2b00      	cmp	r3, #0
   84c5a:	d048      	beq.n	84cee <__swbuf_r+0xa2>
   84c5c:	89a2      	ldrh	r2, [r4, #12]
   84c5e:	69a0      	ldr	r0, [r4, #24]
   84c60:	b293      	uxth	r3, r2
   84c62:	60a0      	str	r0, [r4, #8]
   84c64:	0718      	lsls	r0, r3, #28
   84c66:	d538      	bpl.n	84cda <__swbuf_r+0x8e>
   84c68:	6926      	ldr	r6, [r4, #16]
   84c6a:	2e00      	cmp	r6, #0
   84c6c:	d035      	beq.n	84cda <__swbuf_r+0x8e>
   84c6e:	0499      	lsls	r1, r3, #18
   84c70:	b2ed      	uxtb	r5, r5
   84c72:	d515      	bpl.n	84ca0 <__swbuf_r+0x54>
   84c74:	6823      	ldr	r3, [r4, #0]
   84c76:	6962      	ldr	r2, [r4, #20]
   84c78:	1b9e      	subs	r6, r3, r6
   84c7a:	4296      	cmp	r6, r2
   84c7c:	da1c      	bge.n	84cb8 <__swbuf_r+0x6c>
   84c7e:	3601      	adds	r6, #1
   84c80:	68a2      	ldr	r2, [r4, #8]
   84c82:	1c59      	adds	r1, r3, #1
   84c84:	3a01      	subs	r2, #1
   84c86:	60a2      	str	r2, [r4, #8]
   84c88:	6021      	str	r1, [r4, #0]
   84c8a:	701d      	strb	r5, [r3, #0]
   84c8c:	6963      	ldr	r3, [r4, #20]
   84c8e:	42b3      	cmp	r3, r6
   84c90:	d01a      	beq.n	84cc8 <__swbuf_r+0x7c>
   84c92:	89a3      	ldrh	r3, [r4, #12]
   84c94:	07db      	lsls	r3, r3, #31
   84c96:	d501      	bpl.n	84c9c <__swbuf_r+0x50>
   84c98:	2d0a      	cmp	r5, #10
   84c9a:	d015      	beq.n	84cc8 <__swbuf_r+0x7c>
   84c9c:	4628      	mov	r0, r5
   84c9e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   84ca0:	6e63      	ldr	r3, [r4, #100]	; 0x64
   84ca2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
   84ca6:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
   84caa:	6663      	str	r3, [r4, #100]	; 0x64
   84cac:	6823      	ldr	r3, [r4, #0]
   84cae:	81a2      	strh	r2, [r4, #12]
   84cb0:	6962      	ldr	r2, [r4, #20]
   84cb2:	1b9e      	subs	r6, r3, r6
   84cb4:	4296      	cmp	r6, r2
   84cb6:	dbe2      	blt.n	84c7e <__swbuf_r+0x32>
   84cb8:	4638      	mov	r0, r7
   84cba:	4621      	mov	r1, r4
   84cbc:	f7fe fd64 	bl	83788 <_fflush_r>
   84cc0:	b940      	cbnz	r0, 84cd4 <__swbuf_r+0x88>
   84cc2:	6823      	ldr	r3, [r4, #0]
   84cc4:	2601      	movs	r6, #1
   84cc6:	e7db      	b.n	84c80 <__swbuf_r+0x34>
   84cc8:	4638      	mov	r0, r7
   84cca:	4621      	mov	r1, r4
   84ccc:	f7fe fd5c 	bl	83788 <_fflush_r>
   84cd0:	2800      	cmp	r0, #0
   84cd2:	d0e3      	beq.n	84c9c <__swbuf_r+0x50>
   84cd4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   84cd8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   84cda:	4638      	mov	r0, r7
   84cdc:	4621      	mov	r1, r4
   84cde:	f7fe fc3d 	bl	8355c <__swsetup_r>
   84ce2:	2800      	cmp	r0, #0
   84ce4:	d1f6      	bne.n	84cd4 <__swbuf_r+0x88>
   84ce6:	89a2      	ldrh	r2, [r4, #12]
   84ce8:	6926      	ldr	r6, [r4, #16]
   84cea:	b293      	uxth	r3, r2
   84cec:	e7bf      	b.n	84c6e <__swbuf_r+0x22>
   84cee:	f7fe fd67 	bl	837c0 <__sinit>
   84cf2:	e7b3      	b.n	84c5c <__swbuf_r+0x10>

00084cf4 <_wcrtomb_r>:
   84cf4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
   84cf8:	461e      	mov	r6, r3
   84cfa:	b086      	sub	sp, #24
   84cfc:	460c      	mov	r4, r1
   84cfe:	4605      	mov	r5, r0
   84d00:	4617      	mov	r7, r2
   84d02:	4b0f      	ldr	r3, [pc, #60]	; (84d40 <_wcrtomb_r+0x4c>)
   84d04:	b191      	cbz	r1, 84d2c <_wcrtomb_r+0x38>
   84d06:	f8d3 8000 	ldr.w	r8, [r3]
   84d0a:	f7ff f917 	bl	83f3c <__locale_charset>
   84d0e:	9600      	str	r6, [sp, #0]
   84d10:	4603      	mov	r3, r0
   84d12:	4621      	mov	r1, r4
   84d14:	463a      	mov	r2, r7
   84d16:	4628      	mov	r0, r5
   84d18:	47c0      	blx	r8
   84d1a:	1c43      	adds	r3, r0, #1
   84d1c:	d103      	bne.n	84d26 <_wcrtomb_r+0x32>
   84d1e:	2200      	movs	r2, #0
   84d20:	238a      	movs	r3, #138	; 0x8a
   84d22:	6032      	str	r2, [r6, #0]
   84d24:	602b      	str	r3, [r5, #0]
   84d26:	b006      	add	sp, #24
   84d28:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
   84d2c:	681f      	ldr	r7, [r3, #0]
   84d2e:	f7ff f905 	bl	83f3c <__locale_charset>
   84d32:	9600      	str	r6, [sp, #0]
   84d34:	4603      	mov	r3, r0
   84d36:	4622      	mov	r2, r4
   84d38:	4628      	mov	r0, r5
   84d3a:	a903      	add	r1, sp, #12
   84d3c:	47b8      	blx	r7
   84d3e:	e7ec      	b.n	84d1a <_wcrtomb_r+0x26>
   84d40:	200708d0 	.word	0x200708d0

00084d44 <__ascii_wctomb>:
   84d44:	b121      	cbz	r1, 84d50 <__ascii_wctomb+0xc>
   84d46:	2aff      	cmp	r2, #255	; 0xff
   84d48:	d804      	bhi.n	84d54 <__ascii_wctomb+0x10>
   84d4a:	700a      	strb	r2, [r1, #0]
   84d4c:	2001      	movs	r0, #1
   84d4e:	4770      	bx	lr
   84d50:	4608      	mov	r0, r1
   84d52:	4770      	bx	lr
   84d54:	238a      	movs	r3, #138	; 0x8a
   84d56:	6003      	str	r3, [r0, #0]
   84d58:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   84d5c:	4770      	bx	lr
   84d5e:	bf00      	nop

00084d60 <_write_r>:
   84d60:	b570      	push	{r4, r5, r6, lr}
   84d62:	4c08      	ldr	r4, [pc, #32]	; (84d84 <_write_r+0x24>)
   84d64:	4606      	mov	r6, r0
   84d66:	2500      	movs	r5, #0
   84d68:	4608      	mov	r0, r1
   84d6a:	4611      	mov	r1, r2
   84d6c:	461a      	mov	r2, r3
   84d6e:	6025      	str	r5, [r4, #0]
   84d70:	f7fc fb32 	bl	813d8 <_write>
   84d74:	1c43      	adds	r3, r0, #1
   84d76:	d000      	beq.n	84d7a <_write_r+0x1a>
   84d78:	bd70      	pop	{r4, r5, r6, pc}
   84d7a:	6823      	ldr	r3, [r4, #0]
   84d7c:	2b00      	cmp	r3, #0
   84d7e:	d0fb      	beq.n	84d78 <_write_r+0x18>
   84d80:	6033      	str	r3, [r6, #0]
   84d82:	bd70      	pop	{r4, r5, r6, pc}
   84d84:	200797d4 	.word	0x200797d4

00084d88 <__register_exitproc>:
   84d88:	b5f0      	push	{r4, r5, r6, r7, lr}
   84d8a:	4c27      	ldr	r4, [pc, #156]	; (84e28 <__register_exitproc+0xa0>)
   84d8c:	b085      	sub	sp, #20
   84d8e:	6826      	ldr	r6, [r4, #0]
   84d90:	4607      	mov	r7, r0
   84d92:	f8d6 4148 	ldr.w	r4, [r6, #328]	; 0x148
   84d96:	2c00      	cmp	r4, #0
   84d98:	d040      	beq.n	84e1c <__register_exitproc+0x94>
   84d9a:	6865      	ldr	r5, [r4, #4]
   84d9c:	2d1f      	cmp	r5, #31
   84d9e:	dd1e      	ble.n	84dde <__register_exitproc+0x56>
   84da0:	4822      	ldr	r0, [pc, #136]	; (84e2c <__register_exitproc+0xa4>)
   84da2:	b918      	cbnz	r0, 84dac <__register_exitproc+0x24>
   84da4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   84da8:	b005      	add	sp, #20
   84daa:	bdf0      	pop	{r4, r5, r6, r7, pc}
   84dac:	f44f 70c8 	mov.w	r0, #400	; 0x190
   84db0:	9103      	str	r1, [sp, #12]
   84db2:	9202      	str	r2, [sp, #8]
   84db4:	9301      	str	r3, [sp, #4]
   84db6:	f3af 8000 	nop.w
   84dba:	9903      	ldr	r1, [sp, #12]
   84dbc:	4604      	mov	r4, r0
   84dbe:	9a02      	ldr	r2, [sp, #8]
   84dc0:	9b01      	ldr	r3, [sp, #4]
   84dc2:	2800      	cmp	r0, #0
   84dc4:	d0ee      	beq.n	84da4 <__register_exitproc+0x1c>
   84dc6:	f8d6 5148 	ldr.w	r5, [r6, #328]	; 0x148
   84dca:	2000      	movs	r0, #0
   84dcc:	6025      	str	r5, [r4, #0]
   84dce:	6060      	str	r0, [r4, #4]
   84dd0:	4605      	mov	r5, r0
   84dd2:	f8c6 4148 	str.w	r4, [r6, #328]	; 0x148
   84dd6:	f8c4 0188 	str.w	r0, [r4, #392]	; 0x188
   84dda:	f8c4 018c 	str.w	r0, [r4, #396]	; 0x18c
   84dde:	b93f      	cbnz	r7, 84df0 <__register_exitproc+0x68>
   84de0:	1c6b      	adds	r3, r5, #1
   84de2:	2000      	movs	r0, #0
   84de4:	3502      	adds	r5, #2
   84de6:	6063      	str	r3, [r4, #4]
   84de8:	f844 1025 	str.w	r1, [r4, r5, lsl #2]
   84dec:	b005      	add	sp, #20
   84dee:	bdf0      	pop	{r4, r5, r6, r7, pc}
   84df0:	2601      	movs	r6, #1
   84df2:	40ae      	lsls	r6, r5
   84df4:	eb04 0085 	add.w	r0, r4, r5, lsl #2
   84df8:	f8c0 2088 	str.w	r2, [r0, #136]	; 0x88
   84dfc:	f8d4 2188 	ldr.w	r2, [r4, #392]	; 0x188
   84e00:	2f02      	cmp	r7, #2
   84e02:	ea42 0206 	orr.w	r2, r2, r6
   84e06:	f8c4 2188 	str.w	r2, [r4, #392]	; 0x188
   84e0a:	f8c0 3108 	str.w	r3, [r0, #264]	; 0x108
   84e0e:	d1e7      	bne.n	84de0 <__register_exitproc+0x58>
   84e10:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
   84e14:	431e      	orrs	r6, r3
   84e16:	f8c4 618c 	str.w	r6, [r4, #396]	; 0x18c
   84e1a:	e7e1      	b.n	84de0 <__register_exitproc+0x58>
   84e1c:	f506 74a6 	add.w	r4, r6, #332	; 0x14c
   84e20:	f8c6 4148 	str.w	r4, [r6, #328]	; 0x148
   84e24:	e7b9      	b.n	84d9a <__register_exitproc+0x12>
   84e26:	bf00      	nop
   84e28:	000861a8 	.word	0x000861a8
   84e2c:	00000000 	.word	0x00000000

00084e30 <_close_r>:
   84e30:	b538      	push	{r3, r4, r5, lr}
   84e32:	4c07      	ldr	r4, [pc, #28]	; (84e50 <_close_r+0x20>)
   84e34:	2300      	movs	r3, #0
   84e36:	4605      	mov	r5, r0
   84e38:	4608      	mov	r0, r1
   84e3a:	6023      	str	r3, [r4, #0]
   84e3c:	f7fc fabd 	bl	813ba <_close>
   84e40:	1c43      	adds	r3, r0, #1
   84e42:	d000      	beq.n	84e46 <_close_r+0x16>
   84e44:	bd38      	pop	{r3, r4, r5, pc}
   84e46:	6823      	ldr	r3, [r4, #0]
   84e48:	2b00      	cmp	r3, #0
   84e4a:	d0fb      	beq.n	84e44 <_close_r+0x14>
   84e4c:	602b      	str	r3, [r5, #0]
   84e4e:	bd38      	pop	{r3, r4, r5, pc}
   84e50:	200797d4 	.word	0x200797d4

00084e54 <_fclose_r>:
   84e54:	b570      	push	{r4, r5, r6, lr}
   84e56:	460c      	mov	r4, r1
   84e58:	4605      	mov	r5, r0
   84e5a:	b131      	cbz	r1, 84e6a <_fclose_r+0x16>
   84e5c:	b110      	cbz	r0, 84e64 <_fclose_r+0x10>
   84e5e:	6b83      	ldr	r3, [r0, #56]	; 0x38
   84e60:	2b00      	cmp	r3, #0
   84e62:	d02f      	beq.n	84ec4 <_fclose_r+0x70>
   84e64:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
   84e68:	b90b      	cbnz	r3, 84e6e <_fclose_r+0x1a>
   84e6a:	2000      	movs	r0, #0
   84e6c:	bd70      	pop	{r4, r5, r6, pc}
   84e6e:	4628      	mov	r0, r5
   84e70:	4621      	mov	r1, r4
   84e72:	f7fe fc89 	bl	83788 <_fflush_r>
   84e76:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
   84e78:	4606      	mov	r6, r0
   84e7a:	b133      	cbz	r3, 84e8a <_fclose_r+0x36>
   84e7c:	4628      	mov	r0, r5
   84e7e:	69e1      	ldr	r1, [r4, #28]
   84e80:	4798      	blx	r3
   84e82:	2800      	cmp	r0, #0
   84e84:	bfb8      	it	lt
   84e86:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
   84e8a:	89a3      	ldrh	r3, [r4, #12]
   84e8c:	061b      	lsls	r3, r3, #24
   84e8e:	d41c      	bmi.n	84eca <_fclose_r+0x76>
   84e90:	6b21      	ldr	r1, [r4, #48]	; 0x30
   84e92:	b141      	cbz	r1, 84ea6 <_fclose_r+0x52>
   84e94:	f104 0340 	add.w	r3, r4, #64	; 0x40
   84e98:	4299      	cmp	r1, r3
   84e9a:	d002      	beq.n	84ea2 <_fclose_r+0x4e>
   84e9c:	4628      	mov	r0, r5
   84e9e:	f7fe fdd3 	bl	83a48 <_free_r>
   84ea2:	2300      	movs	r3, #0
   84ea4:	6323      	str	r3, [r4, #48]	; 0x30
   84ea6:	6c61      	ldr	r1, [r4, #68]	; 0x44
   84ea8:	b121      	cbz	r1, 84eb4 <_fclose_r+0x60>
   84eaa:	4628      	mov	r0, r5
   84eac:	f7fe fdcc 	bl	83a48 <_free_r>
   84eb0:	2300      	movs	r3, #0
   84eb2:	6463      	str	r3, [r4, #68]	; 0x44
   84eb4:	f7fe fcfe 	bl	838b4 <__sfp_lock_acquire>
   84eb8:	2300      	movs	r3, #0
   84eba:	81a3      	strh	r3, [r4, #12]
   84ebc:	f7fe fcfc 	bl	838b8 <__sfp_lock_release>
   84ec0:	4630      	mov	r0, r6
   84ec2:	bd70      	pop	{r4, r5, r6, pc}
   84ec4:	f7fe fc7c 	bl	837c0 <__sinit>
   84ec8:	e7cc      	b.n	84e64 <_fclose_r+0x10>
   84eca:	4628      	mov	r0, r5
   84ecc:	6921      	ldr	r1, [r4, #16]
   84ece:	f7fe fdbb 	bl	83a48 <_free_r>
   84ed2:	e7dd      	b.n	84e90 <_fclose_r+0x3c>

00084ed4 <fclose>:
   84ed4:	4b02      	ldr	r3, [pc, #8]	; (84ee0 <fclose+0xc>)
   84ed6:	4601      	mov	r1, r0
   84ed8:	6818      	ldr	r0, [r3, #0]
   84eda:	f7ff bfbb 	b.w	84e54 <_fclose_r>
   84ede:	bf00      	nop
   84ee0:	20070498 	.word	0x20070498

00084ee4 <_fstat_r>:
   84ee4:	b538      	push	{r3, r4, r5, lr}
   84ee6:	4c08      	ldr	r4, [pc, #32]	; (84f08 <_fstat_r+0x24>)
   84ee8:	2300      	movs	r3, #0
   84eea:	4605      	mov	r5, r0
   84eec:	4608      	mov	r0, r1
   84eee:	4611      	mov	r1, r2
   84ef0:	6023      	str	r3, [r4, #0]
   84ef2:	f7fc fa65 	bl	813c0 <_fstat>
   84ef6:	1c43      	adds	r3, r0, #1
   84ef8:	d000      	beq.n	84efc <_fstat_r+0x18>
   84efa:	bd38      	pop	{r3, r4, r5, pc}
   84efc:	6823      	ldr	r3, [r4, #0]
   84efe:	2b00      	cmp	r3, #0
   84f00:	d0fb      	beq.n	84efa <_fstat_r+0x16>
   84f02:	602b      	str	r3, [r5, #0]
   84f04:	bd38      	pop	{r3, r4, r5, pc}
   84f06:	bf00      	nop
   84f08:	200797d4 	.word	0x200797d4

00084f0c <_isatty_r>:
   84f0c:	b538      	push	{r3, r4, r5, lr}
   84f0e:	4c07      	ldr	r4, [pc, #28]	; (84f2c <_isatty_r+0x20>)
   84f10:	2300      	movs	r3, #0
   84f12:	4605      	mov	r5, r0
   84f14:	4608      	mov	r0, r1
   84f16:	6023      	str	r3, [r4, #0]
   84f18:	f7fc fa57 	bl	813ca <_isatty>
   84f1c:	1c43      	adds	r3, r0, #1
   84f1e:	d000      	beq.n	84f22 <_isatty_r+0x16>
   84f20:	bd38      	pop	{r3, r4, r5, pc}
   84f22:	6823      	ldr	r3, [r4, #0]
   84f24:	2b00      	cmp	r3, #0
   84f26:	d0fb      	beq.n	84f20 <_isatty_r+0x14>
   84f28:	602b      	str	r3, [r5, #0]
   84f2a:	bd38      	pop	{r3, r4, r5, pc}
   84f2c:	200797d4 	.word	0x200797d4

00084f30 <_lseek_r>:
   84f30:	b570      	push	{r4, r5, r6, lr}
   84f32:	4c08      	ldr	r4, [pc, #32]	; (84f54 <_lseek_r+0x24>)
   84f34:	4606      	mov	r6, r0
   84f36:	2500      	movs	r5, #0
   84f38:	4608      	mov	r0, r1
   84f3a:	4611      	mov	r1, r2
   84f3c:	461a      	mov	r2, r3
   84f3e:	6025      	str	r5, [r4, #0]
   84f40:	f7fc fa45 	bl	813ce <_lseek>
   84f44:	1c43      	adds	r3, r0, #1
   84f46:	d000      	beq.n	84f4a <_lseek_r+0x1a>
   84f48:	bd70      	pop	{r4, r5, r6, pc}
   84f4a:	6823      	ldr	r3, [r4, #0]
   84f4c:	2b00      	cmp	r3, #0
   84f4e:	d0fb      	beq.n	84f48 <_lseek_r+0x18>
   84f50:	6033      	str	r3, [r6, #0]
   84f52:	bd70      	pop	{r4, r5, r6, pc}
   84f54:	200797d4 	.word	0x200797d4

00084f58 <_read_r>:
   84f58:	b570      	push	{r4, r5, r6, lr}
   84f5a:	4c08      	ldr	r4, [pc, #32]	; (84f7c <_read_r+0x24>)
   84f5c:	4606      	mov	r6, r0
   84f5e:	2500      	movs	r5, #0
   84f60:	4608      	mov	r0, r1
   84f62:	4611      	mov	r1, r2
   84f64:	461a      	mov	r2, r3
   84f66:	6025      	str	r5, [r4, #0]
   84f68:	f7fc fa33 	bl	813d2 <_read>
   84f6c:	1c43      	adds	r3, r0, #1
   84f6e:	d000      	beq.n	84f72 <_read_r+0x1a>
   84f70:	bd70      	pop	{r4, r5, r6, pc}
   84f72:	6823      	ldr	r3, [r4, #0]
   84f74:	2b00      	cmp	r3, #0
   84f76:	d0fb      	beq.n	84f70 <_read_r+0x18>
   84f78:	6033      	str	r3, [r6, #0]
   84f7a:	bd70      	pop	{r4, r5, r6, pc}
   84f7c:	200797d4 	.word	0x200797d4

00084f80 <__aeabi_uldivmod>:
   84f80:	b94b      	cbnz	r3, 84f96 <__aeabi_uldivmod+0x16>
   84f82:	b942      	cbnz	r2, 84f96 <__aeabi_uldivmod+0x16>
   84f84:	2900      	cmp	r1, #0
   84f86:	bf08      	it	eq
   84f88:	2800      	cmpeq	r0, #0
   84f8a:	d002      	beq.n	84f92 <__aeabi_uldivmod+0x12>
   84f8c:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
   84f90:	4608      	mov	r0, r1
   84f92:	f000 b83b 	b.w	8500c <__aeabi_idiv0>
   84f96:	b082      	sub	sp, #8
   84f98:	46ec      	mov	ip, sp
   84f9a:	e92d 5000 	stmdb	sp!, {ip, lr}
   84f9e:	f000 f81d 	bl	84fdc <__gnu_uldivmod_helper>
   84fa2:	f8dd e004 	ldr.w	lr, [sp, #4]
   84fa6:	b002      	add	sp, #8
   84fa8:	bc0c      	pop	{r2, r3}
   84faa:	4770      	bx	lr

00084fac <__gnu_ldivmod_helper>:
   84fac:	e92d 4f70 	stmdb	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
   84fb0:	9e08      	ldr	r6, [sp, #32]
   84fb2:	4614      	mov	r4, r2
   84fb4:	461d      	mov	r5, r3
   84fb6:	4680      	mov	r8, r0
   84fb8:	4689      	mov	r9, r1
   84fba:	f000 f829 	bl	85010 <__divdi3>
   84fbe:	fb04 f301 	mul.w	r3, r4, r1
   84fc2:	fba4 ab00 	umull	sl, fp, r4, r0
   84fc6:	fb00 3205 	mla	r2, r0, r5, r3
   84fca:	4493      	add	fp, r2
   84fcc:	ebb8 080a 	subs.w	r8, r8, sl
   84fd0:	eb69 090b 	sbc.w	r9, r9, fp
   84fd4:	e9c6 8900 	strd	r8, r9, [r6]
   84fd8:	e8bd 8f70 	ldmia.w	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}

00084fdc <__gnu_uldivmod_helper>:
   84fdc:	e92d 4f70 	stmdb	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
   84fe0:	9e08      	ldr	r6, [sp, #32]
   84fe2:	4614      	mov	r4, r2
   84fe4:	461d      	mov	r5, r3
   84fe6:	4680      	mov	r8, r0
   84fe8:	4689      	mov	r9, r1
   84fea:	f000 f961 	bl	852b0 <__udivdi3>
   84fee:	fb00 f505 	mul.w	r5, r0, r5
   84ff2:	fba0 ab04 	umull	sl, fp, r0, r4
   84ff6:	fb04 5401 	mla	r4, r4, r1, r5
   84ffa:	44a3      	add	fp, r4
   84ffc:	ebb8 080a 	subs.w	r8, r8, sl
   85000:	eb69 090b 	sbc.w	r9, r9, fp
   85004:	e9c6 8900 	strd	r8, r9, [r6]
   85008:	e8bd 8f70 	ldmia.w	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}

0008500c <__aeabi_idiv0>:
   8500c:	4770      	bx	lr
   8500e:	bf00      	nop

00085010 <__divdi3>:
   85010:	2900      	cmp	r1, #0
   85012:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   85016:	f2c0 80a1 	blt.w	8515c <__divdi3+0x14c>
   8501a:	2400      	movs	r4, #0
   8501c:	2b00      	cmp	r3, #0
   8501e:	f2c0 8098 	blt.w	85152 <__divdi3+0x142>
   85022:	4615      	mov	r5, r2
   85024:	4606      	mov	r6, r0
   85026:	460f      	mov	r7, r1
   85028:	2b00      	cmp	r3, #0
   8502a:	d13f      	bne.n	850ac <__divdi3+0x9c>
   8502c:	428a      	cmp	r2, r1
   8502e:	d958      	bls.n	850e2 <__divdi3+0xd2>
   85030:	fab2 f382 	clz	r3, r2
   85034:	b14b      	cbz	r3, 8504a <__divdi3+0x3a>
   85036:	f1c3 0220 	rsb	r2, r3, #32
   8503a:	fa01 f703 	lsl.w	r7, r1, r3
   8503e:	fa20 f202 	lsr.w	r2, r0, r2
   85042:	409d      	lsls	r5, r3
   85044:	fa00 f603 	lsl.w	r6, r0, r3
   85048:	4317      	orrs	r7, r2
   8504a:	0c29      	lsrs	r1, r5, #16
   8504c:	fbb7 f2f1 	udiv	r2, r7, r1
   85050:	fb01 7712 	mls	r7, r1, r2, r7
   85054:	b2a8      	uxth	r0, r5
   85056:	fb00 f302 	mul.w	r3, r0, r2
   8505a:	ea4f 4c16 	mov.w	ip, r6, lsr #16
   8505e:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
   85062:	42bb      	cmp	r3, r7
   85064:	d909      	bls.n	8507a <__divdi3+0x6a>
   85066:	197f      	adds	r7, r7, r5
   85068:	f102 3cff 	add.w	ip, r2, #4294967295	; 0xffffffff
   8506c:	f080 8105 	bcs.w	8527a <__divdi3+0x26a>
   85070:	42bb      	cmp	r3, r7
   85072:	f240 8102 	bls.w	8527a <__divdi3+0x26a>
   85076:	3a02      	subs	r2, #2
   85078:	442f      	add	r7, r5
   8507a:	1aff      	subs	r7, r7, r3
   8507c:	fbb7 f3f1 	udiv	r3, r7, r1
   85080:	fb01 7113 	mls	r1, r1, r3, r7
   85084:	fb00 f003 	mul.w	r0, r0, r3
   85088:	b2b6      	uxth	r6, r6
   8508a:	ea46 4101 	orr.w	r1, r6, r1, lsl #16
   8508e:	4288      	cmp	r0, r1
   85090:	d908      	bls.n	850a4 <__divdi3+0x94>
   85092:	1949      	adds	r1, r1, r5
   85094:	f103 37ff 	add.w	r7, r3, #4294967295	; 0xffffffff
   85098:	f080 80f1 	bcs.w	8527e <__divdi3+0x26e>
   8509c:	4288      	cmp	r0, r1
   8509e:	f240 80ee 	bls.w	8527e <__divdi3+0x26e>
   850a2:	3b02      	subs	r3, #2
   850a4:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
   850a8:	2300      	movs	r3, #0
   850aa:	e003      	b.n	850b4 <__divdi3+0xa4>
   850ac:	428b      	cmp	r3, r1
   850ae:	d90a      	bls.n	850c6 <__divdi3+0xb6>
   850b0:	2300      	movs	r3, #0
   850b2:	461a      	mov	r2, r3
   850b4:	4610      	mov	r0, r2
   850b6:	4619      	mov	r1, r3
   850b8:	b114      	cbz	r4, 850c0 <__divdi3+0xb0>
   850ba:	4240      	negs	r0, r0
   850bc:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
   850c0:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   850c4:	4770      	bx	lr
   850c6:	fab3 f883 	clz	r8, r3
   850ca:	f1b8 0f00 	cmp.w	r8, #0
   850ce:	f040 8088 	bne.w	851e2 <__divdi3+0x1d2>
   850d2:	428b      	cmp	r3, r1
   850d4:	d302      	bcc.n	850dc <__divdi3+0xcc>
   850d6:	4282      	cmp	r2, r0
   850d8:	f200 80e2 	bhi.w	852a0 <__divdi3+0x290>
   850dc:	2300      	movs	r3, #0
   850de:	2201      	movs	r2, #1
   850e0:	e7e8      	b.n	850b4 <__divdi3+0xa4>
   850e2:	b912      	cbnz	r2, 850ea <__divdi3+0xda>
   850e4:	2301      	movs	r3, #1
   850e6:	fbb3 f5f2 	udiv	r5, r3, r2
   850ea:	fab5 f285 	clz	r2, r5
   850ee:	2a00      	cmp	r2, #0
   850f0:	d13a      	bne.n	85168 <__divdi3+0x158>
   850f2:	1b7f      	subs	r7, r7, r5
   850f4:	0c28      	lsrs	r0, r5, #16
   850f6:	fa1f fc85 	uxth.w	ip, r5
   850fa:	2301      	movs	r3, #1
   850fc:	fbb7 f1f0 	udiv	r1, r7, r0
   85100:	fb00 7711 	mls	r7, r0, r1, r7
   85104:	fb0c f201 	mul.w	r2, ip, r1
   85108:	ea4f 4816 	mov.w	r8, r6, lsr #16
   8510c:	ea48 4707 	orr.w	r7, r8, r7, lsl #16
   85110:	42ba      	cmp	r2, r7
   85112:	d907      	bls.n	85124 <__divdi3+0x114>
   85114:	197f      	adds	r7, r7, r5
   85116:	f101 38ff 	add.w	r8, r1, #4294967295	; 0xffffffff
   8511a:	d202      	bcs.n	85122 <__divdi3+0x112>
   8511c:	42ba      	cmp	r2, r7
   8511e:	f200 80c4 	bhi.w	852aa <__divdi3+0x29a>
   85122:	4641      	mov	r1, r8
   85124:	1abf      	subs	r7, r7, r2
   85126:	fbb7 f2f0 	udiv	r2, r7, r0
   8512a:	fb00 7012 	mls	r0, r0, r2, r7
   8512e:	fb0c fc02 	mul.w	ip, ip, r2
   85132:	b2b6      	uxth	r6, r6
   85134:	ea46 4000 	orr.w	r0, r6, r0, lsl #16
   85138:	4584      	cmp	ip, r0
   8513a:	d907      	bls.n	8514c <__divdi3+0x13c>
   8513c:	1940      	adds	r0, r0, r5
   8513e:	f102 37ff 	add.w	r7, r2, #4294967295	; 0xffffffff
   85142:	d202      	bcs.n	8514a <__divdi3+0x13a>
   85144:	4584      	cmp	ip, r0
   85146:	f200 80ae 	bhi.w	852a6 <__divdi3+0x296>
   8514a:	463a      	mov	r2, r7
   8514c:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
   85150:	e7b0      	b.n	850b4 <__divdi3+0xa4>
   85152:	43e4      	mvns	r4, r4
   85154:	4252      	negs	r2, r2
   85156:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
   8515a:	e762      	b.n	85022 <__divdi3+0x12>
   8515c:	4240      	negs	r0, r0
   8515e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
   85162:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
   85166:	e759      	b.n	8501c <__divdi3+0xc>
   85168:	4095      	lsls	r5, r2
   8516a:	f1c2 0920 	rsb	r9, r2, #32
   8516e:	fa27 f109 	lsr.w	r1, r7, r9
   85172:	fa26 f909 	lsr.w	r9, r6, r9
   85176:	4097      	lsls	r7, r2
   85178:	0c28      	lsrs	r0, r5, #16
   8517a:	fbb1 f8f0 	udiv	r8, r1, r0
   8517e:	fb00 1118 	mls	r1, r0, r8, r1
   85182:	fa1f fc85 	uxth.w	ip, r5
   85186:	fb0c f308 	mul.w	r3, ip, r8
   8518a:	ea49 0907 	orr.w	r9, r9, r7
   8518e:	ea4f 4719 	mov.w	r7, r9, lsr #16
   85192:	ea47 4101 	orr.w	r1, r7, r1, lsl #16
   85196:	428b      	cmp	r3, r1
   85198:	fa06 f602 	lsl.w	r6, r6, r2
   8519c:	d908      	bls.n	851b0 <__divdi3+0x1a0>
   8519e:	1949      	adds	r1, r1, r5
   851a0:	f108 32ff 	add.w	r2, r8, #4294967295	; 0xffffffff
   851a4:	d27a      	bcs.n	8529c <__divdi3+0x28c>
   851a6:	428b      	cmp	r3, r1
   851a8:	d978      	bls.n	8529c <__divdi3+0x28c>
   851aa:	f1a8 0802 	sub.w	r8, r8, #2
   851ae:	4429      	add	r1, r5
   851b0:	1ac9      	subs	r1, r1, r3
   851b2:	fbb1 f3f0 	udiv	r3, r1, r0
   851b6:	fb00 1713 	mls	r7, r0, r3, r1
   851ba:	fb0c f203 	mul.w	r2, ip, r3
   851be:	fa1f f989 	uxth.w	r9, r9
   851c2:	ea49 4707 	orr.w	r7, r9, r7, lsl #16
   851c6:	42ba      	cmp	r2, r7
   851c8:	d907      	bls.n	851da <__divdi3+0x1ca>
   851ca:	197f      	adds	r7, r7, r5
   851cc:	f103 31ff 	add.w	r1, r3, #4294967295	; 0xffffffff
   851d0:	d260      	bcs.n	85294 <__divdi3+0x284>
   851d2:	42ba      	cmp	r2, r7
   851d4:	d95e      	bls.n	85294 <__divdi3+0x284>
   851d6:	3b02      	subs	r3, #2
   851d8:	442f      	add	r7, r5
   851da:	1abf      	subs	r7, r7, r2
   851dc:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
   851e0:	e78c      	b.n	850fc <__divdi3+0xec>
   851e2:	f1c8 0220 	rsb	r2, r8, #32
   851e6:	fa25 f102 	lsr.w	r1, r5, r2
   851ea:	fa03 fc08 	lsl.w	ip, r3, r8
   851ee:	fa27 f302 	lsr.w	r3, r7, r2
   851f2:	fa20 f202 	lsr.w	r2, r0, r2
   851f6:	fa07 f708 	lsl.w	r7, r7, r8
   851fa:	ea41 0c0c 	orr.w	ip, r1, ip
   851fe:	ea4f 491c 	mov.w	r9, ip, lsr #16
   85202:	fbb3 f1f9 	udiv	r1, r3, r9
   85206:	fb09 3311 	mls	r3, r9, r1, r3
   8520a:	fa1f fa8c 	uxth.w	sl, ip
   8520e:	fb0a fb01 	mul.w	fp, sl, r1
   85212:	4317      	orrs	r7, r2
   85214:	0c3a      	lsrs	r2, r7, #16
   85216:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
   8521a:	459b      	cmp	fp, r3
   8521c:	fa05 f008 	lsl.w	r0, r5, r8
   85220:	d908      	bls.n	85234 <__divdi3+0x224>
   85222:	eb13 030c 	adds.w	r3, r3, ip
   85226:	f101 32ff 	add.w	r2, r1, #4294967295	; 0xffffffff
   8522a:	d235      	bcs.n	85298 <__divdi3+0x288>
   8522c:	459b      	cmp	fp, r3
   8522e:	d933      	bls.n	85298 <__divdi3+0x288>
   85230:	3902      	subs	r1, #2
   85232:	4463      	add	r3, ip
   85234:	ebcb 0303 	rsb	r3, fp, r3
   85238:	fbb3 f2f9 	udiv	r2, r3, r9
   8523c:	fb09 3312 	mls	r3, r9, r2, r3
   85240:	fb0a fa02 	mul.w	sl, sl, r2
   85244:	b2bf      	uxth	r7, r7
   85246:	ea47 4703 	orr.w	r7, r7, r3, lsl #16
   8524a:	45ba      	cmp	sl, r7
   8524c:	d908      	bls.n	85260 <__divdi3+0x250>
   8524e:	eb17 070c 	adds.w	r7, r7, ip
   85252:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
   85256:	d21b      	bcs.n	85290 <__divdi3+0x280>
   85258:	45ba      	cmp	sl, r7
   8525a:	d919      	bls.n	85290 <__divdi3+0x280>
   8525c:	3a02      	subs	r2, #2
   8525e:	4467      	add	r7, ip
   85260:	ea42 4501 	orr.w	r5, r2, r1, lsl #16
   85264:	fba5 0100 	umull	r0, r1, r5, r0
   85268:	ebca 0707 	rsb	r7, sl, r7
   8526c:	428f      	cmp	r7, r1
   8526e:	f04f 0300 	mov.w	r3, #0
   85272:	d30a      	bcc.n	8528a <__divdi3+0x27a>
   85274:	d005      	beq.n	85282 <__divdi3+0x272>
   85276:	462a      	mov	r2, r5
   85278:	e71c      	b.n	850b4 <__divdi3+0xa4>
   8527a:	4662      	mov	r2, ip
   8527c:	e6fd      	b.n	8507a <__divdi3+0x6a>
   8527e:	463b      	mov	r3, r7
   85280:	e710      	b.n	850a4 <__divdi3+0x94>
   85282:	fa06 f608 	lsl.w	r6, r6, r8
   85286:	4286      	cmp	r6, r0
   85288:	d2f5      	bcs.n	85276 <__divdi3+0x266>
   8528a:	1e6a      	subs	r2, r5, #1
   8528c:	2300      	movs	r3, #0
   8528e:	e711      	b.n	850b4 <__divdi3+0xa4>
   85290:	461a      	mov	r2, r3
   85292:	e7e5      	b.n	85260 <__divdi3+0x250>
   85294:	460b      	mov	r3, r1
   85296:	e7a0      	b.n	851da <__divdi3+0x1ca>
   85298:	4611      	mov	r1, r2
   8529a:	e7cb      	b.n	85234 <__divdi3+0x224>
   8529c:	4690      	mov	r8, r2
   8529e:	e787      	b.n	851b0 <__divdi3+0x1a0>
   852a0:	4643      	mov	r3, r8
   852a2:	4642      	mov	r2, r8
   852a4:	e706      	b.n	850b4 <__divdi3+0xa4>
   852a6:	3a02      	subs	r2, #2
   852a8:	e750      	b.n	8514c <__divdi3+0x13c>
   852aa:	3902      	subs	r1, #2
   852ac:	442f      	add	r7, r5
   852ae:	e739      	b.n	85124 <__divdi3+0x114>

000852b0 <__udivdi3>:
   852b0:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   852b4:	4614      	mov	r4, r2
   852b6:	4605      	mov	r5, r0
   852b8:	460e      	mov	r6, r1
   852ba:	2b00      	cmp	r3, #0
   852bc:	d143      	bne.n	85346 <__udivdi3+0x96>
   852be:	428a      	cmp	r2, r1
   852c0:	d953      	bls.n	8536a <__udivdi3+0xba>
   852c2:	fab2 f782 	clz	r7, r2
   852c6:	b157      	cbz	r7, 852de <__udivdi3+0x2e>
   852c8:	f1c7 0620 	rsb	r6, r7, #32
   852cc:	fa20 f606 	lsr.w	r6, r0, r6
   852d0:	fa01 f307 	lsl.w	r3, r1, r7
   852d4:	fa02 f407 	lsl.w	r4, r2, r7
   852d8:	fa00 f507 	lsl.w	r5, r0, r7
   852dc:	431e      	orrs	r6, r3
   852de:	0c21      	lsrs	r1, r4, #16
   852e0:	fbb6 f2f1 	udiv	r2, r6, r1
   852e4:	fb01 6612 	mls	r6, r1, r2, r6
   852e8:	b2a0      	uxth	r0, r4
   852ea:	fb00 f302 	mul.w	r3, r0, r2
   852ee:	0c2f      	lsrs	r7, r5, #16
   852f0:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
   852f4:	42b3      	cmp	r3, r6
   852f6:	d909      	bls.n	8530c <__udivdi3+0x5c>
   852f8:	1936      	adds	r6, r6, r4
   852fa:	f102 37ff 	add.w	r7, r2, #4294967295	; 0xffffffff
   852fe:	f080 80fd 	bcs.w	854fc <__udivdi3+0x24c>
   85302:	42b3      	cmp	r3, r6
   85304:	f240 80fa 	bls.w	854fc <__udivdi3+0x24c>
   85308:	3a02      	subs	r2, #2
   8530a:	4426      	add	r6, r4
   8530c:	1af6      	subs	r6, r6, r3
   8530e:	fbb6 f3f1 	udiv	r3, r6, r1
   85312:	fb01 6113 	mls	r1, r1, r3, r6
   85316:	fb00 f003 	mul.w	r0, r0, r3
   8531a:	b2ad      	uxth	r5, r5
   8531c:	ea45 4101 	orr.w	r1, r5, r1, lsl #16
   85320:	4288      	cmp	r0, r1
   85322:	d908      	bls.n	85336 <__udivdi3+0x86>
   85324:	1909      	adds	r1, r1, r4
   85326:	f103 36ff 	add.w	r6, r3, #4294967295	; 0xffffffff
   8532a:	f080 80e9 	bcs.w	85500 <__udivdi3+0x250>
   8532e:	4288      	cmp	r0, r1
   85330:	f240 80e6 	bls.w	85500 <__udivdi3+0x250>
   85334:	3b02      	subs	r3, #2
   85336:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
   8533a:	2300      	movs	r3, #0
   8533c:	4610      	mov	r0, r2
   8533e:	4619      	mov	r1, r3
   85340:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   85344:	4770      	bx	lr
   85346:	428b      	cmp	r3, r1
   85348:	d84c      	bhi.n	853e4 <__udivdi3+0x134>
   8534a:	fab3 f683 	clz	r6, r3
   8534e:	2e00      	cmp	r6, #0
   85350:	d14f      	bne.n	853f2 <__udivdi3+0x142>
   85352:	428b      	cmp	r3, r1
   85354:	d302      	bcc.n	8535c <__udivdi3+0xac>
   85356:	4282      	cmp	r2, r0
   85358:	f200 80dd 	bhi.w	85516 <__udivdi3+0x266>
   8535c:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   85360:	2300      	movs	r3, #0
   85362:	2201      	movs	r2, #1
   85364:	4610      	mov	r0, r2
   85366:	4619      	mov	r1, r3
   85368:	4770      	bx	lr
   8536a:	b912      	cbnz	r2, 85372 <__udivdi3+0xc2>
   8536c:	2401      	movs	r4, #1
   8536e:	fbb4 f4f2 	udiv	r4, r4, r2
   85372:	fab4 f284 	clz	r2, r4
   85376:	2a00      	cmp	r2, #0
   85378:	f040 8082 	bne.w	85480 <__udivdi3+0x1d0>
   8537c:	1b09      	subs	r1, r1, r4
   8537e:	0c26      	lsrs	r6, r4, #16
   85380:	b2a7      	uxth	r7, r4
   85382:	2301      	movs	r3, #1
   85384:	fbb1 f0f6 	udiv	r0, r1, r6
   85388:	fb06 1110 	mls	r1, r6, r0, r1
   8538c:	fb07 f200 	mul.w	r2, r7, r0
   85390:	ea4f 4c15 	mov.w	ip, r5, lsr #16
   85394:	ea4c 4101 	orr.w	r1, ip, r1, lsl #16
   85398:	428a      	cmp	r2, r1
   8539a:	d907      	bls.n	853ac <__udivdi3+0xfc>
   8539c:	1909      	adds	r1, r1, r4
   8539e:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
   853a2:	d202      	bcs.n	853aa <__udivdi3+0xfa>
   853a4:	428a      	cmp	r2, r1
   853a6:	f200 80c8 	bhi.w	8553a <__udivdi3+0x28a>
   853aa:	4660      	mov	r0, ip
   853ac:	1a89      	subs	r1, r1, r2
   853ae:	fbb1 f2f6 	udiv	r2, r1, r6
   853b2:	fb06 1112 	mls	r1, r6, r2, r1
   853b6:	fb07 f702 	mul.w	r7, r7, r2
   853ba:	b2ad      	uxth	r5, r5
   853bc:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
   853c0:	42af      	cmp	r7, r5
   853c2:	d908      	bls.n	853d6 <__udivdi3+0x126>
   853c4:	192c      	adds	r4, r5, r4
   853c6:	f102 31ff 	add.w	r1, r2, #4294967295	; 0xffffffff
   853ca:	f080 809b 	bcs.w	85504 <__udivdi3+0x254>
   853ce:	42a7      	cmp	r7, r4
   853d0:	f240 8098 	bls.w	85504 <__udivdi3+0x254>
   853d4:	3a02      	subs	r2, #2
   853d6:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
   853da:	4610      	mov	r0, r2
   853dc:	4619      	mov	r1, r3
   853de:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   853e2:	4770      	bx	lr
   853e4:	2300      	movs	r3, #0
   853e6:	461a      	mov	r2, r3
   853e8:	4610      	mov	r0, r2
   853ea:	4619      	mov	r1, r3
   853ec:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
   853f0:	4770      	bx	lr
   853f2:	f1c6 0520 	rsb	r5, r6, #32
   853f6:	fa22 f705 	lsr.w	r7, r2, r5
   853fa:	fa03 f406 	lsl.w	r4, r3, r6
   853fe:	fa21 f305 	lsr.w	r3, r1, r5
   85402:	fa01 fb06 	lsl.w	fp, r1, r6
   85406:	fa20 f505 	lsr.w	r5, r0, r5
   8540a:	433c      	orrs	r4, r7
   8540c:	ea4f 4814 	mov.w	r8, r4, lsr #16
   85410:	fbb3 fcf8 	udiv	ip, r3, r8
   85414:	fb08 331c 	mls	r3, r8, ip, r3
   85418:	fa1f f984 	uxth.w	r9, r4
   8541c:	fb09 fa0c 	mul.w	sl, r9, ip
   85420:	ea45 0b0b 	orr.w	fp, r5, fp
   85424:	ea4f 451b 	mov.w	r5, fp, lsr #16
   85428:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
   8542c:	459a      	cmp	sl, r3
   8542e:	fa02 f206 	lsl.w	r2, r2, r6
   85432:	d904      	bls.n	8543e <__udivdi3+0x18e>
   85434:	191b      	adds	r3, r3, r4
   85436:	f10c 35ff 	add.w	r5, ip, #4294967295	; 0xffffffff
   8543a:	d36f      	bcc.n	8551c <__udivdi3+0x26c>
   8543c:	46ac      	mov	ip, r5
   8543e:	ebca 0303 	rsb	r3, sl, r3
   85442:	fbb3 f5f8 	udiv	r5, r3, r8
   85446:	fb08 3315 	mls	r3, r8, r5, r3
   8544a:	fb09 f905 	mul.w	r9, r9, r5
   8544e:	fa1f fb8b 	uxth.w	fp, fp
   85452:	ea4b 4703 	orr.w	r7, fp, r3, lsl #16
   85456:	45b9      	cmp	r9, r7
   85458:	d904      	bls.n	85464 <__udivdi3+0x1b4>
   8545a:	193f      	adds	r7, r7, r4
   8545c:	f105 33ff 	add.w	r3, r5, #4294967295	; 0xffffffff
   85460:	d362      	bcc.n	85528 <__udivdi3+0x278>
   85462:	461d      	mov	r5, r3
   85464:	ea45 4c0c 	orr.w	ip, r5, ip, lsl #16
   85468:	fbac 2302 	umull	r2, r3, ip, r2
   8546c:	ebc9 0707 	rsb	r7, r9, r7
   85470:	429f      	cmp	r7, r3
   85472:	f04f 0500 	mov.w	r5, #0
   85476:	d34a      	bcc.n	8550e <__udivdi3+0x25e>
   85478:	d046      	beq.n	85508 <__udivdi3+0x258>
   8547a:	4662      	mov	r2, ip
   8547c:	462b      	mov	r3, r5
   8547e:	e75d      	b.n	8533c <__udivdi3+0x8c>
   85480:	4094      	lsls	r4, r2
   85482:	f1c2 0920 	rsb	r9, r2, #32
   85486:	fa21 fc09 	lsr.w	ip, r1, r9
   8548a:	4091      	lsls	r1, r2
   8548c:	fa20 f909 	lsr.w	r9, r0, r9
   85490:	0c26      	lsrs	r6, r4, #16
   85492:	fbbc f8f6 	udiv	r8, ip, r6
   85496:	fb06 cc18 	mls	ip, r6, r8, ip
   8549a:	b2a7      	uxth	r7, r4
   8549c:	fb07 f308 	mul.w	r3, r7, r8
   854a0:	ea49 0901 	orr.w	r9, r9, r1
   854a4:	ea4f 4119 	mov.w	r1, r9, lsr #16
   854a8:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
   854ac:	4563      	cmp	r3, ip
   854ae:	fa00 f502 	lsl.w	r5, r0, r2
   854b2:	d909      	bls.n	854c8 <__udivdi3+0x218>
   854b4:	eb1c 0c04 	adds.w	ip, ip, r4
   854b8:	f108 32ff 	add.w	r2, r8, #4294967295	; 0xffffffff
   854bc:	d23b      	bcs.n	85536 <__udivdi3+0x286>
   854be:	4563      	cmp	r3, ip
   854c0:	d939      	bls.n	85536 <__udivdi3+0x286>
   854c2:	f1a8 0802 	sub.w	r8, r8, #2
   854c6:	44a4      	add	ip, r4
   854c8:	ebc3 0c0c 	rsb	ip, r3, ip
   854cc:	fbbc f3f6 	udiv	r3, ip, r6
   854d0:	fb06 c113 	mls	r1, r6, r3, ip
   854d4:	fb07 f203 	mul.w	r2, r7, r3
   854d8:	fa1f f989 	uxth.w	r9, r9
   854dc:	ea49 4101 	orr.w	r1, r9, r1, lsl #16
   854e0:	428a      	cmp	r2, r1
   854e2:	d907      	bls.n	854f4 <__udivdi3+0x244>
   854e4:	1909      	adds	r1, r1, r4
   854e6:	f103 30ff 	add.w	r0, r3, #4294967295	; 0xffffffff
   854ea:	d222      	bcs.n	85532 <__udivdi3+0x282>
   854ec:	428a      	cmp	r2, r1
   854ee:	d920      	bls.n	85532 <__udivdi3+0x282>
   854f0:	3b02      	subs	r3, #2
   854f2:	4421      	add	r1, r4
   854f4:	1a89      	subs	r1, r1, r2
   854f6:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
   854fa:	e743      	b.n	85384 <__udivdi3+0xd4>
   854fc:	463a      	mov	r2, r7
   854fe:	e705      	b.n	8530c <__udivdi3+0x5c>
   85500:	4633      	mov	r3, r6
   85502:	e718      	b.n	85336 <__udivdi3+0x86>
   85504:	460a      	mov	r2, r1
   85506:	e766      	b.n	853d6 <__udivdi3+0x126>
   85508:	40b0      	lsls	r0, r6
   8550a:	4290      	cmp	r0, r2
   8550c:	d2b5      	bcs.n	8547a <__udivdi3+0x1ca>
   8550e:	f10c 32ff 	add.w	r2, ip, #4294967295	; 0xffffffff
   85512:	2300      	movs	r3, #0
   85514:	e712      	b.n	8533c <__udivdi3+0x8c>
   85516:	4633      	mov	r3, r6
   85518:	4632      	mov	r2, r6
   8551a:	e70f      	b.n	8533c <__udivdi3+0x8c>
   8551c:	459a      	cmp	sl, r3
   8551e:	d98d      	bls.n	8543c <__udivdi3+0x18c>
   85520:	f1ac 0c02 	sub.w	ip, ip, #2
   85524:	4423      	add	r3, r4
   85526:	e78a      	b.n	8543e <__udivdi3+0x18e>
   85528:	45b9      	cmp	r9, r7
   8552a:	d99a      	bls.n	85462 <__udivdi3+0x1b2>
   8552c:	3d02      	subs	r5, #2
   8552e:	4427      	add	r7, r4
   85530:	e798      	b.n	85464 <__udivdi3+0x1b4>
   85532:	4603      	mov	r3, r0
   85534:	e7de      	b.n	854f4 <__udivdi3+0x244>
   85536:	4690      	mov	r8, r2
   85538:	e7c6      	b.n	854c8 <__udivdi3+0x218>
   8553a:	3802      	subs	r0, #2
   8553c:	4421      	add	r1, r4
   8553e:	e735      	b.n	853ac <__udivdi3+0xfc>
   85540:	0d0a4e4f 	.word	0x0d0a4e4f
   85544:	66666f00 	.word	0x66666f00
   85548:	00000d0a 	.word	0x00000d0a

0008554c <g_APinDescription>:
   8554c:	400e0e00 00000100 0000000b 00000001     ...@............
   8555c:	00000000 00000004 ffffffff 400e0e00     ...............@
   8556c:	00000200 0000000b 00000001 00000000     ................
   8557c:	00000004 ffffffff 400e1000 02000000     ...........@....
   8558c:	0000000c 00000002 00000000 00000014     ................
   8559c:	00ffffff 400e1200 10000000 0000000d     .......@........
   855ac:	00000002 00000000 00000014 0effffff     ................
   855bc:	400e1200 04000000 0000000d 00000002     ...@............
   855cc:	00000000 00000014 0dffffff 400e1200     ...............@
   855dc:	02000000 0000000d 00000002 00000000     ................
   855ec:	00000014 0cffffff 400e1200 01000000     ...........@....
   855fc:	0000000d 00000002 00000000 0000000c     ................
   8560c:	ff07ffff 400e1200 00800000 0000000d     .......@........
   8561c:	00000002 00000000 0000000c ff06ffff     ................
   8562c:	400e1200 00400000 0000000d 00000002     ...@..@.........
   8563c:	00000000 0000000c ff05ffff 400e1200     ...............@
   8564c:	00200000 0000000d 00000002 00000000     .. .............
   8565c:	0000000c ff04ffff 400e1200 20000000     ...........@... 
   8566c:	0000000d 00000002 00000000 00000014     ................
   8567c:	0fffffff 400e1400 00000080 0000000e     .......@........
   8568c:	00000002 00000000 00000014 10ffffff     ................
   8569c:	400e1400 00000100 0000000e 00000002     ...@............
   856ac:	00000000 00000014 11ffffff 400e1000     ...............@
   856bc:	08000000 0000000c 00000002 00000000     ................
   856cc:	00000014 01ffffff 400e1400 00000010     ...........@....
   856dc:	0000000e 00000002 00000000 00000004     ................
   856ec:	ffffffff 400e1400 00000020 0000000e     .......@ .......
   856fc:	00000002 00000000 00000004 ffffffff     ................
   8570c:	400e0e00 00002000 0000000b 00000001     ...@. ..........
   8571c:	00000000 00000004 ffffffff 400e0e00     ...............@
   8572c:	00001000 0000000b 00000001 00000000     ................
   8573c:	00000004 ffffffff 400e0e00 00000800     ...........@....
   8574c:	0000000b 00000001 00000000 00000004     ................
   8575c:	ffffffff 400e0e00 00000400 0000000b     .......@........
   8576c:	00000001 00000000 00000004 ffffffff     ................
   8577c:	400e1000 00001000 0000000c 00000001     ...@............
   8578c:	00000000 00000004 ffffffff 400e1000     ...............@
   8579c:	00002000 0000000c 00000001 00000000     . ..............
   857ac:	00000004 ffffffff 400e1000 04000000     ...........@....
   857bc:	0000000c 00000004 00000000 00000004     ................
   857cc:	ffffffff 400e0e00 00004000 0000000b     .......@.@......
   857dc:	00000004 00000000 00000004 ffffffff     ................
   857ec:	400e0e00 00008000 0000000b 00000004     ...@............
   857fc:	00000000 00000004 ffffffff 400e1400     ...............@
   8580c:	00000001 0000000e 00000004 00000000     ................
   8581c:	00000004 ffffffff 400e1400 00000002     ...........@....
   8582c:	0000000e 00000004 00000000 00000004     ................
   8583c:	ffffffff 400e1400 00000004 0000000e     .......@........
   8584c:	00000004 00000000 00000004 ffffffff     ................
   8585c:	400e1400 00000008 0000000e 00000004     ...@............
   8586c:	00000000 00000004 ffffffff 400e1400     ...............@
   8587c:	00000040 0000000e 00000004 00000000     @...............
   8588c:	00000004 ffffffff 400e1400 00000200     ...........@....
   8589c:	0000000e 00000004 00000000 00000004     ................
   858ac:	ffffffff 400e0e00 00000080 0000000b     .......@........
   858bc:	00000004 00000000 00000004 ffffffff     ................
   858cc:	400e1400 00000400 0000000e 00000004     ...@............
   858dc:	00000000 00000004 ffffffff 400e1200     ...............@
   858ec:	00000002 0000000d 00000004 00000000     ................
   858fc:	00000004 ffffffff 400e1200 00000004     ...........@....
   8590c:	0000000d 00000004 00000000 00000004     ................
   8591c:	ffffffff 400e1200 00000008 0000000d     .......@........
   8592c:	00000004 00000000 00000004 ffffffff     ................
   8593c:	400e1200 00000010 0000000d 00000004     ...@............
   8594c:	00000000 00000004 ffffffff 400e1200     ...............@
   8595c:	00000020 0000000d 00000004 00000000      ...............
   8596c:	00000004 ffffffff 400e1200 00000040     ...........@@...
   8597c:	0000000d 00000004 00000000 00000004     ................
   8598c:	ffffffff 400e1200 00000080 0000000d     .......@........
   8599c:	00000004 00000000 00000004 ffffffff     ................
   859ac:	400e1200 00000100 0000000d 00000004     ...@............
   859bc:	00000000 00000004 ffffffff 400e1200     ...............@
   859cc:	00000200 0000000d 00000004 00000000     ................
   859dc:	00000004 ffffffff 400e0e00 00080000     ...........@....
   859ec:	0000000b 00000004 00000000 00000004     ................
   859fc:	ffffffff 400e0e00 00100000 0000000b     .......@........
   85a0c:	00000004 00000000 00000004 ffffffff     ................
   85a1c:	400e1200 00080000 0000000d 00000004     ...@............
   85a2c:	00000000 00000004 ffffffff 400e1200     ...............@
   85a3c:	00040000 0000000d 00000004 00000000     ................
   85a4c:	00000004 ffffffff 400e1200 00020000     ...........@....
   85a5c:	0000000d 00000004 00000000 00000004     ................
   85a6c:	ffffffff 400e1200 00010000 0000000d     .......@........
   85a7c:	00000004 00000000 00000004 ffffffff     ................
   85a8c:	400e1200 00008000 0000000d 00000004     ...@............
   85a9c:	00000000 00000004 ffffffff 400e1200     ...............@
   85aac:	00004000 0000000d 00000004 00000000     .@..............
   85abc:	00000004 ffffffff 400e1200 00002000     ...........@. ..
   85acc:	0000000d 00000004 00000000 00000004     ................
   85adc:	ffffffff 400e1200 00001000 0000000d     .......@........
   85aec:	00000004 00000000 00000004 ffffffff     ................
   85afc:	400e1000 00200000 0000000c 00000004     ...@.. .........
   85b0c:	00000000 00000004 ffffffff 400e1000     ...............@
   85b1c:	00004000 0000000c 00000004 00000000     .@..............
   85b2c:	00000004 ffffffff 400e0e00 00010000     ...........@....
   85b3c:	0000000b 00000003 00000000 00000002     ................
   85b4c:	ffff0700 400e0e00 01000000 0000000b     .......@........
   85b5c:	00000003 00000000 00000002 ffff0601     ................
   85b6c:	400e0e00 00800000 0000000b 00000003     ...@............
   85b7c:	00000000 00000002 ffff0502 400e0e00     ...............@
   85b8c:	00400000 0000000b 00000003 00000000     ..@.............
   85b9c:	00000002 ffff0403 400e0e00 00000040     ...........@@...
   85bac:	0000000b 00000003 00000000 00000002     ................
   85bbc:	05ff0304 400e0e00 00000010 0000000b     .......@........
   85bcc:	00000003 00000000 00000002 ffff0205     ................
   85bdc:	400e0e00 00000008 0000000b 00000003     ...@............
   85bec:	00000000 00000002 03ff0106 400e0e00     ...............@
   85bfc:	00000004 0000000b 00000003 00000000     ................
   85c0c:	00000002 02ff0007 400e1000 00020000     ...........@....
   85c1c:	0000000c 00000003 00000000 00000002     ................
   85c2c:	ffff0a08 400e1000 00040000 0000000c     .......@........
   85c3c:	00000003 00000000 00000002 ffff0b09     ................
   85c4c:	400e1000 00080000 0000000c 00000003     ...@............
   85c5c:	00000000 00000002 ffff0c0a 400e1000     ...............@
   85c6c:	00100000 0000000c 00000003 00000000     ................
   85c7c:	00000002 ffff0d0b 400e1000 00008000     ...........@....
   85c8c:	0000000c 00000003 00000000 00000002     ................
   85c9c:	ffff100c 400e1000 00010000 0000000c     .......@........
   85cac:	00000003 00000000 00000002 ffff110d     ................
   85cbc:	400e0e00 00000002 0000000b 00000001     ...@............
   85ccc:	00000000 00000004 ffffff0e 400e0e00     ...............@
   85cdc:	00000001 0000000b 00000001 00000000     ................
   85cec:	00000004 ffffff0f 400e0e00 00020000     ...........@....
   85cfc:	0000000b 00000001 00000000 00000004     ................
   85d0c:	ffffffff 400e0e00 00040000 0000000b     .......@........
   85d1c:	00000001 00000000 00000004 ffffffff     ................
   85d2c:	400e1200 40000000 0000000d 00000004     ...@...@........
   85d3c:	00000000 00000004 ffffffff 400e0e00     ...............@
   85d4c:	00200000 0000000b 00000004 00000000     .. .............
   85d5c:	00000004 ffffffff 400e0e00 02000000     ...........@....
   85d6c:	0000000b 00000001 00000000 00000004     ................
   85d7c:	ffffffff 400e0e00 04000000 0000000b     .......@........
   85d8c:	00000001 00000000 00000004 ffffffff     ................
   85d9c:	400e0e00 08000000 0000000b 00000001     ...@............
   85dac:	00000000 00000004 ffffffff 400e0e00     ...............@
   85dbc:	10000000 0000000b 00000001 00000000     ................
   85dcc:	00000004 ffffffff 400e1000 00800000     ...........@....
   85ddc:	0000000c 00000002 00000000 00000004     ................
   85dec:	ffffffff 400e0e00 00060000 0000000b     .......@........
   85dfc:	00000001 00000000 00000005 ffffffff     ................
   85e0c:	400e1000 00003000 0000000c 00000001     ...@.0..........
   85e1c:	00000000 00000005 ffffffff 400e0e00     ...............@
   85e2c:	00000300 0000000b 00000001 00000000     ................
   85e3c:	00000005 ffffffff 400e0e00 00000c00     ...........@....
   85e4c:	0000000b 00000001 00000000 00000005     ................
   85e5c:	ffffffff 400e0e00 00003000 0000000b     .......@.0......
   85e6c:	00000001 00000000 00000005 ffffffff     ................
   85e7c:	400e1400 00000030 0000000e 00000002     ...@0...........
   85e8c:	00000000 00000005 ffffffff 400e1000     ...............@
   85e9c:	00000c00 0000000c 00000001 00000000     ................
   85eac:	00000004 ffffffff 400e1000 00200000     ...........@.. .
   85ebc:	0000000c 00000002 00000000 00000004     ................
   85ecc:	ffffffff 400e0e00 20000000 0000000b     .......@... ....
   85edc:	00000001 00000000 00000004 ffffffff     ................
   85eec:	400e1000 00008000 0000000c 00000001     ...@............
   85efc:	00000000 00000004 ffffffff 400e1000     ...............@
   85f0c:	00004000 0000000c 00000001 00000000     .@..............
   85f1c:	00000004 ffffffff 400e0e00 00000003     ...........@....
   85f2c:	0000000b 00000001 00000000 00000005     ................
   85f3c:	ffffffff 400e1000 0000c000 0000000c     .......@........
   85f4c:	00000001 00000000 00000005 ffffffff     ................
	...
   85f74:	ffffffff 00000000 00000008 00000010     ................
   85f84:	00000018 00000040 00000050 00000060     ....@...P...`...
   85f94:	00000070 00000200 00000240 00000280     p.......@.......
   85fa4:	000002c0 00000300 00000340 00000380     ........@.......
   85fb4:	000003c0 574e4f43 44455241 5f504d55     ....CONWAREDUMP_
   85fc4:	52415453 000d0a54 25096425 30250964     START...%d.%d.%0
   85fd4:	25097038 09783830 38302509 09340970     8p.%08x..%08p.4.
   85fe4:	25090930 000d0a64 574e4f43 44455241     0..%d...CONWARED
   85ff4:	5f504d55 0a444e45 0000000d              UMP_END.....

00086000 <_ZTV9UARTClass>:
	...
   86008:	000810a1 000815b9 00081031 0008105f     ........1..._...
   86018:	00081043 00081089 000811c5 000810f5     C...............
   86028:	0008102d 00000000                       -.......

00086030 <_ZTV10USARTClass>:
	...
   86038:	000810a1 000815b9 00081031 0008105f     ........1..._...
   86048:	00081043 00081089 00081227 000810f5     C.......'.......
   86058:	0008102d 00000000 74697845 20676e69     -.......Exiting 
   86068:	68746977 61747320 20737574 0a2e6425     with status %d..
	...

00086079 <STRING_PRODUCT>:
   86079:	75647241 206f6e69 00657544              Arduino Due.

00086085 <USB_DeviceDescriptor>:
   86085:	02000112 40000000 003e2341 02010100     .......@A#>.....
   86095:	                                         ...

00086098 <STRING_LANGUAGE>:
   86098:	04090304                                ....

0008609c <_ZL18test_packet_buffer>:
	...
   860a4:	aaaaaa00 aaaaaaaa eeeeeeaa eeeeeeee     ................
   860b4:	fffffeee ffffffff ffffffff dfbf7fff     ................
   860c4:	fdfbf7ef dfbf7efc fdfbf7ef               .....~......~

000860d1 <STRING_MANUFACTURER>:
   860d1:	75647241 206f6e69 00434c4c              Arduino LLC.

000860dd <USB_DeviceDescriptorA>:
   860dd:	02000112 400102ef 003e2341 02010100     .......@A#>.....
   860ed:	                                         ..

000860ef <_ZL19USB_DeviceQualifier>:
   860ef:	0200060a 40000000                        .......@.

000860f8 <_ZTV7Serial_>:
	...
   86100:	00081d6d 00081e41 00081d2d 00081d85     m...A...-.......
   86110:	00081d4d 00081dc9 00081d45 00081dd1     M.......E.......

00086120 <_ZL18_cdcOtherInterface>:
   86120:	02000b08 00010202 00000409 00020201     ................
   86130:	00240500 24050110 04010101 05060224     ..$....$....$...
   86140:	01000624 03810507 09100010 02000104     $...............
   86150:	0000000a 02020507 07000040 40028305     ........@......@
	...

00086162 <_ZL13_cdcInterface>:
   86162:	02000b08 00010202 00000409 00020201     ................
   86172:	00240500 24050110 04010101 05060224     ..$....$....$...
   86182:	01000624 03810507 09100010 02000104     $...............
   86192:	0000000a 02020507 07000200 00028305     ................
   861a2:	00430002                                 ..C...

000861a8 <_global_impure_ptr>:
   861a8:	20070070                                p.. 

000861ac <blanks.6717>:
   861ac:	20202020 20202020 20202020 20202020                     
   861bc:	33323130 37363534 42413938 46454443     0123456789ABCDEF
   861cc:	00000000 33323130 37363534 62613938     ....0123456789ab
   861dc:	66656463 00000000 6c756e28 0000296c     cdef....(null)..

000861ec <zeroes.6718>:
   861ec:	30303030 30303030 30303030 30303030     0000000000000000

000861fc <_init>:
   861fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   861fe:	bf00      	nop
   86200:	bcf8      	pop	{r3, r4, r5, r6, r7}
   86202:	bc08      	pop	{r3}
   86204:	469e      	mov	lr, r3
   86206:	4770      	bx	lr

00086208 <__init_array_start>:
   86208:	00083621 	.word	0x00083621

0008620c <__frame_dummy_init_array_entry>:
   8620c:	00080119 00080311 000818cd 00081f0d     ................

0008621c <_fini>:
   8621c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   8621e:	bf00      	nop
   86220:	bcf8      	pop	{r3, r4, r5, r6, r7}
   86222:	bc08      	pop	{r3}
   86224:	469e      	mov	lr, r3
   86226:	4770      	bx	lr

00086228 <__do_global_dtors_aux_fini_array_entry>:
   86228:	00f5 0008                                   ....

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
200700a4:	000861a4 00000000 00000000 00000000     .a..............
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
200708d0:	00084d45                                EM..
