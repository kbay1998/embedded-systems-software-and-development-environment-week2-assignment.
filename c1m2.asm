
c1m2.out:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 15 88 00 00 	mov    0x8815(%rip),%rax        # 140009830 <.refptr.mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 16 88 00 00 	mov    0x8816(%rip),%rax        # 140009840 <.refptr.mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 19 88 00 00 	mov    0x8819(%rip),%rax        # 140009850 <.refptr.mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 dc 87 00 00 	mov    0x87dc(%rip),%rax        # 140009820 <.refptr.mingw_initcharmax>
   140001044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000104a:	48 8b 05 8f 86 00 00 	mov    0x868f(%rip),%rax        # 1400096e0 <.refptr.__image_base__>
   140001051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001056:	75 0f                	jne    140001067 <pre_c_init+0x57>
   140001058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000105c:	48 01 d0             	add    %rdx,%rax
   14000105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001065:	74 69                	je     1400010d0 <pre_c_init+0xc0>
   140001067:	48 8b 05 a2 87 00 00 	mov    0x87a2(%rip),%rax        # 140009810 <.refptr.mingw_app_type>
   14000106e:	89 0d ac af 00 00    	mov    %ecx,0xafac(%rip)        # 14000c020 <managedapp>
   140001074:	8b 00                	mov    (%rax),%eax
   140001076:	85 c0                	test   %eax,%eax
   140001078:	74 46                	je     1400010c0 <pre_c_init+0xb0>
   14000107a:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000107f:	e8 24 66 00 00       	call   1400076a8 <__set_app_type>
   140001084:	e8 b7 6c 00 00       	call   140007d40 <__p__fmode>
   140001089:	48 8b 15 40 87 00 00 	mov    0x8740(%rip),%rdx        # 1400097d0 <.refptr._fmode>
   140001090:	8b 12                	mov    (%rdx),%edx
   140001092:	89 10                	mov    %edx,(%rax)
   140001094:	e8 97 6c 00 00       	call   140007d30 <__p__commode>
   140001099:	48 8b 15 10 87 00 00 	mov    0x8710(%rip),%rdx        # 1400097b0 <.refptr._commode>
   1400010a0:	8b 12                	mov    (%rdx),%edx
   1400010a2:	89 10                	mov    %edx,(%rax)
   1400010a4:	e8 47 08 00 00       	call   1400018f0 <_setargv>
   1400010a9:	48 8b 05 e0 85 00 00 	mov    0x85e0(%rip),%rax        # 140009690 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010b0:	83 38 01             	cmpl   $0x1,(%rax)
   1400010b3:	74 53                	je     140001108 <pre_c_init+0xf8>
   1400010b5:	31 c0                	xor    %eax,%eax
   1400010b7:	48 83 c4 28          	add    $0x28,%rsp
   1400010bb:	c3                   	ret    
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010c5:	e8 de 65 00 00       	call   1400076a8 <__set_app_type>
   1400010ca:	eb b8                	jmp    140001084 <pre_c_init+0x74>
   1400010cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010d0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010d4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010d9:	74 45                	je     140001120 <pre_c_init+0x110>
   1400010db:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010e0:	75 85                	jne    140001067 <pre_c_init+0x57>
   1400010e2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010e9:	0f 86 78 ff ff ff    	jbe    140001067 <pre_c_init+0x57>
   1400010ef:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010f5:	31 c9                	xor    %ecx,%ecx
   1400010f7:	85 d2                	test   %edx,%edx
   1400010f9:	0f 95 c1             	setne  %cl
   1400010fc:	e9 66 ff ff ff       	jmp    140001067 <pre_c_init+0x57>
   140001101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001108:	48 8b 0d e1 86 00 00 	mov    0x86e1(%rip),%rcx        # 1400097f0 <.refptr._matherr>
   14000110f:	e8 8c 0e 00 00       	call   140001fa0 <__mingw_setusermatherr>
   140001114:	31 c0                	xor    %eax,%eax
   140001116:	48 83 c4 28          	add    $0x28,%rsp
   14000111a:	c3                   	ret    
   14000111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001120:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001124:	0f 86 3d ff ff ff    	jbe    140001067 <pre_c_init+0x57>
   14000112a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001131:	31 c9                	xor    %ecx,%ecx
   140001133:	45 85 c0             	test   %r8d,%r8d
   140001136:	0f 95 c1             	setne  %cl
   140001139:	e9 29 ff ff ff       	jmp    140001067 <pre_c_init+0x57>
   14000113e:	66 90                	xchg   %ax,%ax

0000000140001140 <pre_cpp_init>:
   140001140:	48 83 ec 38          	sub    $0x38,%rsp
   140001144:	48 8b 05 b5 86 00 00 	mov    0x86b5(%rip),%rax        # 140009800 <.refptr._newmode>
   14000114b:	4c 8d 05 d6 ae 00 00 	lea    0xaed6(%rip),%r8        # 14000c028 <envp>
   140001152:	48 8d 15 d7 ae 00 00 	lea    0xaed7(%rip),%rdx        # 14000c030 <argv>
   140001159:	48 8d 0d d8 ae 00 00 	lea    0xaed8(%rip),%rcx        # 14000c038 <argc>
   140001160:	8b 00                	mov    (%rax),%eax
   140001162:	89 05 b0 ae 00 00    	mov    %eax,0xaeb0(%rip)        # 14000c018 <startinfo>
   140001168:	48 8d 05 a9 ae 00 00 	lea    0xaea9(%rip),%rax        # 14000c018 <startinfo>
   14000116f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001174:	48 8b 05 45 86 00 00 	mov    0x8645(%rip),%rax        # 1400097c0 <.refptr._dowildcard>
   14000117b:	44 8b 08             	mov    (%rax),%r9d
   14000117e:	e8 35 65 00 00       	call   1400076b8 <__getmainargs>
   140001183:	90                   	nop
   140001184:	48 83 c4 38          	add    $0x38,%rsp
   140001188:	c3                   	ret    
   140001189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001190 <__tmainCRTStartup>:
   140001190:	41 55                	push   %r13
   140001192:	41 54                	push   %r12
   140001194:	55                   	push   %rbp
   140001195:	57                   	push   %rdi
   140001196:	56                   	push   %rsi
   140001197:	53                   	push   %rbx
   140001198:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000119f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   1400011a4:	31 c0                	xor    %eax,%eax
   1400011a6:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   1400011ab:	4c 89 c7             	mov    %r8,%rdi
   1400011ae:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011b1:	48 8b 3d 58 86 00 00 	mov    0x8658(%rip),%rdi        # 140009810 <.refptr.mingw_app_type>
   1400011b8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011bb:	45 85 c9             	test   %r9d,%r9d
   1400011be:	0f 85 9c 02 00 00    	jne    140001460 <__tmainCRTStartup+0x2d0>
   1400011c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011cb:	00 00 
   1400011cd:	48 8b 1d 6c 85 00 00 	mov    0x856c(%rip),%rbx        # 140009740 <.refptr.__native_startup_lock>
   1400011d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011d8:	31 ed                	xor    %ebp,%ebp
   1400011da:	4c 8b 25 43 c0 00 00 	mov    0xc043(%rip),%r12        # 14000d224 <__imp_Sleep>
   1400011e1:	eb 16                	jmp    1400011f9 <__tmainCRTStartup+0x69>
   1400011e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011e8:	48 39 c6             	cmp    %rax,%rsi
   1400011eb:	0f 84 17 02 00 00    	je     140001408 <__tmainCRTStartup+0x278>
   1400011f1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011f6:	41 ff d4             	call   *%r12
   1400011f9:	48 89 e8             	mov    %rbp,%rax
   1400011fc:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   140001201:	48 85 c0             	test   %rax,%rax
   140001204:	75 e2                	jne    1400011e8 <__tmainCRTStartup+0x58>
   140001206:	48 8b 35 43 85 00 00 	mov    0x8543(%rip),%rsi        # 140009750 <.refptr.__native_startup_state>
   14000120d:	31 ed                	xor    %ebp,%ebp
   14000120f:	8b 06                	mov    (%rsi),%eax
   140001211:	83 f8 01             	cmp    $0x1,%eax
   140001214:	0f 84 05 02 00 00    	je     14000141f <__tmainCRTStartup+0x28f>
   14000121a:	8b 06                	mov    (%rsi),%eax
   14000121c:	85 c0                	test   %eax,%eax
   14000121e:	0f 84 6c 02 00 00    	je     140001490 <__tmainCRTStartup+0x300>
   140001224:	c7 05 ee ad 00 00 01 	movl   $0x1,0xadee(%rip)        # 14000c01c <has_cctor>
   14000122b:	00 00 00 
   14000122e:	8b 06                	mov    (%rsi),%eax
   140001230:	83 f8 01             	cmp    $0x1,%eax
   140001233:	0f 84 fb 01 00 00    	je     140001434 <__tmainCRTStartup+0x2a4>
   140001239:	85 ed                	test   %ebp,%ebp
   14000123b:	0f 84 14 02 00 00    	je     140001455 <__tmainCRTStartup+0x2c5>
   140001241:	48 8b 05 88 84 00 00 	mov    0x8488(%rip),%rax        # 1400096d0 <.refptr.__dyn_tls_init_callback>
   140001248:	48 8b 00             	mov    (%rax),%rax
   14000124b:	48 85 c0             	test   %rax,%rax
   14000124e:	74 0c                	je     14000125c <__tmainCRTStartup+0xcc>
   140001250:	45 31 c0             	xor    %r8d,%r8d
   140001253:	ba 02 00 00 00       	mov    $0x2,%edx
   140001258:	31 c9                	xor    %ecx,%ecx
   14000125a:	ff d0                	call   *%rax
   14000125c:	e8 5f 0a 00 00       	call   140001cc0 <_pei386_runtime_relocator>
   140001261:	48 8b 0d 78 85 00 00 	mov    0x8578(%rip),%rcx        # 1400097e0 <.refptr._gnu_exception_handler>
   140001268:	ff 15 ae bf 00 00    	call   *0xbfae(%rip)        # 14000d21c <__imp_SetUnhandledExceptionFilter>
   14000126e:	48 8b 15 bb 84 00 00 	mov    0x84bb(%rip),%rdx        # 140009730 <.refptr.__mingw_oldexcpt_handler>
   140001275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000127c:	48 89 02             	mov    %rax,(%rdx)
   14000127f:	e8 bc 69 00 00       	call   140007c40 <_set_invalid_parameter_handler>
   140001284:	e8 47 08 00 00       	call   140001ad0 <_fpreset>
   140001289:	48 8b 05 50 84 00 00 	mov    0x8450(%rip),%rax        # 1400096e0 <.refptr.__image_base__>
   140001290:	48 89 05 79 ad 00 00 	mov    %rax,0xad79(%rip)        # 14000c010 <__mingw_winmain_hInstance>
   140001297:	e8 84 6a 00 00       	call   140007d20 <__p__acmdln>
   14000129c:	31 c9                	xor    %ecx,%ecx
   14000129e:	48 8b 00             	mov    (%rax),%rax
   1400012a1:	48 85 c0             	test   %rax,%rax
   1400012a4:	75 1c                	jne    1400012c2 <__tmainCRTStartup+0x132>
   1400012a6:	eb 58                	jmp    140001300 <__tmainCRTStartup+0x170>
   1400012a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400012af:	00 
   1400012b0:	84 d2                	test   %dl,%dl
   1400012b2:	74 45                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012b4:	83 e1 01             	and    $0x1,%ecx
   1400012b7:	74 27                	je     1400012e0 <__tmainCRTStartup+0x150>
   1400012b9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012be:	48 83 c0 01          	add    $0x1,%rax
   1400012c2:	0f b6 10             	movzbl (%rax),%edx
   1400012c5:	80 fa 20             	cmp    $0x20,%dl
   1400012c8:	7e e6                	jle    1400012b0 <__tmainCRTStartup+0x120>
   1400012ca:	41 89 c8             	mov    %ecx,%r8d
   1400012cd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012d1:	80 fa 22             	cmp    $0x22,%dl
   1400012d4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012d8:	eb e4                	jmp    1400012be <__tmainCRTStartup+0x12e>
   1400012da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 15                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012e4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012e8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012ec:	48 83 c0 01          	add    $0x1,%rax
   1400012f0:	84 d2                	test   %dl,%dl
   1400012f2:	74 05                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012f4:	80 fa 20             	cmp    $0x20,%dl
   1400012f7:	7e ef                	jle    1400012e8 <__tmainCRTStartup+0x158>
   1400012f9:	48 89 05 08 ad 00 00 	mov    %rax,0xad08(%rip)        # 14000c008 <__mingw_winmain_lpCmdLine>
   140001300:	44 8b 07             	mov    (%rdi),%r8d
   140001303:	45 85 c0             	test   %r8d,%r8d
   140001306:	74 16                	je     14000131e <__tmainCRTStartup+0x18e>
   140001308:	b8 0a 00 00 00       	mov    $0xa,%eax
   14000130d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001312:	0f 85 e0 00 00 00    	jne    1400013f8 <__tmainCRTStartup+0x268>
   140001318:	89 05 e2 6c 00 00    	mov    %eax,0x6ce2(%rip)        # 140008000 <__data_start__>
   14000131e:	48 63 2d 13 ad 00 00 	movslq 0xad13(%rip),%rbp        # 14000c038 <argc>
   140001325:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001329:	4d 63 e4             	movslq %r12d,%r12
   14000132c:	49 c1 e4 03          	shl    $0x3,%r12
   140001330:	4c 89 e1             	mov    %r12,%rcx
   140001333:	e8 f8 62 00 00       	call   140007630 <malloc>
   140001338:	4c 8b 2d f1 ac 00 00 	mov    0xacf1(%rip),%r13        # 14000c030 <argv>
   14000133f:	48 89 c7             	mov    %rax,%rdi
   140001342:	85 ed                	test   %ebp,%ebp
   140001344:	7e 42                	jle    140001388 <__tmainCRTStartup+0x1f8>
   140001346:	31 db                	xor    %ebx,%ebx
   140001348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000134f:	00 
   140001350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001355:	e8 ae 62 00 00       	call   140007608 <strlen>
   14000135a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000135e:	48 89 f1             	mov    %rsi,%rcx
   140001361:	e8 ca 62 00 00       	call   140007630 <malloc>
   140001366:	49 89 f0             	mov    %rsi,%r8
   140001369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000136d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001372:	48 89 c1             	mov    %rax,%rcx
   140001375:	48 83 c3 01          	add    $0x1,%rbx
   140001379:	e8 aa 62 00 00       	call   140007628 <memcpy>
   14000137e:	48 39 dd             	cmp    %rbx,%rbp
   140001381:	75 cd                	jne    140001350 <__tmainCRTStartup+0x1c0>
   140001383:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001388:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000138f:	48 89 3d 9a ac 00 00 	mov    %rdi,0xac9a(%rip)        # 14000c030 <argv>
   140001396:	e8 25 05 00 00       	call   1400018c0 <__main>
   14000139b:	48 8b 05 4e 83 00 00 	mov    0x834e(%rip),%rax        # 1400096f0 <.refptr.__imp___initenv>
   1400013a2:	4c 8b 05 7f ac 00 00 	mov    0xac7f(%rip),%r8        # 14000c028 <envp>
   1400013a9:	8b 0d 89 ac 00 00    	mov    0xac89(%rip),%ecx        # 14000c038 <argc>
   1400013af:	48 8b 00             	mov    (%rax),%rax
   1400013b2:	4c 89 00             	mov    %r8,(%rax)
   1400013b5:	48 8b 15 74 ac 00 00 	mov    0xac74(%rip),%rdx        # 14000c030 <argv>
   1400013bc:	e8 d0 01 00 00       	call   140001591 <main>
   1400013c1:	8b 0d 59 ac 00 00    	mov    0xac59(%rip),%ecx        # 14000c020 <managedapp>
   1400013c7:	89 05 57 ac 00 00    	mov    %eax,0xac57(%rip)        # 14000c024 <mainret>
   1400013cd:	85 c9                	test   %ecx,%ecx
   1400013cf:	0f 84 d9 00 00 00    	je     1400014ae <__tmainCRTStartup+0x31e>
   1400013d5:	8b 15 41 ac 00 00    	mov    0xac41(%rip),%edx        # 14000c01c <has_cctor>
   1400013db:	85 d2                	test   %edx,%edx
   1400013dd:	0f 84 8d 00 00 00    	je     140001470 <__tmainCRTStartup+0x2e0>
   1400013e3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013ea:	5b                   	pop    %rbx
   1400013eb:	5e                   	pop    %rsi
   1400013ec:	5f                   	pop    %rdi
   1400013ed:	5d                   	pop    %rbp
   1400013ee:	41 5c                	pop    %r12
   1400013f0:	41 5d                	pop    %r13
   1400013f2:	c3                   	ret    
   1400013f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400013f8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013fd:	e9 16 ff ff ff       	jmp    140001318 <__tmainCRTStartup+0x188>
   140001402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001408:	48 8b 35 41 83 00 00 	mov    0x8341(%rip),%rsi        # 140009750 <.refptr.__native_startup_state>
   14000140f:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001414:	8b 06                	mov    (%rsi),%eax
   140001416:	83 f8 01             	cmp    $0x1,%eax
   140001419:	0f 85 fb fd ff ff    	jne    14000121a <__tmainCRTStartup+0x8a>
   14000141f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001424:	e8 6f 62 00 00       	call   140007698 <_amsg_exit>
   140001429:	8b 06                	mov    (%rsi),%eax
   14000142b:	83 f8 01             	cmp    $0x1,%eax
   14000142e:	0f 85 05 fe ff ff    	jne    140001239 <__tmainCRTStartup+0xa9>
   140001434:	48 8b 15 45 83 00 00 	mov    0x8345(%rip),%rdx        # 140009780 <.refptr.__xc_z>
   14000143b:	48 8b 0d 2e 83 00 00 	mov    0x832e(%rip),%rcx        # 140009770 <.refptr.__xc_a>
   140001442:	e8 39 62 00 00       	call   140007680 <_initterm>
   140001447:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000144d:	85 ed                	test   %ebp,%ebp
   14000144f:	0f 85 ec fd ff ff    	jne    140001241 <__tmainCRTStartup+0xb1>
   140001455:	31 c0                	xor    %eax,%eax
   140001457:	48 87 03             	xchg   %rax,(%rbx)
   14000145a:	e9 e2 fd ff ff       	jmp    140001241 <__tmainCRTStartup+0xb1>
   14000145f:	90                   	nop
   140001460:	4c 89 c1             	mov    %r8,%rcx
   140001463:	ff 15 8b bd 00 00    	call   *0xbd8b(%rip)        # 14000d1f4 <__imp_GetStartupInfoA>
   140001469:	e9 56 fd ff ff       	jmp    1400011c4 <__tmainCRTStartup+0x34>
   14000146e:	66 90                	xchg   %ax,%ax
   140001470:	e8 1b 62 00 00       	call   140007690 <_cexit>
   140001475:	8b 05 a9 ab 00 00    	mov    0xaba9(%rip),%eax        # 14000c024 <mainret>
   14000147b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001482:	5b                   	pop    %rbx
   140001483:	5e                   	pop    %rsi
   140001484:	5f                   	pop    %rdi
   140001485:	5d                   	pop    %rbp
   140001486:	41 5c                	pop    %r12
   140001488:	41 5d                	pop    %r13
   14000148a:	c3                   	ret    
   14000148b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001490:	48 8b 15 09 83 00 00 	mov    0x8309(%rip),%rdx        # 1400097a0 <.refptr.__xi_z>
   140001497:	48 8b 0d f2 82 00 00 	mov    0x82f2(%rip),%rcx        # 140009790 <.refptr.__xi_a>
   14000149e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400014a4:	e8 d7 61 00 00       	call   140007680 <_initterm>
   1400014a9:	e9 80 fd ff ff       	jmp    14000122e <__tmainCRTStartup+0x9e>
   1400014ae:	89 c1                	mov    %eax,%ecx
   1400014b0:	e8 ab 61 00 00       	call   140007660 <exit>
   1400014b5:	90                   	nop
   1400014b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014bd:	00 00 00 

00000001400014c0 <WinMainCRTStartup>:
   1400014c0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014c4 <.l_startw>:
   1400014c4:	48 8b 05 45 83 00 00 	mov    0x8345(%rip),%rax        # 140009810 <.refptr.mingw_app_type>
   1400014cb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014d1:	e8 ba fc ff ff       	call   140001190 <__tmainCRTStartup>
   1400014d6:	90                   	nop

00000001400014d7 <.l_endw>:
   1400014d7:	90                   	nop
   1400014d8:	48 83 c4 28          	add    $0x28,%rsp
   1400014dc:	c3                   	ret    
   1400014dd:	0f 1f 00             	nopl   (%rax)

00000001400014e0 <mainCRTStartup>:
   1400014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014e4 <.l_start>:
   1400014e4:	48 8b 05 25 83 00 00 	mov    0x8325(%rip),%rax        # 140009810 <.refptr.mingw_app_type>
   1400014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014f1:	e8 9a fc ff ff       	call   140001190 <__tmainCRTStartup>
   1400014f6:	90                   	nop

00000001400014f7 <.l_end>:
   1400014f7:	90                   	nop
   1400014f8:	48 83 c4 28          	add    $0x28,%rsp
   1400014fc:	c3                   	ret    
   1400014fd:	0f 1f 00             	nopl   (%rax)

0000000140001500 <atexit>:
   140001500:	48 83 ec 28          	sub    $0x28,%rsp
   140001504:	e8 6f 61 00 00       	call   140007678 <_onexit>
   140001509:	48 83 f8 01          	cmp    $0x1,%rax
   14000150d:	19 c0                	sbb    %eax,%eax
   14000150f:	48 83 c4 28          	add    $0x28,%rsp
   140001513:	c3                   	ret    
   140001514:	90                   	nop
   140001515:	90                   	nop
   140001516:	90                   	nop
   140001517:	90                   	nop
   140001518:	90                   	nop
   140001519:	90                   	nop
   14000151a:	90                   	nop
   14000151b:	90                   	nop
   14000151c:	90                   	nop
   14000151d:	90                   	nop
   14000151e:	90                   	nop
   14000151f:	90                   	nop

0000000140001520 <__gcc_register_frame>:
   140001520:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001530 <__gcc_deregister_frame>
   140001527:	e9 d4 ff ff ff       	jmp    140001500 <atexit>
   14000152c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001530 <__gcc_deregister_frame>:
   140001530:	c3                   	ret    
   140001531:	90                   	nop
   140001532:	90                   	nop
   140001533:	90                   	nop
   140001534:	90                   	nop
   140001535:	90                   	nop
   140001536:	90                   	nop
   140001537:	90                   	nop
   140001538:	90                   	nop
   140001539:	90                   	nop
   14000153a:	90                   	nop
   14000153b:	90                   	nop
   14000153c:	90                   	nop
   14000153d:	90                   	nop
   14000153e:	90                   	nop
   14000153f:	90                   	nop

0000000140001540 <printf>:
   140001540:	55                   	push   %rbp
   140001541:	53                   	push   %rbx
   140001542:	48 83 ec 38          	sub    $0x38,%rsp
   140001546:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000154b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000154f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140001553:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140001557:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
   14000155b:	48 8d 45 28          	lea    0x28(%rbp),%rax
   14000155f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140001563:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
   140001567:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000156c:	48 8b 05 2d 6b 00 00 	mov    0x6b2d(%rip),%rax        # 1400080a0 <__imp___acrt_iob_func>
   140001573:	ff d0                	call   *%rax
   140001575:	49 89 d8             	mov    %rbx,%r8
   140001578:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   14000157c:	48 89 c1             	mov    %rax,%rcx
   14000157f:	e8 9c 12 00 00       	call   140002820 <__mingw_vfprintf>
   140001584:	89 45 fc             	mov    %eax,-0x4(%rbp)
   140001587:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000158a:	48 83 c4 38          	add    $0x38,%rsp
   14000158e:	5b                   	pop    %rbx
   14000158f:	5d                   	pop    %rbp
   140001590:	c3                   	ret    

0000000140001591 <main>:
   140001591:	55                   	push   %rbp
   140001592:	48 89 e5             	mov    %rsp,%rbp
   140001595:	48 83 ec 30          	sub    $0x30,%rsp
   140001599:	e8 22 03 00 00       	call   1400018c0 <__main>
   14000159e:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400015a3:	48 8d 05 96 aa 00 00 	lea    0xaa96(%rip),%rax        # 14000c040 <buffer>
   1400015aa:	48 89 c1             	mov    %rax,%rcx
   1400015ad:	e8 2d 02 00 00       	call   1400017df <clear_all>
   1400015b2:	48 8d 05 8f aa 00 00 	lea    0xaa8f(%rip),%rax        # 14000c048 <buffer+0x8>
   1400015b9:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   1400015bf:	ba 2b 00 00 00       	mov    $0x2b,%edx
   1400015c4:	48 89 c1             	mov    %rax,%rcx
   1400015c7:	e8 cc 01 00 00       	call   140001798 <set_all>
   1400015cc:	41 b8 61 00 00 00    	mov    $0x61,%r8d
   1400015d2:	ba 00 00 00 00       	mov    $0x0,%edx
   1400015d7:	48 8d 05 62 aa 00 00 	lea    0xaa62(%rip),%rax        # 14000c040 <buffer>
   1400015de:	48 89 c1             	mov    %rax,%rcx
   1400015e1:	e8 4a 01 00 00       	call   140001730 <set_value>
   1400015e6:	ba 09 00 00 00       	mov    $0x9,%edx
   1400015eb:	48 8d 05 4e aa 00 00 	lea    0xaa4e(%rip),%rax        # 14000c040 <buffer>
   1400015f2:	48 89 c1             	mov    %rax,%rcx
   1400015f5:	e8 84 01 00 00       	call   14000177e <get_value>
   1400015fa:	88 45 fb             	mov    %al,-0x5(%rbp)
   1400015fd:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
   140001601:	83 c0 27             	add    $0x27,%eax
   140001604:	0f be c0             	movsbl %al,%eax
   140001607:	41 89 c0             	mov    %eax,%r8d
   14000160a:	ba 09 00 00 00       	mov    $0x9,%edx
   14000160f:	48 8d 05 2a aa 00 00 	lea    0xaa2a(%rip),%rax        # 14000c040 <buffer>
   140001616:	48 89 c1             	mov    %rax,%rcx
   140001619:	e8 12 01 00 00       	call   140001730 <set_value>
   14000161e:	41 b8 37 00 00 00    	mov    $0x37,%r8d
   140001624:	ba 03 00 00 00       	mov    $0x3,%edx
   140001629:	48 8d 05 10 aa 00 00 	lea    0xaa10(%rip),%rax        # 14000c040 <buffer>
   140001630:	48 89 c1             	mov    %rax,%rcx
   140001633:	e8 f8 00 00 00       	call   140001730 <set_value>
   140001638:	41 b8 58 00 00 00    	mov    $0x58,%r8d
   14000163e:	ba 01 00 00 00       	mov    $0x1,%edx
   140001643:	48 8d 05 f6 a9 00 00 	lea    0xa9f6(%rip),%rax        # 14000c040 <buffer>
   14000164a:	48 89 c1             	mov    %rax,%rcx
   14000164d:	e8 de 00 00 00       	call   140001730 <set_value>
   140001652:	41 b8 32 00 00 00    	mov    $0x32,%r8d
   140001658:	ba 04 00 00 00       	mov    $0x4,%edx
   14000165d:	48 8d 05 dc a9 00 00 	lea    0xa9dc(%rip),%rax        # 14000c040 <buffer>
   140001664:	48 89 c1             	mov    %rax,%rcx
   140001667:	e8 c4 00 00 00       	call   140001730 <set_value>
   14000166c:	ba 01 00 00 00       	mov    $0x1,%edx
   140001671:	48 8d 05 c8 a9 00 00 	lea    0xa9c8(%rip),%rax        # 14000c040 <buffer>
   140001678:	48 89 c1             	mov    %rax,%rcx
   14000167b:	e8 fe 00 00 00       	call   14000177e <get_value>
   140001680:	88 45 fb             	mov    %al,-0x5(%rbp)
   140001683:	41 b8 79 00 00 00    	mov    $0x79,%r8d
   140001689:	ba 02 00 00 00       	mov    $0x2,%edx
   14000168e:	48 8d 05 ab a9 00 00 	lea    0xa9ab(%rip),%rax        # 14000c040 <buffer>
   140001695:	48 89 c1             	mov    %rax,%rcx
   140001698:	e8 93 00 00 00       	call   140001730 <set_value>
   14000169d:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
   1400016a1:	83 e8 0c             	sub    $0xc,%eax
   1400016a4:	0f be c0             	movsbl %al,%eax
   1400016a7:	41 89 c0             	mov    %eax,%r8d
   1400016aa:	ba 07 00 00 00       	mov    $0x7,%edx
   1400016af:	48 8d 05 8a a9 00 00 	lea    0xa98a(%rip),%rax        # 14000c040 <buffer>
   1400016b6:	48 89 c1             	mov    %rax,%rcx
   1400016b9:	e8 72 00 00 00       	call   140001730 <set_value>
   1400016be:	41 b8 5f 00 00 00    	mov    $0x5f,%r8d
   1400016c4:	ba 05 00 00 00       	mov    $0x5,%edx
   1400016c9:	48 8d 05 70 a9 00 00 	lea    0xa970(%rip),%rax        # 14000c040 <buffer>
   1400016d0:	48 89 c1             	mov    %rax,%rcx
   1400016d3:	e8 58 00 00 00       	call   140001730 <set_value>
   1400016d8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400016df:	eb 26                	jmp    140001707 <main+0x176>
   1400016e1:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400016e4:	48 8d 15 55 a9 00 00 	lea    0xa955(%rip),%rdx        # 14000c040 <buffer>
   1400016eb:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
   1400016ef:	0f be c0             	movsbl %al,%eax
   1400016f2:	89 c2                	mov    %eax,%edx
   1400016f4:	48 8d 05 05 79 00 00 	lea    0x7905(%rip),%rax        # 140009000 <.rdata>
   1400016fb:	48 89 c1             	mov    %rax,%rcx
   1400016fe:	e8 3d fe ff ff       	call   140001540 <printf>
   140001703:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001707:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
   14000170b:	76 d4                	jbe    1400016e1 <main+0x150>
   14000170d:	48 8d 05 ef 78 00 00 	lea    0x78ef(%rip),%rax        # 140009003 <.rdata+0x3>
   140001714:	48 89 c1             	mov    %rax,%rcx
   140001717:	e8 24 fe ff ff       	call   140001540 <printf>
   14000171c:	b8 00 00 00 00       	mov    $0x0,%eax
   140001721:	48 83 c4 30          	add    $0x30,%rsp
   140001725:	5d                   	pop    %rbp
   140001726:	c3                   	ret    
   140001727:	90                   	nop
   140001728:	90                   	nop
   140001729:	90                   	nop
   14000172a:	90                   	nop
   14000172b:	90                   	nop
   14000172c:	90                   	nop
   14000172d:	90                   	nop
   14000172e:	90                   	nop
   14000172f:	90                   	nop

0000000140001730 <set_value>:
   140001730:	55                   	push   %rbp
   140001731:	48 89 e5             	mov    %rsp,%rbp
   140001734:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001738:	89 55 18             	mov    %edx,0x18(%rbp)
   14000173b:	44 89 c0             	mov    %r8d,%eax
   14000173e:	88 45 20             	mov    %al,0x20(%rbp)
   140001741:	8b 55 18             	mov    0x18(%rbp),%edx
   140001744:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001748:	48 01 c2             	add    %rax,%rdx
   14000174b:	0f b6 45 20          	movzbl 0x20(%rbp),%eax
   14000174f:	88 02                	mov    %al,(%rdx)
   140001751:	90                   	nop
   140001752:	5d                   	pop    %rbp
   140001753:	c3                   	ret    

0000000140001754 <clear_value>:
   140001754:	55                   	push   %rbp
   140001755:	48 89 e5             	mov    %rsp,%rbp
   140001758:	48 83 ec 20          	sub    $0x20,%rsp
   14000175c:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001760:	89 55 18             	mov    %edx,0x18(%rbp)
   140001763:	8b 45 18             	mov    0x18(%rbp),%eax
   140001766:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   14000176c:	89 c2                	mov    %eax,%edx
   14000176e:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001772:	e8 b9 ff ff ff       	call   140001730 <set_value>
   140001777:	90                   	nop
   140001778:	48 83 c4 20          	add    $0x20,%rsp
   14000177c:	5d                   	pop    %rbp
   14000177d:	c3                   	ret    

000000014000177e <get_value>:
   14000177e:	55                   	push   %rbp
   14000177f:	48 89 e5             	mov    %rsp,%rbp
   140001782:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001786:	89 55 18             	mov    %edx,0x18(%rbp)
   140001789:	8b 55 18             	mov    0x18(%rbp),%edx
   14000178c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001790:	48 01 d0             	add    %rdx,%rax
   140001793:	0f b6 00             	movzbl (%rax),%eax
   140001796:	5d                   	pop    %rbp
   140001797:	c3                   	ret    

0000000140001798 <set_all>:
   140001798:	55                   	push   %rbp
   140001799:	48 89 e5             	mov    %rsp,%rbp
   14000179c:	48 83 ec 30          	sub    $0x30,%rsp
   1400017a0:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400017a4:	89 d0                	mov    %edx,%eax
   1400017a6:	44 89 45 20          	mov    %r8d,0x20(%rbp)
   1400017aa:	88 45 18             	mov    %al,0x18(%rbp)
   1400017ad:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400017b4:	eb 19                	jmp    1400017cf <set_all+0x37>
   1400017b6:	0f be 55 18          	movsbl 0x18(%rbp),%edx
   1400017ba:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400017bd:	41 89 d0             	mov    %edx,%r8d
   1400017c0:	89 c2                	mov    %eax,%edx
   1400017c2:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   1400017c6:	e8 65 ff ff ff       	call   140001730 <set_value>
   1400017cb:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1400017cf:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400017d2:	3b 45 20             	cmp    0x20(%rbp),%eax
   1400017d5:	72 df                	jb     1400017b6 <set_all+0x1e>
   1400017d7:	90                   	nop
   1400017d8:	90                   	nop
   1400017d9:	48 83 c4 30          	add    $0x30,%rsp
   1400017dd:	5d                   	pop    %rbp
   1400017de:	c3                   	ret    

00000001400017df <clear_all>:
   1400017df:	55                   	push   %rbp
   1400017e0:	48 89 e5             	mov    %rsp,%rbp
   1400017e3:	48 83 ec 20          	sub    $0x20,%rsp
   1400017e7:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400017eb:	89 55 18             	mov    %edx,0x18(%rbp)
   1400017ee:	8b 45 18             	mov    0x18(%rbp),%eax
   1400017f1:	41 89 c0             	mov    %eax,%r8d
   1400017f4:	ba 00 00 00 00       	mov    $0x0,%edx
   1400017f9:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   1400017fd:	e8 96 ff ff ff       	call   140001798 <set_all>
   140001802:	90                   	nop
   140001803:	48 83 c4 20          	add    $0x20,%rsp
   140001807:	5d                   	pop    %rbp
   140001808:	c3                   	ret    
   140001809:	90                   	nop
   14000180a:	90                   	nop
   14000180b:	90                   	nop
   14000180c:	90                   	nop
   14000180d:	90                   	nop
   14000180e:	90                   	nop
   14000180f:	90                   	nop

0000000140001810 <__do_global_dtors>:
   140001810:	48 83 ec 28          	sub    $0x28,%rsp
   140001814:	48 8b 05 f5 67 00 00 	mov    0x67f5(%rip),%rax        # 140008010 <p.0>
   14000181b:	48 8b 00             	mov    (%rax),%rax
   14000181e:	48 85 c0             	test   %rax,%rax
   140001821:	74 22                	je     140001845 <__do_global_dtors+0x35>
   140001823:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001828:	ff d0                	call   *%rax
   14000182a:	48 8b 05 df 67 00 00 	mov    0x67df(%rip),%rax        # 140008010 <p.0>
   140001831:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001835:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001839:	48 89 15 d0 67 00 00 	mov    %rdx,0x67d0(%rip)        # 140008010 <p.0>
   140001840:	48 85 c0             	test   %rax,%rax
   140001843:	75 e3                	jne    140001828 <__do_global_dtors+0x18>
   140001845:	48 83 c4 28          	add    $0x28,%rsp
   140001849:	c3                   	ret    
   14000184a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001850 <__do_global_ctors>:
   140001850:	56                   	push   %rsi
   140001851:	53                   	push   %rbx
   140001852:	48 83 ec 28          	sub    $0x28,%rsp
   140001856:	48 8b 15 43 7e 00 00 	mov    0x7e43(%rip),%rdx        # 1400096a0 <.refptr.__CTOR_LIST__>
   14000185d:	48 8b 02             	mov    (%rdx),%rax
   140001860:	89 c1                	mov    %eax,%ecx
   140001862:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001865:	74 39                	je     1400018a0 <__do_global_ctors+0x50>
   140001867:	85 c9                	test   %ecx,%ecx
   140001869:	74 20                	je     14000188b <__do_global_ctors+0x3b>
   14000186b:	89 c8                	mov    %ecx,%eax
   14000186d:	83 e9 01             	sub    $0x1,%ecx
   140001870:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001874:	48 29 c8             	sub    %rcx,%rax
   140001877:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000187c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001880:	ff 13                	call   *(%rbx)
   140001882:	48 83 eb 08          	sub    $0x8,%rbx
   140001886:	48 39 f3             	cmp    %rsi,%rbx
   140001889:	75 f5                	jne    140001880 <__do_global_ctors+0x30>
   14000188b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001810 <__do_global_dtors>
   140001892:	48 83 c4 28          	add    $0x28,%rsp
   140001896:	5b                   	pop    %rbx
   140001897:	5e                   	pop    %rsi
   140001898:	e9 63 fc ff ff       	jmp    140001500 <atexit>
   14000189d:	0f 1f 00             	nopl   (%rax)
   1400018a0:	31 c0                	xor    %eax,%eax
   1400018a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400018a8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   1400018ac:	89 c1                	mov    %eax,%ecx
   1400018ae:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   1400018b3:	4c 89 c0             	mov    %r8,%rax
   1400018b6:	75 f0                	jne    1400018a8 <__do_global_ctors+0x58>
   1400018b8:	eb ad                	jmp    140001867 <__do_global_ctors+0x17>
   1400018ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400018c0 <__main>:
   1400018c0:	8b 05 8a a7 00 00    	mov    0xa78a(%rip),%eax        # 14000c050 <initialized>
   1400018c6:	85 c0                	test   %eax,%eax
   1400018c8:	74 06                	je     1400018d0 <__main+0x10>
   1400018ca:	c3                   	ret    
   1400018cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400018d0:	c7 05 76 a7 00 00 01 	movl   $0x1,0xa776(%rip)        # 14000c050 <initialized>
   1400018d7:	00 00 00 
   1400018da:	e9 71 ff ff ff       	jmp    140001850 <__do_global_ctors>
   1400018df:	90                   	nop

00000001400018e0 <my_lconv_init>:
   1400018e0:	48 ff 25 9d b9 00 00 	rex.W jmp *0xb99d(%rip)        # 14000d284 <__imp___lconv_init>
   1400018e7:	90                   	nop
   1400018e8:	90                   	nop
   1400018e9:	90                   	nop
   1400018ea:	90                   	nop
   1400018eb:	90                   	nop
   1400018ec:	90                   	nop
   1400018ed:	90                   	nop
   1400018ee:	90                   	nop
   1400018ef:	90                   	nop

00000001400018f0 <_setargv>:
   1400018f0:	31 c0                	xor    %eax,%eax
   1400018f2:	c3                   	ret    
   1400018f3:	90                   	nop
   1400018f4:	90                   	nop
   1400018f5:	90                   	nop
   1400018f6:	90                   	nop
   1400018f7:	90                   	nop
   1400018f8:	90                   	nop
   1400018f9:	90                   	nop
   1400018fa:	90                   	nop
   1400018fb:	90                   	nop
   1400018fc:	90                   	nop
   1400018fd:	90                   	nop
   1400018fe:	90                   	nop
   1400018ff:	90                   	nop

0000000140001900 <__dyn_tls_dtor>:
   140001900:	48 83 ec 28          	sub    $0x28,%rsp
   140001904:	83 fa 03             	cmp    $0x3,%edx
   140001907:	74 17                	je     140001920 <__dyn_tls_dtor+0x20>
   140001909:	85 d2                	test   %edx,%edx
   14000190b:	74 13                	je     140001920 <__dyn_tls_dtor+0x20>
   14000190d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001912:	48 83 c4 28          	add    $0x28,%rsp
   140001916:	c3                   	ret    
   140001917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000191e:	00 00 
   140001920:	e8 eb 09 00 00       	call   140002310 <__mingw_TLScallback>
   140001925:	b8 01 00 00 00       	mov    $0x1,%eax
   14000192a:	48 83 c4 28          	add    $0x28,%rsp
   14000192e:	c3                   	ret    
   14000192f:	90                   	nop

0000000140001930 <__dyn_tls_init>:
   140001930:	56                   	push   %rsi
   140001931:	53                   	push   %rbx
   140001932:	48 83 ec 28          	sub    $0x28,%rsp
   140001936:	48 8b 05 43 7d 00 00 	mov    0x7d43(%rip),%rax        # 140009680 <.refptr._CRT_MT>
   14000193d:	83 38 02             	cmpl   $0x2,(%rax)
   140001940:	74 06                	je     140001948 <__dyn_tls_init+0x18>
   140001942:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001948:	83 fa 02             	cmp    $0x2,%edx
   14000194b:	74 13                	je     140001960 <__dyn_tls_init+0x30>
   14000194d:	83 fa 01             	cmp    $0x1,%edx
   140001950:	74 4e                	je     1400019a0 <__dyn_tls_init+0x70>
   140001952:	b8 01 00 00 00       	mov    $0x1,%eax
   140001957:	48 83 c4 28          	add    $0x28,%rsp
   14000195b:	5b                   	pop    %rbx
   14000195c:	5e                   	pop    %rsi
   14000195d:	c3                   	ret    
   14000195e:	66 90                	xchg   %ax,%ax
   140001960:	48 8d 1d f9 c6 00 00 	lea    0xc6f9(%rip),%rbx        # 14000e060 <__xd_z>
   140001967:	48 8d 35 f2 c6 00 00 	lea    0xc6f2(%rip),%rsi        # 14000e060 <__xd_z>
   14000196e:	48 39 de             	cmp    %rbx,%rsi
   140001971:	74 df                	je     140001952 <__dyn_tls_init+0x22>
   140001973:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001978:	48 8b 03             	mov    (%rbx),%rax
   14000197b:	48 85 c0             	test   %rax,%rax
   14000197e:	74 02                	je     140001982 <__dyn_tls_init+0x52>
   140001980:	ff d0                	call   *%rax
   140001982:	48 83 c3 08          	add    $0x8,%rbx
   140001986:	48 39 de             	cmp    %rbx,%rsi
   140001989:	75 ed                	jne    140001978 <__dyn_tls_init+0x48>
   14000198b:	b8 01 00 00 00       	mov    $0x1,%eax
   140001990:	48 83 c4 28          	add    $0x28,%rsp
   140001994:	5b                   	pop    %rbx
   140001995:	5e                   	pop    %rsi
   140001996:	c3                   	ret    
   140001997:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000199e:	00 00 
   1400019a0:	e8 6b 09 00 00       	call   140002310 <__mingw_TLScallback>
   1400019a5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400019aa:	48 83 c4 28          	add    $0x28,%rsp
   1400019ae:	5b                   	pop    %rbx
   1400019af:	5e                   	pop    %rsi
   1400019b0:	c3                   	ret    
   1400019b1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400019b8:	00 00 00 00 
   1400019bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400019c0 <__tlregdtor>:
   1400019c0:	31 c0                	xor    %eax,%eax
   1400019c2:	c3                   	ret    
   1400019c3:	90                   	nop
   1400019c4:	90                   	nop
   1400019c5:	90                   	nop
   1400019c6:	90                   	nop
   1400019c7:	90                   	nop
   1400019c8:	90                   	nop
   1400019c9:	90                   	nop
   1400019ca:	90                   	nop
   1400019cb:	90                   	nop
   1400019cc:	90                   	nop
   1400019cd:	90                   	nop
   1400019ce:	90                   	nop
   1400019cf:	90                   	nop

00000001400019d0 <_matherr>:
   1400019d0:	56                   	push   %rsi
   1400019d1:	53                   	push   %rbx
   1400019d2:	48 83 ec 78          	sub    $0x78,%rsp
   1400019d6:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   1400019db:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   1400019e0:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   1400019e6:	83 39 06             	cmpl   $0x6,(%rcx)
   1400019e9:	0f 87 cd 00 00 00    	ja     140001abc <_matherr+0xec>
   1400019ef:	8b 01                	mov    (%rcx),%eax
   1400019f1:	48 8d 15 ac 77 00 00 	lea    0x77ac(%rip),%rdx        # 1400091a4 <.rdata+0x124>
   1400019f8:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400019fc:	48 01 d0             	add    %rdx,%rax
   1400019ff:	ff e0                	jmp    *%rax
   140001a01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001a08:	48 8d 1d 90 76 00 00 	lea    0x7690(%rip),%rbx        # 14000909f <.rdata+0x1f>
   140001a0f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001a15:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   140001a1a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   140001a1f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001a23:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001a28:	e8 e3 61 00 00       	call   140007c10 <__acrt_iob_func>
   140001a2d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001a34:	49 89 d8             	mov    %rbx,%r8
   140001a37:	48 8d 15 3a 77 00 00 	lea    0x773a(%rip),%rdx        # 140009178 <.rdata+0xf8>
   140001a3e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001a44:	48 89 c1             	mov    %rax,%rcx
   140001a47:	49 89 f1             	mov    %rsi,%r9
   140001a4a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140001a50:	e8 03 5c 00 00       	call   140007658 <fprintf>
   140001a55:	90                   	nop
   140001a56:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   140001a5b:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   140001a60:	31 c0                	xor    %eax,%eax
   140001a62:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   140001a68:	48 83 c4 78          	add    $0x78,%rsp
   140001a6c:	5b                   	pop    %rbx
   140001a6d:	5e                   	pop    %rsi
   140001a6e:	c3                   	ret    
   140001a6f:	90                   	nop
   140001a70:	48 8d 1d 09 76 00 00 	lea    0x7609(%rip),%rbx        # 140009080 <.rdata>
   140001a77:	eb 96                	jmp    140001a0f <_matherr+0x3f>
   140001a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001a80:	48 8d 1d 59 76 00 00 	lea    0x7659(%rip),%rbx        # 1400090e0 <.rdata+0x60>
   140001a87:	eb 86                	jmp    140001a0f <_matherr+0x3f>
   140001a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001a90:	48 8d 1d 29 76 00 00 	lea    0x7629(%rip),%rbx        # 1400090c0 <.rdata+0x40>
   140001a97:	e9 73 ff ff ff       	jmp    140001a0f <_matherr+0x3f>
   140001a9c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001aa0:	48 8d 1d 89 76 00 00 	lea    0x7689(%rip),%rbx        # 140009130 <.rdata+0xb0>
   140001aa7:	e9 63 ff ff ff       	jmp    140001a0f <_matherr+0x3f>
   140001aac:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ab0:	48 8d 1d 51 76 00 00 	lea    0x7651(%rip),%rbx        # 140009108 <.rdata+0x88>
   140001ab7:	e9 53 ff ff ff       	jmp    140001a0f <_matherr+0x3f>
   140001abc:	48 8d 1d a3 76 00 00 	lea    0x76a3(%rip),%rbx        # 140009166 <.rdata+0xe6>
   140001ac3:	e9 47 ff ff ff       	jmp    140001a0f <_matherr+0x3f>
   140001ac8:	90                   	nop
   140001ac9:	90                   	nop
   140001aca:	90                   	nop
   140001acb:	90                   	nop
   140001acc:	90                   	nop
   140001acd:	90                   	nop
   140001ace:	90                   	nop
   140001acf:	90                   	nop

0000000140001ad0 <_fpreset>:
   140001ad0:	db e3                	fninit 
   140001ad2:	c3                   	ret    
   140001ad3:	90                   	nop
   140001ad4:	90                   	nop
   140001ad5:	90                   	nop
   140001ad6:	90                   	nop
   140001ad7:	90                   	nop
   140001ad8:	90                   	nop
   140001ad9:	90                   	nop
   140001ada:	90                   	nop
   140001adb:	90                   	nop
   140001adc:	90                   	nop
   140001add:	90                   	nop
   140001ade:	90                   	nop
   140001adf:	90                   	nop

0000000140001ae0 <__report_error>:
   140001ae0:	41 54                	push   %r12
   140001ae2:	53                   	push   %rbx
   140001ae3:	48 83 ec 38          	sub    $0x38,%rsp
   140001ae7:	49 89 cc             	mov    %rcx,%r12
   140001aea:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   140001aef:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001af4:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001af9:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   140001afe:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001b03:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001b08:	e8 03 61 00 00       	call   140007c10 <__acrt_iob_func>
   140001b0d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001b13:	ba 01 00 00 00       	mov    $0x1,%edx
   140001b18:	48 8d 0d a1 76 00 00 	lea    0x76a1(%rip),%rcx        # 1400091c0 <.rdata>
   140001b1f:	49 89 c1             	mov    %rax,%r9
   140001b22:	e8 19 5b 00 00       	call   140007640 <fwrite>
   140001b27:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   140001b2c:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001b31:	e8 da 60 00 00       	call   140007c10 <__acrt_iob_func>
   140001b36:	4c 89 e2             	mov    %r12,%rdx
   140001b39:	48 89 c1             	mov    %rax,%rcx
   140001b3c:	49 89 d8             	mov    %rbx,%r8
   140001b3f:	e8 b4 5a 00 00       	call   1400075f8 <vfprintf>
   140001b44:	e8 27 5b 00 00       	call   140007670 <abort>
   140001b49:	90                   	nop
   140001b4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001b50 <mark_section_writable>:
   140001b50:	41 54                	push   %r12
   140001b52:	56                   	push   %rsi
   140001b53:	53                   	push   %rbx
   140001b54:	48 83 ec 50          	sub    $0x50,%rsp
   140001b58:	48 63 1d 65 a5 00 00 	movslq 0xa565(%rip),%rbx        # 14000c0c4 <maxSections>
   140001b5f:	49 89 cc             	mov    %rcx,%r12
   140001b62:	85 db                	test   %ebx,%ebx
   140001b64:	0f 8e 16 01 00 00    	jle    140001c80 <mark_section_writable+0x130>
   140001b6a:	48 8b 05 57 a5 00 00 	mov    0xa557(%rip),%rax        # 14000c0c8 <the_secs>
   140001b71:	45 31 c9             	xor    %r9d,%r9d
   140001b74:	48 83 c0 18          	add    $0x18,%rax
   140001b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001b7f:	00 
   140001b80:	4c 8b 00             	mov    (%rax),%r8
   140001b83:	4d 39 e0             	cmp    %r12,%r8
   140001b86:	77 13                	ja     140001b9b <mark_section_writable+0x4b>
   140001b88:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140001b8c:	8b 52 08             	mov    0x8(%rdx),%edx
   140001b8f:	49 01 d0             	add    %rdx,%r8
   140001b92:	4d 39 c4             	cmp    %r8,%r12
   140001b95:	0f 82 8a 00 00 00    	jb     140001c25 <mark_section_writable+0xd5>
   140001b9b:	41 83 c1 01          	add    $0x1,%r9d
   140001b9f:	48 83 c0 28          	add    $0x28,%rax
   140001ba3:	41 39 d9             	cmp    %ebx,%r9d
   140001ba6:	75 d8                	jne    140001b80 <mark_section_writable+0x30>
   140001ba8:	4c 89 e1             	mov    %r12,%rcx
   140001bab:	e8 70 09 00 00       	call   140002520 <__mingw_GetSectionForAddress>
   140001bb0:	48 89 c6             	mov    %rax,%rsi
   140001bb3:	48 85 c0             	test   %rax,%rax
   140001bb6:	0f 84 e6 00 00 00    	je     140001ca2 <mark_section_writable+0x152>
   140001bbc:	48 8b 05 05 a5 00 00 	mov    0xa505(%rip),%rax        # 14000c0c8 <the_secs>
   140001bc3:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140001bc7:	48 c1 e3 03          	shl    $0x3,%rbx
   140001bcb:	48 01 d8             	add    %rbx,%rax
   140001bce:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140001bd2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001bd8:	e8 73 0a 00 00       	call   140002650 <_GetPEImageBase>
   140001bdd:	8b 56 0c             	mov    0xc(%rsi),%edx
   140001be0:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001be6:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   140001bea:	48 8b 05 d7 a4 00 00 	mov    0xa4d7(%rip),%rax        # 14000c0c8 <the_secs>
   140001bf1:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001bf6:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   140001bfb:	ff 15 3b b6 00 00    	call   *0xb63b(%rip)        # 14000d23c <__imp_VirtualQuery>
   140001c01:	48 85 c0             	test   %rax,%rax
   140001c04:	0f 84 7d 00 00 00    	je     140001c87 <mark_section_writable+0x137>
   140001c0a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140001c0e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001c11:	83 e2 bf             	and    $0xffffffbf,%edx
   140001c14:	74 08                	je     140001c1e <mark_section_writable+0xce>
   140001c16:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001c19:	83 e2 fb             	and    $0xfffffffb,%edx
   140001c1c:	75 12                	jne    140001c30 <mark_section_writable+0xe0>
   140001c1e:	83 05 9f a4 00 00 01 	addl   $0x1,0xa49f(%rip)        # 14000c0c4 <maxSections>
   140001c25:	48 83 c4 50          	add    $0x50,%rsp
   140001c29:	5b                   	pop    %rbx
   140001c2a:	5e                   	pop    %rsi
   140001c2b:	41 5c                	pop    %r12
   140001c2d:	c3                   	ret    
   140001c2e:	66 90                	xchg   %ax,%ax
   140001c30:	83 f8 02             	cmp    $0x2,%eax
   140001c33:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001c38:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140001c3d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001c43:	b8 40 00 00 00       	mov    $0x40,%eax
   140001c48:	44 0f 45 c0          	cmovne %eax,%r8d
   140001c4c:	48 03 1d 75 a4 00 00 	add    0xa475(%rip),%rbx        # 14000c0c8 <the_secs>
   140001c53:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140001c57:	49 89 d9             	mov    %rbx,%r9
   140001c5a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   140001c5e:	ff 15 d0 b5 00 00    	call   *0xb5d0(%rip)        # 14000d234 <__imp_VirtualProtect>
   140001c64:	85 c0                	test   %eax,%eax
   140001c66:	75 b6                	jne    140001c1e <mark_section_writable+0xce>
   140001c68:	ff 15 7e b5 00 00    	call   *0xb57e(%rip)        # 14000d1ec <__imp_GetLastError>
   140001c6e:	48 8d 0d c3 75 00 00 	lea    0x75c3(%rip),%rcx        # 140009238 <.rdata+0x78>
   140001c75:	89 c2                	mov    %eax,%edx
   140001c77:	e8 64 fe ff ff       	call   140001ae0 <__report_error>
   140001c7c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001c80:	31 db                	xor    %ebx,%ebx
   140001c82:	e9 21 ff ff ff       	jmp    140001ba8 <mark_section_writable+0x58>
   140001c87:	48 8b 05 3a a4 00 00 	mov    0xa43a(%rip),%rax        # 14000c0c8 <the_secs>
   140001c8e:	8b 56 08             	mov    0x8(%rsi),%edx
   140001c91:	48 8d 0d 68 75 00 00 	lea    0x7568(%rip),%rcx        # 140009200 <.rdata+0x40>
   140001c98:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   140001c9d:	e8 3e fe ff ff       	call   140001ae0 <__report_error>
   140001ca2:	4c 89 e2             	mov    %r12,%rdx
   140001ca5:	48 8d 0d 34 75 00 00 	lea    0x7534(%rip),%rcx        # 1400091e0 <.rdata+0x20>
   140001cac:	e8 2f fe ff ff       	call   140001ae0 <__report_error>
   140001cb1:	90                   	nop
   140001cb2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001cb9:	00 00 00 00 
   140001cbd:	0f 1f 00             	nopl   (%rax)

0000000140001cc0 <_pei386_runtime_relocator>:
   140001cc0:	55                   	push   %rbp
   140001cc1:	41 57                	push   %r15
   140001cc3:	41 56                	push   %r14
   140001cc5:	41 55                	push   %r13
   140001cc7:	41 54                	push   %r12
   140001cc9:	57                   	push   %rdi
   140001cca:	56                   	push   %rsi
   140001ccb:	53                   	push   %rbx
   140001ccc:	48 83 ec 38          	sub    $0x38,%rsp
   140001cd0:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140001cd5:	8b 3d e5 a3 00 00    	mov    0xa3e5(%rip),%edi        # 14000c0c0 <was_init.0>
   140001cdb:	85 ff                	test   %edi,%edi
   140001cdd:	74 11                	je     140001cf0 <_pei386_runtime_relocator+0x30>
   140001cdf:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001ce3:	5b                   	pop    %rbx
   140001ce4:	5e                   	pop    %rsi
   140001ce5:	5f                   	pop    %rdi
   140001ce6:	41 5c                	pop    %r12
   140001ce8:	41 5d                	pop    %r13
   140001cea:	41 5e                	pop    %r14
   140001cec:	41 5f                	pop    %r15
   140001cee:	5d                   	pop    %rbp
   140001cef:	c3                   	ret    
   140001cf0:	c7 05 c6 a3 00 00 01 	movl   $0x1,0xa3c6(%rip)        # 14000c0c0 <was_init.0>
   140001cf7:	00 00 00 
   140001cfa:	e8 a1 08 00 00       	call   1400025a0 <__mingw_GetSectionCount>
   140001cff:	48 98                	cltq   
   140001d01:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001d05:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001d0c:	00 
   140001d0d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001d11:	e8 ca 0a 00 00       	call   1400027e0 <___chkstk_ms>
   140001d16:	4c 8b 25 93 79 00 00 	mov    0x7993(%rip),%r12        # 1400096b0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001d1d:	48 8b 1d 9c 79 00 00 	mov    0x799c(%rip),%rbx        # 1400096c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001d24:	c7 05 96 a3 00 00 00 	movl   $0x0,0xa396(%rip)        # 14000c0c4 <maxSections>
   140001d2b:	00 00 00 
   140001d2e:	48 29 c4             	sub    %rax,%rsp
   140001d31:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140001d36:	48 89 05 8b a3 00 00 	mov    %rax,0xa38b(%rip)        # 14000c0c8 <the_secs>
   140001d3d:	4c 89 e0             	mov    %r12,%rax
   140001d40:	48 29 d8             	sub    %rbx,%rax
   140001d43:	48 83 f8 07          	cmp    $0x7,%rax
   140001d47:	7e 96                	jle    140001cdf <_pei386_runtime_relocator+0x1f>
   140001d49:	8b 13                	mov    (%rbx),%edx
   140001d4b:	48 83 f8 0b          	cmp    $0xb,%rax
   140001d4f:	0f 8f 33 01 00 00    	jg     140001e88 <_pei386_runtime_relocator+0x1c8>
   140001d55:	8b 03                	mov    (%rbx),%eax
   140001d57:	85 c0                	test   %eax,%eax
   140001d59:	0f 85 a1 01 00 00    	jne    140001f00 <_pei386_runtime_relocator+0x240>
   140001d5f:	8b 43 04             	mov    0x4(%rbx),%eax
   140001d62:	85 c0                	test   %eax,%eax
   140001d64:	0f 85 96 01 00 00    	jne    140001f00 <_pei386_runtime_relocator+0x240>
   140001d6a:	8b 53 08             	mov    0x8(%rbx),%edx
   140001d6d:	83 fa 01             	cmp    $0x1,%edx
   140001d70:	0f 85 cb 01 00 00    	jne    140001f41 <_pei386_runtime_relocator+0x281>
   140001d76:	48 83 c3 0c          	add    $0xc,%rbx
   140001d7a:	4c 39 e3             	cmp    %r12,%rbx
   140001d7d:	0f 83 5c ff ff ff    	jae    140001cdf <_pei386_runtime_relocator+0x1f>
   140001d83:	4c 8b 2d 56 79 00 00 	mov    0x7956(%rip),%r13        # 1400096e0 <.refptr.__image_base__>
   140001d8a:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
   140001d91:	ff ff ff 
   140001d94:	eb 38                	jmp    140001dce <_pei386_runtime_relocator+0x10e>
   140001d96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001d9d:	00 00 00 
   140001da0:	0f b6 16             	movzbl (%rsi),%edx
   140001da3:	49 89 d1             	mov    %rdx,%r9
   140001da6:	49 81 c9 00 ff ff ff 	or     $0xffffffffffffff00,%r9
   140001dad:	84 d2                	test   %dl,%dl
   140001daf:	49 0f 48 d1          	cmovs  %r9,%rdx
   140001db3:	48 29 c2             	sub    %rax,%rdx
   140001db6:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
   140001dba:	48 89 f1             	mov    %rsi,%rcx
   140001dbd:	e8 8e fd ff ff       	call   140001b50 <mark_section_writable>
   140001dc2:	44 88 3e             	mov    %r15b,(%rsi)
   140001dc5:	48 83 c3 0c          	add    $0xc,%rbx
   140001dc9:	4c 39 e3             	cmp    %r12,%rbx
   140001dcc:	73 62                	jae    140001e30 <_pei386_runtime_relocator+0x170>
   140001dce:	8b 03                	mov    (%rbx),%eax
   140001dd0:	8b 73 04             	mov    0x4(%rbx),%esi
   140001dd3:	0f b6 53 08          	movzbl 0x8(%rbx),%edx
   140001dd7:	4c 01 e8             	add    %r13,%rax
   140001dda:	4c 01 ee             	add    %r13,%rsi
   140001ddd:	48 8b 08             	mov    (%rax),%rcx
   140001de0:	83 fa 20             	cmp    $0x20,%edx
   140001de3:	0f 84 e7 00 00 00    	je     140001ed0 <_pei386_runtime_relocator+0x210>
   140001de9:	0f 87 b9 00 00 00    	ja     140001ea8 <_pei386_runtime_relocator+0x1e8>
   140001def:	83 fa 08             	cmp    $0x8,%edx
   140001df2:	74 ac                	je     140001da0 <_pei386_runtime_relocator+0xe0>
   140001df4:	83 fa 10             	cmp    $0x10,%edx
   140001df7:	0f 85 38 01 00 00    	jne    140001f35 <_pei386_runtime_relocator+0x275>
   140001dfd:	0f b7 16             	movzwl (%rsi),%edx
   140001e00:	49 89 d1             	mov    %rdx,%r9
   140001e03:	49 81 c9 00 00 ff ff 	or     $0xffffffffffff0000,%r9
   140001e0a:	66 85 d2             	test   %dx,%dx
   140001e0d:	49 0f 48 d1          	cmovs  %r9,%rdx
   140001e11:	48 83 c3 0c          	add    $0xc,%rbx
   140001e15:	48 29 c2             	sub    %rax,%rdx
   140001e18:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
   140001e1c:	48 89 f1             	mov    %rsi,%rcx
   140001e1f:	e8 2c fd ff ff       	call   140001b50 <mark_section_writable>
   140001e24:	66 44 89 3e          	mov    %r15w,(%rsi)
   140001e28:	4c 39 e3             	cmp    %r12,%rbx
   140001e2b:	72 a1                	jb     140001dce <_pei386_runtime_relocator+0x10e>
   140001e2d:	0f 1f 00             	nopl   (%rax)
   140001e30:	8b 15 8e a2 00 00    	mov    0xa28e(%rip),%edx        # 14000c0c4 <maxSections>
   140001e36:	85 d2                	test   %edx,%edx
   140001e38:	0f 8e a1 fe ff ff    	jle    140001cdf <_pei386_runtime_relocator+0x1f>
   140001e3e:	48 8b 35 ef b3 00 00 	mov    0xb3ef(%rip),%rsi        # 14000d234 <__imp_VirtualProtect>
   140001e45:	31 db                	xor    %ebx,%ebx
   140001e47:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   140001e4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001e50:	48 8b 05 71 a2 00 00 	mov    0xa271(%rip),%rax        # 14000c0c8 <the_secs>
   140001e57:	48 01 d8             	add    %rbx,%rax
   140001e5a:	44 8b 00             	mov    (%rax),%r8d
   140001e5d:	45 85 c0             	test   %r8d,%r8d
   140001e60:	74 0d                	je     140001e6f <_pei386_runtime_relocator+0x1af>
   140001e62:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001e66:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001e6a:	4d 89 e1             	mov    %r12,%r9
   140001e6d:	ff d6                	call   *%rsi
   140001e6f:	83 c7 01             	add    $0x1,%edi
   140001e72:	48 83 c3 28          	add    $0x28,%rbx
   140001e76:	3b 3d 48 a2 00 00    	cmp    0xa248(%rip),%edi        # 14000c0c4 <maxSections>
   140001e7c:	7c d2                	jl     140001e50 <_pei386_runtime_relocator+0x190>
   140001e7e:	e9 5c fe ff ff       	jmp    140001cdf <_pei386_runtime_relocator+0x1f>
   140001e83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001e88:	85 d2                	test   %edx,%edx
   140001e8a:	75 74                	jne    140001f00 <_pei386_runtime_relocator+0x240>
   140001e8c:	8b 43 04             	mov    0x4(%rbx),%eax
   140001e8f:	89 c1                	mov    %eax,%ecx
   140001e91:	0b 4b 08             	or     0x8(%rbx),%ecx
   140001e94:	0f 85 c8 fe ff ff    	jne    140001d62 <_pei386_runtime_relocator+0xa2>
   140001e9a:	48 83 c3 0c          	add    $0xc,%rbx
   140001e9e:	e9 b2 fe ff ff       	jmp    140001d55 <_pei386_runtime_relocator+0x95>
   140001ea3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001ea8:	83 fa 40             	cmp    $0x40,%edx
   140001eab:	0f 85 84 00 00 00    	jne    140001f35 <_pei386_runtime_relocator+0x275>
   140001eb1:	4c 8b 3e             	mov    (%rsi),%r15
   140001eb4:	49 29 c7             	sub    %rax,%r15
   140001eb7:	49 01 cf             	add    %rcx,%r15
   140001eba:	48 89 f1             	mov    %rsi,%rcx
   140001ebd:	e8 8e fc ff ff       	call   140001b50 <mark_section_writable>
   140001ec2:	4c 89 3e             	mov    %r15,(%rsi)
   140001ec5:	e9 fb fe ff ff       	jmp    140001dc5 <_pei386_runtime_relocator+0x105>
   140001eca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001ed0:	8b 16                	mov    (%rsi),%edx
   140001ed2:	49 89 d0             	mov    %rdx,%r8
   140001ed5:	4c 09 f2             	or     %r14,%rdx
   140001ed8:	45 85 c0             	test   %r8d,%r8d
   140001edb:	49 0f 49 d0          	cmovns %r8,%rdx
   140001edf:	48 29 c2             	sub    %rax,%rdx
   140001ee2:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
   140001ee6:	48 89 f1             	mov    %rsi,%rcx
   140001ee9:	e8 62 fc ff ff       	call   140001b50 <mark_section_writable>
   140001eee:	44 89 3e             	mov    %r15d,(%rsi)
   140001ef1:	e9 cf fe ff ff       	jmp    140001dc5 <_pei386_runtime_relocator+0x105>
   140001ef6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001efd:	00 00 00 
   140001f00:	4c 39 e3             	cmp    %r12,%rbx
   140001f03:	0f 83 d6 fd ff ff    	jae    140001cdf <_pei386_runtime_relocator+0x1f>
   140001f09:	4c 8b 35 d0 77 00 00 	mov    0x77d0(%rip),%r14        # 1400096e0 <.refptr.__image_base__>
   140001f10:	8b 73 04             	mov    0x4(%rbx),%esi
   140001f13:	44 8b 2b             	mov    (%rbx),%r13d
   140001f16:	48 83 c3 08          	add    $0x8,%rbx
   140001f1a:	4c 01 f6             	add    %r14,%rsi
   140001f1d:	44 03 2e             	add    (%rsi),%r13d
   140001f20:	48 89 f1             	mov    %rsi,%rcx
   140001f23:	e8 28 fc ff ff       	call   140001b50 <mark_section_writable>
   140001f28:	44 89 2e             	mov    %r13d,(%rsi)
   140001f2b:	4c 39 e3             	cmp    %r12,%rbx
   140001f2e:	72 e0                	jb     140001f10 <_pei386_runtime_relocator+0x250>
   140001f30:	e9 fb fe ff ff       	jmp    140001e30 <_pei386_runtime_relocator+0x170>
   140001f35:	48 8d 0d 5c 73 00 00 	lea    0x735c(%rip),%rcx        # 140009298 <.rdata+0xd8>
   140001f3c:	e8 9f fb ff ff       	call   140001ae0 <__report_error>
   140001f41:	48 8d 0d 18 73 00 00 	lea    0x7318(%rip),%rcx        # 140009260 <.rdata+0xa0>
   140001f48:	e8 93 fb ff ff       	call   140001ae0 <__report_error>
   140001f4d:	90                   	nop
   140001f4e:	90                   	nop
   140001f4f:	90                   	nop

0000000140001f50 <__mingw_raise_matherr>:
   140001f50:	48 83 ec 58          	sub    $0x58,%rsp
   140001f54:	48 8b 05 75 a1 00 00 	mov    0xa175(%rip),%rax        # 14000c0d0 <stUserMathErr>
   140001f5b:	48 85 c0             	test   %rax,%rax
   140001f5e:	74 2c                	je     140001f8c <__mingw_raise_matherr+0x3c>
   140001f60:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001f67:	00 00 
   140001f69:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001f6d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001f72:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001f77:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   140001f7d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140001f83:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001f89:	ff d0                	call   *%rax
   140001f8b:	90                   	nop
   140001f8c:	48 83 c4 58          	add    $0x58,%rsp
   140001f90:	c3                   	ret    
   140001f91:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001f98:	00 00 00 00 
   140001f9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001fa0 <__mingw_setusermatherr>:
   140001fa0:	48 89 0d 29 a1 00 00 	mov    %rcx,0xa129(%rip)        # 14000c0d0 <stUserMathErr>
   140001fa7:	e9 f4 56 00 00       	jmp    1400076a0 <__setusermatherr>
   140001fac:	90                   	nop
   140001fad:	90                   	nop
   140001fae:	90                   	nop
   140001faf:	90                   	nop

0000000140001fb0 <_gnu_exception_handler>:
   140001fb0:	41 54                	push   %r12
   140001fb2:	48 83 ec 20          	sub    $0x20,%rsp
   140001fb6:	48 8b 11             	mov    (%rcx),%rdx
   140001fb9:	8b 02                	mov    (%rdx),%eax
   140001fbb:	49 89 cc             	mov    %rcx,%r12
   140001fbe:	89 c1                	mov    %eax,%ecx
   140001fc0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001fc6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001fcc:	0f 84 be 00 00 00    	je     140002090 <_gnu_exception_handler+0xe0>
   140001fd2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001fd7:	0f 87 9a 00 00 00    	ja     140002077 <_gnu_exception_handler+0xc7>
   140001fdd:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001fe2:	76 44                	jbe    140002028 <_gnu_exception_handler+0x78>
   140001fe4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001fe9:	83 f8 09             	cmp    $0x9,%eax
   140001fec:	77 2a                	ja     140002018 <_gnu_exception_handler+0x68>
   140001fee:	48 8d 15 db 72 00 00 	lea    0x72db(%rip),%rdx        # 1400092d0 <.rdata>
   140001ff5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001ff9:	48 01 d0             	add    %rdx,%rax
   140001ffc:	ff e0                	jmp    *%rax
   140001ffe:	66 90                	xchg   %ax,%ax
   140002000:	ba 01 00 00 00       	mov    $0x1,%edx
   140002005:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000200a:	e8 09 56 00 00       	call   140007618 <signal>
   14000200f:	e8 bc fa ff ff       	call   140001ad0 <_fpreset>
   140002014:	0f 1f 40 00          	nopl   0x0(%rax)
   140002018:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000201d:	48 83 c4 20          	add    $0x20,%rsp
   140002021:	41 5c                	pop    %r12
   140002023:	c3                   	ret    
   140002024:	0f 1f 40 00          	nopl   0x0(%rax)
   140002028:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   14000202d:	0f 84 dd 00 00 00    	je     140002110 <_gnu_exception_handler+0x160>
   140002033:	76 3b                	jbe    140002070 <_gnu_exception_handler+0xc0>
   140002035:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   14000203a:	74 dc                	je     140002018 <_gnu_exception_handler+0x68>
   14000203c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140002041:	75 34                	jne    140002077 <_gnu_exception_handler+0xc7>
   140002043:	31 d2                	xor    %edx,%edx
   140002045:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000204a:	e8 c9 55 00 00       	call   140007618 <signal>
   14000204f:	48 83 f8 01          	cmp    $0x1,%rax
   140002053:	0f 84 e3 00 00 00    	je     14000213c <_gnu_exception_handler+0x18c>
   140002059:	48 85 c0             	test   %rax,%rax
   14000205c:	74 19                	je     140002077 <_gnu_exception_handler+0xc7>
   14000205e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002063:	ff d0                	call   *%rax
   140002065:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000206a:	eb b1                	jmp    14000201d <_gnu_exception_handler+0x6d>
   14000206c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002070:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140002075:	74 a1                	je     140002018 <_gnu_exception_handler+0x68>
   140002077:	48 8b 05 72 a0 00 00 	mov    0xa072(%rip),%rax        # 14000c0f0 <__mingw_oldexcpt_handler>
   14000207e:	48 85 c0             	test   %rax,%rax
   140002081:	74 1d                	je     1400020a0 <_gnu_exception_handler+0xf0>
   140002083:	4c 89 e1             	mov    %r12,%rcx
   140002086:	48 83 c4 20          	add    $0x20,%rsp
   14000208a:	41 5c                	pop    %r12
   14000208c:	48 ff e0             	rex.W jmp *%rax
   14000208f:	90                   	nop
   140002090:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140002094:	0f 85 38 ff ff ff    	jne    140001fd2 <_gnu_exception_handler+0x22>
   14000209a:	e9 79 ff ff ff       	jmp    140002018 <_gnu_exception_handler+0x68>
   14000209f:	90                   	nop
   1400020a0:	31 c0                	xor    %eax,%eax
   1400020a2:	48 83 c4 20          	add    $0x20,%rsp
   1400020a6:	41 5c                	pop    %r12
   1400020a8:	c3                   	ret    
   1400020a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400020b0:	31 d2                	xor    %edx,%edx
   1400020b2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400020b7:	e8 5c 55 00 00       	call   140007618 <signal>
   1400020bc:	48 83 f8 01          	cmp    $0x1,%rax
   1400020c0:	0f 84 3a ff ff ff    	je     140002000 <_gnu_exception_handler+0x50>
   1400020c6:	48 85 c0             	test   %rax,%rax
   1400020c9:	74 ac                	je     140002077 <_gnu_exception_handler+0xc7>
   1400020cb:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400020d0:	ff d0                	call   *%rax
   1400020d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400020d7:	e9 41 ff ff ff       	jmp    14000201d <_gnu_exception_handler+0x6d>
   1400020dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400020e0:	31 d2                	xor    %edx,%edx
   1400020e2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400020e7:	e8 2c 55 00 00       	call   140007618 <signal>
   1400020ec:	48 83 f8 01          	cmp    $0x1,%rax
   1400020f0:	75 d4                	jne    1400020c6 <_gnu_exception_handler+0x116>
   1400020f2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400020f7:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400020fc:	e8 17 55 00 00       	call   140007618 <signal>
   140002101:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002106:	e9 12 ff ff ff       	jmp    14000201d <_gnu_exception_handler+0x6d>
   14000210b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002110:	31 d2                	xor    %edx,%edx
   140002112:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002117:	e8 fc 54 00 00       	call   140007618 <signal>
   14000211c:	48 83 f8 01          	cmp    $0x1,%rax
   140002120:	74 31                	je     140002153 <_gnu_exception_handler+0x1a3>
   140002122:	48 85 c0             	test   %rax,%rax
   140002125:	0f 84 4c ff ff ff    	je     140002077 <_gnu_exception_handler+0xc7>
   14000212b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002130:	ff d0                	call   *%rax
   140002132:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002137:	e9 e1 fe ff ff       	jmp    14000201d <_gnu_exception_handler+0x6d>
   14000213c:	ba 01 00 00 00       	mov    $0x1,%edx
   140002141:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002146:	e8 cd 54 00 00       	call   140007618 <signal>
   14000214b:	83 c8 ff             	or     $0xffffffff,%eax
   14000214e:	e9 ca fe ff ff       	jmp    14000201d <_gnu_exception_handler+0x6d>
   140002153:	ba 01 00 00 00       	mov    $0x1,%edx
   140002158:	b9 0b 00 00 00       	mov    $0xb,%ecx
   14000215d:	e8 b6 54 00 00       	call   140007618 <signal>
   140002162:	83 c8 ff             	or     $0xffffffff,%eax
   140002165:	e9 b3 fe ff ff       	jmp    14000201d <_gnu_exception_handler+0x6d>
   14000216a:	90                   	nop
   14000216b:	90                   	nop
   14000216c:	90                   	nop
   14000216d:	90                   	nop
   14000216e:	90                   	nop
   14000216f:	90                   	nop

0000000140002170 <__mingwthr_run_key_dtors.part.0>:
   140002170:	41 55                	push   %r13
   140002172:	41 54                	push   %r12
   140002174:	57                   	push   %rdi
   140002175:	56                   	push   %rsi
   140002176:	53                   	push   %rbx
   140002177:	48 83 ec 20          	sub    $0x20,%rsp
   14000217b:	4c 8d 2d 9e 9f 00 00 	lea    0x9f9e(%rip),%r13        # 14000c120 <__mingwthr_cs>
   140002182:	4c 89 e9             	mov    %r13,%rcx
   140002185:	ff 15 59 b0 00 00    	call   *0xb059(%rip)        # 14000d1e4 <__imp_EnterCriticalSection>
   14000218b:	48 8b 1d 6e 9f 00 00 	mov    0x9f6e(%rip),%rbx        # 14000c100 <key_dtor_list>
   140002192:	48 85 db             	test   %rbx,%rbx
   140002195:	74 35                	je     1400021cc <__mingwthr_run_key_dtors.part.0+0x5c>
   140002197:	48 8b 3d 8e b0 00 00 	mov    0xb08e(%rip),%rdi        # 14000d22c <__imp_TlsGetValue>
   14000219e:	48 8b 35 47 b0 00 00 	mov    0xb047(%rip),%rsi        # 14000d1ec <__imp_GetLastError>
   1400021a5:	0f 1f 00             	nopl   (%rax)
   1400021a8:	8b 0b                	mov    (%rbx),%ecx
   1400021aa:	ff d7                	call   *%rdi
   1400021ac:	49 89 c4             	mov    %rax,%r12
   1400021af:	ff d6                	call   *%rsi
   1400021b1:	85 c0                	test   %eax,%eax
   1400021b3:	75 0e                	jne    1400021c3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400021b5:	4d 85 e4             	test   %r12,%r12
   1400021b8:	74 09                	je     1400021c3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400021ba:	48 8b 43 08          	mov    0x8(%rbx),%rax
   1400021be:	4c 89 e1             	mov    %r12,%rcx
   1400021c1:	ff d0                	call   *%rax
   1400021c3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400021c7:	48 85 db             	test   %rbx,%rbx
   1400021ca:	75 dc                	jne    1400021a8 <__mingwthr_run_key_dtors.part.0+0x38>
   1400021cc:	4c 89 e9             	mov    %r13,%rcx
   1400021cf:	48 83 c4 20          	add    $0x20,%rsp
   1400021d3:	5b                   	pop    %rbx
   1400021d4:	5e                   	pop    %rsi
   1400021d5:	5f                   	pop    %rdi
   1400021d6:	41 5c                	pop    %r12
   1400021d8:	41 5d                	pop    %r13
   1400021da:	48 ff 25 2b b0 00 00 	rex.W jmp *0xb02b(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   1400021e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400021e8:	00 00 00 00 
   1400021ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400021f0 <___w64_mingwthr_add_key_dtor>:
   1400021f0:	41 54                	push   %r12
   1400021f2:	57                   	push   %rdi
   1400021f3:	56                   	push   %rsi
   1400021f4:	53                   	push   %rbx
   1400021f5:	48 83 ec 28          	sub    $0x28,%rsp
   1400021f9:	8b 05 09 9f 00 00    	mov    0x9f09(%rip),%eax        # 14000c108 <__mingwthr_cs_init>
   1400021ff:	89 cf                	mov    %ecx,%edi
   140002201:	48 89 d6             	mov    %rdx,%rsi
   140002204:	85 c0                	test   %eax,%eax
   140002206:	75 10                	jne    140002218 <___w64_mingwthr_add_key_dtor+0x28>
   140002208:	48 83 c4 28          	add    $0x28,%rsp
   14000220c:	5b                   	pop    %rbx
   14000220d:	5e                   	pop    %rsi
   14000220e:	5f                   	pop    %rdi
   14000220f:	41 5c                	pop    %r12
   140002211:	c3                   	ret    
   140002212:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002218:	ba 18 00 00 00       	mov    $0x18,%edx
   14000221d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002222:	e8 41 54 00 00       	call   140007668 <calloc>
   140002227:	48 89 c3             	mov    %rax,%rbx
   14000222a:	48 85 c0             	test   %rax,%rax
   14000222d:	74 3d                	je     14000226c <___w64_mingwthr_add_key_dtor+0x7c>
   14000222f:	4c 8d 25 ea 9e 00 00 	lea    0x9eea(%rip),%r12        # 14000c120 <__mingwthr_cs>
   140002236:	89 38                	mov    %edi,(%rax)
   140002238:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000223c:	4c 89 e1             	mov    %r12,%rcx
   14000223f:	ff 15 9f af 00 00    	call   *0xaf9f(%rip)        # 14000d1e4 <__imp_EnterCriticalSection>
   140002245:	48 8b 05 b4 9e 00 00 	mov    0x9eb4(%rip),%rax        # 14000c100 <key_dtor_list>
   14000224c:	4c 89 e1             	mov    %r12,%rcx
   14000224f:	48 89 1d aa 9e 00 00 	mov    %rbx,0x9eaa(%rip)        # 14000c100 <key_dtor_list>
   140002256:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000225a:	ff 15 ac af 00 00    	call   *0xafac(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   140002260:	31 c0                	xor    %eax,%eax
   140002262:	48 83 c4 28          	add    $0x28,%rsp
   140002266:	5b                   	pop    %rbx
   140002267:	5e                   	pop    %rsi
   140002268:	5f                   	pop    %rdi
   140002269:	41 5c                	pop    %r12
   14000226b:	c3                   	ret    
   14000226c:	83 c8 ff             	or     $0xffffffff,%eax
   14000226f:	eb 97                	jmp    140002208 <___w64_mingwthr_add_key_dtor+0x18>
   140002271:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002278:	00 00 00 00 
   14000227c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002280 <___w64_mingwthr_remove_key_dtor>:
   140002280:	41 54                	push   %r12
   140002282:	53                   	push   %rbx
   140002283:	48 83 ec 28          	sub    $0x28,%rsp
   140002287:	8b 05 7b 9e 00 00    	mov    0x9e7b(%rip),%eax        # 14000c108 <__mingwthr_cs_init>
   14000228d:	89 cb                	mov    %ecx,%ebx
   14000228f:	85 c0                	test   %eax,%eax
   140002291:	75 0d                	jne    1400022a0 <___w64_mingwthr_remove_key_dtor+0x20>
   140002293:	31 c0                	xor    %eax,%eax
   140002295:	48 83 c4 28          	add    $0x28,%rsp
   140002299:	5b                   	pop    %rbx
   14000229a:	41 5c                	pop    %r12
   14000229c:	c3                   	ret    
   14000229d:	0f 1f 00             	nopl   (%rax)
   1400022a0:	4c 8d 25 79 9e 00 00 	lea    0x9e79(%rip),%r12        # 14000c120 <__mingwthr_cs>
   1400022a7:	4c 89 e1             	mov    %r12,%rcx
   1400022aa:	ff 15 34 af 00 00    	call   *0xaf34(%rip)        # 14000d1e4 <__imp_EnterCriticalSection>
   1400022b0:	48 8b 0d 49 9e 00 00 	mov    0x9e49(%rip),%rcx        # 14000c100 <key_dtor_list>
   1400022b7:	48 85 c9             	test   %rcx,%rcx
   1400022ba:	74 27                	je     1400022e3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400022bc:	31 d2                	xor    %edx,%edx
   1400022be:	eb 0b                	jmp    1400022cb <___w64_mingwthr_remove_key_dtor+0x4b>
   1400022c0:	48 89 ca             	mov    %rcx,%rdx
   1400022c3:	48 85 c0             	test   %rax,%rax
   1400022c6:	74 1b                	je     1400022e3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400022c8:	48 89 c1             	mov    %rax,%rcx
   1400022cb:	8b 01                	mov    (%rcx),%eax
   1400022cd:	39 d8                	cmp    %ebx,%eax
   1400022cf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400022d3:	75 eb                	jne    1400022c0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400022d5:	48 85 d2             	test   %rdx,%rdx
   1400022d8:	74 26                	je     140002300 <___w64_mingwthr_remove_key_dtor+0x80>
   1400022da:	48 89 42 10          	mov    %rax,0x10(%rdx)
   1400022de:	e8 65 53 00 00       	call   140007648 <free>
   1400022e3:	4c 89 e1             	mov    %r12,%rcx
   1400022e6:	ff 15 20 af 00 00    	call   *0xaf20(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   1400022ec:	31 c0                	xor    %eax,%eax
   1400022ee:	48 83 c4 28          	add    $0x28,%rsp
   1400022f2:	5b                   	pop    %rbx
   1400022f3:	41 5c                	pop    %r12
   1400022f5:	c3                   	ret    
   1400022f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400022fd:	00 00 00 
   140002300:	48 89 05 f9 9d 00 00 	mov    %rax,0x9df9(%rip)        # 14000c100 <key_dtor_list>
   140002307:	eb d5                	jmp    1400022de <___w64_mingwthr_remove_key_dtor+0x5e>
   140002309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002310 <__mingw_TLScallback>:
   140002310:	53                   	push   %rbx
   140002311:	48 83 ec 20          	sub    $0x20,%rsp
   140002315:	83 fa 02             	cmp    $0x2,%edx
   140002318:	74 46                	je     140002360 <__mingw_TLScallback+0x50>
   14000231a:	77 2c                	ja     140002348 <__mingw_TLScallback+0x38>
   14000231c:	85 d2                	test   %edx,%edx
   14000231e:	74 50                	je     140002370 <__mingw_TLScallback+0x60>
   140002320:	8b 05 e2 9d 00 00    	mov    0x9de2(%rip),%eax        # 14000c108 <__mingwthr_cs_init>
   140002326:	85 c0                	test   %eax,%eax
   140002328:	0f 84 b2 00 00 00    	je     1400023e0 <__mingw_TLScallback+0xd0>
   14000232e:	c7 05 d0 9d 00 00 01 	movl   $0x1,0x9dd0(%rip)        # 14000c108 <__mingwthr_cs_init>
   140002335:	00 00 00 
   140002338:	b8 01 00 00 00       	mov    $0x1,%eax
   14000233d:	48 83 c4 20          	add    $0x20,%rsp
   140002341:	5b                   	pop    %rbx
   140002342:	c3                   	ret    
   140002343:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002348:	83 fa 03             	cmp    $0x3,%edx
   14000234b:	75 eb                	jne    140002338 <__mingw_TLScallback+0x28>
   14000234d:	8b 05 b5 9d 00 00    	mov    0x9db5(%rip),%eax        # 14000c108 <__mingwthr_cs_init>
   140002353:	85 c0                	test   %eax,%eax
   140002355:	74 e1                	je     140002338 <__mingw_TLScallback+0x28>
   140002357:	e8 14 fe ff ff       	call   140002170 <__mingwthr_run_key_dtors.part.0>
   14000235c:	eb da                	jmp    140002338 <__mingw_TLScallback+0x28>
   14000235e:	66 90                	xchg   %ax,%ax
   140002360:	e8 6b f7 ff ff       	call   140001ad0 <_fpreset>
   140002365:	b8 01 00 00 00       	mov    $0x1,%eax
   14000236a:	48 83 c4 20          	add    $0x20,%rsp
   14000236e:	5b                   	pop    %rbx
   14000236f:	c3                   	ret    
   140002370:	8b 05 92 9d 00 00    	mov    0x9d92(%rip),%eax        # 14000c108 <__mingwthr_cs_init>
   140002376:	85 c0                	test   %eax,%eax
   140002378:	75 56                	jne    1400023d0 <__mingw_TLScallback+0xc0>
   14000237a:	8b 05 88 9d 00 00    	mov    0x9d88(%rip),%eax        # 14000c108 <__mingwthr_cs_init>
   140002380:	83 f8 01             	cmp    $0x1,%eax
   140002383:	75 b3                	jne    140002338 <__mingw_TLScallback+0x28>
   140002385:	48 8b 1d 74 9d 00 00 	mov    0x9d74(%rip),%rbx        # 14000c100 <key_dtor_list>
   14000238c:	48 85 db             	test   %rbx,%rbx
   14000238f:	74 18                	je     1400023a9 <__mingw_TLScallback+0x99>
   140002391:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002398:	48 89 d9             	mov    %rbx,%rcx
   14000239b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000239f:	e8 a4 52 00 00       	call   140007648 <free>
   1400023a4:	48 85 db             	test   %rbx,%rbx
   1400023a7:	75 ef                	jne    140002398 <__mingw_TLScallback+0x88>
   1400023a9:	48 8d 0d 70 9d 00 00 	lea    0x9d70(%rip),%rcx        # 14000c120 <__mingwthr_cs>
   1400023b0:	48 c7 05 45 9d 00 00 	movq   $0x0,0x9d45(%rip)        # 14000c100 <key_dtor_list>
   1400023b7:	00 00 00 00 
   1400023bb:	c7 05 43 9d 00 00 00 	movl   $0x0,0x9d43(%rip)        # 14000c108 <__mingwthr_cs_init>
   1400023c2:	00 00 00 
   1400023c5:	ff 15 11 ae 00 00    	call   *0xae11(%rip)        # 14000d1dc <__IAT_start__>
   1400023cb:	e9 68 ff ff ff       	jmp    140002338 <__mingw_TLScallback+0x28>
   1400023d0:	e8 9b fd ff ff       	call   140002170 <__mingwthr_run_key_dtors.part.0>
   1400023d5:	eb a3                	jmp    14000237a <__mingw_TLScallback+0x6a>
   1400023d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400023de:	00 00 
   1400023e0:	48 8d 0d 39 9d 00 00 	lea    0x9d39(%rip),%rcx        # 14000c120 <__mingwthr_cs>
   1400023e7:	ff 15 0f ae 00 00    	call   *0xae0f(%rip)        # 14000d1fc <__imp_InitializeCriticalSection>
   1400023ed:	e9 3c ff ff ff       	jmp    14000232e <__mingw_TLScallback+0x1e>
   1400023f2:	90                   	nop
   1400023f3:	90                   	nop
   1400023f4:	90                   	nop
   1400023f5:	90                   	nop
   1400023f6:	90                   	nop
   1400023f7:	90                   	nop
   1400023f8:	90                   	nop
   1400023f9:	90                   	nop
   1400023fa:	90                   	nop
   1400023fb:	90                   	nop
   1400023fc:	90                   	nop
   1400023fd:	90                   	nop
   1400023fe:	90                   	nop
   1400023ff:	90                   	nop

0000000140002400 <_ValidateImageBase>:
   140002400:	31 c0                	xor    %eax,%eax
   140002402:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002407:	75 0f                	jne    140002418 <_ValidateImageBase+0x18>
   140002409:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000240d:	48 01 d1             	add    %rdx,%rcx
   140002410:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002416:	74 08                	je     140002420 <_ValidateImageBase+0x20>
   140002418:	c3                   	ret    
   140002419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002420:	31 c0                	xor    %eax,%eax
   140002422:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002428:	0f 94 c0             	sete   %al
   14000242b:	c3                   	ret    
   14000242c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002430 <_FindPESection>:
   140002430:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002434:	48 01 c1             	add    %rax,%rcx
   140002437:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000243b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002440:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002444:	85 c9                	test   %ecx,%ecx
   140002446:	74 2d                	je     140002475 <_FindPESection+0x45>
   140002448:	83 e9 01             	sub    $0x1,%ecx
   14000244b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   14000244f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002454:	0f 1f 40 00          	nopl   0x0(%rax)
   140002458:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000245c:	4c 89 c1             	mov    %r8,%rcx
   14000245f:	49 39 d0             	cmp    %rdx,%r8
   140002462:	77 08                	ja     14000246c <_FindPESection+0x3c>
   140002464:	03 48 08             	add    0x8(%rax),%ecx
   140002467:	48 39 d1             	cmp    %rdx,%rcx
   14000246a:	77 0b                	ja     140002477 <_FindPESection+0x47>
   14000246c:	48 83 c0 28          	add    $0x28,%rax
   140002470:	4c 39 c8             	cmp    %r9,%rax
   140002473:	75 e3                	jne    140002458 <_FindPESection+0x28>
   140002475:	31 c0                	xor    %eax,%eax
   140002477:	c3                   	ret    
   140002478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000247f:	00 

0000000140002480 <_FindPESectionByName>:
   140002480:	41 54                	push   %r12
   140002482:	56                   	push   %rsi
   140002483:	53                   	push   %rbx
   140002484:	48 83 ec 20          	sub    $0x20,%rsp
   140002488:	48 89 cb             	mov    %rcx,%rbx
   14000248b:	e8 78 51 00 00       	call   140007608 <strlen>
   140002490:	48 83 f8 08          	cmp    $0x8,%rax
   140002494:	77 7a                	ja     140002510 <_FindPESectionByName+0x90>
   140002496:	48 8b 15 43 72 00 00 	mov    0x7243(%rip),%rdx        # 1400096e0 <.refptr.__image_base__>
   14000249d:	45 31 e4             	xor    %r12d,%r12d
   1400024a0:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400024a5:	75 57                	jne    1400024fe <_FindPESectionByName+0x7e>
   1400024a7:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   1400024ab:	48 01 d0             	add    %rdx,%rax
   1400024ae:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400024b4:	75 48                	jne    1400024fe <_FindPESectionByName+0x7e>
   1400024b6:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400024bc:	75 40                	jne    1400024fe <_FindPESectionByName+0x7e>
   1400024be:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   1400024c2:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   1400024c7:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   1400024cb:	85 c0                	test   %eax,%eax
   1400024cd:	74 41                	je     140002510 <_FindPESectionByName+0x90>
   1400024cf:	83 e8 01             	sub    $0x1,%eax
   1400024d2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400024d6:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   1400024db:	eb 0c                	jmp    1400024e9 <_FindPESectionByName+0x69>
   1400024dd:	0f 1f 00             	nopl   (%rax)
   1400024e0:	49 83 c4 28          	add    $0x28,%r12
   1400024e4:	49 39 f4             	cmp    %rsi,%r12
   1400024e7:	74 27                	je     140002510 <_FindPESectionByName+0x90>
   1400024e9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400024ef:	48 89 da             	mov    %rbx,%rdx
   1400024f2:	4c 89 e1             	mov    %r12,%rcx
   1400024f5:	e8 06 51 00 00       	call   140007600 <strncmp>
   1400024fa:	85 c0                	test   %eax,%eax
   1400024fc:	75 e2                	jne    1400024e0 <_FindPESectionByName+0x60>
   1400024fe:	4c 89 e0             	mov    %r12,%rax
   140002501:	48 83 c4 20          	add    $0x20,%rsp
   140002505:	5b                   	pop    %rbx
   140002506:	5e                   	pop    %rsi
   140002507:	41 5c                	pop    %r12
   140002509:	c3                   	ret    
   14000250a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002510:	45 31 e4             	xor    %r12d,%r12d
   140002513:	4c 89 e0             	mov    %r12,%rax
   140002516:	48 83 c4 20          	add    $0x20,%rsp
   14000251a:	5b                   	pop    %rbx
   14000251b:	5e                   	pop    %rsi
   14000251c:	41 5c                	pop    %r12
   14000251e:	c3                   	ret    
   14000251f:	90                   	nop

0000000140002520 <__mingw_GetSectionForAddress>:
   140002520:	48 8b 15 b9 71 00 00 	mov    0x71b9(%rip),%rdx        # 1400096e0 <.refptr.__image_base__>
   140002527:	31 c0                	xor    %eax,%eax
   140002529:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000252e:	75 10                	jne    140002540 <__mingw_GetSectionForAddress+0x20>
   140002530:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002534:	49 01 d0             	add    %rdx,%r8
   140002537:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000253e:	74 08                	je     140002548 <__mingw_GetSectionForAddress+0x28>
   140002540:	c3                   	ret    
   140002541:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002548:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000254f:	75 ef                	jne    140002540 <__mingw_GetSectionForAddress+0x20>
   140002551:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002556:	48 29 d1             	sub    %rdx,%rcx
   140002559:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   14000255e:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002563:	85 d2                	test   %edx,%edx
   140002565:	74 2e                	je     140002595 <__mingw_GetSectionForAddress+0x75>
   140002567:	83 ea 01             	sub    $0x1,%edx
   14000256a:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000256e:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002573:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002578:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000257c:	4c 89 c2             	mov    %r8,%rdx
   14000257f:	4c 39 c1             	cmp    %r8,%rcx
   140002582:	72 08                	jb     14000258c <__mingw_GetSectionForAddress+0x6c>
   140002584:	03 50 08             	add    0x8(%rax),%edx
   140002587:	48 39 d1             	cmp    %rdx,%rcx
   14000258a:	72 b4                	jb     140002540 <__mingw_GetSectionForAddress+0x20>
   14000258c:	48 83 c0 28          	add    $0x28,%rax
   140002590:	4c 39 c8             	cmp    %r9,%rax
   140002593:	75 e3                	jne    140002578 <__mingw_GetSectionForAddress+0x58>
   140002595:	31 c0                	xor    %eax,%eax
   140002597:	c3                   	ret    
   140002598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000259f:	00 

00000001400025a0 <__mingw_GetSectionCount>:
   1400025a0:	48 8b 05 39 71 00 00 	mov    0x7139(%rip),%rax        # 1400096e0 <.refptr.__image_base__>
   1400025a7:	45 31 c0             	xor    %r8d,%r8d
   1400025aa:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400025af:	75 0f                	jne    1400025c0 <__mingw_GetSectionCount+0x20>
   1400025b1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400025b5:	48 01 d0             	add    %rdx,%rax
   1400025b8:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400025be:	74 08                	je     1400025c8 <__mingw_GetSectionCount+0x28>
   1400025c0:	44 89 c0             	mov    %r8d,%eax
   1400025c3:	c3                   	ret    
   1400025c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400025c8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400025ce:	75 f0                	jne    1400025c0 <__mingw_GetSectionCount+0x20>
   1400025d0:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   1400025d5:	44 89 c0             	mov    %r8d,%eax
   1400025d8:	c3                   	ret    
   1400025d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400025e0 <_FindPESectionExec>:
   1400025e0:	4c 8b 05 f9 70 00 00 	mov    0x70f9(%rip),%r8        # 1400096e0 <.refptr.__image_base__>
   1400025e7:	31 c0                	xor    %eax,%eax
   1400025e9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   1400025ef:	75 0f                	jne    140002600 <_FindPESectionExec+0x20>
   1400025f1:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   1400025f5:	4c 01 c2             	add    %r8,%rdx
   1400025f8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   1400025fe:	74 08                	je     140002608 <_FindPESectionExec+0x28>
   140002600:	c3                   	ret    
   140002601:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002608:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000260e:	75 f0                	jne    140002600 <_FindPESectionExec+0x20>
   140002610:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002614:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002619:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   14000261d:	85 d2                	test   %edx,%edx
   14000261f:	74 27                	je     140002648 <_FindPESectionExec+0x68>
   140002621:	83 ea 01             	sub    $0x1,%edx
   140002624:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002628:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   14000262d:	0f 1f 00             	nopl   (%rax)
   140002630:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002634:	74 09                	je     14000263f <_FindPESectionExec+0x5f>
   140002636:	48 85 c9             	test   %rcx,%rcx
   140002639:	74 c5                	je     140002600 <_FindPESectionExec+0x20>
   14000263b:	48 83 e9 01          	sub    $0x1,%rcx
   14000263f:	48 83 c0 28          	add    $0x28,%rax
   140002643:	48 39 d0             	cmp    %rdx,%rax
   140002646:	75 e8                	jne    140002630 <_FindPESectionExec+0x50>
   140002648:	31 c0                	xor    %eax,%eax
   14000264a:	c3                   	ret    
   14000264b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002650 <_GetPEImageBase>:
   140002650:	48 8b 05 89 70 00 00 	mov    0x7089(%rip),%rax        # 1400096e0 <.refptr.__image_base__>
   140002657:	45 31 c0             	xor    %r8d,%r8d
   14000265a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000265f:	75 0f                	jne    140002670 <_GetPEImageBase+0x20>
   140002661:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002665:	48 01 c2             	add    %rax,%rdx
   140002668:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000266e:	74 08                	je     140002678 <_GetPEImageBase+0x28>
   140002670:	4c 89 c0             	mov    %r8,%rax
   140002673:	c3                   	ret    
   140002674:	0f 1f 40 00          	nopl   0x0(%rax)
   140002678:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000267e:	4c 0f 44 c0          	cmove  %rax,%r8
   140002682:	4c 89 c0             	mov    %r8,%rax
   140002685:	c3                   	ret    
   140002686:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000268d:	00 00 00 

0000000140002690 <_IsNonwritableInCurrentImage>:
   140002690:	48 8b 15 49 70 00 00 	mov    0x7049(%rip),%rdx        # 1400096e0 <.refptr.__image_base__>
   140002697:	31 c0                	xor    %eax,%eax
   140002699:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000269e:	75 10                	jne    1400026b0 <_IsNonwritableInCurrentImage+0x20>
   1400026a0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400026a4:	49 01 d0             	add    %rdx,%r8
   1400026a7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400026ae:	74 08                	je     1400026b8 <_IsNonwritableInCurrentImage+0x28>
   1400026b0:	c3                   	ret    
   1400026b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400026b8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400026bf:	75 ef                	jne    1400026b0 <_IsNonwritableInCurrentImage+0x20>
   1400026c1:	48 29 d1             	sub    %rdx,%rcx
   1400026c4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400026c9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400026ce:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400026d3:	45 85 c0             	test   %r8d,%r8d
   1400026d6:	74 d8                	je     1400026b0 <_IsNonwritableInCurrentImage+0x20>
   1400026d8:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   1400026dc:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400026e0:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   1400026e5:	0f 1f 00             	nopl   (%rax)
   1400026e8:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   1400026ec:	4c 89 c0             	mov    %r8,%rax
   1400026ef:	4c 39 c1             	cmp    %r8,%rcx
   1400026f2:	72 08                	jb     1400026fc <_IsNonwritableInCurrentImage+0x6c>
   1400026f4:	03 42 08             	add    0x8(%rdx),%eax
   1400026f7:	48 39 c1             	cmp    %rax,%rcx
   1400026fa:	72 14                	jb     140002710 <_IsNonwritableInCurrentImage+0x80>
   1400026fc:	48 83 c2 28          	add    $0x28,%rdx
   140002700:	4c 39 ca             	cmp    %r9,%rdx
   140002703:	75 e3                	jne    1400026e8 <_IsNonwritableInCurrentImage+0x58>
   140002705:	31 c0                	xor    %eax,%eax
   140002707:	c3                   	ret    
   140002708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000270f:	00 
   140002710:	8b 42 24             	mov    0x24(%rdx),%eax
   140002713:	f7 d0                	not    %eax
   140002715:	c1 e8 1f             	shr    $0x1f,%eax
   140002718:	c3                   	ret    
   140002719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002720 <__mingw_enum_import_library_names>:
   140002720:	4c 8b 1d b9 6f 00 00 	mov    0x6fb9(%rip),%r11        # 1400096e0 <.refptr.__image_base__>
   140002727:	45 31 c9             	xor    %r9d,%r9d
   14000272a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002730:	75 10                	jne    140002742 <__mingw_enum_import_library_names+0x22>
   140002732:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002736:	4d 01 d8             	add    %r11,%r8
   140002739:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002740:	74 0e                	je     140002750 <__mingw_enum_import_library_names+0x30>
   140002742:	4c 89 c8             	mov    %r9,%rax
   140002745:	c3                   	ret    
   140002746:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000274d:	00 00 00 
   140002750:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002757:	75 e9                	jne    140002742 <__mingw_enum_import_library_names+0x22>
   140002759:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002760:	85 c0                	test   %eax,%eax
   140002762:	74 de                	je     140002742 <__mingw_enum_import_library_names+0x22>
   140002764:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002769:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   14000276e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002773:	45 85 c0             	test   %r8d,%r8d
   140002776:	74 ca                	je     140002742 <__mingw_enum_import_library_names+0x22>
   140002778:	41 83 e8 01          	sub    $0x1,%r8d
   14000277c:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002780:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002785:	0f 1f 00             	nopl   (%rax)
   140002788:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   14000278c:	4d 89 c8             	mov    %r9,%r8
   14000278f:	4c 39 c8             	cmp    %r9,%rax
   140002792:	72 09                	jb     14000279d <__mingw_enum_import_library_names+0x7d>
   140002794:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002798:	4c 39 c0             	cmp    %r8,%rax
   14000279b:	72 13                	jb     1400027b0 <__mingw_enum_import_library_names+0x90>
   14000279d:	48 83 c2 28          	add    $0x28,%rdx
   1400027a1:	49 39 d2             	cmp    %rdx,%r10
   1400027a4:	75 e2                	jne    140002788 <__mingw_enum_import_library_names+0x68>
   1400027a6:	45 31 c9             	xor    %r9d,%r9d
   1400027a9:	4c 89 c8             	mov    %r9,%rax
   1400027ac:	c3                   	ret    
   1400027ad:	0f 1f 00             	nopl   (%rax)
   1400027b0:	4c 01 d8             	add    %r11,%rax
   1400027b3:	eb 0a                	jmp    1400027bf <__mingw_enum_import_library_names+0x9f>
   1400027b5:	0f 1f 00             	nopl   (%rax)
   1400027b8:	83 e9 01             	sub    $0x1,%ecx
   1400027bb:	48 83 c0 14          	add    $0x14,%rax
   1400027bf:	44 8b 40 04          	mov    0x4(%rax),%r8d
   1400027c3:	45 85 c0             	test   %r8d,%r8d
   1400027c6:	75 07                	jne    1400027cf <__mingw_enum_import_library_names+0xaf>
   1400027c8:	8b 50 0c             	mov    0xc(%rax),%edx
   1400027cb:	85 d2                	test   %edx,%edx
   1400027cd:	74 d7                	je     1400027a6 <__mingw_enum_import_library_names+0x86>
   1400027cf:	85 c9                	test   %ecx,%ecx
   1400027d1:	7f e5                	jg     1400027b8 <__mingw_enum_import_library_names+0x98>
   1400027d3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   1400027d7:	4d 01 d9             	add    %r11,%r9
   1400027da:	4c 89 c8             	mov    %r9,%rax
   1400027dd:	c3                   	ret    
   1400027de:	90                   	nop
   1400027df:	90                   	nop

00000001400027e0 <___chkstk_ms>:
   1400027e0:	51                   	push   %rcx
   1400027e1:	50                   	push   %rax
   1400027e2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400027e8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   1400027ed:	72 19                	jb     140002808 <___chkstk_ms+0x28>
   1400027ef:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   1400027f6:	48 83 09 00          	orq    $0x0,(%rcx)
   1400027fa:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002800:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002806:	77 e7                	ja     1400027ef <___chkstk_ms+0xf>
   140002808:	48 29 c1             	sub    %rax,%rcx
   14000280b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000280f:	58                   	pop    %rax
   140002810:	59                   	pop    %rcx
   140002811:	c3                   	ret    
   140002812:	90                   	nop
   140002813:	90                   	nop
   140002814:	90                   	nop
   140002815:	90                   	nop
   140002816:	90                   	nop
   140002817:	90                   	nop
   140002818:	90                   	nop
   140002819:	90                   	nop
   14000281a:	90                   	nop
   14000281b:	90                   	nop
   14000281c:	90                   	nop
   14000281d:	90                   	nop
   14000281e:	90                   	nop
   14000281f:	90                   	nop

0000000140002820 <__mingw_vfprintf>:
   140002820:	41 55                	push   %r13
   140002822:	41 54                	push   %r12
   140002824:	53                   	push   %rbx
   140002825:	48 83 ec 30          	sub    $0x30,%rsp
   140002829:	4c 89 c3             	mov    %r8,%rbx
   14000282c:	49 89 cc             	mov    %rcx,%r12
   14000282f:	49 89 d5             	mov    %rdx,%r13
   140002832:	e8 19 54 00 00       	call   140007c50 <_lock_file>
   140002837:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
   14000283c:	4d 89 e9             	mov    %r13,%r9
   14000283f:	45 31 c0             	xor    %r8d,%r8d
   140002842:	4c 89 e2             	mov    %r12,%rdx
   140002845:	b9 00 60 00 00       	mov    $0x6000,%ecx
   14000284a:	e8 11 1c 00 00       	call   140004460 <__mingw_pformat>
   14000284f:	4c 89 e1             	mov    %r12,%rcx
   140002852:	41 89 c5             	mov    %eax,%r13d
   140002855:	e8 66 54 00 00       	call   140007cc0 <_unlock_file>
   14000285a:	44 89 e8             	mov    %r13d,%eax
   14000285d:	48 83 c4 30          	add    $0x30,%rsp
   140002861:	5b                   	pop    %rbx
   140002862:	41 5c                	pop    %r12
   140002864:	41 5d                	pop    %r13
   140002866:	c3                   	ret    
   140002867:	90                   	nop
   140002868:	90                   	nop
   140002869:	90                   	nop
   14000286a:	90                   	nop
   14000286b:	90                   	nop
   14000286c:	90                   	nop
   14000286d:	90                   	nop
   14000286e:	90                   	nop
   14000286f:	90                   	nop

0000000140002870 <__pformat_cvt>:
   140002870:	48 83 ec 58          	sub    $0x58,%rsp
   140002874:	44 8b 5a 08          	mov    0x8(%rdx),%r11d
   140002878:	4c 8b 12             	mov    (%rdx),%r10
   14000287b:	48 89 d0             	mov    %rdx,%rax
   14000287e:	4c 89 da             	mov    %r11,%rdx
   140002881:	66 81 e2 ff 7f       	and    $0x7fff,%dx
   140002886:	0f 85 94 00 00 00    	jne    140002920 <__pformat_cvt+0xb0>
   14000288c:	4c 89 d2             	mov    %r10,%rdx
   14000288f:	48 c1 ea 20          	shr    $0x20,%rdx
   140002893:	41 09 d2             	or     %edx,%r10d
   140002896:	74 78                	je     140002910 <__pformat_cvt+0xa0>
   140002898:	85 d2                	test   %edx,%edx
   14000289a:	0f 89 c8 00 00 00    	jns    140002968 <__pformat_cvt+0xf8>
   1400028a0:	0f b7 50 08          	movzwl 0x8(%rax),%edx
   1400028a4:	41 bb 01 00 00 00    	mov    $0x1,%r11d
   1400028aa:	41 89 d2             	mov    %edx,%r10d
   1400028ad:	66 41 81 e2 ff 7f    	and    $0x7fff,%r10w
   1400028b3:	66 41 81 ea 3e 40    	sub    $0x403e,%r10w
   1400028b9:	45 0f bf d2          	movswl %r10w,%r10d
   1400028bd:	44 89 5c 24 44       	mov    %r11d,0x44(%rsp)
   1400028c2:	81 e2 00 80 00 00    	and    $0x8000,%edx
   1400028c8:	4c 8b 9c 24 80 00 00 	mov    0x80(%rsp),%r11
   1400028cf:	00 
   1400028d0:	41 89 13             	mov    %edx,(%r11)
   1400028d3:	48 8d 54 24 48       	lea    0x48(%rsp),%rdx
   1400028d8:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   1400028dd:	44 89 d2             	mov    %r10d,%edx
   1400028e0:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
   1400028e5:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
   1400028ea:	44 89 44 24 28       	mov    %r8d,0x28(%rsp)
   1400028ef:	49 89 c0             	mov    %rax,%r8
   1400028f2:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   1400028f6:	48 8d 0d 73 57 00 00 	lea    0x5773(%rip),%rcx        # 140008070 <fpi.0>
   1400028fd:	e8 5e 27 00 00       	call   140005060 <__gdtoa>
   140002902:	48 83 c4 58          	add    $0x58,%rsp
   140002906:	c3                   	ret    
   140002907:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000290e:	00 00 
   140002910:	0f b7 50 08          	movzwl 0x8(%rax),%edx
   140002914:	45 31 db             	xor    %r11d,%r11d
   140002917:	45 31 d2             	xor    %r10d,%r10d
   14000291a:	eb a1                	jmp    1400028bd <__pformat_cvt+0x4d>
   14000291c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002920:	66 81 fa ff 7f       	cmp    $0x7fff,%dx
   140002925:	0f 85 75 ff ff ff    	jne    1400028a0 <__pformat_cvt+0x30>
   14000292b:	4c 89 d2             	mov    %r10,%rdx
   14000292e:	48 c1 ea 20          	shr    $0x20,%rdx
   140002932:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
   140002938:	44 09 d2             	or     %r10d,%edx
   14000293b:	74 13                	je     140002950 <__pformat_cvt+0xe0>
   14000293d:	c7 44 24 44 04 00 00 	movl   $0x4,0x44(%rsp)
   140002944:	00 
   140002945:	45 31 d2             	xor    %r10d,%r10d
   140002948:	31 d2                	xor    %edx,%edx
   14000294a:	e9 79 ff ff ff       	jmp    1400028c8 <__pformat_cvt+0x58>
   14000294f:	90                   	nop
   140002950:	c7 44 24 44 03 00 00 	movl   $0x3,0x44(%rsp)
   140002957:	00 
   140002958:	0f b7 50 08          	movzwl 0x8(%rax),%edx
   14000295c:	45 31 d2             	xor    %r10d,%r10d
   14000295f:	e9 5e ff ff ff       	jmp    1400028c2 <__pformat_cvt+0x52>
   140002964:	0f 1f 40 00          	nopl   0x0(%rax)
   140002968:	0f b7 50 08          	movzwl 0x8(%rax),%edx
   14000296c:	41 bb 02 00 00 00    	mov    $0x2,%r11d
   140002972:	41 ba c3 bf ff ff    	mov    $0xffffbfc3,%r10d
   140002978:	e9 40 ff ff ff       	jmp    1400028bd <__pformat_cvt+0x4d>
   14000297d:	0f 1f 00             	nopl   (%rax)

0000000140002980 <__pformat_putc>:
   140002980:	53                   	push   %rbx
   140002981:	48 83 ec 20          	sub    $0x20,%rsp
   140002985:	48 89 d3             	mov    %rdx,%rbx
   140002988:	8b 52 08             	mov    0x8(%rdx),%edx
   14000298b:	f6 c6 40             	test   $0x40,%dh
   14000298e:	75 08                	jne    140002998 <__pformat_putc+0x18>
   140002990:	8b 43 24             	mov    0x24(%rbx),%eax
   140002993:	39 43 28             	cmp    %eax,0x28(%rbx)
   140002996:	7e 13                	jle    1400029ab <__pformat_putc+0x2b>
   140002998:	4c 8b 03             	mov    (%rbx),%r8
   14000299b:	80 e6 20             	and    $0x20,%dh
   14000299e:	75 20                	jne    1400029c0 <__pformat_putc+0x40>
   1400029a0:	48 63 43 24          	movslq 0x24(%rbx),%rax
   1400029a4:	41 88 0c 00          	mov    %cl,(%r8,%rax,1)
   1400029a8:	8b 43 24             	mov    0x24(%rbx),%eax
   1400029ab:	83 c0 01             	add    $0x1,%eax
   1400029ae:	89 43 24             	mov    %eax,0x24(%rbx)
   1400029b1:	48 83 c4 20          	add    $0x20,%rsp
   1400029b5:	5b                   	pop    %rbx
   1400029b6:	c3                   	ret    
   1400029b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400029be:	00 00 
   1400029c0:	4c 89 c2             	mov    %r8,%rdx
   1400029c3:	e8 88 4c 00 00       	call   140007650 <fputc>
   1400029c8:	8b 43 24             	mov    0x24(%rbx),%eax
   1400029cb:	83 c0 01             	add    $0x1,%eax
   1400029ce:	89 43 24             	mov    %eax,0x24(%rbx)
   1400029d1:	48 83 c4 20          	add    $0x20,%rsp
   1400029d5:	5b                   	pop    %rbx
   1400029d6:	c3                   	ret    
   1400029d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400029de:	00 00 

00000001400029e0 <__pformat_wputchars>:
   1400029e0:	41 56                	push   %r14
   1400029e2:	41 55                	push   %r13
   1400029e4:	41 54                	push   %r12
   1400029e6:	55                   	push   %rbp
   1400029e7:	57                   	push   %rdi
   1400029e8:	56                   	push   %rsi
   1400029e9:	53                   	push   %rbx
   1400029ea:	48 83 ec 40          	sub    $0x40,%rsp
   1400029ee:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
   1400029f3:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
   1400029f8:	89 d7                	mov    %edx,%edi
   1400029fa:	4c 89 c3             	mov    %r8,%rbx
   1400029fd:	31 d2                	xor    %edx,%edx
   1400029ff:	48 89 cd             	mov    %rcx,%rbp
   140002a02:	4d 89 e8             	mov    %r13,%r8
   140002a05:	4c 89 e1             	mov    %r12,%rcx
   140002a08:	e8 b3 50 00 00       	call   140007ac0 <wcrtomb>
   140002a0d:	8b 43 10             	mov    0x10(%rbx),%eax
   140002a10:	39 c7                	cmp    %eax,%edi
   140002a12:	89 c2                	mov    %eax,%edx
   140002a14:	0f 4e d7             	cmovle %edi,%edx
   140002a17:	85 c0                	test   %eax,%eax
   140002a19:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002a1c:	0f 49 fa             	cmovns %edx,%edi
   140002a1f:	39 f8                	cmp    %edi,%eax
   140002a21:	0f 8f da 00 00 00    	jg     140002b01 <__pformat_wputchars+0x121>
   140002a27:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140002a2e:	85 ff                	test   %edi,%edi
   140002a30:	0f 8e 11 01 00 00    	jle    140002b47 <__pformat_wputchars+0x167>
   140002a36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002a3d:	00 00 00 
   140002a40:	0f b7 55 00          	movzwl 0x0(%rbp),%edx
   140002a44:	4d 89 e8             	mov    %r13,%r8
   140002a47:	4c 89 e1             	mov    %r12,%rcx
   140002a4a:	48 83 c5 02          	add    $0x2,%rbp
   140002a4e:	e8 6d 50 00 00       	call   140007ac0 <wcrtomb>
   140002a53:	85 c0                	test   %eax,%eax
   140002a55:	0f 8e 8a 00 00 00    	jle    140002ae5 <__pformat_wputchars+0x105>
   140002a5b:	83 e8 01             	sub    $0x1,%eax
   140002a5e:	4c 89 e6             	mov    %r12,%rsi
   140002a61:	4d 8d 74 04 01       	lea    0x1(%r12,%rax,1),%r14
   140002a66:	eb 1e                	jmp    140002a86 <__pformat_wputchars+0xa6>
   140002a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a6f:	00 
   140002a70:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140002a74:	41 88 0c 00          	mov    %cl,(%r8,%rax,1)
   140002a78:	8b 43 24             	mov    0x24(%rbx),%eax
   140002a7b:	83 c0 01             	add    $0x1,%eax
   140002a7e:	89 43 24             	mov    %eax,0x24(%rbx)
   140002a81:	4c 39 f6             	cmp    %r14,%rsi
   140002a84:	74 36                	je     140002abc <__pformat_wputchars+0xdc>
   140002a86:	8b 53 08             	mov    0x8(%rbx),%edx
   140002a89:	48 83 c6 01          	add    $0x1,%rsi
   140002a8d:	f6 c6 40             	test   $0x40,%dh
   140002a90:	75 08                	jne    140002a9a <__pformat_wputchars+0xba>
   140002a92:	8b 43 24             	mov    0x24(%rbx),%eax
   140002a95:	39 43 28             	cmp    %eax,0x28(%rbx)
   140002a98:	7e e1                	jle    140002a7b <__pformat_wputchars+0x9b>
   140002a9a:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
   140002a9e:	4c 8b 03             	mov    (%rbx),%r8
   140002aa1:	80 e6 20             	and    $0x20,%dh
   140002aa4:	74 ca                	je     140002a70 <__pformat_wputchars+0x90>
   140002aa6:	4c 89 c2             	mov    %r8,%rdx
   140002aa9:	e8 a2 4b 00 00       	call   140007650 <fputc>
   140002aae:	8b 43 24             	mov    0x24(%rbx),%eax
   140002ab1:	83 c0 01             	add    $0x1,%eax
   140002ab4:	89 43 24             	mov    %eax,0x24(%rbx)
   140002ab7:	4c 39 f6             	cmp    %r14,%rsi
   140002aba:	75 ca                	jne    140002a86 <__pformat_wputchars+0xa6>
   140002abc:	83 ef 01             	sub    $0x1,%edi
   140002abf:	0f 85 7b ff ff ff    	jne    140002a40 <__pformat_wputchars+0x60>
   140002ac5:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002ac8:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002acb:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002ace:	85 c0                	test   %eax,%eax
   140002ad0:	7e 20                	jle    140002af2 <__pformat_wputchars+0x112>
   140002ad2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002ad8:	48 89 da             	mov    %rbx,%rdx
   140002adb:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002ae0:	e8 9b fe ff ff       	call   140002980 <__pformat_putc>
   140002ae5:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002ae8:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002aeb:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002aee:	85 c0                	test   %eax,%eax
   140002af0:	7f e6                	jg     140002ad8 <__pformat_wputchars+0xf8>
   140002af2:	48 83 c4 40          	add    $0x40,%rsp
   140002af6:	5b                   	pop    %rbx
   140002af7:	5e                   	pop    %rsi
   140002af8:	5f                   	pop    %rdi
   140002af9:	5d                   	pop    %rbp
   140002afa:	41 5c                	pop    %r12
   140002afc:	41 5d                	pop    %r13
   140002afe:	41 5e                	pop    %r14
   140002b00:	c3                   	ret    
   140002b01:	29 f8                	sub    %edi,%eax
   140002b03:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002b06:	f6 43 09 04          	testb  $0x4,0x9(%rbx)
   140002b0a:	75 2b                	jne    140002b37 <__pformat_wputchars+0x157>
   140002b0c:	83 e8 01             	sub    $0x1,%eax
   140002b0f:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002b12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002b18:	48 89 da             	mov    %rbx,%rdx
   140002b1b:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002b20:	e8 5b fe ff ff       	call   140002980 <__pformat_putc>
   140002b25:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002b28:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002b2b:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002b2e:	85 c0                	test   %eax,%eax
   140002b30:	75 e6                	jne    140002b18 <__pformat_wputchars+0x138>
   140002b32:	e9 f7 fe ff ff       	jmp    140002a2e <__pformat_wputchars+0x4e>
   140002b37:	85 ff                	test   %edi,%edi
   140002b39:	0f 8f 01 ff ff ff    	jg     140002a40 <__pformat_wputchars+0x60>
   140002b3f:	83 e8 01             	sub    $0x1,%eax
   140002b42:	89 43 0c             	mov    %eax,0xc(%rbx)
   140002b45:	eb 91                	jmp    140002ad8 <__pformat_wputchars+0xf8>
   140002b47:	c7 43 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rbx)
   140002b4e:	eb a2                	jmp    140002af2 <__pformat_wputchars+0x112>

0000000140002b50 <__pformat_putchars>:
   140002b50:	57                   	push   %rdi
   140002b51:	56                   	push   %rsi
   140002b52:	53                   	push   %rbx
   140002b53:	48 83 ec 20          	sub    $0x20,%rsp
   140002b57:	41 8b 40 10          	mov    0x10(%r8),%eax
   140002b5b:	89 d7                	mov    %edx,%edi
   140002b5d:	39 c2                	cmp    %eax,%edx
   140002b5f:	89 c2                	mov    %eax,%edx
   140002b61:	48 89 ce             	mov    %rcx,%rsi
   140002b64:	0f 4e d7             	cmovle %edi,%edx
   140002b67:	85 c0                	test   %eax,%eax
   140002b69:	41 8b 40 0c          	mov    0xc(%r8),%eax
   140002b6d:	4c 89 c3             	mov    %r8,%rbx
   140002b70:	0f 49 fa             	cmovns %edx,%edi
   140002b73:	39 f8                	cmp    %edi,%eax
   140002b75:	0f 8f bd 00 00 00    	jg     140002c38 <__pformat_putchars+0xe8>
   140002b7b:	41 c7 40 0c ff ff ff 	movl   $0xffffffff,0xc(%r8)
   140002b82:	ff 
   140002b83:	85 ff                	test   %edi,%edi
   140002b85:	0f 84 9a 00 00 00    	je     140002c25 <__pformat_putchars+0xd5>
   140002b8b:	8b 43 08             	mov    0x8(%rbx),%eax
   140002b8e:	83 ef 01             	sub    $0x1,%edi
   140002b91:	48 01 f7             	add    %rsi,%rdi
   140002b94:	eb 26                	jmp    140002bbc <__pformat_putchars+0x6c>
   140002b96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002b9d:	00 00 00 
   140002ba0:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140002ba4:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
   140002ba7:	8b 53 24             	mov    0x24(%rbx),%edx
   140002baa:	83 c2 01             	add    $0x1,%edx
   140002bad:	89 53 24             	mov    %edx,0x24(%rbx)
   140002bb0:	48 39 f7             	cmp    %rsi,%rdi
   140002bb3:	74 3c                	je     140002bf1 <__pformat_putchars+0xa1>
   140002bb5:	8b 43 08             	mov    0x8(%rbx),%eax
   140002bb8:	48 83 c6 01          	add    $0x1,%rsi
   140002bbc:	f6 c4 40             	test   $0x40,%ah
   140002bbf:	75 08                	jne    140002bc9 <__pformat_putchars+0x79>
   140002bc1:	8b 53 24             	mov    0x24(%rbx),%edx
   140002bc4:	39 53 28             	cmp    %edx,0x28(%rbx)
   140002bc7:	7e e1                	jle    140002baa <__pformat_putchars+0x5a>
   140002bc9:	0f be 0e             	movsbl (%rsi),%ecx
   140002bcc:	48 8b 13             	mov    (%rbx),%rdx
   140002bcf:	f6 c4 20             	test   $0x20,%ah
   140002bd2:	74 cc                	je     140002ba0 <__pformat_putchars+0x50>
   140002bd4:	e8 77 4a 00 00       	call   140007650 <fputc>
   140002bd9:	8b 53 24             	mov    0x24(%rbx),%edx
   140002bdc:	eb cc                	jmp    140002baa <__pformat_putchars+0x5a>
   140002bde:	66 90                	xchg   %ax,%ax
   140002be0:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140002be4:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140002be8:	8b 53 24             	mov    0x24(%rbx),%edx
   140002beb:	83 c2 01             	add    $0x1,%edx
   140002bee:	89 53 24             	mov    %edx,0x24(%rbx)
   140002bf1:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002bf4:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002bf7:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002bfa:	85 c0                	test   %eax,%eax
   140002bfc:	7e 2e                	jle    140002c2c <__pformat_putchars+0xdc>
   140002bfe:	8b 43 08             	mov    0x8(%rbx),%eax
   140002c01:	f6 c4 40             	test   $0x40,%ah
   140002c04:	75 08                	jne    140002c0e <__pformat_putchars+0xbe>
   140002c06:	8b 53 24             	mov    0x24(%rbx),%edx
   140002c09:	39 53 28             	cmp    %edx,0x28(%rbx)
   140002c0c:	7e dd                	jle    140002beb <__pformat_putchars+0x9b>
   140002c0e:	48 8b 13             	mov    (%rbx),%rdx
   140002c11:	f6 c4 20             	test   $0x20,%ah
   140002c14:	74 ca                	je     140002be0 <__pformat_putchars+0x90>
   140002c16:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002c1b:	e8 30 4a 00 00       	call   140007650 <fputc>
   140002c20:	8b 53 24             	mov    0x24(%rbx),%edx
   140002c23:	eb c6                	jmp    140002beb <__pformat_putchars+0x9b>
   140002c25:	c7 43 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rbx)
   140002c2c:	48 83 c4 20          	add    $0x20,%rsp
   140002c30:	5b                   	pop    %rbx
   140002c31:	5e                   	pop    %rsi
   140002c32:	5f                   	pop    %rdi
   140002c33:	c3                   	ret    
   140002c34:	0f 1f 40 00          	nopl   0x0(%rax)
   140002c38:	29 f8                	sub    %edi,%eax
   140002c3a:	41 89 40 0c          	mov    %eax,0xc(%r8)
   140002c3e:	89 c2                	mov    %eax,%edx
   140002c40:	41 8b 40 08          	mov    0x8(%r8),%eax
   140002c44:	f6 c4 04             	test   $0x4,%ah
   140002c47:	75 27                	jne    140002c70 <__pformat_putchars+0x120>
   140002c49:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140002c4c:	41 89 40 0c          	mov    %eax,0xc(%r8)
   140002c50:	48 89 da             	mov    %rbx,%rdx
   140002c53:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002c58:	e8 23 fd ff ff       	call   140002980 <__pformat_putc>
   140002c5d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140002c60:	8d 50 ff             	lea    -0x1(%rax),%edx
   140002c63:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002c66:	85 c0                	test   %eax,%eax
   140002c68:	75 e6                	jne    140002c50 <__pformat_putchars+0x100>
   140002c6a:	e9 14 ff ff ff       	jmp    140002b83 <__pformat_putchars+0x33>
   140002c6f:	90                   	nop
   140002c70:	85 ff                	test   %edi,%edi
   140002c72:	0f 85 16 ff ff ff    	jne    140002b8e <__pformat_putchars+0x3e>
   140002c78:	83 ea 01             	sub    $0x1,%edx
   140002c7b:	89 53 0c             	mov    %edx,0xc(%rbx)
   140002c7e:	eb 81                	jmp    140002c01 <__pformat_putchars+0xb1>

0000000140002c80 <__pformat_puts>:
   140002c80:	41 54                	push   %r12
   140002c82:	53                   	push   %rbx
   140002c83:	48 83 ec 28          	sub    $0x28,%rsp
   140002c87:	48 8d 05 72 66 00 00 	lea    0x6672(%rip),%rax        # 140009300 <.rdata>
   140002c8e:	49 89 cc             	mov    %rcx,%r12
   140002c91:	48 85 c9             	test   %rcx,%rcx
   140002c94:	48 89 d3             	mov    %rdx,%rbx
   140002c97:	48 63 52 10          	movslq 0x10(%rdx),%rdx
   140002c9b:	4c 0f 44 e0          	cmove  %rax,%r12
   140002c9f:	4c 89 e1             	mov    %r12,%rcx
   140002ca2:	85 d2                	test   %edx,%edx
   140002ca4:	78 1a                	js     140002cc0 <__pformat_puts+0x40>
   140002ca6:	e8 e5 48 00 00       	call   140007590 <strnlen>
   140002cab:	49 89 d8             	mov    %rbx,%r8
   140002cae:	89 c2                	mov    %eax,%edx
   140002cb0:	4c 89 e1             	mov    %r12,%rcx
   140002cb3:	48 83 c4 28          	add    $0x28,%rsp
   140002cb7:	5b                   	pop    %rbx
   140002cb8:	41 5c                	pop    %r12
   140002cba:	e9 91 fe ff ff       	jmp    140002b50 <__pformat_putchars>
   140002cbf:	90                   	nop
   140002cc0:	e8 43 49 00 00       	call   140007608 <strlen>
   140002cc5:	eb e4                	jmp    140002cab <__pformat_puts+0x2b>
   140002cc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002cce:	00 00 

0000000140002cd0 <__pformat_emit_inf_or_nan>:
   140002cd0:	48 83 ec 38          	sub    $0x38,%rsp
   140002cd4:	45 8b 50 08          	mov    0x8(%r8),%r10d
   140002cd8:	41 c7 40 10 ff ff ff 	movl   $0xffffffff,0x10(%r8)
   140002cdf:	ff 
   140002ce0:	85 c9                	test   %ecx,%ecx
   140002ce2:	74 4c                	je     140002d30 <__pformat_emit_inf_or_nan+0x60>
   140002ce4:	c6 44 24 2c 2d       	movb   $0x2d,0x2c(%rsp)
   140002ce9:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
   140002cee:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140002cf3:	41 83 e2 20          	and    $0x20,%r10d
   140002cf7:	31 c9                	xor    %ecx,%ecx
   140002cf9:	0f b6 04 0a          	movzbl (%rdx,%rcx,1),%eax
   140002cfd:	83 e0 df             	and    $0xffffffdf,%eax
   140002d00:	44 09 d0             	or     %r10d,%eax
   140002d03:	41 88 04 09          	mov    %al,(%r9,%rcx,1)
   140002d07:	48 83 c1 01          	add    $0x1,%rcx
   140002d0b:	48 83 f9 03          	cmp    $0x3,%rcx
   140002d0f:	75 e8                	jne    140002cf9 <__pformat_emit_inf_or_nan+0x29>
   140002d11:	49 8d 51 03          	lea    0x3(%r9),%rdx
   140002d15:	4c 89 d9             	mov    %r11,%rcx
   140002d18:	44 29 da             	sub    %r11d,%edx
   140002d1b:	e8 30 fe ff ff       	call   140002b50 <__pformat_putchars>
   140002d20:	90                   	nop
   140002d21:	48 83 c4 38          	add    $0x38,%rsp
   140002d25:	c3                   	ret    
   140002d26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002d2d:	00 00 00 
   140002d30:	41 f7 c2 00 01 00 00 	test   $0x100,%r10d
   140002d37:	74 17                	je     140002d50 <__pformat_emit_inf_or_nan+0x80>
   140002d39:	c6 44 24 2c 2b       	movb   $0x2b,0x2c(%rsp)
   140002d3e:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
   140002d43:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140002d48:	eb a9                	jmp    140002cf3 <__pformat_emit_inf_or_nan+0x23>
   140002d4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002d50:	41 f6 c2 40          	test   $0x40,%r10b
   140002d54:	74 1a                	je     140002d70 <__pformat_emit_inf_or_nan+0xa0>
   140002d56:	c6 44 24 2c 20       	movb   $0x20,0x2c(%rsp)
   140002d5b:	4c 8d 4c 24 2d       	lea    0x2d(%rsp),%r9
   140002d60:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140002d65:	eb 8c                	jmp    140002cf3 <__pformat_emit_inf_or_nan+0x23>
   140002d67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002d6e:	00 00 
   140002d70:	4c 8d 5c 24 2c       	lea    0x2c(%rsp),%r11
   140002d75:	4d 89 d9             	mov    %r11,%r9
   140002d78:	e9 76 ff ff ff       	jmp    140002cf3 <__pformat_emit_inf_or_nan+0x23>
   140002d7d:	0f 1f 00             	nopl   (%rax)

0000000140002d80 <__pformat_xint.isra.0>:
   140002d80:	55                   	push   %rbp
   140002d81:	41 57                	push   %r15
   140002d83:	41 56                	push   %r14
   140002d85:	41 55                	push   %r13
   140002d87:	41 54                	push   %r12
   140002d89:	57                   	push   %rdi
   140002d8a:	56                   	push   %rsi
   140002d8b:	53                   	push   %rbx
   140002d8c:	48 83 ec 38          	sub    $0x38,%rsp
   140002d90:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140002d95:	41 89 ce             	mov    %ecx,%r14d
   140002d98:	4c 89 c3             	mov    %r8,%rbx
   140002d9b:	83 f9 6f             	cmp    $0x6f,%ecx
   140002d9e:	0f 84 1c 03 00 00    	je     1400030c0 <__pformat_xint.isra.0+0x340>
   140002da4:	45 8b 78 10          	mov    0x10(%r8),%r15d
   140002da8:	31 c0                	xor    %eax,%eax
   140002daa:	41 8b 78 08          	mov    0x8(%r8),%edi
   140002dae:	45 85 ff             	test   %r15d,%r15d
   140002db1:	41 0f 49 c7          	cmovns %r15d,%eax
   140002db5:	83 c0 12             	add    $0x12,%eax
   140002db8:	f7 c7 00 10 00 00    	test   $0x1000,%edi
   140002dbe:	0f 85 b4 01 00 00    	jne    140002f78 <__pformat_xint.isra.0+0x1f8>
   140002dc4:	44 8b 63 0c          	mov    0xc(%rbx),%r12d
   140002dc8:	44 39 e0             	cmp    %r12d,%eax
   140002dcb:	41 0f 4c c4          	cmovl  %r12d,%eax
   140002dcf:	48 98                	cltq   
   140002dd1:	48 83 c0 0f          	add    $0xf,%rax
   140002dd5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140002dd9:	e8 02 fa ff ff       	call   1400027e0 <___chkstk_ms>
   140002dde:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002de3:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
   140002de9:	48 29 c4             	sub    %rax,%rsp
   140002dec:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
   140002df1:	4c 89 ee             	mov    %r13,%rsi
   140002df4:	48 85 d2             	test   %rdx,%rdx
   140002df7:	0f 84 e3 01 00 00    	je     140002fe0 <__pformat_xint.isra.0+0x260>
   140002dfd:	45 89 f1             	mov    %r14d,%r9d
   140002e00:	41 83 e1 20          	and    $0x20,%r9d
   140002e04:	0f 1f 40 00          	nopl   0x0(%rax)
   140002e08:	44 89 c0             	mov    %r8d,%eax
   140002e0b:	48 83 c6 01          	add    $0x1,%rsi
   140002e0f:	21 d0                	and    %edx,%eax
   140002e11:	44 8d 50 30          	lea    0x30(%rax),%r10d
   140002e15:	83 c0 37             	add    $0x37,%eax
   140002e18:	44 09 c8             	or     %r9d,%eax
   140002e1b:	45 89 d3             	mov    %r10d,%r11d
   140002e1e:	41 80 fa 3a          	cmp    $0x3a,%r10b
   140002e22:	41 0f 42 c3          	cmovb  %r11d,%eax
   140002e26:	48 d3 ea             	shr    %cl,%rdx
   140002e29:	88 46 ff             	mov    %al,-0x1(%rsi)
   140002e2c:	48 85 d2             	test   %rdx,%rdx
   140002e2f:	75 d7                	jne    140002e08 <__pformat_xint.isra.0+0x88>
   140002e31:	4c 39 ee             	cmp    %r13,%rsi
   140002e34:	0f 84 a6 01 00 00    	je     140002fe0 <__pformat_xint.isra.0+0x260>
   140002e3a:	45 85 ff             	test   %r15d,%r15d
   140002e3d:	0f 8e b5 01 00 00    	jle    140002ff8 <__pformat_xint.isra.0+0x278>
   140002e43:	48 89 f0             	mov    %rsi,%rax
   140002e46:	45 89 f8             	mov    %r15d,%r8d
   140002e49:	4c 29 e8             	sub    %r13,%rax
   140002e4c:	41 29 c0             	sub    %eax,%r8d
   140002e4f:	45 85 c0             	test   %r8d,%r8d
   140002e52:	0f 8e a0 01 00 00    	jle    140002ff8 <__pformat_xint.isra.0+0x278>
   140002e58:	49 63 f8             	movslq %r8d,%rdi
   140002e5b:	48 89 f1             	mov    %rsi,%rcx
   140002e5e:	ba 30 00 00 00       	mov    $0x30,%edx
   140002e63:	49 89 f8             	mov    %rdi,%r8
   140002e66:	48 01 fe             	add    %rdi,%rsi
   140002e69:	e8 b2 47 00 00       	call   140007620 <memset>
   140002e6e:	4c 39 ee             	cmp    %r13,%rsi
   140002e71:	0f 84 9d 01 00 00    	je     140003014 <__pformat_xint.isra.0+0x294>
   140002e77:	48 89 f0             	mov    %rsi,%rax
   140002e7a:	4c 29 e8             	sub    %r13,%rax
   140002e7d:	44 39 e0             	cmp    %r12d,%eax
   140002e80:	0f 8c aa 01 00 00    	jl     140003030 <__pformat_xint.isra.0+0x2b0>
   140002e86:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140002e8d:	41 83 fe 6f          	cmp    $0x6f,%r14d
   140002e91:	0f 84 c9 03 00 00    	je     140003260 <__pformat_xint.isra.0+0x4e0>
   140002e97:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
   140002e9d:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140002ea1:	0f 85 29 03 00 00    	jne    1400031d0 <__pformat_xint.isra.0+0x450>
   140002ea7:	49 39 f5             	cmp    %rsi,%r13
   140002eaa:	72 21                	jb     140002ecd <__pformat_xint.isra.0+0x14d>
   140002eac:	e9 b3 00 00 00       	jmp    140002f64 <__pformat_xint.isra.0+0x1e4>
   140002eb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002eb8:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140002ebc:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
   140002ebf:	8b 43 24             	mov    0x24(%rbx),%eax
   140002ec2:	83 c0 01             	add    $0x1,%eax
   140002ec5:	89 43 24             	mov    %eax,0x24(%rbx)
   140002ec8:	4c 39 ee             	cmp    %r13,%rsi
   140002ecb:	76 38                	jbe    140002f05 <__pformat_xint.isra.0+0x185>
   140002ecd:	8b 7b 08             	mov    0x8(%rbx),%edi
   140002ed0:	48 83 ee 01          	sub    $0x1,%rsi
   140002ed4:	f7 c7 00 40 00 00    	test   $0x4000,%edi
   140002eda:	75 08                	jne    140002ee4 <__pformat_xint.isra.0+0x164>
   140002edc:	8b 43 24             	mov    0x24(%rbx),%eax
   140002edf:	39 43 28             	cmp    %eax,0x28(%rbx)
   140002ee2:	7e de                	jle    140002ec2 <__pformat_xint.isra.0+0x142>
   140002ee4:	81 e7 00 20 00 00    	and    $0x2000,%edi
   140002eea:	0f be 0e             	movsbl (%rsi),%ecx
   140002eed:	48 8b 13             	mov    (%rbx),%rdx
   140002ef0:	74 c6                	je     140002eb8 <__pformat_xint.isra.0+0x138>
   140002ef2:	e8 59 47 00 00       	call   140007650 <fputc>
   140002ef7:	8b 43 24             	mov    0x24(%rbx),%eax
   140002efa:	83 c0 01             	add    $0x1,%eax
   140002efd:	89 43 24             	mov    %eax,0x24(%rbx)
   140002f00:	4c 39 ee             	cmp    %r13,%rsi
   140002f03:	77 c8                	ja     140002ecd <__pformat_xint.isra.0+0x14d>
   140002f05:	41 8d 74 24 ff       	lea    -0x1(%r12),%esi
   140002f0a:	45 85 e4             	test   %r12d,%r12d
   140002f0d:	7f 1f                	jg     140002f2e <__pformat_xint.isra.0+0x1ae>
   140002f0f:	eb 53                	jmp    140002f64 <__pformat_xint.isra.0+0x1e4>
   140002f11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002f18:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140002f1c:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140002f20:	8b 43 24             	mov    0x24(%rbx),%eax
   140002f23:	83 c0 01             	add    $0x1,%eax
   140002f26:	89 43 24             	mov    %eax,0x24(%rbx)
   140002f29:	83 ee 01             	sub    $0x1,%esi
   140002f2c:	72 36                	jb     140002f64 <__pformat_xint.isra.0+0x1e4>
   140002f2e:	8b 7b 08             	mov    0x8(%rbx),%edi
   140002f31:	f7 c7 00 40 00 00    	test   $0x4000,%edi
   140002f37:	75 08                	jne    140002f41 <__pformat_xint.isra.0+0x1c1>
   140002f39:	8b 43 24             	mov    0x24(%rbx),%eax
   140002f3c:	39 43 28             	cmp    %eax,0x28(%rbx)
   140002f3f:	7e e2                	jle    140002f23 <__pformat_xint.isra.0+0x1a3>
   140002f41:	81 e7 00 20 00 00    	and    $0x2000,%edi
   140002f47:	48 8b 13             	mov    (%rbx),%rdx
   140002f4a:	74 cc                	je     140002f18 <__pformat_xint.isra.0+0x198>
   140002f4c:	b9 20 00 00 00       	mov    $0x20,%ecx
   140002f51:	e8 fa 46 00 00       	call   140007650 <fputc>
   140002f56:	8b 43 24             	mov    0x24(%rbx),%eax
   140002f59:	83 c0 01             	add    $0x1,%eax
   140002f5c:	89 43 24             	mov    %eax,0x24(%rbx)
   140002f5f:	83 ee 01             	sub    $0x1,%esi
   140002f62:	73 ca                	jae    140002f2e <__pformat_xint.isra.0+0x1ae>
   140002f64:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140002f68:	5b                   	pop    %rbx
   140002f69:	5e                   	pop    %rsi
   140002f6a:	5f                   	pop    %rdi
   140002f6b:	41 5c                	pop    %r12
   140002f6d:	41 5d                	pop    %r13
   140002f6f:	41 5e                	pop    %r14
   140002f71:	41 5f                	pop    %r15
   140002f73:	5d                   	pop    %rbp
   140002f74:	c3                   	ret    
   140002f75:	0f 1f 00             	nopl   (%rax)
   140002f78:	66 41 83 78 20 00    	cmpw   $0x0,0x20(%r8)
   140002f7e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002f83:	0f 84 17 02 00 00    	je     1400031a0 <__pformat_xint.isra.0+0x420>
   140002f89:	41 89 c0             	mov    %eax,%r8d
   140002f8c:	41 b9 ab aa aa aa    	mov    $0xaaaaaaab,%r9d
   140002f92:	44 8b 63 0c          	mov    0xc(%rbx),%r12d
   140002f96:	4d 0f af c1          	imul   %r9,%r8
   140002f9a:	49 c1 e8 21          	shr    $0x21,%r8
   140002f9e:	44 01 c0             	add    %r8d,%eax
   140002fa1:	44 39 e0             	cmp    %r12d,%eax
   140002fa4:	41 0f 4c c4          	cmovl  %r12d,%eax
   140002fa8:	48 98                	cltq   
   140002faa:	48 83 c0 0f          	add    $0xf,%rax
   140002fae:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140002fb2:	e8 29 f8 ff ff       	call   1400027e0 <___chkstk_ms>
   140002fb7:	48 29 c4             	sub    %rax,%rsp
   140002fba:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
   140002fbf:	41 83 fe 6f          	cmp    $0x6f,%r14d
   140002fc3:	0f 84 3e 01 00 00    	je     140003107 <__pformat_xint.isra.0+0x387>
   140002fc9:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
   140002fcf:	4c 89 ee             	mov    %r13,%rsi
   140002fd2:	48 85 d2             	test   %rdx,%rdx
   140002fd5:	0f 85 22 fe ff ff    	jne    140002dfd <__pformat_xint.isra.0+0x7d>
   140002fdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002fe0:	81 e7 ff f7 ff ff    	and    $0xfffff7ff,%edi
   140002fe6:	89 7b 08             	mov    %edi,0x8(%rbx)
   140002fe9:	45 85 ff             	test   %r15d,%r15d
   140002fec:	0f 8f 51 fe ff ff    	jg     140002e43 <__pformat_xint.isra.0+0xc3>
   140002ff2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002ff8:	41 83 fe 6f          	cmp    $0x6f,%r14d
   140002ffc:	0f 84 16 01 00 00    	je     140003118 <__pformat_xint.isra.0+0x398>
   140003002:	4c 39 ee             	cmp    %r13,%rsi
   140003005:	0f 85 6c fe ff ff    	jne    140002e77 <__pformat_xint.isra.0+0xf7>
   14000300b:	45 85 ff             	test   %r15d,%r15d
   14000300e:	0f 84 63 fe ff ff    	je     140002e77 <__pformat_xint.isra.0+0xf7>
   140003014:	c6 06 30             	movb   $0x30,(%rsi)
   140003017:	48 83 c6 01          	add    $0x1,%rsi
   14000301b:	48 89 f0             	mov    %rsi,%rax
   14000301e:	4c 29 e8             	sub    %r13,%rax
   140003021:	44 39 e0             	cmp    %r12d,%eax
   140003024:	0f 8d 5c fe ff ff    	jge    140002e86 <__pformat_xint.isra.0+0x106>
   14000302a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003030:	41 29 c4             	sub    %eax,%r12d
   140003033:	8b 7b 08             	mov    0x8(%rbx),%edi
   140003036:	44 89 63 0c          	mov    %r12d,0xc(%rbx)
   14000303a:	41 83 fe 6f          	cmp    $0x6f,%r14d
   14000303e:	0f 84 ec 00 00 00    	je     140003130 <__pformat_xint.isra.0+0x3b0>
   140003044:	f7 c7 00 08 00 00    	test   $0x800,%edi
   14000304a:	0f 84 10 01 00 00    	je     140003160 <__pformat_xint.isra.0+0x3e0>
   140003050:	41 83 ec 02          	sub    $0x2,%r12d
   140003054:	45 85 e4             	test   %r12d,%r12d
   140003057:	7e 09                	jle    140003062 <__pformat_xint.isra.0+0x2e2>
   140003059:	45 85 ff             	test   %r15d,%r15d
   14000305c:	0f 88 de 01 00 00    	js     140003240 <__pformat_xint.isra.0+0x4c0>
   140003062:	44 88 36             	mov    %r14b,(%rsi)
   140003065:	48 83 c6 02          	add    $0x2,%rsi
   140003069:	c6 46 ff 30          	movb   $0x30,-0x1(%rsi)
   14000306d:	45 85 e4             	test   %r12d,%r12d
   140003070:	0f 8e 31 fe ff ff    	jle    140002ea7 <__pformat_xint.isra.0+0x127>
   140003076:	8b 7b 08             	mov    0x8(%rbx),%edi
   140003079:	f7 c7 00 04 00 00    	test   $0x400,%edi
   14000307f:	0f 85 f0 00 00 00    	jne    140003175 <__pformat_xint.isra.0+0x3f5>
   140003085:	41 83 ec 01          	sub    $0x1,%r12d
   140003089:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003090:	48 89 da             	mov    %rbx,%rdx
   140003093:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003098:	e8 e3 f8 ff ff       	call   140002980 <__pformat_putc>
   14000309d:	44 89 e0             	mov    %r12d,%eax
   1400030a0:	41 83 ec 01          	sub    $0x1,%r12d
   1400030a4:	85 c0                	test   %eax,%eax
   1400030a6:	7f e8                	jg     140003090 <__pformat_xint.isra.0+0x310>
   1400030a8:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
   1400030ae:	4c 39 ee             	cmp    %r13,%rsi
   1400030b1:	0f 87 16 fe ff ff    	ja     140002ecd <__pformat_xint.isra.0+0x14d>
   1400030b7:	e9 49 fe ff ff       	jmp    140002f05 <__pformat_xint.isra.0+0x185>
   1400030bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400030c0:	45 8b 78 10          	mov    0x10(%r8),%r15d
   1400030c4:	31 c0                	xor    %eax,%eax
   1400030c6:	41 8b 78 08          	mov    0x8(%r8),%edi
   1400030ca:	45 85 ff             	test   %r15d,%r15d
   1400030cd:	41 0f 49 c7          	cmovns %r15d,%eax
   1400030d1:	83 c0 18             	add    $0x18,%eax
   1400030d4:	f7 c7 00 10 00 00    	test   $0x1000,%edi
   1400030da:	0f 85 a0 00 00 00    	jne    140003180 <__pformat_xint.isra.0+0x400>
   1400030e0:	44 8b 63 0c          	mov    0xc(%rbx),%r12d
   1400030e4:	41 39 c4             	cmp    %eax,%r12d
   1400030e7:	41 0f 4d c4          	cmovge %r12d,%eax
   1400030eb:	48 98                	cltq   
   1400030ed:	48 83 c0 0f          	add    $0xf,%rax
   1400030f1:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400030f5:	e8 e6 f6 ff ff       	call   1400027e0 <___chkstk_ms>
   1400030fa:	b9 03 00 00 00       	mov    $0x3,%ecx
   1400030ff:	48 29 c4             	sub    %rax,%rsp
   140003102:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
   140003107:	41 b8 07 00 00 00    	mov    $0x7,%r8d
   14000310d:	e9 df fc ff ff       	jmp    140002df1 <__pformat_xint.isra.0+0x71>
   140003112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003118:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   14000311c:	0f 84 e0 fe ff ff    	je     140003002 <__pformat_xint.isra.0+0x282>
   140003122:	c6 06 30             	movb   $0x30,(%rsi)
   140003125:	48 83 c6 01          	add    $0x1,%rsi
   140003129:	e9 d4 fe ff ff       	jmp    140003002 <__pformat_xint.isra.0+0x282>
   14000312e:	66 90                	xchg   %ax,%ax
   140003130:	45 85 ff             	test   %r15d,%r15d
   140003133:	0f 88 a7 00 00 00    	js     1400031e0 <__pformat_xint.isra.0+0x460>
   140003139:	f7 c7 00 04 00 00    	test   $0x400,%edi
   14000313f:	0f 84 40 ff ff ff    	je     140003085 <__pformat_xint.isra.0+0x305>
   140003145:	4c 39 ee             	cmp    %r13,%rsi
   140003148:	0f 87 82 fd ff ff    	ja     140002ed0 <__pformat_xint.isra.0+0x150>
   14000314e:	41 8d 74 24 ff       	lea    -0x1(%r12),%esi
   140003153:	e9 d9 fd ff ff       	jmp    140002f31 <__pformat_xint.isra.0+0x1b1>
   140003158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000315f:	00 
   140003160:	45 85 ff             	test   %r15d,%r15d
   140003163:	0f 88 d7 00 00 00    	js     140003240 <__pformat_xint.isra.0+0x4c0>
   140003169:	f7 c7 00 04 00 00    	test   $0x400,%edi
   14000316f:	0f 84 10 ff ff ff    	je     140003085 <__pformat_xint.isra.0+0x305>
   140003175:	49 39 f5             	cmp    %rsi,%r13
   140003178:	0f 82 52 fd ff ff    	jb     140002ed0 <__pformat_xint.isra.0+0x150>
   14000317e:	eb ce                	jmp    14000314e <__pformat_xint.isra.0+0x3ce>
   140003180:	66 41 83 78 20 00    	cmpw   $0x0,0x20(%r8)
   140003186:	0f 84 e8 00 00 00    	je     140003274 <__pformat_xint.isra.0+0x4f4>
   14000318c:	b9 03 00 00 00       	mov    $0x3,%ecx
   140003191:	e9 f3 fd ff ff       	jmp    140002f89 <__pformat_xint.isra.0+0x209>
   140003196:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000319d:	00 00 00 
   1400031a0:	44 8b 63 0c          	mov    0xc(%rbx),%r12d
   1400031a4:	44 39 e0             	cmp    %r12d,%eax
   1400031a7:	41 0f 4c c4          	cmovl  %r12d,%eax
   1400031ab:	48 98                	cltq   
   1400031ad:	48 83 c0 0f          	add    $0xf,%rax
   1400031b1:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400031b5:	e8 26 f6 ff ff       	call   1400027e0 <___chkstk_ms>
   1400031ba:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
   1400031c0:	48 29 c4             	sub    %rax,%rsp
   1400031c3:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
   1400031c8:	e9 02 fe ff ff       	jmp    140002fcf <__pformat_xint.isra.0+0x24f>
   1400031cd:	0f 1f 00             	nopl   (%rax)
   1400031d0:	44 88 36             	mov    %r14b,(%rsi)
   1400031d3:	48 83 c6 02          	add    $0x2,%rsi
   1400031d7:	c6 46 ff 30          	movb   $0x30,-0x1(%rsi)
   1400031db:	e9 c7 fc ff ff       	jmp    140002ea7 <__pformat_xint.isra.0+0x127>
   1400031e0:	89 f8                	mov    %edi,%eax
   1400031e2:	25 00 06 00 00       	and    $0x600,%eax
   1400031e7:	3d 00 02 00 00       	cmp    $0x200,%eax
   1400031ec:	0f 85 47 ff ff ff    	jne    140003139 <__pformat_xint.isra.0+0x3b9>
   1400031f2:	45 8d 4c 24 ff       	lea    -0x1(%r12),%r9d
   1400031f7:	48 89 f1             	mov    %rsi,%rcx
   1400031fa:	ba 30 00 00 00       	mov    $0x30,%edx
   1400031ff:	45 8d 79 01          	lea    0x1(%r9),%r15d
   140003203:	44 89 4d fc          	mov    %r9d,-0x4(%rbp)
   140003207:	4d 63 ff             	movslq %r15d,%r15
   14000320a:	4d 89 f8             	mov    %r15,%r8
   14000320d:	4c 01 fe             	add    %r15,%rsi
   140003210:	e8 0b 44 00 00       	call   140007620 <memset>
   140003215:	44 8b 4d fc          	mov    -0x4(%rbp),%r9d
   140003219:	45 29 e1             	sub    %r12d,%r9d
   14000321c:	45 89 cc             	mov    %r9d,%r12d
   14000321f:	41 83 fe 6f          	cmp    $0x6f,%r14d
   140003223:	0f 84 44 fe ff ff    	je     14000306d <__pformat_xint.isra.0+0x2ed>
   140003229:	81 e7 00 08 00 00    	and    $0x800,%edi
   14000322f:	0f 84 38 fe ff ff    	je     14000306d <__pformat_xint.isra.0+0x2ed>
   140003235:	e9 28 fe ff ff       	jmp    140003062 <__pformat_xint.isra.0+0x2e2>
   14000323a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003240:	89 f8                	mov    %edi,%eax
   140003242:	25 00 06 00 00       	and    $0x600,%eax
   140003247:	3d 00 02 00 00       	cmp    $0x200,%eax
   14000324c:	74 a4                	je     1400031f2 <__pformat_xint.isra.0+0x472>
   14000324e:	f7 c7 00 08 00 00    	test   $0x800,%edi
   140003254:	0f 85 08 fe ff ff    	jne    140003062 <__pformat_xint.isra.0+0x2e2>
   14000325a:	e9 0a ff ff ff       	jmp    140003169 <__pformat_xint.isra.0+0x3e9>
   14000325f:	90                   	nop
   140003260:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
   140003266:	4c 39 ee             	cmp    %r13,%rsi
   140003269:	0f 87 5e fc ff ff    	ja     140002ecd <__pformat_xint.isra.0+0x14d>
   14000326f:	e9 f0 fc ff ff       	jmp    140002f64 <__pformat_xint.isra.0+0x1e4>
   140003274:	44 8b 63 0c          	mov    0xc(%rbx),%r12d
   140003278:	44 39 e0             	cmp    %r12d,%eax
   14000327b:	41 0f 4c c4          	cmovl  %r12d,%eax
   14000327f:	e9 67 fe ff ff       	jmp    1400030eb <__pformat_xint.isra.0+0x36b>
   140003284:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000328b:	00 00 00 00 
   14000328f:	90                   	nop

0000000140003290 <__pformat_int.isra.0>:
   140003290:	55                   	push   %rbp
   140003291:	41 57                	push   %r15
   140003293:	41 56                	push   %r14
   140003295:	41 55                	push   %r13
   140003297:	41 54                	push   %r12
   140003299:	57                   	push   %rdi
   14000329a:	56                   	push   %rsi
   14000329b:	53                   	push   %rbx
   14000329c:	48 83 ec 28          	sub    $0x28,%rsp
   1400032a0:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   1400032a5:	31 c0                	xor    %eax,%eax
   1400032a7:	44 8b 72 10          	mov    0x10(%rdx),%r14d
   1400032ab:	44 8b 62 08          	mov    0x8(%rdx),%r12d
   1400032af:	45 85 f6             	test   %r14d,%r14d
   1400032b2:	41 0f 49 c6          	cmovns %r14d,%eax
   1400032b6:	48 89 d3             	mov    %rdx,%rbx
   1400032b9:	83 c0 17             	add    $0x17,%eax
   1400032bc:	41 f7 c4 00 10 00 00 	test   $0x1000,%r12d
   1400032c3:	74 0b                	je     1400032d0 <__pformat_int.isra.0+0x40>
   1400032c5:	66 83 7a 20 00       	cmpw   $0x0,0x20(%rdx)
   1400032ca:	0f 85 28 02 00 00    	jne    1400034f8 <__pformat_int.isra.0+0x268>
   1400032d0:	8b 73 0c             	mov    0xc(%rbx),%esi
   1400032d3:	39 c6                	cmp    %eax,%esi
   1400032d5:	0f 4d c6             	cmovge %esi,%eax
   1400032d8:	48 98                	cltq   
   1400032da:	48 83 c0 0f          	add    $0xf,%rax
   1400032de:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400032e2:	e8 f9 f4 ff ff       	call   1400027e0 <___chkstk_ms>
   1400032e7:	48 29 c4             	sub    %rax,%rsp
   1400032ea:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
   1400032ef:	41 f6 c4 80          	test   $0x80,%r12b
   1400032f3:	74 11                	je     140003306 <__pformat_int.isra.0+0x76>
   1400032f5:	48 85 c9             	test   %rcx,%rcx
   1400032f8:	0f 88 32 02 00 00    	js     140003530 <__pformat_int.isra.0+0x2a0>
   1400032fe:	41 80 e4 7f          	and    $0x7f,%r12b
   140003302:	44 89 63 08          	mov    %r12d,0x8(%rbx)
   140003306:	48 85 c9             	test   %rcx,%rcx
   140003309:	0f 84 f1 02 00 00    	je     140003600 <__pformat_int.isra.0+0x370>
   14000330f:	49 b9 cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r9
   140003316:	cc cc cc 
   140003319:	45 89 e2             	mov    %r12d,%r10d
   14000331c:	4d 89 e8             	mov    %r13,%r8
   14000331f:	49 bb 03 00 00 00 00 	movabs $0x8000000000000003,%r11
   140003326:	00 00 80 
   140003329:	41 81 e2 00 10 00 00 	and    $0x1000,%r10d
   140003330:	48 89 c8             	mov    %rcx,%rax
   140003333:	49 8d 78 01          	lea    0x1(%r8),%rdi
   140003337:	49 f7 e1             	mul    %r9
   14000333a:	48 89 c8             	mov    %rcx,%rax
   14000333d:	48 c1 ea 03          	shr    $0x3,%rdx
   140003341:	4c 8d 3c 92          	lea    (%rdx,%rdx,4),%r15
   140003345:	4d 01 ff             	add    %r15,%r15
   140003348:	4c 29 f8             	sub    %r15,%rax
   14000334b:	83 c0 30             	add    $0x30,%eax
   14000334e:	41 88 00             	mov    %al,(%r8)
   140003351:	48 83 f9 09          	cmp    $0x9,%rcx
   140003355:	76 39                	jbe    140003390 <__pformat_int.isra.0+0x100>
   140003357:	49 39 fd             	cmp    %rdi,%r13
   14000335a:	74 24                	je     140003380 <__pformat_int.isra.0+0xf0>
   14000335c:	45 85 d2             	test   %r10d,%r10d
   14000335f:	74 1f                	je     140003380 <__pformat_int.isra.0+0xf0>
   140003361:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140003366:	74 18                	je     140003380 <__pformat_int.isra.0+0xf0>
   140003368:	48 89 f8             	mov    %rdi,%rax
   14000336b:	4c 29 e8             	sub    %r13,%rax
   14000336e:	4c 21 d8             	and    %r11,%rax
   140003371:	48 83 f8 03          	cmp    $0x3,%rax
   140003375:	75 09                	jne    140003380 <__pformat_int.isra.0+0xf0>
   140003377:	41 c6 40 01 2c       	movb   $0x2c,0x1(%r8)
   14000337c:	49 8d 78 02          	lea    0x2(%r8),%rdi
   140003380:	48 89 d1             	mov    %rdx,%rcx
   140003383:	49 89 f8             	mov    %rdi,%r8
   140003386:	eb a8                	jmp    140003330 <__pformat_int.isra.0+0xa0>
   140003388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000338f:	00 
   140003390:	45 85 f6             	test   %r14d,%r14d
   140003393:	0f 8e a7 01 00 00    	jle    140003540 <__pformat_int.isra.0+0x2b0>
   140003399:	48 89 f8             	mov    %rdi,%rax
   14000339c:	45 89 f0             	mov    %r14d,%r8d
   14000339f:	4c 29 e8             	sub    %r13,%rax
   1400033a2:	41 29 c0             	sub    %eax,%r8d
   1400033a5:	45 85 c0             	test   %r8d,%r8d
   1400033a8:	7e 16                	jle    1400033c0 <__pformat_int.isra.0+0x130>
   1400033aa:	4d 63 f8             	movslq %r8d,%r15
   1400033ad:	48 89 f9             	mov    %rdi,%rcx
   1400033b0:	ba 30 00 00 00       	mov    $0x30,%edx
   1400033b5:	4d 89 f8             	mov    %r15,%r8
   1400033b8:	4c 01 ff             	add    %r15,%rdi
   1400033bb:	e8 60 42 00 00       	call   140007620 <memset>
   1400033c0:	49 39 fd             	cmp    %rdi,%r13
   1400033c3:	0f 84 8f 01 00 00    	je     140003558 <__pformat_int.isra.0+0x2c8>
   1400033c9:	85 f6                	test   %esi,%esi
   1400033cb:	7e 33                	jle    140003400 <__pformat_int.isra.0+0x170>
   1400033cd:	48 89 f8             	mov    %rdi,%rax
   1400033d0:	4c 29 e8             	sub    %r13,%rax
   1400033d3:	29 c6                	sub    %eax,%esi
   1400033d5:	89 73 0c             	mov    %esi,0xc(%rbx)
   1400033d8:	85 f6                	test   %esi,%esi
   1400033da:	7e 24                	jle    140003400 <__pformat_int.isra.0+0x170>
   1400033dc:	41 f7 c4 c0 01 00 00 	test   $0x1c0,%r12d
   1400033e3:	0f 85 7f 01 00 00    	jne    140003568 <__pformat_int.isra.0+0x2d8>
   1400033e9:	45 85 f6             	test   %r14d,%r14d
   1400033ec:	0f 88 85 01 00 00    	js     140003577 <__pformat_int.isra.0+0x2e7>
   1400033f2:	41 f7 c4 00 04 00 00 	test   $0x400,%r12d
   1400033f9:	0f 84 c1 01 00 00    	je     1400035c0 <__pformat_int.isra.0+0x330>
   1400033ff:	90                   	nop
   140003400:	41 f6 c4 80          	test   $0x80,%r12b
   140003404:	0f 84 d6 00 00 00    	je     1400034e0 <__pformat_int.isra.0+0x250>
   14000340a:	c6 07 2d             	movb   $0x2d,(%rdi)
   14000340d:	48 8d 77 01          	lea    0x1(%rdi),%rsi
   140003411:	49 39 f5             	cmp    %rsi,%r13
   140003414:	72 23                	jb     140003439 <__pformat_int.isra.0+0x1a9>
   140003416:	eb 58                	jmp    140003470 <__pformat_int.isra.0+0x1e0>
   140003418:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000341f:	00 
   140003420:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140003424:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
   140003427:	8b 43 24             	mov    0x24(%rbx),%eax
   14000342a:	83 c0 01             	add    $0x1,%eax
   14000342d:	89 43 24             	mov    %eax,0x24(%rbx)
   140003430:	49 39 f5             	cmp    %rsi,%r13
   140003433:	74 3b                	je     140003470 <__pformat_int.isra.0+0x1e0>
   140003435:	44 8b 63 08          	mov    0x8(%rbx),%r12d
   140003439:	48 83 ee 01          	sub    $0x1,%rsi
   14000343d:	41 f7 c4 00 40 00 00 	test   $0x4000,%r12d
   140003444:	75 08                	jne    14000344e <__pformat_int.isra.0+0x1be>
   140003446:	8b 43 24             	mov    0x24(%rbx),%eax
   140003449:	39 43 28             	cmp    %eax,0x28(%rbx)
   14000344c:	7e dc                	jle    14000342a <__pformat_int.isra.0+0x19a>
   14000344e:	41 81 e4 00 20 00 00 	and    $0x2000,%r12d
   140003455:	0f be 0e             	movsbl (%rsi),%ecx
   140003458:	48 8b 13             	mov    (%rbx),%rdx
   14000345b:	74 c3                	je     140003420 <__pformat_int.isra.0+0x190>
   14000345d:	e8 ee 41 00 00       	call   140007650 <fputc>
   140003462:	8b 43 24             	mov    0x24(%rbx),%eax
   140003465:	83 c0 01             	add    $0x1,%eax
   140003468:	89 43 24             	mov    %eax,0x24(%rbx)
   14000346b:	49 39 f5             	cmp    %rsi,%r13
   14000346e:	75 c5                	jne    140003435 <__pformat_int.isra.0+0x1a5>
   140003470:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003473:	eb 17                	jmp    14000348c <__pformat_int.isra.0+0x1fc>
   140003475:	0f 1f 00             	nopl   (%rax)
   140003478:	48 63 43 24          	movslq 0x24(%rbx),%rax
   14000347c:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140003480:	8b 53 24             	mov    0x24(%rbx),%edx
   140003483:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003486:	83 c2 01             	add    $0x1,%edx
   140003489:	89 53 24             	mov    %edx,0x24(%rbx)
   14000348c:	89 c2                	mov    %eax,%edx
   14000348e:	83 e8 01             	sub    $0x1,%eax
   140003491:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003494:	85 d2                	test   %edx,%edx
   140003496:	7e 30                	jle    1400034c8 <__pformat_int.isra.0+0x238>
   140003498:	8b 4b 08             	mov    0x8(%rbx),%ecx
   14000349b:	f6 c5 40             	test   $0x40,%ch
   14000349e:	75 08                	jne    1400034a8 <__pformat_int.isra.0+0x218>
   1400034a0:	8b 53 24             	mov    0x24(%rbx),%edx
   1400034a3:	39 53 28             	cmp    %edx,0x28(%rbx)
   1400034a6:	7e de                	jle    140003486 <__pformat_int.isra.0+0x1f6>
   1400034a8:	48 8b 13             	mov    (%rbx),%rdx
   1400034ab:	80 e5 20             	and    $0x20,%ch
   1400034ae:	74 c8                	je     140003478 <__pformat_int.isra.0+0x1e8>
   1400034b0:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400034b5:	e8 96 41 00 00       	call   140007650 <fputc>
   1400034ba:	8b 53 24             	mov    0x24(%rbx),%edx
   1400034bd:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400034c0:	eb c4                	jmp    140003486 <__pformat_int.isra.0+0x1f6>
   1400034c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400034c8:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   1400034cc:	5b                   	pop    %rbx
   1400034cd:	5e                   	pop    %rsi
   1400034ce:	5f                   	pop    %rdi
   1400034cf:	41 5c                	pop    %r12
   1400034d1:	41 5d                	pop    %r13
   1400034d3:	41 5e                	pop    %r14
   1400034d5:	41 5f                	pop    %r15
   1400034d7:	5d                   	pop    %rbp
   1400034d8:	c3                   	ret    
   1400034d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400034e0:	41 f7 c4 00 01 00 00 	test   $0x100,%r12d
   1400034e7:	74 27                	je     140003510 <__pformat_int.isra.0+0x280>
   1400034e9:	c6 07 2b             	movb   $0x2b,(%rdi)
   1400034ec:	48 8d 77 01          	lea    0x1(%rdi),%rsi
   1400034f0:	e9 1c ff ff ff       	jmp    140003411 <__pformat_int.isra.0+0x181>
   1400034f5:	0f 1f 00             	nopl   (%rax)
   1400034f8:	89 c2                	mov    %eax,%edx
   1400034fa:	41 b8 ab aa aa aa    	mov    $0xaaaaaaab,%r8d
   140003500:	49 0f af d0          	imul   %r8,%rdx
   140003504:	48 c1 ea 21          	shr    $0x21,%rdx
   140003508:	01 d0                	add    %edx,%eax
   14000350a:	e9 c1 fd ff ff       	jmp    1400032d0 <__pformat_int.isra.0+0x40>
   14000350f:	90                   	nop
   140003510:	48 89 fe             	mov    %rdi,%rsi
   140003513:	41 f6 c4 40          	test   $0x40,%r12b
   140003517:	0f 84 f4 fe ff ff    	je     140003411 <__pformat_int.isra.0+0x181>
   14000351d:	c6 07 20             	movb   $0x20,(%rdi)
   140003520:	48 83 c6 01          	add    $0x1,%rsi
   140003524:	e9 e8 fe ff ff       	jmp    140003411 <__pformat_int.isra.0+0x181>
   140003529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003530:	48 f7 d9             	neg    %rcx
   140003533:	e9 d7 fd ff ff       	jmp    14000330f <__pformat_int.isra.0+0x7f>
   140003538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000353f:	00 
   140003540:	49 39 fd             	cmp    %rdi,%r13
   140003543:	0f 85 80 fe ff ff    	jne    1400033c9 <__pformat_int.isra.0+0x139>
   140003549:	45 85 f6             	test   %r14d,%r14d
   14000354c:	0f 84 77 fe ff ff    	je     1400033c9 <__pformat_int.isra.0+0x139>
   140003552:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003558:	c6 07 30             	movb   $0x30,(%rdi)
   14000355b:	48 83 c7 01          	add    $0x1,%rdi
   14000355f:	e9 65 fe ff ff       	jmp    1400033c9 <__pformat_int.isra.0+0x139>
   140003564:	0f 1f 40 00          	nopl   0x0(%rax)
   140003568:	83 ee 01             	sub    $0x1,%esi
   14000356b:	89 73 0c             	mov    %esi,0xc(%rbx)
   14000356e:	45 85 f6             	test   %r14d,%r14d
   140003571:	0f 89 7b fe ff ff    	jns    1400033f2 <__pformat_int.isra.0+0x162>
   140003577:	44 89 e0             	mov    %r12d,%eax
   14000357a:	25 00 06 00 00       	and    $0x600,%eax
   14000357f:	3d 00 02 00 00       	cmp    $0x200,%eax
   140003584:	0f 85 68 fe ff ff    	jne    1400033f2 <__pformat_int.isra.0+0x162>
   14000358a:	8b 53 0c             	mov    0xc(%rbx),%edx
   14000358d:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140003590:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003593:	85 d2                	test   %edx,%edx
   140003595:	0f 8e 65 fe ff ff    	jle    140003400 <__pformat_int.isra.0+0x170>
   14000359b:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000359f:	48 89 f9             	mov    %rdi,%rcx
   1400035a2:	ba 30 00 00 00       	mov    $0x30,%edx
   1400035a7:	49 89 f0             	mov    %rsi,%r8
   1400035aa:	48 01 f7             	add    %rsi,%rdi
   1400035ad:	e8 6e 40 00 00       	call   140007620 <memset>
   1400035b2:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   1400035b9:	e9 42 fe ff ff       	jmp    140003400 <__pformat_int.isra.0+0x170>
   1400035be:	66 90                	xchg   %ax,%ax
   1400035c0:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400035c3:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400035c6:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400035c9:	85 c0                	test   %eax,%eax
   1400035cb:	0f 8e 2f fe ff ff    	jle    140003400 <__pformat_int.isra.0+0x170>
   1400035d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400035d8:	48 89 da             	mov    %rbx,%rdx
   1400035db:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400035e0:	e8 9b f3 ff ff       	call   140002980 <__pformat_putc>
   1400035e5:	8b 43 0c             	mov    0xc(%rbx),%eax
   1400035e8:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400035eb:	89 53 0c             	mov    %edx,0xc(%rbx)
   1400035ee:	85 c0                	test   %eax,%eax
   1400035f0:	7f e6                	jg     1400035d8 <__pformat_int.isra.0+0x348>
   1400035f2:	44 8b 63 08          	mov    0x8(%rbx),%r12d
   1400035f6:	e9 05 fe ff ff       	jmp    140003400 <__pformat_int.isra.0+0x170>
   1400035fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003600:	4c 89 ef             	mov    %r13,%rdi
   140003603:	45 89 f0             	mov    %r14d,%r8d
   140003606:	45 85 f6             	test   %r14d,%r14d
   140003609:	0f 8f 9b fd ff ff    	jg     1400033aa <__pformat_int.isra.0+0x11a>
   14000360f:	e9 35 ff ff ff       	jmp    140003549 <__pformat_int.isra.0+0x2b9>
   140003614:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000361b:	00 00 00 00 
   14000361f:	90                   	nop

0000000140003620 <__pformat_emit_radix_point>:
   140003620:	55                   	push   %rbp
   140003621:	41 54                	push   %r12
   140003623:	57                   	push   %rdi
   140003624:	56                   	push   %rsi
   140003625:	53                   	push   %rbx
   140003626:	48 83 ec 30          	sub    $0x30,%rsp
   14000362a:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000362f:	83 79 14 fd          	cmpl   $0xfffffffd,0x14(%rcx)
   140003633:	49 89 cc             	mov    %rcx,%r12
   140003636:	0f 84 e4 00 00 00    	je     140003720 <__pformat_emit_radix_point+0x100>
   14000363c:	0f b7 51 18          	movzwl 0x18(%rcx),%edx
   140003640:	66 85 d2             	test   %dx,%dx
   140003643:	0f 84 b7 00 00 00    	je     140003700 <__pformat_emit_radix_point+0xe0>
   140003649:	49 63 44 24 14       	movslq 0x14(%r12),%rax
   14000364e:	48 89 e6             	mov    %rsp,%rsi
   140003651:	48 83 c0 0f          	add    $0xf,%rax
   140003655:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140003659:	e8 82 f1 ff ff       	call   1400027e0 <___chkstk_ms>
   14000365e:	48 29 c4             	sub    %rax,%rsp
   140003661:	4c 8d 45 f8          	lea    -0x8(%rbp),%r8
   140003665:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   14000366c:	00 
   14000366d:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   140003672:	48 89 d9             	mov    %rbx,%rcx
   140003675:	e8 46 44 00 00       	call   140007ac0 <wcrtomb>
   14000367a:	85 c0                	test   %eax,%eax
   14000367c:	0f 8e de 00 00 00    	jle    140003760 <__pformat_emit_radix_point+0x140>
   140003682:	83 e8 01             	sub    $0x1,%eax
   140003685:	48 8d 7c 03 01       	lea    0x1(%rbx,%rax,1),%rdi
   14000368a:	eb 1f                	jmp    1400036ab <__pformat_emit_radix_point+0x8b>
   14000368c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003690:	49 63 44 24 24       	movslq 0x24(%r12),%rax
   140003695:	41 88 0c 00          	mov    %cl,(%r8,%rax,1)
   140003699:	41 8b 44 24 24       	mov    0x24(%r12),%eax
   14000369e:	83 c0 01             	add    $0x1,%eax
   1400036a1:	41 89 44 24 24       	mov    %eax,0x24(%r12)
   1400036a6:	48 39 df             	cmp    %rbx,%rdi
   1400036a9:	74 41                	je     1400036ec <__pformat_emit_radix_point+0xcc>
   1400036ab:	41 8b 54 24 08       	mov    0x8(%r12),%edx
   1400036b0:	48 83 c3 01          	add    $0x1,%rbx
   1400036b4:	f6 c6 40             	test   $0x40,%dh
   1400036b7:	75 0c                	jne    1400036c5 <__pformat_emit_radix_point+0xa5>
   1400036b9:	41 8b 44 24 24       	mov    0x24(%r12),%eax
   1400036be:	41 39 44 24 28       	cmp    %eax,0x28(%r12)
   1400036c3:	7e d9                	jle    14000369e <__pformat_emit_radix_point+0x7e>
   1400036c5:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
   1400036c9:	4d 8b 04 24          	mov    (%r12),%r8
   1400036cd:	80 e6 20             	and    $0x20,%dh
   1400036d0:	74 be                	je     140003690 <__pformat_emit_radix_point+0x70>
   1400036d2:	4c 89 c2             	mov    %r8,%rdx
   1400036d5:	e8 76 3f 00 00       	call   140007650 <fputc>
   1400036da:	41 8b 44 24 24       	mov    0x24(%r12),%eax
   1400036df:	83 c0 01             	add    $0x1,%eax
   1400036e2:	41 89 44 24 24       	mov    %eax,0x24(%r12)
   1400036e7:	48 39 df             	cmp    %rbx,%rdi
   1400036ea:	75 bf                	jne    1400036ab <__pformat_emit_radix_point+0x8b>
   1400036ec:	48 89 f4             	mov    %rsi,%rsp
   1400036ef:	48 89 ec             	mov    %rbp,%rsp
   1400036f2:	5b                   	pop    %rbx
   1400036f3:	5e                   	pop    %rsi
   1400036f4:	5f                   	pop    %rdi
   1400036f5:	41 5c                	pop    %r12
   1400036f7:	5d                   	pop    %rbp
   1400036f8:	c3                   	ret    
   1400036f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003700:	4c 89 e2             	mov    %r12,%rdx
   140003703:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   140003708:	e8 73 f2 ff ff       	call   140002980 <__pformat_putc>
   14000370d:	90                   	nop
   14000370e:	48 89 ec             	mov    %rbp,%rsp
   140003711:	5b                   	pop    %rbx
   140003712:	5e                   	pop    %rsi
   140003713:	5f                   	pop    %rdi
   140003714:	41 5c                	pop    %r12
   140003716:	5d                   	pop    %rbp
   140003717:	c3                   	ret    
   140003718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000371f:	00 
   140003720:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140003727:	00 
   140003728:	48 8d 5d f8          	lea    -0x8(%rbp),%rbx
   14000372c:	e8 07 3f 00 00       	call   140007638 <localeconv>
   140003731:	48 8d 4d f6          	lea    -0xa(%rbp),%rcx
   140003735:	49 89 d9             	mov    %rbx,%r9
   140003738:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   14000373e:	48 8b 10             	mov    (%rax),%rdx
   140003741:	e8 0a 41 00 00       	call   140007850 <mbrtowc>
   140003746:	85 c0                	test   %eax,%eax
   140003748:	7e 2e                	jle    140003778 <__pformat_emit_radix_point+0x158>
   14000374a:	0f b7 55 f6          	movzwl -0xa(%rbp),%edx
   14000374e:	66 41 89 54 24 18    	mov    %dx,0x18(%r12)
   140003754:	41 89 44 24 14       	mov    %eax,0x14(%r12)
   140003759:	e9 e2 fe ff ff       	jmp    140003640 <__pformat_emit_radix_point+0x20>
   14000375e:	66 90                	xchg   %ax,%ax
   140003760:	4c 89 e2             	mov    %r12,%rdx
   140003763:	b9 2e 00 00 00       	mov    $0x2e,%ecx
   140003768:	e8 13 f2 ff ff       	call   140002980 <__pformat_putc>
   14000376d:	48 89 f4             	mov    %rsi,%rsp
   140003770:	e9 7a ff ff ff       	jmp    1400036ef <__pformat_emit_radix_point+0xcf>
   140003775:	0f 1f 00             	nopl   (%rax)
   140003778:	41 0f b7 54 24 18    	movzwl 0x18(%r12),%edx
   14000377e:	eb d4                	jmp    140003754 <__pformat_emit_radix_point+0x134>

0000000140003780 <__pformat_emit_float>:
   140003780:	55                   	push   %rbp
   140003781:	57                   	push   %rdi
   140003782:	56                   	push   %rsi
   140003783:	53                   	push   %rbx
   140003784:	48 83 ec 28          	sub    $0x28,%rsp
   140003788:	41 8b 41 0c          	mov    0xc(%r9),%eax
   14000378c:	89 cd                	mov    %ecx,%ebp
   14000378e:	48 89 d7             	mov    %rdx,%rdi
   140003791:	44 89 c6             	mov    %r8d,%esi
   140003794:	4c 89 cb             	mov    %r9,%rbx
   140003797:	45 85 c0             	test   %r8d,%r8d
   14000379a:	0f 8e b0 01 00 00    	jle    140003950 <__pformat_emit_float+0x1d0>
   1400037a0:	44 39 c0             	cmp    %r8d,%eax
   1400037a3:	0f 8d 37 01 00 00    	jge    1400038e0 <__pformat_emit_float+0x160>
   1400037a9:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   1400037b0:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   1400037b4:	74 74                	je     14000382a <__pformat_emit_float+0xaa>
   1400037b6:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   1400037bb:	74 6d                	je     14000382a <__pformat_emit_float+0xaa>
   1400037bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400037c2:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
   1400037c7:	8d 4e 02             	lea    0x2(%rsi),%ecx
   1400037ca:	48 0f af ca          	imul   %rdx,%rcx
   1400037ce:	48 c1 e9 21          	shr    $0x21,%rcx
   1400037d2:	8d 51 ff             	lea    -0x1(%rcx),%edx
   1400037d5:	29 c2                	sub    %eax,%edx
   1400037d7:	83 f9 01             	cmp    $0x1,%ecx
   1400037da:	0f 85 f0 00 00 00    	jne    1400038d0 <__pformat_emit_float+0x150>
   1400037e0:	85 c0                	test   %eax,%eax
   1400037e2:	7e 46                	jle    14000382a <__pformat_emit_float+0xaa>
   1400037e4:	85 ed                	test   %ebp,%ebp
   1400037e6:	0f 85 e4 01 00 00    	jne    1400039d0 <__pformat_emit_float+0x250>
   1400037ec:	8b 53 08             	mov    0x8(%rbx),%edx
   1400037ef:	f7 c2 c0 01 00 00    	test   $0x1c0,%edx
   1400037f5:	0f 84 d5 02 00 00    	je     140003ad0 <__pformat_emit_float+0x350>
   1400037fb:	83 e8 01             	sub    $0x1,%eax
   1400037fe:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003801:	74 32                	je     140003835 <__pformat_emit_float+0xb5>
   140003803:	f6 c6 06             	test   $0x6,%dh
   140003806:	75 2d                	jne    140003835 <__pformat_emit_float+0xb5>
   140003808:	83 e8 01             	sub    $0x1,%eax
   14000380b:	89 43 0c             	mov    %eax,0xc(%rbx)
   14000380e:	66 90                	xchg   %ax,%ax
   140003810:	48 89 da             	mov    %rbx,%rdx
   140003813:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003818:	e8 63 f1 ff ff       	call   140002980 <__pformat_putc>
   14000381d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003820:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003823:	89 53 0c             	mov    %edx,0xc(%rbx)
   140003826:	85 c0                	test   %eax,%eax
   140003828:	7f e6                	jg     140003810 <__pformat_emit_float+0x90>
   14000382a:	85 ed                	test   %ebp,%ebp
   14000382c:	0f 85 3f 01 00 00    	jne    140003971 <__pformat_emit_float+0x1f1>
   140003832:	8b 53 08             	mov    0x8(%rbx),%edx
   140003835:	f6 c6 01             	test   $0x1,%dh
   140003838:	0f 85 52 02 00 00    	jne    140003a90 <__pformat_emit_float+0x310>
   14000383e:	83 e2 40             	and    $0x40,%edx
   140003841:	0f 85 c1 02 00 00    	jne    140003b08 <__pformat_emit_float+0x388>
   140003847:	8b 43 0c             	mov    0xc(%rbx),%eax
   14000384a:	85 c0                	test   %eax,%eax
   14000384c:	7e 15                	jle    140003863 <__pformat_emit_float+0xe3>
   14000384e:	8b 53 08             	mov    0x8(%rbx),%edx
   140003851:	81 e2 00 06 00 00    	and    $0x600,%edx
   140003857:	81 fa 00 02 00 00    	cmp    $0x200,%edx
   14000385d:	0f 84 45 02 00 00    	je     140003aa8 <__pformat_emit_float+0x328>
   140003863:	48 8d 6b 20          	lea    0x20(%rbx),%rbp
   140003867:	85 f6                	test   %esi,%esi
   140003869:	0f 8e 91 01 00 00    	jle    140003a00 <__pformat_emit_float+0x280>
   14000386f:	90                   	nop
   140003870:	0f b6 07             	movzbl (%rdi),%eax
   140003873:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003878:	84 c0                	test   %al,%al
   14000387a:	74 07                	je     140003883 <__pformat_emit_float+0x103>
   14000387c:	48 83 c7 01          	add    $0x1,%rdi
   140003880:	0f be c8             	movsbl %al,%ecx
   140003883:	48 89 da             	mov    %rbx,%rdx
   140003886:	e8 f5 f0 ff ff       	call   140002980 <__pformat_putc>
   14000388b:	83 ee 01             	sub    $0x1,%esi
   14000388e:	0f 84 9c 00 00 00    	je     140003930 <__pformat_emit_float+0x1b0>
   140003894:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   140003898:	74 d6                	je     140003870 <__pformat_emit_float+0xf0>
   14000389a:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   14000389f:	74 cf                	je     140003870 <__pformat_emit_float+0xf0>
   1400038a1:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
   1400038a7:	3d 55 55 55 55       	cmp    $0x55555555,%eax
   1400038ac:	77 c2                	ja     140003870 <__pformat_emit_float+0xf0>
   1400038ae:	49 89 d8             	mov    %rbx,%r8
   1400038b1:	ba 01 00 00 00       	mov    $0x1,%edx
   1400038b6:	48 89 e9             	mov    %rbp,%rcx
   1400038b9:	e8 22 f1 ff ff       	call   1400029e0 <__pformat_wputchars>
   1400038be:	eb b0                	jmp    140003870 <__pformat_emit_float+0xf0>
   1400038c0:	83 e8 01             	sub    $0x1,%eax
   1400038c3:	89 d1                	mov    %edx,%ecx
   1400038c5:	01 c1                	add    %eax,%ecx
   1400038c7:	89 43 0c             	mov    %eax,0xc(%rbx)
   1400038ca:	0f 84 10 ff ff ff    	je     1400037e0 <__pformat_emit_float+0x60>
   1400038d0:	85 c0                	test   %eax,%eax
   1400038d2:	7f ec                	jg     1400038c0 <__pformat_emit_float+0x140>
   1400038d4:	e9 51 ff ff ff       	jmp    14000382a <__pformat_emit_float+0xaa>
   1400038d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400038e0:	44 29 c0             	sub    %r8d,%eax
   1400038e3:	41 89 41 0c          	mov    %eax,0xc(%r9)
   1400038e7:	0f 88 bc fe ff ff    	js     1400037a9 <__pformat_emit_float+0x29>
   1400038ed:	41 8b 51 10          	mov    0x10(%r9),%edx
   1400038f1:	39 d0                	cmp    %edx,%eax
   1400038f3:	0f 8e b0 fe ff ff    	jle    1400037a9 <__pformat_emit_float+0x29>
   1400038f9:	29 d0                	sub    %edx,%eax
   1400038fb:	89 43 0c             	mov    %eax,0xc(%rbx)
   1400038fe:	85 d2                	test   %edx,%edx
   140003900:	0f 8e 5a 01 00 00    	jle    140003a60 <__pformat_emit_float+0x2e0>
   140003906:	83 e8 01             	sub    $0x1,%eax
   140003909:	89 43 0c             	mov    %eax,0xc(%rbx)
   14000390c:	85 f6                	test   %esi,%esi
   14000390e:	0f 8e cc fe ff ff    	jle    1400037e0 <__pformat_emit_float+0x60>
   140003914:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
   140003918:	0f 84 c2 fe ff ff    	je     1400037e0 <__pformat_emit_float+0x60>
   14000391e:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140003923:	0f 84 b7 fe ff ff    	je     1400037e0 <__pformat_emit_float+0x60>
   140003929:	e9 94 fe ff ff       	jmp    1400037c2 <__pformat_emit_float+0x42>
   14000392e:	66 90                	xchg   %ax,%ax
   140003930:	8b 43 10             	mov    0x10(%rbx),%eax
   140003933:	85 c0                	test   %eax,%eax
   140003935:	7f 51                	jg     140003988 <__pformat_emit_float+0x208>
   140003937:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   14000393b:	75 4b                	jne    140003988 <__pformat_emit_float+0x208>
   14000393d:	83 e8 01             	sub    $0x1,%eax
   140003940:	89 43 10             	mov    %eax,0x10(%rbx)
   140003943:	48 83 c4 28          	add    $0x28,%rsp
   140003947:	5b                   	pop    %rbx
   140003948:	5e                   	pop    %rsi
   140003949:	5f                   	pop    %rdi
   14000394a:	5d                   	pop    %rbp
   14000394b:	c3                   	ret    
   14000394c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003950:	85 c0                	test   %eax,%eax
   140003952:	0f 8e 98 01 00 00    	jle    140003af0 <__pformat_emit_float+0x370>
   140003958:	83 e8 01             	sub    $0x1,%eax
   14000395b:	8b 53 10             	mov    0x10(%rbx),%edx
   14000395e:	39 d0                	cmp    %edx,%eax
   140003960:	7f 97                	jg     1400038f9 <__pformat_emit_float+0x179>
   140003962:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140003969:	85 ed                	test   %ebp,%ebp
   14000396b:	0f 84 c1 fe ff ff    	je     140003832 <__pformat_emit_float+0xb2>
   140003971:	48 89 da             	mov    %rbx,%rdx
   140003974:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   140003979:	e8 02 f0 ff ff       	call   140002980 <__pformat_putc>
   14000397e:	e9 c4 fe ff ff       	jmp    140003847 <__pformat_emit_float+0xc7>
   140003983:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003988:	48 89 d9             	mov    %rbx,%rcx
   14000398b:	e8 90 fc ff ff       	call   140003620 <__pformat_emit_radix_point>
   140003990:	eb 21                	jmp    1400039b3 <__pformat_emit_float+0x233>
   140003992:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003998:	0f b6 07             	movzbl (%rdi),%eax
   14000399b:	b9 30 00 00 00       	mov    $0x30,%ecx
   1400039a0:	84 c0                	test   %al,%al
   1400039a2:	74 07                	je     1400039ab <__pformat_emit_float+0x22b>
   1400039a4:	48 83 c7 01          	add    $0x1,%rdi
   1400039a8:	0f be c8             	movsbl %al,%ecx
   1400039ab:	48 89 da             	mov    %rbx,%rdx
   1400039ae:	e8 cd ef ff ff       	call   140002980 <__pformat_putc>
   1400039b3:	8b 43 10             	mov    0x10(%rbx),%eax
   1400039b6:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400039b9:	89 53 10             	mov    %edx,0x10(%rbx)
   1400039bc:	85 c0                	test   %eax,%eax
   1400039be:	7f d8                	jg     140003998 <__pformat_emit_float+0x218>
   1400039c0:	48 83 c4 28          	add    $0x28,%rsp
   1400039c4:	5b                   	pop    %rbx
   1400039c5:	5e                   	pop    %rsi
   1400039c6:	5f                   	pop    %rdi
   1400039c7:	5d                   	pop    %rbp
   1400039c8:	c3                   	ret    
   1400039c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400039d0:	83 e8 01             	sub    $0x1,%eax
   1400039d3:	89 43 0c             	mov    %eax,0xc(%rbx)
   1400039d6:	74 99                	je     140003971 <__pformat_emit_float+0x1f1>
   1400039d8:	f7 43 08 00 06 00 00 	testl  $0x600,0x8(%rbx)
   1400039df:	0f 84 23 fe ff ff    	je     140003808 <__pformat_emit_float+0x88>
   1400039e5:	48 89 da             	mov    %rbx,%rdx
   1400039e8:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   1400039ed:	e8 8e ef ff ff       	call   140002980 <__pformat_putc>
   1400039f2:	e9 50 fe ff ff       	jmp    140003847 <__pformat_emit_float+0xc7>
   1400039f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400039fe:	00 00 
   140003a00:	48 89 da             	mov    %rbx,%rdx
   140003a03:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003a08:	e8 73 ef ff ff       	call   140002980 <__pformat_putc>
   140003a0d:	8b 43 10             	mov    0x10(%rbx),%eax
   140003a10:	85 c0                	test   %eax,%eax
   140003a12:	7f 14                	jg     140003a28 <__pformat_emit_float+0x2a8>
   140003a14:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
   140003a18:	75 0e                	jne    140003a28 <__pformat_emit_float+0x2a8>
   140003a1a:	85 f6                	test   %esi,%esi
   140003a1c:	75 1d                	jne    140003a3b <__pformat_emit_float+0x2bb>
   140003a1e:	e9 1a ff ff ff       	jmp    14000393d <__pformat_emit_float+0x1bd>
   140003a23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003a28:	48 89 d9             	mov    %rbx,%rcx
   140003a2b:	e8 f0 fb ff ff       	call   140003620 <__pformat_emit_radix_point>
   140003a30:	85 f6                	test   %esi,%esi
   140003a32:	0f 84 7b ff ff ff    	je     1400039b3 <__pformat_emit_float+0x233>
   140003a38:	8b 43 10             	mov    0x10(%rbx),%eax
   140003a3b:	01 f0                	add    %esi,%eax
   140003a3d:	89 43 10             	mov    %eax,0x10(%rbx)
   140003a40:	48 89 da             	mov    %rbx,%rdx
   140003a43:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003a48:	e8 33 ef ff ff       	call   140002980 <__pformat_putc>
   140003a4d:	83 c6 01             	add    $0x1,%esi
   140003a50:	75 ee                	jne    140003a40 <__pformat_emit_float+0x2c0>
   140003a52:	e9 5c ff ff ff       	jmp    1400039b3 <__pformat_emit_float+0x233>
   140003a57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140003a5e:	00 00 
   140003a60:	8b 53 08             	mov    0x8(%rbx),%edx
   140003a63:	f6 c6 08             	test   $0x8,%dh
   140003a66:	0f 85 9a fe ff ff    	jne    140003906 <__pformat_emit_float+0x186>
   140003a6c:	85 f6                	test   %esi,%esi
   140003a6e:	0f 8e 70 fd ff ff    	jle    1400037e4 <__pformat_emit_float+0x64>
   140003a74:	80 e6 10             	and    $0x10,%dh
   140003a77:	0f 84 67 fd ff ff    	je     1400037e4 <__pformat_emit_float+0x64>
   140003a7d:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
   140003a82:	0f 84 5c fd ff ff    	je     1400037e4 <__pformat_emit_float+0x64>
   140003a88:	e9 35 fd ff ff       	jmp    1400037c2 <__pformat_emit_float+0x42>
   140003a8d:	0f 1f 00             	nopl   (%rax)
   140003a90:	48 89 da             	mov    %rbx,%rdx
   140003a93:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   140003a98:	e8 e3 ee ff ff       	call   140002980 <__pformat_putc>
   140003a9d:	e9 a5 fd ff ff       	jmp    140003847 <__pformat_emit_float+0xc7>
   140003aa2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003aa8:	83 e8 01             	sub    $0x1,%eax
   140003aab:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003aae:	66 90                	xchg   %ax,%ax
   140003ab0:	48 89 da             	mov    %rbx,%rdx
   140003ab3:	b9 30 00 00 00       	mov    $0x30,%ecx
   140003ab8:	e8 c3 ee ff ff       	call   140002980 <__pformat_putc>
   140003abd:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003ac0:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003ac3:	89 53 0c             	mov    %edx,0xc(%rbx)
   140003ac6:	85 c0                	test   %eax,%eax
   140003ac8:	7f e6                	jg     140003ab0 <__pformat_emit_float+0x330>
   140003aca:	e9 94 fd ff ff       	jmp    140003863 <__pformat_emit_float+0xe3>
   140003acf:	90                   	nop
   140003ad0:	f6 c6 06             	test   $0x6,%dh
   140003ad3:	0f 85 5c fd ff ff    	jne    140003835 <__pformat_emit_float+0xb5>
   140003ad9:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003adc:	8d 48 ff             	lea    -0x1(%rax),%ecx
   140003adf:	89 4b 0c             	mov    %ecx,0xc(%rbx)
   140003ae2:	85 c0                	test   %eax,%eax
   140003ae4:	0f 8e 4b fd ff ff    	jle    140003835 <__pformat_emit_float+0xb5>
   140003aea:	e9 21 fd ff ff       	jmp    140003810 <__pformat_emit_float+0x90>
   140003aef:	90                   	nop
   140003af0:	0f 84 65 fe ff ff    	je     14000395b <__pformat_emit_float+0x1db>
   140003af6:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
   140003afd:	e9 67 fe ff ff       	jmp    140003969 <__pformat_emit_float+0x1e9>
   140003b02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003b08:	48 89 da             	mov    %rbx,%rdx
   140003b0b:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003b10:	e8 6b ee ff ff       	call   140002980 <__pformat_putc>
   140003b15:	e9 2d fd ff ff       	jmp    140003847 <__pformat_emit_float+0xc7>
   140003b1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140003b20 <__pformat_emit_efloat>:
   140003b20:	41 55                	push   %r13
   140003b22:	41 54                	push   %r12
   140003b24:	53                   	push   %rbx
   140003b25:	48 83 ec 20          	sub    $0x20,%rsp
   140003b29:	41 ba 01 00 00 00    	mov    $0x1,%r10d
   140003b2f:	41 83 e8 01          	sub    $0x1,%r8d
   140003b33:	41 89 cb             	mov    %ecx,%r11d
   140003b36:	4d 89 cc             	mov    %r9,%r12
   140003b39:	4d 63 e8             	movslq %r8d,%r13
   140003b3c:	41 c1 f8 1f          	sar    $0x1f,%r8d
   140003b40:	49 69 cd 67 66 66 66 	imul   $0x66666667,%r13,%rcx
   140003b47:	48 c1 f9 22          	sar    $0x22,%rcx
   140003b4b:	44 29 c1             	sub    %r8d,%ecx
   140003b4e:	74 1b                	je     140003b6b <__pformat_emit_efloat+0x4b>
   140003b50:	48 63 c1             	movslq %ecx,%rax
   140003b53:	c1 f9 1f             	sar    $0x1f,%ecx
   140003b56:	41 83 c2 01          	add    $0x1,%r10d
   140003b5a:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   140003b61:	48 c1 f8 22          	sar    $0x22,%rax
   140003b65:	29 c8                	sub    %ecx,%eax
   140003b67:	89 c1                	mov    %eax,%ecx
   140003b69:	75 e5                	jne    140003b50 <__pformat_emit_efloat+0x30>
   140003b6b:	41 8b 44 24 2c       	mov    0x2c(%r12),%eax
   140003b70:	83 f8 ff             	cmp    $0xffffffff,%eax
   140003b73:	75 0e                	jne    140003b83 <__pformat_emit_efloat+0x63>
   140003b75:	41 c7 44 24 2c 02 00 	movl   $0x2,0x2c(%r12)
   140003b7c:	00 00 
   140003b7e:	b8 02 00 00 00       	mov    $0x2,%eax
   140003b83:	44 39 d0             	cmp    %r10d,%eax
   140003b86:	44 89 d3             	mov    %r10d,%ebx
   140003b89:	45 8b 44 24 0c       	mov    0xc(%r12),%r8d
   140003b8e:	4d 89 e1             	mov    %r12,%r9
   140003b91:	0f 4d d8             	cmovge %eax,%ebx
   140003b94:	44 89 c0             	mov    %r8d,%eax
   140003b97:	8d 4b 02             	lea    0x2(%rbx),%ecx
   140003b9a:	29 c8                	sub    %ecx,%eax
   140003b9c:	41 39 c8             	cmp    %ecx,%r8d
   140003b9f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   140003ba4:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140003baa:	0f 4e c1             	cmovle %ecx,%eax
   140003bad:	44 89 d9             	mov    %r11d,%ecx
   140003bb0:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
   140003bb5:	e8 c6 fb ff ff       	call   140003780 <__pformat_emit_float>
   140003bba:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   140003bbf:	41 8b 44 24 2c       	mov    0x2c(%r12),%eax
   140003bc4:	4c 89 e2             	mov    %r12,%rdx
   140003bc7:	41 89 44 24 10       	mov    %eax,0x10(%r12)
   140003bcc:	89 c8                	mov    %ecx,%eax
   140003bce:	83 e1 20             	and    $0x20,%ecx
   140003bd1:	0d c0 01 00 00       	or     $0x1c0,%eax
   140003bd6:	83 c9 45             	or     $0x45,%ecx
   140003bd9:	41 89 44 24 08       	mov    %eax,0x8(%r12)
   140003bde:	e8 9d ed ff ff       	call   140002980 <__pformat_putc>
   140003be3:	8d 43 01             	lea    0x1(%rbx),%eax
   140003be6:	41 01 44 24 0c       	add    %eax,0xc(%r12)
   140003beb:	4c 89 e2             	mov    %r12,%rdx
   140003bee:	4c 89 e9             	mov    %r13,%rcx
   140003bf1:	48 83 c4 20          	add    $0x20,%rsp
   140003bf5:	5b                   	pop    %rbx
   140003bf6:	41 5c                	pop    %r12
   140003bf8:	41 5d                	pop    %r13
   140003bfa:	e9 91 f6 ff ff       	jmp    140003290 <__pformat_int.isra.0>
   140003bff:	90                   	nop

0000000140003c00 <__pformat_efloat>:
   140003c00:	41 54                	push   %r12
   140003c02:	53                   	push   %rbx
   140003c03:	48 83 ec 68          	sub    $0x68,%rsp
   140003c07:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   140003c0b:	db 29                	fldt   (%rcx)
   140003c0d:	48 89 d3             	mov    %rdx,%rbx
   140003c10:	45 85 c0             	test   %r8d,%r8d
   140003c13:	78 6b                	js     140003c80 <__pformat_efloat+0x80>
   140003c15:	41 83 c0 01          	add    $0x1,%r8d
   140003c19:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140003c1e:	db 7c 24 50          	fstpt  0x50(%rsp)
   140003c22:	66 0f 6f 44 24 50    	movdqa 0x50(%rsp),%xmm0
   140003c28:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140003c2d:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140003c32:	b9 02 00 00 00       	mov    $0x2,%ecx
   140003c37:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140003c3c:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
   140003c41:	e8 2a ec ff ff       	call   140002870 <__pformat_cvt>
   140003c46:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   140003c4b:	49 89 c4             	mov    %rax,%r12
   140003c4e:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   140003c55:	74 39                	je     140003c90 <__pformat_efloat+0x90>
   140003c57:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003c5b:	49 89 d9             	mov    %rbx,%r9
   140003c5e:	48 89 c2             	mov    %rax,%rdx
   140003c61:	e8 ba fe ff ff       	call   140003b20 <__pformat_emit_efloat>
   140003c66:	4c 89 e1             	mov    %r12,%rcx
   140003c69:	e8 62 12 00 00       	call   140004ed0 <__freedtoa>
   140003c6e:	90                   	nop
   140003c6f:	48 83 c4 68          	add    $0x68,%rsp
   140003c73:	5b                   	pop    %rbx
   140003c74:	41 5c                	pop    %r12
   140003c76:	c3                   	ret    
   140003c77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140003c7e:	00 00 
   140003c80:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140003c87:	41 b8 07 00 00 00    	mov    $0x7,%r8d
   140003c8d:	eb 8a                	jmp    140003c19 <__pformat_efloat+0x19>
   140003c8f:	90                   	nop
   140003c90:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003c94:	49 89 d8             	mov    %rbx,%r8
   140003c97:	48 89 c2             	mov    %rax,%rdx
   140003c9a:	e8 31 f0 ff ff       	call   140002cd0 <__pformat_emit_inf_or_nan>
   140003c9f:	4c 89 e1             	mov    %r12,%rcx
   140003ca2:	e8 29 12 00 00       	call   140004ed0 <__freedtoa>
   140003ca7:	90                   	nop
   140003ca8:	48 83 c4 68          	add    $0x68,%rsp
   140003cac:	5b                   	pop    %rbx
   140003cad:	41 5c                	pop    %r12
   140003caf:	c3                   	ret    

0000000140003cb0 <__pformat_float>:
   140003cb0:	41 54                	push   %r12
   140003cb2:	53                   	push   %rbx
   140003cb3:	48 83 ec 68          	sub    $0x68,%rsp
   140003cb7:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   140003cbb:	db 29                	fldt   (%rcx)
   140003cbd:	48 89 d3             	mov    %rdx,%rbx
   140003cc0:	45 85 c0             	test   %r8d,%r8d
   140003cc3:	79 0d                	jns    140003cd2 <__pformat_float+0x22>
   140003cc5:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140003ccc:	41 b8 06 00 00 00    	mov    $0x6,%r8d
   140003cd2:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140003cd7:	db 7c 24 50          	fstpt  0x50(%rsp)
   140003cdb:	66 0f 6f 44 24 50    	movdqa 0x50(%rsp),%xmm0
   140003ce1:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140003ce6:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140003ceb:	b9 03 00 00 00       	mov    $0x3,%ecx
   140003cf0:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140003cf5:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
   140003cfa:	e8 71 eb ff ff       	call   140002870 <__pformat_cvt>
   140003cff:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   140003d04:	49 89 c4             	mov    %rax,%r12
   140003d07:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
   140003d0e:	74 68                	je     140003d78 <__pformat_float+0xc8>
   140003d10:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003d14:	48 89 c2             	mov    %rax,%rdx
   140003d17:	49 89 d9             	mov    %rbx,%r9
   140003d1a:	e8 61 fa ff ff       	call   140003780 <__pformat_emit_float>
   140003d1f:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003d22:	eb 18                	jmp    140003d3c <__pformat_float+0x8c>
   140003d24:	0f 1f 40 00          	nopl   0x0(%rax)
   140003d28:	48 63 43 24          	movslq 0x24(%rbx),%rax
   140003d2c:	c6 04 02 20          	movb   $0x20,(%rdx,%rax,1)
   140003d30:	8b 53 24             	mov    0x24(%rbx),%edx
   140003d33:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003d36:	83 c2 01             	add    $0x1,%edx
   140003d39:	89 53 24             	mov    %edx,0x24(%rbx)
   140003d3c:	89 c2                	mov    %eax,%edx
   140003d3e:	83 e8 01             	sub    $0x1,%eax
   140003d41:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003d44:	85 d2                	test   %edx,%edx
   140003d46:	7e 3f                	jle    140003d87 <__pformat_float+0xd7>
   140003d48:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140003d4b:	f6 c5 40             	test   $0x40,%ch
   140003d4e:	75 08                	jne    140003d58 <__pformat_float+0xa8>
   140003d50:	8b 53 24             	mov    0x24(%rbx),%edx
   140003d53:	39 53 28             	cmp    %edx,0x28(%rbx)
   140003d56:	7e de                	jle    140003d36 <__pformat_float+0x86>
   140003d58:	48 8b 13             	mov    (%rbx),%rdx
   140003d5b:	80 e5 20             	and    $0x20,%ch
   140003d5e:	74 c8                	je     140003d28 <__pformat_float+0x78>
   140003d60:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003d65:	e8 e6 38 00 00       	call   140007650 <fputc>
   140003d6a:	8b 53 24             	mov    0x24(%rbx),%edx
   140003d6d:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003d70:	eb c4                	jmp    140003d36 <__pformat_float+0x86>
   140003d72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003d78:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003d7c:	49 89 d8             	mov    %rbx,%r8
   140003d7f:	48 89 c2             	mov    %rax,%rdx
   140003d82:	e8 49 ef ff ff       	call   140002cd0 <__pformat_emit_inf_or_nan>
   140003d87:	4c 89 e1             	mov    %r12,%rcx
   140003d8a:	e8 41 11 00 00       	call   140004ed0 <__freedtoa>
   140003d8f:	90                   	nop
   140003d90:	48 83 c4 68          	add    $0x68,%rsp
   140003d94:	5b                   	pop    %rbx
   140003d95:	41 5c                	pop    %r12
   140003d97:	c3                   	ret    
   140003d98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140003d9f:	00 

0000000140003da0 <__pformat_gfloat>:
   140003da0:	41 54                	push   %r12
   140003da2:	56                   	push   %rsi
   140003da3:	53                   	push   %rbx
   140003da4:	48 83 ec 60          	sub    $0x60,%rsp
   140003da8:	44 8b 42 10          	mov    0x10(%rdx),%r8d
   140003dac:	db 29                	fldt   (%rcx)
   140003dae:	48 89 d3             	mov    %rdx,%rbx
   140003db1:	45 85 c0             	test   %r8d,%r8d
   140003db4:	0f 88 fe 00 00 00    	js     140003eb8 <__pformat_gfloat+0x118>
   140003dba:	0f 84 e0 00 00 00    	je     140003ea0 <__pformat_gfloat+0x100>
   140003dc0:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
   140003dc5:	db 7c 24 50          	fstpt  0x50(%rsp)
   140003dc9:	66 0f 6f 44 24 50    	movdqa 0x50(%rsp),%xmm0
   140003dcf:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
   140003dd4:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
   140003dd9:	b9 02 00 00 00       	mov    $0x2,%ecx
   140003dde:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140003de3:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
   140003de8:	e8 83 ea ff ff       	call   140002870 <__pformat_cvt>
   140003ded:	8b 74 24 4c          	mov    0x4c(%rsp),%esi
   140003df1:	49 89 c4             	mov    %rax,%r12
   140003df4:	81 fe 00 80 ff ff    	cmp    $0xffff8000,%esi
   140003dfa:	0f 84 d0 00 00 00    	je     140003ed0 <__pformat_gfloat+0x130>
   140003e00:	8b 43 08             	mov    0x8(%rbx),%eax
   140003e03:	25 00 08 00 00       	and    $0x800,%eax
   140003e08:	83 fe fd             	cmp    $0xfffffffd,%esi
   140003e0b:	7c 4b                	jl     140003e58 <__pformat_gfloat+0xb8>
   140003e0d:	8b 53 10             	mov    0x10(%rbx),%edx
   140003e10:	39 d6                	cmp    %edx,%esi
   140003e12:	7f 44                	jg     140003e58 <__pformat_gfloat+0xb8>
   140003e14:	85 c0                	test   %eax,%eax
   140003e16:	0f 84 cc 00 00 00    	je     140003ee8 <__pformat_gfloat+0x148>
   140003e1c:	29 f2                	sub    %esi,%edx
   140003e1e:	89 53 10             	mov    %edx,0x10(%rbx)
   140003e21:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003e25:	49 89 d9             	mov    %rbx,%r9
   140003e28:	41 89 f0             	mov    %esi,%r8d
   140003e2b:	4c 89 e2             	mov    %r12,%rdx
   140003e2e:	e8 4d f9 ff ff       	call   140003780 <__pformat_emit_float>
   140003e33:	eb 10                	jmp    140003e45 <__pformat_gfloat+0xa5>
   140003e35:	0f 1f 00             	nopl   (%rax)
   140003e38:	48 89 da             	mov    %rbx,%rdx
   140003e3b:	b9 20 00 00 00       	mov    $0x20,%ecx
   140003e40:	e8 3b eb ff ff       	call   140002980 <__pformat_putc>
   140003e45:	8b 43 0c             	mov    0xc(%rbx),%eax
   140003e48:	8d 50 ff             	lea    -0x1(%rax),%edx
   140003e4b:	89 53 0c             	mov    %edx,0xc(%rbx)
   140003e4e:	85 c0                	test   %eax,%eax
   140003e50:	7f e6                	jg     140003e38 <__pformat_gfloat+0x98>
   140003e52:	eb 28                	jmp    140003e7c <__pformat_gfloat+0xdc>
   140003e54:	0f 1f 40 00          	nopl   0x0(%rax)
   140003e58:	85 c0                	test   %eax,%eax
   140003e5a:	75 34                	jne    140003e90 <__pformat_gfloat+0xf0>
   140003e5c:	4c 89 e1             	mov    %r12,%rcx
   140003e5f:	e8 a4 37 00 00       	call   140007608 <strlen>
   140003e64:	83 e8 01             	sub    $0x1,%eax
   140003e67:	89 43 10             	mov    %eax,0x10(%rbx)
   140003e6a:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003e6e:	49 89 d9             	mov    %rbx,%r9
   140003e71:	41 89 f0             	mov    %esi,%r8d
   140003e74:	4c 89 e2             	mov    %r12,%rdx
   140003e77:	e8 a4 fc ff ff       	call   140003b20 <__pformat_emit_efloat>
   140003e7c:	4c 89 e1             	mov    %r12,%rcx
   140003e7f:	e8 4c 10 00 00       	call   140004ed0 <__freedtoa>
   140003e84:	90                   	nop
   140003e85:	48 83 c4 60          	add    $0x60,%rsp
   140003e89:	5b                   	pop    %rbx
   140003e8a:	5e                   	pop    %rsi
   140003e8b:	41 5c                	pop    %r12
   140003e8d:	c3                   	ret    
   140003e8e:	66 90                	xchg   %ax,%ax
   140003e90:	8b 43 10             	mov    0x10(%rbx),%eax
   140003e93:	83 e8 01             	sub    $0x1,%eax
   140003e96:	eb cf                	jmp    140003e67 <__pformat_gfloat+0xc7>
   140003e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140003e9f:	00 
   140003ea0:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%rdx)
   140003ea7:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140003ead:	e9 0e ff ff ff       	jmp    140003dc0 <__pformat_gfloat+0x20>
   140003eb2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003eb8:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
   140003ebf:	41 b8 06 00 00 00    	mov    $0x6,%r8d
   140003ec5:	e9 f6 fe ff ff       	jmp    140003dc0 <__pformat_gfloat+0x20>
   140003eca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003ed0:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
   140003ed4:	49 89 d8             	mov    %rbx,%r8
   140003ed7:	48 89 c2             	mov    %rax,%rdx
   140003eda:	e8 f1 ed ff ff       	call   140002cd0 <__pformat_emit_inf_or_nan>
   140003edf:	eb 9b                	jmp    140003e7c <__pformat_gfloat+0xdc>
   140003ee1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003ee8:	4c 89 e1             	mov    %r12,%rcx
   140003eeb:	e8 18 37 00 00       	call   140007608 <strlen>
   140003ef0:	29 f0                	sub    %esi,%eax
   140003ef2:	89 43 10             	mov    %eax,0x10(%rbx)
   140003ef5:	0f 89 26 ff ff ff    	jns    140003e21 <__pformat_gfloat+0x81>
   140003efb:	8b 53 0c             	mov    0xc(%rbx),%edx
   140003efe:	85 d2                	test   %edx,%edx
   140003f00:	0f 8e 1b ff ff ff    	jle    140003e21 <__pformat_gfloat+0x81>
   140003f06:	01 d0                	add    %edx,%eax
   140003f08:	89 43 0c             	mov    %eax,0xc(%rbx)
   140003f0b:	e9 11 ff ff ff       	jmp    140003e21 <__pformat_gfloat+0x81>

0000000140003f10 <__pformat_xldouble>:
   140003f10:	41 55                	push   %r13
   140003f12:	41 54                	push   %r12
   140003f14:	55                   	push   %rbp
   140003f15:	57                   	push   %rdi
   140003f16:	56                   	push   %rsi
   140003f17:	53                   	push   %rbx
   140003f18:	48 83 ec 58          	sub    $0x58,%rsp
   140003f1c:	4c 8b 11             	mov    (%rcx),%r10
   140003f1f:	44 8b 59 08          	mov    0x8(%rcx),%r11d
   140003f23:	41 0f bf cb          	movswl %r11w,%ecx
   140003f27:	4c 89 de             	mov    %r11,%rsi
   140003f2a:	44 8d 04 09          	lea    (%rcx,%rcx,1),%r8d
   140003f2e:	49 89 d4             	mov    %rdx,%r12
   140003f31:	4c 89 d2             	mov    %r10,%rdx
   140003f34:	45 0f b7 c0          	movzwl %r8w,%r8d
   140003f38:	48 c1 ea 20          	shr    $0x20,%rdx
   140003f3c:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
   140003f42:	44 09 d2             	or     %r10d,%edx
   140003f45:	89 d0                	mov    %edx,%eax
   140003f47:	f7 d8                	neg    %eax
   140003f49:	09 d0                	or     %edx,%eax
   140003f4b:	c1 e8 1f             	shr    $0x1f,%eax
   140003f4e:	44 09 c0             	or     %r8d,%eax
   140003f51:	41 b8 fe ff 00 00    	mov    $0xfffe,%r8d
   140003f57:	41 29 c0             	sub    %eax,%r8d
   140003f5a:	41 c1 e8 10          	shr    $0x10,%r8d
   140003f5e:	0f 85 d4 02 00 00    	jne    140004238 <__pformat_xldouble+0x328>
   140003f64:	66 45 85 db          	test   %r11w,%r11w
   140003f68:	0f 88 d2 01 00 00    	js     140004140 <__pformat_xldouble+0x230>
   140003f6e:	66 81 e6 ff 7f       	and    $0x7fff,%si
   140003f73:	0f 85 9f 01 00 00    	jne    140004118 <__pformat_xldouble+0x208>
   140003f79:	4d 85 d2             	test   %r10,%r10
   140003f7c:	0f 85 2e 03 00 00    	jne    1400042b0 <__pformat_xldouble+0x3a0>
   140003f82:	41 8b 54 24 10       	mov    0x10(%r12),%edx
   140003f87:	83 fa 0e             	cmp    $0xe,%edx
   140003f8a:	0f 86 f0 01 00 00    	jbe    140004180 <__pformat_xldouble+0x270>
   140003f90:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   140003f95:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   140003f9a:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   140003f9f:	85 c0                	test   %eax,%eax
   140003fa1:	0f 8e 99 04 00 00    	jle    140004440 <__pformat_xldouble+0x530>
   140003fa7:	c6 44 24 30 2e       	movb   $0x2e,0x30(%rsp)
   140003fac:	48 8d 44 24 31       	lea    0x31(%rsp),%rax
   140003fb1:	c6 00 30             	movb   $0x30,(%rax)
   140003fb4:	48 8d 58 01          	lea    0x1(%rax),%rbx
   140003fb8:	45 8b 54 24 0c       	mov    0xc(%r12),%r10d
   140003fbd:	bd 02 00 00 00       	mov    $0x2,%ebp
   140003fc2:	45 85 d2             	test   %r10d,%r10d
   140003fc5:	0f 8e 85 00 00 00    	jle    140004050 <__pformat_xldouble+0x140>
   140003fcb:	41 8b 54 24 10       	mov    0x10(%r12),%edx
   140003fd0:	49 89 d9             	mov    %rbx,%r9
   140003fd3:	0f bf c6             	movswl %si,%eax
   140003fd6:	49 29 f9             	sub    %rdi,%r9
   140003fd9:	46 8d 04 0a          	lea    (%rdx,%r9,1),%r8d
   140003fdd:	85 d2                	test   %edx,%edx
   140003fdf:	89 ca                	mov    %ecx,%edx
   140003fe1:	45 0f 4f c8          	cmovg  %r8d,%r9d
   140003fe5:	81 e2 c0 01 00 00    	and    $0x1c0,%edx
   140003feb:	83 fa 01             	cmp    $0x1,%edx
   140003fee:	48 0f bf d6          	movswq %si,%rdx
   140003ff2:	41 83 d9 fa          	sbb    $0xfffffffa,%r9d
   140003ff6:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
   140003ffd:	c1 f8 1f             	sar    $0x1f,%eax
   140004000:	45 89 c8             	mov    %r9d,%r8d
   140004003:	48 c1 fa 22          	sar    $0x22,%rdx
   140004007:	29 c2                	sub    %eax,%edx
   140004009:	74 2a                	je     140004035 <__pformat_xldouble+0x125>
   14000400b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004010:	48 63 c2             	movslq %edx,%rax
   140004013:	41 83 c0 01          	add    $0x1,%r8d
   140004017:	c1 fa 1f             	sar    $0x1f,%edx
   14000401a:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   140004021:	41 8d 68 02          	lea    0x2(%r8),%ebp
   140004025:	44 29 cd             	sub    %r9d,%ebp
   140004028:	48 c1 f8 22          	sar    $0x22,%rax
   14000402c:	29 d0                	sub    %edx,%eax
   14000402e:	89 c2                	mov    %eax,%edx
   140004030:	75 de                	jne    140004010 <__pformat_xldouble+0x100>
   140004032:	0f bf ed             	movswl %bp,%ebp
   140004035:	45 39 c2             	cmp    %r8d,%r10d
   140004038:	0f 8e 6a 03 00 00    	jle    1400043a8 <__pformat_xldouble+0x498>
   14000403e:	45 29 c2             	sub    %r8d,%r10d
   140004041:	f6 c5 06             	test   $0x6,%ch
   140004044:	0f 84 ae 03 00 00    	je     1400043f8 <__pformat_xldouble+0x4e8>
   14000404a:	45 89 54 24 0c       	mov    %r10d,0xc(%r12)
   14000404f:	90                   	nop
   140004050:	f6 c1 80             	test   $0x80,%cl
   140004053:	0f 85 37 03 00 00    	jne    140004390 <__pformat_xldouble+0x480>
   140004059:	f6 c5 01             	test   $0x1,%ch
   14000405c:	0f 85 5e 03 00 00    	jne    1400043c0 <__pformat_xldouble+0x4b0>
   140004062:	83 e1 40             	and    $0x40,%ecx
   140004065:	0f 85 75 03 00 00    	jne    1400043e0 <__pformat_xldouble+0x4d0>
   14000406b:	4c 89 e2             	mov    %r12,%rdx
   14000406e:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004073:	e8 08 e9 ff ff       	call   140002980 <__pformat_putc>
   140004078:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   14000407d:	4c 89 e2             	mov    %r12,%rdx
   140004080:	83 e1 20             	and    $0x20,%ecx
   140004083:	83 c9 58             	or     $0x58,%ecx
   140004086:	e8 f5 e8 ff ff       	call   140002980 <__pformat_putc>
   14000408b:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
   140004090:	85 c0                	test   %eax,%eax
   140004092:	7e 32                	jle    1400040c6 <__pformat_xldouble+0x1b6>
   140004094:	41 f6 44 24 09 02    	testb  $0x2,0x9(%r12)
   14000409a:	74 2a                	je     1400040c6 <__pformat_xldouble+0x1b6>
   14000409c:	83 e8 01             	sub    $0x1,%eax
   14000409f:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
   1400040a4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400040a8:	4c 89 e2             	mov    %r12,%rdx
   1400040ab:	b9 30 00 00 00       	mov    $0x30,%ecx
   1400040b0:	e8 cb e8 ff ff       	call   140002980 <__pformat_putc>
   1400040b5:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
   1400040ba:	8d 50 ff             	lea    -0x1(%rax),%edx
   1400040bd:	41 89 54 24 0c       	mov    %edx,0xc(%r12)
   1400040c2:	85 c0                	test   %eax,%eax
   1400040c4:	7f e2                	jg     1400040a8 <__pformat_xldouble+0x198>
   1400040c6:	4c 8d 6c 24 2e       	lea    0x2e(%rsp),%r13
   1400040cb:	48 39 fb             	cmp    %rdi,%rbx
   1400040ce:	77 25                	ja     1400040f5 <__pformat_xldouble+0x1e5>
   1400040d0:	e9 90 01 00 00       	jmp    140004265 <__pformat_xldouble+0x355>
   1400040d5:	0f 1f 00             	nopl   (%rax)
   1400040d8:	41 0f b7 44 24 20    	movzwl 0x20(%r12),%eax
   1400040de:	66 89 44 24 2e       	mov    %ax,0x2e(%rsp)
   1400040e3:	66 85 c0             	test   %ax,%ax
   1400040e6:	0f 85 74 02 00 00    	jne    140004360 <__pformat_xldouble+0x450>
   1400040ec:	48 39 fb             	cmp    %rdi,%rbx
   1400040ef:	0f 84 70 01 00 00    	je     140004265 <__pformat_xldouble+0x355>
   1400040f5:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
   1400040f9:	48 83 eb 01          	sub    $0x1,%rbx
   1400040fd:	83 f9 2e             	cmp    $0x2e,%ecx
   140004100:	0f 84 02 02 00 00    	je     140004308 <__pformat_xldouble+0x3f8>
   140004106:	83 f9 2c             	cmp    $0x2c,%ecx
   140004109:	74 cd                	je     1400040d8 <__pformat_xldouble+0x1c8>
   14000410b:	4c 89 e2             	mov    %r12,%rdx
   14000410e:	e8 6d e8 ff ff       	call   140002980 <__pformat_putc>
   140004113:	eb d7                	jmp    1400040ec <__pformat_xldouble+0x1dc>
   140004115:	0f 1f 00             	nopl   (%rax)
   140004118:	66 81 fe ff 7f       	cmp    $0x7fff,%si
   14000411d:	75 41                	jne    140004160 <__pformat_xldouble+0x250>
   14000411f:	85 d2                	test   %edx,%edx
   140004121:	75 3d                	jne    140004160 <__pformat_xldouble+0x250>
   140004123:	81 e1 00 80 00 00    	and    $0x8000,%ecx
   140004129:	4d 89 e0             	mov    %r12,%r8
   14000412c:	48 8d 15 d8 51 00 00 	lea    0x51d8(%rip),%rdx        # 14000930b <.rdata+0xb>
   140004133:	e9 0c 01 00 00       	jmp    140004244 <__pformat_xldouble+0x334>
   140004138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000413f:	00 
   140004140:	41 81 4c 24 08 80 00 	orl    $0x80,0x8(%r12)
   140004147:	00 00 
   140004149:	66 81 e6 ff 7f       	and    $0x7fff,%si
   14000414e:	0f 84 25 fe ff ff    	je     140003f79 <__pformat_xldouble+0x69>
   140004154:	eb c2                	jmp    140004118 <__pformat_xldouble+0x208>
   140004156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000415d:	00 00 00 
   140004160:	41 8b 54 24 10       	mov    0x10(%r12),%edx
   140004165:	66 81 ee ff 3f       	sub    $0x3fff,%si
   14000416a:	83 fa 0e             	cmp    $0xe,%edx
   14000416d:	0f 87 75 01 00 00    	ja     1400042e8 <__pformat_xldouble+0x3d8>
   140004173:	4d 85 d2             	test   %r10,%r10
   140004176:	78 0d                	js     140004185 <__pformat_xldouble+0x275>
   140004178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000417f:	00 
   140004180:	4d 01 d2             	add    %r10,%r10
   140004183:	79 fb                	jns    140004180 <__pformat_xldouble+0x270>
   140004185:	b9 0e 00 00 00       	mov    $0xe,%ecx
   14000418a:	b8 04 00 00 00       	mov    $0x4,%eax
   14000418f:	49 d1 ea             	shr    %r10
   140004192:	29 d1                	sub    %edx,%ecx
   140004194:	c1 e1 02             	shl    $0x2,%ecx
   140004197:	48 d3 e0             	shl    %cl,%rax
   14000419a:	49 01 c2             	add    %rax,%r10
   14000419d:	0f 88 35 02 00 00    	js     1400043d8 <__pformat_xldouble+0x4c8>
   1400041a3:	4d 01 d2             	add    %r10,%r10
   1400041a6:	b9 0f 00 00 00       	mov    $0xf,%ecx
   1400041ab:	41 8b 44 24 08       	mov    0x8(%r12),%eax
   1400041b0:	29 d1                	sub    %edx,%ecx
   1400041b2:	c1 e1 02             	shl    $0x2,%ecx
   1400041b5:	49 d3 ea             	shr    %cl,%r10
   1400041b8:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   1400041bd:	41 89 c1             	mov    %eax,%r9d
   1400041c0:	41 89 c0             	mov    %eax,%r8d
   1400041c3:	89 c1                	mov    %eax,%ecx
   1400041c5:	48 89 fb             	mov    %rdi,%rbx
   1400041c8:	41 81 e1 00 08 00 00 	and    $0x800,%r9d
   1400041cf:	41 83 e0 20          	and    $0x20,%r8d
   1400041d3:	eb 23                	jmp    1400041f8 <__pformat_xldouble+0x2e8>
   1400041d5:	0f 1f 00             	nopl   (%rax)
   1400041d8:	48 39 fb             	cmp    %rdi,%rbx
   1400041db:	77 09                	ja     1400041e6 <__pformat_xldouble+0x2d6>
   1400041dd:	41 8b 54 24 10       	mov    0x10(%r12),%edx
   1400041e2:	85 d2                	test   %edx,%edx
   1400041e4:	78 09                	js     1400041ef <__pformat_xldouble+0x2df>
   1400041e6:	83 c0 30             	add    $0x30,%eax
   1400041e9:	88 03                	mov    %al,(%rbx)
   1400041eb:	48 83 c3 01          	add    $0x1,%rbx
   1400041ef:	4d 85 d2             	test   %r10,%r10
   1400041f2:	0f 84 80 01 00 00    	je     140004378 <__pformat_xldouble+0x468>
   1400041f8:	44 89 d0             	mov    %r10d,%eax
   1400041fb:	83 e0 0f             	and    $0xf,%eax
   1400041fe:	49 f7 c2 f0 ff ff ff 	test   $0xfffffffffffffff0,%r10
   140004205:	0f 84 0d 01 00 00    	je     140004318 <__pformat_xldouble+0x408>
   14000420b:	41 8b 54 24 10       	mov    0x10(%r12),%edx
   140004210:	49 c1 ea 04          	shr    $0x4,%r10
   140004214:	85 d2                	test   %edx,%edx
   140004216:	7e 08                	jle    140004220 <__pformat_xldouble+0x310>
   140004218:	83 ea 01             	sub    $0x1,%edx
   14000421b:	41 89 54 24 10       	mov    %edx,0x10(%r12)
   140004220:	85 c0                	test   %eax,%eax
   140004222:	74 b4                	je     1400041d8 <__pformat_xldouble+0x2c8>
   140004224:	83 f8 09             	cmp    $0x9,%eax
   140004227:	76 bd                	jbe    1400041e6 <__pformat_xldouble+0x2d6>
   140004229:	83 c0 37             	add    $0x37,%eax
   14000422c:	44 09 c0             	or     %r8d,%eax
   14000422f:	eb b8                	jmp    1400041e9 <__pformat_xldouble+0x2d9>
   140004231:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004238:	4d 89 e0             	mov    %r12,%r8
   14000423b:	48 8d 15 c5 50 00 00 	lea    0x50c5(%rip),%rdx        # 140009307 <.rdata+0x7>
   140004242:	31 c9                	xor    %ecx,%ecx
   140004244:	48 83 c4 58          	add    $0x58,%rsp
   140004248:	5b                   	pop    %rbx
   140004249:	5e                   	pop    %rsi
   14000424a:	5f                   	pop    %rdi
   14000424b:	5d                   	pop    %rbp
   14000424c:	41 5c                	pop    %r12
   14000424e:	41 5d                	pop    %r13
   140004250:	e9 7b ea ff ff       	jmp    140002cd0 <__pformat_emit_inf_or_nan>
   140004255:	0f 1f 00             	nopl   (%rax)
   140004258:	4c 89 e2             	mov    %r12,%rdx
   14000425b:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004260:	e8 1b e7 ff ff       	call   140002980 <__pformat_putc>
   140004265:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   14000426a:	8d 50 ff             	lea    -0x1(%rax),%edx
   14000426d:	41 89 54 24 10       	mov    %edx,0x10(%r12)
   140004272:	85 c0                	test   %eax,%eax
   140004274:	7f e2                	jg     140004258 <__pformat_xldouble+0x348>
   140004276:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   14000427b:	4c 89 e2             	mov    %r12,%rdx
   14000427e:	83 e1 20             	and    $0x20,%ecx
   140004281:	83 c9 50             	or     $0x50,%ecx
   140004284:	e8 f7 e6 ff ff       	call   140002980 <__pformat_putc>
   140004289:	41 01 6c 24 0c       	add    %ebp,0xc(%r12)
   14000428e:	48 0f bf ce          	movswq %si,%rcx
   140004292:	4c 89 e2             	mov    %r12,%rdx
   140004295:	41 81 4c 24 08 c0 01 	orl    $0x1c0,0x8(%r12)
   14000429c:	00 00 
   14000429e:	48 83 c4 58          	add    $0x58,%rsp
   1400042a2:	5b                   	pop    %rbx
   1400042a3:	5e                   	pop    %rsi
   1400042a4:	5f                   	pop    %rdi
   1400042a5:	5d                   	pop    %rbp
   1400042a6:	41 5c                	pop    %r12
   1400042a8:	41 5d                	pop    %r13
   1400042aa:	e9 e1 ef ff ff       	jmp    140003290 <__pformat_int.isra.0>
   1400042af:	90                   	nop
   1400042b0:	0f 88 9b 01 00 00    	js     140004451 <__pformat_xldouble+0x541>
   1400042b6:	b8 01 c0 ff ff       	mov    $0xffffc001,%eax
   1400042bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400042c0:	89 c6                	mov    %eax,%esi
   1400042c2:	83 e8 01             	sub    $0x1,%eax
   1400042c5:	4d 01 d2             	add    %r10,%r10
   1400042c8:	79 f6                	jns    1400042c0 <__pformat_xldouble+0x3b0>
   1400042ca:	41 8b 54 24 10       	mov    0x10(%r12),%edx
   1400042cf:	83 fa 0e             	cmp    $0xe,%edx
   1400042d2:	0f 86 ad fe ff ff    	jbe    140004185 <__pformat_xldouble+0x275>
   1400042d8:	41 8b 44 24 08       	mov    0x8(%r12),%eax
   1400042dd:	e9 d6 fe ff ff       	jmp    1400041b8 <__pformat_xldouble+0x2a8>
   1400042e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400042e8:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   1400042ed:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   1400042f2:	89 c8                	mov    %ecx,%eax
   1400042f4:	4d 85 d2             	test   %r10,%r10
   1400042f7:	0f 85 bb fe ff ff    	jne    1400041b8 <__pformat_xldouble+0x2a8>
   1400042fd:	e9 98 fc ff ff       	jmp    140003f9a <__pformat_xldouble+0x8a>
   140004302:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004308:	4c 89 e1             	mov    %r12,%rcx
   14000430b:	e8 10 f3 ff ff       	call   140003620 <__pformat_emit_radix_point>
   140004310:	e9 d7 fd ff ff       	jmp    1400040ec <__pformat_xldouble+0x1dc>
   140004315:	0f 1f 00             	nopl   (%rax)
   140004318:	48 39 fb             	cmp    %rdi,%rbx
   14000431b:	77 13                	ja     140004330 <__pformat_xldouble+0x420>
   14000431d:	45 85 c9             	test   %r9d,%r9d
   140004320:	75 0e                	jne    140004330 <__pformat_xldouble+0x420>
   140004322:	45 8b 5c 24 10       	mov    0x10(%r12),%r11d
   140004327:	45 85 db             	test   %r11d,%r11d
   14000432a:	7e 0b                	jle    140004337 <__pformat_xldouble+0x427>
   14000432c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004330:	c6 03 2e             	movb   $0x2e,(%rbx)
   140004333:	48 83 c3 01          	add    $0x1,%rbx
   140004337:	8d 56 ff             	lea    -0x1(%rsi),%edx
   14000433a:	49 83 fa 01          	cmp    $0x1,%r10
   14000433e:	74 0e                	je     14000434e <__pformat_xldouble+0x43e>
   140004340:	89 d6                	mov    %edx,%esi
   140004342:	49 d1 ea             	shr    %r10
   140004345:	8d 56 ff             	lea    -0x1(%rsi),%edx
   140004348:	49 83 fa 01          	cmp    $0x1,%r10
   14000434c:	75 f2                	jne    140004340 <__pformat_xldouble+0x430>
   14000434e:	45 31 d2             	xor    %r10d,%r10d
   140004351:	e9 ca fe ff ff       	jmp    140004220 <__pformat_xldouble+0x310>
   140004356:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000435d:	00 00 00 
   140004360:	4d 89 e0             	mov    %r12,%r8
   140004363:	ba 01 00 00 00       	mov    $0x1,%edx
   140004368:	4c 89 e9             	mov    %r13,%rcx
   14000436b:	e8 70 e6 ff ff       	call   1400029e0 <__pformat_wputchars>
   140004370:	e9 77 fd ff ff       	jmp    1400040ec <__pformat_xldouble+0x1dc>
   140004375:	0f 1f 00             	nopl   (%rax)
   140004378:	48 39 fb             	cmp    %rdi,%rbx
   14000437b:	0f 85 37 fc ff ff    	jne    140003fb8 <__pformat_xldouble+0xa8>
   140004381:	e9 14 fc ff ff       	jmp    140003f9a <__pformat_xldouble+0x8a>
   140004386:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000438d:	00 00 00 
   140004390:	4c 89 e2             	mov    %r12,%rdx
   140004393:	b9 2d 00 00 00       	mov    $0x2d,%ecx
   140004398:	e8 e3 e5 ff ff       	call   140002980 <__pformat_putc>
   14000439d:	e9 c9 fc ff ff       	jmp    14000406b <__pformat_xldouble+0x15b>
   1400043a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400043a8:	41 c7 44 24 0c ff ff 	movl   $0xffffffff,0xc(%r12)
   1400043af:	ff ff 
   1400043b1:	e9 9a fc ff ff       	jmp    140004050 <__pformat_xldouble+0x140>
   1400043b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400043bd:	00 00 00 
   1400043c0:	4c 89 e2             	mov    %r12,%rdx
   1400043c3:	b9 2b 00 00 00       	mov    $0x2b,%ecx
   1400043c8:	e8 b3 e5 ff ff       	call   140002980 <__pformat_putc>
   1400043cd:	e9 99 fc ff ff       	jmp    14000406b <__pformat_xldouble+0x15b>
   1400043d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400043d8:	83 c6 01             	add    $0x1,%esi
   1400043db:	e9 c6 fd ff ff       	jmp    1400041a6 <__pformat_xldouble+0x296>
   1400043e0:	4c 89 e2             	mov    %r12,%rdx
   1400043e3:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400043e8:	e8 93 e5 ff ff       	call   140002980 <__pformat_putc>
   1400043ed:	e9 79 fc ff ff       	jmp    14000406b <__pformat_xldouble+0x15b>
   1400043f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400043f8:	41 8d 42 ff          	lea    -0x1(%r10),%eax
   1400043fc:	41 89 44 24 0c       	mov    %eax,0xc(%r12)
   140004401:	45 85 d2             	test   %r10d,%r10d
   140004404:	0f 8e 46 fc ff ff    	jle    140004050 <__pformat_xldouble+0x140>
   14000440a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004410:	4c 89 e2             	mov    %r12,%rdx
   140004413:	b9 20 00 00 00       	mov    $0x20,%ecx
   140004418:	e8 63 e5 ff ff       	call   140002980 <__pformat_putc>
   14000441d:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
   140004422:	8d 50 ff             	lea    -0x1(%rax),%edx
   140004425:	41 89 54 24 0c       	mov    %edx,0xc(%r12)
   14000442a:	85 c0                	test   %eax,%eax
   14000442c:	7f e2                	jg     140004410 <__pformat_xldouble+0x500>
   14000442e:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   140004433:	e9 18 fc ff ff       	jmp    140004050 <__pformat_xldouble+0x140>
   140004438:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000443f:	00 
   140004440:	48 89 f8             	mov    %rdi,%rax
   140004443:	f6 c5 08             	test   $0x8,%ch
   140004446:	0f 84 65 fb ff ff    	je     140003fb1 <__pformat_xldouble+0xa1>
   14000444c:	e9 56 fb ff ff       	jmp    140003fa7 <__pformat_xldouble+0x97>
   140004451:	be 02 c0 ff ff       	mov    $0xffffc002,%esi
   140004456:	e9 6f fe ff ff       	jmp    1400042ca <__pformat_xldouble+0x3ba>
   14000445b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140004460 <__mingw_pformat>:
   140004460:	41 57                	push   %r15
   140004462:	41 56                	push   %r14
   140004464:	41 55                	push   %r13
   140004466:	41 54                	push   %r12
   140004468:	55                   	push   %rbp
   140004469:	57                   	push   %rdi
   14000446a:	56                   	push   %rsi
   14000446b:	53                   	push   %rbx
   14000446c:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
   140004473:	4c 8b a4 24 10 01 00 	mov    0x110(%rsp),%r12
   14000447a:	00 
   14000447b:	89 cf                	mov    %ecx,%edi
   14000447d:	48 89 d5             	mov    %rdx,%rbp
   140004480:	44 89 c3             	mov    %r8d,%ebx
   140004483:	4c 89 ce             	mov    %r9,%rsi
   140004486:	e8 fd 31 00 00       	call   140007688 <_errno>
   14000448b:	0f be 0e             	movsbl (%rsi),%ecx
   14000448e:	31 d2                	xor    %edx,%edx
   140004490:	81 e7 00 60 00 00    	and    $0x6000,%edi
   140004496:	8b 00                	mov    (%rax),%eax
   140004498:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
   14000449f:	00 
   1400044a0:	89 9c 24 98 00 00 00 	mov    %ebx,0x98(%rsp)
   1400044a7:	89 ca                	mov    %ecx,%edx
   1400044a9:	48 8d 5e 01          	lea    0x1(%rsi),%rbx
   1400044ad:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   1400044b1:	48 b8 ff ff ff ff fd 	movabs $0xfffffffdffffffff,%rax
   1400044b8:	ff ff ff 
   1400044bb:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   1400044c2:	00 
   1400044c3:	31 c0                	xor    %eax,%eax
   1400044c5:	48 89 6c 24 70       	mov    %rbp,0x70(%rsp)
   1400044ca:	89 7c 24 78          	mov    %edi,0x78(%rsp)
   1400044ce:	c7 44 24 7c ff ff ff 	movl   $0xffffffff,0x7c(%rsp)
   1400044d5:	ff 
   1400044d6:	66 89 84 24 88 00 00 	mov    %ax,0x88(%rsp)
   1400044dd:	00 
   1400044de:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
   1400044e5:	00 00 00 00 
   1400044e9:	c7 84 24 94 00 00 00 	movl   $0x0,0x94(%rsp)
   1400044f0:	00 00 00 00 
   1400044f4:	c7 84 24 9c 00 00 00 	movl   $0xffffffff,0x9c(%rsp)
   1400044fb:	ff ff ff ff 
   1400044ff:	85 c9                	test   %ecx,%ecx
   140004501:	0f 84 30 01 00 00    	je     140004637 <__mingw_pformat+0x1d7>
   140004507:	4c 8d 2d 12 4e 00 00 	lea    0x4e12(%rip),%r13        # 140009320 <.rdata+0x20>
   14000450e:	eb 5f                	jmp    14000456f <__mingw_pformat+0x10f>
   140004510:	44 8b 44 24 78       	mov    0x78(%rsp),%r8d
   140004515:	41 f7 c0 00 40 00 00 	test   $0x4000,%r8d
   14000451c:	75 10                	jne    14000452e <__mingw_pformat+0xce>
   14000451e:	8b 84 24 94 00 00 00 	mov    0x94(%rsp),%eax
   140004525:	39 84 24 98 00 00 00 	cmp    %eax,0x98(%rsp)
   14000452c:	7e 25                	jle    140004553 <__mingw_pformat+0xf3>
   14000452e:	41 81 e0 00 20 00 00 	and    $0x2000,%r8d
   140004535:	4c 8b 4c 24 70       	mov    0x70(%rsp),%r9
   14000453a:	0f 85 80 00 00 00    	jne    1400045c0 <__mingw_pformat+0x160>
   140004540:	48 63 84 24 94 00 00 	movslq 0x94(%rsp),%rax
   140004547:	00 
   140004548:	41 88 14 01          	mov    %dl,(%r9,%rax,1)
   14000454c:	8b 84 24 94 00 00 00 	mov    0x94(%rsp),%eax
   140004553:	83 c0 01             	add    $0x1,%eax
   140004556:	89 84 24 94 00 00 00 	mov    %eax,0x94(%rsp)
   14000455d:	0f b6 13             	movzbl (%rbx),%edx
   140004560:	48 83 c3 01          	add    $0x1,%rbx
   140004564:	0f be ca             	movsbl %dl,%ecx
   140004567:	85 c9                	test   %ecx,%ecx
   140004569:	0f 84 c1 00 00 00    	je     140004630 <__mingw_pformat+0x1d0>
   14000456f:	83 f9 25             	cmp    $0x25,%ecx
   140004572:	75 9c                	jne    140004510 <__mingw_pformat+0xb0>
   140004574:	0f b6 03             	movzbl (%rbx),%eax
   140004577:	89 7c 24 78          	mov    %edi,0x78(%rsp)
   14000457b:	48 c7 44 24 7c ff ff 	movq   $0xffffffffffffffff,0x7c(%rsp)
   140004582:	ff ff 
   140004584:	84 c0                	test   %al,%al
   140004586:	0f 84 a4 00 00 00    	je     140004630 <__mingw_pformat+0x1d0>
   14000458c:	48 89 de             	mov    %rbx,%rsi
   14000458f:	4c 8d 54 24 7c       	lea    0x7c(%rsp),%r10
   140004594:	45 31 ff             	xor    %r15d,%r15d
   140004597:	45 31 f6             	xor    %r14d,%r14d
   14000459a:	41 bb 03 00 00 00    	mov    $0x3,%r11d
   1400045a0:	8d 50 e0             	lea    -0x20(%rax),%edx
   1400045a3:	48 8d 6e 01          	lea    0x1(%rsi),%rbp
   1400045a7:	0f be c8             	movsbl %al,%ecx
   1400045aa:	80 fa 5a             	cmp    $0x5a,%dl
   1400045ad:	77 29                	ja     1400045d8 <__mingw_pformat+0x178>
   1400045af:	0f b6 d2             	movzbl %dl,%edx
   1400045b2:	49 63 54 95 00       	movslq 0x0(%r13,%rdx,4),%rdx
   1400045b7:	4c 01 ea             	add    %r13,%rdx
   1400045ba:	ff e2                	jmp    *%rdx
   1400045bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400045c0:	4c 89 ca             	mov    %r9,%rdx
   1400045c3:	e8 88 30 00 00       	call   140007650 <fputc>
   1400045c8:	8b 84 24 94 00 00 00 	mov    0x94(%rsp),%eax
   1400045cf:	e9 7f ff ff ff       	jmp    140004553 <__mingw_pformat+0xf3>
   1400045d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400045d8:	83 e8 30             	sub    $0x30,%eax
   1400045db:	3c 09                	cmp    $0x9,%al
   1400045dd:	0f 87 a5 06 00 00    	ja     140004c88 <__mingw_pformat+0x828>
   1400045e3:	41 83 fe 03          	cmp    $0x3,%r14d
   1400045e7:	0f 87 9b 06 00 00    	ja     140004c88 <__mingw_pformat+0x828>
   1400045ed:	45 85 f6             	test   %r14d,%r14d
   1400045f0:	0f 85 66 06 00 00    	jne    140004c5c <__mingw_pformat+0x7fc>
   1400045f6:	41 be 01 00 00 00    	mov    $0x1,%r14d
   1400045fc:	4d 85 d2             	test   %r10,%r10
   1400045ff:	74 1f                	je     140004620 <__mingw_pformat+0x1c0>
   140004601:	41 8b 02             	mov    (%r10),%eax
   140004604:	85 c0                	test   %eax,%eax
   140004606:	0f 88 c5 06 00 00    	js     140004cd1 <__mingw_pformat+0x871>
   14000460c:	8d 04 80             	lea    (%rax,%rax,4),%eax
   14000460f:	8d 44 41 d0          	lea    -0x30(%rcx,%rax,2),%eax
   140004613:	41 89 02             	mov    %eax,(%r10)
   140004616:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000461d:	00 00 00 
   140004620:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004624:	48 89 ee             	mov    %rbp,%rsi
   140004627:	84 c0                	test   %al,%al
   140004629:	0f 85 71 ff ff ff    	jne    1400045a0 <__mingw_pformat+0x140>
   14000462f:	90                   	nop
   140004630:	8b 8c 24 94 00 00 00 	mov    0x94(%rsp),%ecx
   140004637:	89 c8                	mov    %ecx,%eax
   140004639:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
   140004640:	5b                   	pop    %rbx
   140004641:	5e                   	pop    %rsi
   140004642:	5f                   	pop    %rdi
   140004643:	5d                   	pop    %rbp
   140004644:	41 5c                	pop    %r12
   140004646:	41 5d                	pop    %r13
   140004648:	41 5e                	pop    %r14
   14000464a:	41 5f                	pop    %r15
   14000464c:	c3                   	ret    
   14000464d:	0f 1f 00             	nopl   (%rax)
   140004650:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   140004655:	41 83 ff 03          	cmp    $0x3,%r15d
   140004659:	0f 84 cb 06 00 00    	je     140004d2a <__mingw_pformat+0x8ca>
   14000465f:	45 8b 0c 24          	mov    (%r12),%r9d
   140004663:	41 83 ff 02          	cmp    $0x2,%r15d
   140004667:	74 14                	je     14000467d <__mingw_pformat+0x21d>
   140004669:	41 83 ff 01          	cmp    $0x1,%r15d
   14000466d:	0f 84 42 06 00 00    	je     140004cb5 <__mingw_pformat+0x855>
   140004673:	41 83 ff 05          	cmp    $0x5,%r15d
   140004677:	75 04                	jne    14000467d <__mingw_pformat+0x21d>
   140004679:	45 0f b6 c9          	movzbl %r9b,%r9d
   14000467d:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
   140004682:	83 f9 75             	cmp    $0x75,%ecx
   140004685:	0f 84 87 06 00 00    	je     140004d12 <__mingw_pformat+0x8b2>
   14000468b:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004690:	4c 89 ca             	mov    %r9,%rdx
   140004693:	49 89 dc             	mov    %rbx,%r12
   140004696:	48 89 eb             	mov    %rbp,%rbx
   140004699:	e8 e2 e6 ff ff       	call   140002d80 <__pformat_xint.isra.0>
   14000469e:	e9 ba fe ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   1400046a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400046a8:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400046ac:	41 bf 03 00 00 00    	mov    $0x3,%r15d
   1400046b2:	48 89 ee             	mov    %rbp,%rsi
   1400046b5:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400046bb:	e9 67 ff ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   1400046c0:	81 4c 24 78 80 00 00 	orl    $0x80,0x78(%rsp)
   1400046c7:	00 
   1400046c8:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   1400046cd:	41 83 ff 03          	cmp    $0x3,%r15d
   1400046d1:	0f 84 61 06 00 00    	je     140004d38 <__mingw_pformat+0x8d8>
   1400046d7:	49 63 0c 24          	movslq (%r12),%rcx
   1400046db:	41 83 ff 02          	cmp    $0x2,%r15d
   1400046df:	74 14                	je     1400046f5 <__mingw_pformat+0x295>
   1400046e1:	41 83 ff 01          	cmp    $0x1,%r15d
   1400046e5:	0f 84 d8 05 00 00    	je     140004cc3 <__mingw_pformat+0x863>
   1400046eb:	41 83 ff 05          	cmp    $0x5,%r15d
   1400046ef:	75 04                	jne    1400046f5 <__mingw_pformat+0x295>
   1400046f1:	48 0f be c9          	movsbq %cl,%rcx
   1400046f5:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
   1400046fa:	48 89 c8             	mov    %rcx,%rax
   1400046fd:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004702:	49 89 dc             	mov    %rbx,%r12
   140004705:	48 89 eb             	mov    %rbp,%rbx
   140004708:	48 c1 f8 3f          	sar    $0x3f,%rax
   14000470c:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   140004711:	e8 7a eb ff ff       	call   140003290 <__pformat_int.isra.0>
   140004716:	e9 42 fe ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   14000471b:	41 83 ef 02          	sub    $0x2,%r15d
   14000471f:	49 8b 0c 24          	mov    (%r12),%rcx
   140004723:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   140004728:	41 83 ff 01          	cmp    $0x1,%r15d
   14000472c:	0f 86 d9 04 00 00    	jbe    140004c0b <__mingw_pformat+0x7ab>
   140004732:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004737:	49 89 dc             	mov    %rbx,%r12
   14000473a:	48 89 eb             	mov    %rbp,%rbx
   14000473d:	e8 3e e5 ff ff       	call   140002c80 <__pformat_puts>
   140004742:	e9 16 fe ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004747:	41 83 ef 02          	sub    $0x2,%r15d
   14000474b:	41 8b 04 24          	mov    (%r12),%eax
   14000474f:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   140004754:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   14000475b:	ff ff ff ff 
   14000475f:	41 83 ff 01          	cmp    $0x1,%r15d
   140004763:	0f 86 cd 03 00 00    	jbe    140004b36 <__mingw_pformat+0x6d6>
   140004769:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   14000476e:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004773:	88 44 24 60          	mov    %al,0x60(%rsp)
   140004777:	49 89 dc             	mov    %rbx,%r12
   14000477a:	ba 01 00 00 00       	mov    $0x1,%edx
   14000477f:	48 89 eb             	mov    %rbp,%rbx
   140004782:	e8 c9 e3 ff ff       	call   140002b50 <__pformat_putchars>
   140004787:	e9 d1 fd ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   14000478c:	49 8b 14 24          	mov    (%r12),%rdx
   140004790:	48 63 84 24 94 00 00 	movslq 0x94(%rsp),%rax
   140004797:	00 
   140004798:	49 83 c4 08          	add    $0x8,%r12
   14000479c:	41 83 ff 05          	cmp    $0x5,%r15d
   1400047a0:	0f 84 62 05 00 00    	je     140004d08 <__mingw_pformat+0x8a8>
   1400047a6:	41 83 ff 01          	cmp    $0x1,%r15d
   1400047aa:	0f 84 f8 05 00 00    	je     140004da8 <__mingw_pformat+0x948>
   1400047b0:	41 83 ff 02          	cmp    $0x2,%r15d
   1400047b4:	74 0a                	je     1400047c0 <__mingw_pformat+0x360>
   1400047b6:	41 83 ff 03          	cmp    $0x3,%r15d
   1400047ba:	0f 84 22 06 00 00    	je     140004de2 <__mingw_pformat+0x982>
   1400047c0:	89 02                	mov    %eax,(%rdx)
   1400047c2:	48 89 eb             	mov    %rbp,%rbx
   1400047c5:	e9 93 fd ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   1400047ca:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400047ce:	49 8b 14 24          	mov    (%r12),%rdx
   1400047d2:	49 83 c4 08          	add    $0x8,%r12
   1400047d6:	83 c8 20             	or     $0x20,%eax
   1400047d9:	89 44 24 78          	mov    %eax,0x78(%rsp)
   1400047dd:	a8 04                	test   $0x4,%al
   1400047df:	0f 84 1d 03 00 00    	je     140004b02 <__mingw_pformat+0x6a2>
   1400047e5:	db 2a                	fldt   (%rdx)
   1400047e7:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   1400047ec:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400047f1:	48 89 eb             	mov    %rbp,%rbx
   1400047f4:	db 7c 24 40          	fstpt  0x40(%rsp)
   1400047f8:	e8 13 f7 ff ff       	call   140003f10 <__pformat_xldouble>
   1400047fd:	e9 5b fd ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004802:	45 85 f6             	test   %r14d,%r14d
   140004805:	75 0a                	jne    140004811 <__mingw_pformat+0x3b1>
   140004807:	39 7c 24 78          	cmp    %edi,0x78(%rsp)
   14000480b:	0f 84 8b 04 00 00    	je     140004c9c <__mingw_pformat+0x83c>
   140004811:	49 8b 14 24          	mov    (%r12),%rdx
   140004815:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   14000481a:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   14000481f:	b9 78 00 00 00       	mov    $0x78,%ecx
   140004824:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
   14000482b:	00 00 
   14000482d:	49 89 dc             	mov    %rbx,%r12
   140004830:	48 89 eb             	mov    %rbp,%rbx
   140004833:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
   140004838:	e8 43 e5 ff ff       	call   140002d80 <__pformat_xint.isra.0>
   14000483d:	e9 1b fd ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004842:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004846:	3c 36                	cmp    $0x36,%al
   140004848:	0f 84 37 05 00 00    	je     140004d85 <__mingw_pformat+0x925>
   14000484e:	3c 33                	cmp    $0x33,%al
   140004850:	0f 84 28 04 00 00    	je     140004c7e <__mingw_pformat+0x81e>
   140004856:	48 89 ee             	mov    %rbp,%rsi
   140004859:	41 bf 03 00 00 00    	mov    $0x3,%r15d
   14000485f:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004865:	e9 bd fd ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   14000486a:	8b 44 24 78          	mov    0x78(%rsp),%eax
   14000486e:	49 8b 14 24          	mov    (%r12),%rdx
   140004872:	49 83 c4 08          	add    $0x8,%r12
   140004876:	83 c8 20             	or     $0x20,%eax
   140004879:	89 44 24 78          	mov    %eax,0x78(%rsp)
   14000487d:	a8 04                	test   $0x4,%al
   14000487f:	0f 84 ed 02 00 00    	je     140004b72 <__mingw_pformat+0x712>
   140004885:	db 2a                	fldt   (%rdx)
   140004887:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   14000488c:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004891:	48 89 eb             	mov    %rbp,%rbx
   140004894:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004898:	e8 63 f3 ff ff       	call   140003c00 <__pformat_efloat>
   14000489d:	e9 bb fc ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   1400048a2:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400048a6:	3c 68                	cmp    $0x68,%al
   1400048a8:	0f 84 be 04 00 00    	je     140004d6c <__mingw_pformat+0x90c>
   1400048ae:	48 89 ee             	mov    %rbp,%rsi
   1400048b1:	41 bf 01 00 00 00    	mov    $0x1,%r15d
   1400048b7:	41 be 04 00 00 00    	mov    $0x4,%r14d
   1400048bd:	e9 65 fd ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   1400048c2:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400048c6:	49 8b 14 24          	mov    (%r12),%rdx
   1400048ca:	49 83 c4 08          	add    $0x8,%r12
   1400048ce:	83 c8 20             	or     $0x20,%eax
   1400048d1:	89 44 24 78          	mov    %eax,0x78(%rsp)
   1400048d5:	a8 04                	test   $0x4,%al
   1400048d7:	0f 84 cd 02 00 00    	je     140004baa <__mingw_pformat+0x74a>
   1400048dd:	db 2a                	fldt   (%rdx)
   1400048df:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   1400048e4:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400048e9:	48 89 eb             	mov    %rbp,%rbx
   1400048ec:	db 7c 24 40          	fstpt  0x40(%rsp)
   1400048f0:	e8 bb f3 ff ff       	call   140003cb0 <__pformat_float>
   1400048f5:	e9 63 fc ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   1400048fa:	8b 44 24 78          	mov    0x78(%rsp),%eax
   1400048fe:	49 8b 14 24          	mov    (%r12),%rdx
   140004902:	49 83 c4 08          	add    $0x8,%r12
   140004906:	83 c8 20             	or     $0x20,%eax
   140004909:	89 44 24 78          	mov    %eax,0x78(%rsp)
   14000490d:	a8 04                	test   $0x4,%al
   14000490f:	0f 84 cd 02 00 00    	je     140004be2 <__mingw_pformat+0x782>
   140004915:	db 2a                	fldt   (%rdx)
   140004917:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   14000491c:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004921:	48 89 eb             	mov    %rbp,%rbx
   140004924:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004928:	e8 73 f4 ff ff       	call   140003da0 <__pformat_gfloat>
   14000492d:	e9 2b fc ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004932:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004936:	83 4c 24 78 04       	orl    $0x4,0x78(%rsp)
   14000493b:	48 89 ee             	mov    %rbp,%rsi
   14000493e:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004944:	e9 de fc ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004949:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   14000494d:	3c 6c                	cmp    $0x6c,%al
   14000494f:	0f 84 fe 03 00 00    	je     140004d53 <__mingw_pformat+0x8f3>
   140004955:	48 89 ee             	mov    %rbp,%rsi
   140004958:	41 bf 02 00 00 00    	mov    $0x2,%r15d
   14000495e:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004964:	e9 be fc ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004969:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
   14000496d:	48 89 eb             	mov    %rbp,%rbx
   140004970:	e8 9b 2c 00 00       	call   140007610 <strerror>
   140004975:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   14000497a:	48 89 c1             	mov    %rax,%rcx
   14000497d:	e8 fe e2 ff ff       	call   140002c80 <__pformat_puts>
   140004982:	e9 d6 fb ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004987:	45 85 f6             	test   %r14d,%r14d
   14000498a:	0f 85 90 fc ff ff    	jne    140004620 <__mingw_pformat+0x1c0>
   140004990:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004994:	83 4c 24 78 40       	orl    $0x40,0x78(%rsp)
   140004999:	48 89 ee             	mov    %rbp,%rsi
   14000499c:	e9 86 fc ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   1400049a1:	45 85 f6             	test   %r14d,%r14d
   1400049a4:	0f 85 76 fc ff ff    	jne    140004620 <__mingw_pformat+0x1c0>
   1400049aa:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   1400049ae:	81 4c 24 78 00 08 00 	orl    $0x800,0x78(%rsp)
   1400049b5:	00 
   1400049b6:	48 89 ee             	mov    %rbp,%rsi
   1400049b9:	e9 69 fc ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   1400049be:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   1400049c3:	b9 25 00 00 00       	mov    $0x25,%ecx
   1400049c8:	48 89 eb             	mov    %rbp,%rbx
   1400049cb:	e8 b0 df ff ff       	call   140002980 <__pformat_putc>
   1400049d0:	e9 88 fb ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   1400049d5:	45 85 f6             	test   %r14d,%r14d
   1400049d8:	0f 85 42 fc ff ff    	jne    140004620 <__mingw_pformat+0x1c0>
   1400049de:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
   1400049e3:	4c 89 54 24 38       	mov    %r10,0x38(%rsp)
   1400049e8:	81 4c 24 78 00 10 00 	orl    $0x1000,0x78(%rsp)
   1400049ef:	00 
   1400049f0:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
   1400049f5:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
   1400049fc:	00 
   1400049fd:	e8 36 2c 00 00       	call   140007638 <localeconv>
   140004a02:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
   140004a07:	48 8d 4c 24 5e       	lea    0x5e(%rsp),%rcx
   140004a0c:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   140004a12:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140004a16:	e8 35 2e 00 00       	call   140007850 <mbrtowc>
   140004a1b:	4c 8b 54 24 38       	mov    0x38(%rsp),%r10
   140004a20:	41 bb 03 00 00 00    	mov    $0x3,%r11d
   140004a26:	85 c0                	test   %eax,%eax
   140004a28:	7e 0d                	jle    140004a37 <__mingw_pformat+0x5d7>
   140004a2a:	0f b7 54 24 5e       	movzwl 0x5e(%rsp),%edx
   140004a2f:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
   140004a36:	00 
   140004a37:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
   140004a3e:	e9 dd fb ff ff       	jmp    140004620 <__mingw_pformat+0x1c0>
   140004a43:	4d 85 d2             	test   %r10,%r10
   140004a46:	74 77                	je     140004abf <__mingw_pformat+0x65f>
   140004a48:	41 f7 c6 fd ff ff ff 	test   $0xfffffffd,%r14d
   140004a4f:	0f 85 14 02 00 00    	jne    140004c69 <__mingw_pformat+0x809>
   140004a55:	41 8b 04 24          	mov    (%r12),%eax
   140004a59:	49 8d 54 24 08       	lea    0x8(%r12),%rdx
   140004a5e:	41 89 02             	mov    %eax,(%r10)
   140004a61:	85 c0                	test   %eax,%eax
   140004a63:	0f 88 4a 03 00 00    	js     140004db3 <__mingw_pformat+0x953>
   140004a69:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004a6d:	49 89 d4             	mov    %rdx,%r12
   140004a70:	48 89 ee             	mov    %rbp,%rsi
   140004a73:	45 31 d2             	xor    %r10d,%r10d
   140004a76:	e9 ac fb ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004a7b:	45 85 f6             	test   %r14d,%r14d
   140004a7e:	0f 85 9c fb ff ff    	jne    140004620 <__mingw_pformat+0x1c0>
   140004a84:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004a88:	81 4c 24 78 00 01 00 	orl    $0x100,0x78(%rsp)
   140004a8f:	00 
   140004a90:	48 89 ee             	mov    %rbp,%rsi
   140004a93:	e9 8f fb ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004a98:	45 85 f6             	test   %r14d,%r14d
   140004a9b:	0f 85 7f fb ff ff    	jne    140004620 <__mingw_pformat+0x1c0>
   140004aa1:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004aa5:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
   140004aac:	00 
   140004aad:	48 89 ee             	mov    %rbp,%rsi
   140004ab0:	e9 72 fb ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004ab5:	41 83 fe 01          	cmp    $0x1,%r14d
   140004ab9:	0f 86 24 02 00 00    	jbe    140004ce3 <__mingw_pformat+0x883>
   140004abf:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004ac3:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004ac9:	48 89 ee             	mov    %rbp,%rsi
   140004acc:	e9 56 fb ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004ad1:	45 85 f6             	test   %r14d,%r14d
   140004ad4:	0f 85 77 01 00 00    	jne    140004c51 <__mingw_pformat+0x7f1>
   140004ada:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004ade:	81 4c 24 78 00 02 00 	orl    $0x200,0x78(%rsp)
   140004ae5:	00 
   140004ae6:	48 89 ee             	mov    %rbp,%rsi
   140004ae9:	e9 39 fb ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004aee:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004af2:	49 8b 14 24          	mov    (%r12),%rdx
   140004af6:	49 83 c4 08          	add    $0x8,%r12
   140004afa:	a8 04                	test   $0x4,%al
   140004afc:	0f 85 e3 fc ff ff    	jne    1400047e5 <__mingw_pformat+0x385>
   140004b02:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140004b07:	dd 44 24 30          	fldl   0x30(%rsp)
   140004b0b:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004b10:	48 89 eb             	mov    %rbp,%rbx
   140004b13:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004b18:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004b1c:	e8 ef f3 ff ff       	call   140003f10 <__pformat_xldouble>
   140004b21:	e9 37 fa ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004b26:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   140004b2d:	ff ff ff ff 
   140004b31:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   140004b36:	41 8b 04 24          	mov    (%r12),%eax
   140004b3a:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   140004b3f:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004b44:	49 89 dc             	mov    %rbx,%r12
   140004b47:	ba 01 00 00 00       	mov    $0x1,%edx
   140004b4c:	48 89 eb             	mov    %rbp,%rbx
   140004b4f:	66 89 44 24 60       	mov    %ax,0x60(%rsp)
   140004b54:	e8 87 de ff ff       	call   1400029e0 <__pformat_wputchars>
   140004b59:	e9 ff f9 ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004b5e:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004b62:	49 8b 14 24          	mov    (%r12),%rdx
   140004b66:	49 83 c4 08          	add    $0x8,%r12
   140004b6a:	a8 04                	test   $0x4,%al
   140004b6c:	0f 85 13 fd ff ff    	jne    140004885 <__mingw_pformat+0x425>
   140004b72:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140004b77:	dd 44 24 30          	fldl   0x30(%rsp)
   140004b7b:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004b80:	48 89 eb             	mov    %rbp,%rbx
   140004b83:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004b88:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004b8c:	e8 6f f0 ff ff       	call   140003c00 <__pformat_efloat>
   140004b91:	e9 c7 f9 ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004b96:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004b9a:	49 8b 14 24          	mov    (%r12),%rdx
   140004b9e:	49 83 c4 08          	add    $0x8,%r12
   140004ba2:	a8 04                	test   $0x4,%al
   140004ba4:	0f 85 33 fd ff ff    	jne    1400048dd <__mingw_pformat+0x47d>
   140004baa:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140004baf:	dd 44 24 30          	fldl   0x30(%rsp)
   140004bb3:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004bb8:	48 89 eb             	mov    %rbp,%rbx
   140004bbb:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004bc0:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004bc4:	e8 e7 f0 ff ff       	call   140003cb0 <__pformat_float>
   140004bc9:	e9 8f f9 ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004bce:	8b 44 24 78          	mov    0x78(%rsp),%eax
   140004bd2:	49 8b 14 24          	mov    (%r12),%rdx
   140004bd6:	49 83 c4 08          	add    $0x8,%r12
   140004bda:	a8 04                	test   $0x4,%al
   140004bdc:	0f 85 33 fd ff ff    	jne    140004915 <__mingw_pformat+0x4b5>
   140004be2:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140004be7:	dd 44 24 30          	fldl   0x30(%rsp)
   140004beb:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004bf0:	48 89 eb             	mov    %rbp,%rbx
   140004bf3:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
   140004bf8:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004bfc:	e8 9f f1 ff ff       	call   140003da0 <__pformat_gfloat>
   140004c01:	e9 57 f9 ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004c06:	49 8d 5c 24 08       	lea    0x8(%r12),%rbx
   140004c0b:	4d 8b 24 24          	mov    (%r12),%r12
   140004c0f:	48 8d 05 fa 46 00 00 	lea    0x46fa(%rip),%rax        # 140009310 <.rdata+0x10>
   140004c16:	4d 85 e4             	test   %r12,%r12
   140004c19:	4c 0f 44 e0          	cmove  %rax,%r12
   140004c1d:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
   140004c24:	85 c0                	test   %eax,%eax
   140004c26:	0f 88 1a 01 00 00    	js     140004d46 <__mingw_pformat+0x8e6>
   140004c2c:	48 63 d0             	movslq %eax,%rdx
   140004c2f:	4c 89 e1             	mov    %r12,%rcx
   140004c32:	e8 89 29 00 00       	call   1400075c0 <wcsnlen>
   140004c37:	4c 89 e1             	mov    %r12,%rcx
   140004c3a:	4c 8d 44 24 70       	lea    0x70(%rsp),%r8
   140004c3f:	89 c2                	mov    %eax,%edx
   140004c41:	49 89 dc             	mov    %rbx,%r12
   140004c44:	e8 97 dd ff ff       	call   1400029e0 <__pformat_wputchars>
   140004c49:	48 89 eb             	mov    %rbp,%rbx
   140004c4c:	e9 0c f9 ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004c51:	41 83 fe 03          	cmp    $0x3,%r14d
   140004c55:	77 31                	ja     140004c88 <__mingw_pformat+0x828>
   140004c57:	b9 30 00 00 00       	mov    $0x30,%ecx
   140004c5c:	41 83 fe 02          	cmp    $0x2,%r14d
   140004c60:	45 0f 44 f3          	cmove  %r11d,%r14d
   140004c64:	e9 93 f9 ff ff       	jmp    1400045fc <__mingw_pformat+0x19c>
   140004c69:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004c6d:	45 31 d2             	xor    %r10d,%r10d
   140004c70:	48 89 ee             	mov    %rbp,%rsi
   140004c73:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004c79:	e9 a9 f9 ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004c7e:	80 7e 02 32          	cmpb   $0x32,0x2(%rsi)
   140004c82:	0f 84 41 01 00 00    	je     140004dc9 <__mingw_pformat+0x969>
   140004c88:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004c8d:	b9 25 00 00 00       	mov    $0x25,%ecx
   140004c92:	e8 e9 dc ff ff       	call   140002980 <__pformat_putc>
   140004c97:	e9 c1 f8 ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004c9c:	c7 84 24 80 00 00 00 	movl   $0x10,0x80(%rsp)
   140004ca3:	10 00 00 00 
   140004ca7:	89 f8                	mov    %edi,%eax
   140004ca9:	80 cc 02             	or     $0x2,%ah
   140004cac:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140004cb0:	e9 5c fb ff ff       	jmp    140004811 <__mingw_pformat+0x3b1>
   140004cb5:	45 0f b7 c9          	movzwl %r9w,%r9d
   140004cb9:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
   140004cbe:	e9 bf f9 ff ff       	jmp    140004682 <__mingw_pformat+0x222>
   140004cc3:	48 0f bf c9          	movswq %cx,%rcx
   140004cc7:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
   140004ccc:	e9 29 fa ff ff       	jmp    1400046fa <__mingw_pformat+0x29a>
   140004cd1:	83 e9 30             	sub    $0x30,%ecx
   140004cd4:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004cd8:	48 89 ee             	mov    %rbp,%rsi
   140004cdb:	41 89 0a             	mov    %ecx,(%r10)
   140004cde:	e9 44 f9 ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004ce3:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004ce7:	41 be 02 00 00 00    	mov    $0x2,%r14d
   140004ced:	48 89 ee             	mov    %rbp,%rsi
   140004cf0:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
   140004cf7:	00 00 00 00 
   140004cfb:	4c 8d 94 24 80 00 00 	lea    0x80(%rsp),%r10
   140004d02:	00 
   140004d03:	e9 1f f9 ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004d08:	88 02                	mov    %al,(%rdx)
   140004d0a:	48 89 eb             	mov    %rbp,%rbx
   140004d0d:	e9 4b f8 ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004d12:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
   140004d17:	4c 89 c9             	mov    %r9,%rcx
   140004d1a:	49 89 dc             	mov    %rbx,%r12
   140004d1d:	48 89 eb             	mov    %rbp,%rbx
   140004d20:	e8 6b e5 ff ff       	call   140003290 <__pformat_int.isra.0>
   140004d25:	e9 33 f8 ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004d2a:	4d 8b 0c 24          	mov    (%r12),%r9
   140004d2e:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
   140004d33:	e9 4a f9 ff ff       	jmp    140004682 <__mingw_pformat+0x222>
   140004d38:	49 8b 0c 24          	mov    (%r12),%rcx
   140004d3c:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
   140004d41:	e9 b4 f9 ff ff       	jmp    1400046fa <__mingw_pformat+0x29a>
   140004d46:	4c 89 e1             	mov    %r12,%rcx
   140004d49:	e8 a2 28 00 00       	call   1400075f0 <wcslen>
   140004d4e:	e9 e4 fe ff ff       	jmp    140004c37 <__mingw_pformat+0x7d7>
   140004d53:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
   140004d57:	41 bf 03 00 00 00    	mov    $0x3,%r15d
   140004d5d:	48 83 c6 02          	add    $0x2,%rsi
   140004d61:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004d67:	e9 bb f8 ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004d6c:	0f b6 46 02          	movzbl 0x2(%rsi),%eax
   140004d70:	41 bf 05 00 00 00    	mov    $0x5,%r15d
   140004d76:	48 83 c6 02          	add    $0x2,%rsi
   140004d7a:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004d80:	e9 a2 f8 ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004d85:	80 7e 02 34          	cmpb   $0x34,0x2(%rsi)
   140004d89:	0f 85 f9 fe ff ff    	jne    140004c88 <__mingw_pformat+0x828>
   140004d8f:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
   140004d93:	41 bf 03 00 00 00    	mov    $0x3,%r15d
   140004d99:	48 83 c6 03          	add    $0x3,%rsi
   140004d9d:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004da3:	e9 7f f8 ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004da8:	66 89 02             	mov    %ax,(%rdx)
   140004dab:	48 89 eb             	mov    %rbp,%rbx
   140004dae:	e9 aa f7 ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004db3:	45 85 f6             	test   %r14d,%r14d
   140004db6:	75 35                	jne    140004ded <__mingw_pformat+0x98d>
   140004db8:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
   140004dbf:	00 
   140004dc0:	f7 5c 24 7c          	negl   0x7c(%rsp)
   140004dc4:	e9 a0 fc ff ff       	jmp    140004a69 <__mingw_pformat+0x609>
   140004dc9:	0f b6 46 03          	movzbl 0x3(%rsi),%eax
   140004dcd:	41 bf 02 00 00 00    	mov    $0x2,%r15d
   140004dd3:	48 83 c6 03          	add    $0x3,%rsi
   140004dd7:	41 be 04 00 00 00    	mov    $0x4,%r14d
   140004ddd:	e9 45 f8 ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>
   140004de2:	48 89 02             	mov    %rax,(%rdx)
   140004de5:	48 89 eb             	mov    %rbp,%rbx
   140004de8:	e9 70 f7 ff ff       	jmp    14000455d <__mingw_pformat+0xfd>
   140004ded:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
   140004df1:	49 89 d4             	mov    %rdx,%r12
   140004df4:	48 89 ee             	mov    %rbp,%rsi
   140004df7:	45 31 d2             	xor    %r10d,%r10d
   140004dfa:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
   140004e01:	ff ff ff ff 
   140004e05:	41 be 02 00 00 00    	mov    $0x2,%r14d
   140004e0b:	e9 17 f8 ff ff       	jmp    140004627 <__mingw_pformat+0x1c7>

0000000140004e10 <__rv_alloc_D2A>:
   140004e10:	53                   	push   %rbx
   140004e11:	48 83 ec 20          	sub    $0x20,%rsp
   140004e15:	31 db                	xor    %ebx,%ebx
   140004e17:	83 f9 1b             	cmp    $0x1b,%ecx
   140004e1a:	7e 18                	jle    140004e34 <__rv_alloc_D2A+0x24>
   140004e1c:	b8 04 00 00 00       	mov    $0x4,%eax
   140004e21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004e28:	01 c0                	add    %eax,%eax
   140004e2a:	83 c3 01             	add    $0x1,%ebx
   140004e2d:	8d 50 17             	lea    0x17(%rax),%edx
   140004e30:	39 ca                	cmp    %ecx,%edx
   140004e32:	7c f4                	jl     140004e28 <__rv_alloc_D2A+0x18>
   140004e34:	89 d9                	mov    %ebx,%ecx
   140004e36:	e8 85 1b 00 00       	call   1400069c0 <__Balloc_D2A>
   140004e3b:	89 18                	mov    %ebx,(%rax)
   140004e3d:	48 83 c0 04          	add    $0x4,%rax
   140004e41:	48 83 c4 20          	add    $0x20,%rsp
   140004e45:	5b                   	pop    %rbx
   140004e46:	c3                   	ret    
   140004e47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004e4e:	00 00 

0000000140004e50 <__nrv_alloc_D2A>:
   140004e50:	57                   	push   %rdi
   140004e51:	56                   	push   %rsi
   140004e52:	53                   	push   %rbx
   140004e53:	48 83 ec 20          	sub    $0x20,%rsp
   140004e57:	48 89 ce             	mov    %rcx,%rsi
   140004e5a:	48 89 d7             	mov    %rdx,%rdi
   140004e5d:	41 83 f8 1b          	cmp    $0x1b,%r8d
   140004e61:	7e 65                	jle    140004ec8 <__nrv_alloc_D2A+0x78>
   140004e63:	b8 04 00 00 00       	mov    $0x4,%eax
   140004e68:	31 db                	xor    %ebx,%ebx
   140004e6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004e70:	01 c0                	add    %eax,%eax
   140004e72:	83 c3 01             	add    $0x1,%ebx
   140004e75:	8d 50 17             	lea    0x17(%rax),%edx
   140004e78:	41 39 d0             	cmp    %edx,%r8d
   140004e7b:	7f f3                	jg     140004e70 <__nrv_alloc_D2A+0x20>
   140004e7d:	89 d9                	mov    %ebx,%ecx
   140004e7f:	e8 3c 1b 00 00       	call   1400069c0 <__Balloc_D2A>
   140004e84:	48 8d 56 01          	lea    0x1(%rsi),%rdx
   140004e88:	89 18                	mov    %ebx,(%rax)
   140004e8a:	0f b6 0e             	movzbl (%rsi),%ecx
   140004e8d:	4c 8d 40 04          	lea    0x4(%rax),%r8
   140004e91:	88 48 04             	mov    %cl,0x4(%rax)
   140004e94:	4c 89 c0             	mov    %r8,%rax
   140004e97:	84 c9                	test   %cl,%cl
   140004e99:	74 16                	je     140004eb1 <__nrv_alloc_D2A+0x61>
   140004e9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004ea0:	0f b6 0a             	movzbl (%rdx),%ecx
   140004ea3:	48 83 c0 01          	add    $0x1,%rax
   140004ea7:	48 83 c2 01          	add    $0x1,%rdx
   140004eab:	88 08                	mov    %cl,(%rax)
   140004ead:	84 c9                	test   %cl,%cl
   140004eaf:	75 ef                	jne    140004ea0 <__nrv_alloc_D2A+0x50>
   140004eb1:	48 85 ff             	test   %rdi,%rdi
   140004eb4:	74 03                	je     140004eb9 <__nrv_alloc_D2A+0x69>
   140004eb6:	48 89 07             	mov    %rax,(%rdi)
   140004eb9:	4c 89 c0             	mov    %r8,%rax
   140004ebc:	48 83 c4 20          	add    $0x20,%rsp
   140004ec0:	5b                   	pop    %rbx
   140004ec1:	5e                   	pop    %rsi
   140004ec2:	5f                   	pop    %rdi
   140004ec3:	c3                   	ret    
   140004ec4:	0f 1f 40 00          	nopl   0x0(%rax)
   140004ec8:	31 db                	xor    %ebx,%ebx
   140004eca:	eb b1                	jmp    140004e7d <__nrv_alloc_D2A+0x2d>
   140004ecc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004ed0 <__freedtoa>:
   140004ed0:	ba 01 00 00 00       	mov    $0x1,%edx
   140004ed5:	48 89 c8             	mov    %rcx,%rax
   140004ed8:	8b 49 fc             	mov    -0x4(%rcx),%ecx
   140004edb:	d3 e2                	shl    %cl,%edx
   140004edd:	89 48 04             	mov    %ecx,0x4(%rax)
   140004ee0:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
   140004ee4:	89 50 08             	mov    %edx,0x8(%rax)
   140004ee7:	e9 d4 1b 00 00       	jmp    140006ac0 <__Bfree_D2A>
   140004eec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004ef0 <__quorem_D2A>:
   140004ef0:	41 57                	push   %r15
   140004ef2:	41 56                	push   %r14
   140004ef4:	41 55                	push   %r13
   140004ef6:	41 54                	push   %r12
   140004ef8:	55                   	push   %rbp
   140004ef9:	57                   	push   %rdi
   140004efa:	56                   	push   %rsi
   140004efb:	53                   	push   %rbx
   140004efc:	48 83 ec 38          	sub    $0x38,%rsp
   140004f00:	31 c0                	xor    %eax,%eax
   140004f02:	8b 72 14             	mov    0x14(%rdx),%esi
   140004f05:	49 89 cc             	mov    %rcx,%r12
   140004f08:	49 89 d3             	mov    %rdx,%r11
   140004f0b:	39 71 14             	cmp    %esi,0x14(%rcx)
   140004f0e:	0f 8c e4 00 00 00    	jl     140004ff8 <__quorem_D2A+0x108>
   140004f14:	83 ee 01             	sub    $0x1,%esi
   140004f17:	48 8d 5a 18          	lea    0x18(%rdx),%rbx
   140004f1b:	48 8d 69 18          	lea    0x18(%rcx),%rbp
   140004f1f:	31 d2                	xor    %edx,%edx
   140004f21:	4c 63 d6             	movslq %esi,%r10
   140004f24:	49 c1 e2 02          	shl    $0x2,%r10
   140004f28:	4a 8d 3c 13          	lea    (%rbx,%r10,1),%rdi
   140004f2c:	49 01 ea             	add    %rbp,%r10
   140004f2f:	8b 07                	mov    (%rdi),%eax
   140004f31:	45 8b 02             	mov    (%r10),%r8d
   140004f34:	8d 48 01             	lea    0x1(%rax),%ecx
   140004f37:	44 89 c0             	mov    %r8d,%eax
   140004f3a:	f7 f1                	div    %ecx
   140004f3c:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   140004f40:	41 89 c5             	mov    %eax,%r13d
   140004f43:	41 39 c8             	cmp    %ecx,%r8d
   140004f46:	72 5b                	jb     140004fa3 <__quorem_D2A+0xb3>
   140004f48:	41 89 c7             	mov    %eax,%r15d
   140004f4b:	49 89 d9             	mov    %rbx,%r9
   140004f4e:	49 89 e8             	mov    %rbp,%r8
   140004f51:	45 31 f6             	xor    %r14d,%r14d
   140004f54:	31 d2                	xor    %edx,%edx
   140004f56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004f5d:	00 00 00 
   140004f60:	41 8b 01             	mov    (%r9),%eax
   140004f63:	41 8b 08             	mov    (%r8),%ecx
   140004f66:	49 83 c1 04          	add    $0x4,%r9
   140004f6a:	49 83 c0 04          	add    $0x4,%r8
   140004f6e:	49 0f af c7          	imul   %r15,%rax
   140004f72:	4c 01 f0             	add    %r14,%rax
   140004f75:	49 89 c6             	mov    %rax,%r14
   140004f78:	89 c0                	mov    %eax,%eax
   140004f7a:	48 01 d0             	add    %rdx,%rax
   140004f7d:	49 c1 ee 20          	shr    $0x20,%r14
   140004f81:	48 29 c1             	sub    %rax,%rcx
   140004f84:	48 89 ca             	mov    %rcx,%rdx
   140004f87:	41 89 48 fc          	mov    %ecx,-0x4(%r8)
   140004f8b:	48 c1 ea 20          	shr    $0x20,%rdx
   140004f8f:	83 e2 01             	and    $0x1,%edx
   140004f92:	4c 39 cf             	cmp    %r9,%rdi
   140004f95:	73 c9                	jae    140004f60 <__quorem_D2A+0x70>
   140004f97:	45 8b 0a             	mov    (%r10),%r9d
   140004f9a:	45 85 c9             	test   %r9d,%r9d
   140004f9d:	0f 84 98 00 00 00    	je     14000503b <__quorem_D2A+0x14b>
   140004fa3:	4c 89 da             	mov    %r11,%rdx
   140004fa6:	4c 89 e1             	mov    %r12,%rcx
   140004fa9:	e8 72 21 00 00       	call   140007120 <__cmp_D2A>
   140004fae:	85 c0                	test   %eax,%eax
   140004fb0:	78 42                	js     140004ff4 <__quorem_D2A+0x104>
   140004fb2:	41 8d 45 01          	lea    0x1(%r13),%eax
   140004fb6:	49 89 e8             	mov    %rbp,%r8
   140004fb9:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
   140004fbd:	31 c0                	xor    %eax,%eax
   140004fbf:	90                   	nop
   140004fc0:	8b 0b                	mov    (%rbx),%ecx
   140004fc2:	41 8b 10             	mov    (%r8),%edx
   140004fc5:	48 83 c3 04          	add    $0x4,%rbx
   140004fc9:	49 83 c0 04          	add    $0x4,%r8
   140004fcd:	48 01 c8             	add    %rcx,%rax
   140004fd0:	48 29 c2             	sub    %rax,%rdx
   140004fd3:	48 89 d0             	mov    %rdx,%rax
   140004fd6:	41 89 50 fc          	mov    %edx,-0x4(%r8)
   140004fda:	48 c1 e8 20          	shr    $0x20,%rax
   140004fde:	83 e0 01             	and    $0x1,%eax
   140004fe1:	48 39 df             	cmp    %rbx,%rdi
   140004fe4:	73 da                	jae    140004fc0 <__quorem_D2A+0xd0>
   140004fe6:	48 63 c6             	movslq %esi,%rax
   140004fe9:	48 8d 44 85 00       	lea    0x0(%rbp,%rax,4),%rax
   140004fee:	8b 08                	mov    (%rax),%ecx
   140004ff0:	85 c9                	test   %ecx,%ecx
   140004ff2:	74 25                	je     140005019 <__quorem_D2A+0x129>
   140004ff4:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
   140004ff8:	48 83 c4 38          	add    $0x38,%rsp
   140004ffc:	5b                   	pop    %rbx
   140004ffd:	5e                   	pop    %rsi
   140004ffe:	5f                   	pop    %rdi
   140004fff:	5d                   	pop    %rbp
   140005000:	41 5c                	pop    %r12
   140005002:	41 5d                	pop    %r13
   140005004:	41 5e                	pop    %r14
   140005006:	41 5f                	pop    %r15
   140005008:	c3                   	ret    
   140005009:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005010:	8b 10                	mov    (%rax),%edx
   140005012:	85 d2                	test   %edx,%edx
   140005014:	75 0c                	jne    140005022 <__quorem_D2A+0x132>
   140005016:	83 ee 01             	sub    $0x1,%esi
   140005019:	48 83 e8 04          	sub    $0x4,%rax
   14000501d:	48 39 c5             	cmp    %rax,%rbp
   140005020:	72 ee                	jb     140005010 <__quorem_D2A+0x120>
   140005022:	41 89 74 24 14       	mov    %esi,0x14(%r12)
   140005027:	eb cb                	jmp    140004ff4 <__quorem_D2A+0x104>
   140005029:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005030:	45 8b 02             	mov    (%r10),%r8d
   140005033:	45 85 c0             	test   %r8d,%r8d
   140005036:	75 0c                	jne    140005044 <__quorem_D2A+0x154>
   140005038:	83 ee 01             	sub    $0x1,%esi
   14000503b:	49 83 ea 04          	sub    $0x4,%r10
   14000503f:	4c 39 d5             	cmp    %r10,%rbp
   140005042:	72 ec                	jb     140005030 <__quorem_D2A+0x140>
   140005044:	41 89 74 24 14       	mov    %esi,0x14(%r12)
   140005049:	4c 89 da             	mov    %r11,%rdx
   14000504c:	4c 89 e1             	mov    %r12,%rcx
   14000504f:	e8 cc 20 00 00       	call   140007120 <__cmp_D2A>
   140005054:	85 c0                	test   %eax,%eax
   140005056:	0f 89 56 ff ff ff    	jns    140004fb2 <__quorem_D2A+0xc2>
   14000505c:	eb 96                	jmp    140004ff4 <__quorem_D2A+0x104>
   14000505e:	90                   	nop
   14000505f:	90                   	nop

0000000140005060 <__gdtoa>:
   140005060:	41 57                	push   %r15
   140005062:	41 56                	push   %r14
   140005064:	41 55                	push   %r13
   140005066:	41 54                	push   %r12
   140005068:	55                   	push   %rbp
   140005069:	57                   	push   %rdi
   14000506a:	56                   	push   %rsi
   14000506b:	53                   	push   %rbx
   14000506c:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   140005073:	0f 29 b4 24 a0 00 00 	movaps %xmm6,0xa0(%rsp)
   14000507a:	00 
   14000507b:	8b 84 24 20 01 00 00 	mov    0x120(%rsp),%eax
   140005082:	41 8b 29             	mov    (%r9),%ebp
   140005085:	44 8b b4 24 28 01 00 	mov    0x128(%rsp),%r14d
   14000508c:	00 
   14000508d:	89 44 24 20          	mov    %eax,0x20(%rsp)
   140005091:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   140005098:	00 
   140005099:	48 89 cf             	mov    %rcx,%rdi
   14000509c:	4c 89 ce             	mov    %r9,%rsi
   14000509f:	89 54 24 44          	mov    %edx,0x44(%rsp)
   1400050a3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400050a8:	48 8b 84 24 38 01 00 	mov    0x138(%rsp),%rax
   1400050af:	00 
   1400050b0:	4c 89 44 24 38       	mov    %r8,0x38(%rsp)
   1400050b5:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   1400050ba:	89 e8                	mov    %ebp,%eax
   1400050bc:	83 e0 cf             	and    $0xffffffcf,%eax
   1400050bf:	41 89 01             	mov    %eax,(%r9)
   1400050c2:	89 e8                	mov    %ebp,%eax
   1400050c4:	83 e0 07             	and    $0x7,%eax
   1400050c7:	83 f8 03             	cmp    $0x3,%eax
   1400050ca:	0f 84 d0 02 00 00    	je     1400053a0 <__gdtoa+0x340>
   1400050d0:	89 eb                	mov    %ebp,%ebx
   1400050d2:	83 e3 04             	and    $0x4,%ebx
   1400050d5:	89 5c 24 48          	mov    %ebx,0x48(%rsp)
   1400050d9:	75 35                	jne    140005110 <__gdtoa+0xb0>
   1400050db:	85 c0                	test   %eax,%eax
   1400050dd:	0f 84 8d 02 00 00    	je     140005370 <__gdtoa+0x310>
   1400050e3:	83 e8 01             	sub    $0x1,%eax
   1400050e6:	31 db                	xor    %ebx,%ebx
   1400050e8:	83 f8 01             	cmp    $0x1,%eax
   1400050eb:	76 6b                	jbe    140005158 <__gdtoa+0xf8>
   1400050ed:	0f 28 b4 24 a0 00 00 	movaps 0xa0(%rsp),%xmm6
   1400050f4:	00 
   1400050f5:	48 89 d8             	mov    %rbx,%rax
   1400050f8:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   1400050ff:	5b                   	pop    %rbx
   140005100:	5e                   	pop    %rsi
   140005101:	5f                   	pop    %rdi
   140005102:	5d                   	pop    %rbp
   140005103:	41 5c                	pop    %r12
   140005105:	41 5d                	pop    %r13
   140005107:	41 5e                	pop    %r14
   140005109:	41 5f                	pop    %r15
   14000510b:	c3                   	ret    
   14000510c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005110:	31 db                	xor    %ebx,%ebx
   140005112:	83 f8 04             	cmp    $0x4,%eax
   140005115:	75 d6                	jne    1400050ed <__gdtoa+0x8d>
   140005117:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   14000511c:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   140005121:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140005127:	48 8d 0d 6b 43 00 00 	lea    0x436b(%rip),%rcx        # 140009499 <.rdata+0x9>
   14000512e:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   140005134:	0f 28 b4 24 a0 00 00 	movaps 0xa0(%rsp),%xmm6
   14000513b:	00 
   14000513c:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   140005143:	5b                   	pop    %rbx
   140005144:	5e                   	pop    %rsi
   140005145:	5f                   	pop    %rdi
   140005146:	5d                   	pop    %rbp
   140005147:	41 5c                	pop    %r12
   140005149:	41 5d                	pop    %r13
   14000514b:	41 5e                	pop    %r14
   14000514d:	41 5f                	pop    %r15
   14000514f:	e9 fc fc ff ff       	jmp    140004e50 <__nrv_alloc_D2A>
   140005154:	0f 1f 40 00          	nopl   0x0(%rax)
   140005158:	44 8b 21             	mov    (%rcx),%r12d
   14000515b:	b8 20 00 00 00       	mov    $0x20,%eax
   140005160:	31 c9                	xor    %ecx,%ecx
   140005162:	41 83 fc 20          	cmp    $0x20,%r12d
   140005166:	7e 0a                	jle    140005172 <__gdtoa+0x112>
   140005168:	01 c0                	add    %eax,%eax
   14000516a:	83 c1 01             	add    $0x1,%ecx
   14000516d:	41 39 c4             	cmp    %eax,%r12d
   140005170:	7f f6                	jg     140005168 <__gdtoa+0x108>
   140005172:	e8 49 18 00 00       	call   1400069c0 <__Balloc_D2A>
   140005177:	45 8d 44 24 ff       	lea    -0x1(%r12),%r8d
   14000517c:	41 c1 f8 05          	sar    $0x5,%r8d
   140005180:	49 89 c7             	mov    %rax,%r15
   140005183:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
   140005188:	4d 63 c0             	movslq %r8d,%r8
   14000518b:	49 8d 57 18          	lea    0x18(%r15),%rdx
   14000518f:	49 c1 e0 02          	shl    $0x2,%r8
   140005193:	4a 8d 0c 00          	lea    (%rax,%r8,1),%rcx
   140005197:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000519e:	00 00 
   1400051a0:	44 8b 08             	mov    (%rax),%r9d
   1400051a3:	48 83 c0 04          	add    $0x4,%rax
   1400051a7:	48 83 c2 04          	add    $0x4,%rdx
   1400051ab:	44 89 4a fc          	mov    %r9d,-0x4(%rdx)
   1400051af:	48 39 c1             	cmp    %rax,%rcx
   1400051b2:	73 ec                	jae    1400051a0 <__gdtoa+0x140>
   1400051b4:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
   1400051b9:	48 83 c1 01          	add    $0x1,%rcx
   1400051bd:	49 8d 40 04          	lea    0x4(%r8),%rax
   1400051c1:	48 8d 53 01          	lea    0x1(%rbx),%rdx
   1400051c5:	48 39 d1             	cmp    %rdx,%rcx
   1400051c8:	ba 04 00 00 00       	mov    $0x4,%edx
   1400051cd:	48 0f 42 c2          	cmovb  %rdx,%rax
   1400051d1:	48 c1 f8 02          	sar    $0x2,%rax
   1400051d5:	89 c3                	mov    %eax,%ebx
   1400051d7:	49 8d 04 87          	lea    (%r15,%rax,4),%rax
   1400051db:	eb 0f                	jmp    1400051ec <__gdtoa+0x18c>
   1400051dd:	0f 1f 00             	nopl   (%rax)
   1400051e0:	48 83 e8 04          	sub    $0x4,%rax
   1400051e4:	85 db                	test   %ebx,%ebx
   1400051e6:	0f 84 dc 01 00 00    	je     1400053c8 <__gdtoa+0x368>
   1400051ec:	44 8b 68 14          	mov    0x14(%rax),%r13d
   1400051f0:	89 da                	mov    %ebx,%edx
   1400051f2:	83 eb 01             	sub    $0x1,%ebx
   1400051f5:	45 85 ed             	test   %r13d,%r13d
   1400051f8:	74 e6                	je     1400051e0 <__gdtoa+0x180>
   1400051fa:	48 63 db             	movslq %ebx,%rbx
   1400051fd:	41 89 57 14          	mov    %edx,0x14(%r15)
   140005201:	41 0f bd 44 9f 18    	bsr    0x18(%r15,%rbx,4),%eax
   140005207:	c1 e2 05             	shl    $0x5,%edx
   14000520a:	89 d3                	mov    %edx,%ebx
   14000520c:	83 f0 1f             	xor    $0x1f,%eax
   14000520f:	29 c3                	sub    %eax,%ebx
   140005211:	4c 89 f9             	mov    %r15,%rcx
   140005214:	e8 27 16 00 00       	call   140006840 <__trailz_D2A>
   140005219:	44 8b 6c 24 44       	mov    0x44(%rsp),%r13d
   14000521e:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140005225:	85 c0                	test   %eax,%eax
   140005227:	0f 85 ab 01 00 00    	jne    1400053d8 <__gdtoa+0x378>
   14000522d:	45 8b 5f 14          	mov    0x14(%r15),%r11d
   140005231:	45 85 db             	test   %r11d,%r11d
   140005234:	0f 84 26 01 00 00    	je     140005360 <__gdtoa+0x300>
   14000523a:	48 8d 94 24 9c 00 00 	lea    0x9c(%rsp),%rdx
   140005241:	00 
   140005242:	4c 89 f9             	mov    %r15,%rcx
   140005245:	e8 f6 20 00 00       	call   140007340 <__b2d_D2A>
   14000524a:	45 8d 44 1d 00       	lea    0x0(%r13,%rbx,1),%r8d
   14000524f:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140005253:	66 48 0f 7e c1       	movq   %xmm0,%rcx
   140005258:	66 48 0f 7e c0       	movq   %xmm0,%rax
   14000525d:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140005261:	48 c1 e9 20          	shr    $0x20,%rcx
   140005265:	f2 0f 2a ca          	cvtsi2sd %edx,%xmm1
   140005269:	89 c0                	mov    %eax,%eax
   14000526b:	f2 0f 59 0d 45 42 00 	mulsd  0x4245(%rip),%xmm1        # 1400094b8 <.rdata+0x28>
   140005272:	00 
   140005273:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
   140005279:	81 c9 00 00 f0 3f    	or     $0x3ff00000,%ecx
   14000527f:	49 89 ca             	mov    %rcx,%r10
   140005282:	49 c1 e2 20          	shl    $0x20,%r10
   140005286:	4c 09 d0             	or     %r10,%rax
   140005289:	41 89 d2             	mov    %edx,%r10d
   14000528c:	41 f7 da             	neg    %r10d
   14000528f:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140005294:	f2 0f 5c 05 04 42 00 	subsd  0x4204(%rip),%xmm0        # 1400094a0 <.rdata+0x10>
   14000529b:	00 
   14000529c:	f2 0f 59 05 04 42 00 	mulsd  0x4204(%rip),%xmm0        # 1400094a8 <.rdata+0x18>
   1400052a3:	00 
   1400052a4:	44 0f 48 d2          	cmovs  %edx,%r10d
   1400052a8:	f2 0f 58 05 00 42 00 	addsd  0x4200(%rip),%xmm0        # 1400094b0 <.rdata+0x20>
   1400052af:	00 
   1400052b0:	41 81 ea 35 04 00 00 	sub    $0x435,%r10d
   1400052b7:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   1400052bb:	45 85 d2             	test   %r10d,%r10d
   1400052be:	7e 15                	jle    1400052d5 <__gdtoa+0x275>
   1400052c0:	66 0f ef c9          	pxor   %xmm1,%xmm1
   1400052c4:	f2 41 0f 2a ca       	cvtsi2sd %r10d,%xmm1
   1400052c9:	f2 0f 59 0d ef 41 00 	mulsd  0x41ef(%rip),%xmm1        # 1400094c0 <.rdata+0x30>
   1400052d0:	00 
   1400052d1:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   1400052d5:	f2 44 0f 2c d8       	cvttsd2si %xmm0,%r11d
   1400052da:	66 0f ef f6          	pxor   %xmm6,%xmm6
   1400052de:	66 0f 2f f0          	comisd %xmm0,%xmm6
   1400052e2:	44 89 5c 24 50       	mov    %r11d,0x50(%rsp)
   1400052e7:	0f 87 83 04 00 00    	ja     140005770 <__gdtoa+0x710>
   1400052ed:	41 89 d2             	mov    %edx,%r10d
   1400052f0:	89 c0                	mov    %eax,%eax
   1400052f2:	44 8b 4c 24 50       	mov    0x50(%rsp),%r9d
   1400052f7:	41 c1 e2 14          	shl    $0x14,%r10d
   1400052fb:	44 01 d1             	add    %r10d,%ecx
   1400052fe:	89 c9                	mov    %ecx,%ecx
   140005300:	48 c1 e1 20          	shl    $0x20,%rcx
   140005304:	48 09 c8             	or     %rcx,%rax
   140005307:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   14000530e:	00 
   14000530f:	49 89 c2             	mov    %rax,%r10
   140005312:	89 d8                	mov    %ebx,%eax
   140005314:	29 d0                	sub    %edx,%eax
   140005316:	44 8d 58 ff          	lea    -0x1(%rax),%r11d
   14000531a:	41 83 f9 16          	cmp    $0x16,%r9d
   14000531e:	0f 87 dc 00 00 00    	ja     140005400 <__gdtoa+0x3a0>
   140005324:	48 8b 0d 35 44 00 00 	mov    0x4435(%rip),%rcx        # 140009760 <.refptr.__tens_D2A>
   14000532b:	49 63 d1             	movslq %r9d,%rdx
   14000532e:	66 49 0f 6e ea       	movq   %r10,%xmm5
   140005333:	f2 0f 10 04 d1       	movsd  (%rcx,%rdx,8),%xmm0
   140005338:	66 0f 2f c5          	comisd %xmm5,%xmm0
   14000533c:	0f 86 6e 03 00 00    	jbe    1400056b0 <__gdtoa+0x650>
   140005342:	c7 84 24 88 00 00 00 	movl   $0x0,0x88(%rsp)
   140005349:	00 00 00 00 
   14000534d:	41 83 e9 01          	sub    $0x1,%r9d
   140005351:	44 89 4c 24 50       	mov    %r9d,0x50(%rsp)
   140005356:	e9 b0 00 00 00       	jmp    14000540b <__gdtoa+0x3ab>
   14000535b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005360:	4c 89 f9             	mov    %r15,%rcx
   140005363:	e8 58 17 00 00       	call   140006ac0 <__Bfree_D2A>
   140005368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000536f:	00 
   140005370:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140005375:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   14000537a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140005380:	48 8d 0d 16 41 00 00 	lea    0x4116(%rip),%rcx        # 14000949d <.rdata+0xd>
   140005387:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000538d:	e8 be fa ff ff       	call   140004e50 <__nrv_alloc_D2A>
   140005392:	48 89 c3             	mov    %rax,%rbx
   140005395:	e9 53 fd ff ff       	jmp    1400050ed <__gdtoa+0x8d>
   14000539a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400053a0:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400053a5:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   1400053aa:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400053b0:	48 8d 0d d9 40 00 00 	lea    0x40d9(%rip),%rcx        # 140009490 <.rdata>
   1400053b7:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
   1400053bd:	e9 72 fd ff ff       	jmp    140005134 <__gdtoa+0xd4>
   1400053c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400053c8:	41 c7 47 14 00 00 00 	movl   $0x0,0x14(%r15)
   1400053cf:	00 
   1400053d0:	e9 3c fe ff ff       	jmp    140005211 <__gdtoa+0x1b1>
   1400053d5:	0f 1f 00             	nopl   (%rax)
   1400053d8:	89 c2                	mov    %eax,%edx
   1400053da:	4c 89 f9             	mov    %r15,%rcx
   1400053dd:	e8 5e 13 00 00       	call   140006740 <__rshift_D2A>
   1400053e2:	44 8b 6c 24 44       	mov    0x44(%rsp),%r13d
   1400053e7:	2b 9c 24 9c 00 00 00 	sub    0x9c(%rsp),%ebx
   1400053ee:	44 03 ac 24 9c 00 00 	add    0x9c(%rsp),%r13d
   1400053f5:	00 
   1400053f6:	e9 32 fe ff ff       	jmp    14000522d <__gdtoa+0x1cd>
   1400053fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005400:	c7 84 24 88 00 00 00 	movl   $0x1,0x88(%rsp)
   140005407:	01 00 00 00 
   14000540b:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
   140005412:	00 
   140005413:	45 85 db             	test   %r11d,%r11d
   140005416:	0f 88 3c 03 00 00    	js     140005758 <__gdtoa+0x6f8>
   14000541c:	44 8b 54 24 50       	mov    0x50(%rsp),%r10d
   140005421:	45 85 d2             	test   %r10d,%r10d
   140005424:	0f 89 a2 02 00 00    	jns    1400056cc <__gdtoa+0x66c>
   14000542a:	8b 44 24 50          	mov    0x50(%rsp),%eax
   14000542e:	29 44 24 60          	sub    %eax,0x60(%rsp)
   140005432:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%rsp)
   140005439:	00 
   14000543a:	89 c2                	mov    %eax,%edx
   14000543c:	89 44 24 70          	mov    %eax,0x70(%rsp)
   140005440:	f7 da                	neg    %edx
   140005442:	89 54 24 74          	mov    %edx,0x74(%rsp)
   140005446:	8b 44 24 20          	mov    0x20(%rsp),%eax
   14000544a:	83 f8 09             	cmp    $0x9,%eax
   14000544d:	0f 87 95 02 00 00    	ja     1400056e8 <__gdtoa+0x688>
   140005453:	83 f8 05             	cmp    $0x5,%eax
   140005456:	0f 8f 34 03 00 00    	jg     140005790 <__gdtoa+0x730>
   14000545c:	41 81 c0 fd 03 00 00 	add    $0x3fd,%r8d
   140005463:	31 c0                	xor    %eax,%eax
   140005465:	41 81 f8 f7 07 00 00 	cmp    $0x7f7,%r8d
   14000546c:	0f 96 c0             	setbe  %al
   14000546f:	89 44 24 54          	mov    %eax,0x54(%rsp)
   140005473:	83 7c 24 20 03       	cmpl   $0x3,0x20(%rsp)
   140005478:	0f 84 8a 0a 00 00    	je     140005f08 <__gdtoa+0xea8>
   14000547e:	0f 8e a4 06 00 00    	jle    140005b28 <__gdtoa+0xac8>
   140005484:	83 7c 24 20 04       	cmpl   $0x4,0x20(%rsp)
   140005489:	c7 44 24 68 01 00 00 	movl   $0x1,0x68(%rsp)
   140005490:	00 
   140005491:	0f 84 a4 06 00 00    	je     140005b3b <__gdtoa+0xadb>
   140005497:	8b 44 24 70          	mov    0x70(%rsp),%eax
   14000549b:	44 01 f0             	add    %r14d,%eax
   14000549e:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
   1400054a5:	83 c0 01             	add    $0x1,%eax
   1400054a8:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
   1400054ac:	85 c0                	test   %eax,%eax
   1400054ae:	0f 8e 64 0a 00 00    	jle    140005f18 <__gdtoa+0xeb8>
   1400054b4:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   1400054bb:	89 c1                	mov    %eax,%ecx
   1400054bd:	44 89 5c 24 78       	mov    %r11d,0x78(%rsp)
   1400054c2:	e8 49 f9 ff ff       	call   140004e10 <__rv_alloc_D2A>
   1400054c7:	83 7c 24 4c 0e       	cmpl   $0xe,0x4c(%rsp)
   1400054cc:	44 8b 5c 24 78       	mov    0x78(%rsp),%r11d
   1400054d1:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   1400054d6:	8b 47 0c             	mov    0xc(%rdi),%eax
   1400054d9:	0f 96 c2             	setbe  %dl
   1400054dc:	22 54 24 54          	and    0x54(%rsp),%dl
   1400054e0:	83 e8 01             	sub    $0x1,%eax
   1400054e3:	89 44 24 54          	mov    %eax,0x54(%rsp)
   1400054e7:	74 28                	je     140005511 <__gdtoa+0x4b1>
   1400054e9:	8b 4c 24 54          	mov    0x54(%rsp),%ecx
   1400054ed:	b8 02 00 00 00       	mov    $0x2,%eax
   1400054f2:	85 c9                	test   %ecx,%ecx
   1400054f4:	0f 49 c1             	cmovns %ecx,%eax
   1400054f7:	83 e5 08             	and    $0x8,%ebp
   1400054fa:	89 44 24 54          	mov    %eax,0x54(%rsp)
   1400054fe:	89 c1                	mov    %eax,%ecx
   140005500:	0f 84 b2 05 00 00    	je     140005ab8 <__gdtoa+0xa58>
   140005506:	b8 03 00 00 00       	mov    $0x3,%eax
   14000550b:	29 c8                	sub    %ecx,%eax
   14000550d:	89 44 24 54          	mov    %eax,0x54(%rsp)
   140005511:	84 d2                	test   %dl,%dl
   140005513:	0f 84 9f 05 00 00    	je     140005ab8 <__gdtoa+0xa58>
   140005519:	8b 44 24 54          	mov    0x54(%rsp),%eax
   14000551d:	0b 44 24 70          	or     0x70(%rsp),%eax
   140005521:	0f 85 91 05 00 00    	jne    140005ab8 <__gdtoa+0xa58>
   140005527:	44 8b 8c 24 88 00 00 	mov    0x88(%rsp),%r9d
   14000552e:	00 
   14000552f:	c7 84 24 9c 00 00 00 	movl   $0x0,0x9c(%rsp)
   140005536:	00 00 00 00 
   14000553a:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140005541:	00 00 
   140005543:	45 85 c9             	test   %r9d,%r9d
   140005546:	74 12                	je     14000555a <__gdtoa+0x4fa>
   140005548:	f2 0f 10 25 80 3f 00 	movsd  0x3f80(%rip),%xmm4        # 1400094d0 <.rdata+0x40>
   14000554f:	00 
   140005550:	66 0f 2f e0          	comisd %xmm0,%xmm4
   140005554:	0f 87 ed 0d 00 00    	ja     140006347 <__gdtoa+0x12e7>
   14000555a:	66 0f 28 c8          	movapd %xmm0,%xmm1
   14000555e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   140005562:	f2 0f 58 0d 7e 3f 00 	addsd  0x3f7e(%rip),%xmm1        # 1400094e8 <.rdata+0x58>
   140005569:	00 
   14000556a:	66 48 0f 7e c9       	movq   %xmm1,%rcx
   14000556f:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140005574:	48 c1 e9 20          	shr    $0x20,%rcx
   140005578:	89 c0                	mov    %eax,%eax
   14000557a:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
   140005580:	48 c1 e1 20          	shl    $0x20,%rcx
   140005584:	48 09 c8             	or     %rcx,%rax
   140005587:	8b 4c 24 4c          	mov    0x4c(%rsp),%ecx
   14000558b:	85 c9                	test   %ecx,%ecx
   14000558d:	0f 84 ef 04 00 00    	je     140005a82 <__gdtoa+0xa22>
   140005593:	44 8b 4c 24 4c       	mov    0x4c(%rsp),%r9d
   140005598:	31 ed                	xor    %ebp,%ebp
   14000559a:	48 8b 0d bf 41 00 00 	mov    0x41bf(%rip),%rcx        # 140009760 <.refptr.__tens_D2A>
   1400055a1:	66 48 0f 6e d0       	movq   %rax,%xmm2
   1400055a6:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   1400055aa:	48 98                	cltq   
   1400055ac:	f2 0f 10 1c c1       	movsd  (%rcx,%rax,8),%xmm3
   1400055b1:	8b 44 24 68          	mov    0x68(%rsp),%eax
   1400055b5:	85 c0                	test   %eax,%eax
   1400055b7:	0f 84 c4 0b 00 00    	je     140006181 <__gdtoa+0x1121>
   1400055bd:	f2 0f 10 0d 4b 3f 00 	movsd  0x3f4b(%rip),%xmm1        # 140009510 <.rdata+0x80>
   1400055c4:	00 
   1400055c5:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   1400055c9:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
   1400055ce:	f2 0f 5e cb          	divsd  %xmm3,%xmm1
   1400055d2:	48 8d 51 01          	lea    0x1(%rcx),%rdx
   1400055d6:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
   1400055da:	66 0f ef d2          	pxor   %xmm2,%xmm2
   1400055de:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
   1400055e2:	83 c0 30             	add    $0x30,%eax
   1400055e5:	88 01                	mov    %al,(%rcx)
   1400055e7:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   1400055eb:	66 0f 2f c8          	comisd %xmm0,%xmm1
   1400055ef:	0f 87 7f 0f 00 00    	ja     140006574 <__gdtoa+0x1514>
   1400055f5:	f2 0f 10 25 d3 3e 00 	movsd  0x3ed3(%rip),%xmm4        # 1400094d0 <.rdata+0x40>
   1400055fc:	00 
   1400055fd:	f2 0f 10 1d d3 3e 00 	movsd  0x3ed3(%rip),%xmm3        # 1400094d8 <.rdata+0x48>
   140005604:	00 
   140005605:	eb 4f                	jmp    140005656 <__gdtoa+0x5f6>
   140005607:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000560e:	00 00 
   140005610:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   140005617:	83 c0 01             	add    $0x1,%eax
   14000561a:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140005621:	44 39 c8             	cmp    %r9d,%eax
   140005624:	0f 8d 81 04 00 00    	jge    140005aab <__gdtoa+0xa4b>
   14000562a:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
   14000562e:	66 0f ef d2          	pxor   %xmm2,%xmm2
   140005632:	48 83 c2 01          	add    $0x1,%rdx
   140005636:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
   14000563a:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
   14000563e:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
   140005642:	83 c0 30             	add    $0x30,%eax
   140005645:	88 42 ff             	mov    %al,-0x1(%rdx)
   140005648:	f2 0f 5c c2          	subsd  %xmm2,%xmm0
   14000564c:	66 0f 2f c8          	comisd %xmm0,%xmm1
   140005650:	0f 87 1e 0f 00 00    	ja     140006574 <__gdtoa+0x1514>
   140005656:	66 0f 28 d4          	movapd %xmm4,%xmm2
   14000565a:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
   14000565e:	66 0f 2f ca          	comisd %xmm2,%xmm1
   140005662:	76 ac                	jbe    140005610 <__gdtoa+0x5b0>
   140005664:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
   140005668:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   14000566d:	48 89 d1             	mov    %rdx,%rcx
   140005670:	eb 16                	jmp    140005688 <__gdtoa+0x628>
   140005672:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005678:	48 39 da             	cmp    %rbx,%rdx
   14000567b:	0f 84 f4 0d 00 00    	je     140006475 <__gdtoa+0x1415>
   140005681:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
   140005685:	48 89 d1             	mov    %rdx,%rcx
   140005688:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
   14000568c:	3c 39                	cmp    $0x39,%al
   14000568e:	74 e8                	je     140005678 <__gdtoa+0x618>
   140005690:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
   140005695:	83 c0 01             	add    $0x1,%eax
   140005698:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   14000569f:	00 
   1400056a0:	88 02                	mov    %al,(%rdx)
   1400056a2:	8d 45 01             	lea    0x1(%rbp),%eax
   1400056a5:	89 44 24 44          	mov    %eax,0x44(%rsp)
   1400056a9:	e9 74 03 00 00       	jmp    140005a22 <__gdtoa+0x9c2>
   1400056ae:	66 90                	xchg   %ax,%ax
   1400056b0:	c7 84 24 88 00 00 00 	movl   $0x0,0x88(%rsp)
   1400056b7:	00 00 00 00 
   1400056bb:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
   1400056c2:	00 
   1400056c3:	45 85 db             	test   %r11d,%r11d
   1400056c6:	0f 88 8c 00 00 00    	js     140005758 <__gdtoa+0x6f8>
   1400056cc:	8b 44 24 50          	mov    0x50(%rsp),%eax
   1400056d0:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%rsp)
   1400056d7:	00 
   1400056d8:	89 44 24 70          	mov    %eax,0x70(%rsp)
   1400056dc:	41 01 c3             	add    %eax,%r11d
   1400056df:	e9 62 fd ff ff       	jmp    140005446 <__gdtoa+0x3e6>
   1400056e4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400056e8:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
   1400056ef:	00 
   1400056f0:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400056f4:	44 89 5c 24 4c       	mov    %r11d,0x4c(%rsp)
   1400056f9:	f2 41 0f 2a c4       	cvtsi2sd %r12d,%xmm0
   1400056fe:	f2 0f 59 05 c2 3d 00 	mulsd  0x3dc2(%rip),%xmm0        # 1400094c8 <.rdata+0x38>
   140005705:	00 
   140005706:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
   14000570a:	83 c1 03             	add    $0x3,%ecx
   14000570d:	89 8c 24 9c 00 00 00 	mov    %ecx,0x9c(%rsp)
   140005714:	e8 f7 f6 ff ff       	call   140004e10 <__rv_alloc_D2A>
   140005719:	44 8b 5c 24 4c       	mov    0x4c(%rsp),%r11d
   14000571e:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   140005723:	8b 47 0c             	mov    0xc(%rdi),%eax
   140005726:	83 e8 01             	sub    $0x1,%eax
   140005729:	89 44 24 54          	mov    %eax,0x54(%rsp)
   14000572d:	74 75                	je     1400057a4 <__gdtoa+0x744>
   14000572f:	c7 44 24 68 01 00 00 	movl   $0x1,0x68(%rsp)
   140005736:	00 
   140005737:	45 31 f6             	xor    %r14d,%r14d
   14000573a:	31 d2                	xor    %edx,%edx
   14000573c:	c7 84 24 8c 00 00 00 	movl   $0xffffffff,0x8c(%rsp)
   140005743:	ff ff ff ff 
   140005747:	c7 44 24 4c ff ff ff 	movl   $0xffffffff,0x4c(%rsp)
   14000574e:	ff 
   14000574f:	e9 95 fd ff ff       	jmp    1400054e9 <__gdtoa+0x489>
   140005754:	0f 1f 40 00          	nopl   0x0(%rax)
   140005758:	ba 01 00 00 00       	mov    $0x1,%edx
   14000575d:	45 31 db             	xor    %r11d,%r11d
   140005760:	29 c2                	sub    %eax,%edx
   140005762:	89 54 24 60          	mov    %edx,0x60(%rsp)
   140005766:	e9 b1 fc ff ff       	jmp    14000541c <__gdtoa+0x3bc>
   14000576b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005770:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140005774:	f2 41 0f 2a cb       	cvtsi2sd %r11d,%xmm1
   140005779:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
   14000577d:	7a 06                	jp     140005785 <__gdtoa+0x725>
   14000577f:	0f 84 68 fb ff ff    	je     1400052ed <__gdtoa+0x28d>
   140005785:	83 6c 24 50 01       	subl   $0x1,0x50(%rsp)
   14000578a:	e9 5e fb ff ff       	jmp    1400052ed <__gdtoa+0x28d>
   14000578f:	90                   	nop
   140005790:	83 e8 04             	sub    $0x4,%eax
   140005793:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
   14000579a:	00 
   14000579b:	89 44 24 20          	mov    %eax,0x20(%rsp)
   14000579f:	e9 cf fc ff ff       	jmp    140005473 <__gdtoa+0x413>
   1400057a4:	45 85 ed             	test   %r13d,%r13d
   1400057a7:	0f 88 63 0d 00 00    	js     140006510 <__gdtoa+0x14b0>
   1400057ad:	8b 44 24 70          	mov    0x70(%rsp),%eax
   1400057b1:	39 47 14             	cmp    %eax,0x14(%rdi)
   1400057b4:	0f 8d bf 07 00 00    	jge    140005f79 <__gdtoa+0xf19>
   1400057ba:	c7 84 24 8c 00 00 00 	movl   $0xffffffff,0x8c(%rsp)
   1400057c1:	ff ff ff ff 
   1400057c5:	45 31 f6             	xor    %r14d,%r14d
   1400057c8:	c7 44 24 4c ff ff ff 	movl   $0xffffffff,0x4c(%rsp)
   1400057cf:	ff 
   1400057d0:	41 29 dc             	sub    %ebx,%r12d
   1400057d3:	44 89 e9             	mov    %r13d,%ecx
   1400057d6:	8b 57 04             	mov    0x4(%rdi),%edx
   1400057d9:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   1400057de:	44 29 e1             	sub    %r12d,%ecx
   1400057e1:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   1400057e8:	39 d1                	cmp    %edx,%ecx
   1400057ea:	7d 12                	jge    1400057fe <__gdtoa+0x79e>
   1400057ec:	44 8b 54 24 20       	mov    0x20(%rsp),%r10d
   1400057f1:	41 8d 4a fd          	lea    -0x3(%r10),%ecx
   1400057f5:	83 e1 fd             	and    $0xfffffffd,%ecx
   1400057f8:	0f 85 2f 07 00 00    	jne    140005f2d <__gdtoa+0xecd>
   1400057fe:	83 7c 24 20 01       	cmpl   $0x1,0x20(%rsp)
   140005803:	0f 8e 57 07 00 00    	jle    140005f60 <__gdtoa+0xf00>
   140005809:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
   14000580d:	8b 54 24 74          	mov    0x74(%rsp),%edx
   140005811:	83 e8 01             	sub    $0x1,%eax
   140005814:	39 c2                	cmp    %eax,%edx
   140005816:	0f 8c b8 08 00 00    	jl     1400060d4 <__gdtoa+0x1074>
   14000581c:	29 c2                	sub    %eax,%edx
   14000581e:	41 89 d5             	mov    %edx,%r13d
   140005821:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
   140005825:	85 c0                	test   %eax,%eax
   140005827:	0f 88 02 0b 00 00    	js     14000632f <__gdtoa+0x12cf>
   14000582d:	8b 54 24 60          	mov    0x60(%rsp),%edx
   140005831:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140005838:	41 01 c3             	add    %eax,%r11d
   14000583b:	01 d0                	add    %edx,%eax
   14000583d:	89 d5                	mov    %edx,%ebp
   14000583f:	89 44 24 60          	mov    %eax,0x60(%rsp)
   140005843:	b9 01 00 00 00       	mov    $0x1,%ecx
   140005848:	44 89 5c 24 78       	mov    %r11d,0x78(%rsp)
   14000584d:	e8 8e 13 00 00       	call   140006be0 <__i2b_D2A>
   140005852:	c7 44 24 68 01 00 00 	movl   $0x1,0x68(%rsp)
   140005859:	00 
   14000585a:	44 8b 5c 24 78       	mov    0x78(%rsp),%r11d
   14000585f:	49 89 c4             	mov    %rax,%r12
   140005862:	85 ed                	test   %ebp,%ebp
   140005864:	7e 1e                	jle    140005884 <__gdtoa+0x824>
   140005866:	45 85 db             	test   %r11d,%r11d
   140005869:	7e 19                	jle    140005884 <__gdtoa+0x824>
   14000586b:	44 39 dd             	cmp    %r11d,%ebp
   14000586e:	44 89 d8             	mov    %r11d,%eax
   140005871:	0f 4e c5             	cmovle %ebp,%eax
   140005874:	29 44 24 60          	sub    %eax,0x60(%rsp)
   140005878:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   14000587f:	29 c5                	sub    %eax,%ebp
   140005881:	41 29 c3             	sub    %eax,%r11d
   140005884:	8b 44 24 74          	mov    0x74(%rsp),%eax
   140005888:	85 c0                	test   %eax,%eax
   14000588a:	74 5b                	je     1400058e7 <__gdtoa+0x887>
   14000588c:	44 8b 54 24 68       	mov    0x68(%rsp),%r10d
   140005891:	45 85 d2             	test   %r10d,%r10d
   140005894:	0f 84 0d 08 00 00    	je     1400060a7 <__gdtoa+0x1047>
   14000589a:	45 85 ed             	test   %r13d,%r13d
   14000589d:	7e 3b                	jle    1400058da <__gdtoa+0x87a>
   14000589f:	4c 89 e1             	mov    %r12,%rcx
   1400058a2:	44 89 ea             	mov    %r13d,%edx
   1400058a5:	44 89 9c 24 80 00 00 	mov    %r11d,0x80(%rsp)
   1400058ac:	00 
   1400058ad:	e8 4e 15 00 00       	call   140006e00 <__pow5mult_D2A>
   1400058b2:	4c 89 fa             	mov    %r15,%rdx
   1400058b5:	48 89 c1             	mov    %rax,%rcx
   1400058b8:	49 89 c4             	mov    %rax,%r12
   1400058bb:	e8 e0 13 00 00       	call   140006ca0 <__mult_D2A>
   1400058c0:	4c 89 f9             	mov    %r15,%rcx
   1400058c3:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
   1400058c8:	e8 f3 11 00 00       	call   140006ac0 <__Bfree_D2A>
   1400058cd:	4c 8b 7c 24 78       	mov    0x78(%rsp),%r15
   1400058d2:	44 8b 9c 24 80 00 00 	mov    0x80(%rsp),%r11d
   1400058d9:	00 
   1400058da:	8b 54 24 74          	mov    0x74(%rsp),%edx
   1400058de:	44 29 ea             	sub    %r13d,%edx
   1400058e1:	0f 85 1d 08 00 00    	jne    140006104 <__gdtoa+0x10a4>
   1400058e7:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400058ec:	44 89 5c 24 74       	mov    %r11d,0x74(%rsp)
   1400058f1:	e8 ea 12 00 00       	call   140006be0 <__i2b_D2A>
   1400058f6:	83 fb 01             	cmp    $0x1,%ebx
   1400058f9:	8b 54 24 50          	mov    0x50(%rsp),%edx
   1400058fd:	44 8b 5c 24 74       	mov    0x74(%rsp),%r11d
   140005902:	0f 94 c3             	sete   %bl
   140005905:	83 7c 24 20 01       	cmpl   $0x1,0x20(%rsp)
   14000590a:	49 89 c5             	mov    %rax,%r13
   14000590d:	0f 9e c0             	setle  %al
   140005910:	21 c3                	and    %eax,%ebx
   140005912:	85 d2                	test   %edx,%edx
   140005914:	0f 8f 8e 02 00 00    	jg     140005ba8 <__gdtoa+0xb48>
   14000591a:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%rsp)
   140005921:	00 
   140005922:	84 db                	test   %bl,%bl
   140005924:	0f 85 bc 0a 00 00    	jne    1400063e6 <__gdtoa+0x1386>
   14000592a:	44 8b 4c 24 50       	mov    0x50(%rsp),%r9d
   14000592f:	bf 1f 00 00 00       	mov    $0x1f,%edi
   140005934:	45 85 c9             	test   %r9d,%r9d
   140005937:	0f 85 8b 02 00 00    	jne    140005bc8 <__gdtoa+0xb68>
   14000593d:	44 29 df             	sub    %r11d,%edi
   140005940:	44 8b 44 24 60       	mov    0x60(%rsp),%r8d
   140005945:	83 ef 04             	sub    $0x4,%edi
   140005948:	83 e7 1f             	and    $0x1f,%edi
   14000594b:	41 01 f8             	add    %edi,%r8d
   14000594e:	89 bc 24 9c 00 00 00 	mov    %edi,0x9c(%rsp)
   140005955:	89 fa                	mov    %edi,%edx
   140005957:	45 85 c0             	test   %r8d,%r8d
   14000595a:	7e 1f                	jle    14000597b <__gdtoa+0x91b>
   14000595c:	44 89 c2             	mov    %r8d,%edx
   14000595f:	4c 89 f9             	mov    %r15,%rcx
   140005962:	44 89 5c 24 44       	mov    %r11d,0x44(%rsp)
   140005967:	e8 a4 16 00 00       	call   140007010 <__lshift_D2A>
   14000596c:	8b 94 24 9c 00 00 00 	mov    0x9c(%rsp),%edx
   140005973:	44 8b 5c 24 44       	mov    0x44(%rsp),%r11d
   140005978:	49 89 c7             	mov    %rax,%r15
   14000597b:	44 01 da             	add    %r11d,%edx
   14000597e:	85 d2                	test   %edx,%edx
   140005980:	7e 0b                	jle    14000598d <__gdtoa+0x92d>
   140005982:	4c 89 e9             	mov    %r13,%rcx
   140005985:	e8 86 16 00 00       	call   140007010 <__lshift_D2A>
   14000598a:	49 89 c5             	mov    %rax,%r13
   14000598d:	44 8b 84 24 88 00 00 	mov    0x88(%rsp),%r8d
   140005994:	00 
   140005995:	83 7c 24 20 02       	cmpl   $0x2,0x20(%rsp)
   14000599a:	0f 9f c3             	setg   %bl
   14000599d:	45 85 c0             	test   %r8d,%r8d
   1400059a0:	0f 85 4a 04 00 00    	jne    140005df0 <__gdtoa+0xd90>
   1400059a6:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
   1400059aa:	85 c0                	test   %eax,%eax
   1400059ac:	0f 8f 2e 02 00 00    	jg     140005be0 <__gdtoa+0xb80>
   1400059b2:	84 db                	test   %bl,%bl
   1400059b4:	0f 84 26 02 00 00    	je     140005be0 <__gdtoa+0xb80>
   1400059ba:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
   1400059be:	85 c0                	test   %eax,%eax
   1400059c0:	0f 85 c5 01 00 00    	jne    140005b8b <__gdtoa+0xb2b>
   1400059c6:	4c 89 e9             	mov    %r13,%rcx
   1400059c9:	45 31 c0             	xor    %r8d,%r8d
   1400059cc:	ba 05 00 00 00       	mov    $0x5,%edx
   1400059d1:	e8 5a 11 00 00       	call   140006b30 <__multadd_D2A>
   1400059d6:	4c 89 f9             	mov    %r15,%rcx
   1400059d9:	48 89 c2             	mov    %rax,%rdx
   1400059dc:	49 89 c5             	mov    %rax,%r13
   1400059df:	e8 3c 17 00 00       	call   140007120 <__cmp_D2A>
   1400059e4:	85 c0                	test   %eax,%eax
   1400059e6:	0f 8e 9f 01 00 00    	jle    140005b8b <__gdtoa+0xb2b>
   1400059ec:	8b 44 24 70          	mov    0x70(%rsp),%eax
   1400059f0:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   1400059f5:	83 c0 02             	add    $0x2,%eax
   1400059f8:	89 44 24 44          	mov    %eax,0x44(%rsp)
   1400059fc:	48 83 44 24 58 01    	addq   $0x1,0x58(%rsp)
   140005a02:	c6 03 31             	movb   $0x31,(%rbx)
   140005a05:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   140005a0c:	00 
   140005a0d:	4c 89 e9             	mov    %r13,%rcx
   140005a10:	e8 ab 10 00 00       	call   140006ac0 <__Bfree_D2A>
   140005a15:	4d 85 e4             	test   %r12,%r12
   140005a18:	74 08                	je     140005a22 <__gdtoa+0x9c2>
   140005a1a:	4c 89 e1             	mov    %r12,%rcx
   140005a1d:	e8 9e 10 00 00       	call   140006ac0 <__Bfree_D2A>
   140005a22:	4c 89 f9             	mov    %r15,%rcx
   140005a25:	e8 96 10 00 00       	call   140006ac0 <__Bfree_D2A>
   140005a2a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
   140005a2f:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   140005a34:	8b 54 24 44          	mov    0x44(%rsp),%edx
   140005a38:	c6 00 00             	movb   $0x0,(%rax)
   140005a3b:	89 17                	mov    %edx,(%rdi)
   140005a3d:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
   140005a42:	48 85 ff             	test   %rdi,%rdi
   140005a45:	74 03                	je     140005a4a <__gdtoa+0x9ea>
   140005a47:	48 89 07             	mov    %rax,(%rdi)
   140005a4a:	8b 44 24 48          	mov    0x48(%rsp),%eax
   140005a4e:	09 06                	or     %eax,(%rsi)
   140005a50:	e9 98 f6 ff ff       	jmp    1400050ed <__gdtoa+0x8d>
   140005a55:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140005a59:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   140005a5d:	f2 0f 58 0d 83 3a 00 	addsd  0x3a83(%rip),%xmm1        # 1400094e8 <.rdata+0x58>
   140005a64:	00 
   140005a65:	66 48 0f 7e ca       	movq   %xmm1,%rdx
   140005a6a:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140005a6f:	48 c1 ea 20          	shr    $0x20,%rdx
   140005a73:	89 c0                	mov    %eax,%eax
   140005a75:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
   140005a7b:	48 c1 e2 20          	shl    $0x20,%rdx
   140005a7f:	48 09 d0             	or     %rdx,%rax
   140005a82:	f2 0f 5c 05 66 3a 00 	subsd  0x3a66(%rip),%xmm0        # 1400094f0 <.rdata+0x60>
   140005a89:	00 
   140005a8a:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140005a8f:	66 0f 2f c1          	comisd %xmm1,%xmm0
   140005a93:	0f 87 73 09 00 00    	ja     14000640c <__gdtoa+0x13ac>
   140005a99:	66 0f 57 0d 5f 3a 00 	xorpd  0x3a5f(%rip),%xmm1        # 140009500 <.rdata+0x70>
   140005aa0:	00 
   140005aa1:	66 0f 2f c8          	comisd %xmm0,%xmm1
   140005aa5:	0f 87 da 00 00 00    	ja     140005b85 <__gdtoa+0xb25>
   140005aab:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
   140005ab2:	00 
   140005ab3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005ab8:	45 85 ed             	test   %r13d,%r13d
   140005abb:	0f 88 a7 00 00 00    	js     140005b68 <__gdtoa+0xb08>
   140005ac1:	8b 44 24 70          	mov    0x70(%rsp),%eax
   140005ac5:	39 47 14             	cmp    %eax,0x14(%rdi)
   140005ac8:	0f 8c 9a 00 00 00    	jl     140005b68 <__gdtoa+0xb08>
   140005ace:	48 8b 15 8b 3c 00 00 	mov    0x3c8b(%rip),%rdx        # 140009760 <.refptr.__tens_D2A>
   140005ad5:	48 98                	cltq   
   140005ad7:	48 89 c7             	mov    %rax,%rdi
   140005ada:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
   140005adf:	45 85 f6             	test   %r14d,%r14d
   140005ae2:	0f 89 aa 04 00 00    	jns    140005f92 <__gdtoa+0xf32>
   140005ae8:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
   140005aec:	85 c0                	test   %eax,%eax
   140005aee:	0f 8f 9e 04 00 00    	jg     140005f92 <__gdtoa+0xf32>
   140005af4:	0f 85 8b 00 00 00    	jne    140005b85 <__gdtoa+0xb25>
   140005afa:	f2 0f 59 15 ee 39 00 	mulsd  0x39ee(%rip),%xmm2        # 1400094f0 <.rdata+0x60>
   140005b01:	00 
   140005b02:	66 0f 2f 94 24 80 00 	comisd 0x80(%rsp),%xmm2
   140005b09:	00 00 
   140005b0b:	73 78                	jae    140005b85 <__gdtoa+0xb25>
   140005b0d:	83 c7 02             	add    $0x2,%edi
   140005b10:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   140005b15:	45 31 ed             	xor    %r13d,%r13d
   140005b18:	45 31 e4             	xor    %r12d,%r12d
   140005b1b:	89 7c 24 44          	mov    %edi,0x44(%rsp)
   140005b1f:	e9 d8 fe ff ff       	jmp    1400059fc <__gdtoa+0x99c>
   140005b24:	0f 1f 40 00          	nopl   0x0(%rax)
   140005b28:	83 7c 24 20 02       	cmpl   $0x2,0x20(%rsp)
   140005b2d:	0f 85 bd fb ff ff    	jne    1400056f0 <__gdtoa+0x690>
   140005b33:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
   140005b3a:	00 
   140005b3b:	45 85 f6             	test   %r14d,%r14d
   140005b3e:	b9 01 00 00 00       	mov    $0x1,%ecx
   140005b43:	41 0f 4f ce          	cmovg  %r14d,%ecx
   140005b47:	89 8c 24 9c 00 00 00 	mov    %ecx,0x9c(%rsp)
   140005b4e:	41 89 ce             	mov    %ecx,%r14d
   140005b51:	89 8c 24 8c 00 00 00 	mov    %ecx,0x8c(%rsp)
   140005b58:	89 4c 24 4c          	mov    %ecx,0x4c(%rsp)
   140005b5c:	e9 5c f9 ff ff       	jmp    1400054bd <__gdtoa+0x45d>
   140005b61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005b68:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140005b6c:	85 c0                	test   %eax,%eax
   140005b6e:	0f 85 5c fc ff ff    	jne    1400057d0 <__gdtoa+0x770>
   140005b74:	44 8b 6c 24 74       	mov    0x74(%rsp),%r13d
   140005b79:	8b 6c 24 60          	mov    0x60(%rsp),%ebp
   140005b7d:	45 31 e4             	xor    %r12d,%r12d
   140005b80:	e9 dd fc ff ff       	jmp    140005862 <__gdtoa+0x802>
   140005b85:	45 31 ed             	xor    %r13d,%r13d
   140005b88:	45 31 e4             	xor    %r12d,%r12d
   140005b8b:	41 f7 de             	neg    %r14d
   140005b8e:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   140005b95:	00 
   140005b96:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   140005b9b:	44 89 74 24 44       	mov    %r14d,0x44(%rsp)
   140005ba0:	e9 68 fe ff ff       	jmp    140005a0d <__gdtoa+0x9ad>
   140005ba5:	0f 1f 00             	nopl   (%rax)
   140005ba8:	4c 89 e9             	mov    %r13,%rcx
   140005bab:	e8 50 12 00 00       	call   140006e00 <__pow5mult_D2A>
   140005bb0:	84 db                	test   %bl,%bl
   140005bb2:	44 8b 5c 24 74       	mov    0x74(%rsp),%r11d
   140005bb7:	49 89 c5             	mov    %rax,%r13
   140005bba:	0f 85 a4 08 00 00    	jne    140006464 <__gdtoa+0x1404>
   140005bc0:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%rsp)
   140005bc7:	00 
   140005bc8:	41 8b 45 14          	mov    0x14(%r13),%eax
   140005bcc:	83 e8 01             	sub    $0x1,%eax
   140005bcf:	48 98                	cltq   
   140005bd1:	41 0f bd 7c 85 18    	bsr    0x18(%r13,%rax,4),%edi
   140005bd7:	83 f7 1f             	xor    $0x1f,%edi
   140005bda:	e9 5e fd ff ff       	jmp    14000593d <__gdtoa+0x8dd>
   140005bdf:	90                   	nop
   140005be0:	8b 44 24 70          	mov    0x70(%rsp),%eax
   140005be4:	83 c0 01             	add    $0x1,%eax
   140005be7:	89 44 24 44          	mov    %eax,0x44(%rsp)
   140005beb:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140005bef:	85 c0                	test   %eax,%eax
   140005bf1:	0f 84 69 02 00 00    	je     140005e60 <__gdtoa+0xe00>
   140005bf7:	8d 14 2f             	lea    (%rdi,%rbp,1),%edx
   140005bfa:	85 d2                	test   %edx,%edx
   140005bfc:	7e 0b                	jle    140005c09 <__gdtoa+0xba9>
   140005bfe:	4c 89 e1             	mov    %r12,%rcx
   140005c01:	e8 0a 14 00 00       	call   140007010 <__lshift_D2A>
   140005c06:	49 89 c4             	mov    %rax,%r12
   140005c09:	8b 44 24 74          	mov    0x74(%rsp),%eax
   140005c0d:	4d 89 e6             	mov    %r12,%r14
   140005c10:	85 c0                	test   %eax,%eax
   140005c12:	0f 85 91 07 00 00    	jne    1400063a9 <__gdtoa+0x1349>
   140005c18:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
   140005c1d:	48 89 74 24 68       	mov    %rsi,0x68(%rsp)
   140005c22:	b8 01 00 00 00       	mov    $0x1,%eax
   140005c27:	48 89 fe             	mov    %rdi,%rsi
   140005c2a:	e9 a4 00 00 00       	jmp    140005cd3 <__gdtoa+0xc73>
   140005c2f:	90                   	nop
   140005c30:	4c 89 c1             	mov    %r8,%rcx
   140005c33:	e8 88 0e 00 00       	call   140006ac0 <__Bfree_D2A>
   140005c38:	ba 01 00 00 00       	mov    $0x1,%edx
   140005c3d:	85 db                	test   %ebx,%ebx
   140005c3f:	0f 88 1b 06 00 00    	js     140006260 <__gdtoa+0x1200>
   140005c45:	0b 5c 24 20          	or     0x20(%rsp),%ebx
   140005c49:	75 0e                	jne    140005c59 <__gdtoa+0xbf9>
   140005c4b:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
   140005c50:	f6 00 01             	testb  $0x1,(%rax)
   140005c53:	0f 84 07 06 00 00    	je     140006260 <__gdtoa+0x1200>
   140005c59:	48 8d 5e 01          	lea    0x1(%rsi),%rbx
   140005c5d:	48 89 df             	mov    %rbx,%rdi
   140005c60:	85 d2                	test   %edx,%edx
   140005c62:	7e 0b                	jle    140005c6f <__gdtoa+0xc0f>
   140005c64:	83 7c 24 54 02       	cmpl   $0x2,0x54(%rsp)
   140005c69:	0f 85 b5 07 00 00    	jne    140006424 <__gdtoa+0x13c4>
   140005c6f:	40 88 6b ff          	mov    %bpl,-0x1(%rbx)
   140005c73:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
   140005c77:	39 84 24 9c 00 00 00 	cmp    %eax,0x9c(%rsp)
   140005c7e:	0f 84 d0 07 00 00    	je     140006454 <__gdtoa+0x13f4>
   140005c84:	4c 89 f9             	mov    %r15,%rcx
   140005c87:	45 31 c0             	xor    %r8d,%r8d
   140005c8a:	ba 0a 00 00 00       	mov    $0xa,%edx
   140005c8f:	e8 9c 0e 00 00       	call   140006b30 <__multadd_D2A>
   140005c94:	45 31 c0             	xor    %r8d,%r8d
   140005c97:	ba 0a 00 00 00       	mov    $0xa,%edx
   140005c9c:	4c 89 e1             	mov    %r12,%rcx
   140005c9f:	49 89 c7             	mov    %rax,%r15
   140005ca2:	4d 39 f4             	cmp    %r14,%r12
   140005ca5:	0f 84 2d 01 00 00    	je     140005dd8 <__gdtoa+0xd78>
   140005cab:	e8 80 0e 00 00       	call   140006b30 <__multadd_D2A>
   140005cb0:	4c 89 f1             	mov    %r14,%rcx
   140005cb3:	45 31 c0             	xor    %r8d,%r8d
   140005cb6:	ba 0a 00 00 00       	mov    $0xa,%edx
   140005cbb:	49 89 c4             	mov    %rax,%r12
   140005cbe:	e8 6d 0e 00 00       	call   140006b30 <__multadd_D2A>
   140005cc3:	49 89 c6             	mov    %rax,%r14
   140005cc6:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   140005ccd:	48 89 de             	mov    %rbx,%rsi
   140005cd0:	83 c0 01             	add    $0x1,%eax
   140005cd3:	4c 89 ea             	mov    %r13,%rdx
   140005cd6:	4c 89 f9             	mov    %r15,%rcx
   140005cd9:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140005ce0:	e8 0b f2 ff ff       	call   140004ef0 <__quorem_D2A>
   140005ce5:	4c 89 e2             	mov    %r12,%rdx
   140005ce8:	4c 89 f9             	mov    %r15,%rcx
   140005ceb:	89 c7                	mov    %eax,%edi
   140005ced:	8d 68 30             	lea    0x30(%rax),%ebp
   140005cf0:	e8 2b 14 00 00       	call   140007120 <__cmp_D2A>
   140005cf5:	4c 89 f2             	mov    %r14,%rdx
   140005cf8:	4c 89 e9             	mov    %r13,%rcx
   140005cfb:	89 c3                	mov    %eax,%ebx
   140005cfd:	e8 6e 14 00 00       	call   140007170 <__diff_D2A>
   140005d02:	49 89 c0             	mov    %rax,%r8
   140005d05:	8b 40 10             	mov    0x10(%rax),%eax
   140005d08:	85 c0                	test   %eax,%eax
   140005d0a:	0f 85 20 ff ff ff    	jne    140005c30 <__gdtoa+0xbd0>
   140005d10:	4c 89 c2             	mov    %r8,%rdx
   140005d13:	4c 89 f9             	mov    %r15,%rcx
   140005d16:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   140005d1b:	e8 00 14 00 00       	call   140007120 <__cmp_D2A>
   140005d20:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140005d25:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140005d29:	e8 92 0d 00 00       	call   140006ac0 <__Bfree_D2A>
   140005d2e:	8b 54 24 50          	mov    0x50(%rsp),%edx
   140005d32:	0b 54 24 20          	or     0x20(%rsp),%edx
   140005d36:	0f 85 f1 09 00 00    	jne    14000672d <__gdtoa+0x16cd>
   140005d3c:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
   140005d41:	8b 00                	mov    (%rax),%eax
   140005d43:	89 44 24 50          	mov    %eax,0x50(%rsp)
   140005d47:	83 e0 01             	and    $0x1,%eax
   140005d4a:	0b 44 24 54          	or     0x54(%rsp),%eax
   140005d4e:	0f 85 e9 fe ff ff    	jne    140005c3d <__gdtoa+0xbdd>
   140005d54:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140005d59:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   140005d5e:	83 fd 39             	cmp    $0x39,%ebp
   140005d61:	0f 84 80 07 00 00    	je     1400064e7 <__gdtoa+0x1487>
   140005d67:	85 db                	test   %ebx,%ebx
   140005d69:	0f 8e 95 09 00 00    	jle    140006704 <__gdtoa+0x16a4>
   140005d6f:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   140005d76:	00 
   140005d77:	8d 6f 31             	lea    0x31(%rdi),%ebp
   140005d7a:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140005d7f:	4d 89 e0             	mov    %r12,%r8
   140005d82:	4d 89 f4             	mov    %r14,%r12
   140005d85:	40 88 28             	mov    %bpl,(%rax)
   140005d88:	48 8d 78 01          	lea    0x1(%rax),%rdi
   140005d8c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005d90:	4c 89 e9             	mov    %r13,%rcx
   140005d93:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
   140005d98:	e8 23 0d 00 00       	call   140006ac0 <__Bfree_D2A>
   140005d9d:	4d 85 e4             	test   %r12,%r12
   140005da0:	0f 84 1f 03 00 00    	je     1400060c5 <__gdtoa+0x1065>
   140005da6:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
   140005dab:	4d 85 c0             	test   %r8,%r8
   140005dae:	0f 84 b1 07 00 00    	je     140006565 <__gdtoa+0x1505>
   140005db4:	4d 39 e0             	cmp    %r12,%r8
   140005db7:	0f 84 a8 07 00 00    	je     140006565 <__gdtoa+0x1505>
   140005dbd:	4c 89 c1             	mov    %r8,%rcx
   140005dc0:	e8 fb 0c 00 00       	call   140006ac0 <__Bfree_D2A>
   140005dc5:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   140005dca:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
   140005dcf:	e9 46 fc ff ff       	jmp    140005a1a <__gdtoa+0x9ba>
   140005dd4:	0f 1f 40 00          	nopl   0x0(%rax)
   140005dd8:	e8 53 0d 00 00       	call   140006b30 <__multadd_D2A>
   140005ddd:	49 89 c4             	mov    %rax,%r12
   140005de0:	49 89 c6             	mov    %rax,%r14
   140005de3:	e9 de fe ff ff       	jmp    140005cc6 <__gdtoa+0xc66>
   140005de8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005def:	00 
   140005df0:	4c 89 ea             	mov    %r13,%rdx
   140005df3:	4c 89 f9             	mov    %r15,%rcx
   140005df6:	e8 25 13 00 00       	call   140007120 <__cmp_D2A>
   140005dfb:	85 c0                	test   %eax,%eax
   140005dfd:	0f 89 a3 fb ff ff    	jns    1400059a6 <__gdtoa+0x946>
   140005e03:	8b 44 24 70          	mov    0x70(%rsp),%eax
   140005e07:	4c 89 f9             	mov    %r15,%rcx
   140005e0a:	45 31 c0             	xor    %r8d,%r8d
   140005e0d:	ba 0a 00 00 00       	mov    $0xa,%edx
   140005e12:	83 e8 01             	sub    $0x1,%eax
   140005e15:	89 44 24 44          	mov    %eax,0x44(%rsp)
   140005e19:	e8 12 0d 00 00       	call   140006b30 <__multadd_D2A>
   140005e1e:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
   140005e25:	8b 4c 24 68          	mov    0x68(%rsp),%ecx
   140005e29:	49 89 c7             	mov    %rax,%r15
   140005e2c:	85 d2                	test   %edx,%edx
   140005e2e:	0f 9e c0             	setle  %al
   140005e31:	21 c3                	and    %eax,%ebx
   140005e33:	85 c9                	test   %ecx,%ecx
   140005e35:	0f 85 b6 07 00 00    	jne    1400065f1 <__gdtoa+0x1591>
   140005e3b:	84 db                	test   %bl,%bl
   140005e3d:	0f 85 0a 07 00 00    	jne    14000654d <__gdtoa+0x14ed>
   140005e43:	8b 44 24 70          	mov    0x70(%rsp),%eax
   140005e47:	89 44 24 44          	mov    %eax,0x44(%rsp)
   140005e4b:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
   140005e52:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
   140005e56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005e5d:	00 00 00 
   140005e60:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
   140005e65:	8b 5c 24 4c          	mov    0x4c(%rsp),%ebx
   140005e69:	b8 01 00 00 00       	mov    $0x1,%eax
   140005e6e:	eb 1d                	jmp    140005e8d <__gdtoa+0xe2d>
   140005e70:	4c 89 f9             	mov    %r15,%rcx
   140005e73:	45 31 c0             	xor    %r8d,%r8d
   140005e76:	ba 0a 00 00 00       	mov    $0xa,%edx
   140005e7b:	e8 b0 0c 00 00       	call   140006b30 <__multadd_D2A>
   140005e80:	49 89 c7             	mov    %rax,%r15
   140005e83:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   140005e8a:	83 c0 01             	add    $0x1,%eax
   140005e8d:	4c 89 ea             	mov    %r13,%rdx
   140005e90:	4c 89 f9             	mov    %r15,%rcx
   140005e93:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140005e9a:	48 83 c7 01          	add    $0x1,%rdi
   140005e9e:	e8 4d f0 ff ff       	call   140004ef0 <__quorem_D2A>
   140005ea3:	8d 68 30             	lea    0x30(%rax),%ebp
   140005ea6:	40 88 6f ff          	mov    %bpl,-0x1(%rdi)
   140005eaa:	39 9c 24 9c 00 00 00 	cmp    %ebx,0x9c(%rsp)
   140005eb1:	7c bd                	jl     140005e70 <__gdtoa+0xe10>
   140005eb3:	45 31 c0             	xor    %r8d,%r8d
   140005eb6:	8b 5c 24 54          	mov    0x54(%rsp),%ebx
   140005eba:	85 db                	test   %ebx,%ebx
   140005ebc:	0f 84 6b 02 00 00    	je     14000612d <__gdtoa+0x10cd>
   140005ec2:	41 8b 47 14          	mov    0x14(%r15),%eax
   140005ec6:	0f b6 57 ff          	movzbl -0x1(%rdi),%edx
   140005eca:	83 fb 02             	cmp    $0x2,%ebx
   140005ecd:	0f 84 96 02 00 00    	je     140006169 <__gdtoa+0x1109>
   140005ed3:	83 f8 01             	cmp    $0x1,%eax
   140005ed6:	0f 8f 95 01 00 00    	jg     140006071 <__gdtoa+0x1011>
   140005edc:	41 8b 4f 18          	mov    0x18(%r15),%ecx
   140005ee0:	85 c9                	test   %ecx,%ecx
   140005ee2:	0f 85 89 01 00 00    	jne    140006071 <__gdtoa+0x1011>
   140005ee8:	48 89 f8             	mov    %rdi,%rax
   140005eeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005ef0:	48 89 c7             	mov    %rax,%rdi
   140005ef3:	48 83 e8 01          	sub    $0x1,%rax
   140005ef7:	80 38 30             	cmpb   $0x30,(%rax)
   140005efa:	74 f4                	je     140005ef0 <__gdtoa+0xe90>
   140005efc:	e9 8f fe ff ff       	jmp    140005d90 <__gdtoa+0xd30>
   140005f01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005f08:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
   140005f0f:	00 
   140005f10:	e9 82 f5 ff ff       	jmp    140005497 <__gdtoa+0x437>
   140005f15:	0f 1f 00             	nopl   (%rax)
   140005f18:	c7 84 24 9c 00 00 00 	movl   $0x1,0x9c(%rsp)
   140005f1f:	01 00 00 00 
   140005f23:	b9 01 00 00 00       	mov    $0x1,%ecx
   140005f28:	e9 90 f5 ff ff       	jmp    1400054bd <__gdtoa+0x45d>
   140005f2d:	44 89 e8             	mov    %r13d,%eax
   140005f30:	29 d0                	sub    %edx,%eax
   140005f32:	83 c0 01             	add    $0x1,%eax
   140005f35:	41 83 fa 01          	cmp    $0x1,%r10d
   140005f39:	44 8b 54 24 4c       	mov    0x4c(%rsp),%r10d
   140005f3e:	0f 9f c1             	setg   %cl
   140005f41:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140005f48:	45 85 d2             	test   %r10d,%r10d
   140005f4b:	0f 9f c2             	setg   %dl
   140005f4e:	84 d1                	test   %dl,%cl
   140005f50:	74 0e                	je     140005f60 <__gdtoa+0xf00>
   140005f52:	44 39 d0             	cmp    %r10d,%eax
   140005f55:	0f 8f ae f8 ff ff    	jg     140005809 <__gdtoa+0x7a9>
   140005f5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005f60:	8b 54 24 60          	mov    0x60(%rsp),%edx
   140005f64:	41 01 c3             	add    %eax,%r11d
   140005f67:	44 8b 6c 24 74       	mov    0x74(%rsp),%r13d
   140005f6c:	01 d0                	add    %edx,%eax
   140005f6e:	89 d5                	mov    %edx,%ebp
   140005f70:	89 44 24 60          	mov    %eax,0x60(%rsp)
   140005f74:	e9 ca f8 ff ff       	jmp    140005843 <__gdtoa+0x7e3>
   140005f79:	48 63 44 24 70       	movslq 0x70(%rsp),%rax
   140005f7e:	48 8b 15 db 37 00 00 	mov    0x37db(%rip),%rdx        # 140009760 <.refptr.__tens_D2A>
   140005f85:	c7 44 24 4c ff ff ff 	movl   $0xffffffff,0x4c(%rsp)
   140005f8c:	ff 
   140005f8d:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
   140005f92:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140005f99:	00 00 
   140005f9b:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
   140005fa0:	c7 84 24 9c 00 00 00 	movl   $0x1,0x9c(%rsp)
   140005fa7:	01 00 00 00 
   140005fab:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140005faf:	48 8d 4f 01          	lea    0x1(%rdi),%rcx
   140005fb3:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   140005fb7:	f2 0f 2c d1          	cvttsd2si %xmm1,%edx
   140005fbb:	66 0f ef c9          	pxor   %xmm1,%xmm1
   140005fbf:	f2 0f 2a ca          	cvtsi2sd %edx,%xmm1
   140005fc3:	8d 42 30             	lea    0x30(%rdx),%eax
   140005fc6:	88 07                	mov    %al,(%rdi)
   140005fc8:	8b 44 24 70          	mov    0x70(%rsp),%eax
   140005fcc:	83 c0 01             	add    $0x1,%eax
   140005fcf:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
   140005fd3:	89 44 24 44          	mov    %eax,0x44(%rsp)
   140005fd7:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   140005fdb:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   140005fdf:	7a 06                	jp     140005fe7 <__gdtoa+0xf87>
   140005fe1:	0f 84 37 01 00 00    	je     14000611e <__gdtoa+0x10be>
   140005fe7:	f2 0f 10 1d e9 34 00 	movsd  0x34e9(%rip),%xmm3        # 1400094d8 <.rdata+0x48>
   140005fee:	00 
   140005fef:	eb 47                	jmp    140006038 <__gdtoa+0xfd8>
   140005ff1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005ff8:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
   140005ffc:	83 c0 01             	add    $0x1,%eax
   140005fff:	48 83 c1 01          	add    $0x1,%rcx
   140006003:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   14000600a:	66 0f 28 c8          	movapd %xmm0,%xmm1
   14000600e:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   140006012:	f2 0f 2c d1          	cvttsd2si %xmm1,%edx
   140006016:	66 0f ef c9          	pxor   %xmm1,%xmm1
   14000601a:	f2 0f 2a ca          	cvtsi2sd %edx,%xmm1
   14000601e:	8d 42 30             	lea    0x30(%rdx),%eax
   140006021:	88 41 ff             	mov    %al,-0x1(%rcx)
   140006024:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
   140006028:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   14000602c:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   140006030:	7a 06                	jp     140006038 <__gdtoa+0xfd8>
   140006032:	0f 84 e6 00 00 00    	je     14000611e <__gdtoa+0x10be>
   140006038:	8b 84 24 9c 00 00 00 	mov    0x9c(%rsp),%eax
   14000603f:	3b 44 24 4c          	cmp    0x4c(%rsp),%eax
   140006043:	75 b3                	jne    140005ff8 <__gdtoa+0xf98>
   140006045:	8b 44 24 54          	mov    0x54(%rsp),%eax
   140006049:	85 c0                	test   %eax,%eax
   14000604b:	0f 84 5e 05 00 00    	je     1400065af <__gdtoa+0x154f>
   140006051:	83 f8 01             	cmp    $0x1,%eax
   140006054:	0f 84 e3 05 00 00    	je     14000663d <__gdtoa+0x15dd>
   14000605a:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   14000605f:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   140006066:	00 
   140006067:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
   14000606c:	e9 b1 f9 ff ff       	jmp    140005a22 <__gdtoa+0x9c2>
   140006071:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
   140006076:	eb 14                	jmp    14000608c <__gdtoa+0x102c>
   140006078:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000607f:	00 
   140006080:	48 39 c8             	cmp    %rcx,%rax
   140006083:	74 65                	je     1400060ea <__gdtoa+0x108a>
   140006085:	0f b6 50 ff          	movzbl -0x1(%rax),%edx
   140006089:	48 89 c7             	mov    %rax,%rdi
   14000608c:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
   140006090:	80 fa 39             	cmp    $0x39,%dl
   140006093:	74 eb                	je     140006080 <__gdtoa+0x1020>
   140006095:	83 c2 01             	add    $0x1,%edx
   140006098:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   14000609f:	00 
   1400060a0:	88 10                	mov    %dl,(%rax)
   1400060a2:	e9 e9 fc ff ff       	jmp    140005d90 <__gdtoa+0xd30>
   1400060a7:	8b 54 24 74          	mov    0x74(%rsp),%edx
   1400060ab:	4c 89 f9             	mov    %r15,%rcx
   1400060ae:	44 89 5c 24 78       	mov    %r11d,0x78(%rsp)
   1400060b3:	e8 48 0d 00 00       	call   140006e00 <__pow5mult_D2A>
   1400060b8:	44 8b 5c 24 78       	mov    0x78(%rsp),%r11d
   1400060bd:	49 89 c7             	mov    %rax,%r15
   1400060c0:	e9 22 f8 ff ff       	jmp    1400058e7 <__gdtoa+0x887>
   1400060c5:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   1400060ca:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
   1400060cf:	e9 4e f9 ff ff       	jmp    140005a22 <__gdtoa+0x9c2>
   1400060d4:	89 c2                	mov    %eax,%edx
   1400060d6:	45 31 ed             	xor    %r13d,%r13d
   1400060d9:	2b 54 24 74          	sub    0x74(%rsp),%edx
   1400060dd:	89 44 24 74          	mov    %eax,0x74(%rsp)
   1400060e1:	01 54 24 50          	add    %edx,0x50(%rsp)
   1400060e5:	e9 37 f7 ff ff       	jmp    140005821 <__gdtoa+0x7c1>
   1400060ea:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   1400060ef:	83 44 24 44 01       	addl   $0x1,0x44(%rsp)
   1400060f4:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   1400060fb:	00 
   1400060fc:	c6 00 31             	movb   $0x31,(%rax)
   1400060ff:	e9 8c fc ff ff       	jmp    140005d90 <__gdtoa+0xd30>
   140006104:	4c 89 f9             	mov    %r15,%rcx
   140006107:	44 89 5c 24 74       	mov    %r11d,0x74(%rsp)
   14000610c:	e8 ef 0c 00 00       	call   140006e00 <__pow5mult_D2A>
   140006111:	44 8b 5c 24 74       	mov    0x74(%rsp),%r11d
   140006116:	49 89 c7             	mov    %rax,%r15
   140006119:	e9 c9 f7 ff ff       	jmp    1400058e7 <__gdtoa+0x887>
   14000611e:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   140006123:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
   140006128:	e9 f5 f8 ff ff       	jmp    140005a22 <__gdtoa+0x9c2>
   14000612d:	4c 89 f9             	mov    %r15,%rcx
   140006130:	ba 01 00 00 00       	mov    $0x1,%edx
   140006135:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
   14000613a:	e8 d1 0e 00 00       	call   140007010 <__lshift_D2A>
   14000613f:	4c 89 ea             	mov    %r13,%rdx
   140006142:	48 89 c1             	mov    %rax,%rcx
   140006145:	49 89 c7             	mov    %rax,%r15
   140006148:	e8 d3 0f 00 00       	call   140007120 <__cmp_D2A>
   14000614d:	0f b6 57 ff          	movzbl -0x1(%rdi),%edx
   140006151:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
   140006156:	85 c0                	test   %eax,%eax
   140006158:	0f 8f 13 ff ff ff    	jg     140006071 <__gdtoa+0x1011>
   14000615e:	75 09                	jne    140006169 <__gdtoa+0x1109>
   140006160:	83 e5 01             	and    $0x1,%ebp
   140006163:	0f 85 08 ff ff ff    	jne    140006071 <__gdtoa+0x1011>
   140006169:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
   14000616e:	0f 8e b0 04 00 00    	jle    140006624 <__gdtoa+0x15c4>
   140006174:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   14000617b:	00 
   14000617c:	e9 67 fd ff ff       	jmp    140005ee8 <__gdtoa+0xe88>
   140006181:	66 0f 28 e2          	movapd %xmm2,%xmm4
   140006185:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
   14000618a:	66 0f 28 c8          	movapd %xmm0,%xmm1
   14000618e:	45 31 d2             	xor    %r10d,%r10d
   140006191:	f2 0f 59 e3          	mulsd  %xmm3,%xmm4
   140006195:	f2 0f 10 15 3b 33 00 	movsd  0x333b(%rip),%xmm2        # 1400094d8 <.rdata+0x48>
   14000619c:	00 
   14000619d:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400061a2:	eb 0e                	jmp    1400061b2 <__gdtoa+0x1152>
   1400061a4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400061a8:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
   1400061ac:	83 c1 01             	add    $0x1,%ecx
   1400061af:	41 89 d2             	mov    %edx,%r10d
   1400061b2:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
   1400061b6:	89 8c 24 9c 00 00 00 	mov    %ecx,0x9c(%rsp)
   1400061bd:	85 c0                	test   %eax,%eax
   1400061bf:	74 0f                	je     1400061d0 <__gdtoa+0x1170>
   1400061c1:	66 0f ef db          	pxor   %xmm3,%xmm3
   1400061c5:	41 89 d2             	mov    %edx,%r10d
   1400061c8:	f2 0f 2a d8          	cvtsi2sd %eax,%xmm3
   1400061cc:	f2 0f 5c cb          	subsd  %xmm3,%xmm1
   1400061d0:	49 83 c0 01          	add    $0x1,%r8
   1400061d4:	83 c0 30             	add    $0x30,%eax
   1400061d7:	41 88 40 ff          	mov    %al,-0x1(%r8)
   1400061db:	8b 8c 24 9c 00 00 00 	mov    0x9c(%rsp),%ecx
   1400061e2:	44 39 c9             	cmp    %r9d,%ecx
   1400061e5:	75 c1                	jne    1400061a8 <__gdtoa+0x1148>
   1400061e7:	45 84 d2             	test   %r10b,%r10b
   1400061ea:	0f 84 f8 03 00 00    	je     1400065e8 <__gdtoa+0x1588>
   1400061f0:	f2 0f 10 05 18 33 00 	movsd  0x3318(%rip),%xmm0        # 140009510 <.rdata+0x80>
   1400061f7:	00 
   1400061f8:	66 0f 28 d4          	movapd %xmm4,%xmm2
   1400061fc:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
   140006200:	66 0f 2f ca          	comisd %xmm2,%xmm1
   140006204:	0f 87 98 03 00 00    	ja     1400065a2 <__gdtoa+0x1542>
   14000620a:	f2 0f 5c c4          	subsd  %xmm4,%xmm0
   14000620e:	66 0f 2f c1          	comisd %xmm1,%xmm0
   140006212:	0f 86 93 f8 ff ff    	jbe    140005aab <__gdtoa+0xa4b>
   140006218:	31 d2                	xor    %edx,%edx
   14000621a:	66 0f 2e ce          	ucomisd %xmm6,%xmm1
   14000621e:	b9 01 00 00 00       	mov    $0x1,%ecx
   140006223:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   140006228:	0f 9a c2             	setp   %dl
   14000622b:	0f 45 d1             	cmovne %ecx,%edx
   14000622e:	4c 89 c1             	mov    %r8,%rcx
   140006231:	c1 e2 04             	shl    $0x4,%edx
   140006234:	89 54 24 48          	mov    %edx,0x48(%rsp)
   140006238:	eb 0d                	jmp    140006247 <__gdtoa+0x11e7>
   14000623a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006240:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
   140006244:	48 89 d1             	mov    %rdx,%rcx
   140006247:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
   14000624b:	3c 30                	cmp    $0x30,%al
   14000624d:	74 f1                	je     140006240 <__gdtoa+0x11e0>
   14000624f:	8d 45 01             	lea    0x1(%rbp),%eax
   140006252:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
   140006257:	89 44 24 44          	mov    %eax,0x44(%rsp)
   14000625b:	e9 c2 f7 ff ff       	jmp    140005a22 <__gdtoa+0x9c2>
   140006260:	44 8b 5c 24 54       	mov    0x54(%rsp),%r11d
   140006265:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   14000626a:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   14000626f:	45 85 db             	test   %r11d,%r11d
   140006272:	0f 84 11 02 00 00    	je     140006489 <__gdtoa+0x1429>
   140006278:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
   14000627d:	0f 8e f6 03 00 00    	jle    140006679 <__gdtoa+0x1619>
   140006283:	83 7c 24 54 02       	cmpl   $0x2,0x54(%rsp)
   140006288:	0f 84 3d 02 00 00    	je     1400064cb <__gdtoa+0x146b>
   14000628e:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
   140006293:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140006298:	eb 4b                	jmp    1400062e5 <__gdtoa+0x1285>
   14000629a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400062a0:	40 88 6e ff          	mov    %bpl,-0x1(%rsi)
   1400062a4:	45 31 c0             	xor    %r8d,%r8d
   1400062a7:	4c 89 f1             	mov    %r14,%rcx
   1400062aa:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400062af:	48 89 f3             	mov    %rsi,%rbx
   1400062b2:	e8 79 08 00 00       	call   140006b30 <__multadd_D2A>
   1400062b7:	4d 39 f4             	cmp    %r14,%r12
   1400062ba:	4c 89 f9             	mov    %r15,%rcx
   1400062bd:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400062c2:	4c 0f 44 e0          	cmove  %rax,%r12
   1400062c6:	45 31 c0             	xor    %r8d,%r8d
   1400062c9:	48 89 c7             	mov    %rax,%rdi
   1400062cc:	e8 5f 08 00 00       	call   140006b30 <__multadd_D2A>
   1400062d1:	4c 89 ea             	mov    %r13,%rdx
   1400062d4:	49 89 fe             	mov    %rdi,%r14
   1400062d7:	48 89 c1             	mov    %rax,%rcx
   1400062da:	49 89 c7             	mov    %rax,%r15
   1400062dd:	e8 0e ec ff ff       	call   140004ef0 <__quorem_D2A>
   1400062e2:	8d 68 30             	lea    0x30(%rax),%ebp
   1400062e5:	4c 89 f2             	mov    %r14,%rdx
   1400062e8:	4c 89 e9             	mov    %r13,%rcx
   1400062eb:	48 8d 73 01          	lea    0x1(%rbx),%rsi
   1400062ef:	e8 2c 0e 00 00       	call   140007120 <__cmp_D2A>
   1400062f4:	85 c0                	test   %eax,%eax
   1400062f6:	7f a8                	jg     1400062a0 <__gdtoa+0x1240>
   1400062f8:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
   1400062fd:	48 89 f3             	mov    %rsi,%rbx
   140006300:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
   140006305:	83 fd 39             	cmp    $0x39,%ebp
   140006308:	0f 84 e2 01 00 00    	je     1400064f0 <__gdtoa+0x1490>
   14000630e:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   140006315:	00 
   140006316:	4d 89 e0             	mov    %r12,%r8
   140006319:	83 c5 01             	add    $0x1,%ebp
   14000631c:	4d 89 f4             	mov    %r14,%r12
   14000631f:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140006324:	48 89 df             	mov    %rbx,%rdi
   140006327:	40 88 28             	mov    %bpl,(%rax)
   14000632a:	e9 61 fa ff ff       	jmp    140005d90 <__gdtoa+0xd30>
   14000632f:	c7 84 24 9c 00 00 00 	movl   $0x0,0x9c(%rsp)
   140006336:	00 00 00 00 
   14000633a:	8b 6c 24 60          	mov    0x60(%rsp),%ebp
   14000633e:	2b 6c 24 4c          	sub    0x4c(%rsp),%ebp
   140006342:	e9 fc f4 ff ff       	jmp    140005843 <__gdtoa+0x7e3>
   140006347:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
   14000634c:	45 85 c0             	test   %r8d,%r8d
   14000634f:	0f 84 00 f7 ff ff    	je     140005a55 <__gdtoa+0x9f5>
   140006355:	44 8b 8c 24 8c 00 00 	mov    0x8c(%rsp),%r9d
   14000635c:	00 
   14000635d:	45 85 c9             	test   %r9d,%r9d
   140006360:	0f 8e 45 f7 ff ff    	jle    140005aab <__gdtoa+0xa4b>
   140006366:	f2 0f 59 05 6a 31 00 	mulsd  0x316a(%rip),%xmm0        # 1400094d8 <.rdata+0x48>
   14000636d:	00 
   14000636e:	f2 0f 10 0d 6a 31 00 	movsd  0x316a(%rip),%xmm1        # 1400094e0 <.rdata+0x50>
   140006375:	00 
   140006376:	bd ff ff ff ff       	mov    $0xffffffff,%ebp
   14000637b:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   14000637f:	f2 0f 58 0d 61 31 00 	addsd  0x3161(%rip),%xmm1        # 1400094e8 <.rdata+0x58>
   140006386:	00 
   140006387:	66 48 0f 7e c9       	movq   %xmm1,%rcx
   14000638c:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140006391:	48 c1 e9 20          	shr    $0x20,%rcx
   140006395:	89 c0                	mov    %eax,%eax
   140006397:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
   14000639d:	48 c1 e1 20          	shl    $0x20,%rcx
   1400063a1:	48 09 c8             	or     %rcx,%rax
   1400063a4:	e9 f1 f1 ff ff       	jmp    14000559a <__gdtoa+0x53a>
   1400063a9:	41 8b 4c 24 08       	mov    0x8(%r12),%ecx
   1400063ae:	e8 0d 06 00 00       	call   1400069c0 <__Balloc_D2A>
   1400063b3:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
   1400063b8:	49 89 c6             	mov    %rax,%r14
   1400063bb:	48 8d 48 10          	lea    0x10(%rax),%rcx
   1400063bf:	49 63 44 24 14       	movslq 0x14(%r12),%rax
   1400063c4:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
   1400063cb:	00 
   1400063cc:	e8 57 12 00 00       	call   140007628 <memcpy>
   1400063d1:	4c 89 f1             	mov    %r14,%rcx
   1400063d4:	ba 01 00 00 00       	mov    $0x1,%edx
   1400063d9:	e8 32 0c 00 00       	call   140007010 <__lshift_D2A>
   1400063de:	49 89 c6             	mov    %rax,%r14
   1400063e1:	e9 32 f8 ff ff       	jmp    140005c18 <__gdtoa+0xbb8>
   1400063e6:	8b 47 04             	mov    0x4(%rdi),%eax
   1400063e9:	83 c0 01             	add    $0x1,%eax
   1400063ec:	3b 44 24 44          	cmp    0x44(%rsp),%eax
   1400063f0:	0f 8d 34 f5 ff ff    	jge    14000592a <__gdtoa+0x8ca>
   1400063f6:	83 44 24 60 01       	addl   $0x1,0x60(%rsp)
   1400063fb:	41 83 c3 01          	add    $0x1,%r11d
   1400063ff:	c7 44 24 74 01 00 00 	movl   $0x1,0x74(%rsp)
   140006406:	00 
   140006407:	e9 1e f5 ff ff       	jmp    14000592a <__gdtoa+0x8ca>
   14000640c:	c7 44 24 44 02 00 00 	movl   $0x2,0x44(%rsp)
   140006413:	00 
   140006414:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   140006419:	45 31 ed             	xor    %r13d,%r13d
   14000641c:	45 31 e4             	xor    %r12d,%r12d
   14000641f:	e9 d8 f5 ff ff       	jmp    1400059fc <__gdtoa+0x99c>
   140006424:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140006429:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   14000642e:	83 fd 39             	cmp    $0x39,%ebp
   140006431:	0f 84 b9 00 00 00    	je     1400064f0 <__gdtoa+0x1490>
   140006437:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000643c:	8d 45 01             	lea    0x1(%rbp),%eax
   14000643f:	4d 89 e0             	mov    %r12,%r8
   140006442:	c7 44 24 48 20 00 00 	movl   $0x20,0x48(%rsp)
   140006449:	00 
   14000644a:	4d 89 f4             	mov    %r14,%r12
   14000644d:	88 03                	mov    %al,(%rbx)
   14000644f:	e9 3c f9 ff ff       	jmp    140005d90 <__gdtoa+0xd30>
   140006454:	4d 89 e0             	mov    %r12,%r8
   140006457:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
   14000645c:	4d 89 f4             	mov    %r14,%r12
   14000645f:	e9 52 fa ff ff       	jmp    140005eb6 <__gdtoa+0xe56>
   140006464:	8b 47 04             	mov    0x4(%rdi),%eax
   140006467:	83 c0 01             	add    $0x1,%eax
   14000646a:	39 44 24 44          	cmp    %eax,0x44(%rsp)
   14000646e:	7f 86                	jg     1400063f6 <__gdtoa+0x1396>
   140006470:	e9 4b f7 ff ff       	jmp    140005bc0 <__gdtoa+0xb60>
   140006475:	c6 03 30             	movb   $0x30,(%rbx)
   140006478:	83 c5 01             	add    $0x1,%ebp
   14000647b:	0f b6 41 ff          	movzbl -0x1(%rcx),%eax
   14000647f:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
   140006484:	e9 0c f2 ff ff       	jmp    140005695 <__gdtoa+0x635>
   140006489:	85 d2                	test   %edx,%edx
   14000648b:	7e 33                	jle    1400064c0 <__gdtoa+0x1460>
   14000648d:	4c 89 f9             	mov    %r15,%rcx
   140006490:	ba 01 00 00 00       	mov    $0x1,%edx
   140006495:	e8 76 0b 00 00       	call   140007010 <__lshift_D2A>
   14000649a:	4c 89 ea             	mov    %r13,%rdx
   14000649d:	48 89 c1             	mov    %rax,%rcx
   1400064a0:	49 89 c7             	mov    %rax,%r15
   1400064a3:	e8 78 0c 00 00       	call   140007120 <__cmp_D2A>
   1400064a8:	85 c0                	test   %eax,%eax
   1400064aa:	0f 8e 25 02 00 00    	jle    1400066d5 <__gdtoa+0x1675>
   1400064b0:	83 fd 39             	cmp    $0x39,%ebp
   1400064b3:	74 32                	je     1400064e7 <__gdtoa+0x1487>
   1400064b5:	c7 44 24 54 20 00 00 	movl   $0x20,0x54(%rsp)
   1400064bc:	00 
   1400064bd:	8d 6f 31             	lea    0x31(%rdi),%ebp
   1400064c0:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
   1400064c5:	0f 8e e5 01 00 00    	jle    1400066b0 <__gdtoa+0x1650>
   1400064cb:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400064d0:	4d 89 e0             	mov    %r12,%r8
   1400064d3:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   1400064da:	00 
   1400064db:	4d 89 f4             	mov    %r14,%r12
   1400064de:	48 8d 58 01          	lea    0x1(%rax),%rbx
   1400064e2:	e9 38 fe ff ff       	jmp    14000631f <__gdtoa+0x12bf>
   1400064e7:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400064ec:	48 8d 58 01          	lea    0x1(%rax),%rbx
   1400064f0:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400064f5:	4d 89 e0             	mov    %r12,%r8
   1400064f8:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
   1400064fd:	48 89 df             	mov    %rbx,%rdi
   140006500:	4d 89 f4             	mov    %r14,%r12
   140006503:	ba 39 00 00 00       	mov    $0x39,%edx
   140006508:	c6 00 39             	movb   $0x39,(%rax)
   14000650b:	e9 7c fb ff ff       	jmp    14000608c <__gdtoa+0x102c>
   140006510:	45 89 e0             	mov    %r12d,%r8d
   140006513:	44 89 e9             	mov    %r13d,%ecx
   140006516:	8b 57 04             	mov    0x4(%rdi),%edx
   140006519:	41 29 d8             	sub    %ebx,%r8d
   14000651c:	41 8d 40 01          	lea    0x1(%r8),%eax
   140006520:	44 29 c1             	sub    %r8d,%ecx
   140006523:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   14000652a:	39 d1                	cmp    %edx,%ecx
   14000652c:	0f 8c 1d 01 00 00    	jl     14000664f <__gdtoa+0x15ef>
   140006532:	c7 44 24 4c ff ff ff 	movl   $0xffffffff,0x4c(%rsp)
   140006539:	ff 
   14000653a:	45 31 f6             	xor    %r14d,%r14d
   14000653d:	c7 84 24 8c 00 00 00 	movl   $0xffffffff,0x8c(%rsp)
   140006544:	ff ff ff ff 
   140006548:	e9 13 fa ff ff       	jmp    140005f60 <__gdtoa+0xf00>
   14000654d:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140006551:	89 44 24 70          	mov    %eax,0x70(%rsp)
   140006555:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
   14000655c:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
   140006560:	e9 55 f4 ff ff       	jmp    1400059ba <__gdtoa+0x95a>
   140006565:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   14000656a:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
   14000656f:	e9 a6 f4 ff ff       	jmp    140005a1a <__gdtoa+0x9ba>
   140006574:	31 c0                	xor    %eax,%eax
   140006576:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   14000657a:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000657f:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   140006584:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140006589:	0f 9a c0             	setp   %al
   14000658c:	0f 45 c1             	cmovne %ecx,%eax
   14000658f:	c1 e0 04             	shl    $0x4,%eax
   140006592:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140006596:	8d 45 01             	lea    0x1(%rbp),%eax
   140006599:	89 44 24 44          	mov    %eax,0x44(%rsp)
   14000659d:	e9 80 f4 ff ff       	jmp    140005a22 <__gdtoa+0x9c2>
   1400065a2:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   1400065a7:	4c 89 c1             	mov    %r8,%rcx
   1400065aa:	e9 d9 f0 ff ff       	jmp    140005688 <__gdtoa+0x628>
   1400065af:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
   1400065b3:	0f b6 41 ff          	movzbl -0x1(%rcx),%eax
   1400065b7:	66 0f 2f c2          	comisd %xmm2,%xmm0
   1400065bb:	0f 87 e1 00 00 00    	ja     1400066a2 <__gdtoa+0x1642>
   1400065c1:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
   1400065c5:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   1400065ca:	8b 6c 24 70          	mov    0x70(%rsp),%ebp
   1400065ce:	7a 0b                	jp     1400065db <__gdtoa+0x157b>
   1400065d0:	75 09                	jne    1400065db <__gdtoa+0x157b>
   1400065d2:	80 e2 01             	and    $0x1,%dl
   1400065d5:	0f 85 ad f0 ff ff    	jne    140005688 <__gdtoa+0x628>
   1400065db:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   1400065e2:	00 
   1400065e3:	e9 5f fc ff ff       	jmp    140006247 <__gdtoa+0x11e7>
   1400065e8:	66 0f 28 c8          	movapd %xmm0,%xmm1
   1400065ec:	e9 ff fb ff ff       	jmp    1400061f0 <__gdtoa+0x1190>
   1400065f1:	4c 89 e1             	mov    %r12,%rcx
   1400065f4:	45 31 c0             	xor    %r8d,%r8d
   1400065f7:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400065fc:	e8 2f 05 00 00       	call   140006b30 <__multadd_D2A>
   140006601:	49 89 c4             	mov    %rax,%r12
   140006604:	84 db                	test   %bl,%bl
   140006606:	0f 85 41 ff ff ff    	jne    14000654d <__gdtoa+0x14ed>
   14000660c:	8b 44 24 70          	mov    0x70(%rsp),%eax
   140006610:	89 44 24 44          	mov    %eax,0x44(%rsp)
   140006614:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
   14000661b:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
   14000661f:	e9 d3 f5 ff ff       	jmp    140005bf7 <__gdtoa+0xb97>
   140006624:	41 8b 47 18          	mov    0x18(%r15),%eax
   140006628:	85 c0                	test   %eax,%eax
   14000662a:	b8 10 00 00 00       	mov    $0x10,%eax
   14000662f:	0f 44 44 24 48       	cmove  0x48(%rsp),%eax
   140006634:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140006638:	e9 ab f8 ff ff       	jmp    140005ee8 <__gdtoa+0xe88>
   14000663d:	0f b6 41 ff          	movzbl -0x1(%rcx),%eax
   140006641:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   140006646:	8b 6c 24 70          	mov    0x70(%rsp),%ebp
   14000664a:	e9 39 f0 ff ff       	jmp    140005688 <__gdtoa+0x628>
   14000664f:	44 89 e8             	mov    %r13d,%eax
   140006652:	c7 44 24 4c ff ff ff 	movl   $0xffffffff,0x4c(%rsp)
   140006659:	ff 
   14000665a:	45 31 f6             	xor    %r14d,%r14d
   14000665d:	c7 84 24 8c 00 00 00 	movl   $0xffffffff,0x8c(%rsp)
   140006664:	ff ff ff ff 
   140006668:	29 d0                	sub    %edx,%eax
   14000666a:	83 c0 01             	add    $0x1,%eax
   14000666d:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
   140006674:	e9 e7 f8 ff ff       	jmp    140005f60 <__gdtoa+0xf00>
   140006679:	45 8b 57 18          	mov    0x18(%r15),%r10d
   14000667d:	45 85 d2             	test   %r10d,%r10d
   140006680:	0f 85 fd fb ff ff    	jne    140006283 <__gdtoa+0x1223>
   140006686:	85 d2                	test   %edx,%edx
   140006688:	0f 8f ff fd ff ff    	jg     14000648d <__gdtoa+0x142d>
   14000668e:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140006693:	4d 89 e0             	mov    %r12,%r8
   140006696:	4d 89 f4             	mov    %r14,%r12
   140006699:	48 8d 58 01          	lea    0x1(%rax),%rbx
   14000669d:	e9 7d fc ff ff       	jmp    14000631f <__gdtoa+0x12bf>
   1400066a2:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
   1400066a7:	8b 6c 24 70          	mov    0x70(%rsp),%ebp
   1400066ab:	e9 d8 ef ff ff       	jmp    140005688 <__gdtoa+0x628>
   1400066b0:	45 8b 4f 18          	mov    0x18(%r15),%r9d
   1400066b4:	4d 89 e0             	mov    %r12,%r8
   1400066b7:	4d 89 f4             	mov    %r14,%r12
   1400066ba:	45 85 c9             	test   %r9d,%r9d
   1400066bd:	74 2f                	je     1400066ee <__gdtoa+0x168e>
   1400066bf:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400066c4:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   1400066cb:	00 
   1400066cc:	48 8d 58 01          	lea    0x1(%rax),%rbx
   1400066d0:	e9 4a fc ff ff       	jmp    14000631f <__gdtoa+0x12bf>
   1400066d5:	75 0a                	jne    1400066e1 <__gdtoa+0x1681>
   1400066d7:	40 f6 c5 01          	test   $0x1,%bpl
   1400066db:	0f 85 cf fd ff ff    	jne    1400064b0 <__gdtoa+0x1450>
   1400066e1:	c7 44 24 54 20 00 00 	movl   $0x20,0x54(%rsp)
   1400066e8:	00 
   1400066e9:	e9 d2 fd ff ff       	jmp    1400064c0 <__gdtoa+0x1460>
   1400066ee:	8b 44 24 54          	mov    0x54(%rsp),%eax
   1400066f2:	89 44 24 48          	mov    %eax,0x48(%rsp)
   1400066f6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400066fb:	48 8d 58 01          	lea    0x1(%rax),%rbx
   1400066ff:	e9 1b fc ff ff       	jmp    14000631f <__gdtoa+0x12bf>
   140006704:	41 83 7f 14 01       	cmpl   $0x1,0x14(%r15)
   140006709:	c7 44 24 48 10 00 00 	movl   $0x10,0x48(%rsp)
   140006710:	00 
   140006711:	0f 8f 63 f6 ff ff    	jg     140005d7a <__gdtoa+0xd1a>
   140006717:	31 c0                	xor    %eax,%eax
   140006719:	41 83 7f 18 00       	cmpl   $0x0,0x18(%r15)
   14000671e:	0f 95 c0             	setne  %al
   140006721:	c1 e0 04             	shl    $0x4,%eax
   140006724:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140006728:	e9 4d f6 ff ff       	jmp    140005d7a <__gdtoa+0xd1a>
   14000672d:	8b 54 24 50          	mov    0x50(%rsp),%edx
   140006731:	e9 07 f5 ff ff       	jmp    140005c3d <__gdtoa+0xbdd>
   140006736:	90                   	nop
   140006737:	90                   	nop
   140006738:	90                   	nop
   140006739:	90                   	nop
   14000673a:	90                   	nop
   14000673b:	90                   	nop
   14000673c:	90                   	nop
   14000673d:	90                   	nop
   14000673e:	90                   	nop
   14000673f:	90                   	nop

0000000140006740 <__rshift_D2A>:
   140006740:	41 54                	push   %r12
   140006742:	55                   	push   %rbp
   140006743:	57                   	push   %rdi
   140006744:	56                   	push   %rsi
   140006745:	53                   	push   %rbx
   140006746:	48 63 59 14          	movslq 0x14(%rcx),%rbx
   14000674a:	89 d5                	mov    %edx,%ebp
   14000674c:	49 89 ca             	mov    %rcx,%r10
   14000674f:	c1 fd 05             	sar    $0x5,%ebp
   140006752:	39 eb                	cmp    %ebp,%ebx
   140006754:	7e 7a                	jle    1400067d0 <__rshift_D2A+0x90>
   140006756:	4c 8d 61 18          	lea    0x18(%rcx),%r12
   14000675a:	48 63 ed             	movslq %ebp,%rbp
   14000675d:	4d 8d 1c 9c          	lea    (%r12,%rbx,4),%r11
   140006761:	49 8d 34 ac          	lea    (%r12,%rbp,4),%rsi
   140006765:	83 e2 1f             	and    $0x1f,%edx
   140006768:	0f 84 82 00 00 00    	je     1400067f0 <__rshift_D2A+0xb0>
   14000676e:	44 8b 0e             	mov    (%rsi),%r9d
   140006771:	bf 20 00 00 00       	mov    $0x20,%edi
   140006776:	89 d1                	mov    %edx,%ecx
   140006778:	4c 8d 46 04          	lea    0x4(%rsi),%r8
   14000677c:	29 d7                	sub    %edx,%edi
   14000677e:	41 d3 e9             	shr    %cl,%r9d
   140006781:	4d 39 c3             	cmp    %r8,%r11
   140006784:	0f 86 9e 00 00 00    	jbe    140006828 <__rshift_D2A+0xe8>
   14000678a:	4c 89 e6             	mov    %r12,%rsi
   14000678d:	0f 1f 00             	nopl   (%rax)
   140006790:	41 8b 00             	mov    (%r8),%eax
   140006793:	89 f9                	mov    %edi,%ecx
   140006795:	48 83 c6 04          	add    $0x4,%rsi
   140006799:	49 83 c0 04          	add    $0x4,%r8
   14000679d:	d3 e0                	shl    %cl,%eax
   14000679f:	89 d1                	mov    %edx,%ecx
   1400067a1:	44 09 c8             	or     %r9d,%eax
   1400067a4:	89 46 fc             	mov    %eax,-0x4(%rsi)
   1400067a7:	45 8b 48 fc          	mov    -0x4(%r8),%r9d
   1400067ab:	41 d3 e9             	shr    %cl,%r9d
   1400067ae:	4d 39 c3             	cmp    %r8,%r11
   1400067b1:	77 dd                	ja     140006790 <__rshift_D2A+0x50>
   1400067b3:	48 29 eb             	sub    %rbp,%rbx
   1400067b6:	49 8d 44 9c fc       	lea    -0x4(%r12,%rbx,4),%rax
   1400067bb:	44 89 08             	mov    %r9d,(%rax)
   1400067be:	45 85 c9             	test   %r9d,%r9d
   1400067c1:	74 4a                	je     14000680d <__rshift_D2A+0xcd>
   1400067c3:	48 83 c0 04          	add    $0x4,%rax
   1400067c7:	eb 44                	jmp    14000680d <__rshift_D2A+0xcd>
   1400067c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400067d0:	41 c7 42 14 00 00 00 	movl   $0x0,0x14(%r10)
   1400067d7:	00 
   1400067d8:	41 c7 42 18 00 00 00 	movl   $0x0,0x18(%r10)
   1400067df:	00 
   1400067e0:	5b                   	pop    %rbx
   1400067e1:	5e                   	pop    %rsi
   1400067e2:	5f                   	pop    %rdi
   1400067e3:	5d                   	pop    %rbp
   1400067e4:	41 5c                	pop    %r12
   1400067e6:	c3                   	ret    
   1400067e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400067ee:	00 00 
   1400067f0:	4c 89 e7             	mov    %r12,%rdi
   1400067f3:	49 39 f3             	cmp    %rsi,%r11
   1400067f6:	76 d8                	jbe    1400067d0 <__rshift_D2A+0x90>
   1400067f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400067ff:	00 
   140006800:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   140006801:	49 39 f3             	cmp    %rsi,%r11
   140006804:	77 fa                	ja     140006800 <__rshift_D2A+0xc0>
   140006806:	48 29 eb             	sub    %rbp,%rbx
   140006809:	49 8d 04 9c          	lea    (%r12,%rbx,4),%rax
   14000680d:	4c 29 e0             	sub    %r12,%rax
   140006810:	48 c1 f8 02          	sar    $0x2,%rax
   140006814:	41 89 42 14          	mov    %eax,0x14(%r10)
   140006818:	85 c0                	test   %eax,%eax
   14000681a:	74 bc                	je     1400067d8 <__rshift_D2A+0x98>
   14000681c:	5b                   	pop    %rbx
   14000681d:	5e                   	pop    %rsi
   14000681e:	5f                   	pop    %rdi
   14000681f:	5d                   	pop    %rbp
   140006820:	41 5c                	pop    %r12
   140006822:	c3                   	ret    
   140006823:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006828:	45 89 4a 18          	mov    %r9d,0x18(%r10)
   14000682c:	45 85 c9             	test   %r9d,%r9d
   14000682f:	74 9f                	je     1400067d0 <__rshift_D2A+0x90>
   140006831:	4c 89 e0             	mov    %r12,%rax
   140006834:	eb 8d                	jmp    1400067c3 <__rshift_D2A+0x83>
   140006836:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000683d:	00 00 00 

0000000140006840 <__trailz_D2A>:
   140006840:	45 31 c0             	xor    %r8d,%r8d
   140006843:	48 63 51 14          	movslq 0x14(%rcx),%rdx
   140006847:	48 8d 41 18          	lea    0x18(%rcx),%rax
   14000684b:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
   14000684f:	48 39 c8             	cmp    %rcx,%rax
   140006852:	72 19                	jb     14000686d <__trailz_D2A+0x2d>
   140006854:	eb 29                	jmp    14000687f <__trailz_D2A+0x3f>
   140006856:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000685d:	00 00 00 
   140006860:	48 83 c0 04          	add    $0x4,%rax
   140006864:	41 83 c0 20          	add    $0x20,%r8d
   140006868:	48 39 c1             	cmp    %rax,%rcx
   14000686b:	76 12                	jbe    14000687f <__trailz_D2A+0x3f>
   14000686d:	8b 10                	mov    (%rax),%edx
   14000686f:	85 d2                	test   %edx,%edx
   140006871:	74 ed                	je     140006860 <__trailz_D2A+0x20>
   140006873:	48 39 c1             	cmp    %rax,%rcx
   140006876:	76 07                	jbe    14000687f <__trailz_D2A+0x3f>
   140006878:	f3 0f bc d2          	tzcnt  %edx,%edx
   14000687c:	41 01 d0             	add    %edx,%r8d
   14000687f:	44 89 c0             	mov    %r8d,%eax
   140006882:	c3                   	ret    
   140006883:	90                   	nop
   140006884:	90                   	nop
   140006885:	90                   	nop
   140006886:	90                   	nop
   140006887:	90                   	nop
   140006888:	90                   	nop
   140006889:	90                   	nop
   14000688a:	90                   	nop
   14000688b:	90                   	nop
   14000688c:	90                   	nop
   14000688d:	90                   	nop
   14000688e:	90                   	nop
   14000688f:	90                   	nop

0000000140006890 <dtoa_lock>:
   140006890:	57                   	push   %rdi
   140006891:	56                   	push   %rsi
   140006892:	53                   	push   %rbx
   140006893:	48 83 ec 20          	sub    $0x20,%rsp
   140006897:	8b 05 73 62 00 00    	mov    0x6273(%rip),%eax        # 14000cb10 <dtoa_CS_init>
   14000689d:	89 ce                	mov    %ecx,%esi
   14000689f:	83 f8 02             	cmp    $0x2,%eax
   1400068a2:	0f 84 b8 00 00 00    	je     140006960 <dtoa_lock+0xd0>
   1400068a8:	85 c0                	test   %eax,%eax
   1400068aa:	74 3c                	je     1400068e8 <dtoa_lock+0x58>
   1400068ac:	83 f8 01             	cmp    $0x1,%eax
   1400068af:	75 2a                	jne    1400068db <dtoa_lock+0x4b>
   1400068b1:	48 8b 1d 6c 69 00 00 	mov    0x696c(%rip),%rbx        # 14000d224 <__imp_Sleep>
   1400068b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400068bf:	00 
   1400068c0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400068c5:	ff d3                	call   *%rbx
   1400068c7:	8b 05 43 62 00 00    	mov    0x6243(%rip),%eax        # 14000cb10 <dtoa_CS_init>
   1400068cd:	83 f8 01             	cmp    $0x1,%eax
   1400068d0:	74 ee                	je     1400068c0 <dtoa_lock+0x30>
   1400068d2:	83 f8 02             	cmp    $0x2,%eax
   1400068d5:	0f 84 85 00 00 00    	je     140006960 <dtoa_lock+0xd0>
   1400068db:	48 83 c4 20          	add    $0x20,%rsp
   1400068df:	5b                   	pop    %rbx
   1400068e0:	5e                   	pop    %rsi
   1400068e1:	5f                   	pop    %rdi
   1400068e2:	c3                   	ret    
   1400068e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400068e8:	b8 01 00 00 00       	mov    $0x1,%eax
   1400068ed:	87 05 1d 62 00 00    	xchg   %eax,0x621d(%rip)        # 14000cb10 <dtoa_CS_init>
   1400068f3:	85 c0                	test   %eax,%eax
   1400068f5:	75 49                	jne    140006940 <dtoa_lock+0xb0>
   1400068f7:	48 8d 1d 22 62 00 00 	lea    0x6222(%rip),%rbx        # 14000cb20 <dtoa_CritSec>
   1400068fe:	48 8b 3d f7 68 00 00 	mov    0x68f7(%rip),%rdi        # 14000d1fc <__imp_InitializeCriticalSection>
   140006905:	48 89 d9             	mov    %rbx,%rcx
   140006908:	ff d7                	call   *%rdi
   14000690a:	48 8d 4b 28          	lea    0x28(%rbx),%rcx
   14000690e:	ff d7                	call   *%rdi
   140006910:	48 8d 0d 59 00 00 00 	lea    0x59(%rip),%rcx        # 140006970 <dtoa_lock_cleanup>
   140006917:	e8 e4 ab ff ff       	call   140001500 <atexit>
   14000691c:	c7 05 ea 61 00 00 02 	movl   $0x2,0x61ea(%rip)        # 14000cb10 <dtoa_CS_init>
   140006923:	00 00 00 
   140006926:	48 63 ce             	movslq %esi,%rcx
   140006929:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
   14000692d:	48 8d 0c c3          	lea    (%rbx,%rax,8),%rcx
   140006931:	48 83 c4 20          	add    $0x20,%rsp
   140006935:	5b                   	pop    %rbx
   140006936:	5e                   	pop    %rsi
   140006937:	5f                   	pop    %rdi
   140006938:	48 ff 25 a5 68 00 00 	rex.W jmp *0x68a5(%rip)        # 14000d1e4 <__imp_EnterCriticalSection>
   14000693f:	90                   	nop
   140006940:	48 8d 1d d9 61 00 00 	lea    0x61d9(%rip),%rbx        # 14000cb20 <dtoa_CritSec>
   140006947:	83 f8 02             	cmp    $0x2,%eax
   14000694a:	74 d0                	je     14000691c <dtoa_lock+0x8c>
   14000694c:	8b 05 be 61 00 00    	mov    0x61be(%rip),%eax        # 14000cb10 <dtoa_CS_init>
   140006952:	83 f8 01             	cmp    $0x1,%eax
   140006955:	0f 84 56 ff ff ff    	je     1400068b1 <dtoa_lock+0x21>
   14000695b:	e9 72 ff ff ff       	jmp    1400068d2 <dtoa_lock+0x42>
   140006960:	48 8d 1d b9 61 00 00 	lea    0x61b9(%rip),%rbx        # 14000cb20 <dtoa_CritSec>
   140006967:	eb bd                	jmp    140006926 <dtoa_lock+0x96>
   140006969:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140006970 <dtoa_lock_cleanup>:
   140006970:	53                   	push   %rbx
   140006971:	48 83 ec 20          	sub    $0x20,%rsp
   140006975:	b8 03 00 00 00       	mov    $0x3,%eax
   14000697a:	87 05 90 61 00 00    	xchg   %eax,0x6190(%rip)        # 14000cb10 <dtoa_CS_init>
   140006980:	83 f8 02             	cmp    $0x2,%eax
   140006983:	74 0b                	je     140006990 <dtoa_lock_cleanup+0x20>
   140006985:	48 83 c4 20          	add    $0x20,%rsp
   140006989:	5b                   	pop    %rbx
   14000698a:	c3                   	ret    
   14000698b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006990:	48 8b 1d 45 68 00 00 	mov    0x6845(%rip),%rbx        # 14000d1dc <__IAT_start__>
   140006997:	48 8d 0d 82 61 00 00 	lea    0x6182(%rip),%rcx        # 14000cb20 <dtoa_CritSec>
   14000699e:	ff d3                	call   *%rbx
   1400069a0:	48 8d 0d a1 61 00 00 	lea    0x61a1(%rip),%rcx        # 14000cb48 <dtoa_CritSec+0x28>
   1400069a7:	48 89 d8             	mov    %rbx,%rax
   1400069aa:	48 83 c4 20          	add    $0x20,%rsp
   1400069ae:	5b                   	pop    %rbx
   1400069af:	48 ff e0             	rex.W jmp *%rax
   1400069b2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400069b9:	00 00 00 00 
   1400069bd:	0f 1f 00             	nopl   (%rax)

00000001400069c0 <__Balloc_D2A>:
   1400069c0:	56                   	push   %rsi
   1400069c1:	53                   	push   %rbx
   1400069c2:	48 83 ec 38          	sub    $0x38,%rsp
   1400069c6:	89 cb                	mov    %ecx,%ebx
   1400069c8:	31 c9                	xor    %ecx,%ecx
   1400069ca:	e8 c1 fe ff ff       	call   140006890 <dtoa_lock>
   1400069cf:	83 fb 09             	cmp    $0x9,%ebx
   1400069d2:	7e 4c                	jle    140006a20 <__Balloc_D2A+0x60>
   1400069d4:	89 d9                	mov    %ebx,%ecx
   1400069d6:	be 01 00 00 00       	mov    $0x1,%esi
   1400069db:	d3 e6                	shl    %cl,%esi
   1400069dd:	48 63 c6             	movslq %esi,%rax
   1400069e0:	48 8d 0c 85 23 00 00 	lea    0x23(,%rax,4),%rcx
   1400069e7:	00 
   1400069e8:	48 c1 e9 03          	shr    $0x3,%rcx
   1400069ec:	89 c9                	mov    %ecx,%ecx
   1400069ee:	48 c1 e1 03          	shl    $0x3,%rcx
   1400069f2:	e8 39 0c 00 00       	call   140007630 <malloc>
   1400069f7:	48 85 c0             	test   %rax,%rax
   1400069fa:	74 17                	je     140006a13 <__Balloc_D2A+0x53>
   1400069fc:	83 3d 0d 61 00 00 02 	cmpl   $0x2,0x610d(%rip)        # 14000cb10 <dtoa_CS_init>
   140006a03:	89 58 08             	mov    %ebx,0x8(%rax)
   140006a06:	89 70 0c             	mov    %esi,0xc(%rax)
   140006a09:	74 38                	je     140006a43 <__Balloc_D2A+0x83>
   140006a0b:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   140006a12:	00 
   140006a13:	48 83 c4 38          	add    $0x38,%rsp
   140006a17:	5b                   	pop    %rbx
   140006a18:	5e                   	pop    %rsi
   140006a19:	c3                   	ret    
   140006a1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006a20:	48 8d 15 99 60 00 00 	lea    0x6099(%rip),%rdx        # 14000cac0 <freelist>
   140006a27:	48 63 cb             	movslq %ebx,%rcx
   140006a2a:	48 8b 04 ca          	mov    (%rdx,%rcx,8),%rax
   140006a2e:	48 85 c0             	test   %rax,%rax
   140006a31:	74 2d                	je     140006a60 <__Balloc_D2A+0xa0>
   140006a33:	4c 8b 00             	mov    (%rax),%r8
   140006a36:	83 3d d3 60 00 00 02 	cmpl   $0x2,0x60d3(%rip)        # 14000cb10 <dtoa_CS_init>
   140006a3d:	4c 89 04 ca          	mov    %r8,(%rdx,%rcx,8)
   140006a41:	75 c8                	jne    140006a0b <__Balloc_D2A+0x4b>
   140006a43:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140006a48:	48 8d 0d d1 60 00 00 	lea    0x60d1(%rip),%rcx        # 14000cb20 <dtoa_CritSec>
   140006a4f:	ff 15 b7 67 00 00    	call   *0x67b7(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   140006a55:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140006a5a:	eb af                	jmp    140006a0b <__Balloc_D2A+0x4b>
   140006a5c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006a60:	89 d9                	mov    %ebx,%ecx
   140006a62:	be 01 00 00 00       	mov    $0x1,%esi
   140006a67:	4c 8d 05 52 57 00 00 	lea    0x5752(%rip),%r8        # 14000c1c0 <private_mem>
   140006a6e:	d3 e6                	shl    %cl,%esi
   140006a70:	8d 46 09             	lea    0x9(%rsi),%eax
   140006a73:	48 98                	cltq   
   140006a75:	48 8d 0c 85 ff ff ff 	lea    -0x1(,%rax,4),%rcx
   140006a7c:	ff 
   140006a7d:	48 8b 05 0c 16 00 00 	mov    0x160c(%rip),%rax        # 140008090 <pmem_next>
   140006a84:	48 c1 e9 03          	shr    $0x3,%rcx
   140006a88:	48 89 c2             	mov    %rax,%rdx
   140006a8b:	4c 29 c2             	sub    %r8,%rdx
   140006a8e:	48 c1 fa 03          	sar    $0x3,%rdx
   140006a92:	48 01 ca             	add    %rcx,%rdx
   140006a95:	48 81 fa 20 01 00 00 	cmp    $0x120,%rdx
   140006a9c:	0f 87 4c ff ff ff    	ja     1400069ee <__Balloc_D2A+0x2e>
   140006aa2:	48 8d 14 c8          	lea    (%rax,%rcx,8),%rdx
   140006aa6:	48 89 15 e3 15 00 00 	mov    %rdx,0x15e3(%rip)        # 140008090 <pmem_next>
   140006aad:	e9 4a ff ff ff       	jmp    1400069fc <__Balloc_D2A+0x3c>
   140006ab2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006ab9:	00 00 00 00 
   140006abd:	0f 1f 00             	nopl   (%rax)

0000000140006ac0 <__Bfree_D2A>:
   140006ac0:	41 54                	push   %r12
   140006ac2:	48 83 ec 20          	sub    $0x20,%rsp
   140006ac6:	49 89 cc             	mov    %rcx,%r12
   140006ac9:	48 85 c9             	test   %rcx,%rcx
   140006acc:	74 3a                	je     140006b08 <__Bfree_D2A+0x48>
   140006ace:	83 79 08 09          	cmpl   $0x9,0x8(%rcx)
   140006ad2:	7e 0c                	jle    140006ae0 <__Bfree_D2A+0x20>
   140006ad4:	48 83 c4 20          	add    $0x20,%rsp
   140006ad8:	41 5c                	pop    %r12
   140006ada:	e9 69 0b 00 00       	jmp    140007648 <free>
   140006adf:	90                   	nop
   140006ae0:	31 c9                	xor    %ecx,%ecx
   140006ae2:	e8 a9 fd ff ff       	call   140006890 <dtoa_lock>
   140006ae7:	49 63 54 24 08       	movslq 0x8(%r12),%rdx
   140006aec:	48 8d 05 cd 5f 00 00 	lea    0x5fcd(%rip),%rax        # 14000cac0 <freelist>
   140006af3:	83 3d 16 60 00 00 02 	cmpl   $0x2,0x6016(%rip)        # 14000cb10 <dtoa_CS_init>
   140006afa:	48 8b 0c d0          	mov    (%rax,%rdx,8),%rcx
   140006afe:	4c 89 24 d0          	mov    %r12,(%rax,%rdx,8)
   140006b02:	49 89 0c 24          	mov    %rcx,(%r12)
   140006b06:	74 08                	je     140006b10 <__Bfree_D2A+0x50>
   140006b08:	48 83 c4 20          	add    $0x20,%rsp
   140006b0c:	41 5c                	pop    %r12
   140006b0e:	c3                   	ret    
   140006b0f:	90                   	nop
   140006b10:	48 8d 0d 09 60 00 00 	lea    0x6009(%rip),%rcx        # 14000cb20 <dtoa_CritSec>
   140006b17:	48 83 c4 20          	add    $0x20,%rsp
   140006b1b:	41 5c                	pop    %r12
   140006b1d:	48 ff 25 e8 66 00 00 	rex.W jmp *0x66e8(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   140006b24:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006b2b:	00 00 00 00 
   140006b2f:	90                   	nop

0000000140006b30 <__multadd_D2A>:
   140006b30:	41 55                	push   %r13
   140006b32:	41 54                	push   %r12
   140006b34:	56                   	push   %rsi
   140006b35:	53                   	push   %rbx
   140006b36:	48 83 ec 28          	sub    $0x28,%rsp
   140006b3a:	8b 71 14             	mov    0x14(%rcx),%esi
   140006b3d:	49 89 cc             	mov    %rcx,%r12
   140006b40:	49 63 d8             	movslq %r8d,%rbx
   140006b43:	48 63 d2             	movslq %edx,%rdx
   140006b46:	31 c9                	xor    %ecx,%ecx
   140006b48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006b4f:	00 
   140006b50:	41 8b 44 8c 18       	mov    0x18(%r12,%rcx,4),%eax
   140006b55:	48 0f af c2          	imul   %rdx,%rax
   140006b59:	48 01 d8             	add    %rbx,%rax
   140006b5c:	41 89 44 8c 18       	mov    %eax,0x18(%r12,%rcx,4)
   140006b61:	48 89 c3             	mov    %rax,%rbx
   140006b64:	48 83 c1 01          	add    $0x1,%rcx
   140006b68:	48 c1 eb 20          	shr    $0x20,%rbx
   140006b6c:	39 ce                	cmp    %ecx,%esi
   140006b6e:	7f e0                	jg     140006b50 <__multadd_D2A+0x20>
   140006b70:	4d 89 e5             	mov    %r12,%r13
   140006b73:	48 85 db             	test   %rbx,%rbx
   140006b76:	74 1a                	je     140006b92 <__multadd_D2A+0x62>
   140006b78:	41 39 74 24 0c       	cmp    %esi,0xc(%r12)
   140006b7d:	7e 21                	jle    140006ba0 <__multadd_D2A+0x70>
   140006b7f:	48 63 c6             	movslq %esi,%rax
   140006b82:	83 c6 01             	add    $0x1,%esi
   140006b85:	4d 89 e5             	mov    %r12,%r13
   140006b88:	41 89 5c 84 18       	mov    %ebx,0x18(%r12,%rax,4)
   140006b8d:	41 89 74 24 14       	mov    %esi,0x14(%r12)
   140006b92:	4c 89 e8             	mov    %r13,%rax
   140006b95:	48 83 c4 28          	add    $0x28,%rsp
   140006b99:	5b                   	pop    %rbx
   140006b9a:	5e                   	pop    %rsi
   140006b9b:	41 5c                	pop    %r12
   140006b9d:	41 5d                	pop    %r13
   140006b9f:	c3                   	ret    
   140006ba0:	41 8b 44 24 08       	mov    0x8(%r12),%eax
   140006ba5:	8d 48 01             	lea    0x1(%rax),%ecx
   140006ba8:	e8 13 fe ff ff       	call   1400069c0 <__Balloc_D2A>
   140006bad:	49 89 c5             	mov    %rax,%r13
   140006bb0:	48 85 c0             	test   %rax,%rax
   140006bb3:	74 dd                	je     140006b92 <__multadd_D2A+0x62>
   140006bb5:	48 8d 48 10          	lea    0x10(%rax),%rcx
   140006bb9:	49 63 44 24 14       	movslq 0x14(%r12),%rax
   140006bbe:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
   140006bc3:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
   140006bca:	00 
   140006bcb:	e8 58 0a 00 00       	call   140007628 <memcpy>
   140006bd0:	4c 89 e1             	mov    %r12,%rcx
   140006bd3:	4d 89 ec             	mov    %r13,%r12
   140006bd6:	e8 e5 fe ff ff       	call   140006ac0 <__Bfree_D2A>
   140006bdb:	eb a2                	jmp    140006b7f <__multadd_D2A+0x4f>
   140006bdd:	0f 1f 00             	nopl   (%rax)

0000000140006be0 <__i2b_D2A>:
   140006be0:	53                   	push   %rbx
   140006be1:	48 83 ec 30          	sub    $0x30,%rsp
   140006be5:	89 cb                	mov    %ecx,%ebx
   140006be7:	31 c9                	xor    %ecx,%ecx
   140006be9:	e8 a2 fc ff ff       	call   140006890 <dtoa_lock>
   140006bee:	48 8b 05 d3 5e 00 00 	mov    0x5ed3(%rip),%rax        # 14000cac8 <freelist+0x8>
   140006bf5:	48 85 c0             	test   %rax,%rax
   140006bf8:	74 2e                	je     140006c28 <__i2b_D2A+0x48>
   140006bfa:	48 8b 10             	mov    (%rax),%rdx
   140006bfd:	83 3d 0c 5f 00 00 02 	cmpl   $0x2,0x5f0c(%rip)        # 14000cb10 <dtoa_CS_init>
   140006c04:	48 89 15 bd 5e 00 00 	mov    %rdx,0x5ebd(%rip)        # 14000cac8 <freelist+0x8>
   140006c0b:	74 66                	je     140006c73 <__i2b_D2A+0x93>
   140006c0d:	89 58 18             	mov    %ebx,0x18(%rax)
   140006c10:	48 bb 00 00 00 00 01 	movabs $0x100000000,%rbx
   140006c17:	00 00 00 
   140006c1a:	48 89 58 10          	mov    %rbx,0x10(%rax)
   140006c1e:	48 83 c4 30          	add    $0x30,%rsp
   140006c22:	5b                   	pop    %rbx
   140006c23:	c3                   	ret    
   140006c24:	0f 1f 40 00          	nopl   0x0(%rax)
   140006c28:	48 8b 05 61 14 00 00 	mov    0x1461(%rip),%rax        # 140008090 <pmem_next>
   140006c2f:	48 8d 0d 8a 55 00 00 	lea    0x558a(%rip),%rcx        # 14000c1c0 <private_mem>
   140006c36:	48 89 c2             	mov    %rax,%rdx
   140006c39:	48 29 ca             	sub    %rcx,%rdx
   140006c3c:	48 c1 fa 03          	sar    $0x3,%rdx
   140006c40:	48 83 c2 05          	add    $0x5,%rdx
   140006c44:	48 81 fa 20 01 00 00 	cmp    $0x120,%rdx
   140006c4b:	76 43                	jbe    140006c90 <__i2b_D2A+0xb0>
   140006c4d:	b9 28 00 00 00       	mov    $0x28,%ecx
   140006c52:	e8 d9 09 00 00       	call   140007630 <malloc>
   140006c57:	48 85 c0             	test   %rax,%rax
   140006c5a:	74 c2                	je     140006c1e <__i2b_D2A+0x3e>
   140006c5c:	48 ba 01 00 00 00 02 	movabs $0x200000001,%rdx
   140006c63:	00 00 00 
   140006c66:	83 3d a3 5e 00 00 02 	cmpl   $0x2,0x5ea3(%rip)        # 14000cb10 <dtoa_CS_init>
   140006c6d:	48 89 50 08          	mov    %rdx,0x8(%rax)
   140006c71:	75 9a                	jne    140006c0d <__i2b_D2A+0x2d>
   140006c73:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140006c78:	48 8d 0d a1 5e 00 00 	lea    0x5ea1(%rip),%rcx        # 14000cb20 <dtoa_CritSec>
   140006c7f:	ff 15 87 65 00 00    	call   *0x6587(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   140006c85:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140006c8a:	eb 81                	jmp    140006c0d <__i2b_D2A+0x2d>
   140006c8c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006c90:	48 8d 50 28          	lea    0x28(%rax),%rdx
   140006c94:	48 89 15 f5 13 00 00 	mov    %rdx,0x13f5(%rip)        # 140008090 <pmem_next>
   140006c9b:	eb bf                	jmp    140006c5c <__i2b_D2A+0x7c>
   140006c9d:	0f 1f 00             	nopl   (%rax)

0000000140006ca0 <__mult_D2A>:
   140006ca0:	41 57                	push   %r15
   140006ca2:	41 56                	push   %r14
   140006ca4:	41 55                	push   %r13
   140006ca6:	41 54                	push   %r12
   140006ca8:	55                   	push   %rbp
   140006ca9:	57                   	push   %rdi
   140006caa:	56                   	push   %rsi
   140006cab:	53                   	push   %rbx
   140006cac:	48 83 ec 28          	sub    $0x28,%rsp
   140006cb0:	48 63 69 14          	movslq 0x14(%rcx),%rbp
   140006cb4:	48 63 7a 14          	movslq 0x14(%rdx),%rdi
   140006cb8:	49 89 cd             	mov    %rcx,%r13
   140006cbb:	49 89 d7             	mov    %rdx,%r15
   140006cbe:	39 fd                	cmp    %edi,%ebp
   140006cc0:	7c 0e                	jl     140006cd0 <__mult_D2A+0x30>
   140006cc2:	89 f8                	mov    %edi,%eax
   140006cc4:	49 89 cf             	mov    %rcx,%r15
   140006cc7:	48 63 fd             	movslq %ebp,%rdi
   140006cca:	49 89 d5             	mov    %rdx,%r13
   140006ccd:	48 63 e8             	movslq %eax,%rbp
   140006cd0:	31 c9                	xor    %ecx,%ecx
   140006cd2:	8d 1c 2f             	lea    (%rdi,%rbp,1),%ebx
   140006cd5:	41 39 5f 0c          	cmp    %ebx,0xc(%r15)
   140006cd9:	0f 9c c1             	setl   %cl
   140006cdc:	41 03 4f 08          	add    0x8(%r15),%ecx
   140006ce0:	e8 db fc ff ff       	call   1400069c0 <__Balloc_D2A>
   140006ce5:	49 89 c4             	mov    %rax,%r12
   140006ce8:	48 85 c0             	test   %rax,%rax
   140006ceb:	0f 84 f4 00 00 00    	je     140006de5 <__mult_D2A+0x145>
   140006cf1:	4c 8d 58 18          	lea    0x18(%rax),%r11
   140006cf5:	48 63 c3             	movslq %ebx,%rax
   140006cf8:	49 8d 34 83          	lea    (%r11,%rax,4),%rsi
   140006cfc:	49 39 f3             	cmp    %rsi,%r11
   140006cff:	73 23                	jae    140006d24 <__mult_D2A+0x84>
   140006d01:	48 89 f0             	mov    %rsi,%rax
   140006d04:	4c 89 d9             	mov    %r11,%rcx
   140006d07:	31 d2                	xor    %edx,%edx
   140006d09:	4c 29 e0             	sub    %r12,%rax
   140006d0c:	48 83 e8 19          	sub    $0x19,%rax
   140006d10:	48 c1 e8 02          	shr    $0x2,%rax
   140006d14:	4c 8d 04 85 04 00 00 	lea    0x4(,%rax,4),%r8
   140006d1b:	00 
   140006d1c:	e8 ff 08 00 00       	call   140007620 <memset>
   140006d21:	49 89 c3             	mov    %rax,%r11
   140006d24:	4d 8d 4d 18          	lea    0x18(%r13),%r9
   140006d28:	4d 8d 77 18          	lea    0x18(%r15),%r14
   140006d2c:	49 8d 2c a9          	lea    (%r9,%rbp,4),%rbp
   140006d30:	49 8d 3c be          	lea    (%r14,%rdi,4),%rdi
   140006d34:	49 39 e9             	cmp    %rbp,%r9
   140006d37:	0f 83 86 00 00 00    	jae    140006dc3 <__mult_D2A+0x123>
   140006d3d:	48 89 f8             	mov    %rdi,%rax
   140006d40:	4c 29 f8             	sub    %r15,%rax
   140006d43:	49 83 c7 19          	add    $0x19,%r15
   140006d47:	48 83 e8 19          	sub    $0x19,%rax
   140006d4b:	48 c1 e8 02          	shr    $0x2,%rax
   140006d4f:	4c 39 ff             	cmp    %r15,%rdi
   140006d52:	4c 8d 2c 85 04 00 00 	lea    0x4(,%rax,4),%r13
   140006d59:	00 
   140006d5a:	b8 04 00 00 00       	mov    $0x4,%eax
   140006d5f:	4c 0f 42 e8          	cmovb  %rax,%r13
   140006d63:	eb 0c                	jmp    140006d71 <__mult_D2A+0xd1>
   140006d65:	0f 1f 00             	nopl   (%rax)
   140006d68:	49 83 c3 04          	add    $0x4,%r11
   140006d6c:	4c 39 cd             	cmp    %r9,%rbp
   140006d6f:	76 52                	jbe    140006dc3 <__mult_D2A+0x123>
   140006d71:	45 8b 11             	mov    (%r9),%r10d
   140006d74:	49 83 c1 04          	add    $0x4,%r9
   140006d78:	45 85 d2             	test   %r10d,%r10d
   140006d7b:	74 eb                	je     140006d68 <__mult_D2A+0xc8>
   140006d7d:	4c 89 d9             	mov    %r11,%rcx
   140006d80:	4c 89 f2             	mov    %r14,%rdx
   140006d83:	45 31 c0             	xor    %r8d,%r8d
   140006d86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140006d8d:	00 00 00 
   140006d90:	8b 02                	mov    (%rdx),%eax
   140006d92:	44 8b 39             	mov    (%rcx),%r15d
   140006d95:	48 83 c2 04          	add    $0x4,%rdx
   140006d99:	48 83 c1 04          	add    $0x4,%rcx
   140006d9d:	49 0f af c2          	imul   %r10,%rax
   140006da1:	4c 01 f8             	add    %r15,%rax
   140006da4:	4c 01 c0             	add    %r8,%rax
   140006da7:	49 89 c0             	mov    %rax,%r8
   140006daa:	89 41 fc             	mov    %eax,-0x4(%rcx)
   140006dad:	49 c1 e8 20          	shr    $0x20,%r8
   140006db1:	48 39 d7             	cmp    %rdx,%rdi
   140006db4:	77 da                	ja     140006d90 <__mult_D2A+0xf0>
   140006db6:	47 89 04 2b          	mov    %r8d,(%r11,%r13,1)
   140006dba:	49 83 c3 04          	add    $0x4,%r11
   140006dbe:	4c 39 cd             	cmp    %r9,%rbp
   140006dc1:	77 ae                	ja     140006d71 <__mult_D2A+0xd1>
   140006dc3:	85 db                	test   %ebx,%ebx
   140006dc5:	7f 0e                	jg     140006dd5 <__mult_D2A+0x135>
   140006dc7:	eb 17                	jmp    140006de0 <__mult_D2A+0x140>
   140006dc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006dd0:	83 eb 01             	sub    $0x1,%ebx
   140006dd3:	74 0b                	je     140006de0 <__mult_D2A+0x140>
   140006dd5:	8b 46 fc             	mov    -0x4(%rsi),%eax
   140006dd8:	48 83 ee 04          	sub    $0x4,%rsi
   140006ddc:	85 c0                	test   %eax,%eax
   140006dde:	74 f0                	je     140006dd0 <__mult_D2A+0x130>
   140006de0:	41 89 5c 24 14       	mov    %ebx,0x14(%r12)
   140006de5:	4c 89 e0             	mov    %r12,%rax
   140006de8:	48 83 c4 28          	add    $0x28,%rsp
   140006dec:	5b                   	pop    %rbx
   140006ded:	5e                   	pop    %rsi
   140006dee:	5f                   	pop    %rdi
   140006def:	5d                   	pop    %rbp
   140006df0:	41 5c                	pop    %r12
   140006df2:	41 5d                	pop    %r13
   140006df4:	41 5e                	pop    %r14
   140006df6:	41 5f                	pop    %r15
   140006df8:	c3                   	ret    
   140006df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140006e00 <__pow5mult_D2A>:
   140006e00:	41 55                	push   %r13
   140006e02:	41 54                	push   %r12
   140006e04:	55                   	push   %rbp
   140006e05:	57                   	push   %rdi
   140006e06:	56                   	push   %rsi
   140006e07:	53                   	push   %rbx
   140006e08:	48 83 ec 28          	sub    $0x28,%rsp
   140006e0c:	89 d0                	mov    %edx,%eax
   140006e0e:	49 89 cd             	mov    %rcx,%r13
   140006e11:	89 d3                	mov    %edx,%ebx
   140006e13:	83 e0 03             	and    $0x3,%eax
   140006e16:	0f 85 3c 01 00 00    	jne    140006f58 <__pow5mult_D2A+0x158>
   140006e1c:	c1 fb 02             	sar    $0x2,%ebx
   140006e1f:	4d 89 ec             	mov    %r13,%r12
   140006e22:	74 77                	je     140006e9b <__pow5mult_D2A+0x9b>
   140006e24:	48 8b 3d 75 53 00 00 	mov    0x5375(%rip),%rdi        # 14000c1a0 <p5s>
   140006e2b:	48 85 ff             	test   %rdi,%rdi
   140006e2e:	0f 84 5a 01 00 00    	je     140006f8e <__pow5mult_D2A+0x18e>
   140006e34:	4d 89 ec             	mov    %r13,%r12
   140006e37:	48 8d 2d 82 5c 00 00 	lea    0x5c82(%rip),%rbp        # 14000cac0 <freelist>
   140006e3e:	4c 8d 2d db 5c 00 00 	lea    0x5cdb(%rip),%r13        # 14000cb20 <dtoa_CritSec>
   140006e45:	eb 18                	jmp    140006e5f <__pow5mult_D2A+0x5f>
   140006e47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140006e4e:	00 00 
   140006e50:	d1 fb                	sar    %ebx
   140006e52:	74 47                	je     140006e9b <__pow5mult_D2A+0x9b>
   140006e54:	48 8b 37             	mov    (%rdi),%rsi
   140006e57:	48 85 f6             	test   %rsi,%rsi
   140006e5a:	74 54                	je     140006eb0 <__pow5mult_D2A+0xb0>
   140006e5c:	48 89 f7             	mov    %rsi,%rdi
   140006e5f:	f6 c3 01             	test   $0x1,%bl
   140006e62:	74 ec                	je     140006e50 <__pow5mult_D2A+0x50>
   140006e64:	48 89 fa             	mov    %rdi,%rdx
   140006e67:	4c 89 e1             	mov    %r12,%rcx
   140006e6a:	e8 31 fe ff ff       	call   140006ca0 <__mult_D2A>
   140006e6f:	48 89 c6             	mov    %rax,%rsi
   140006e72:	48 85 c0             	test   %rax,%rax
   140006e75:	0f 84 00 01 00 00    	je     140006f7b <__pow5mult_D2A+0x17b>
   140006e7b:	4d 85 e4             	test   %r12,%r12
   140006e7e:	0f 84 9c 00 00 00    	je     140006f20 <__pow5mult_D2A+0x120>
   140006e84:	41 83 7c 24 08 09    	cmpl   $0x9,0x8(%r12)
   140006e8a:	7e 54                	jle    140006ee0 <__pow5mult_D2A+0xe0>
   140006e8c:	4c 89 e1             	mov    %r12,%rcx
   140006e8f:	49 89 f4             	mov    %rsi,%r12
   140006e92:	e8 b1 07 00 00       	call   140007648 <free>
   140006e97:	d1 fb                	sar    %ebx
   140006e99:	75 b9                	jne    140006e54 <__pow5mult_D2A+0x54>
   140006e9b:	4c 89 e0             	mov    %r12,%rax
   140006e9e:	48 83 c4 28          	add    $0x28,%rsp
   140006ea2:	5b                   	pop    %rbx
   140006ea3:	5e                   	pop    %rsi
   140006ea4:	5f                   	pop    %rdi
   140006ea5:	5d                   	pop    %rbp
   140006ea6:	41 5c                	pop    %r12
   140006ea8:	41 5d                	pop    %r13
   140006eaa:	c3                   	ret    
   140006eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006eb0:	b9 01 00 00 00       	mov    $0x1,%ecx
   140006eb5:	e8 d6 f9 ff ff       	call   140006890 <dtoa_lock>
   140006eba:	48 8b 37             	mov    (%rdi),%rsi
   140006ebd:	48 85 f6             	test   %rsi,%rsi
   140006ec0:	74 6e                	je     140006f30 <__pow5mult_D2A+0x130>
   140006ec2:	83 3d 47 5c 00 00 02 	cmpl   $0x2,0x5c47(%rip)        # 14000cb10 <dtoa_CS_init>
   140006ec9:	75 91                	jne    140006e5c <__pow5mult_D2A+0x5c>
   140006ecb:	48 8d 0d 76 5c 00 00 	lea    0x5c76(%rip),%rcx        # 14000cb48 <dtoa_CritSec+0x28>
   140006ed2:	ff 15 34 63 00 00    	call   *0x6334(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   140006ed8:	eb 82                	jmp    140006e5c <__pow5mult_D2A+0x5c>
   140006eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006ee0:	31 c9                	xor    %ecx,%ecx
   140006ee2:	e8 a9 f9 ff ff       	call   140006890 <dtoa_lock>
   140006ee7:	49 63 44 24 08       	movslq 0x8(%r12),%rax
   140006eec:	83 3d 1d 5c 00 00 02 	cmpl   $0x2,0x5c1d(%rip)        # 14000cb10 <dtoa_CS_init>
   140006ef3:	48 8b 54 c5 00       	mov    0x0(%rbp,%rax,8),%rdx
   140006ef8:	4c 89 64 c5 00       	mov    %r12,0x0(%rbp,%rax,8)
   140006efd:	49 89 14 24          	mov    %rdx,(%r12)
   140006f01:	49 89 f4             	mov    %rsi,%r12
   140006f04:	0f 85 46 ff ff ff    	jne    140006e50 <__pow5mult_D2A+0x50>
   140006f0a:	4c 89 e9             	mov    %r13,%rcx
   140006f0d:	ff 15 f9 62 00 00    	call   *0x62f9(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   140006f13:	e9 38 ff ff ff       	jmp    140006e50 <__pow5mult_D2A+0x50>
   140006f18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006f1f:	00 
   140006f20:	49 89 c4             	mov    %rax,%r12
   140006f23:	e9 28 ff ff ff       	jmp    140006e50 <__pow5mult_D2A+0x50>
   140006f28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006f2f:	00 
   140006f30:	48 89 fa             	mov    %rdi,%rdx
   140006f33:	48 89 f9             	mov    %rdi,%rcx
   140006f36:	e8 65 fd ff ff       	call   140006ca0 <__mult_D2A>
   140006f3b:	48 89 07             	mov    %rax,(%rdi)
   140006f3e:	48 89 c6             	mov    %rax,%rsi
   140006f41:	48 85 c0             	test   %rax,%rax
   140006f44:	74 35                	je     140006f7b <__pow5mult_D2A+0x17b>
   140006f46:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   140006f4d:	e9 70 ff ff ff       	jmp    140006ec2 <__pow5mult_D2A+0xc2>
   140006f52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006f58:	83 e8 01             	sub    $0x1,%eax
   140006f5b:	48 8d 15 be 25 00 00 	lea    0x25be(%rip),%rdx        # 140009520 <p05.0>
   140006f62:	45 31 c0             	xor    %r8d,%r8d
   140006f65:	48 98                	cltq   
   140006f67:	8b 14 82             	mov    (%rdx,%rax,4),%edx
   140006f6a:	e8 c1 fb ff ff       	call   140006b30 <__multadd_D2A>
   140006f6f:	49 89 c5             	mov    %rax,%r13
   140006f72:	48 85 c0             	test   %rax,%rax
   140006f75:	0f 85 a1 fe ff ff    	jne    140006e1c <__pow5mult_D2A+0x1c>
   140006f7b:	45 31 e4             	xor    %r12d,%r12d
   140006f7e:	4c 89 e0             	mov    %r12,%rax
   140006f81:	48 83 c4 28          	add    $0x28,%rsp
   140006f85:	5b                   	pop    %rbx
   140006f86:	5e                   	pop    %rsi
   140006f87:	5f                   	pop    %rdi
   140006f88:	5d                   	pop    %rbp
   140006f89:	41 5c                	pop    %r12
   140006f8b:	41 5d                	pop    %r13
   140006f8d:	c3                   	ret    
   140006f8e:	b9 01 00 00 00       	mov    $0x1,%ecx
   140006f93:	e8 f8 f8 ff ff       	call   140006890 <dtoa_lock>
   140006f98:	48 8b 3d 01 52 00 00 	mov    0x5201(%rip),%rdi        # 14000c1a0 <p5s>
   140006f9f:	48 85 ff             	test   %rdi,%rdi
   140006fa2:	74 1f                	je     140006fc3 <__pow5mult_D2A+0x1c3>
   140006fa4:	83 3d 65 5b 00 00 02 	cmpl   $0x2,0x5b65(%rip)        # 14000cb10 <dtoa_CS_init>
   140006fab:	0f 85 83 fe ff ff    	jne    140006e34 <__pow5mult_D2A+0x34>
   140006fb1:	48 8d 0d 90 5b 00 00 	lea    0x5b90(%rip),%rcx        # 14000cb48 <dtoa_CritSec+0x28>
   140006fb8:	ff 15 4e 62 00 00    	call   *0x624e(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   140006fbe:	e9 71 fe ff ff       	jmp    140006e34 <__pow5mult_D2A+0x34>
   140006fc3:	b9 01 00 00 00       	mov    $0x1,%ecx
   140006fc8:	e8 f3 f9 ff ff       	call   1400069c0 <__Balloc_D2A>
   140006fcd:	48 89 c7             	mov    %rax,%rdi
   140006fd0:	48 85 c0             	test   %rax,%rax
   140006fd3:	74 1e                	je     140006ff3 <__pow5mult_D2A+0x1f3>
   140006fd5:	48 b8 01 00 00 00 71 	movabs $0x27100000001,%rax
   140006fdc:	02 00 00 
   140006fdf:	48 89 3d ba 51 00 00 	mov    %rdi,0x51ba(%rip)        # 14000c1a0 <p5s>
   140006fe6:	48 89 47 14          	mov    %rax,0x14(%rdi)
   140006fea:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   140006ff1:	eb b1                	jmp    140006fa4 <__pow5mult_D2A+0x1a4>
   140006ff3:	48 c7 05 a2 51 00 00 	movq   $0x0,0x51a2(%rip)        # 14000c1a0 <p5s>
   140006ffa:	00 00 00 00 
   140006ffe:	45 31 e4             	xor    %r12d,%r12d
   140007001:	e9 95 fe ff ff       	jmp    140006e9b <__pow5mult_D2A+0x9b>
   140007006:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000700d:	00 00 00 

0000000140007010 <__lshift_D2A>:
   140007010:	41 56                	push   %r14
   140007012:	41 55                	push   %r13
   140007014:	41 54                	push   %r12
   140007016:	55                   	push   %rbp
   140007017:	57                   	push   %rdi
   140007018:	56                   	push   %rsi
   140007019:	53                   	push   %rbx
   14000701a:	48 83 ec 20          	sub    $0x20,%rsp
   14000701e:	49 89 cc             	mov    %rcx,%r12
   140007021:	89 d6                	mov    %edx,%esi
   140007023:	8b 49 08             	mov    0x8(%rcx),%ecx
   140007026:	89 d3                	mov    %edx,%ebx
   140007028:	41 8b 6c 24 14       	mov    0x14(%r12),%ebp
   14000702d:	c1 fe 05             	sar    $0x5,%esi
   140007030:	41 8b 44 24 0c       	mov    0xc(%r12),%eax
   140007035:	01 f5                	add    %esi,%ebp
   140007037:	44 8d 6d 01          	lea    0x1(%rbp),%r13d
   14000703b:	41 39 c5             	cmp    %eax,%r13d
   14000703e:	7e 0a                	jle    14000704a <__lshift_D2A+0x3a>
   140007040:	01 c0                	add    %eax,%eax
   140007042:	83 c1 01             	add    $0x1,%ecx
   140007045:	41 39 c5             	cmp    %eax,%r13d
   140007048:	7f f6                	jg     140007040 <__lshift_D2A+0x30>
   14000704a:	e8 71 f9 ff ff       	call   1400069c0 <__Balloc_D2A>
   14000704f:	49 89 c6             	mov    %rax,%r14
   140007052:	48 85 c0             	test   %rax,%rax
   140007055:	0f 84 a2 00 00 00    	je     1400070fd <__lshift_D2A+0xed>
   14000705b:	48 8d 78 18          	lea    0x18(%rax),%rdi
   14000705f:	85 f6                	test   %esi,%esi
   140007061:	7e 17                	jle    14000707a <__lshift_D2A+0x6a>
   140007063:	48 63 f6             	movslq %esi,%rsi
   140007066:	48 89 f9             	mov    %rdi,%rcx
   140007069:	31 d2                	xor    %edx,%edx
   14000706b:	48 c1 e6 02          	shl    $0x2,%rsi
   14000706f:	49 89 f0             	mov    %rsi,%r8
   140007072:	48 01 f7             	add    %rsi,%rdi
   140007075:	e8 a6 05 00 00       	call   140007620 <memset>
   14000707a:	49 63 44 24 14       	movslq 0x14(%r12),%rax
   14000707f:	49 8d 74 24 18       	lea    0x18(%r12),%rsi
   140007084:	4c 8d 0c 86          	lea    (%rsi,%rax,4),%r9
   140007088:	83 e3 1f             	and    $0x1f,%ebx
   14000708b:	0f 84 7f 00 00 00    	je     140007110 <__lshift_D2A+0x100>
   140007091:	41 ba 20 00 00 00    	mov    $0x20,%r10d
   140007097:	49 89 f8             	mov    %rdi,%r8
   14000709a:	31 d2                	xor    %edx,%edx
   14000709c:	41 29 da             	sub    %ebx,%r10d
   14000709f:	90                   	nop
   1400070a0:	8b 06                	mov    (%rsi),%eax
   1400070a2:	89 d9                	mov    %ebx,%ecx
   1400070a4:	49 83 c0 04          	add    $0x4,%r8
   1400070a8:	48 83 c6 04          	add    $0x4,%rsi
   1400070ac:	d3 e0                	shl    %cl,%eax
   1400070ae:	44 89 d1             	mov    %r10d,%ecx
   1400070b1:	09 d0                	or     %edx,%eax
   1400070b3:	41 89 40 fc          	mov    %eax,-0x4(%r8)
   1400070b7:	8b 56 fc             	mov    -0x4(%rsi),%edx
   1400070ba:	d3 ea                	shr    %cl,%edx
   1400070bc:	49 39 f1             	cmp    %rsi,%r9
   1400070bf:	77 df                	ja     1400070a0 <__lshift_D2A+0x90>
   1400070c1:	4c 89 c8             	mov    %r9,%rax
   1400070c4:	49 8d 4c 24 19       	lea    0x19(%r12),%rcx
   1400070c9:	4c 29 e0             	sub    %r12,%rax
   1400070cc:	48 83 e8 19          	sub    $0x19,%rax
   1400070d0:	48 c1 e8 02          	shr    $0x2,%rax
   1400070d4:	49 39 c9             	cmp    %rcx,%r9
   1400070d7:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400070dc:	48 8d 04 85 04 00 00 	lea    0x4(,%rax,4),%rax
   1400070e3:	00 
   1400070e4:	48 0f 42 c1          	cmovb  %rcx,%rax
   1400070e8:	85 d2                	test   %edx,%edx
   1400070ea:	41 0f 45 ed          	cmovne %r13d,%ebp
   1400070ee:	89 14 07             	mov    %edx,(%rdi,%rax,1)
   1400070f1:	41 89 6e 14          	mov    %ebp,0x14(%r14)
   1400070f5:	4c 89 e1             	mov    %r12,%rcx
   1400070f8:	e8 c3 f9 ff ff       	call   140006ac0 <__Bfree_D2A>
   1400070fd:	4c 89 f0             	mov    %r14,%rax
   140007100:	48 83 c4 20          	add    $0x20,%rsp
   140007104:	5b                   	pop    %rbx
   140007105:	5e                   	pop    %rsi
   140007106:	5f                   	pop    %rdi
   140007107:	5d                   	pop    %rbp
   140007108:	41 5c                	pop    %r12
   14000710a:	41 5d                	pop    %r13
   14000710c:	41 5e                	pop    %r14
   14000710e:	c3                   	ret    
   14000710f:	90                   	nop
   140007110:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   140007111:	49 39 f1             	cmp    %rsi,%r9
   140007114:	76 db                	jbe    1400070f1 <__lshift_D2A+0xe1>
   140007116:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
   140007117:	49 39 f1             	cmp    %rsi,%r9
   14000711a:	77 f4                	ja     140007110 <__lshift_D2A+0x100>
   14000711c:	eb d3                	jmp    1400070f1 <__lshift_D2A+0xe1>
   14000711e:	66 90                	xchg   %ax,%ax

0000000140007120 <__cmp_D2A>:
   140007120:	48 63 42 14          	movslq 0x14(%rdx),%rax
   140007124:	44 8b 49 14          	mov    0x14(%rcx),%r9d
   140007128:	41 29 c1             	sub    %eax,%r9d
   14000712b:	75 37                	jne    140007164 <__cmp_D2A+0x44>
   14000712d:	4c 8d 04 85 00 00 00 	lea    0x0(,%rax,4),%r8
   140007134:	00 
   140007135:	48 83 c1 18          	add    $0x18,%rcx
   140007139:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
   14000713d:	4a 8d 54 02 18       	lea    0x18(%rdx,%r8,1),%rdx
   140007142:	eb 09                	jmp    14000714d <__cmp_D2A+0x2d>
   140007144:	0f 1f 40 00          	nopl   0x0(%rax)
   140007148:	48 39 c1             	cmp    %rax,%rcx
   14000714b:	73 17                	jae    140007164 <__cmp_D2A+0x44>
   14000714d:	48 83 e8 04          	sub    $0x4,%rax
   140007151:	48 83 ea 04          	sub    $0x4,%rdx
   140007155:	44 8b 12             	mov    (%rdx),%r10d
   140007158:	44 39 10             	cmp    %r10d,(%rax)
   14000715b:	74 eb                	je     140007148 <__cmp_D2A+0x28>
   14000715d:	45 19 c9             	sbb    %r9d,%r9d
   140007160:	41 83 c9 01          	or     $0x1,%r9d
   140007164:	44 89 c8             	mov    %r9d,%eax
   140007167:	c3                   	ret    
   140007168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000716f:	00 

0000000140007170 <__diff_D2A>:
   140007170:	41 54                	push   %r12
   140007172:	55                   	push   %rbp
   140007173:	57                   	push   %rdi
   140007174:	56                   	push   %rsi
   140007175:	53                   	push   %rbx
   140007176:	48 83 ec 20          	sub    $0x20,%rsp
   14000717a:	48 63 42 14          	movslq 0x14(%rdx),%rax
   14000717e:	8b 79 14             	mov    0x14(%rcx),%edi
   140007181:	48 89 ce             	mov    %rcx,%rsi
   140007184:	48 89 d3             	mov    %rdx,%rbx
   140007187:	29 c7                	sub    %eax,%edi
   140007189:	0f 85 59 01 00 00    	jne    1400072e8 <__diff_D2A+0x178>
   14000718f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140007196:	00 
   140007197:	48 8d 49 18          	lea    0x18(%rcx),%rcx
   14000719b:	48 8d 04 11          	lea    (%rcx,%rdx,1),%rax
   14000719f:	48 8d 54 13 18       	lea    0x18(%rbx,%rdx,1),%rdx
   1400071a4:	eb 13                	jmp    1400071b9 <__diff_D2A+0x49>
   1400071a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400071ad:	00 00 00 
   1400071b0:	48 39 c1             	cmp    %rax,%rcx
   1400071b3:	0f 83 57 01 00 00    	jae    140007310 <__diff_D2A+0x1a0>
   1400071b9:	48 83 e8 04          	sub    $0x4,%rax
   1400071bd:	48 83 ea 04          	sub    $0x4,%rdx
   1400071c1:	44 8b 0a             	mov    (%rdx),%r9d
   1400071c4:	44 39 08             	cmp    %r9d,(%rax)
   1400071c7:	74 e7                	je     1400071b0 <__diff_D2A+0x40>
   1400071c9:	0f 82 24 01 00 00    	jb     1400072f3 <__diff_D2A+0x183>
   1400071cf:	8b 4e 08             	mov    0x8(%rsi),%ecx
   1400071d2:	e8 e9 f7 ff ff       	call   1400069c0 <__Balloc_D2A>
   1400071d7:	49 89 c0             	mov    %rax,%r8
   1400071da:	48 85 c0             	test   %rax,%rax
   1400071dd:	0f 84 f0 00 00 00    	je     1400072d3 <__diff_D2A+0x163>
   1400071e3:	89 78 10             	mov    %edi,0x10(%rax)
   1400071e6:	48 63 46 14          	movslq 0x14(%rsi),%rax
   1400071ea:	48 8d 6e 18          	lea    0x18(%rsi),%rbp
   1400071ee:	4d 8d 60 18          	lea    0x18(%r8),%r12
   1400071f2:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400071f7:	31 d2                	xor    %edx,%edx
   1400071f9:	49 89 c1             	mov    %rax,%r9
   1400071fc:	4c 8d 5c 85 00       	lea    0x0(%rbp,%rax,4),%r11
   140007201:	48 63 43 14          	movslq 0x14(%rbx),%rax
   140007205:	48 8d 7c 83 18       	lea    0x18(%rbx,%rax,4),%rdi
   14000720a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007210:	8b 04 0e             	mov    (%rsi,%rcx,1),%eax
   140007213:	48 29 d0             	sub    %rdx,%rax
   140007216:	8b 14 0b             	mov    (%rbx,%rcx,1),%edx
   140007219:	48 29 d0             	sub    %rdx,%rax
   14000721c:	41 89 04 08          	mov    %eax,(%r8,%rcx,1)
   140007220:	48 89 c2             	mov    %rax,%rdx
   140007223:	48 83 c1 04          	add    $0x4,%rcx
   140007227:	41 89 c2             	mov    %eax,%r10d
   14000722a:	48 c1 ea 20          	shr    $0x20,%rdx
   14000722e:	48 8d 04 19          	lea    (%rcx,%rbx,1),%rax
   140007232:	83 e2 01             	and    $0x1,%edx
   140007235:	48 39 c7             	cmp    %rax,%rdi
   140007238:	77 d6                	ja     140007210 <__diff_D2A+0xa0>
   14000723a:	48 89 f8             	mov    %rdi,%rax
   14000723d:	48 8d 4b 19          	lea    0x19(%rbx),%rcx
   140007241:	31 f6                	xor    %esi,%esi
   140007243:	48 29 d8             	sub    %rbx,%rax
   140007246:	48 83 e8 19          	sub    $0x19,%rax
   14000724a:	48 89 c3             	mov    %rax,%rbx
   14000724d:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
   140007251:	48 c1 eb 02          	shr    $0x2,%rbx
   140007255:	48 39 cf             	cmp    %rcx,%rdi
   140007258:	48 0f 42 c6          	cmovb  %rsi,%rax
   14000725c:	48 8d 34 9d 04 00 00 	lea    0x4(,%rbx,4),%rsi
   140007263:	00 
   140007264:	4c 01 e0             	add    %r12,%rax
   140007267:	48 39 cf             	cmp    %rcx,%rdi
   14000726a:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000726f:	48 0f 42 f1          	cmovb  %rcx,%rsi
   140007273:	48 01 f5             	add    %rsi,%rbp
   140007276:	4c 01 e6             	add    %r12,%rsi
   140007279:	49 39 eb             	cmp    %rbp,%r11
   14000727c:	76 3b                	jbe    1400072b9 <__diff_D2A+0x149>
   14000727e:	48 89 f3             	mov    %rsi,%rbx
   140007281:	48 89 e9             	mov    %rbp,%rcx
   140007284:	0f 1f 40 00          	nopl   0x0(%rax)
   140007288:	8b 01                	mov    (%rcx),%eax
   14000728a:	48 83 c1 04          	add    $0x4,%rcx
   14000728e:	48 83 c3 04          	add    $0x4,%rbx
   140007292:	48 29 d0             	sub    %rdx,%rax
   140007295:	48 89 c2             	mov    %rax,%rdx
   140007298:	89 43 fc             	mov    %eax,-0x4(%rbx)
   14000729b:	41 89 c2             	mov    %eax,%r10d
   14000729e:	48 c1 ea 20          	shr    $0x20,%rdx
   1400072a2:	83 e2 01             	and    $0x1,%edx
   1400072a5:	49 39 cb             	cmp    %rcx,%r11
   1400072a8:	77 de                	ja     140007288 <__diff_D2A+0x118>
   1400072aa:	49 83 eb 01          	sub    $0x1,%r11
   1400072ae:	49 29 eb             	sub    %rbp,%r11
   1400072b1:	49 83 e3 fc          	and    $0xfffffffffffffffc,%r11
   1400072b5:	4a 8d 04 1e          	lea    (%rsi,%r11,1),%rax
   1400072b9:	45 85 d2             	test   %r10d,%r10d
   1400072bc:	75 11                	jne    1400072cf <__diff_D2A+0x15f>
   1400072be:	66 90                	xchg   %ax,%ax
   1400072c0:	8b 50 fc             	mov    -0x4(%rax),%edx
   1400072c3:	48 83 e8 04          	sub    $0x4,%rax
   1400072c7:	41 83 e9 01          	sub    $0x1,%r9d
   1400072cb:	85 d2                	test   %edx,%edx
   1400072cd:	74 f1                	je     1400072c0 <__diff_D2A+0x150>
   1400072cf:	45 89 48 14          	mov    %r9d,0x14(%r8)
   1400072d3:	4c 89 c0             	mov    %r8,%rax
   1400072d6:	48 83 c4 20          	add    $0x20,%rsp
   1400072da:	5b                   	pop    %rbx
   1400072db:	5e                   	pop    %rsi
   1400072dc:	5f                   	pop    %rdi
   1400072dd:	5d                   	pop    %rbp
   1400072de:	41 5c                	pop    %r12
   1400072e0:	c3                   	ret    
   1400072e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400072e8:	bf 00 00 00 00       	mov    $0x0,%edi
   1400072ed:	0f 89 dc fe ff ff    	jns    1400071cf <__diff_D2A+0x5f>
   1400072f3:	48 89 f0             	mov    %rsi,%rax
   1400072f6:	bf 01 00 00 00       	mov    $0x1,%edi
   1400072fb:	48 89 de             	mov    %rbx,%rsi
   1400072fe:	48 89 c3             	mov    %rax,%rbx
   140007301:	e9 c9 fe ff ff       	jmp    1400071cf <__diff_D2A+0x5f>
   140007306:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000730d:	00 00 00 
   140007310:	31 c9                	xor    %ecx,%ecx
   140007312:	e8 a9 f6 ff ff       	call   1400069c0 <__Balloc_D2A>
   140007317:	49 89 c0             	mov    %rax,%r8
   14000731a:	48 85 c0             	test   %rax,%rax
   14000731d:	74 b4                	je     1400072d3 <__diff_D2A+0x163>
   14000731f:	4c 89 c0             	mov    %r8,%rax
   140007322:	49 c7 40 14 01 00 00 	movq   $0x1,0x14(%r8)
   140007329:	00 
   14000732a:	48 83 c4 20          	add    $0x20,%rsp
   14000732e:	5b                   	pop    %rbx
   14000732f:	5e                   	pop    %rsi
   140007330:	5f                   	pop    %rdi
   140007331:	5d                   	pop    %rbp
   140007332:	41 5c                	pop    %r12
   140007334:	c3                   	ret    
   140007335:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000733c:	00 00 00 00 

0000000140007340 <__b2d_D2A>:
   140007340:	53                   	push   %rbx
   140007341:	48 63 41 14          	movslq 0x14(%rcx),%rax
   140007345:	4c 8d 51 18          	lea    0x18(%rcx),%r10
   140007349:	b9 20 00 00 00       	mov    $0x20,%ecx
   14000734e:	49 8d 1c 82          	lea    (%r10,%rax,4),%rbx
   140007352:	41 89 c9             	mov    %ecx,%r9d
   140007355:	44 8b 5b fc          	mov    -0x4(%rbx),%r11d
   140007359:	4c 8d 43 fc          	lea    -0x4(%rbx),%r8
   14000735d:	41 0f bd c3          	bsr    %r11d,%eax
   140007361:	83 f0 1f             	xor    $0x1f,%eax
   140007364:	41 29 c1             	sub    %eax,%r9d
   140007367:	44 89 0a             	mov    %r9d,(%rdx)
   14000736a:	83 f8 0a             	cmp    $0xa,%eax
   14000736d:	0f 8e 7d 00 00 00    	jle    1400073f0 <__b2d_D2A+0xb0>
   140007373:	83 e8 0b             	sub    $0xb,%eax
   140007376:	4d 39 c2             	cmp    %r8,%r10
   140007379:	73 55                	jae    1400073d0 <__b2d_D2A+0x90>
   14000737b:	44 8b 43 f8          	mov    -0x8(%rbx),%r8d
   14000737f:	85 c0                	test   %eax,%eax
   140007381:	74 54                	je     1400073d7 <__b2d_D2A+0x97>
   140007383:	29 c1                	sub    %eax,%ecx
   140007385:	44 89 da             	mov    %r11d,%edx
   140007388:	45 89 c3             	mov    %r8d,%r11d
   14000738b:	41 89 c9             	mov    %ecx,%r9d
   14000738e:	89 c1                	mov    %eax,%ecx
   140007390:	d3 e2                	shl    %cl,%edx
   140007392:	44 89 c9             	mov    %r9d,%ecx
   140007395:	41 d3 eb             	shr    %cl,%r11d
   140007398:	89 c1                	mov    %eax,%ecx
   14000739a:	48 8d 43 f8          	lea    -0x8(%rbx),%rax
   14000739e:	44 09 da             	or     %r11d,%edx
   1400073a1:	41 d3 e0             	shl    %cl,%r8d
   1400073a4:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
   1400073aa:	48 c1 e2 20          	shl    $0x20,%rdx
   1400073ae:	49 39 c2             	cmp    %rax,%r10
   1400073b1:	73 31                	jae    1400073e4 <__b2d_D2A+0xa4>
   1400073b3:	8b 43 f4             	mov    -0xc(%rbx),%eax
   1400073b6:	44 89 c9             	mov    %r9d,%ecx
   1400073b9:	d3 e8                	shr    %cl,%eax
   1400073bb:	41 09 c0             	or     %eax,%r8d
   1400073be:	4c 09 c2             	or     %r8,%rdx
   1400073c1:	66 48 0f 6e c2       	movq   %rdx,%xmm0
   1400073c6:	5b                   	pop    %rbx
   1400073c7:	c3                   	ret    
   1400073c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400073cf:	00 
   1400073d0:	45 31 c0             	xor    %r8d,%r8d
   1400073d3:	85 c0                	test   %eax,%eax
   1400073d5:	75 59                	jne    140007430 <__b2d_D2A+0xf0>
   1400073d7:	44 89 da             	mov    %r11d,%edx
   1400073da:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
   1400073e0:	48 c1 e2 20          	shl    $0x20,%rdx
   1400073e4:	4c 09 c2             	or     %r8,%rdx
   1400073e7:	66 48 0f 6e c2       	movq   %rdx,%xmm0
   1400073ec:	5b                   	pop    %rbx
   1400073ed:	c3                   	ret    
   1400073ee:	66 90                	xchg   %ax,%ax
   1400073f0:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400073f5:	44 89 da             	mov    %r11d,%edx
   1400073f8:	45 31 c9             	xor    %r9d,%r9d
   1400073fb:	29 c1                	sub    %eax,%ecx
   1400073fd:	d3 ea                	shr    %cl,%edx
   1400073ff:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
   140007405:	48 c1 e2 20          	shl    $0x20,%rdx
   140007409:	4d 39 c2             	cmp    %r8,%r10
   14000740c:	73 07                	jae    140007415 <__b2d_D2A+0xd5>
   14000740e:	44 8b 4b f8          	mov    -0x8(%rbx),%r9d
   140007412:	41 d3 e9             	shr    %cl,%r9d
   140007415:	8d 48 15             	lea    0x15(%rax),%ecx
   140007418:	41 d3 e3             	shl    %cl,%r11d
   14000741b:	45 89 d8             	mov    %r11d,%r8d
   14000741e:	45 09 c8             	or     %r9d,%r8d
   140007421:	4c 09 c2             	or     %r8,%rdx
   140007424:	66 48 0f 6e c2       	movq   %rdx,%xmm0
   140007429:	5b                   	pop    %rbx
   14000742a:	c3                   	ret    
   14000742b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007430:	44 89 da             	mov    %r11d,%edx
   140007433:	89 c1                	mov    %eax,%ecx
   140007435:	45 31 c0             	xor    %r8d,%r8d
   140007438:	d3 e2                	shl    %cl,%edx
   14000743a:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
   140007440:	48 c1 e2 20          	shl    $0x20,%rdx
   140007444:	4c 09 c2             	or     %r8,%rdx
   140007447:	66 48 0f 6e c2       	movq   %rdx,%xmm0
   14000744c:	5b                   	pop    %rbx
   14000744d:	c3                   	ret    
   14000744e:	66 90                	xchg   %ax,%ax

0000000140007450 <__d2b_D2A>:
   140007450:	57                   	push   %rdi
   140007451:	56                   	push   %rsi
   140007452:	53                   	push   %rbx
   140007453:	48 83 ec 20          	sub    $0x20,%rsp
   140007457:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000745c:	66 48 0f 7e c3       	movq   %xmm0,%rbx
   140007461:	48 89 d7             	mov    %rdx,%rdi
   140007464:	4c 89 c6             	mov    %r8,%rsi
   140007467:	e8 54 f5 ff ff       	call   1400069c0 <__Balloc_D2A>
   14000746c:	49 89 c1             	mov    %rax,%r9
   14000746f:	48 85 c0             	test   %rax,%rax
   140007472:	0f 84 8e 00 00 00    	je     140007506 <__d2b_D2A+0xb6>
   140007478:	48 89 d9             	mov    %rbx,%rcx
   14000747b:	48 89 d8             	mov    %rbx,%rax
   14000747e:	48 c1 e9 20          	shr    $0x20,%rcx
   140007482:	89 ca                	mov    %ecx,%edx
   140007484:	c1 e9 14             	shr    $0x14,%ecx
   140007487:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   14000748d:	41 89 d0             	mov    %edx,%r8d
   140007490:	41 81 c8 00 00 10 00 	or     $0x100000,%r8d
   140007497:	81 e1 ff 07 00 00    	and    $0x7ff,%ecx
   14000749d:	41 0f 45 d0          	cmovne %r8d,%edx
   1400074a1:	41 89 ca             	mov    %ecx,%r10d
   1400074a4:	85 db                	test   %ebx,%ebx
   1400074a6:	74 70                	je     140007518 <__d2b_D2A+0xc8>
   1400074a8:	45 31 c0             	xor    %r8d,%r8d
   1400074ab:	f3 44 0f bc c3       	tzcnt  %ebx,%r8d
   1400074b0:	44 89 c1             	mov    %r8d,%ecx
   1400074b3:	d3 e8                	shr    %cl,%eax
   1400074b5:	45 85 c0             	test   %r8d,%r8d
   1400074b8:	74 13                	je     1400074cd <__d2b_D2A+0x7d>
   1400074ba:	b9 20 00 00 00       	mov    $0x20,%ecx
   1400074bf:	89 d3                	mov    %edx,%ebx
   1400074c1:	44 29 c1             	sub    %r8d,%ecx
   1400074c4:	d3 e3                	shl    %cl,%ebx
   1400074c6:	44 89 c1             	mov    %r8d,%ecx
   1400074c9:	09 d8                	or     %ebx,%eax
   1400074cb:	d3 ea                	shr    %cl,%edx
   1400074cd:	41 89 41 18          	mov    %eax,0x18(%r9)
   1400074d1:	83 fa 01             	cmp    $0x1,%edx
   1400074d4:	b8 01 00 00 00       	mov    $0x1,%eax
   1400074d9:	83 d8 ff             	sbb    $0xffffffff,%eax
   1400074dc:	41 89 51 1c          	mov    %edx,0x1c(%r9)
   1400074e0:	41 89 41 14          	mov    %eax,0x14(%r9)
   1400074e4:	45 85 d2             	test   %r10d,%r10d
   1400074e7:	75 4d                	jne    140007536 <__d2b_D2A+0xe6>
   1400074e9:	48 63 d0             	movslq %eax,%rdx
   1400074ec:	41 81 e8 32 04 00 00 	sub    $0x432,%r8d
   1400074f3:	41 0f bd 54 91 14    	bsr    0x14(%r9,%rdx,4),%edx
   1400074f9:	c1 e0 05             	shl    $0x5,%eax
   1400074fc:	44 89 07             	mov    %r8d,(%rdi)
   1400074ff:	83 f2 1f             	xor    $0x1f,%edx
   140007502:	29 d0                	sub    %edx,%eax
   140007504:	89 06                	mov    %eax,(%rsi)
   140007506:	4c 89 c8             	mov    %r9,%rax
   140007509:	48 83 c4 20          	add    $0x20,%rsp
   14000750d:	5b                   	pop    %rbx
   14000750e:	5e                   	pop    %rsi
   14000750f:	5f                   	pop    %rdi
   140007510:	c3                   	ret    
   140007511:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007518:	31 c9                	xor    %ecx,%ecx
   14000751a:	b8 01 00 00 00       	mov    $0x1,%eax
   14000751f:	f3 0f bc ca          	tzcnt  %edx,%ecx
   140007523:	41 89 41 14          	mov    %eax,0x14(%r9)
   140007527:	d3 ea                	shr    %cl,%edx
   140007529:	44 8d 41 20          	lea    0x20(%rcx),%r8d
   14000752d:	41 89 51 18          	mov    %edx,0x18(%r9)
   140007531:	45 85 d2             	test   %r10d,%r10d
   140007534:	74 b3                	je     1400074e9 <__d2b_D2A+0x99>
   140007536:	43 8d 84 02 cd fb ff 	lea    -0x433(%r10,%r8,1),%eax
   14000753d:	ff 
   14000753e:	89 07                	mov    %eax,(%rdi)
   140007540:	b8 35 00 00 00       	mov    $0x35,%eax
   140007545:	44 29 c0             	sub    %r8d,%eax
   140007548:	89 06                	mov    %eax,(%rsi)
   14000754a:	4c 89 c8             	mov    %r9,%rax
   14000754d:	48 83 c4 20          	add    $0x20,%rsp
   140007551:	5b                   	pop    %rbx
   140007552:	5e                   	pop    %rsi
   140007553:	5f                   	pop    %rdi
   140007554:	c3                   	ret    
   140007555:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000755c:	00 00 00 00 

0000000140007560 <__strcp_D2A>:
   140007560:	48 89 c8             	mov    %rcx,%rax
   140007563:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
   140007567:	0f b6 12             	movzbl (%rdx),%edx
   14000756a:	88 10                	mov    %dl,(%rax)
   14000756c:	84 d2                	test   %dl,%dl
   14000756e:	74 11                	je     140007581 <__strcp_D2A+0x21>
   140007570:	0f b6 11             	movzbl (%rcx),%edx
   140007573:	48 83 c0 01          	add    $0x1,%rax
   140007577:	48 83 c1 01          	add    $0x1,%rcx
   14000757b:	88 10                	mov    %dl,(%rax)
   14000757d:	84 d2                	test   %dl,%dl
   14000757f:	75 ef                	jne    140007570 <__strcp_D2A+0x10>
   140007581:	c3                   	ret    
   140007582:	90                   	nop
   140007583:	90                   	nop
   140007584:	90                   	nop
   140007585:	90                   	nop
   140007586:	90                   	nop
   140007587:	90                   	nop
   140007588:	90                   	nop
   140007589:	90                   	nop
   14000758a:	90                   	nop
   14000758b:	90                   	nop
   14000758c:	90                   	nop
   14000758d:	90                   	nop
   14000758e:	90                   	nop
   14000758f:	90                   	nop

0000000140007590 <strnlen>:
   140007590:	45 31 c0             	xor    %r8d,%r8d
   140007593:	48 89 c8             	mov    %rcx,%rax
   140007596:	48 85 d2             	test   %rdx,%rdx
   140007599:	75 14                	jne    1400075af <strnlen+0x1f>
   14000759b:	eb 17                	jmp    1400075b4 <strnlen+0x24>
   14000759d:	0f 1f 00             	nopl   (%rax)
   1400075a0:	48 83 c0 01          	add    $0x1,%rax
   1400075a4:	49 89 c0             	mov    %rax,%r8
   1400075a7:	49 29 c8             	sub    %rcx,%r8
   1400075aa:	49 39 d0             	cmp    %rdx,%r8
   1400075ad:	73 05                	jae    1400075b4 <strnlen+0x24>
   1400075af:	80 38 00             	cmpb   $0x0,(%rax)
   1400075b2:	75 ec                	jne    1400075a0 <strnlen+0x10>
   1400075b4:	4c 89 c0             	mov    %r8,%rax
   1400075b7:	c3                   	ret    
   1400075b8:	90                   	nop
   1400075b9:	90                   	nop
   1400075ba:	90                   	nop
   1400075bb:	90                   	nop
   1400075bc:	90                   	nop
   1400075bd:	90                   	nop
   1400075be:	90                   	nop
   1400075bf:	90                   	nop

00000001400075c0 <wcsnlen>:
   1400075c0:	45 31 c0             	xor    %r8d,%r8d
   1400075c3:	48 89 d0             	mov    %rdx,%rax
   1400075c6:	48 85 d2             	test   %rdx,%rdx
   1400075c9:	75 0e                	jne    1400075d9 <wcsnlen+0x19>
   1400075cb:	eb 17                	jmp    1400075e4 <wcsnlen+0x24>
   1400075cd:	0f 1f 00             	nopl   (%rax)
   1400075d0:	49 83 c0 01          	add    $0x1,%r8
   1400075d4:	4c 39 c0             	cmp    %r8,%rax
   1400075d7:	74 0b                	je     1400075e4 <wcsnlen+0x24>
   1400075d9:	66 42 83 3c 41 00    	cmpw   $0x0,(%rcx,%r8,2)
   1400075df:	75 ef                	jne    1400075d0 <wcsnlen+0x10>
   1400075e1:	4c 89 c0             	mov    %r8,%rax
   1400075e4:	c3                   	ret    
   1400075e5:	90                   	nop
   1400075e6:	90                   	nop
   1400075e7:	90                   	nop
   1400075e8:	90                   	nop
   1400075e9:	90                   	nop
   1400075ea:	90                   	nop
   1400075eb:	90                   	nop
   1400075ec:	90                   	nop
   1400075ed:	90                   	nop
   1400075ee:	90                   	nop
   1400075ef:	90                   	nop

00000001400075f0 <wcslen>:
   1400075f0:	ff 25 76 5d 00 00    	jmp    *0x5d76(%rip)        # 14000d36c <__imp_wcslen>
   1400075f6:	90                   	nop
   1400075f7:	90                   	nop

00000001400075f8 <vfprintf>:
   1400075f8:	ff 25 66 5d 00 00    	jmp    *0x5d66(%rip)        # 14000d364 <__imp_vfprintf>
   1400075fe:	90                   	nop
   1400075ff:	90                   	nop

0000000140007600 <strncmp>:
   140007600:	ff 25 56 5d 00 00    	jmp    *0x5d56(%rip)        # 14000d35c <__imp_strncmp>
   140007606:	90                   	nop
   140007607:	90                   	nop

0000000140007608 <strlen>:
   140007608:	ff 25 46 5d 00 00    	jmp    *0x5d46(%rip)        # 14000d354 <__imp_strlen>
   14000760e:	90                   	nop
   14000760f:	90                   	nop

0000000140007610 <strerror>:
   140007610:	ff 25 36 5d 00 00    	jmp    *0x5d36(%rip)        # 14000d34c <__imp_strerror>
   140007616:	90                   	nop
   140007617:	90                   	nop

0000000140007618 <signal>:
   140007618:	ff 25 26 5d 00 00    	jmp    *0x5d26(%rip)        # 14000d344 <__imp_signal>
   14000761e:	90                   	nop
   14000761f:	90                   	nop

0000000140007620 <memset>:
   140007620:	ff 25 16 5d 00 00    	jmp    *0x5d16(%rip)        # 14000d33c <__imp_memset>
   140007626:	90                   	nop
   140007627:	90                   	nop

0000000140007628 <memcpy>:
   140007628:	ff 25 06 5d 00 00    	jmp    *0x5d06(%rip)        # 14000d334 <__imp_memcpy>
   14000762e:	90                   	nop
   14000762f:	90                   	nop

0000000140007630 <malloc>:
   140007630:	ff 25 f6 5c 00 00    	jmp    *0x5cf6(%rip)        # 14000d32c <__imp_malloc>
   140007636:	90                   	nop
   140007637:	90                   	nop

0000000140007638 <localeconv>:
   140007638:	ff 25 e6 5c 00 00    	jmp    *0x5ce6(%rip)        # 14000d324 <__imp_localeconv>
   14000763e:	90                   	nop
   14000763f:	90                   	nop

0000000140007640 <fwrite>:
   140007640:	ff 25 d6 5c 00 00    	jmp    *0x5cd6(%rip)        # 14000d31c <__imp_fwrite>
   140007646:	90                   	nop
   140007647:	90                   	nop

0000000140007648 <free>:
   140007648:	ff 25 c6 5c 00 00    	jmp    *0x5cc6(%rip)        # 14000d314 <__imp_free>
   14000764e:	90                   	nop
   14000764f:	90                   	nop

0000000140007650 <fputc>:
   140007650:	ff 25 b6 5c 00 00    	jmp    *0x5cb6(%rip)        # 14000d30c <__imp_fputc>
   140007656:	90                   	nop
   140007657:	90                   	nop

0000000140007658 <fprintf>:
   140007658:	ff 25 a6 5c 00 00    	jmp    *0x5ca6(%rip)        # 14000d304 <__imp_fprintf>
   14000765e:	90                   	nop
   14000765f:	90                   	nop

0000000140007660 <exit>:
   140007660:	ff 25 96 5c 00 00    	jmp    *0x5c96(%rip)        # 14000d2fc <__imp_exit>
   140007666:	90                   	nop
   140007667:	90                   	nop

0000000140007668 <calloc>:
   140007668:	ff 25 86 5c 00 00    	jmp    *0x5c86(%rip)        # 14000d2f4 <__imp_calloc>
   14000766e:	90                   	nop
   14000766f:	90                   	nop

0000000140007670 <abort>:
   140007670:	ff 25 76 5c 00 00    	jmp    *0x5c76(%rip)        # 14000d2ec <__imp_abort>
   140007676:	90                   	nop
   140007677:	90                   	nop

0000000140007678 <_onexit>:
   140007678:	ff 25 5e 5c 00 00    	jmp    *0x5c5e(%rip)        # 14000d2dc <__imp__onexit>
   14000767e:	90                   	nop
   14000767f:	90                   	nop

0000000140007680 <_initterm>:
   140007680:	ff 25 46 5c 00 00    	jmp    *0x5c46(%rip)        # 14000d2cc <__imp__initterm>
   140007686:	90                   	nop
   140007687:	90                   	nop

0000000140007688 <_errno>:
   140007688:	ff 25 2e 5c 00 00    	jmp    *0x5c2e(%rip)        # 14000d2bc <__imp__errno>
   14000768e:	90                   	nop
   14000768f:	90                   	nop

0000000140007690 <_cexit>:
   140007690:	ff 25 16 5c 00 00    	jmp    *0x5c16(%rip)        # 14000d2ac <__imp__cexit>
   140007696:	90                   	nop
   140007697:	90                   	nop

0000000140007698 <_amsg_exit>:
   140007698:	ff 25 06 5c 00 00    	jmp    *0x5c06(%rip)        # 14000d2a4 <__imp__amsg_exit>
   14000769e:	90                   	nop
   14000769f:	90                   	nop

00000001400076a0 <__setusermatherr>:
   1400076a0:	ff 25 ee 5b 00 00    	jmp    *0x5bee(%rip)        # 14000d294 <__imp___setusermatherr>
   1400076a6:	90                   	nop
   1400076a7:	90                   	nop

00000001400076a8 <__set_app_type>:
   1400076a8:	ff 25 de 5b 00 00    	jmp    *0x5bde(%rip)        # 14000d28c <__imp___set_app_type>
   1400076ae:	90                   	nop
   1400076af:	90                   	nop

00000001400076b0 <__lconv_init>:
   1400076b0:	ff 25 ce 5b 00 00    	jmp    *0x5bce(%rip)        # 14000d284 <__imp___lconv_init>
   1400076b6:	90                   	nop
   1400076b7:	90                   	nop

00000001400076b8 <__getmainargs>:
   1400076b8:	ff 25 ae 5b 00 00    	jmp    *0x5bae(%rip)        # 14000d26c <__imp___getmainargs>
   1400076be:	90                   	nop
   1400076bf:	90                   	nop

00000001400076c0 <__C_specific_handler>:
   1400076c0:	ff 25 8e 5b 00 00    	jmp    *0x5b8e(%rip)        # 14000d254 <__imp___C_specific_handler>
   1400076c6:	90                   	nop
   1400076c7:	90                   	nop
   1400076c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400076cf:	00 

00000001400076d0 <__mbrtowc_cp>:
   1400076d0:	57                   	push   %rdi
   1400076d1:	53                   	push   %rbx
   1400076d2:	48 83 ec 48          	sub    $0x48,%rsp
   1400076d6:	48 89 cf             	mov    %rcx,%rdi
   1400076d9:	48 89 d3             	mov    %rdx,%rbx
   1400076dc:	48 85 d2             	test   %rdx,%rdx
   1400076df:	0f 84 33 01 00 00    	je     140007818 <__mbrtowc_cp+0x148>
   1400076e5:	4d 85 c0             	test   %r8,%r8
   1400076e8:	0f 84 33 01 00 00    	je     140007821 <__mbrtowc_cp+0x151>
   1400076ee:	41 8b 01             	mov    (%r9),%eax
   1400076f1:	0f b6 12             	movzbl (%rdx),%edx
   1400076f4:	41 c7 01 00 00 00 00 	movl   $0x0,(%r9)
   1400076fb:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   1400076ff:	84 d2                	test   %dl,%dl
   140007701:	0f 84 a1 00 00 00    	je     1400077a8 <__mbrtowc_cp+0xd8>
   140007707:	83 bc 24 88 00 00 00 	cmpl   $0x1,0x88(%rsp)
   14000770e:	01 
   14000770f:	76 77                	jbe    140007788 <__mbrtowc_cp+0xb8>
   140007711:	84 c0                	test   %al,%al
   140007713:	0f 85 a7 00 00 00    	jne    1400077c0 <__mbrtowc_cp+0xf0>
   140007719:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   14000771e:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   140007725:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   14000772a:	ff 15 d4 5a 00 00    	call   *0x5ad4(%rip)        # 14000d204 <__imp_IsDBCSLeadByteEx>
   140007730:	85 c0                	test   %eax,%eax
   140007732:	74 54                	je     140007788 <__mbrtowc_cp+0xb8>
   140007734:	4c 8b 44 24 70       	mov    0x70(%rsp),%r8
   140007739:	4c 8b 4c 24 78       	mov    0x78(%rsp),%r9
   14000773e:	49 83 f8 01          	cmp    $0x1,%r8
   140007742:	0f 84 f5 00 00 00    	je     14000783d <__mbrtowc_cp+0x16d>
   140007748:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   14000774d:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   140007753:	49 89 d8             	mov    %rbx,%r8
   140007756:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   14000775d:	00 
   14000775e:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   140007765:	ba 08 00 00 00       	mov    $0x8,%edx
   14000776a:	ff 15 a4 5a 00 00    	call   *0x5aa4(%rip)        # 14000d214 <__imp_MultiByteToWideChar>
   140007770:	85 c0                	test   %eax,%eax
   140007772:	0f 84 b0 00 00 00    	je     140007828 <__mbrtowc_cp+0x158>
   140007778:	b8 02 00 00 00       	mov    $0x2,%eax
   14000777d:	48 83 c4 48          	add    $0x48,%rsp
   140007781:	5b                   	pop    %rbx
   140007782:	5f                   	pop    %rdi
   140007783:	c3                   	ret    
   140007784:	0f 1f 40 00          	nopl   0x0(%rax)
   140007788:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
   14000778f:	85 c0                	test   %eax,%eax
   140007791:	75 4d                	jne    1400077e0 <__mbrtowc_cp+0x110>
   140007793:	0f b6 03             	movzbl (%rbx),%eax
   140007796:	66 89 07             	mov    %ax,(%rdi)
   140007799:	b8 01 00 00 00       	mov    $0x1,%eax
   14000779e:	48 83 c4 48          	add    $0x48,%rsp
   1400077a2:	5b                   	pop    %rbx
   1400077a3:	5f                   	pop    %rdi
   1400077a4:	c3                   	ret    
   1400077a5:	0f 1f 00             	nopl   (%rax)
   1400077a8:	31 d2                	xor    %edx,%edx
   1400077aa:	31 c0                	xor    %eax,%eax
   1400077ac:	66 89 11             	mov    %dx,(%rcx)
   1400077af:	48 83 c4 48          	add    $0x48,%rsp
   1400077b3:	5b                   	pop    %rbx
   1400077b4:	5f                   	pop    %rdi
   1400077b5:	c3                   	ret    
   1400077b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400077bd:	00 00 00 
   1400077c0:	88 54 24 3d          	mov    %dl,0x3d(%rsp)
   1400077c4:	41 b9 02 00 00 00    	mov    $0x2,%r9d
   1400077ca:	4c 8d 44 24 3c       	lea    0x3c(%rsp),%r8
   1400077cf:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   1400077d6:	00 
   1400077d7:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
   1400077dc:	eb 80                	jmp    14000775e <__mbrtowc_cp+0x8e>
   1400077de:	66 90                	xchg   %ax,%ax
   1400077e0:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
   1400077e7:	00 
   1400077e8:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
   1400077ef:	49 89 d8             	mov    %rbx,%r8
   1400077f2:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   1400077f8:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   1400077fd:	ba 08 00 00 00       	mov    $0x8,%edx
   140007802:	ff 15 0c 5a 00 00    	call   *0x5a0c(%rip)        # 14000d214 <__imp_MultiByteToWideChar>
   140007808:	85 c0                	test   %eax,%eax
   14000780a:	74 1c                	je     140007828 <__mbrtowc_cp+0x158>
   14000780c:	b8 01 00 00 00       	mov    $0x1,%eax
   140007811:	eb 9c                	jmp    1400077af <__mbrtowc_cp+0xdf>
   140007813:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007818:	31 c0                	xor    %eax,%eax
   14000781a:	48 83 c4 48          	add    $0x48,%rsp
   14000781e:	5b                   	pop    %rbx
   14000781f:	5f                   	pop    %rdi
   140007820:	c3                   	ret    
   140007821:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   140007826:	eb 87                	jmp    1400077af <__mbrtowc_cp+0xdf>
   140007828:	e8 5b fe ff ff       	call   140007688 <_errno>
   14000782d:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   140007833:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140007838:	e9 72 ff ff ff       	jmp    1400077af <__mbrtowc_cp+0xdf>
   14000783d:	0f b6 03             	movzbl (%rbx),%eax
   140007840:	41 88 01             	mov    %al,(%r9)
   140007843:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   140007848:	e9 62 ff ff ff       	jmp    1400077af <__mbrtowc_cp+0xdf>
   14000784d:	0f 1f 00             	nopl   (%rax)

0000000140007850 <mbrtowc>:
   140007850:	41 55                	push   %r13
   140007852:	41 54                	push   %r12
   140007854:	57                   	push   %rdi
   140007855:	56                   	push   %rsi
   140007856:	53                   	push   %rbx
   140007857:	48 83 ec 40          	sub    $0x40,%rsp
   14000785b:	31 c0                	xor    %eax,%eax
   14000785d:	49 89 cc             	mov    %rcx,%r12
   140007860:	48 85 c9             	test   %rcx,%rcx
   140007863:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   140007868:	48 8d 44 24 3e       	lea    0x3e(%rsp),%rax
   14000786d:	4c 89 cb             	mov    %r9,%rbx
   140007870:	4c 0f 44 e0          	cmove  %rax,%r12
   140007874:	49 89 d5             	mov    %rdx,%r13
   140007877:	4c 89 c6             	mov    %r8,%rsi
   14000787a:	e8 e9 04 00 00       	call   140007d68 <___mb_cur_max_func>
   14000787f:	89 c7                	mov    %eax,%edi
   140007881:	e8 ea 04 00 00       	call   140007d70 <___lc_codepage_func>
   140007886:	48 85 db             	test   %rbx,%rbx
   140007889:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   14000788d:	49 89 f0             	mov    %rsi,%r8
   140007890:	89 44 24 20          	mov    %eax,0x20(%rsp)
   140007894:	4c 8d 0d ed 52 00 00 	lea    0x52ed(%rip),%r9        # 14000cb88 <internal_mbstate.2>
   14000789b:	4c 89 ea             	mov    %r13,%rdx
   14000789e:	4c 89 e1             	mov    %r12,%rcx
   1400078a1:	4c 0f 45 cb          	cmovne %rbx,%r9
   1400078a5:	e8 26 fe ff ff       	call   1400076d0 <__mbrtowc_cp>
   1400078aa:	48 98                	cltq   
   1400078ac:	48 83 c4 40          	add    $0x40,%rsp
   1400078b0:	5b                   	pop    %rbx
   1400078b1:	5e                   	pop    %rsi
   1400078b2:	5f                   	pop    %rdi
   1400078b3:	41 5c                	pop    %r12
   1400078b5:	41 5d                	pop    %r13
   1400078b7:	c3                   	ret    
   1400078b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400078bf:	00 

00000001400078c0 <mbsrtowcs>:
   1400078c0:	41 56                	push   %r14
   1400078c2:	41 55                	push   %r13
   1400078c4:	41 54                	push   %r12
   1400078c6:	55                   	push   %rbp
   1400078c7:	57                   	push   %rdi
   1400078c8:	56                   	push   %rsi
   1400078c9:	53                   	push   %rbx
   1400078ca:	48 83 ec 40          	sub    $0x40,%rsp
   1400078ce:	48 8d 05 af 52 00 00 	lea    0x52af(%rip),%rax        # 14000cb84 <internal_mbstate.1>
   1400078d5:	4d 89 cd             	mov    %r9,%r13
   1400078d8:	4d 85 c9             	test   %r9,%r9
   1400078db:	49 89 ce             	mov    %rcx,%r14
   1400078de:	48 89 d3             	mov    %rdx,%rbx
   1400078e1:	4c 0f 44 e8          	cmove  %rax,%r13
   1400078e5:	4c 89 c6             	mov    %r8,%rsi
   1400078e8:	e8 83 04 00 00       	call   140007d70 <___lc_codepage_func>
   1400078ed:	89 c5                	mov    %eax,%ebp
   1400078ef:	e8 74 04 00 00       	call   140007d68 <___mb_cur_max_func>
   1400078f4:	89 c7                	mov    %eax,%edi
   1400078f6:	48 85 db             	test   %rbx,%rbx
   1400078f9:	0f 84 c1 00 00 00    	je     1400079c0 <mbsrtowcs+0x100>
   1400078ff:	48 8b 13             	mov    (%rbx),%rdx
   140007902:	48 85 d2             	test   %rdx,%rdx
   140007905:	0f 84 b5 00 00 00    	je     1400079c0 <mbsrtowcs+0x100>
   14000790b:	4d 85 f6             	test   %r14,%r14
   14000790e:	74 70                	je     140007980 <mbsrtowcs+0xc0>
   140007910:	45 31 e4             	xor    %r12d,%r12d
   140007913:	48 85 f6             	test   %rsi,%rsi
   140007916:	75 1f                	jne    140007937 <mbsrtowcs+0x77>
   140007918:	eb 4a                	jmp    140007964 <mbsrtowcs+0xa4>
   14000791a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007920:	48 8b 13             	mov    (%rbx),%rdx
   140007923:	48 98                	cltq   
   140007925:	49 83 c6 02          	add    $0x2,%r14
   140007929:	49 01 c4             	add    %rax,%r12
   14000792c:	48 01 c2             	add    %rax,%rdx
   14000792f:	48 89 13             	mov    %rdx,(%rbx)
   140007932:	4c 39 e6             	cmp    %r12,%rsi
   140007935:	76 2d                	jbe    140007964 <mbsrtowcs+0xa4>
   140007937:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   14000793b:	49 89 f0             	mov    %rsi,%r8
   14000793e:	4d 89 e9             	mov    %r13,%r9
   140007941:	4c 89 f1             	mov    %r14,%rcx
   140007944:	89 6c 24 20          	mov    %ebp,0x20(%rsp)
   140007948:	4d 29 e0             	sub    %r12,%r8
   14000794b:	e8 80 fd ff ff       	call   1400076d0 <__mbrtowc_cp>
   140007950:	85 c0                	test   %eax,%eax
   140007952:	7f cc                	jg     140007920 <mbsrtowcs+0x60>
   140007954:	4c 39 e6             	cmp    %r12,%rsi
   140007957:	76 0b                	jbe    140007964 <mbsrtowcs+0xa4>
   140007959:	85 c0                	test   %eax,%eax
   14000795b:	75 07                	jne    140007964 <mbsrtowcs+0xa4>
   14000795d:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
   140007964:	4c 89 e0             	mov    %r12,%rax
   140007967:	48 83 c4 40          	add    $0x40,%rsp
   14000796b:	5b                   	pop    %rbx
   14000796c:	5e                   	pop    %rsi
   14000796d:	5f                   	pop    %rdi
   14000796e:	5d                   	pop    %rbp
   14000796f:	41 5c                	pop    %r12
   140007971:	41 5d                	pop    %r13
   140007973:	41 5e                	pop    %r14
   140007975:	c3                   	ret    
   140007976:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000797d:	00 00 00 
   140007980:	31 c0                	xor    %eax,%eax
   140007982:	41 89 fe             	mov    %edi,%r14d
   140007985:	48 8d 74 24 3e       	lea    0x3e(%rsp),%rsi
   14000798a:	45 31 e4             	xor    %r12d,%r12d
   14000798d:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   140007992:	eb 0c                	jmp    1400079a0 <mbsrtowcs+0xe0>
   140007994:	0f 1f 40 00          	nopl   0x0(%rax)
   140007998:	48 98                	cltq   
   14000799a:	48 8b 13             	mov    (%rbx),%rdx
   14000799d:	49 01 c4             	add    %rax,%r12
   1400079a0:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   1400079a4:	4c 01 e2             	add    %r12,%rdx
   1400079a7:	4d 89 e9             	mov    %r13,%r9
   1400079aa:	4d 89 f0             	mov    %r14,%r8
   1400079ad:	89 6c 24 20          	mov    %ebp,0x20(%rsp)
   1400079b1:	48 89 f1             	mov    %rsi,%rcx
   1400079b4:	e8 17 fd ff ff       	call   1400076d0 <__mbrtowc_cp>
   1400079b9:	85 c0                	test   %eax,%eax
   1400079bb:	7f db                	jg     140007998 <mbsrtowcs+0xd8>
   1400079bd:	eb a5                	jmp    140007964 <mbsrtowcs+0xa4>
   1400079bf:	90                   	nop
   1400079c0:	45 31 e4             	xor    %r12d,%r12d
   1400079c3:	eb 9f                	jmp    140007964 <mbsrtowcs+0xa4>
   1400079c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400079cc:	00 00 00 00 

00000001400079d0 <mbrlen>:
   1400079d0:	41 54                	push   %r12
   1400079d2:	57                   	push   %rdi
   1400079d3:	56                   	push   %rsi
   1400079d4:	53                   	push   %rbx
   1400079d5:	48 83 ec 48          	sub    $0x48,%rsp
   1400079d9:	31 c0                	xor    %eax,%eax
   1400079db:	49 89 cc             	mov    %rcx,%r12
   1400079de:	48 89 d6             	mov    %rdx,%rsi
   1400079e1:	4c 89 c3             	mov    %r8,%rbx
   1400079e4:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
   1400079e9:	e8 7a 03 00 00       	call   140007d68 <___mb_cur_max_func>
   1400079ee:	89 c7                	mov    %eax,%edi
   1400079f0:	e8 7b 03 00 00       	call   140007d70 <___lc_codepage_func>
   1400079f5:	48 85 db             	test   %rbx,%rbx
   1400079f8:	89 7c 24 28          	mov    %edi,0x28(%rsp)
   1400079fc:	49 89 f0             	mov    %rsi,%r8
   1400079ff:	48 8d 15 7a 51 00 00 	lea    0x517a(%rip),%rdx        # 14000cb80 <s_mbstate.0>
   140007a06:	89 44 24 20          	mov    %eax,0x20(%rsp)
   140007a0a:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
   140007a0f:	48 0f 44 da          	cmove  %rdx,%rbx
   140007a13:	4c 89 e2             	mov    %r12,%rdx
   140007a16:	49 89 d9             	mov    %rbx,%r9
   140007a19:	e8 b2 fc ff ff       	call   1400076d0 <__mbrtowc_cp>
   140007a1e:	48 98                	cltq   
   140007a20:	48 83 c4 48          	add    $0x48,%rsp
   140007a24:	5b                   	pop    %rbx
   140007a25:	5e                   	pop    %rsi
   140007a26:	5f                   	pop    %rdi
   140007a27:	41 5c                	pop    %r12
   140007a29:	c3                   	ret    
   140007a2a:	90                   	nop
   140007a2b:	90                   	nop
   140007a2c:	90                   	nop
   140007a2d:	90                   	nop
   140007a2e:	90                   	nop
   140007a2f:	90                   	nop

0000000140007a30 <__wcrtomb_cp>:
   140007a30:	48 83 ec 58          	sub    $0x58,%rsp
   140007a34:	48 89 c8             	mov    %rcx,%rax
   140007a37:	66 89 54 24 68       	mov    %dx,0x68(%rsp)
   140007a3c:	44 89 c1             	mov    %r8d,%ecx
   140007a3f:	45 85 c0             	test   %r8d,%r8d
   140007a42:	75 1c                	jne    140007a60 <__wcrtomb_cp+0x30>
   140007a44:	66 81 fa ff 00       	cmp    $0xff,%dx
   140007a49:	77 59                	ja     140007aa4 <__wcrtomb_cp+0x74>
   140007a4b:	88 10                	mov    %dl,(%rax)
   140007a4d:	b8 01 00 00 00       	mov    $0x1,%eax
   140007a52:	48 83 c4 58          	add    $0x58,%rsp
   140007a56:	c3                   	ret    
   140007a57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140007a5e:	00 00 
   140007a60:	48 8d 54 24 4c       	lea    0x4c(%rsp),%rdx
   140007a65:	44 89 4c 24 28       	mov    %r9d,0x28(%rsp)
   140007a6a:	4c 8d 44 24 68       	lea    0x68(%rsp),%r8
   140007a6f:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   140007a75:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140007a7a:	31 d2                	xor    %edx,%edx
   140007a7c:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%rsp)
   140007a83:	00 
   140007a84:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140007a8b:	00 00 
   140007a8d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140007a92:	ff 15 ac 57 00 00    	call   *0x57ac(%rip)        # 14000d244 <__imp_WideCharToMultiByte>
   140007a98:	85 c0                	test   %eax,%eax
   140007a9a:	74 08                	je     140007aa4 <__wcrtomb_cp+0x74>
   140007a9c:	8b 54 24 4c          	mov    0x4c(%rsp),%edx
   140007aa0:	85 d2                	test   %edx,%edx
   140007aa2:	74 ae                	je     140007a52 <__wcrtomb_cp+0x22>
   140007aa4:	e8 df fb ff ff       	call   140007688 <_errno>
   140007aa9:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
   140007aaf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140007ab4:	48 83 c4 58          	add    $0x58,%rsp
   140007ab8:	c3                   	ret    
   140007ab9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140007ac0 <wcrtomb>:
   140007ac0:	41 54                	push   %r12
   140007ac2:	56                   	push   %rsi
   140007ac3:	53                   	push   %rbx
   140007ac4:	48 83 ec 30          	sub    $0x30,%rsp
   140007ac8:	48 85 c9             	test   %rcx,%rcx
   140007acb:	49 89 cc             	mov    %rcx,%r12
   140007ace:	48 8d 44 24 2b       	lea    0x2b(%rsp),%rax
   140007ad3:	89 d3                	mov    %edx,%ebx
   140007ad5:	4c 0f 44 e0          	cmove  %rax,%r12
   140007ad9:	e8 8a 02 00 00       	call   140007d68 <___mb_cur_max_func>
   140007ade:	89 c6                	mov    %eax,%esi
   140007ae0:	e8 8b 02 00 00       	call   140007d70 <___lc_codepage_func>
   140007ae5:	0f b7 d3             	movzwl %bx,%edx
   140007ae8:	41 89 f1             	mov    %esi,%r9d
   140007aeb:	4c 89 e1             	mov    %r12,%rcx
   140007aee:	41 89 c0             	mov    %eax,%r8d
   140007af1:	e8 3a ff ff ff       	call   140007a30 <__wcrtomb_cp>
   140007af6:	48 98                	cltq   
   140007af8:	48 83 c4 30          	add    $0x30,%rsp
   140007afc:	5b                   	pop    %rbx
   140007afd:	5e                   	pop    %rsi
   140007afe:	41 5c                	pop    %r12
   140007b00:	c3                   	ret    
   140007b01:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140007b08:	00 00 00 00 
   140007b0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140007b10 <wcsrtombs>:
   140007b10:	41 56                	push   %r14
   140007b12:	41 55                	push   %r13
   140007b14:	41 54                	push   %r12
   140007b16:	55                   	push   %rbp
   140007b17:	57                   	push   %rdi
   140007b18:	56                   	push   %rsi
   140007b19:	53                   	push   %rbx
   140007b1a:	48 83 ec 30          	sub    $0x30,%rsp
   140007b1e:	45 31 f6             	xor    %r14d,%r14d
   140007b21:	49 89 d4             	mov    %rdx,%r12
   140007b24:	48 89 cb             	mov    %rcx,%rbx
   140007b27:	4c 89 c5             	mov    %r8,%rbp
   140007b2a:	e8 41 02 00 00       	call   140007d70 <___lc_codepage_func>
   140007b2f:	89 c7                	mov    %eax,%edi
   140007b31:	e8 32 02 00 00       	call   140007d68 <___mb_cur_max_func>
   140007b36:	49 8b 34 24          	mov    (%r12),%rsi
   140007b3a:	41 89 c5             	mov    %eax,%r13d
   140007b3d:	48 85 f6             	test   %rsi,%rsi
   140007b40:	74 4d                	je     140007b8f <wcsrtombs+0x7f>
   140007b42:	48 85 db             	test   %rbx,%rbx
   140007b45:	74 61                	je     140007ba8 <wcsrtombs+0x98>
   140007b47:	48 85 ed             	test   %rbp,%rbp
   140007b4a:	75 27                	jne    140007b73 <wcsrtombs+0x63>
   140007b4c:	e9 8f 00 00 00       	jmp    140007be0 <wcsrtombs+0xd0>
   140007b51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007b58:	48 98                	cltq   
   140007b5a:	48 01 c3             	add    %rax,%rbx
   140007b5d:	49 01 c6             	add    %rax,%r14
   140007b60:	80 7b ff 00          	cmpb   $0x0,-0x1(%rbx)
   140007b64:	0f 84 86 00 00 00    	je     140007bf0 <wcsrtombs+0xe0>
   140007b6a:	48 83 c6 02          	add    $0x2,%rsi
   140007b6e:	4c 39 f5             	cmp    %r14,%rbp
   140007b71:	76 6d                	jbe    140007be0 <wcsrtombs+0xd0>
   140007b73:	0f b7 16             	movzwl (%rsi),%edx
   140007b76:	45 89 e9             	mov    %r13d,%r9d
   140007b79:	41 89 f8             	mov    %edi,%r8d
   140007b7c:	48 89 d9             	mov    %rbx,%rcx
   140007b7f:	e8 ac fe ff ff       	call   140007a30 <__wcrtomb_cp>
   140007b84:	85 c0                	test   %eax,%eax
   140007b86:	7f d0                	jg     140007b58 <wcsrtombs+0x48>
   140007b88:	49 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%r14
   140007b8f:	4c 89 f0             	mov    %r14,%rax
   140007b92:	48 83 c4 30          	add    $0x30,%rsp
   140007b96:	5b                   	pop    %rbx
   140007b97:	5e                   	pop    %rsi
   140007b98:	5f                   	pop    %rdi
   140007b99:	5d                   	pop    %rbp
   140007b9a:	41 5c                	pop    %r12
   140007b9c:	41 5d                	pop    %r13
   140007b9e:	41 5e                	pop    %r14
   140007ba0:	c3                   	ret    
   140007ba1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007ba8:	48 8d 6c 24 2b       	lea    0x2b(%rsp),%rbp
   140007bad:	eb 17                	jmp    140007bc6 <wcsrtombs+0xb6>
   140007baf:	90                   	nop
   140007bb0:	48 63 d0             	movslq %eax,%rdx
   140007bb3:	83 e8 01             	sub    $0x1,%eax
   140007bb6:	48 98                	cltq   
   140007bb8:	49 01 d6             	add    %rdx,%r14
   140007bbb:	80 7c 04 2b 00       	cmpb   $0x0,0x2b(%rsp,%rax,1)
   140007bc0:	74 3e                	je     140007c00 <wcsrtombs+0xf0>
   140007bc2:	48 83 c6 02          	add    $0x2,%rsi
   140007bc6:	0f b7 16             	movzwl (%rsi),%edx
   140007bc9:	45 89 e9             	mov    %r13d,%r9d
   140007bcc:	41 89 f8             	mov    %edi,%r8d
   140007bcf:	48 89 e9             	mov    %rbp,%rcx
   140007bd2:	e8 59 fe ff ff       	call   140007a30 <__wcrtomb_cp>
   140007bd7:	85 c0                	test   %eax,%eax
   140007bd9:	7f d5                	jg     140007bb0 <wcsrtombs+0xa0>
   140007bdb:	eb ab                	jmp    140007b88 <wcsrtombs+0x78>
   140007bdd:	0f 1f 00             	nopl   (%rax)
   140007be0:	49 89 34 24          	mov    %rsi,(%r12)
   140007be4:	eb a9                	jmp    140007b8f <wcsrtombs+0x7f>
   140007be6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140007bed:	00 00 00 
   140007bf0:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
   140007bf7:	00 
   140007bf8:	49 83 ee 01          	sub    $0x1,%r14
   140007bfc:	eb 91                	jmp    140007b8f <wcsrtombs+0x7f>
   140007bfe:	66 90                	xchg   %ax,%ax
   140007c00:	49 83 ee 01          	sub    $0x1,%r14
   140007c04:	eb 89                	jmp    140007b8f <wcsrtombs+0x7f>
   140007c06:	90                   	nop
   140007c07:	90                   	nop
   140007c08:	90                   	nop
   140007c09:	90                   	nop
   140007c0a:	90                   	nop
   140007c0b:	90                   	nop
   140007c0c:	90                   	nop
   140007c0d:	90                   	nop
   140007c0e:	90                   	nop
   140007c0f:	90                   	nop

0000000140007c10 <__acrt_iob_func>:
   140007c10:	53                   	push   %rbx
   140007c11:	48 83 ec 20          	sub    $0x20,%rsp
   140007c15:	89 cb                	mov    %ecx,%ebx
   140007c17:	e8 44 01 00 00       	call   140007d60 <__iob_func>
   140007c1c:	89 d9                	mov    %ebx,%ecx
   140007c1e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140007c22:	48 c1 e2 04          	shl    $0x4,%rdx
   140007c26:	48 01 d0             	add    %rdx,%rax
   140007c29:	48 83 c4 20          	add    $0x20,%rsp
   140007c2d:	5b                   	pop    %rbx
   140007c2e:	c3                   	ret    
   140007c2f:	90                   	nop

0000000140007c30 <_get_invalid_parameter_handler>:
   140007c30:	48 8b 05 59 4f 00 00 	mov    0x4f59(%rip),%rax        # 14000cb90 <handler>
   140007c37:	c3                   	ret    
   140007c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007c3f:	00 

0000000140007c40 <_set_invalid_parameter_handler>:
   140007c40:	48 89 c8             	mov    %rcx,%rax
   140007c43:	48 87 05 46 4f 00 00 	xchg   %rax,0x4f46(%rip)        # 14000cb90 <handler>
   140007c4a:	c3                   	ret    
   140007c4b:	90                   	nop
   140007c4c:	90                   	nop
   140007c4d:	90                   	nop
   140007c4e:	90                   	nop
   140007c4f:	90                   	nop

0000000140007c50 <_lock_file>:
   140007c50:	53                   	push   %rbx
   140007c51:	48 83 ec 20          	sub    $0x20,%rsp
   140007c55:	48 89 cb             	mov    %rcx,%rbx
   140007c58:	31 c9                	xor    %ecx,%ecx
   140007c5a:	e8 b1 ff ff ff       	call   140007c10 <__acrt_iob_func>
   140007c5f:	48 39 c3             	cmp    %rax,%rbx
   140007c62:	72 0f                	jb     140007c73 <_lock_file+0x23>
   140007c64:	b9 13 00 00 00       	mov    $0x13,%ecx
   140007c69:	e8 a2 ff ff ff       	call   140007c10 <__acrt_iob_func>
   140007c6e:	48 39 c3             	cmp    %rax,%rbx
   140007c71:	76 15                	jbe    140007c88 <_lock_file+0x38>
   140007c73:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
   140007c77:	48 83 c4 20          	add    $0x20,%rsp
   140007c7b:	5b                   	pop    %rbx
   140007c7c:	48 ff 25 61 55 00 00 	rex.W jmp *0x5561(%rip)        # 14000d1e4 <__imp_EnterCriticalSection>
   140007c83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007c88:	31 c9                	xor    %ecx,%ecx
   140007c8a:	e8 81 ff ff ff       	call   140007c10 <__acrt_iob_func>
   140007c8f:	49 89 c0             	mov    %rax,%r8
   140007c92:	48 89 d8             	mov    %rbx,%rax
   140007c95:	4c 29 c0             	sub    %r8,%rax
   140007c98:	48 c1 f8 04          	sar    $0x4,%rax
   140007c9c:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
   140007ca2:	8d 48 10             	lea    0x10(%rax),%ecx
   140007ca5:	e8 ae 00 00 00       	call   140007d58 <_lock>
   140007caa:	81 4b 18 00 80 00 00 	orl    $0x8000,0x18(%rbx)
   140007cb1:	48 83 c4 20          	add    $0x20,%rsp
   140007cb5:	5b                   	pop    %rbx
   140007cb6:	c3                   	ret    
   140007cb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140007cbe:	00 00 

0000000140007cc0 <_unlock_file>:
   140007cc0:	53                   	push   %rbx
   140007cc1:	48 83 ec 20          	sub    $0x20,%rsp
   140007cc5:	48 89 cb             	mov    %rcx,%rbx
   140007cc8:	31 c9                	xor    %ecx,%ecx
   140007cca:	e8 41 ff ff ff       	call   140007c10 <__acrt_iob_func>
   140007ccf:	48 39 c3             	cmp    %rax,%rbx
   140007cd2:	72 0f                	jb     140007ce3 <_unlock_file+0x23>
   140007cd4:	b9 13 00 00 00       	mov    $0x13,%ecx
   140007cd9:	e8 32 ff ff ff       	call   140007c10 <__acrt_iob_func>
   140007cde:	48 39 c3             	cmp    %rax,%rbx
   140007ce1:	76 15                	jbe    140007cf8 <_unlock_file+0x38>
   140007ce3:	48 8d 4b 30          	lea    0x30(%rbx),%rcx
   140007ce7:	48 83 c4 20          	add    $0x20,%rsp
   140007ceb:	5b                   	pop    %rbx
   140007cec:	48 ff 25 19 55 00 00 	rex.W jmp *0x5519(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   140007cf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007cf8:	81 63 18 ff 7f ff ff 	andl   $0xffff7fff,0x18(%rbx)
   140007cff:	31 c9                	xor    %ecx,%ecx
   140007d01:	e8 0a ff ff ff       	call   140007c10 <__acrt_iob_func>
   140007d06:	48 29 c3             	sub    %rax,%rbx
   140007d09:	48 c1 fb 04          	sar    $0x4,%rbx
   140007d0d:	69 db ab aa aa aa    	imul   $0xaaaaaaab,%ebx,%ebx
   140007d13:	8d 4b 10             	lea    0x10(%rbx),%ecx
   140007d16:	48 83 c4 20          	add    $0x20,%rsp
   140007d1a:	5b                   	pop    %rbx
   140007d1b:	e9 30 00 00 00       	jmp    140007d50 <_unlock>

0000000140007d20 <__p__acmdln>:
   140007d20:	48 8b 05 d9 19 00 00 	mov    0x19d9(%rip),%rax        # 140009700 <.refptr.__imp__acmdln>
   140007d27:	48 8b 00             	mov    (%rax),%rax
   140007d2a:	c3                   	ret    
   140007d2b:	90                   	nop
   140007d2c:	90                   	nop
   140007d2d:	90                   	nop
   140007d2e:	90                   	nop
   140007d2f:	90                   	nop

0000000140007d30 <__p__commode>:
   140007d30:	48 8b 05 d9 19 00 00 	mov    0x19d9(%rip),%rax        # 140009710 <.refptr.__imp__commode>
   140007d37:	48 8b 00             	mov    (%rax),%rax
   140007d3a:	c3                   	ret    
   140007d3b:	90                   	nop
   140007d3c:	90                   	nop
   140007d3d:	90                   	nop
   140007d3e:	90                   	nop
   140007d3f:	90                   	nop

0000000140007d40 <__p__fmode>:
   140007d40:	48 8b 05 d9 19 00 00 	mov    0x19d9(%rip),%rax        # 140009720 <.refptr.__imp__fmode>
   140007d47:	48 8b 00             	mov    (%rax),%rax
   140007d4a:	c3                   	ret    
   140007d4b:	90                   	nop
   140007d4c:	90                   	nop
   140007d4d:	90                   	nop
   140007d4e:	90                   	nop
   140007d4f:	90                   	nop

0000000140007d50 <_unlock>:
   140007d50:	ff 25 8e 55 00 00    	jmp    *0x558e(%rip)        # 14000d2e4 <__imp__unlock>
   140007d56:	90                   	nop
   140007d57:	90                   	nop

0000000140007d58 <_lock>:
   140007d58:	ff 25 76 55 00 00    	jmp    *0x5576(%rip)        # 14000d2d4 <__imp__lock>
   140007d5e:	90                   	nop
   140007d5f:	90                   	nop

0000000140007d60 <__iob_func>:
   140007d60:	ff 25 16 55 00 00    	jmp    *0x5516(%rip)        # 14000d27c <__imp___iob_func>
   140007d66:	90                   	nop
   140007d67:	90                   	nop

0000000140007d68 <___mb_cur_max_func>:
   140007d68:	ff 25 f6 54 00 00    	jmp    *0x54f6(%rip)        # 14000d264 <__imp____mb_cur_max_func>
   140007d6e:	90                   	nop
   140007d6f:	90                   	nop

0000000140007d70 <___lc_codepage_func>:
   140007d70:	ff 25 e6 54 00 00    	jmp    *0x54e6(%rip)        # 14000d25c <__imp____lc_codepage_func>
   140007d76:	90                   	nop
   140007d77:	90                   	nop
   140007d78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007d7f:	00 

0000000140007d80 <WideCharToMultiByte>:
   140007d80:	ff 25 be 54 00 00    	jmp    *0x54be(%rip)        # 14000d244 <__imp_WideCharToMultiByte>
   140007d86:	90                   	nop
   140007d87:	90                   	nop

0000000140007d88 <VirtualQuery>:
   140007d88:	ff 25 ae 54 00 00    	jmp    *0x54ae(%rip)        # 14000d23c <__imp_VirtualQuery>
   140007d8e:	90                   	nop
   140007d8f:	90                   	nop

0000000140007d90 <VirtualProtect>:
   140007d90:	ff 25 9e 54 00 00    	jmp    *0x549e(%rip)        # 14000d234 <__imp_VirtualProtect>
   140007d96:	90                   	nop
   140007d97:	90                   	nop

0000000140007d98 <TlsGetValue>:
   140007d98:	ff 25 8e 54 00 00    	jmp    *0x548e(%rip)        # 14000d22c <__imp_TlsGetValue>
   140007d9e:	90                   	nop
   140007d9f:	90                   	nop

0000000140007da0 <Sleep>:
   140007da0:	ff 25 7e 54 00 00    	jmp    *0x547e(%rip)        # 14000d224 <__imp_Sleep>
   140007da6:	90                   	nop
   140007da7:	90                   	nop

0000000140007da8 <SetUnhandledExceptionFilter>:
   140007da8:	ff 25 6e 54 00 00    	jmp    *0x546e(%rip)        # 14000d21c <__imp_SetUnhandledExceptionFilter>
   140007dae:	90                   	nop
   140007daf:	90                   	nop

0000000140007db0 <MultiByteToWideChar>:
   140007db0:	ff 25 5e 54 00 00    	jmp    *0x545e(%rip)        # 14000d214 <__imp_MultiByteToWideChar>
   140007db6:	90                   	nop
   140007db7:	90                   	nop

0000000140007db8 <LeaveCriticalSection>:
   140007db8:	ff 25 4e 54 00 00    	jmp    *0x544e(%rip)        # 14000d20c <__imp_LeaveCriticalSection>
   140007dbe:	90                   	nop
   140007dbf:	90                   	nop

0000000140007dc0 <IsDBCSLeadByteEx>:
   140007dc0:	ff 25 3e 54 00 00    	jmp    *0x543e(%rip)        # 14000d204 <__imp_IsDBCSLeadByteEx>
   140007dc6:	90                   	nop
   140007dc7:	90                   	nop

0000000140007dc8 <InitializeCriticalSection>:
   140007dc8:	ff 25 2e 54 00 00    	jmp    *0x542e(%rip)        # 14000d1fc <__imp_InitializeCriticalSection>
   140007dce:	90                   	nop
   140007dcf:	90                   	nop

0000000140007dd0 <GetStartupInfoA>:
   140007dd0:	ff 25 1e 54 00 00    	jmp    *0x541e(%rip)        # 14000d1f4 <__imp_GetStartupInfoA>
   140007dd6:	90                   	nop
   140007dd7:	90                   	nop

0000000140007dd8 <GetLastError>:
   140007dd8:	ff 25 0e 54 00 00    	jmp    *0x540e(%rip)        # 14000d1ec <__imp_GetLastError>
   140007dde:	90                   	nop
   140007ddf:	90                   	nop

0000000140007de0 <EnterCriticalSection>:
   140007de0:	ff 25 fe 53 00 00    	jmp    *0x53fe(%rip)        # 14000d1e4 <__imp_EnterCriticalSection>
   140007de6:	90                   	nop
   140007de7:	90                   	nop

0000000140007de8 <DeleteCriticalSection>:
   140007de8:	ff 25 ee 53 00 00    	jmp    *0x53ee(%rip)        # 14000d1dc <__IAT_start__>
   140007dee:	90                   	nop
   140007def:	90                   	nop

0000000140007df0 <register_frame_ctor>:
   140007df0:	e9 2b 97 ff ff       	jmp    140001520 <__gcc_register_frame>
   140007df5:	90                   	nop
   140007df6:	90                   	nop
   140007df7:	90                   	nop
   140007df8:	90                   	nop
   140007df9:	90                   	nop
   140007dfa:	90                   	nop
   140007dfb:	90                   	nop
   140007dfc:	90                   	nop
   140007dfd:	90                   	nop
   140007dfe:	90                   	nop
   140007dff:	90                   	nop

0000000140007e00 <__CTOR_LIST__>:
   140007e00:	ff                   	(bad)  
   140007e01:	ff                   	(bad)  
   140007e02:	ff                   	(bad)  
   140007e03:	ff                   	(bad)  
   140007e04:	ff                   	(bad)  
   140007e05:	ff                   	(bad)  
   140007e06:	ff                   	(bad)  
   140007e07:	ff                   	.byte 0xff

0000000140007e08 <.ctors.65535>:
   140007e08:	f0 7d 00             	lock jge 140007e0b <.ctors.65535+0x3>
   140007e0b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007e18 <__DTOR_LIST__>:
   140007e18:	ff                   	(bad)  
   140007e19:	ff                   	(bad)  
   140007e1a:	ff                   	(bad)  
   140007e1b:	ff                   	(bad)  
   140007e1c:	ff                   	(bad)  
   140007e1d:	ff                   	(bad)  
   140007e1e:	ff                   	(bad)  
   140007e1f:	ff 00                	incl   (%rax)
   140007e21:	00 00                	add    %al,(%rax)
   140007e23:	00 00                	add    %al,(%rax)
   140007e25:	00 00                	add    %al,(%rax)
	...
