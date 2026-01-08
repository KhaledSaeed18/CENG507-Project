
freertos_riscv.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_start>:
    80000000:	00001117          	auipc	sp,0x1
    80000004:	10010113          	addi	sp,sp,256 # 80001100 <_stack_top>
    80000008:	00003517          	auipc	a0,0x3
    8000000c:	da850513          	addi	a0,a0,-600 # 80002db0 <xSuspendedTaskList>
    80000010:	00007597          	auipc	a1,0x7
    80000014:	fe058593          	addi	a1,a1,-32 # 80006ff0 <task2_counter>
    80000018:	00b57763          	bgeu	a0,a1,80000026 <_start+0x26>
    8000001c:	00052023          	sw	zero,0(a0)
    80000020:	0511                	addi	a0,a0,4
    80000022:	feb56de3          	bltu	a0,a1,8000001c <_start+0x1c>
    80000026:	250010ef          	jal	80001276 <main>
    8000002a:	a001                	j	8000002a <_start+0x2a>
    8000002c:	00000013          	nop
    80000030:	00000013          	nop
    80000034:	00000013          	nop
    80000038:	00000013          	nop
    8000003c:	00000013          	nop
    80000040:	00000013          	nop
    80000044:	00000013          	nop
    80000048:	00000013          	nop
    8000004c:	00000013          	nop
    80000050:	00000013          	nop
    80000054:	00000013          	nop
    80000058:	00000013          	nop
    8000005c:	00000013          	nop
    80000060:	00000013          	nop
    80000064:	00000013          	nop
    80000068:	00000013          	nop
    8000006c:	00000013          	nop
    80000070:	00000013          	nop
    80000074:	00000013          	nop
    80000078:	00000013          	nop
    8000007c:	00000013          	nop
    80000080:	00000013          	nop
    80000084:	00000013          	nop
    80000088:	00000013          	nop
    8000008c:	00000013          	nop
    80000090:	00000013          	nop
    80000094:	00000013          	nop
    80000098:	00000013          	nop
    8000009c:	00000013          	nop
    800000a0:	00000013          	nop
    800000a4:	00000013          	nop
    800000a8:	00000013          	nop
    800000ac:	00000013          	nop
    800000b0:	00000013          	nop
    800000b4:	00000013          	nop
    800000b8:	00000013          	nop
    800000bc:	00000013          	nop
    800000c0:	00000013          	nop
    800000c4:	00000013          	nop
    800000c8:	00000013          	nop
    800000cc:	00000013          	nop
    800000d0:	00000013          	nop
    800000d4:	00000013          	nop
    800000d8:	00000013          	nop
    800000dc:	00000013          	nop
    800000e0:	00000013          	nop
    800000e4:	00000013          	nop
    800000e8:	00000013          	nop
    800000ec:	00000013          	nop
    800000f0:	00000013          	nop
    800000f4:	00000013          	nop
    800000f8:	00000013          	nop
    800000fc:	00000013          	nop

0000000080000100 <_stack_bottom>:
	...

0000000080001100 <_stack_top>:
    80001100:	0001                	nop
    80001102:	00000013          	nop
    80001106:	00000013          	nop
    8000110a:	00000013          	nop
    8000110e:	00000013          	nop
    80001112:	00000013          	nop
    80001116:	00000013          	nop
    8000111a:	00000013          	nop
    8000111e:	00000013          	nop
    80001122:	00000013          	nop
    80001126:	00000013          	nop
    8000112a:	00000013          	nop
    8000112e:	00000013          	nop
    80001132:	00000013          	nop
    80001136:	00000013          	nop
    8000113a:	00000013          	nop
    8000113e:	00000013          	nop
    80001142:	00000013          	nop
    80001146:	00000013          	nop
    8000114a:	00000013          	nop
    8000114e:	00000013          	nop
    80001152:	00000013          	nop
    80001156:	00000013          	nop
    8000115a:	00000013          	nop
    8000115e:	00000013          	nop
    80001162:	00000013          	nop
    80001166:	00000013          	nop
    8000116a:	00000013          	nop
    8000116e:	00000013          	nop
    80001172:	00000013          	nop
    80001176:	00000013          	nop
    8000117a:	00000013          	nop
    8000117e:	00000013          	nop
    80001182:	00000013          	nop
    80001186:	00000013          	nop
    8000118a:	00000013          	nop
    8000118e:	00000013          	nop
    80001192:	00000013          	nop
    80001196:	00000013          	nop
    8000119a:	00000013          	nop
    8000119e:	00000013          	nop
    800011a2:	00000013          	nop
    800011a6:	00000013          	nop
    800011aa:	00000013          	nop
    800011ae:	00000013          	nop
    800011b2:	00000013          	nop
    800011b6:	00000013          	nop
    800011ba:	00000013          	nop
    800011be:	00000013          	nop
    800011c2:	00000013          	nop
    800011c6:	00000013          	nop
    800011ca:	00000013          	nop
    800011ce:	00000013          	nop

00000000800011d2 <vTask1>:
    800011d2:	7179                	addi	sp,sp,-48
    800011d4:	f022                	sd	s0,32(sp)
    800011d6:	ec26                	sd	s1,24(sp)
    800011d8:	f406                	sd	ra,40(sp)
    800011da:	2bf000ef          	jal	80001c98 <xTaskGetTickCount>
    800011de:	e42a                	sd	a0,8(sp)
    800011e0:	00002497          	auipc	s1,0x2
    800011e4:	aeb48493          	addi	s1,s1,-1301 # 80002ccb <memcpy+0xfd>
    800011e8:	10000437          	lui	s0,0x10000
    800011ec:	00006697          	auipc	a3,0x6
    800011f0:	e086a683          	lw	a3,-504(a3) # 80006ff4 <task1_counter>
    800011f4:	05400713          	li	a4,84
    800011f8:	00002797          	auipc	a5,0x2
    800011fc:	ac078793          	addi	a5,a5,-1344 # 80002cb8 <memcpy+0xea>
    80001200:	2685                	addiw	a3,a3,1
    80001202:	00006617          	auipc	a2,0x6
    80001206:	ded62923          	sw	a3,-526(a2) # 80006ff4 <task1_counter>
    8000120a:	0785                	addi	a5,a5,1
    8000120c:	00e40023          	sb	a4,0(s0) # 10000000 <_start-0x70000000>
    80001210:	0007c703          	lbu	a4,0(a5)
    80001214:	fe979be3          	bne	a5,s1,8000120a <vTask1+0x38>
    80001218:	3e800593          	li	a1,1000
    8000121c:	0028                	addi	a0,sp,8
    8000121e:	10f000ef          	jal	80001b2c <xTaskDelayUntil>
    80001222:	b7e9                	j	800011ec <vTask1+0x1a>

0000000080001224 <vTask2>:
    80001224:	7179                	addi	sp,sp,-48
    80001226:	f022                	sd	s0,32(sp)
    80001228:	ec26                	sd	s1,24(sp)
    8000122a:	f406                	sd	ra,40(sp)
    8000122c:	26d000ef          	jal	80001c98 <xTaskGetTickCount>
    80001230:	e42a                	sd	a0,8(sp)
    80001232:	00002497          	auipc	s1,0x2
    80001236:	ab148493          	addi	s1,s1,-1359 # 80002ce3 <memcpy+0x115>
    8000123a:	10000437          	lui	s0,0x10000
    8000123e:	00006697          	auipc	a3,0x6
    80001242:	db26a683          	lw	a3,-590(a3) # 80006ff0 <task2_counter>
    80001246:	05400713          	li	a4,84
    8000124a:	00002797          	auipc	a5,0x2
    8000124e:	a8678793          	addi	a5,a5,-1402 # 80002cd0 <memcpy+0x102>
    80001252:	2685                	addiw	a3,a3,1
    80001254:	00006617          	auipc	a2,0x6
    80001258:	d8d62e23          	sw	a3,-612(a2) # 80006ff0 <task2_counter>
    8000125c:	0785                	addi	a5,a5,1
    8000125e:	00e40023          	sb	a4,0(s0) # 10000000 <_start-0x70000000>
    80001262:	0007c703          	lbu	a4,0(a5)
    80001266:	fe979be3          	bne	a5,s1,8000125c <vTask2+0x38>
    8000126a:	1f400593          	li	a1,500
    8000126e:	0028                	addi	a0,sp,8
    80001270:	0bd000ef          	jal	80001b2c <xTaskDelayUntil>
    80001274:	b7e9                	j	8000123e <vTask2+0x1a>

0000000080001276 <main>:
    80001276:	1141                	addi	sp,sp,-16
    80001278:	e406                	sd	ra,8(sp)
    8000127a:	4735                	li	a4,13
    8000127c:	00002797          	auipc	a5,0x2
    80001280:	a6c78793          	addi	a5,a5,-1428 # 80002ce8 <memcpy+0x11a>
    80001284:	00002617          	auipc	a2,0x2
    80001288:	a8b60613          	addi	a2,a2,-1397 # 80002d0f <memcpy+0x141>
    8000128c:	100006b7          	lui	a3,0x10000
    80001290:	0785                	addi	a5,a5,1
    80001292:	00e68023          	sb	a4,0(a3) # 10000000 <_start-0x70000000>
    80001296:	0007c703          	lbu	a4,0(a5)
    8000129a:	fec79be3          	bne	a5,a2,80001290 <main+0x1a>
    8000129e:	00006797          	auipc	a5,0x6
    800012a2:	d6278793          	addi	a5,a5,-670 # 80007000 <xTask1Handle>
    800012a6:	4705                	li	a4,1
    800012a8:	4681                	li	a3,0
    800012aa:	08000613          	li	a2,128
    800012ae:	00002597          	auipc	a1,0x2
    800012b2:	aaa58593          	addi	a1,a1,-1366 # 80002d58 <memcpy+0x18a>
    800012b6:	00000517          	auipc	a0,0x0
    800012ba:	f1c50513          	addi	a0,a0,-228 # 800011d2 <vTask1>
    800012be:	5e4000ef          	jal	800018a2 <xTaskCreate>
    800012c2:	00006797          	auipc	a5,0x6
    800012c6:	d3678793          	addi	a5,a5,-714 # 80006ff8 <xTask2Handle>
    800012ca:	4709                	li	a4,2
    800012cc:	4681                	li	a3,0
    800012ce:	08000613          	li	a2,128
    800012d2:	00002597          	auipc	a1,0x2
    800012d6:	a8e58593          	addi	a1,a1,-1394 # 80002d60 <memcpy+0x192>
    800012da:	00000517          	auipc	a0,0x0
    800012de:	f4a50513          	addi	a0,a0,-182 # 80001224 <vTask2>
    800012e2:	5c0000ef          	jal	800018a2 <xTaskCreate>
    800012e6:	05400713          	li	a4,84
    800012ea:	00002797          	auipc	a5,0x2
    800012ee:	a2678793          	addi	a5,a5,-1498 # 80002d10 <memcpy+0x142>
    800012f2:	00002617          	auipc	a2,0x2
    800012f6:	a4460613          	addi	a2,a2,-1468 # 80002d36 <memcpy+0x168>
    800012fa:	100006b7          	lui	a3,0x10000
    800012fe:	0785                	addi	a5,a5,1
    80001300:	00e68023          	sb	a4,0(a3) # 10000000 <_start-0x70000000>
    80001304:	0007c703          	lbu	a4,0(a5)
    80001308:	fec79be3          	bne	a5,a2,800012fe <main+0x88>
    8000130c:	0cf000ef          	jal	80001bda <vTaskStartScheduler>
    80001310:	04500713          	li	a4,69
    80001314:	00002797          	auipc	a5,0x2
    80001318:	a2478793          	addi	a5,a5,-1500 # 80002d38 <memcpy+0x16a>
    8000131c:	00002617          	auipc	a2,0x2
    80001320:	a3860613          	addi	a2,a2,-1480 # 80002d54 <memcpy+0x186>
    80001324:	100006b7          	lui	a3,0x10000
    80001328:	0785                	addi	a5,a5,1
    8000132a:	00e68023          	sb	a4,0(a3) # 10000000 <_start-0x70000000>
    8000132e:	0007c703          	lbu	a4,0(a5)
    80001332:	fec79be3          	bne	a5,a2,80001328 <main+0xb2>
    80001336:	a001                	j	80001336 <main+0xc0>

0000000080001338 <prvAddCurrentTaskToDelayedList>:
    80001338:	7139                	addi	sp,sp,-64
    8000133a:	f04a                	sd	s2,32(sp)
    8000133c:	00006917          	auipc	s2,0x6
    80001340:	d1493903          	ld	s2,-748(s2) # 80007050 <xTickCount>
    80001344:	00006797          	auipc	a5,0x6
    80001348:	d2c7b783          	ld	a5,-724(a5) # 80007070 <pxDelayedTaskList>
    8000134c:	ec4e                	sd	s3,24(sp)
    8000134e:	f822                	sd	s0,48(sp)
    80001350:	89be                	mv	s3,a5
    80001352:	00006797          	auipc	a5,0x6
    80001356:	d167b783          	ld	a5,-746(a5) # 80007068 <pxOverflowDelayedTaskList>
    8000135a:	00006417          	auipc	s0,0x6
    8000135e:	d1e40413          	addi	s0,s0,-738 # 80007078 <pxCurrentTCB>
    80001362:	e852                	sd	s4,16(sp)
    80001364:	8a3e                	mv	s4,a5
    80001366:	601c                	ld	a5,0(s0)
    80001368:	f426                	sd	s1,40(sp)
    8000136a:	84aa                	mv	s1,a0
    8000136c:	00878513          	addi	a0,a5,8
    80001370:	e42e                	sd	a1,8(sp)
    80001372:	fc06                	sd	ra,56(sp)
    80001374:	795000ef          	jal	80002308 <uxListRemove>
    80001378:	65a2                	ld	a1,8(sp)
    8000137a:	e10d                	bnez	a0,8000139c <prvAddCurrentTaskToDelayedList+0x64>
    8000137c:	6014                	ld	a3,0(s0)
    8000137e:	4785                	li	a5,1
    80001380:	00006717          	auipc	a4,0x6
    80001384:	cc873703          	ld	a4,-824(a4) # 80007048 <uxTopReadyPriority>
    80001388:	6eb4                	ld	a3,88(a3)
    8000138a:	00d797b3          	sll	a5,a5,a3
    8000138e:	fff7c793          	not	a5,a5
    80001392:	8ff9                	and	a5,a5,a4
    80001394:	00006717          	auipc	a4,0x6
    80001398:	caf73a23          	sd	a5,-844(a4) # 80007048 <uxTopReadyPriority>
    8000139c:	00148793          	addi	a5,s1,1
    800013a0:	e3b9                	bnez	a5,800013e6 <prvAddCurrentTaskToDelayedList+0xae>
    800013a2:	c1b1                	beqz	a1,800013e6 <prvAddCurrentTaskToDelayedList+0xae>
    800013a4:	00002797          	auipc	a5,0x2
    800013a8:	a0c78793          	addi	a5,a5,-1524 # 80002db0 <xSuspendedTaskList>
    800013ac:	6018                	ld	a4,0(s0)
    800013ae:	6794                	ld	a3,8(a5)
    800013b0:	00043803          	ld	a6,0(s0)
    800013b4:	600c                	ld	a1,0(s0)
    800013b6:	eb14                	sd	a3,16(a4)
    800013b8:	6a88                	ld	a0,16(a3)
    800013ba:	6010                	ld	a2,0(s0)
    800013bc:	6398                	ld	a4,0(a5)
    800013be:	00a83c23          	sd	a0,24(a6)
    800013c2:	05a1                	addi	a1,a1,8
    800013c4:	00043803          	ld	a6,0(s0)
    800013c8:	e50c                	sd	a1,8(a0)
    800013ca:	0621                	addi	a2,a2,8
    800013cc:	ea90                	sd	a2,16(a3)
    800013ce:	0705                	addi	a4,a4,1
    800013d0:	02f83423          	sd	a5,40(a6)
    800013d4:	e398                	sd	a4,0(a5)
    800013d6:	70e2                	ld	ra,56(sp)
    800013d8:	7442                	ld	s0,48(sp)
    800013da:	74a2                	ld	s1,40(sp)
    800013dc:	7902                	ld	s2,32(sp)
    800013de:	69e2                	ld	s3,24(sp)
    800013e0:	6a42                	ld	s4,16(sp)
    800013e2:	6121                	addi	sp,sp,64
    800013e4:	8082                	ret
    800013e6:	601c                	ld	a5,0(s0)
    800013e8:	94ca                	add	s1,s1,s2
    800013ea:	600c                	ld	a1,0(s0)
    800013ec:	e784                	sd	s1,8(a5)
    800013ee:	0124fd63          	bgeu	s1,s2,80001408 <prvAddCurrentTaskToDelayedList+0xd0>
    800013f2:	7442                	ld	s0,48(sp)
    800013f4:	70e2                	ld	ra,56(sp)
    800013f6:	74a2                	ld	s1,40(sp)
    800013f8:	7902                	ld	s2,32(sp)
    800013fa:	69e2                	ld	s3,24(sp)
    800013fc:	8552                	mv	a0,s4
    800013fe:	6a42                	ld	s4,16(sp)
    80001400:	05a1                	addi	a1,a1,8
    80001402:	6121                	addi	sp,sp,64
    80001404:	6d70006f          	j	800022da <vListInsert>
    80001408:	854e                	mv	a0,s3
    8000140a:	05a1                	addi	a1,a1,8
    8000140c:	6cf000ef          	jal	800022da <vListInsert>
    80001410:	00006797          	auipc	a5,0x6
    80001414:	c087b783          	ld	a5,-1016(a5) # 80007018 <xNextTaskUnblockTime>
    80001418:	faf4ffe3          	bgeu	s1,a5,800013d6 <prvAddCurrentTaskToDelayedList+0x9e>
    8000141c:	70e2                	ld	ra,56(sp)
    8000141e:	7442                	ld	s0,48(sp)
    80001420:	00006797          	auipc	a5,0x6
    80001424:	be97bc23          	sd	s1,-1032(a5) # 80007018 <xNextTaskUnblockTime>
    80001428:	7902                	ld	s2,32(sp)
    8000142a:	74a2                	ld	s1,40(sp)
    8000142c:	69e2                	ld	s3,24(sp)
    8000142e:	6a42                	ld	s4,16(sp)
    80001430:	6121                	addi	sp,sp,64
    80001432:	8082                	ret

0000000080001434 <prvCheckTasksWaitingTermination>:
    80001434:	7179                	addi	sp,sp,-48
    80001436:	e84a                	sd	s2,16(sp)
    80001438:	00006917          	auipc	s2,0x6
    8000143c:	c2890913          	addi	s2,s2,-984 # 80007060 <uxDeletedTasksWaitingCleanUp>
    80001440:	00093783          	ld	a5,0(s2)
    80001444:	f406                	sd	ra,40(sp)
    80001446:	cbb5                	beqz	a5,800014ba <prvCheckTasksWaitingTermination+0x86>
    80001448:	f022                	sd	s0,32(sp)
    8000144a:	e44e                	sd	s3,8(sp)
    8000144c:	e052                	sd	s4,0(sp)
    8000144e:	ec26                	sd	s1,24(sp)
    80001450:	00002417          	auipc	s0,0x2
    80001454:	95840413          	addi	s0,s0,-1704 # 80002da8 <xCriticalNesting>
    80001458:	00002a17          	auipc	s4,0x2
    8000145c:	980a0a13          	addi	s4,s4,-1664 # 80002dd8 <xTasksWaitingTermination>
    80001460:	00006997          	auipc	s3,0x6
    80001464:	bf898993          	addi	s3,s3,-1032 # 80007058 <uxCurrentNumberOfTasks>
    80001468:	30047073          	csrci	mstatus,8
    8000146c:	018a3703          	ld	a4,24(s4)
    80001470:	601c                	ld	a5,0(s0)
    80001472:	6f04                	ld	s1,24(a4)
    80001474:	0785                	addi	a5,a5,1
    80001476:	e01c                	sd	a5,0(s0)
    80001478:	00848513          	addi	a0,s1,8
    8000147c:	68d000ef          	jal	80002308 <uxListRemove>
    80001480:	0009b703          	ld	a4,0(s3)
    80001484:	601c                	ld	a5,0(s0)
    80001486:	177d                	addi	a4,a4,-1
    80001488:	00e9b023          	sd	a4,0(s3)
    8000148c:	00093703          	ld	a4,0(s2)
    80001490:	17fd                	addi	a5,a5,-1
    80001492:	e01c                	sd	a5,0(s0)
    80001494:	177d                	addi	a4,a4,-1
    80001496:	00e93023          	sd	a4,0(s2)
    8000149a:	e399                	bnez	a5,800014a0 <prvCheckTasksWaitingTermination+0x6c>
    8000149c:	30046073          	csrsi	mstatus,8
    800014a0:	70a8                	ld	a0,96(s1)
    800014a2:	412010ef          	jal	800028b4 <vPortFree>
    800014a6:	8526                	mv	a0,s1
    800014a8:	40c010ef          	jal	800028b4 <vPortFree>
    800014ac:	00093783          	ld	a5,0(s2)
    800014b0:	ffc5                	bnez	a5,80001468 <prvCheckTasksWaitingTermination+0x34>
    800014b2:	7402                	ld	s0,32(sp)
    800014b4:	64e2                	ld	s1,24(sp)
    800014b6:	69a2                	ld	s3,8(sp)
    800014b8:	6a02                	ld	s4,0(sp)
    800014ba:	70a2                	ld	ra,40(sp)
    800014bc:	6942                	ld	s2,16(sp)
    800014be:	6145                	addi	sp,sp,48
    800014c0:	8082                	ret

00000000800014c2 <prvIdleTask>:
    800014c2:	1101                	addi	sp,sp,-32
    800014c4:	e822                	sd	s0,16(sp)
    800014c6:	e426                	sd	s1,8(sp)
    800014c8:	ec06                	sd	ra,24(sp)
    800014ca:	00002497          	auipc	s1,0x2
    800014ce:	9ae48493          	addi	s1,s1,-1618 # 80002e78 <pxReadyTasksLists>
    800014d2:	4405                	li	s0,1
    800014d4:	f61ff0ef          	jal	80001434 <prvCheckTasksWaitingTermination>
    800014d8:	609c                	ld	a5,0(s1)
    800014da:	fef47de3          	bgeu	s0,a5,800014d4 <prvIdleTask+0x12>
    800014de:	00000073          	ecall
    800014e2:	f53ff0ef          	jal	80001434 <prvCheckTasksWaitingTermination>
    800014e6:	609c                	ld	a5,0(s1)
    800014e8:	fef46be3          	bltu	s0,a5,800014de <prvIdleTask+0x1c>
    800014ec:	b7e5                	j	800014d4 <prvIdleTask+0x12>

00000000800014ee <xTaskIncrementTick.part.0>:
    800014ee:	00006897          	auipc	a7,0x6
    800014f2:	b628b883          	ld	a7,-1182(a7) # 80007050 <xTickCount>
    800014f6:	00006397          	auipc	t2,0x6
    800014fa:	b2238393          	addi	t2,t2,-1246 # 80007018 <xNextTaskUnblockTime>
    800014fe:	0885                	addi	a7,a7,1
    80001500:	00006797          	auipc	a5,0x6
    80001504:	b517b823          	sd	a7,-1200(a5) # 80007050 <xTickCount>
    80001508:	04089a63          	bnez	a7,8000155c <xTaskIncrementTick.part.0+0x6e>
    8000150c:	00006797          	auipc	a5,0x6
    80001510:	b6478793          	addi	a5,a5,-1180 # 80007070 <pxDelayedTaskList>
    80001514:	6398                	ld	a4,0(a5)
    80001516:	6318                	ld	a4,0(a4)
    80001518:	c701                	beqz	a4,80001520 <xTaskIncrementTick.part.0+0x32>
    8000151a:	30047073          	csrci	mstatus,8
    8000151e:	a001                	j	8000151e <xTaskIncrementTick.part.0+0x30>
    80001520:	6398                	ld	a4,0(a5)
    80001522:	00006697          	auipc	a3,0x6
    80001526:	b466b683          	ld	a3,-1210(a3) # 80007068 <pxOverflowDelayedTaskList>
    8000152a:	e394                	sd	a3,0(a5)
    8000152c:	00006697          	auipc	a3,0x6
    80001530:	b2e6be23          	sd	a4,-1220(a3) # 80007068 <pxOverflowDelayedTaskList>
    80001534:	00006717          	auipc	a4,0x6
    80001538:	af473703          	ld	a4,-1292(a4) # 80007028 <xNumOfOverflows>
    8000153c:	0705                	addi	a4,a4,1
    8000153e:	00006697          	auipc	a3,0x6
    80001542:	aee6b523          	sd	a4,-1302(a3) # 80007028 <xNumOfOverflows>
    80001546:	6398                	ld	a4,0(a5)
    80001548:	6318                	ld	a4,0(a4)
    8000154a:	14071763          	bnez	a4,80001698 <xTaskIncrementTick.part.0+0x1aa>
    8000154e:	00006397          	auipc	t2,0x6
    80001552:	aca38393          	addi	t2,t2,-1334 # 80007018 <xNextTaskUnblockTime>
    80001556:	57fd                	li	a5,-1
    80001558:	00f3b023          	sd	a5,0(t2)
    8000155c:	0003b783          	ld	a5,0(t2)
    80001560:	1141                	addi	sp,sp,-16
    80001562:	0cf8ed63          	bltu	a7,a5,8000163c <xTaskIncrementTick.part.0+0x14e>
    80001566:	00006517          	auipc	a0,0x6
    8000156a:	b0a50513          	addi	a0,a0,-1270 # 80007070 <pxDelayedTaskList>
    8000156e:	611c                	ld	a5,0(a0)
    80001570:	4e01                	li	t3,0
    80001572:	00002f17          	auipc	t5,0x2
    80001576:	906f0f13          	addi	t5,t5,-1786 # 80002e78 <pxReadyTasksLists>
    8000157a:	639c                	ld	a5,0(a5)
    8000157c:	00006f97          	auipc	t6,0x6
    80001580:	afcf8f93          	addi	t6,t6,-1284 # 80007078 <pxCurrentTCB>
    80001584:	00006e97          	auipc	t4,0x6
    80001588:	ac4e8e93          	addi	t4,t4,-1340 # 80007048 <uxTopReadyPriority>
    8000158c:	4285                	li	t0,1
    8000158e:	cfed                	beqz	a5,80001688 <xTaskIncrementTick.part.0+0x19a>
    80001590:	e422                	sd	s0,8(sp)
    80001592:	a8ad                	j	8000160c <xTaskIncrementTick.part.0+0x11e>
    80001594:	628c                	ld	a1,0(a3)
    80001596:	6bb8                	ld	a4,80(a5)
    80001598:	15fd                	addi	a1,a1,-1
    8000159a:	e28c                	sd	a1,0(a3)
    8000159c:	cf11                	beqz	a4,800015b8 <xTaskIncrementTick.part.0+0xca>
    8000159e:	7f8c                	ld	a1,56(a5)
    800015a0:	63b4                	ld	a3,64(a5)
    800015a2:	e994                	sd	a3,16(a1)
    800015a4:	7f8c                	ld	a1,56(a5)
    800015a6:	e68c                	sd	a1,8(a3)
    800015a8:	6714                	ld	a3,8(a4)
    800015aa:	0c668b63          	beq	a3,t1,80001680 <xTaskIncrementTick.part.0+0x192>
    800015ae:	6314                	ld	a3,0(a4)
    800015b0:	0407b823          	sd	zero,80(a5)
    800015b4:	16fd                	addi	a3,a3,-1
    800015b6:	e314                	sd	a3,0(a4)
    800015b8:	6fb4                	ld	a3,88(a5)
    800015ba:	000eb403          	ld	s0,0(t4)
    800015be:	00269713          	slli	a4,a3,0x2
    800015c2:	9736                	add	a4,a4,a3
    800015c4:	070e                	slli	a4,a4,0x3
    800015c6:	977a                	add	a4,a4,t5
    800015c8:	00873803          	ld	a6,8(a4)
    800015cc:	630c                	ld	a1,0(a4)
    800015ce:	00d296b3          	sll	a3,t0,a3
    800015d2:	0107b823          	sd	a6,16(a5)
    800015d6:	01083303          	ld	t1,16(a6)
    800015da:	8ec1                	or	a3,a3,s0
    800015dc:	00deb023          	sd	a3,0(t4)
    800015e0:	0067bc23          	sd	t1,24(a5)
    800015e4:	00c33423          	sd	a2,8(t1)
    800015e8:	00c83823          	sd	a2,16(a6)
    800015ec:	000fb803          	ld	a6,0(t6)
    800015f0:	f798                	sd	a4,40(a5)
    800015f2:	00158693          	addi	a3,a1,1
    800015f6:	6110                	ld	a2,0(a0)
    800015f8:	e314                	sd	a3,0(a4)
    800015fa:	6fbc                	ld	a5,88(a5)
    800015fc:	05883683          	ld	a3,88(a6)
    80001600:	6218                	ld	a4,0(a2)
    80001602:	00f6b7b3          	sltu	a5,a3,a5
    80001606:	00fe6e33          	or	t3,t3,a5
    8000160a:	cf35                	beqz	a4,80001686 <xTaskIncrementTick.part.0+0x198>
    8000160c:	611c                	ld	a5,0(a0)
    8000160e:	6f9c                	ld	a5,24(a5)
    80001610:	6f9c                	ld	a5,24(a5)
    80001612:	6798                	ld	a4,8(a5)
    80001614:	00878613          	addi	a2,a5,8
    80001618:	03078313          	addi	t1,a5,48
    8000161c:	06e8ea63          	bltu	a7,a4,80001690 <xTaskIncrementTick.part.0+0x1a2>
    80001620:	6b8c                	ld	a1,16(a5)
    80001622:	6f98                	ld	a4,24(a5)
    80001624:	7794                	ld	a3,40(a5)
    80001626:	e998                	sd	a4,16(a1)
    80001628:	0107b803          	ld	a6,16(a5)
    8000162c:	668c                	ld	a1,8(a3)
    8000162e:	01073423          	sd	a6,8(a4)
    80001632:	f6c591e3          	bne	a1,a2,80001594 <xTaskIncrementTick.part.0+0xa6>
    80001636:	6f98                	ld	a4,24(a5)
    80001638:	e698                	sd	a4,8(a3)
    8000163a:	bfa9                	j	80001594 <xTaskIncrementTick.part.0+0xa6>
    8000163c:	4e01                	li	t3,0
    8000163e:	00002f17          	auipc	t5,0x2
    80001642:	83af0f13          	addi	t5,t5,-1990 # 80002e78 <pxReadyTasksLists>
    80001646:	00006f97          	auipc	t6,0x6
    8000164a:	a32f8f93          	addi	t6,t6,-1486 # 80007078 <pxCurrentTCB>
    8000164e:	000fb783          	ld	a5,0(t6)
    80001652:	00006717          	auipc	a4,0x6
    80001656:	9de73703          	ld	a4,-1570(a4) # 80007030 <xYieldPendings>
    8000165a:	6fb4                	ld	a3,88(a5)
    8000165c:	00e03733          	snez	a4,a4
    80001660:	00269793          	slli	a5,a3,0x2
    80001664:	97b6                	add	a5,a5,a3
    80001666:	078e                	slli	a5,a5,0x3
    80001668:	9f3e                	add	t5,t5,a5
    8000166a:	000f3503          	ld	a0,0(t5)
    8000166e:	0141                	addi	sp,sp,16
    80001670:	00253513          	sltiu	a0,a0,2
    80001674:	00153513          	seqz	a0,a0
    80001678:	8d59                	or	a0,a0,a4
    8000167a:	01c56533          	or	a0,a0,t3
    8000167e:	8082                	ret
    80001680:	63b4                	ld	a3,64(a5)
    80001682:	e714                	sd	a3,8(a4)
    80001684:	b72d                	j	800015ae <xTaskIncrementTick.part.0+0xc0>
    80001686:	6422                	ld	s0,8(sp)
    80001688:	57fd                	li	a5,-1
    8000168a:	00f3b023          	sd	a5,0(t2)
    8000168e:	b7c1                	j	8000164e <xTaskIncrementTick.part.0+0x160>
    80001690:	6422                	ld	s0,8(sp)
    80001692:	00e3b023          	sd	a4,0(t2)
    80001696:	bf65                	j	8000164e <xTaskIncrementTick.part.0+0x160>
    80001698:	639c                	ld	a5,0(a5)
    8000169a:	00006397          	auipc	t2,0x6
    8000169e:	97e38393          	addi	t2,t2,-1666 # 80007018 <xNextTaskUnblockTime>
    800016a2:	6f9c                	ld	a5,24(a5)
    800016a4:	639c                	ld	a5,0(a5)
    800016a6:	00f3b023          	sd	a5,0(t2)
    800016aa:	bd4d                	j	8000155c <xTaskIncrementTick.part.0+0x6e>

00000000800016ac <xTaskResumeAll.part.0>:
    800016ac:	00006897          	auipc	a7,0x6
    800016b0:	95c88893          	addi	a7,a7,-1700 # 80007008 <uxSchedulerSuspended>
    800016b4:	0008b783          	ld	a5,0(a7)
    800016b8:	17fd                	addi	a5,a5,-1
    800016ba:	00f8b023          	sd	a5,0(a7)
    800016be:	0008b783          	ld	a5,0(a7)
    800016c2:	12079663          	bnez	a5,800017ee <xTaskResumeAll.part.0+0x142>
    800016c6:	00006797          	auipc	a5,0x6
    800016ca:	9927b783          	ld	a5,-1646(a5) # 80007058 <uxCurrentNumberOfTasks>
    800016ce:	12078063          	beqz	a5,800017ee <xTaskResumeAll.part.0+0x142>
    800016d2:	00001317          	auipc	t1,0x1
    800016d6:	72e30313          	addi	t1,t1,1838 # 80002e00 <xPendingReadyList>
    800016da:	00033783          	ld	a5,0(t1)
    800016de:	00006f97          	auipc	t6,0x6
    800016e2:	952f8f93          	addi	t6,t6,-1710 # 80007030 <xYieldPendings>
    800016e6:	c7f9                	beqz	a5,800017b4 <xTaskResumeAll.part.0+0x108>
    800016e8:	00006e17          	auipc	t3,0x6
    800016ec:	960e0e13          	addi	t3,t3,-1696 # 80007048 <uxTopReadyPriority>
    800016f0:	00001297          	auipc	t0,0x1
    800016f4:	78828293          	addi	t0,t0,1928 # 80002e78 <pxReadyTasksLists>
    800016f8:	00006f17          	auipc	t5,0x6
    800016fc:	980f0f13          	addi	t5,t5,-1664 # 80007078 <pxCurrentTCB>
    80001700:	00006f97          	auipc	t6,0x6
    80001704:	930f8f93          	addi	t6,t6,-1744 # 80007030 <xYieldPendings>
    80001708:	4e85                	li	t4,1
    8000170a:	01833783          	ld	a5,24(t1)
    8000170e:	6f9c                	ld	a5,24(a5)
    80001710:	7f8c                	ld	a1,56(a5)
    80001712:	63b4                	ld	a3,64(a5)
    80001714:	6bb8                	ld	a4,80(a5)
    80001716:	03078613          	addi	a2,a5,48
    8000171a:	e994                	sd	a3,16(a1)
    8000171c:	7f88                	ld	a0,56(a5)
    8000171e:	670c                	ld	a1,8(a4)
    80001720:	e688                	sd	a0,8(a3)
    80001722:	0ec58763          	beq	a1,a2,80001810 <xTaskResumeAll.part.0+0x164>
    80001726:	6314                	ld	a3,0(a4)
    80001728:	0407b823          	sd	zero,80(a5)
    8000172c:	16fd                	addi	a3,a3,-1
    8000172e:	e314                	sd	a3,0(a4)
    80001730:	6b8c                	ld	a1,16(a5)
    80001732:	6f94                	ld	a3,24(a5)
    80001734:	7798                	ld	a4,40(a5)
    80001736:	000e3603          	ld	a2,0(t3)
    8000173a:	e994                	sd	a3,16(a1)
    8000173c:	0107b803          	ld	a6,16(a5)
    80001740:	670c                	ld	a1,8(a4)
    80001742:	00878513          	addi	a0,a5,8
    80001746:	0106b423          	sd	a6,8(a3)
    8000174a:	0ca58063          	beq	a1,a0,8000180a <xTaskResumeAll.part.0+0x15e>
    8000174e:	6314                	ld	a3,0(a4)
    80001750:	16fd                	addi	a3,a3,-1
    80001752:	e314                	sd	a3,0(a4)
    80001754:	6fb4                	ld	a3,88(a5)
    80001756:	00269713          	slli	a4,a3,0x2
    8000175a:	9736                	add	a4,a4,a3
    8000175c:	070e                	slli	a4,a4,0x3
    8000175e:	9716                	add	a4,a4,t0
    80001760:	670c                	ld	a1,8(a4)
    80001762:	00de96b3          	sll	a3,t4,a3
    80001766:	8ed1                	or	a3,a3,a2
    80001768:	eb8c                	sd	a1,16(a5)
    8000176a:	0105b803          	ld	a6,16(a1)
    8000176e:	6310                	ld	a2,0(a4)
    80001770:	00de3023          	sd	a3,0(t3)
    80001774:	0107bc23          	sd	a6,24(a5)
    80001778:	00a83423          	sd	a0,8(a6)
    8000177c:	e988                	sd	a0,16(a1)
    8000177e:	000f3583          	ld	a1,0(t5)
    80001782:	f798                	sd	a4,40(a5)
    80001784:	00160693          	addi	a3,a2,1
    80001788:	e314                	sd	a3,0(a4)
    8000178a:	6fb4                	ld	a3,88(a5)
    8000178c:	6db8                	ld	a4,88(a1)
    8000178e:	00033783          	ld	a5,0(t1)
    80001792:	00d77463          	bgeu	a4,a3,8000179a <xTaskResumeAll.part.0+0xee>
    80001796:	01dfb023          	sd	t4,0(t6)
    8000179a:	fba5                	bnez	a5,8000170a <xTaskResumeAll.part.0+0x5e>
    8000179c:	00006797          	auipc	a5,0x6
    800017a0:	8d478793          	addi	a5,a5,-1836 # 80007070 <pxDelayedTaskList>
    800017a4:	6398                	ld	a4,0(a5)
    800017a6:	6318                	ld	a4,0(a4)
    800017a8:	ef69                	bnez	a4,80001882 <xTaskResumeAll.part.0+0x1d6>
    800017aa:	57fd                	li	a5,-1
    800017ac:	00006717          	auipc	a4,0x6
    800017b0:	86f73623          	sd	a5,-1940(a4) # 80007018 <xNextTaskUnblockTime>
    800017b4:	00006697          	auipc	a3,0x6
    800017b8:	88468693          	addi	a3,a3,-1916 # 80007038 <xPendedTicks>
    800017bc:	629c                	ld	a5,0(a3)
    800017be:	cf89                	beqz	a5,800017d8 <xTaskResumeAll.part.0+0x12c>
    800017c0:	0008b703          	ld	a4,0(a7)
    800017c4:	cb31                	beqz	a4,80001818 <xTaskResumeAll.part.0+0x16c>
    800017c6:	6298                	ld	a4,0(a3)
    800017c8:	17fd                	addi	a5,a5,-1
    800017ca:	0705                	addi	a4,a4,1
    800017cc:	e298                	sd	a4,0(a3)
    800017ce:	fbed                	bnez	a5,800017c0 <xTaskResumeAll.part.0+0x114>
    800017d0:	00006797          	auipc	a5,0x6
    800017d4:	8607b423          	sd	zero,-1944(a5) # 80007038 <xPendedTicks>
    800017d8:	000fb783          	ld	a5,0(t6)
    800017dc:	cb89                	beqz	a5,800017ee <xTaskResumeAll.part.0+0x142>
    800017de:	00006797          	auipc	a5,0x6
    800017e2:	89a7b783          	ld	a5,-1894(a5) # 80007078 <pxCurrentTCB>
    800017e6:	00000073          	ecall
    800017ea:	4505                	li	a0,1
    800017ec:	a011                	j	800017f0 <xTaskResumeAll.part.0+0x144>
    800017ee:	4501                	li	a0,0
    800017f0:	00001797          	auipc	a5,0x1
    800017f4:	5b87b783          	ld	a5,1464(a5) # 80002da8 <xCriticalNesting>
    800017f8:	17fd                	addi	a5,a5,-1
    800017fa:	00001717          	auipc	a4,0x1
    800017fe:	5af73723          	sd	a5,1454(a4) # 80002da8 <xCriticalNesting>
    80001802:	eb91                	bnez	a5,80001816 <xTaskResumeAll.part.0+0x16a>
    80001804:	30046073          	csrsi	mstatus,8
    80001808:	8082                	ret
    8000180a:	6f94                	ld	a3,24(a5)
    8000180c:	e714                	sd	a3,8(a4)
    8000180e:	b781                	j	8000174e <xTaskResumeAll.part.0+0xa2>
    80001810:	63b4                	ld	a3,64(a5)
    80001812:	e714                	sd	a3,8(a4)
    80001814:	bf09                	j	80001726 <xTaskResumeAll.part.0+0x7a>
    80001816:	8082                	ret
    80001818:	1101                	addi	sp,sp,-32
    8000181a:	ec06                	sd	ra,24(sp)
    8000181c:	e47e                	sd	t6,8(sp)
    8000181e:	e03e                	sd	a5,0(sp)
    80001820:	ccfff0ef          	jal	800014ee <xTaskIncrementTick.part.0>
    80001824:	6782                	ld	a5,0(sp)
    80001826:	6fa2                	ld	t6,8(sp)
    80001828:	00005897          	auipc	a7,0x5
    8000182c:	7e088893          	addi	a7,a7,2016 # 80007008 <uxSchedulerSuspended>
    80001830:	00006697          	auipc	a3,0x6
    80001834:	80868693          	addi	a3,a3,-2040 # 80007038 <xPendedTicks>
    80001838:	c501                	beqz	a0,80001840 <xTaskResumeAll.part.0+0x194>
    8000183a:	4705                	li	a4,1
    8000183c:	00efb023          	sd	a4,0(t6)
    80001840:	17fd                	addi	a5,a5,-1
    80001842:	cb89                	beqz	a5,80001854 <xTaskResumeAll.part.0+0x1a8>
    80001844:	0008b703          	ld	a4,0(a7)
    80001848:	db71                	beqz	a4,8000181c <xTaskResumeAll.part.0+0x170>
    8000184a:	6298                	ld	a4,0(a3)
    8000184c:	17fd                	addi	a5,a5,-1
    8000184e:	0705                	addi	a4,a4,1
    80001850:	e298                	sd	a4,0(a3)
    80001852:	fbed                	bnez	a5,80001844 <xTaskResumeAll.part.0+0x198>
    80001854:	00005797          	auipc	a5,0x5
    80001858:	7e07b223          	sd	zero,2020(a5) # 80007038 <xPendedTicks>
    8000185c:	000fb783          	ld	a5,0(t6)
    80001860:	4501                	li	a0,0
    80001862:	eb85                	bnez	a5,80001892 <xTaskResumeAll.part.0+0x1e6>
    80001864:	00001797          	auipc	a5,0x1
    80001868:	5447b783          	ld	a5,1348(a5) # 80002da8 <xCriticalNesting>
    8000186c:	17fd                	addi	a5,a5,-1
    8000186e:	00001717          	auipc	a4,0x1
    80001872:	52f73d23          	sd	a5,1338(a4) # 80002da8 <xCriticalNesting>
    80001876:	e399                	bnez	a5,8000187c <xTaskResumeAll.part.0+0x1d0>
    80001878:	30046073          	csrsi	mstatus,8
    8000187c:	60e2                	ld	ra,24(sp)
    8000187e:	6105                	addi	sp,sp,32
    80001880:	8082                	ret
    80001882:	639c                	ld	a5,0(a5)
    80001884:	6f9c                	ld	a5,24(a5)
    80001886:	639c                	ld	a5,0(a5)
    80001888:	00005717          	auipc	a4,0x5
    8000188c:	78f73823          	sd	a5,1936(a4) # 80007018 <xNextTaskUnblockTime>
    80001890:	b715                	j	800017b4 <xTaskResumeAll.part.0+0x108>
    80001892:	00005797          	auipc	a5,0x5
    80001896:	7e67b783          	ld	a5,2022(a5) # 80007078 <pxCurrentTCB>
    8000189a:	00000073          	ecall
    8000189e:	4505                	li	a0,1
    800018a0:	b7d1                	j	80001864 <xTaskResumeAll.part.0+0x1b8>

00000000800018a2 <xTaskCreate>:
    800018a2:	715d                	addi	sp,sp,-80
    800018a4:	e85a                	sd	s6,16(sp)
    800018a6:	8b2a                	mv	s6,a0
    800018a8:	00361513          	slli	a0,a2,0x3
    800018ac:	e0a2                	sd	s0,64(sp)
    800018ae:	f44e                	sd	s3,40(sp)
    800018b0:	f052                	sd	s4,32(sp)
    800018b2:	e45e                	sd	s7,8(sp)
    800018b4:	e062                	sd	s8,0(sp)
    800018b6:	e486                	sd	ra,72(sp)
    800018b8:	89b2                	mv	s3,a2
    800018ba:	842e                	mv	s0,a1
    800018bc:	8bb6                	mv	s7,a3
    800018be:	8a3a                	mv	s4,a4
    800018c0:	8c3e                	mv	s8,a5
    800018c2:	617000ef          	jal	800026d8 <pvPortMalloc>
    800018c6:	1a050763          	beqz	a0,80001a74 <xTaskCreate+0x1d2>
    800018ca:	f84a                	sd	s2,48(sp)
    800018cc:	892a                	mv	s2,a0
    800018ce:	09000513          	li	a0,144
    800018d2:	fc26                	sd	s1,56(sp)
    800018d4:	605000ef          	jal	800026d8 <pvPortMalloc>
    800018d8:	84aa                	mv	s1,a0
    800018da:	18050863          	beqz	a0,80001a6a <xTaskCreate+0x1c8>
    800018de:	09000613          	li	a2,144
    800018e2:	4581                	li	a1,0
    800018e4:	ec56                	sd	s5,24(sp)
    800018e6:	23e010ef          	jal	80002b24 <memset>
    800018ea:	00399613          	slli	a2,s3,0x3
    800018ee:	0724b023          	sd	s2,96(s1)
    800018f2:	854a                	mv	a0,s2
    800018f4:	0a500593          	li	a1,165
    800018f8:	22c010ef          	jal	80002b24 <memset>
    800018fc:	70b0                	ld	a2,96(s1)
    800018fe:	c00d                	beqz	s0,80001920 <xTaskCreate+0x7e>
    80001900:	85a2                	mv	a1,s0
    80001902:	01040693          	addi	a3,s0,16
    80001906:	06848793          	addi	a5,s1,104
    8000190a:	0005c703          	lbu	a4,0(a1)
    8000190e:	0585                	addi	a1,a1,1
    80001910:	00e78023          	sb	a4,0(a5)
    80001914:	c701                	beqz	a4,8000191c <xTaskCreate+0x7a>
    80001916:	0785                	addi	a5,a5,1
    80001918:	fed599e3          	bne	a1,a3,8000190a <xTaskCreate+0x68>
    8000191c:	06048ba3          	sb	zero,119(s1)
    80001920:	4799                	li	a5,6
    80001922:	0147f563          	bgeu	a5,s4,8000192c <xTaskCreate+0x8a>
    80001926:	30047073          	csrci	mstatus,8
    8000192a:	a001                	j	8000192a <xTaskCreate+0x88>
    8000192c:	00399793          	slli	a5,s3,0x3
    80001930:	17e1                	addi	a5,a5,-8
    80001932:	00848a93          	addi	s5,s1,8
    80001936:	963e                	add	a2,a2,a5
    80001938:	8556                	mv	a0,s5
    8000193a:	0544bc23          	sd	s4,88(s1)
    8000193e:	0744bc23          	sd	s4,120(s1)
    80001942:	ff067413          	andi	s0,a2,-16
    80001946:	18f000ef          	jal	800022d4 <vListInitialiseItem>
    8000194a:	03048513          	addi	a0,s1,48
    8000194e:	187000ef          	jal	800022d4 <vListInitialiseItem>
    80001952:	479d                	li	a5,7
    80001954:	414787b3          	sub	a5,a5,s4
    80001958:	f89c                	sd	a5,48(s1)
    8000195a:	f084                	sd	s1,32(s1)
    8000195c:	e4a4                	sd	s1,72(s1)
    8000195e:	865e                	mv	a2,s7
    80001960:	85da                	mv	a1,s6
    80001962:	8522                	mv	a0,s0
    80001964:	0fc010ef          	jal	80002a60 <pxPortInitialiseStack>
    80001968:	40a407b3          	sub	a5,s0,a0
    8000196c:	878d                	srai	a5,a5,0x3
    8000196e:	e088                	sd	a0,0(s1)
    80001970:	0f37fa63          	bgeu	a5,s3,80001a64 <xTaskCreate+0x1c2>
    80001974:	000c0463          	beqz	s8,8000197c <xTaskCreate+0xda>
    80001978:	009c3023          	sd	s1,0(s8)
    8000197c:	30047073          	csrci	mstatus,8
    80001980:	00005717          	auipc	a4,0x5
    80001984:	6d870713          	addi	a4,a4,1752 # 80007058 <uxCurrentNumberOfTasks>
    80001988:	631c                	ld	a5,0(a4)
    8000198a:	00001917          	auipc	s2,0x1
    8000198e:	41e90913          	addi	s2,s2,1054 # 80002da8 <xCriticalNesting>
    80001992:	00093683          	ld	a3,0(s2)
    80001996:	0785                	addi	a5,a5,1
    80001998:	e31c                	sd	a5,0(a4)
    8000199a:	00005997          	auipc	s3,0x5
    8000199e:	6de98993          	addi	s3,s3,1758 # 80007078 <pxCurrentTCB>
    800019a2:	0009b783          	ld	a5,0(s3)
    800019a6:	00168613          	addi	a2,a3,1
    800019aa:	00c93023          	sd	a2,0(s2)
    800019ae:	c7e9                	beqz	a5,80001a78 <xTaskCreate+0x1d6>
    800019b0:	00005317          	auipc	t1,0x5
    800019b4:	69030313          	addi	t1,t1,1680 # 80007040 <xSchedulerRunning>
    800019b8:	00033783          	ld	a5,0(t1)
    800019bc:	6cb0                	ld	a2,88(s1)
    800019be:	00001417          	auipc	s0,0x1
    800019c2:	4ba40413          	addi	s0,s0,1210 # 80002e78 <pxReadyTasksLists>
    800019c6:	e791                	bnez	a5,800019d2 <xTaskCreate+0x130>
    800019c8:	0009b783          	ld	a5,0(s3)
    800019cc:	6fbc                	ld	a5,88(a5)
    800019ce:	0cf67563          	bgeu	a2,a5,80001a98 <xTaskCreate+0x1f6>
    800019d2:	00261793          	slli	a5,a2,0x2
    800019d6:	97b2                	add	a5,a5,a2
    800019d8:	078e                	slli	a5,a5,0x3
    800019da:	97a2                	add	a5,a5,s0
    800019dc:	0087b803          	ld	a6,8(a5)
    800019e0:	6388                	ld	a0,0(a5)
    800019e2:	00005e17          	auipc	t3,0x5
    800019e6:	666e3e03          	ld	t3,1638(t3) # 80007048 <uxTopReadyPriority>
    800019ea:	0104b823          	sd	a6,16(s1)
    800019ee:	01083883          	ld	a7,16(a6)
    800019f2:	00005597          	auipc	a1,0x5
    800019f6:	62e5b583          	ld	a1,1582(a1) # 80007020 <uxTaskNumber>
    800019fa:	4705                	li	a4,1
    800019fc:	0114bc23          	sd	a7,24(s1)
    80001a00:	0158b423          	sd	s5,8(a7)
    80001a04:	01583823          	sd	s5,16(a6)
    80001a08:	00c71733          	sll	a4,a4,a2
    80001a0c:	f49c                	sd	a5,40(s1)
    80001a0e:	0505                	addi	a0,a0,1
    80001a10:	01c76733          	or	a4,a4,t3
    80001a14:	00158613          	addi	a2,a1,1
    80001a18:	e388                	sd	a0,0(a5)
    80001a1a:	00d93023          	sd	a3,0(s2)
    80001a1e:	00005797          	auipc	a5,0x5
    80001a22:	62e7b523          	sd	a4,1578(a5) # 80007048 <uxTopReadyPriority>
    80001a26:	00005797          	auipc	a5,0x5
    80001a2a:	5ec7bd23          	sd	a2,1530(a5) # 80007020 <uxTaskNumber>
    80001a2e:	e299                	bnez	a3,80001a34 <xTaskCreate+0x192>
    80001a30:	30046073          	csrsi	mstatus,8
    80001a34:	00033783          	ld	a5,0(t1)
    80001a38:	cb89                	beqz	a5,80001a4a <xTaskCreate+0x1a8>
    80001a3a:	0009b703          	ld	a4,0(s3)
    80001a3e:	6cbc                	ld	a5,88(s1)
    80001a40:	6f38                	ld	a4,88(a4)
    80001a42:	00f77463          	bgeu	a4,a5,80001a4a <xTaskCreate+0x1a8>
    80001a46:	00000073          	ecall
    80001a4a:	74e2                	ld	s1,56(sp)
    80001a4c:	7942                	ld	s2,48(sp)
    80001a4e:	6ae2                	ld	s5,24(sp)
    80001a50:	4505                	li	a0,1
    80001a52:	60a6                	ld	ra,72(sp)
    80001a54:	6406                	ld	s0,64(sp)
    80001a56:	79a2                	ld	s3,40(sp)
    80001a58:	7a02                	ld	s4,32(sp)
    80001a5a:	6b42                	ld	s6,16(sp)
    80001a5c:	6ba2                	ld	s7,8(sp)
    80001a5e:	6c02                	ld	s8,0(sp)
    80001a60:	6161                	addi	sp,sp,80
    80001a62:	8082                	ret
    80001a64:	30047073          	csrci	mstatus,8
    80001a68:	a001                	j	80001a68 <xTaskCreate+0x1c6>
    80001a6a:	854a                	mv	a0,s2
    80001a6c:	649000ef          	jal	800028b4 <vPortFree>
    80001a70:	74e2                	ld	s1,56(sp)
    80001a72:	7942                	ld	s2,48(sp)
    80001a74:	557d                	li	a0,-1
    80001a76:	bff1                	j	80001a52 <xTaskCreate+0x1b0>
    80001a78:	0099b023          	sd	s1,0(s3)
    80001a7c:	6318                	ld	a4,0(a4)
    80001a7e:	4785                	li	a5,1
    80001a80:	00f70f63          	beq	a4,a5,80001a9e <xTaskCreate+0x1fc>
    80001a84:	6cb0                	ld	a2,88(s1)
    80001a86:	00001417          	auipc	s0,0x1
    80001a8a:	3f240413          	addi	s0,s0,1010 # 80002e78 <pxReadyTasksLists>
    80001a8e:	00005317          	auipc	t1,0x5
    80001a92:	5b230313          	addi	t1,t1,1458 # 80007040 <xSchedulerRunning>
    80001a96:	bf35                	j	800019d2 <xTaskCreate+0x130>
    80001a98:	0099b023          	sd	s1,0(s3)
    80001a9c:	bf1d                	j	800019d2 <xTaskCreate+0x130>
    80001a9e:	00001417          	auipc	s0,0x1
    80001aa2:	3da40413          	addi	s0,s0,986 # 80002e78 <pxReadyTasksLists>
    80001aa6:	8a22                	mv	s4,s0
    80001aa8:	8552                	mv	a0,s4
    80001aaa:	017000ef          	jal	800022c0 <vListInitialise>
    80001aae:	028a0a13          	addi	s4,s4,40
    80001ab2:	00001797          	auipc	a5,0x1
    80001ab6:	4de78793          	addi	a5,a5,1246 # 80002f90 <xActiveTimerList2>
    80001aba:	ff4797e3          	bne	a5,s4,80001aa8 <xTaskCreate+0x206>
    80001abe:	00001517          	auipc	a0,0x1
    80001ac2:	39250513          	addi	a0,a0,914 # 80002e50 <xDelayedTaskList1>
    80001ac6:	7fa000ef          	jal	800022c0 <vListInitialise>
    80001aca:	00001517          	auipc	a0,0x1
    80001ace:	35e50513          	addi	a0,a0,862 # 80002e28 <xDelayedTaskList2>
    80001ad2:	7ee000ef          	jal	800022c0 <vListInitialise>
    80001ad6:	00001517          	auipc	a0,0x1
    80001ada:	32a50513          	addi	a0,a0,810 # 80002e00 <xPendingReadyList>
    80001ade:	7e2000ef          	jal	800022c0 <vListInitialise>
    80001ae2:	00001517          	auipc	a0,0x1
    80001ae6:	2f650513          	addi	a0,a0,758 # 80002dd8 <xTasksWaitingTermination>
    80001aea:	7d6000ef          	jal	800022c0 <vListInitialise>
    80001aee:	00001517          	auipc	a0,0x1
    80001af2:	2c250513          	addi	a0,a0,706 # 80002db0 <xSuspendedTaskList>
    80001af6:	7ca000ef          	jal	800022c0 <vListInitialise>
    80001afa:	00093683          	ld	a3,0(s2)
    80001afe:	00001797          	auipc	a5,0x1
    80001b02:	35278793          	addi	a5,a5,850 # 80002e50 <xDelayedTaskList1>
    80001b06:	00005717          	auipc	a4,0x5
    80001b0a:	56f73523          	sd	a5,1386(a4) # 80007070 <pxDelayedTaskList>
    80001b0e:	00001797          	auipc	a5,0x1
    80001b12:	31a78793          	addi	a5,a5,794 # 80002e28 <xDelayedTaskList2>
    80001b16:	6cb0                	ld	a2,88(s1)
    80001b18:	16fd                	addi	a3,a3,-1
    80001b1a:	00005717          	auipc	a4,0x5
    80001b1e:	54f73723          	sd	a5,1358(a4) # 80007068 <pxOverflowDelayedTaskList>
    80001b22:	00005317          	auipc	t1,0x5
    80001b26:	51e30313          	addi	t1,t1,1310 # 80007040 <xSchedulerRunning>
    80001b2a:	b565                	j	800019d2 <xTaskCreate+0x130>

0000000080001b2c <xTaskDelayUntil>:
    80001b2c:	c51d                	beqz	a0,80001b5a <xTaskDelayUntil+0x2e>
    80001b2e:	c19d                	beqz	a1,80001b54 <xTaskDelayUntil+0x28>
    80001b30:	00005797          	auipc	a5,0x5
    80001b34:	4d878793          	addi	a5,a5,1240 # 80007008 <uxSchedulerSuspended>
    80001b38:	6398                	ld	a4,0(a5)
    80001b3a:	0705                	addi	a4,a4,1
    80001b3c:	e398                	sd	a4,0(a5)
    80001b3e:	00005617          	auipc	a2,0x5
    80001b42:	51263603          	ld	a2,1298(a2) # 80007050 <xTickCount>
    80001b46:	6398                	ld	a4,0(a5)
    80001b48:	4685                	li	a3,1
    80001b4a:	00d70b63          	beq	a4,a3,80001b60 <xTaskDelayUntil+0x34>
    80001b4e:	30047073          	csrci	mstatus,8
    80001b52:	a001                	j	80001b52 <xTaskDelayUntil+0x26>
    80001b54:	30047073          	csrci	mstatus,8
    80001b58:	a001                	j	80001b58 <xTaskDelayUntil+0x2c>
    80001b5a:	30047073          	csrci	mstatus,8
    80001b5e:	a001                	j	80001b5e <xTaskDelayUntil+0x32>
    80001b60:	6114                	ld	a3,0(a0)
    80001b62:	1101                	addi	sp,sp,-32
    80001b64:	ec06                	sd	ra,24(sp)
    80001b66:	95b6                	add	a1,a1,a3
    80001b68:	4801                	li	a6,0
    80001b6a:	06d5e663          	bltu	a1,a3,80001bd6 <xTaskDelayUntil+0xaa>
    80001b6e:	04d67263          	bgeu	a2,a3,80001bb2 <xTaskDelayUntil+0x86>
    80001b72:	04080463          	beqz	a6,80001bba <xTaskDelayUntil+0x8e>
    80001b76:	04b67263          	bgeu	a2,a1,80001bba <xTaskDelayUntil+0x8e>
    80001b7a:	e10c                	sd	a1,0(a0)
    80001b7c:	40c58533          	sub	a0,a1,a2
    80001b80:	4581                	li	a1,0
    80001b82:	fb6ff0ef          	jal	80001338 <prvAddCurrentTaskToDelayedList>
    80001b86:	4605                	li	a2,1
    80001b88:	00005797          	auipc	a5,0x5
    80001b8c:	48078793          	addi	a5,a5,1152 # 80007008 <uxSchedulerSuspended>
    80001b90:	30047073          	csrci	mstatus,8
    80001b94:	00001717          	auipc	a4,0x1
    80001b98:	21473703          	ld	a4,532(a4) # 80002da8 <xCriticalNesting>
    80001b9c:	6394                	ld	a3,0(a5)
    80001b9e:	00170793          	addi	a5,a4,1
    80001ba2:	00001717          	auipc	a4,0x1
    80001ba6:	20f73323          	sd	a5,518(a4) # 80002da8 <xCriticalNesting>
    80001baa:	ea99                	bnez	a3,80001bc0 <xTaskDelayUntil+0x94>
    80001bac:	30047073          	csrci	mstatus,8
    80001bb0:	a001                	j	80001bb0 <xTaskDelayUntil+0x84>
    80001bb2:	fcb664e3          	bltu	a2,a1,80001b7a <xTaskDelayUntil+0x4e>
    80001bb6:	fc0812e3          	bnez	a6,80001b7a <xTaskDelayUntil+0x4e>
    80001bba:	e10c                	sd	a1,0(a0)
    80001bbc:	4601                	li	a2,0
    80001bbe:	bfc9                	j	80001b90 <xTaskDelayUntil+0x64>
    80001bc0:	e432                	sd	a2,8(sp)
    80001bc2:	aebff0ef          	jal	800016ac <xTaskResumeAll.part.0>
    80001bc6:	6622                	ld	a2,8(sp)
    80001bc8:	e119                	bnez	a0,80001bce <xTaskDelayUntil+0xa2>
    80001bca:	00000073          	ecall
    80001bce:	60e2                	ld	ra,24(sp)
    80001bd0:	8532                	mv	a0,a2
    80001bd2:	6105                	addi	sp,sp,32
    80001bd4:	8082                	ret
    80001bd6:	883a                	mv	a6,a4
    80001bd8:	bf59                	j	80001b6e <xTaskDelayUntil+0x42>

0000000080001bda <vTaskStartScheduler>:
    80001bda:	1101                	addi	sp,sp,-32
    80001bdc:	454c47b7          	lui	a5,0x454c4
    80001be0:	e002                	sd	zero,0(sp)
    80001be2:	44978793          	addi	a5,a5,1097 # 454c4449 <_start-0x3ab3bbb7>
    80001be6:	c03e                	sw	a5,0(sp)
    80001be8:	4701                	li	a4,0
    80001bea:	00005797          	auipc	a5,0x5
    80001bee:	42678793          	addi	a5,a5,1062 # 80007010 <xIdleTaskHandles>
    80001bf2:	4681                	li	a3,0
    80001bf4:	08000613          	li	a2,128
    80001bf8:	858a                	mv	a1,sp
    80001bfa:	00000517          	auipc	a0,0x0
    80001bfe:	8c850513          	addi	a0,a0,-1848 # 800014c2 <prvIdleTask>
    80001c02:	ec06                	sd	ra,24(sp)
    80001c04:	e822                	sd	s0,16(sp)
    80001c06:	e402                	sd	zero,8(sp)
    80001c08:	c9bff0ef          	jal	800018a2 <xTaskCreate>
    80001c0c:	4785                	li	a5,1
    80001c0e:	02f51263          	bne	a0,a5,80001c32 <vTaskStartScheduler+0x58>
    80001c12:	842a                	mv	s0,a0
    80001c14:	281000ef          	jal	80002694 <xTimerCreateTimerTask>
    80001c18:	02850063          	beq	a0,s0,80001c38 <vTaskStartScheduler+0x5e>
    80001c1c:	57fd                	li	a5,-1
    80001c1e:	00f50a63          	beq	a0,a5,80001c32 <vTaskStartScheduler+0x58>
    80001c22:	60e2                	ld	ra,24(sp)
    80001c24:	6442                	ld	s0,16(sp)
    80001c26:	00001797          	auipc	a5,0x1
    80001c2a:	1727b783          	ld	a5,370(a5) # 80002d98 <uxTopUsedPriority>
    80001c2e:	6105                	addi	sp,sp,32
    80001c30:	8082                	ret
    80001c32:	30047073          	csrci	mstatus,8
    80001c36:	a001                	j	80001c36 <vTaskStartScheduler+0x5c>
    80001c38:	30047073          	csrci	mstatus,8
    80001c3c:	57fd                	li	a5,-1
    80001c3e:	00005717          	auipc	a4,0x5
    80001c42:	3cf73d23          	sd	a5,986(a4) # 80007018 <xNextTaskUnblockTime>
    80001c46:	00005797          	auipc	a5,0x5
    80001c4a:	3ea7bd23          	sd	a0,1018(a5) # 80007040 <xSchedulerRunning>
    80001c4e:	00005797          	auipc	a5,0x5
    80001c52:	4007b123          	sd	zero,1026(a5) # 80007050 <xTickCount>
    80001c56:	5db000ef          	jal	80002a30 <xPortStartScheduler>
    80001c5a:	b7e1                	j	80001c22 <vTaskStartScheduler+0x48>

0000000080001c5c <vTaskSuspendAll>:
    80001c5c:	00005797          	auipc	a5,0x5
    80001c60:	3ac7b783          	ld	a5,940(a5) # 80007008 <uxSchedulerSuspended>
    80001c64:	0785                	addi	a5,a5,1
    80001c66:	00005717          	auipc	a4,0x5
    80001c6a:	3af73123          	sd	a5,930(a4) # 80007008 <uxSchedulerSuspended>
    80001c6e:	8082                	ret

0000000080001c70 <xTaskResumeAll>:
    80001c70:	30047073          	csrci	mstatus,8
    80001c74:	00001797          	auipc	a5,0x1
    80001c78:	1347b783          	ld	a5,308(a5) # 80002da8 <xCriticalNesting>
    80001c7c:	00005717          	auipc	a4,0x5
    80001c80:	38c73703          	ld	a4,908(a4) # 80007008 <uxSchedulerSuspended>
    80001c84:	0785                	addi	a5,a5,1
    80001c86:	00001697          	auipc	a3,0x1
    80001c8a:	12f6b123          	sd	a5,290(a3) # 80002da8 <xCriticalNesting>
    80001c8e:	e701                	bnez	a4,80001c96 <xTaskResumeAll+0x26>
    80001c90:	30047073          	csrci	mstatus,8
    80001c94:	a001                	j	80001c94 <xTaskResumeAll+0x24>
    80001c96:	bc19                	j	800016ac <xTaskResumeAll.part.0>

0000000080001c98 <xTaskGetTickCount>:
    80001c98:	00005517          	auipc	a0,0x5
    80001c9c:	3b853503          	ld	a0,952(a0) # 80007050 <xTickCount>
    80001ca0:	8082                	ret

0000000080001ca2 <vTaskPlaceOnEventList>:
    80001ca2:	c505                	beqz	a0,80001cca <vTaskPlaceOnEventList+0x28>
    80001ca4:	1141                	addi	sp,sp,-16
    80001ca6:	e022                	sd	s0,0(sp)
    80001ca8:	842e                	mv	s0,a1
    80001caa:	00005597          	auipc	a1,0x5
    80001cae:	3ce5b583          	ld	a1,974(a1) # 80007078 <pxCurrentTCB>
    80001cb2:	e406                	sd	ra,8(sp)
    80001cb4:	03058593          	addi	a1,a1,48
    80001cb8:	622000ef          	jal	800022da <vListInsert>
    80001cbc:	8522                	mv	a0,s0
    80001cbe:	6402                	ld	s0,0(sp)
    80001cc0:	60a2                	ld	ra,8(sp)
    80001cc2:	4585                	li	a1,1
    80001cc4:	0141                	addi	sp,sp,16
    80001cc6:	e72ff06f          	j	80001338 <prvAddCurrentTaskToDelayedList>
    80001cca:	30047073          	csrci	mstatus,8
    80001cce:	a001                	j	80001cce <vTaskPlaceOnEventList+0x2c>

0000000080001cd0 <vTaskPlaceOnEventListRestricted>:
    80001cd0:	872e                	mv	a4,a1
    80001cd2:	c531                	beqz	a0,80001d1e <vTaskPlaceOnEventListRestricted+0x4e>
    80001cd4:	00005797          	auipc	a5,0x5
    80001cd8:	3a478793          	addi	a5,a5,932 # 80007078 <pxCurrentTCB>
    80001cdc:	638c                	ld	a1,0(a5)
    80001cde:	6514                	ld	a3,8(a0)
    80001ce0:	0007b303          	ld	t1,0(a5)
    80001ce4:	0007b883          	ld	a7,0(a5)
    80001ce8:	fd94                	sd	a3,56(a1)
    80001cea:	6a8c                	ld	a1,16(a3)
    80001cec:	0007b803          	ld	a6,0(a5)
    80001cf0:	03088893          	addi	a7,a7,48
    80001cf4:	04b33023          	sd	a1,64(t1)
    80001cf8:	0007b303          	ld	t1,0(a5)
    80001cfc:	611c                	ld	a5,0(a0)
    80001cfe:	03080813          	addi	a6,a6,48
    80001d02:	0115b423          	sd	a7,8(a1)
    80001d06:	0106b823          	sd	a6,16(a3)
    80001d0a:	04a33823          	sd	a0,80(t1)
    80001d0e:	0785                	addi	a5,a5,1
    80001d10:	e11c                	sd	a5,0(a0)
    80001d12:	c211                	beqz	a2,80001d16 <vTaskPlaceOnEventListRestricted+0x46>
    80001d14:	577d                	li	a4,-1
    80001d16:	85b2                	mv	a1,a2
    80001d18:	853a                	mv	a0,a4
    80001d1a:	e1eff06f          	j	80001338 <prvAddCurrentTaskToDelayedList>
    80001d1e:	30047073          	csrci	mstatus,8
    80001d22:	a001                	j	80001d22 <vTaskPlaceOnEventListRestricted+0x52>

0000000080001d24 <xTaskRemoveFromEventList>:
    80001d24:	6d1c                	ld	a5,24(a0)
    80001d26:	6f9c                	ld	a5,24(a5)
    80001d28:	c7e5                	beqz	a5,80001e10 <xTaskRemoveFromEventList+0xec>
    80001d2a:	7f8c                	ld	a1,56(a5)
    80001d2c:	63b4                	ld	a3,64(a5)
    80001d2e:	6bb8                	ld	a4,80(a5)
    80001d30:	03078613          	addi	a2,a5,48
    80001d34:	e994                	sd	a3,16(a1)
    80001d36:	7f88                	ld	a0,56(a5)
    80001d38:	670c                	ld	a1,8(a4)
    80001d3a:	e688                	sd	a0,8(a3)
    80001d3c:	0ac58d63          	beq	a1,a2,80001df6 <xTaskRemoveFromEventList+0xd2>
    80001d40:	6314                	ld	a3,0(a4)
    80001d42:	00005597          	auipc	a1,0x5
    80001d46:	2c65b583          	ld	a1,710(a1) # 80007008 <uxSchedulerSuspended>
    80001d4a:	0407b823          	sd	zero,80(a5)
    80001d4e:	16fd                	addi	a3,a3,-1
    80001d50:	e314                	sd	a3,0(a4)
    80001d52:	cd95                	beqz	a1,80001d8e <xTaskRemoveFromEventList+0x6a>
    80001d54:	00001717          	auipc	a4,0x1
    80001d58:	0ac70713          	addi	a4,a4,172 # 80002e00 <xPendingReadyList>
    80001d5c:	6714                	ld	a3,8(a4)
    80001d5e:	630c                	ld	a1,0(a4)
    80001d60:	ff94                	sd	a3,56(a5)
    80001d62:	6a88                	ld	a0,16(a3)
    80001d64:	0585                	addi	a1,a1,1
    80001d66:	e30c                	sd	a1,0(a4)
    80001d68:	e3a8                	sd	a0,64(a5)
    80001d6a:	e510                	sd	a2,8(a0)
    80001d6c:	ea90                	sd	a2,16(a3)
    80001d6e:	ebb8                	sd	a4,80(a5)
    80001d70:	00005697          	auipc	a3,0x5
    80001d74:	3086b683          	ld	a3,776(a3) # 80007078 <pxCurrentTCB>
    80001d78:	6fb8                	ld	a4,88(a5)
    80001d7a:	4501                	li	a0,0
    80001d7c:	6ebc                	ld	a5,88(a3)
    80001d7e:	00e7f763          	bgeu	a5,a4,80001d8c <xTaskRemoveFromEventList+0x68>
    80001d82:	4505                	li	a0,1
    80001d84:	00005797          	auipc	a5,0x5
    80001d88:	2aa7b623          	sd	a0,684(a5) # 80007030 <xYieldPendings>
    80001d8c:	8082                	ret
    80001d8e:	6b90                	ld	a2,16(a5)
    80001d90:	6f98                	ld	a4,24(a5)
    80001d92:	7794                	ld	a3,40(a5)
    80001d94:	00878513          	addi	a0,a5,8
    80001d98:	ea18                	sd	a4,16(a2)
    80001d9a:	6b8c                	ld	a1,16(a5)
    80001d9c:	6690                	ld	a2,8(a3)
    80001d9e:	e70c                	sd	a1,8(a4)
    80001da0:	06a60b63          	beq	a2,a0,80001e16 <xTaskRemoveFromEventList+0xf2>
    80001da4:	6290                	ld	a2,0(a3)
    80001da6:	00001717          	auipc	a4,0x1
    80001daa:	0d270713          	addi	a4,a4,210 # 80002e78 <pxReadyTasksLists>
    80001dae:	00005897          	auipc	a7,0x5
    80001db2:	29a8b883          	ld	a7,666(a7) # 80007048 <uxTopReadyPriority>
    80001db6:	167d                	addi	a2,a2,-1
    80001db8:	e290                	sd	a2,0(a3)
    80001dba:	0587b803          	ld	a6,88(a5)
    80001dbe:	4685                	li	a3,1
    80001dc0:	00281613          	slli	a2,a6,0x2
    80001dc4:	9642                	add	a2,a2,a6
    80001dc6:	060e                	slli	a2,a2,0x3
    80001dc8:	9732                	add	a4,a4,a2
    80001dca:	670c                	ld	a1,8(a4)
    80001dcc:	6310                	ld	a2,0(a4)
    80001dce:	010696b3          	sll	a3,a3,a6
    80001dd2:	eb8c                	sd	a1,16(a5)
    80001dd4:	0105b803          	ld	a6,16(a1)
    80001dd8:	0605                	addi	a2,a2,1
    80001dda:	0116e6b3          	or	a3,a3,a7
    80001dde:	0107bc23          	sd	a6,24(a5)
    80001de2:	00a83423          	sd	a0,8(a6)
    80001de6:	e988                	sd	a0,16(a1)
    80001de8:	f798                	sd	a4,40(a5)
    80001dea:	e310                	sd	a2,0(a4)
    80001dec:	00005717          	auipc	a4,0x5
    80001df0:	24d73e23          	sd	a3,604(a4) # 80007048 <uxTopReadyPriority>
    80001df4:	bfb5                	j	80001d70 <xTaskRemoveFromEventList+0x4c>
    80001df6:	63b4                	ld	a3,64(a5)
    80001df8:	00005597          	auipc	a1,0x5
    80001dfc:	2105b583          	ld	a1,528(a1) # 80007008 <uxSchedulerSuspended>
    80001e00:	e714                	sd	a3,8(a4)
    80001e02:	6314                	ld	a3,0(a4)
    80001e04:	0407b823          	sd	zero,80(a5)
    80001e08:	16fd                	addi	a3,a3,-1
    80001e0a:	e314                	sd	a3,0(a4)
    80001e0c:	f5a1                	bnez	a1,80001d54 <xTaskRemoveFromEventList+0x30>
    80001e0e:	b741                	j	80001d8e <xTaskRemoveFromEventList+0x6a>
    80001e10:	30047073          	csrci	mstatus,8
    80001e14:	a001                	j	80001e14 <xTaskRemoveFromEventList+0xf0>
    80001e16:	6f98                	ld	a4,24(a5)
    80001e18:	e698                	sd	a4,8(a3)
    80001e1a:	b769                	j	80001da4 <xTaskRemoveFromEventList+0x80>

0000000080001e1c <vTaskInternalSetTimeOutState>:
    80001e1c:	00005717          	auipc	a4,0x5
    80001e20:	20c73703          	ld	a4,524(a4) # 80007028 <xNumOfOverflows>
    80001e24:	00005797          	auipc	a5,0x5
    80001e28:	22c7b783          	ld	a5,556(a5) # 80007050 <xTickCount>
    80001e2c:	e118                	sd	a4,0(a0)
    80001e2e:	e51c                	sd	a5,8(a0)
    80001e30:	8082                	ret

0000000080001e32 <xTaskCheckForTimeOut>:
    80001e32:	c535                	beqz	a0,80001e9e <xTaskCheckForTimeOut+0x6c>
    80001e34:	c1b5                	beqz	a1,80001e98 <xTaskCheckForTimeOut+0x66>
    80001e36:	30047073          	csrci	mstatus,8
    80001e3a:	00001717          	auipc	a4,0x1
    80001e3e:	f6e70713          	addi	a4,a4,-146 # 80002da8 <xCriticalNesting>
    80001e42:	631c                	ld	a5,0(a4)
    80001e44:	00005817          	auipc	a6,0x5
    80001e48:	20c80813          	addi	a6,a6,524 # 80007050 <xTickCount>
    80001e4c:	00083883          	ld	a7,0(a6)
    80001e50:	00178693          	addi	a3,a5,1
    80001e54:	e314                	sd	a3,0(a4)
    80001e56:	6194                	ld	a3,0(a1)
    80001e58:	537d                	li	t1,-1
    80001e5a:	4601                	li	a2,0
    80001e5c:	02668863          	beq	a3,t1,80001e8c <xTaskCheckForTimeOut+0x5a>
    80001e60:	00005317          	auipc	t1,0x5
    80001e64:	1c830313          	addi	t1,t1,456 # 80007028 <xNumOfOverflows>
    80001e68:	00033783          	ld	a5,0(t1)
    80001e6c:	00053e03          	ld	t3,0(a0)
    80001e70:	6510                	ld	a2,8(a0)
    80001e72:	00fe0463          	beq	t3,a5,80001e7a <xTaskCheckForTimeOut+0x48>
    80001e76:	00c8f663          	bgeu	a7,a2,80001e82 <xTaskCheckForTimeOut+0x50>
    80001e7a:	40c887b3          	sub	a5,a7,a2
    80001e7e:	02d7e363          	bltu	a5,a3,80001ea4 <xTaskCheckForTimeOut+0x72>
    80001e82:	0005b023          	sd	zero,0(a1)
    80001e86:	631c                	ld	a5,0(a4)
    80001e88:	4605                	li	a2,1
    80001e8a:	17fd                	addi	a5,a5,-1
    80001e8c:	e31c                	sd	a5,0(a4)
    80001e8e:	e399                	bnez	a5,80001e94 <xTaskCheckForTimeOut+0x62>
    80001e90:	30046073          	csrsi	mstatus,8
    80001e94:	8532                	mv	a0,a2
    80001e96:	8082                	ret
    80001e98:	30047073          	csrci	mstatus,8
    80001e9c:	a001                	j	80001e9c <xTaskCheckForTimeOut+0x6a>
    80001e9e:	30047073          	csrci	mstatus,8
    80001ea2:	a001                	j	80001ea2 <xTaskCheckForTimeOut+0x70>
    80001ea4:	411687b3          	sub	a5,a3,a7
    80001ea8:	97b2                	add	a5,a5,a2
    80001eaa:	e19c                	sd	a5,0(a1)
    80001eac:	00033603          	ld	a2,0(t1)
    80001eb0:	631c                	ld	a5,0(a4)
    80001eb2:	00083683          	ld	a3,0(a6)
    80001eb6:	e110                	sd	a2,0(a0)
    80001eb8:	17fd                	addi	a5,a5,-1
    80001eba:	e514                	sd	a3,8(a0)
    80001ebc:	4601                	li	a2,0
    80001ebe:	b7f9                	j	80001e8c <xTaskCheckForTimeOut+0x5a>

0000000080001ec0 <vTaskMissedYield>:
    80001ec0:	4785                	li	a5,1
    80001ec2:	00005717          	auipc	a4,0x5
    80001ec6:	16f73723          	sd	a5,366(a4) # 80007030 <xYieldPendings>
    80001eca:	8082                	ret

0000000080001ecc <xTaskGetSchedulerState>:
    80001ecc:	00005797          	auipc	a5,0x5
    80001ed0:	1747b783          	ld	a5,372(a5) # 80007040 <xSchedulerRunning>
    80001ed4:	4505                	li	a0,1
    80001ed6:	cb81                	beqz	a5,80001ee6 <xTaskGetSchedulerState+0x1a>
    80001ed8:	00005517          	auipc	a0,0x5
    80001edc:	13053503          	ld	a0,304(a0) # 80007008 <uxSchedulerSuspended>
    80001ee0:	00153513          	seqz	a0,a0
    80001ee4:	0506                	slli	a0,a0,0x1
    80001ee6:	8082                	ret

0000000080001ee8 <prvUnlockQueue>:
    80001ee8:	7179                	addi	sp,sp,-48
    80001eea:	ec26                	sd	s1,24(sp)
    80001eec:	f406                	sd	ra,40(sp)
    80001eee:	f022                	sd	s0,32(sp)
    80001ef0:	e84a                	sd	s2,16(sp)
    80001ef2:	84aa                	mv	s1,a0
    80001ef4:	30047073          	csrci	mstatus,8
    80001ef8:	00001917          	auipc	s2,0x1
    80001efc:	eb090913          	addi	s2,s2,-336 # 80002da8 <xCriticalNesting>
    80001f00:	00093783          	ld	a5,0(s2)
    80001f04:	08954403          	lbu	s0,137(a0)
    80001f08:	00178713          	addi	a4,a5,1
    80001f0c:	0184141b          	slliw	s0,s0,0x18
    80001f10:	4184541b          	sraiw	s0,s0,0x18
    80001f14:	00e93023          	sd	a4,0(s2)
    80001f18:	00804763          	bgtz	s0,80001f26 <prvUnlockQueue+0x3e>
    80001f1c:	a02d                	j	80001f46 <prvUnlockQueue+0x5e>
    80001f1e:	347d                	addiw	s0,s0,-1
    80001f20:	0ff47413          	zext.b	s0,s0
    80001f24:	cc11                	beqz	s0,80001f40 <prvUnlockQueue+0x58>
    80001f26:	64bc                	ld	a5,72(s1)
    80001f28:	04848513          	addi	a0,s1,72
    80001f2c:	cb91                	beqz	a5,80001f40 <prvUnlockQueue+0x58>
    80001f2e:	df7ff0ef          	jal	80001d24 <xTaskRemoveFromEventList>
    80001f32:	d575                	beqz	a0,80001f1e <prvUnlockQueue+0x36>
    80001f34:	347d                	addiw	s0,s0,-1
    80001f36:	0ff47413          	zext.b	s0,s0
    80001f3a:	f87ff0ef          	jal	80001ec0 <vTaskMissedYield>
    80001f3e:	f465                	bnez	s0,80001f26 <prvUnlockQueue+0x3e>
    80001f40:	00093783          	ld	a5,0(s2)
    80001f44:	17fd                	addi	a5,a5,-1
    80001f46:	577d                	li	a4,-1
    80001f48:	00f93023          	sd	a5,0(s2)
    80001f4c:	08e484a3          	sb	a4,137(s1)
    80001f50:	e399                	bnez	a5,80001f56 <prvUnlockQueue+0x6e>
    80001f52:	30046073          	csrsi	mstatus,8
    80001f56:	30047073          	csrci	mstatus,8
    80001f5a:	00093783          	ld	a5,0(s2)
    80001f5e:	0884c403          	lbu	s0,136(s1)
    80001f62:	00178713          	addi	a4,a5,1
    80001f66:	0184141b          	slliw	s0,s0,0x18
    80001f6a:	4184541b          	sraiw	s0,s0,0x18
    80001f6e:	00e93023          	sd	a4,0(s2)
    80001f72:	00804763          	bgtz	s0,80001f80 <prvUnlockQueue+0x98>
    80001f76:	a02d                	j	80001fa0 <prvUnlockQueue+0xb8>
    80001f78:	347d                	addiw	s0,s0,-1
    80001f7a:	0ff47413          	zext.b	s0,s0
    80001f7e:	cc11                	beqz	s0,80001f9a <prvUnlockQueue+0xb2>
    80001f80:	709c                	ld	a5,32(s1)
    80001f82:	02048513          	addi	a0,s1,32
    80001f86:	cb91                	beqz	a5,80001f9a <prvUnlockQueue+0xb2>
    80001f88:	d9dff0ef          	jal	80001d24 <xTaskRemoveFromEventList>
    80001f8c:	d575                	beqz	a0,80001f78 <prvUnlockQueue+0x90>
    80001f8e:	347d                	addiw	s0,s0,-1
    80001f90:	0ff47413          	zext.b	s0,s0
    80001f94:	f2dff0ef          	jal	80001ec0 <vTaskMissedYield>
    80001f98:	f465                	bnez	s0,80001f80 <prvUnlockQueue+0x98>
    80001f9a:	00093783          	ld	a5,0(s2)
    80001f9e:	17fd                	addi	a5,a5,-1
    80001fa0:	577d                	li	a4,-1
    80001fa2:	00f93023          	sd	a5,0(s2)
    80001fa6:	08e48423          	sb	a4,136(s1)
    80001faa:	e399                	bnez	a5,80001fb0 <prvUnlockQueue+0xc8>
    80001fac:	30046073          	csrsi	mstatus,8
    80001fb0:	70a2                	ld	ra,40(sp)
    80001fb2:	7402                	ld	s0,32(sp)
    80001fb4:	64e2                	ld	s1,24(sp)
    80001fb6:	6942                	ld	s2,16(sp)
    80001fb8:	6145                	addi	sp,sp,48
    80001fba:	8082                	ret

0000000080001fbc <xQueueGenericReset>:
    80001fbc:	c93d                	beqz	a0,80002032 <xQueueGenericReset+0x76>
    80001fbe:	7d38                	ld	a4,120(a0)
    80001fc0:	87aa                	mv	a5,a0
    80001fc2:	c72d                	beqz	a4,8000202c <xQueueGenericReset+0x70>
    80001fc4:	6154                	ld	a3,128(a0)
    80001fc6:	02d73733          	mulhu	a4,a4,a3
    80001fca:	e32d                	bnez	a4,8000202c <xQueueGenericReset+0x70>
    80001fcc:	1101                	addi	sp,sp,-32
    80001fce:	ec06                	sd	ra,24(sp)
    80001fd0:	30047073          	csrci	mstatus,8
    80001fd4:	7d38                	ld	a4,120(a0)
    80001fd6:	08053883          	ld	a7,128(a0)
    80001fda:	00001817          	auipc	a6,0x1
    80001fde:	dce80813          	addi	a6,a6,-562 # 80002da8 <xCriticalNesting>
    80001fe2:	fff70513          	addi	a0,a4,-1
    80001fe6:	031706b3          	mul	a3,a4,a7
    80001fea:	6390                	ld	a2,0(a5)
    80001fec:	00083703          	ld	a4,0(a6)
    80001ff0:	0607b823          	sd	zero,112(a5)
    80001ff4:	537d                	li	t1,-1
    80001ff6:	00170e13          	addi	t3,a4,1
    80001ffa:	08678423          	sb	t1,136(a5)
    80001ffe:	e790                	sd	a2,8(a5)
    80002000:	01c83023          	sd	t3,0(a6)
    80002004:	086784a3          	sb	t1,137(a5)
    80002008:	03150533          	mul	a0,a0,a7
    8000200c:	96b2                	add	a3,a3,a2
    8000200e:	eb94                	sd	a3,16(a5)
    80002010:	962a                	add	a2,a2,a0
    80002012:	ef90                	sd	a2,24(a5)
    80002014:	e195                	bnez	a1,80002038 <xQueueGenericReset+0x7c>
    80002016:	7394                	ld	a3,32(a5)
    80002018:	e2b1                	bnez	a3,8000205c <xQueueGenericReset+0xa0>
    8000201a:	00e83023          	sd	a4,0(a6)
    8000201e:	e319                	bnez	a4,80002024 <xQueueGenericReset+0x68>
    80002020:	30046073          	csrsi	mstatus,8
    80002024:	60e2                	ld	ra,24(sp)
    80002026:	4505                	li	a0,1
    80002028:	6105                	addi	sp,sp,32
    8000202a:	8082                	ret
    8000202c:	30047073          	csrci	mstatus,8
    80002030:	a001                	j	80002030 <xQueueGenericReset+0x74>
    80002032:	30047073          	csrci	mstatus,8
    80002036:	a001                	j	80002036 <xQueueGenericReset+0x7a>
    80002038:	02078513          	addi	a0,a5,32
    8000203c:	e43e                	sd	a5,8(sp)
    8000203e:	282000ef          	jal	800022c0 <vListInitialise>
    80002042:	67a2                	ld	a5,8(sp)
    80002044:	04878513          	addi	a0,a5,72
    80002048:	278000ef          	jal	800022c0 <vListInitialise>
    8000204c:	00001817          	auipc	a6,0x1
    80002050:	d5c80813          	addi	a6,a6,-676 # 80002da8 <xCriticalNesting>
    80002054:	00083703          	ld	a4,0(a6)
    80002058:	177d                	addi	a4,a4,-1
    8000205a:	b7c1                	j	8000201a <xQueueGenericReset+0x5e>
    8000205c:	02078513          	addi	a0,a5,32
    80002060:	cc5ff0ef          	jal	80001d24 <xTaskRemoveFromEventList>
    80002064:	00001817          	auipc	a6,0x1
    80002068:	d4480813          	addi	a6,a6,-700 # 80002da8 <xCriticalNesting>
    8000206c:	d565                	beqz	a0,80002054 <xQueueGenericReset+0x98>
    8000206e:	00000073          	ecall
    80002072:	00083703          	ld	a4,0(a6)
    80002076:	177d                	addi	a4,a4,-1
    80002078:	b74d                	j	8000201a <xQueueGenericReset+0x5e>

000000008000207a <xQueueGenericCreate>:
    8000207a:	c911                	beqz	a0,8000208e <xQueueGenericCreate+0x14>
    8000207c:	02b537b3          	mulhu	a5,a0,a1
    80002080:	e799                	bnez	a5,8000208e <xQueueGenericCreate+0x14>
    80002082:	02b50733          	mul	a4,a0,a1
    80002086:	f6f00793          	li	a5,-145
    8000208a:	00e7f563          	bgeu	a5,a4,80002094 <xQueueGenericCreate+0x1a>
    8000208e:	30047073          	csrci	mstatus,8
    80002092:	a001                	j	80002092 <xQueueGenericCreate+0x18>
    80002094:	1101                	addi	sp,sp,-32
    80002096:	e02a                	sd	a0,0(sp)
    80002098:	09070513          	addi	a0,a4,144
    8000209c:	ec06                	sd	ra,24(sp)
    8000209e:	e42e                	sd	a1,8(sp)
    800020a0:	638000ef          	jal	800026d8 <pvPortMalloc>
    800020a4:	872a                	mv	a4,a0
    800020a6:	cd11                	beqz	a0,800020c2 <xQueueGenericCreate+0x48>
    800020a8:	65a2                	ld	a1,8(sp)
    800020aa:	6782                	ld	a5,0(sp)
    800020ac:	86aa                	mv	a3,a0
    800020ae:	ed91                	bnez	a1,800020ca <xQueueGenericCreate+0x50>
    800020b0:	e34c                	sd	a1,128(a4)
    800020b2:	e314                	sd	a3,0(a4)
    800020b4:	ff3c                	sd	a5,120(a4)
    800020b6:	853a                	mv	a0,a4
    800020b8:	4585                	li	a1,1
    800020ba:	e03a                	sd	a4,0(sp)
    800020bc:	f01ff0ef          	jal	80001fbc <xQueueGenericReset>
    800020c0:	6702                	ld	a4,0(sp)
    800020c2:	60e2                	ld	ra,24(sp)
    800020c4:	853a                	mv	a0,a4
    800020c6:	6105                	addi	sp,sp,32
    800020c8:	8082                	ret
    800020ca:	09050693          	addi	a3,a0,144
    800020ce:	b7cd                	j	800020b0 <xQueueGenericCreate+0x36>

00000000800020d0 <xQueueReceive>:
    800020d0:	715d                	addi	sp,sp,-80
    800020d2:	e486                	sd	ra,72(sp)
    800020d4:	e432                	sd	a2,8(sp)
    800020d6:	16050663          	beqz	a0,80002242 <xQueueReceive+0x172>
    800020da:	e0a2                	sd	s0,64(sp)
    800020dc:	842a                	mv	s0,a0
    800020de:	c9e9                	beqz	a1,800021b0 <xQueueReceive+0xe0>
    800020e0:	f44e                	sd	s3,40(sp)
    800020e2:	89ae                	mv	s3,a1
    800020e4:	de9ff0ef          	jal	80001ecc <xTaskGetSchedulerState>
    800020e8:	cd61                	beqz	a0,800021c0 <xQueueReceive+0xf0>
    800020ea:	fc26                	sd	s1,56(sp)
    800020ec:	30047073          	csrci	mstatus,8
    800020f0:	00001497          	auipc	s1,0x1
    800020f4:	cb848493          	addi	s1,s1,-840 # 80002da8 <xCriticalNesting>
    800020f8:	6098                	ld	a4,0(s1)
    800020fa:	783c                	ld	a5,112(s0)
    800020fc:	00170693          	addi	a3,a4,1
    80002100:	e094                	sd	a3,0(s1)
    80002102:	0e079563          	bnez	a5,800021ec <xQueueReceive+0x11c>
    80002106:	67a2                	ld	a5,8(sp)
    80002108:	f84a                	sd	s2,48(sp)
    8000210a:	cbc9                	beqz	a5,8000219c <xQueueReceive+0xcc>
    8000210c:	0808                	addi	a0,sp,16
    8000210e:	d0fff0ef          	jal	80001e1c <vTaskInternalSetTimeOutState>
    80002112:	597d                	li	s2,-1
    80002114:	609c                	ld	a5,0(s1)
    80002116:	17fd                	addi	a5,a5,-1
    80002118:	e09c                	sd	a5,0(s1)
    8000211a:	e399                	bnez	a5,80002120 <xQueueReceive+0x50>
    8000211c:	30046073          	csrsi	mstatus,8
    80002120:	b3dff0ef          	jal	80001c5c <vTaskSuspendAll>
    80002124:	30047073          	csrci	mstatus,8
    80002128:	08844783          	lbu	a5,136(s0)
    8000212c:	6098                	ld	a4,0(s1)
    8000212e:	0187979b          	slliw	a5,a5,0x18
    80002132:	4187d79b          	sraiw	a5,a5,0x18
    80002136:	01279463          	bne	a5,s2,8000213e <xQueueReceive+0x6e>
    8000213a:	08040423          	sb	zero,136(s0)
    8000213e:	08944783          	lbu	a5,137(s0)
    80002142:	0187979b          	slliw	a5,a5,0x18
    80002146:	4187d79b          	sraiw	a5,a5,0x18
    8000214a:	07278863          	beq	a5,s2,800021ba <xQueueReceive+0xea>
    8000214e:	e319                	bnez	a4,80002154 <xQueueReceive+0x84>
    80002150:	30046073          	csrsi	mstatus,8
    80002154:	002c                	addi	a1,sp,8
    80002156:	0808                	addi	a0,sp,16
    80002158:	cdbff0ef          	jal	80001e32 <xTaskCheckForTimeOut>
    8000215c:	e169                	bnez	a0,8000221e <xQueueReceive+0x14e>
    8000215e:	30047073          	csrci	mstatus,8
    80002162:	783c                	ld	a5,112(s0)
    80002164:	6098                	ld	a4,0(s1)
    80002166:	e3b5                	bnez	a5,800021ca <xQueueReceive+0xfa>
    80002168:	e319                	bnez	a4,8000216e <xQueueReceive+0x9e>
    8000216a:	30046073          	csrsi	mstatus,8
    8000216e:	65a2                	ld	a1,8(sp)
    80002170:	04840513          	addi	a0,s0,72
    80002174:	b2fff0ef          	jal	80001ca2 <vTaskPlaceOnEventList>
    80002178:	8522                	mv	a0,s0
    8000217a:	d6fff0ef          	jal	80001ee8 <prvUnlockQueue>
    8000217e:	af3ff0ef          	jal	80001c70 <xTaskResumeAll>
    80002182:	e119                	bnez	a0,80002188 <xQueueReceive+0xb8>
    80002184:	00000073          	ecall
    80002188:	30047073          	csrci	mstatus,8
    8000218c:	6098                	ld	a4,0(s1)
    8000218e:	783c                	ld	a5,112(s0)
    80002190:	00170693          	addi	a3,a4,1
    80002194:	e094                	sd	a3,0(s1)
    80002196:	ebb1                	bnez	a5,800021ea <xQueueReceive+0x11a>
    80002198:	67a2                	ld	a5,8(sp)
    8000219a:	ffad                	bnez	a5,80002114 <xQueueReceive+0x44>
    8000219c:	e098                	sd	a4,0(s1)
    8000219e:	cf59                	beqz	a4,8000223c <xQueueReceive+0x16c>
    800021a0:	7942                	ld	s2,48(sp)
    800021a2:	4501                	li	a0,0
    800021a4:	6406                	ld	s0,64(sp)
    800021a6:	60a6                	ld	ra,72(sp)
    800021a8:	74e2                	ld	s1,56(sp)
    800021aa:	79a2                	ld	s3,40(sp)
    800021ac:	6161                	addi	sp,sp,80
    800021ae:	8082                	ret
    800021b0:	615c                	ld	a5,128(a0)
    800021b2:	d79d                	beqz	a5,800020e0 <xQueueReceive+0x10>
    800021b4:	30047073          	csrci	mstatus,8
    800021b8:	a001                	j	800021b8 <xQueueReceive+0xe8>
    800021ba:	080404a3          	sb	zero,137(s0)
    800021be:	bf41                	j	8000214e <xQueueReceive+0x7e>
    800021c0:	67a2                	ld	a5,8(sp)
    800021c2:	d785                	beqz	a5,800020ea <xQueueReceive+0x1a>
    800021c4:	30047073          	csrci	mstatus,8
    800021c8:	a001                	j	800021c8 <xQueueReceive+0xf8>
    800021ca:	e319                	bnez	a4,800021d0 <xQueueReceive+0x100>
    800021cc:	30046073          	csrsi	mstatus,8
    800021d0:	8522                	mv	a0,s0
    800021d2:	d17ff0ef          	jal	80001ee8 <prvUnlockQueue>
    800021d6:	a9bff0ef          	jal	80001c70 <xTaskResumeAll>
    800021da:	30047073          	csrci	mstatus,8
    800021de:	6098                	ld	a4,0(s1)
    800021e0:	783c                	ld	a5,112(s0)
    800021e2:	00170693          	addi	a3,a4,1
    800021e6:	e094                	sd	a3,0(s1)
    800021e8:	dbc5                	beqz	a5,80002198 <xQueueReceive+0xc8>
    800021ea:	7942                	ld	s2,48(sp)
    800021ec:	6050                	ld	a2,128(s0)
    800021ee:	ce01                	beqz	a2,80002206 <xQueueReceive+0x136>
    800021f0:	6c0c                	ld	a1,24(s0)
    800021f2:	6818                	ld	a4,16(s0)
    800021f4:	95b2                	add	a1,a1,a2
    800021f6:	ec0c                	sd	a1,24(s0)
    800021f8:	06e5f063          	bgeu	a1,a4,80002258 <xQueueReceive+0x188>
    800021fc:	854e                	mv	a0,s3
    800021fe:	e03e                	sd	a5,0(sp)
    80002200:	1cf000ef          	jal	80002bce <memcpy>
    80002204:	6782                	ld	a5,0(sp)
    80002206:	7018                	ld	a4,32(s0)
    80002208:	17fd                	addi	a5,a5,-1
    8000220a:	f83c                	sd	a5,112(s0)
    8000220c:	ef15                	bnez	a4,80002248 <xQueueReceive+0x178>
    8000220e:	609c                	ld	a5,0(s1)
    80002210:	17fd                	addi	a5,a5,-1
    80002212:	e09c                	sd	a5,0(s1)
    80002214:	e399                	bnez	a5,8000221a <xQueueReceive+0x14a>
    80002216:	30046073          	csrsi	mstatus,8
    8000221a:	4505                	li	a0,1
    8000221c:	b761                	j	800021a4 <xQueueReceive+0xd4>
    8000221e:	8522                	mv	a0,s0
    80002220:	cc9ff0ef          	jal	80001ee8 <prvUnlockQueue>
    80002224:	a4dff0ef          	jal	80001c70 <xTaskResumeAll>
    80002228:	30047073          	csrci	mstatus,8
    8000222c:	783c                	ld	a5,112(s0)
    8000222e:	6098                	ld	a4,0(s1)
    80002230:	c789                	beqz	a5,8000223a <xQueueReceive+0x16a>
    80002232:	fb39                	bnez	a4,80002188 <xQueueReceive+0xb8>
    80002234:	30046073          	csrsi	mstatus,8
    80002238:	bf81                	j	80002188 <xQueueReceive+0xb8>
    8000223a:	f33d                	bnez	a4,800021a0 <xQueueReceive+0xd0>
    8000223c:	30046073          	csrsi	mstatus,8
    80002240:	b785                	j	800021a0 <xQueueReceive+0xd0>
    80002242:	30047073          	csrci	mstatus,8
    80002246:	a001                	j	80002246 <xQueueReceive+0x176>
    80002248:	02040513          	addi	a0,s0,32
    8000224c:	ad9ff0ef          	jal	80001d24 <xTaskRemoveFromEventList>
    80002250:	dd5d                	beqz	a0,8000220e <xQueueReceive+0x13e>
    80002252:	00000073          	ecall
    80002256:	bf65                	j	8000220e <xQueueReceive+0x13e>
    80002258:	600c                	ld	a1,0(s0)
    8000225a:	ec0c                	sd	a1,24(s0)
    8000225c:	b745                	j	800021fc <xQueueReceive+0x12c>

000000008000225e <vQueueWaitForMessageRestricted>:
    8000225e:	87aa                	mv	a5,a0
    80002260:	30047073          	csrci	mstatus,8
    80002264:	08854703          	lbu	a4,136(a0)
    80002268:	557d                	li	a0,-1
    8000226a:	00001697          	auipc	a3,0x1
    8000226e:	b3e6b683          	ld	a3,-1218(a3) # 80002da8 <xCriticalNesting>
    80002272:	0187171b          	slliw	a4,a4,0x18
    80002276:	4187571b          	sraiw	a4,a4,0x18
    8000227a:	00a71463          	bne	a4,a0,80002282 <vQueueWaitForMessageRestricted+0x24>
    8000227e:	08078423          	sb	zero,136(a5)
    80002282:	0897c703          	lbu	a4,137(a5)
    80002286:	557d                	li	a0,-1
    80002288:	0187171b          	slliw	a4,a4,0x18
    8000228c:	4187571b          	sraiw	a4,a4,0x18
    80002290:	00a70963          	beq	a4,a0,800022a2 <vQueueWaitForMessageRestricted+0x44>
    80002294:	e299                	bnez	a3,8000229a <vQueueWaitForMessageRestricted+0x3c>
    80002296:	30046073          	csrsi	mstatus,8
    8000229a:	7bb8                	ld	a4,112(a5)
    8000229c:	c711                	beqz	a4,800022a8 <vQueueWaitForMessageRestricted+0x4a>
    8000229e:	853e                	mv	a0,a5
    800022a0:	b1a1                	j	80001ee8 <prvUnlockQueue>
    800022a2:	080784a3          	sb	zero,137(a5)
    800022a6:	b7fd                	j	80002294 <vQueueWaitForMessageRestricted+0x36>
    800022a8:	1101                	addi	sp,sp,-32
    800022aa:	04878513          	addi	a0,a5,72
    800022ae:	ec06                	sd	ra,24(sp)
    800022b0:	e43e                	sd	a5,8(sp)
    800022b2:	a1fff0ef          	jal	80001cd0 <vTaskPlaceOnEventListRestricted>
    800022b6:	67a2                	ld	a5,8(sp)
    800022b8:	60e2                	ld	ra,24(sp)
    800022ba:	853e                	mv	a0,a5
    800022bc:	6105                	addi	sp,sp,32
    800022be:	b12d                	j	80001ee8 <prvUnlockQueue>

00000000800022c0 <vListInitialise>:
    800022c0:	01050793          	addi	a5,a0,16
    800022c4:	577d                	li	a4,-1
    800022c6:	00053023          	sd	zero,0(a0)
    800022ca:	e918                	sd	a4,16(a0)
    800022cc:	e51c                	sd	a5,8(a0)
    800022ce:	ed1c                	sd	a5,24(a0)
    800022d0:	f11c                	sd	a5,32(a0)
    800022d2:	8082                	ret

00000000800022d4 <vListInitialiseItem>:
    800022d4:	02053023          	sd	zero,32(a0)
    800022d8:	8082                	ret

00000000800022da <vListInsert>:
    800022da:	6190                	ld	a2,0(a1)
    800022dc:	577d                	li	a4,-1
    800022de:	01050793          	addi	a5,a0,16
    800022e2:	02e60063          	beq	a2,a4,80002302 <vListInsert+0x28>
    800022e6:	86be                	mv	a3,a5
    800022e8:	679c                	ld	a5,8(a5)
    800022ea:	6398                	ld	a4,0(a5)
    800022ec:	fee67de3          	bgeu	a2,a4,800022e6 <vListInsert+0xc>
    800022f0:	e59c                	sd	a5,8(a1)
    800022f2:	eb8c                	sd	a1,16(a5)
    800022f4:	611c                	ld	a5,0(a0)
    800022f6:	e994                	sd	a3,16(a1)
    800022f8:	e68c                	sd	a1,8(a3)
    800022fa:	f188                	sd	a0,32(a1)
    800022fc:	0785                	addi	a5,a5,1
    800022fe:	e11c                	sd	a5,0(a0)
    80002300:	8082                	ret
    80002302:	7114                	ld	a3,32(a0)
    80002304:	669c                	ld	a5,8(a3)
    80002306:	b7ed                	j	800022f0 <vListInsert+0x16>

0000000080002308 <uxListRemove>:
    80002308:	7118                	ld	a4,32(a0)
    8000230a:	6514                	ld	a3,8(a0)
    8000230c:	691c                	ld	a5,16(a0)
    8000230e:	6710                	ld	a2,8(a4)
    80002310:	ea9c                	sd	a5,16(a3)
    80002312:	e794                	sd	a3,8(a5)
    80002314:	00a60963          	beq	a2,a0,80002326 <uxListRemove+0x1e>
    80002318:	631c                	ld	a5,0(a4)
    8000231a:	02053023          	sd	zero,32(a0)
    8000231e:	fff78513          	addi	a0,a5,-1
    80002322:	e308                	sd	a0,0(a4)
    80002324:	8082                	ret
    80002326:	e71c                	sd	a5,8(a4)
    80002328:	631c                	ld	a5,0(a4)
    8000232a:	02053023          	sd	zero,32(a0)
    8000232e:	fff78513          	addi	a0,a5,-1
    80002332:	e308                	sd	a0,0(a4)
    80002334:	8082                	ret

0000000080002336 <prvCheckForValidListAndQueue>:
    80002336:	30047073          	csrci	mstatus,8
    8000233a:	00001717          	auipc	a4,0x1
    8000233e:	a6e70713          	addi	a4,a4,-1426 # 80002da8 <xCriticalNesting>
    80002342:	631c                	ld	a5,0(a4)
    80002344:	00005697          	auipc	a3,0x5
    80002348:	d4c6b683          	ld	a3,-692(a3) # 80007090 <xTimerQueue>
    8000234c:	00178613          	addi	a2,a5,1
    80002350:	e310                	sd	a2,0(a4)
    80002352:	c699                	beqz	a3,80002360 <prvCheckForValidListAndQueue+0x2a>
    80002354:	e31c                	sd	a5,0(a4)
    80002356:	e781                	bnez	a5,8000235e <prvCheckForValidListAndQueue+0x28>
    80002358:	30046073          	csrsi	mstatus,8
    8000235c:	8082                	ret
    8000235e:	8082                	ret
    80002360:	1141                	addi	sp,sp,-16
    80002362:	00001517          	auipc	a0,0x1
    80002366:	c5650513          	addi	a0,a0,-938 # 80002fb8 <xActiveTimerList1>
    8000236a:	e406                	sd	ra,8(sp)
    8000236c:	f55ff0ef          	jal	800022c0 <vListInitialise>
    80002370:	00001517          	auipc	a0,0x1
    80002374:	c2050513          	addi	a0,a0,-992 # 80002f90 <xActiveTimerList2>
    80002378:	f49ff0ef          	jal	800022c0 <vListInitialise>
    8000237c:	00001797          	auipc	a5,0x1
    80002380:	c3c78793          	addi	a5,a5,-964 # 80002fb8 <xActiveTimerList1>
    80002384:	00005697          	auipc	a3,0x5
    80002388:	d0f6be23          	sd	a5,-740(a3) # 800070a0 <pxCurrentTimerList>
    8000238c:	4601                	li	a2,0
    8000238e:	00001797          	auipc	a5,0x1
    80002392:	c0278793          	addi	a5,a5,-1022 # 80002f90 <xActiveTimerList2>
    80002396:	45e1                	li	a1,24
    80002398:	4529                	li	a0,10
    8000239a:	00005697          	auipc	a3,0x5
    8000239e:	cef6bf23          	sd	a5,-770(a3) # 80007098 <pxOverflowTimerList>
    800023a2:	cd9ff0ef          	jal	8000207a <xQueueGenericCreate>
    800023a6:	00001717          	auipc	a4,0x1
    800023aa:	a0270713          	addi	a4,a4,-1534 # 80002da8 <xCriticalNesting>
    800023ae:	631c                	ld	a5,0(a4)
    800023b0:	00005697          	auipc	a3,0x5
    800023b4:	cea6b023          	sd	a0,-800(a3) # 80007090 <xTimerQueue>
    800023b8:	17fd                	addi	a5,a5,-1
    800023ba:	e31c                	sd	a5,0(a4)
    800023bc:	e399                	bnez	a5,800023c2 <prvCheckForValidListAndQueue+0x8c>
    800023be:	30046073          	csrsi	mstatus,8
    800023c2:	60a2                	ld	ra,8(sp)
    800023c4:	0141                	addi	sp,sp,16
    800023c6:	8082                	ret

00000000800023c8 <prvProcessExpiredTimer>:
    800023c8:	7139                	addi	sp,sp,-64
    800023ca:	e456                	sd	s5,8(sp)
    800023cc:	00005a97          	auipc	s5,0x5
    800023d0:	cd4a8a93          	addi	s5,s5,-812 # 800070a0 <pxCurrentTimerList>
    800023d4:	000ab783          	ld	a5,0(s5)
    800023d8:	f822                	sd	s0,48(sp)
    800023da:	f426                	sd	s1,40(sp)
    800023dc:	6f9c                	ld	a5,24(a5)
    800023de:	84aa                	mv	s1,a0
    800023e0:	ec4e                	sd	s3,24(sp)
    800023e2:	6f80                	ld	s0,24(a5)
    800023e4:	fc06                	sd	ra,56(sp)
    800023e6:	89ae                	mv	s3,a1
    800023e8:	00840513          	addi	a0,s0,8
    800023ec:	f1dff0ef          	jal	80002308 <uxListRemove>
    800023f0:	04844783          	lbu	a5,72(s0)
    800023f4:	0047f713          	andi	a4,a5,4
    800023f8:	ef09                	bnez	a4,80002412 <prvProcessExpiredTimer+0x4a>
    800023fa:	9bf9                	andi	a5,a5,-2
    800023fc:	04f40423          	sb	a5,72(s0)
    80002400:	603c                	ld	a5,64(s0)
    80002402:	8522                	mv	a0,s0
    80002404:	7442                	ld	s0,48(sp)
    80002406:	70e2                	ld	ra,56(sp)
    80002408:	74a2                	ld	s1,40(sp)
    8000240a:	69e2                	ld	s3,24(sp)
    8000240c:	6aa2                	ld	s5,8(sp)
    8000240e:	6121                	addi	sp,sp,64
    80002410:	8782                	jr	a5
    80002412:	f04a                	sd	s2,32(sp)
    80002414:	a031                	j	80002420 <prvProcessExpiredTimer+0x58>
    80002416:	02f76d63          	bltu	a4,a5,80002450 <prvProcessExpiredTimer+0x88>
    8000241a:	603c                	ld	a5,64(s0)
    8000241c:	84ca                	mv	s1,s2
    8000241e:	9782                	jalr	a5
    80002420:	781c                	ld	a5,48(s0)
    80002422:	f000                	sd	s0,32(s0)
    80002424:	8522                	mv	a0,s0
    80002426:	00f48933          	add	s2,s1,a5
    8000242a:	01243423          	sd	s2,8(s0)
    8000242e:	40998733          	sub	a4,s3,s1
    80002432:	009936b3          	sltu	a3,s2,s1
    80002436:	ff29f0e3          	bgeu	s3,s2,80002416 <prvProcessExpiredTimer+0x4e>
    8000243a:	0099f363          	bgeu	s3,s1,80002440 <prvProcessExpiredTimer+0x78>
    8000243e:	def1                	beqz	a3,8000241a <prvProcessExpiredTimer+0x52>
    80002440:	000ab503          	ld	a0,0(s5)
    80002444:	00840593          	addi	a1,s0,8
    80002448:	e93ff0ef          	jal	800022da <vListInsert>
    8000244c:	7902                	ld	s2,32(sp)
    8000244e:	bf4d                	j	80002400 <prvProcessExpiredTimer+0x38>
    80002450:	00005517          	auipc	a0,0x5
    80002454:	c4853503          	ld	a0,-952(a0) # 80007098 <pxOverflowTimerList>
    80002458:	00840593          	addi	a1,s0,8
    8000245c:	e7fff0ef          	jal	800022da <vListInsert>
    80002460:	7902                	ld	s2,32(sp)
    80002462:	bf79                	j	80002400 <prvProcessExpiredTimer+0x38>

0000000080002464 <prvTimerTask>:
    80002464:	7159                	addi	sp,sp,-112
    80002466:	e8ca                	sd	s2,80(sp)
    80002468:	e4ce                	sd	s3,72(sp)
    8000246a:	e0d2                	sd	s4,64(sp)
    8000246c:	fc56                	sd	s5,56(sp)
    8000246e:	f85a                	sd	s6,48(sp)
    80002470:	f45e                	sd	s7,40(sp)
    80002472:	f486                	sd	ra,104(sp)
    80002474:	f0a2                	sd	s0,96(sp)
    80002476:	eca6                	sd	s1,88(sp)
    80002478:	f062                	sd	s8,32(sp)
    8000247a:	00005917          	auipc	s2,0x5
    8000247e:	c2690913          	addi	s2,s2,-986 # 800070a0 <pxCurrentTimerList>
    80002482:	00005a17          	auipc	s4,0x5
    80002486:	bfea0a13          	addi	s4,s4,-1026 # 80007080 <xLastTime.0>
    8000248a:	00005b97          	auipc	s7,0x5
    8000248e:	c0eb8b93          	addi	s7,s7,-1010 # 80007098 <pxOverflowTimerList>
    80002492:	00005997          	auipc	s3,0x5
    80002496:	bfe98993          	addi	s3,s3,-1026 # 80007090 <xTimerQueue>
    8000249a:	00001a97          	auipc	s5,0x1
    8000249e:	8d6a8a93          	addi	s5,s5,-1834 # 80002d70 <memcpy+0x1a2>
    800024a2:	4b25                	li	s6,9
    800024a4:	00093783          	ld	a5,0(s2)
    800024a8:	6384                	ld	s1,0(a5)
    800024aa:	18048a63          	beqz	s1,8000263e <prvTimerTask+0x1da>
    800024ae:	6f9c                	ld	a5,24(a5)
    800024b0:	6384                	ld	s1,0(a5)
    800024b2:	faaff0ef          	jal	80001c5c <vTaskSuspendAll>
    800024b6:	fe2ff0ef          	jal	80001c98 <xTaskGetTickCount>
    800024ba:	000a3783          	ld	a5,0(s4)
    800024be:	842a                	mv	s0,a0
    800024c0:	0cf56663          	bltu	a0,a5,8000258c <prvTimerTask+0x128>
    800024c4:	00aa3023          	sd	a0,0(s4)
    800024c8:	4601                	li	a2,0
    800024ca:	18956a63          	bltu	a0,s1,8000265e <prvTimerTask+0x1fa>
    800024ce:	fa2ff0ef          	jal	80001c70 <xTaskResumeAll>
    800024d2:	85a2                	mv	a1,s0
    800024d4:	8526                	mv	a0,s1
    800024d6:	ef3ff0ef          	jal	800023c8 <prvProcessExpiredTimer>
    800024da:	e402                	sd	zero,8(sp)
    800024dc:	e802                	sd	zero,16(sp)
    800024de:	ec02                	sd	zero,24(sp)
    800024e0:	0009b503          	ld	a0,0(s3)
    800024e4:	4601                	li	a2,0
    800024e6:	002c                	addi	a1,sp,8
    800024e8:	be9ff0ef          	jal	800020d0 <xQueueReceive>
    800024ec:	dd45                	beqz	a0,800024a4 <prvTimerTask+0x40>
    800024ee:	67a2                	ld	a5,8(sp)
    800024f0:	fe07c8e3          	bltz	a5,800024e0 <prvTimerTask+0x7c>
    800024f4:	6462                	ld	s0,24(sp)
    800024f6:	d46d                	beqz	s0,800024e0 <prvTimerTask+0x7c>
    800024f8:	741c                	ld	a5,40(s0)
    800024fa:	c789                	beqz	a5,80002504 <prvTimerTask+0xa0>
    800024fc:	00840513          	addi	a0,s0,8
    80002500:	e09ff0ef          	jal	80002308 <uxListRemove>
    80002504:	f94ff0ef          	jal	80001c98 <xTaskGetTickCount>
    80002508:	000a3783          	ld	a5,0(s4)
    8000250c:	84aa                	mv	s1,a0
    8000250e:	02f56163          	bltu	a0,a5,80002530 <prvTimerTask+0xcc>
    80002512:	67a2                	ld	a5,8(sp)
    80002514:	009a3023          	sd	s1,0(s4)
    80002518:	fcfb64e3          	bltu	s6,a5,800024e0 <prvTimerTask+0x7c>
    8000251c:	078a                	slli	a5,a5,0x2
    8000251e:	97d6                	add	a5,a5,s5
    80002520:	439c                	lw	a5,0(a5)
    80002522:	97d6                	add	a5,a5,s5
    80002524:	8782                	jr	a5
    80002526:	6f9c                	ld	a5,24(a5)
    80002528:	55fd                	li	a1,-1
    8000252a:	6388                	ld	a0,0(a5)
    8000252c:	e9dff0ef          	jal	800023c8 <prvProcessExpiredTimer>
    80002530:	00093783          	ld	a5,0(s2)
    80002534:	6398                	ld	a4,0(a5)
    80002536:	fb65                	bnez	a4,80002526 <prvTimerTask+0xc2>
    80002538:	000bb703          	ld	a4,0(s7)
    8000253c:	00fbb023          	sd	a5,0(s7)
    80002540:	00e93023          	sd	a4,0(s2)
    80002544:	b7f9                	j	80002512 <prvTimerTask+0xae>
    80002546:	04844603          	lbu	a2,72(s0)
    8000254a:	66c2                	ld	a3,16(sp)
    8000254c:	7818                	ld	a4,48(s0)
    8000254e:	00166793          	ori	a5,a2,1
    80002552:	04f40423          	sb	a5,72(s0)
    80002556:	00e687b3          	add	a5,a3,a4
    8000255a:	f000                	sd	s0,32(s0)
    8000255c:	e41c                	sd	a5,8(s0)
    8000255e:	00d7b5b3          	sltu	a1,a5,a3
    80002562:	0cf4e463          	bltu	s1,a5,8000262a <prvTimerTask+0x1c6>
    80002566:	40d486b3          	sub	a3,s1,a3
    8000256a:	08e6ea63          	bltu	a3,a4,800025fe <prvTimerTask+0x19a>
    8000256e:	00467693          	andi	a3,a2,4
    80002572:	e6a9                	bnez	a3,800025bc <prvTimerTask+0x158>
    80002574:	9a79                	andi	a2,a2,-2
    80002576:	04c40423          	sb	a2,72(s0)
    8000257a:	603c                	ld	a5,64(s0)
    8000257c:	8522                	mv	a0,s0
    8000257e:	9782                	jalr	a5
    80002580:	b785                	j	800024e0 <prvTimerTask+0x7c>
    80002582:	6f9c                	ld	a5,24(a5)
    80002584:	55fd                	li	a1,-1
    80002586:	6388                	ld	a0,0(a5)
    80002588:	e41ff0ef          	jal	800023c8 <prvProcessExpiredTimer>
    8000258c:	00093783          	ld	a5,0(s2)
    80002590:	6398                	ld	a4,0(a5)
    80002592:	fb65                	bnez	a4,80002582 <prvTimerTask+0x11e>
    80002594:	000bb703          	ld	a4,0(s7)
    80002598:	008a3023          	sd	s0,0(s4)
    8000259c:	00fbb023          	sd	a5,0(s7)
    800025a0:	00e93023          	sd	a4,0(s2)
    800025a4:	eccff0ef          	jal	80001c70 <xTaskResumeAll>
    800025a8:	bf0d                	j	800024da <prvTimerTask+0x76>
    800025aa:	40f487b3          	sub	a5,s1,a5
    800025ae:	0ce7e963          	bltu	a5,a4,80002680 <prvTimerTask+0x21c>
    800025b2:	603c                	ld	a5,64(s0)
    800025b4:	8522                	mv	a0,s0
    800025b6:	9782                	jalr	a5
    800025b8:	7818                	ld	a4,48(s0)
    800025ba:	87e2                	mv	a5,s8
    800025bc:	00f70c33          	add	s8,a4,a5
    800025c0:	f000                	sd	s0,32(s0)
    800025c2:	01843423          	sd	s8,8(s0)
    800025c6:	00ec36b3          	sltu	a3,s8,a4
    800025ca:	ff84f0e3          	bgeu	s1,s8,800025aa <prvTimerTask+0x146>
    800025ce:	00f4f363          	bgeu	s1,a5,800025d4 <prvTimerTask+0x170>
    800025d2:	d2e5                	beqz	a3,800025b2 <prvTimerTask+0x14e>
    800025d4:	00093503          	ld	a0,0(s2)
    800025d8:	00840593          	addi	a1,s0,8
    800025dc:	cffff0ef          	jal	800022da <vListInsert>
    800025e0:	bf69                	j	8000257a <prvTimerTask+0x116>
    800025e2:	04844703          	lbu	a4,72(s0)
    800025e6:	67c2                	ld	a5,16(sp)
    800025e8:	00176713          	ori	a4,a4,1
    800025ec:	04e40423          	sb	a4,72(s0)
    800025f0:	f81c                	sd	a5,48(s0)
    800025f2:	cfd1                	beqz	a5,8000268e <prvTimerTask+0x22a>
    800025f4:	97a6                	add	a5,a5,s1
    800025f6:	e41c                	sd	a5,8(s0)
    800025f8:	f000                	sd	s0,32(s0)
    800025fa:	02f4eb63          	bltu	s1,a5,80002630 <prvTimerTask+0x1cc>
    800025fe:	000bb503          	ld	a0,0(s7)
    80002602:	00840593          	addi	a1,s0,8
    80002606:	cd5ff0ef          	jal	800022da <vListInsert>
    8000260a:	bdd9                	j	800024e0 <prvTimerTask+0x7c>
    8000260c:	04844783          	lbu	a5,72(s0)
    80002610:	9bf9                	andi	a5,a5,-2
    80002612:	04f40423          	sb	a5,72(s0)
    80002616:	b5e9                	j	800024e0 <prvTimerTask+0x7c>
    80002618:	04844783          	lbu	a5,72(s0)
    8000261c:	0027f713          	andi	a4,a5,2
    80002620:	cf21                	beqz	a4,80002678 <prvTimerTask+0x214>
    80002622:	9bf9                	andi	a5,a5,-2
    80002624:	04f40423          	sb	a5,72(s0)
    80002628:	bd65                	j	800024e0 <prvTimerTask+0x7c>
    8000262a:	00d4f363          	bgeu	s1,a3,80002630 <prvTimerTask+0x1cc>
    8000262e:	d1a1                	beqz	a1,8000256e <prvTimerTask+0x10a>
    80002630:	00093503          	ld	a0,0(s2)
    80002634:	00840593          	addi	a1,s0,8
    80002638:	ca3ff0ef          	jal	800022da <vListInsert>
    8000263c:	b555                	j	800024e0 <prvTimerTask+0x7c>
    8000263e:	e1eff0ef          	jal	80001c5c <vTaskSuspendAll>
    80002642:	e56ff0ef          	jal	80001c98 <xTaskGetTickCount>
    80002646:	000a3783          	ld	a5,0(s4)
    8000264a:	842a                	mv	s0,a0
    8000264c:	f4f560e3          	bltu	a0,a5,8000258c <prvTimerTask+0x128>
    80002650:	000bb783          	ld	a5,0(s7)
    80002654:	008a3023          	sd	s0,0(s4)
    80002658:	6390                	ld	a2,0(a5)
    8000265a:	00163613          	seqz	a2,a2
    8000265e:	0009b503          	ld	a0,0(s3)
    80002662:	408485b3          	sub	a1,s1,s0
    80002666:	bf9ff0ef          	jal	8000225e <vQueueWaitForMessageRestricted>
    8000266a:	e06ff0ef          	jal	80001c70 <xTaskResumeAll>
    8000266e:	e60516e3          	bnez	a0,800024da <prvTimerTask+0x76>
    80002672:	00000073          	ecall
    80002676:	b595                	j	800024da <prvTimerTask+0x76>
    80002678:	8522                	mv	a0,s0
    8000267a:	23a000ef          	jal	800028b4 <vPortFree>
    8000267e:	b58d                	j	800024e0 <prvTimerTask+0x7c>
    80002680:	000bb503          	ld	a0,0(s7)
    80002684:	00840593          	addi	a1,s0,8
    80002688:	c53ff0ef          	jal	800022da <vListInsert>
    8000268c:	b5fd                	j	8000257a <prvTimerTask+0x116>
    8000268e:	30047073          	csrci	mstatus,8
    80002692:	a001                	j	80002692 <prvTimerTask+0x22e>

0000000080002694 <xTimerCreateTimerTask>:
    80002694:	1141                	addi	sp,sp,-16
    80002696:	e406                	sd	ra,8(sp)
    80002698:	c9fff0ef          	jal	80002336 <prvCheckForValidListAndQueue>
    8000269c:	00005797          	auipc	a5,0x5
    800026a0:	9f47b783          	ld	a5,-1548(a5) # 80007090 <xTimerQueue>
    800026a4:	c785                	beqz	a5,800026cc <xTimerCreateTimerTask+0x38>
    800026a6:	00005797          	auipc	a5,0x5
    800026aa:	9e278793          	addi	a5,a5,-1566 # 80007088 <xTimerTaskHandle>
    800026ae:	4719                	li	a4,6
    800026b0:	4681                	li	a3,0
    800026b2:	08000613          	li	a2,128
    800026b6:	00000597          	auipc	a1,0x0
    800026ba:	6b258593          	addi	a1,a1,1714 # 80002d68 <memcpy+0x19a>
    800026be:	00000517          	auipc	a0,0x0
    800026c2:	da650513          	addi	a0,a0,-602 # 80002464 <prvTimerTask>
    800026c6:	9dcff0ef          	jal	800018a2 <xTaskCreate>
    800026ca:	e501                	bnez	a0,800026d2 <xTimerCreateTimerTask+0x3e>
    800026cc:	30047073          	csrci	mstatus,8
    800026d0:	a001                	j	800026d0 <xTimerCreateTimerTask+0x3c>
    800026d2:	60a2                	ld	ra,8(sp)
    800026d4:	0141                	addi	sp,sp,16
    800026d6:	8082                	ret

00000000800026d8 <pvPortMalloc>:
    800026d8:	1101                	addi	sp,sp,-32
    800026da:	ec06                	sd	ra,24(sp)
    800026dc:	fff50713          	addi	a4,a0,-1
    800026e0:	57b9                	li	a5,-18
    800026e2:	04e7ed63          	bltu	a5,a4,8000273c <pvPortMalloc+0x64>
    800026e6:	00f57793          	andi	a5,a0,15
    800026ea:	01050693          	addi	a3,a0,16
    800026ee:	eba5                	bnez	a5,8000275e <pvPortMalloc+0x86>
    800026f0:	e436                	sd	a3,8(sp)
    800026f2:	d6aff0ef          	jal	80001c5c <vTaskSuspendAll>
    800026f6:	00005597          	auipc	a1,0x5
    800026fa:	9d258593          	addi	a1,a1,-1582 # 800070c8 <pxEnd>
    800026fe:	66a2                	ld	a3,8(sp)
    80002700:	619c                	ld	a5,0(a1)
    80002702:	8536                	mv	a0,a3
    80002704:	c7dd                	beqz	a5,800027b2 <pvPortMalloc+0xda>
    80002706:	0406c563          	bltz	a3,80002750 <pvPortMalloc+0x78>
    8000270a:	00005897          	auipc	a7,0x5
    8000270e:	9b68b883          	ld	a7,-1610(a7) # 800070c0 <xFreeBytesRemaining>
    80002712:	02d8ef63          	bltu	a7,a3,80002750 <pvPortMalloc+0x78>
    80002716:	00001797          	auipc	a5,0x1
    8000271a:	8ca7b783          	ld	a5,-1846(a5) # 80002fe0 <xStart>
    8000271e:	00001517          	auipc	a0,0x1
    80002722:	8d250513          	addi	a0,a0,-1838 # 80002ff0 <ucHeap>
    80002726:	00a7e863          	bltu	a5,a0,80002736 <pvPortMalloc+0x5e>
    8000272a:	00005817          	auipc	a6,0x5
    8000272e:	8c580813          	addi	a6,a6,-1851 # 80006fef <ucHeap+0x3fff>
    80002732:	04f87d63          	bgeu	a6,a5,8000278c <pvPortMalloc+0xb4>
    80002736:	30047073          	csrci	mstatus,8
    8000273a:	a001                	j	8000273a <pvPortMalloc+0x62>
    8000273c:	d20ff0ef          	jal	80001c5c <vTaskSuspendAll>
    80002740:	00005597          	auipc	a1,0x5
    80002744:	98858593          	addi	a1,a1,-1656 # 800070c8 <pxEnd>
    80002748:	619c                	ld	a5,0(a1)
    8000274a:	4501                	li	a0,0
    8000274c:	4681                	li	a3,0
    8000274e:	c3b5                	beqz	a5,800027b2 <pvPortMalloc+0xda>
    80002750:	d20ff0ef          	jal	80001c70 <xTaskResumeAll>
    80002754:	4701                	li	a4,0
    80002756:	60e2                	ld	ra,24(sp)
    80002758:	853a                	mv	a0,a4
    8000275a:	6105                	addi	sp,sp,32
    8000275c:	8082                	ret
    8000275e:	fef78713          	addi	a4,a5,-17
    80002762:	fcd76de3          	bltu	a4,a3,8000273c <pvPortMalloc+0x64>
    80002766:	02050513          	addi	a0,a0,32
    8000276a:	40f506b3          	sub	a3,a0,a5
    8000276e:	e436                	sd	a3,8(sp)
    80002770:	cecff0ef          	jal	80001c5c <vTaskSuspendAll>
    80002774:	00005597          	auipc	a1,0x5
    80002778:	95458593          	addi	a1,a1,-1708 # 800070c8 <pxEnd>
    8000277c:	66a2                	ld	a3,8(sp)
    8000277e:	619c                	ld	a5,0(a1)
    80002780:	8536                	mv	a0,a3
    80002782:	cb85                	beqz	a5,800027b2 <pvPortMalloc+0xda>
    80002784:	fc0546e3          	bltz	a0,80002750 <pvPortMalloc+0x78>
    80002788:	f2c9                	bnez	a3,8000270a <pvPortMalloc+0x32>
    8000278a:	b7d9                	j	80002750 <pvPortMalloc+0x78>
    8000278c:	00001317          	auipc	t1,0x1
    80002790:	85430313          	addi	t1,t1,-1964 # 80002fe0 <xStart>
    80002794:	6790                	ld	a2,8(a5)
    80002796:	06d67b63          	bgeu	a2,a3,8000280c <pvPortMalloc+0x134>
    8000279a:	6398                	ld	a4,0(a5)
    8000279c:	cb25                	beqz	a4,8000280c <pvPortMalloc+0x134>
    8000279e:	00e86463          	bltu	a6,a4,800027a6 <pvPortMalloc+0xce>
    800027a2:	00a77563          	bgeu	a4,a0,800027ac <pvPortMalloc+0xd4>
    800027a6:	30047073          	csrci	mstatus,8
    800027aa:	a001                	j	800027aa <pvPortMalloc+0xd2>
    800027ac:	833e                	mv	t1,a5
    800027ae:	87ba                	mv	a5,a4
    800027b0:	b7d5                	j	80002794 <pvPortMalloc+0xbc>
    800027b2:	00001797          	auipc	a5,0x1
    800027b6:	83e78793          	addi	a5,a5,-1986 # 80002ff0 <ucHeap>
    800027ba:	00f7f713          	andi	a4,a5,15
    800027be:	863e                	mv	a2,a5
    800027c0:	c719                	beqz	a4,800027ce <pvPortMalloc+0xf6>
    800027c2:	00001797          	auipc	a5,0x1
    800027c6:	83d78793          	addi	a5,a5,-1987 # 80002fff <ucHeap+0xf>
    800027ca:	9bc1                	andi	a5,a5,-16
    800027cc:	863e                	mv	a2,a5
    800027ce:	00005717          	auipc	a4,0x5
    800027d2:	81270713          	addi	a4,a4,-2030 # 80006fe0 <ucHeap+0x3ff0>
    800027d6:	9b41                	andi	a4,a4,-16
    800027d8:	00001817          	auipc	a6,0x1
    800027dc:	80083823          	sd	zero,-2032(a6) # 80002fe8 <xStart+0x8>
    800027e0:	00001817          	auipc	a6,0x1
    800027e4:	80c83023          	sd	a2,-2048(a6) # 80002fe0 <xStart>
    800027e8:	40f707b3          	sub	a5,a4,a5
    800027ec:	00073423          	sd	zero,8(a4)
    800027f0:	00073023          	sd	zero,0(a4)
    800027f4:	e61c                	sd	a5,8(a2)
    800027f6:	00005817          	auipc	a6,0x5
    800027fa:	8cf83123          	sd	a5,-1854(a6) # 800070b8 <xMinimumEverFreeBytesRemaining>
    800027fe:	00005817          	auipc	a6,0x5
    80002802:	8cf83123          	sd	a5,-1854(a6) # 800070c0 <xFreeBytesRemaining>
    80002806:	e198                	sd	a4,0(a1)
    80002808:	e218                	sd	a4,0(a2)
    8000280a:	bfad                	j	80002784 <pvPortMalloc+0xac>
    8000280c:	6198                	ld	a4,0(a1)
    8000280e:	f4f701e3          	beq	a4,a5,80002750 <pvPortMalloc+0x78>
    80002812:	00033703          	ld	a4,0(t1)
    80002816:	0741                	addi	a4,a4,16
    80002818:	00e86463          	bltu	a6,a4,80002820 <pvPortMalloc+0x148>
    8000281c:	00a77563          	bgeu	a4,a0,80002826 <pvPortMalloc+0x14e>
    80002820:	30047073          	csrci	mstatus,8
    80002824:	a001                	j	80002824 <pvPortMalloc+0x14c>
    80002826:	638c                	ld	a1,0(a5)
    80002828:	00b33023          	sd	a1,0(t1)
    8000282c:	00d67563          	bgeu	a2,a3,80002836 <pvPortMalloc+0x15e>
    80002830:	30047073          	csrci	mstatus,8
    80002834:	a001                	j	80002834 <pvPortMalloc+0x15c>
    80002836:	40d60533          	sub	a0,a2,a3
    8000283a:	02000813          	li	a6,32
    8000283e:	02a87063          	bgeu	a6,a0,8000285e <pvPortMalloc+0x186>
    80002842:	00d78633          	add	a2,a5,a3
    80002846:	00f67813          	andi	a6,a2,15
    8000284a:	00080563          	beqz	a6,80002854 <pvPortMalloc+0x17c>
    8000284e:	30047073          	csrci	mstatus,8
    80002852:	a001                	j	80002852 <pvPortMalloc+0x17a>
    80002854:	e608                	sd	a0,8(a2)
    80002856:	e20c                	sd	a1,0(a2)
    80002858:	00c33023          	sd	a2,0(t1)
    8000285c:	8636                	mv	a2,a3
    8000285e:	00005697          	auipc	a3,0x5
    80002862:	85a6b683          	ld	a3,-1958(a3) # 800070b8 <xMinimumEverFreeBytesRemaining>
    80002866:	40c888b3          	sub	a7,a7,a2
    8000286a:	00005597          	auipc	a1,0x5
    8000286e:	8515bb23          	sd	a7,-1962(a1) # 800070c0 <xFreeBytesRemaining>
    80002872:	00d8f663          	bgeu	a7,a3,8000287e <pvPortMalloc+0x1a6>
    80002876:	00005697          	auipc	a3,0x5
    8000287a:	8516b123          	sd	a7,-1982(a3) # 800070b8 <xMinimumEverFreeBytesRemaining>
    8000287e:	00005697          	auipc	a3,0x5
    80002882:	8326b683          	ld	a3,-1998(a3) # 800070b0 <xNumberOfSuccessfulAllocations>
    80002886:	55fd                	li	a1,-1
    80002888:	15fe                	slli	a1,a1,0x3f
    8000288a:	8e4d                	or	a2,a2,a1
    8000288c:	0007b023          	sd	zero,0(a5)
    80002890:	e790                	sd	a2,8(a5)
    80002892:	00168793          	addi	a5,a3,1
    80002896:	e43a                	sd	a4,8(sp)
    80002898:	00005697          	auipc	a3,0x5
    8000289c:	80f6bc23          	sd	a5,-2024(a3) # 800070b0 <xNumberOfSuccessfulAllocations>
    800028a0:	bd0ff0ef          	jal	80001c70 <xTaskResumeAll>
    800028a4:	6722                	ld	a4,8(sp)
    800028a6:	00f77793          	andi	a5,a4,15
    800028aa:	ea0786e3          	beqz	a5,80002756 <pvPortMalloc+0x7e>
    800028ae:	30047073          	csrci	mstatus,8
    800028b2:	a001                	j	800028b2 <pvPortMalloc+0x1da>

00000000800028b4 <vPortFree>:
    800028b4:	c115                	beqz	a0,800028d8 <vPortFree+0x24>
    800028b6:	ff050793          	addi	a5,a0,-16
    800028ba:	00000717          	auipc	a4,0x0
    800028be:	73670713          	addi	a4,a4,1846 # 80002ff0 <ucHeap>
    800028c2:	00e7e863          	bltu	a5,a4,800028d2 <vPortFree+0x1e>
    800028c6:	00004617          	auipc	a2,0x4
    800028ca:	72960613          	addi	a2,a2,1833 # 80006fef <ucHeap+0x3fff>
    800028ce:	00f67663          	bgeu	a2,a5,800028da <vPortFree+0x26>
    800028d2:	30047073          	csrci	mstatus,8
    800028d6:	a001                	j	800028d6 <vPortFree+0x22>
    800028d8:	8082                	ret
    800028da:	ff853683          	ld	a3,-8(a0)
    800028de:	0006c563          	bltz	a3,800028e8 <vPortFree+0x34>
    800028e2:	30047073          	csrci	mstatus,8
    800028e6:	a001                	j	800028e6 <vPortFree+0x32>
    800028e8:	ff053583          	ld	a1,-16(a0)
    800028ec:	c581                	beqz	a1,800028f4 <vPortFree+0x40>
    800028ee:	30047073          	csrci	mstatus,8
    800028f2:	a001                	j	800028f2 <vPortFree+0x3e>
    800028f4:	1101                	addi	sp,sp,-32
    800028f6:	0686                	slli	a3,a3,0x1
    800028f8:	8285                	srli	a3,a3,0x1
    800028fa:	ec06                	sd	ra,24(sp)
    800028fc:	fed53c23          	sd	a3,-8(a0)
    80002900:	e43e                	sd	a5,8(sp)
    80002902:	e02a                	sd	a0,0(sp)
    80002904:	b58ff0ef          	jal	80001c5c <vTaskSuspendAll>
    80002908:	6502                	ld	a0,0(sp)
    8000290a:	00004597          	auipc	a1,0x4
    8000290e:	7b65b583          	ld	a1,1974(a1) # 800070c0 <xFreeBytesRemaining>
    80002912:	67a2                	ld	a5,8(sp)
    80002914:	ff853803          	ld	a6,-8(a0)
    80002918:	00000897          	auipc	a7,0x0
    8000291c:	6c888893          	addi	a7,a7,1736 # 80002fe0 <xStart>
    80002920:	86c6                	mv	a3,a7
    80002922:	95c2                	add	a1,a1,a6
    80002924:	00004317          	auipc	t1,0x4
    80002928:	78b33e23          	sd	a1,1948(t1) # 800070c0 <xFreeBytesRemaining>
    8000292c:	00004617          	auipc	a2,0x4
    80002930:	6c360613          	addi	a2,a2,1731 # 80006fef <ucHeap+0x3fff>
    80002934:	00000717          	auipc	a4,0x0
    80002938:	6bc70713          	addi	a4,a4,1724 # 80002ff0 <ucHeap>
    8000293c:	85b6                	mv	a1,a3
    8000293e:	6294                	ld	a3,0(a3)
    80002940:	fef6eee3          	bltu	a3,a5,8000293c <vPortFree+0x88>
    80002944:	01158963          	beq	a1,a7,80002956 <vPortFree+0xa2>
    80002948:	00e5e463          	bltu	a1,a4,80002950 <vPortFree+0x9c>
    8000294c:	00b67563          	bgeu	a2,a1,80002956 <vPortFree+0xa2>
    80002950:	30047073          	csrci	mstatus,8
    80002954:	a001                	j	80002954 <vPortFree+0xa0>
    80002956:	6598                	ld	a4,8(a1)
    80002958:	00e58633          	add	a2,a1,a4
    8000295c:	04c78463          	beq	a5,a2,800029a4 <vPortFree+0xf0>
    80002960:	01078733          	add	a4,a5,a6
    80002964:	02e68463          	beq	a3,a4,8000298c <vPortFree+0xd8>
    80002968:	fed53823          	sd	a3,-16(a0)
    8000296c:	00f58363          	beq	a1,a5,80002972 <vPortFree+0xbe>
    80002970:	e19c                	sd	a5,0(a1)
    80002972:	00004797          	auipc	a5,0x4
    80002976:	7367b783          	ld	a5,1846(a5) # 800070a8 <xNumberOfSuccessfulFrees>
    8000297a:	60e2                	ld	ra,24(sp)
    8000297c:	0785                	addi	a5,a5,1
    8000297e:	00004717          	auipc	a4,0x4
    80002982:	72f73523          	sd	a5,1834(a4) # 800070a8 <xNumberOfSuccessfulFrees>
    80002986:	6105                	addi	sp,sp,32
    80002988:	ae8ff06f          	j	80001c70 <xTaskResumeAll>
    8000298c:	00004717          	auipc	a4,0x4
    80002990:	73c73703          	ld	a4,1852(a4) # 800070c8 <pxEnd>
    80002994:	fce68ae3          	beq	a3,a4,80002968 <vPortFree+0xb4>
    80002998:	6698                	ld	a4,8(a3)
    8000299a:	6294                	ld	a3,0(a3)
    8000299c:	9742                	add	a4,a4,a6
    8000299e:	e798                	sd	a4,8(a5)
    800029a0:	e394                	sd	a3,0(a5)
    800029a2:	b7e9                	j	8000296c <vPortFree+0xb8>
    800029a4:	983a                	add	a6,a6,a4
    800029a6:	0105b423          	sd	a6,8(a1)
    800029aa:	010587b3          	add	a5,a1,a6
    800029ae:	fcf692e3          	bne	a3,a5,80002972 <vPortFree+0xbe>
    800029b2:	00004717          	auipc	a4,0x4
    800029b6:	71673703          	ld	a4,1814(a4) # 800070c8 <pxEnd>
    800029ba:	87ae                	mv	a5,a1
    800029bc:	fce69ee3          	bne	a3,a4,80002998 <vPortFree+0xe4>
    800029c0:	e194                	sd	a3,0(a1)
    800029c2:	bf45                	j	80002972 <vPortFree+0xbe>

00000000800029c4 <vPortSetupTimerInterrupt>:
    800029c4:	1141                	addi	sp,sp,-16
    800029c6:	f14027f3          	csrr	a5,mhartid
    800029ca:	c63e                	sw	a5,12(sp)
    800029cc:	4832                	lw	a6,12(sp)
    800029ce:	020047b7          	lui	a5,0x2004
    800029d2:	0200c737          	lui	a4,0x200c
    800029d6:	1802                	slli	a6,a6,0x20
    800029d8:	02085813          	srli	a6,a6,0x20
    800029dc:	080e                	slli	a6,a6,0x3
    800029de:	0200c537          	lui	a0,0x200c
    800029e2:	983e                	add	a6,a6,a5
    800029e4:	1771                	addi	a4,a4,-4 # 200bffc <_start-0x7dff4004>
    800029e6:	1561                	addi	a0,a0,-8 # 200bff8 <_start-0x7dff4008>
    800029e8:	00004797          	auipc	a5,0x4
    800029ec:	6f07b823          	sd	a6,1776(a5) # 800070d8 <pullMachineTimerCompareRegister>
    800029f0:	4314                	lw	a3,0(a4)
    800029f2:	410c                	lw	a1,0(a0)
    800029f4:	431c                	lw	a5,0(a4)
    800029f6:	0007861b          	sext.w	a2,a5
    800029fa:	fed79be3          	bne	a5,a3,800029f0 <vPortSetupTimerInterrupt+0x2c>
    800029fe:	1582                	slli	a1,a1,0x20
    80002a00:	9181                	srli	a1,a1,0x20
    80002a02:	1602                	slli	a2,a2,0x20
    80002a04:	6789                	lui	a5,0x2
    80002a06:	71078793          	addi	a5,a5,1808 # 2710 <_start-0x7fffd8f0>
    80002a0a:	8e4d                	or	a2,a2,a1
    80002a0c:	963e                	add	a2,a2,a5
    80002a0e:	00004717          	auipc	a4,0x4
    80002a12:	6cc73923          	sd	a2,1746(a4) # 800070e0 <ullNextTime>
    80002a16:	00c83023          	sd	a2,0(a6)
    80002a1a:	00004717          	auipc	a4,0x4
    80002a1e:	6c673703          	ld	a4,1734(a4) # 800070e0 <ullNextTime>
    80002a22:	97ba                	add	a5,a5,a4
    80002a24:	00004717          	auipc	a4,0x4
    80002a28:	6af73e23          	sd	a5,1724(a4) # 800070e0 <ullNextTime>
    80002a2c:	0141                	addi	sp,sp,16
    80002a2e:	8082                	ret

0000000080002a30 <xPortStartScheduler>:
    80002a30:	00014797          	auipc	a5,0x14
    80002a34:	5c078793          	addi	a5,a5,1472 # 80016ff0 <__freertos_irq_stack_top>
    80002a38:	8bbd                	andi	a5,a5,15
    80002a3a:	c781                	beqz	a5,80002a42 <xPortStartScheduler+0x12>
    80002a3c:	30047073          	csrci	mstatus,8
    80002a40:	a001                	j	80002a40 <xPortStartScheduler+0x10>
    80002a42:	1141                	addi	sp,sp,-16
    80002a44:	e406                	sd	ra,8(sp)
    80002a46:	f7fff0ef          	jal	800029c4 <vPortSetupTimerInterrupt>
    80002a4a:	6785                	lui	a5,0x1
    80002a4c:	8807879b          	addiw	a5,a5,-1920 # 880 <_start-0x7ffff780>
    80002a50:	3047a073          	csrs	mie,a5
    80002a54:	056000ef          	jal	80002aaa <xPortStartFirstTask>
    80002a58:	60a2                	ld	ra,8(sp)
    80002a5a:	4501                	li	a0,0
    80002a5c:	0141                	addi	sp,sp,16
    80002a5e:	8082                	ret

0000000080002a60 <pxPortInitialiseStack>:
    80002a60:	1561                	addi	a0,a0,-8
    80002a62:	00053023          	sd	zero,0(a0)
    80002a66:	f5050513          	addi	a0,a0,-176
    80002a6a:	e110                	sd	a2,0(a0)
    80002a6c:	fd050513          	addi	a0,a0,-48
    80002a70:	00004297          	auipc	t0,0x4
    80002a74:	6602b283          	ld	t0,1632(t0) # 800070d0 <xTaskReturnAddress>
    80002a78:	00553023          	sd	t0,0(a0)
    80002a7c:	300022f3          	csrr	t0,mstatus
    80002a80:	ff72f293          	andi	t0,t0,-9
    80002a84:	18800313          	li	t1,392
    80002a88:	0312                	slli	t1,t1,0x4
    80002a8a:	0062e2b3          	or	t0,t0,t1
    80002a8e:	1561                	addi	a0,a0,-8
    80002a90:	00553023          	sd	t0,0(a0)
    80002a94:	4281                	li	t0,0

0000000080002a96 <chip_specific_stack_frame>:
    80002a96:	00028763          	beqz	t0,80002aa4 <chip_specific_stack_frame+0xe>
    80002a9a:	1561                	addi	a0,a0,-8
    80002a9c:	00053023          	sd	zero,0(a0)
    80002aa0:	12fd                	addi	t0,t0,-1
    80002aa2:	bfd5                	j	80002a96 <chip_specific_stack_frame>
    80002aa4:	1561                	addi	a0,a0,-8
    80002aa6:	e10c                	sd	a1,0(a0)
    80002aa8:	8082                	ret

0000000080002aaa <xPortStartFirstTask>:
    80002aaa:	00004117          	auipc	sp,0x4
    80002aae:	5ce13103          	ld	sp,1486(sp) # 80007078 <pxCurrentTCB>
    80002ab2:	6102                	ld	sp,0(sp)
    80002ab4:	6082                	ld	ra,0(sp)
    80002ab6:	62a2                	ld	t0,8(sp)
    80002ab8:	02a1                	addi	t0,t0,8
    80002aba:	30029073          	csrw	mstatus,t0
    80002abe:	73a2                	ld	t2,40(sp)
    80002ac0:	7442                	ld	s0,48(sp)
    80002ac2:	74e2                	ld	s1,56(sp)
    80002ac4:	6506                	ld	a0,64(sp)
    80002ac6:	65a6                	ld	a1,72(sp)
    80002ac8:	6646                	ld	a2,80(sp)
    80002aca:	66e6                	ld	a3,88(sp)
    80002acc:	7706                	ld	a4,96(sp)
    80002ace:	77a6                	ld	a5,104(sp)
    80002ad0:	7846                	ld	a6,112(sp)
    80002ad2:	78e6                	ld	a7,120(sp)
    80002ad4:	690a                	ld	s2,128(sp)
    80002ad6:	69aa                	ld	s3,136(sp)
    80002ad8:	6a4a                	ld	s4,144(sp)
    80002ada:	6aea                	ld	s5,152(sp)
    80002adc:	7b0a                	ld	s6,160(sp)
    80002ade:	7baa                	ld	s7,168(sp)
    80002ae0:	7c4a                	ld	s8,176(sp)
    80002ae2:	7cea                	ld	s9,184(sp)
    80002ae4:	6d0e                	ld	s10,192(sp)
    80002ae6:	6dae                	ld	s11,200(sp)
    80002ae8:	6e4e                	ld	t3,208(sp)
    80002aea:	6eee                	ld	t4,216(sp)
    80002aec:	7f0e                	ld	t5,224(sp)
    80002aee:	7fae                	ld	t6,232(sp)
    80002af0:	72ce                	ld	t0,240(sp)
    80002af2:	00000317          	auipc	t1,0x0
    80002af6:	2ae33303          	ld	t1,686(t1) # 80002da0 <pxCriticalNesting>
    80002afa:	00533023          	sd	t0,0(t1)
    80002afe:	62e2                	ld	t0,24(sp)
    80002b00:	7302                	ld	t1,32(sp)
    80002b02:	0f810113          	addi	sp,sp,248
    80002b06:	8082                	ret

0000000080002b08 <freertos_risc_v_application_exception_handler>:
    80002b08:	342022f3          	csrr	t0,mcause
    80002b0c:	34102373          	csrr	t1,mepc
    80002b10:	300023f3          	csrr	t2,mstatus
    80002b14:	a001                	j	80002b14 <freertos_risc_v_application_exception_handler+0xc>

0000000080002b16 <freertos_risc_v_application_interrupt_handler>:
    80002b16:	342022f3          	csrr	t0,mcause
    80002b1a:	34102373          	csrr	t1,mepc
    80002b1e:	300023f3          	csrr	t2,mstatus
    80002b22:	a001                	j	80002b22 <freertos_risc_v_application_interrupt_handler+0xc>

0000000080002b24 <memset>:
    80002b24:	433d                	li	t1,15
    80002b26:	872a                	mv	a4,a0
    80002b28:	02c37163          	bgeu	t1,a2,80002b4a <memset+0x26>
    80002b2c:	00f77793          	andi	a5,a4,15
    80002b30:	e3c1                	bnez	a5,80002bb0 <memset+0x8c>
    80002b32:	e1bd                	bnez	a1,80002b98 <memset+0x74>
    80002b34:	ff067693          	andi	a3,a2,-16
    80002b38:	8a3d                	andi	a2,a2,15
    80002b3a:	96ba                	add	a3,a3,a4
    80002b3c:	e30c                	sd	a1,0(a4)
    80002b3e:	e70c                	sd	a1,8(a4)
    80002b40:	0741                	addi	a4,a4,16
    80002b42:	fed76de3          	bltu	a4,a3,80002b3c <memset+0x18>
    80002b46:	e211                	bnez	a2,80002b4a <memset+0x26>
    80002b48:	8082                	ret
    80002b4a:	40c306b3          	sub	a3,t1,a2
    80002b4e:	068a                	slli	a3,a3,0x2
    80002b50:	00000297          	auipc	t0,0x0
    80002b54:	9696                	add	a3,a3,t0
    80002b56:	00a68067          	jr	10(a3)
    80002b5a:	00b70723          	sb	a1,14(a4)
    80002b5e:	00b706a3          	sb	a1,13(a4)
    80002b62:	00b70623          	sb	a1,12(a4)
    80002b66:	00b705a3          	sb	a1,11(a4)
    80002b6a:	00b70523          	sb	a1,10(a4)
    80002b6e:	00b704a3          	sb	a1,9(a4)
    80002b72:	00b70423          	sb	a1,8(a4)
    80002b76:	00b703a3          	sb	a1,7(a4)
    80002b7a:	00b70323          	sb	a1,6(a4)
    80002b7e:	00b702a3          	sb	a1,5(a4)
    80002b82:	00b70223          	sb	a1,4(a4)
    80002b86:	00b701a3          	sb	a1,3(a4)
    80002b8a:	00b70123          	sb	a1,2(a4)
    80002b8e:	00b700a3          	sb	a1,1(a4)
    80002b92:	00b70023          	sb	a1,0(a4)
    80002b96:	8082                	ret
    80002b98:	0ff5f593          	zext.b	a1,a1
    80002b9c:	00859693          	slli	a3,a1,0x8
    80002ba0:	8dd5                	or	a1,a1,a3
    80002ba2:	01059693          	slli	a3,a1,0x10
    80002ba6:	8dd5                	or	a1,a1,a3
    80002ba8:	02059693          	slli	a3,a1,0x20
    80002bac:	8dd5                	or	a1,a1,a3
    80002bae:	b759                	j	80002b34 <memset+0x10>
    80002bb0:	00279693          	slli	a3,a5,0x2
    80002bb4:	00000297          	auipc	t0,0x0
    80002bb8:	9696                	add	a3,a3,t0
    80002bba:	8286                	mv	t0,ra
    80002bbc:	fa2680e7          	jalr	-94(a3)
    80002bc0:	8096                	mv	ra,t0
    80002bc2:	17c1                	addi	a5,a5,-16
    80002bc4:	8f1d                	sub	a4,a4,a5
    80002bc6:	963e                	add	a2,a2,a5
    80002bc8:	f8c371e3          	bgeu	t1,a2,80002b4a <memset+0x26>
    80002bcc:	b79d                	j	80002b32 <memset+0xe>

0000000080002bce <memcpy>:
    80002bce:	00a5c7b3          	xor	a5,a1,a0
    80002bd2:	8b9d                	andi	a5,a5,7
    80002bd4:	00c508b3          	add	a7,a0,a2
    80002bd8:	e7b1                	bnez	a5,80002c24 <memcpy+0x56>
    80002bda:	00863613          	sltiu	a2,a2,8
    80002bde:	e239                	bnez	a2,80002c24 <memcpy+0x56>
    80002be0:	00757793          	andi	a5,a0,7
    80002be4:	872a                	mv	a4,a0
    80002be6:	e7cd                	bnez	a5,80002c90 <memcpy+0xc2>
    80002be8:	ff88f613          	andi	a2,a7,-8
    80002bec:	40e606b3          	sub	a3,a2,a4
    80002bf0:	04000793          	li	a5,64
    80002bf4:	04d7c463          	blt	a5,a3,80002c3c <memcpy+0x6e>
    80002bf8:	86ae                	mv	a3,a1
    80002bfa:	87ba                	mv	a5,a4
    80002bfc:	02c77163          	bgeu	a4,a2,80002c1e <memcpy+0x50>
    80002c00:	0006b803          	ld	a6,0(a3)
    80002c04:	07a1                	addi	a5,a5,8
    80002c06:	06a1                	addi	a3,a3,8
    80002c08:	ff07bc23          	sd	a6,-8(a5)
    80002c0c:	fec7eae3          	bltu	a5,a2,80002c00 <memcpy+0x32>
    80002c10:	167d                	addi	a2,a2,-1
    80002c12:	8e19                	sub	a2,a2,a4
    80002c14:	9a61                	andi	a2,a2,-8
    80002c16:	05a1                	addi	a1,a1,8
    80002c18:	0721                	addi	a4,a4,8
    80002c1a:	95b2                	add	a1,a1,a2
    80002c1c:	9732                	add	a4,a4,a2
    80002c1e:	01176663          	bltu	a4,a7,80002c2a <memcpy+0x5c>
    80002c22:	8082                	ret
    80002c24:	872a                	mv	a4,a0
    80002c26:	ff157ee3          	bgeu	a0,a7,80002c22 <memcpy+0x54>
    80002c2a:	0005c783          	lbu	a5,0(a1)
    80002c2e:	0705                	addi	a4,a4,1
    80002c30:	0585                	addi	a1,a1,1
    80002c32:	fef70fa3          	sb	a5,-1(a4)
    80002c36:	fee89ae3          	bne	a7,a4,80002c2a <memcpy+0x5c>
    80002c3a:	8082                	ret
    80002c3c:	6194                	ld	a3,0(a1)
    80002c3e:	0085b283          	ld	t0,8(a1)
    80002c42:	0105bf83          	ld	t6,16(a1)
    80002c46:	0185bf03          	ld	t5,24(a1)
    80002c4a:	0205be83          	ld	t4,32(a1)
    80002c4e:	0285be03          	ld	t3,40(a1)
    80002c52:	0305b303          	ld	t1,48(a1)
    80002c56:	0385b803          	ld	a6,56(a1)
    80002c5a:	e314                	sd	a3,0(a4)
    80002c5c:	61b4                	ld	a3,64(a1)
    80002c5e:	04870713          	addi	a4,a4,72
    80002c62:	fc573023          	sd	t0,-64(a4)
    80002c66:	fed73c23          	sd	a3,-8(a4)
    80002c6a:	fdf73423          	sd	t6,-56(a4)
    80002c6e:	40e606b3          	sub	a3,a2,a4
    80002c72:	fde73823          	sd	t5,-48(a4)
    80002c76:	fdd73c23          	sd	t4,-40(a4)
    80002c7a:	ffc73023          	sd	t3,-32(a4)
    80002c7e:	fe673423          	sd	t1,-24(a4)
    80002c82:	ff073823          	sd	a6,-16(a4)
    80002c86:	04858593          	addi	a1,a1,72
    80002c8a:	fad7c9e3          	blt	a5,a3,80002c3c <memcpy+0x6e>
    80002c8e:	b7ad                	j	80002bf8 <memcpy+0x2a>
    80002c90:	0005c683          	lbu	a3,0(a1)
    80002c94:	0705                	addi	a4,a4,1
    80002c96:	00777793          	andi	a5,a4,7
    80002c9a:	fed70fa3          	sb	a3,-1(a4)
    80002c9e:	0585                	addi	a1,a1,1
    80002ca0:	d7a1                	beqz	a5,80002be8 <memcpy+0x1a>
    80002ca2:	0005c683          	lbu	a3,0(a1)
    80002ca6:	0705                	addi	a4,a4,1
    80002ca8:	00777793          	andi	a5,a4,7
    80002cac:	fed70fa3          	sb	a3,-1(a4)
    80002cb0:	0585                	addi	a1,a1,1
    80002cb2:	fff9                	bnez	a5,80002c90 <memcpy+0xc2>
    80002cb4:	bf15                	j	80002be8 <memcpy+0x1a>
