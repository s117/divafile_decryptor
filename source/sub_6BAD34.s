# =============== S U B R O U T I N E =======================================
.text
.global .sub_6BAD34
#seg001:00000000006BAD34
 # int __cdecl sub_6BAD34(char *p1, char *p2)
#seg001:00000000006BAD34
.sub_6BAD34:                             # CODE XREF: sub_3D0444+60p
#seg001:00000000006BAD34
                                         # sub_5607DC+50p ...
#seg001:00000000006BAD34

#seg001:00000000006BAD34
 .set save_sp, -0x70
#seg001:00000000006BAD34
 .set var_38, -0x38
#seg001:00000000006BAD34
 .set var_30, -0x30
#seg001:00000000006BAD34
 .set var_28, -0x28
#seg001:00000000006BAD34
 .set var_20, -0x20
#seg001:00000000006BAD34
 .set var_18, -0x18
#seg001:00000000006BAD34
 .set var_10, -0x10
#seg001:00000000006BAD34
 .set var_8, -8
#seg001:00000000006BAD34
 .set save_r25,  0x38
#seg001:00000000006BAD34
 .set save_r26,  0x40
#seg001:00000000006BAD34
 .set save_r27,  0x48
#seg001:00000000006BAD34
 .set save_r28,  0x50
#seg001:00000000006BAD34
 .set save_r29,  0x58
#seg001:00000000006BAD34
 .set save_r30,  0x60
#seg001:00000000006BAD34
 .set save_r31,  0x68
#seg001:00000000006BAD34

#seg001:00000000006BAD34
                 stdu      r1, -0x70(r1) # // caller set
#seg001:00000000006BAD34
                                         # // r3 = &aFileAccessDeny;
#seg001:00000000006BAD34
                                         # // char buffer[0x100];
#seg001:00000000006BAD34
                                         # // r4 = &buffer;
#seg001:00000000006BAD38
                 lbz       r7, 1(r3)     # r7 = aFileAccessDeny[1]
#seg001:00000000006BAD3C
                 addic     r5, r3, 5     # r5 = aFileAccessDeny+5
#seg001:00000000006BAD40
                 lbz       r8, 0(r3)     # r8 = aFileAccessDeny[0]
#seg001:00000000006BAD44
                 addic     r6, r3, 7     # r6 = aFileAccessDeny+7
#seg001:00000000006BAD48
                 slwi      r7, r7, 16    # r7 = r7 << 16 (r7='0i00')
#seg001:00000000006BAD4C
                 lbz       r9, 2(r3)     # r9 = aFileAccessDeny[2]
#seg001:00000000006BAD50
                 clrldi    r5, r5, 32    # anti_overflow
#seg001:00000000006BAD54
                 insrwi    r7, r8, 8,0   # r7 = (r7 & ~0xFF000000) | ((r8 << 24) & 0xFF000000) (r7 = 'fi00')
#seg001:00000000006BAD58
                 lbz       r8, 3(r3)     # r8 = aFileAccessDeny[3]
#seg001:00000000006BAD5C
                 clrldi    r6, r6, 32    # anti_overflow
#seg001:00000000006BAD60
                 insrwi    r7, r9, 8,16  # r7 = (r7 & ~0xFF00) | ((r9 << 8) & 0xFF00) (r7 = 'fil0')
#seg001:00000000006BAD64
                 addic     r10, r3, 9    # r10 = aFileAccessDeny+9
#seg001:00000000006BAD68
                 or        r7, r7, r8    # r7 = r7 | r8 (r7 = 'file')
#seg001:00000000006BAD6C
                 addic     r8, r3, 6     # r8 = aFileAccessDeny+6
#seg001:00000000006BAD70
                 clrldi    r8, r8, 32    # anti_overflow
#seg001:00000000006BAD74
                 stw       r7, 0xA0(r4)  # *((uint32_t*)(buffer+160)) = 'file'
#seg001:00000000006BAD78
                 lbz       r9, 4(r3)
#seg001:00000000006BAD7C
                 lbz       r5, 0(r5)
#seg001:00000000006BAD80
                 slwi      r5, r5, 16
#seg001:00000000006BAD84
                 lbz       r8, 0(r8)
#seg001:00000000006BAD88
                 lbz       r6, 0(r6)
#seg001:00000000006BAD8C
                 insrwi    r5, r9, 8,0
#seg001:00000000006BAD90
                 addic     r9, r3, 0xB
#seg001:00000000006BAD94
                 insrwi    r5, r8, 8,16
#seg001:00000000006BAD98
                 addic     r8, r3, 0xA
#seg001:00000000006BAD9C
                 or        r5, r5, r6
#seg001:00000000006BADA0
                 clrldi    r6, r10, 32
#seg001:00000000006BADA4
                 clrldi    r8, r8, 32
#seg001:00000000006BADA8
                 clrldi    r9, r9, 32
#seg001:00000000006BADAC
                 stw       r5, 0xA4(r4)
#seg001:00000000006BADB0
                 lbz       r10, 8(r3)
#seg001:00000000006BADB4
                 lbz       r6, 0(r6)
#seg001:00000000006BADB8
                 lbz       r8, 0(r8)
#seg001:00000000006BADBC
                 slwi      r6, r6, 16
#seg001:00000000006BADC0
                 std       r31, 0x70+var_8(r1)
#seg001:00000000006BADC4
                 lbz       r9, 0(r9)
#seg001:00000000006BADC8
                 lis       r31, off_9DE880@ha
#seg001:00000000006BADCC
                 insrwi    r6, r10, 8,0
#seg001:00000000006BADD0
                 addic     r10, r3, 0xD
#seg001:00000000006BADD4
                 insrwi    r6, r8, 8,16
#seg001:00000000006BADD8
                 clrldi    r8, r10, 32
#seg001:00000000006BADDC
                 or        r6, r6, r9
#seg001:00000000006BADE0
                 addic     r9, r3, 0xE
#seg001:00000000006BADE4
                 addic     r10, r3, 0xF
#seg001:00000000006BADE8
                 clrldi    r9, r9, 32
#seg001:00000000006BADEC
                 stw       r6, 0xA8(r4)
#seg001:00000000006BADF0
                 clrldi    r10, r10, 32
#seg001:00000000006BADF4
                 lbz       r3, 0xC(r3)
#seg001:00000000006BADF8
                 lbz       r8, 0(r8)
#seg001:00000000006BADFC
                 slwi      r8, r8, 16
#seg001:00000000006BAE00
                 lbz       r9, 0(r9)
#seg001:00000000006BAE04
                 insrwi    r8, r3, 8,0
#seg001:00000000006BAE08
                 lbz       r3, 0(r10)
#seg001:00000000006BAE0C
                 insrwi    r8, r9, 8,16
#seg001:00000000006BAE10
                 lis       r9, unk_9DF8A8@ha
#seg001:00000000006BAE14
                 or        r3, r8, r3
#seg001:00000000006BAE18
                 addic     r8, r9, unk_9DF8A8@l
#seg001:00000000006BAE1C
                 rlwinm    r10, r3, 26,22,29
#seg001:00000000006BAE20
                 rlwinm    r11, r3, 18,22,29
#seg001:00000000006BAE24
                 clrlslwi  r9, r3, 24,2
#seg001:00000000006BAE28
                 stw       r3, 0xAC(r4)
#seg001:00000000006BAE2C
                 addc      r10, r8, r10
#seg001:00000000006BAE30
                 addc      r9, r8, r9
#seg001:00000000006BAE34
                 rlwinm    r12, r3, 10,22,29
#seg001:00000000006BAE38
                 lwzx      r11, r8, r11
#seg001:00000000006BAE3C
                 addc      r12, r8, r12
#seg001:00000000006BAE40
                 lwz       r10, 0x400(r10)
#seg001:00000000006BAE44
                 lwz       r9, 0x800(r9)
#seg001:00000000006BAE48
                 xor       r10, r11, r10
#seg001:00000000006BAE4C
                 lwz       r11, 0xC00(r12)
#seg001:00000000006BAE50
                 xor       r9, r10, r9
#seg001:00000000006BAE54
                 lwz       r10, -0x1780(r31)
#seg001:00000000006BAE58
                 xor       r9, r9, r11
#seg001:00000000006BAE5C
                 lis       r11, unk_9E28A8@h
#seg001:00000000006BAE60
                 xor       r9, r9, r10
#seg001:00000000006BAE64
                 addic     r10, r11, unk_9E28A8@l
#seg001:00000000006BAE68
                 xor       r11, r9, r7
#seg001:00000000006BAE6C
                 std       r30, 0x70+var_10(r1)
#seg001:00000000006BAE70
                 xor       r7, r7, r6
#seg001:00000000006BAE74
                 rlwinm    r30, r11, 26,22,29
#seg001:00000000006BAE78
                 std       r29, 0x70+var_18(r1)
#seg001:00000000006BAE7C
                 rlwinm    r12, r11, 18,22,29
#seg001:00000000006BAE80
                 rlwinm    r29, r11, 10,22,29
#seg001:00000000006BAE84
                 addc      r30, r10, r30
#seg001:00000000006BAE88
                 std       r28, 0x70+var_20(r1)
#seg001:00000000006BAE8C
                 addc      r12, r10, r12
#seg001:00000000006BAE90
                 clrlslwi  r28, r11, 24,2
#seg001:00000000006BAE94
                 xor       r11, r11, r5
#seg001:00000000006BAE98
                 lwzx      r29, r10, r29
#seg001:00000000006BAE9C
                 addc      r28, r10, r28
#seg001:00000000006BAEA0
                 lwz       r30, 0x800(r30)
#seg001:00000000006BAEA4
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BAEA4
                 xor       r7, r7, r5
#seg001:00000000006BAEA8
                 std       r27, 0x70+var_28(r1)
#seg001:00000000006BAEAC
                 lwz       r12, 0x400(r12)
#seg001:00000000006BAEB0
                 clrlslwi  r27, r11, 24,2
#seg001:00000000006BAEB4
                 xor       r7, r7, r3
#seg001:00000000006BAEB8
                 xor       r12, r29, r12
#seg001:00000000006BAEBC
                 rlwinm    r29, r11, 18,22,29
#seg001:00000000006BAEC0
                 lwz       r28, 0xC00(r28)
#seg001:00000000006BAEC4
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BAEC4
                 xor       r12, r12, r30
#seg001:00000000006BAEC8
                 addc      r30, r10, r29
#seg001:00000000006BAECC
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BAECC
                 xor       r12, r12, r28
#seg001:00000000006BAED0
                 rlwinm    r28, r11, 10,22,29
#seg001:00000000006BAED4
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BAED4
                 rlwinm    r29, r11, 26,22,29
#seg001:00000000006BAED8
                 xor       r7, r7, r9
#seg001:00000000006BAEDC
                 stw       r12, 0x90(r4)
#seg001:00000000006BAEE0
                 addc      r29, r10, r29
#seg001:00000000006BAEE4
                 lwz       r30, 0x400(r30)
#seg001:00000000006BAEE8
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BAEE8
                 xor       r9, r11, r6
#seg001:00000000006BAEEC
                 lwzx      r11, r10, r28
#seg001:00000000006BAEF0
                 addc      r28, r10, r27
#seg001:00000000006BAEF4
                 xor       r11, r11, r30
#seg001:00000000006BAEF8
                 lwz       r29, 0x800(r29)
#seg001:00000000006BAEFC
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BAEFC
                 rlwinm    r30, r9, 18,22,29
#seg001:00000000006BAF00
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BAF00
                 xor       r11, r11, r29
#seg001:00000000006BAF04
                 lwz       r29, 0xC00(r28)
#seg001:00000000006BAF08
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BAF08
                 rlwinm    r27, r9, 26,22,29
#seg001:00000000006BAF0C
                 rlwinm    r28, r9, 10,22,29
#seg001:00000000006BAF10
                 xor       r11, r11, r29
#seg001:00000000006BAF14
                 addc      r30, r10, r30
#seg001:00000000006BAF18
                 addc      r29, r10, r27
#seg001:00000000006BAF1C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BAF1C
                 clrlslwi  r27, r9, 24,2
#seg001:00000000006BAF20
                 stw       r11, 0x94(r4)
#seg001:00000000006BAF24
                 addc      r27, r10, r27
#seg001:00000000006BAF28
                 lwzx      r28, r10, r28
#seg001:00000000006BAF2C
                 lwz       r30, 0x400(r30)
#seg001:00000000006BAF30
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BAF30
                 xor       r9, r9, r3
#seg001:00000000006BAF34
                 lwz       r29, 0x800(r29)
#seg001:00000000006BAF38
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BAF38
                 addic     r31, r31, off_9DE880@l
#seg001:00000000006BAF3C
                 std       r26, 0x70+var_30(r1)
#seg001:00000000006BAF40
                 xor       r30, r28, r30
#seg001:00000000006BAF44
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BAF44
                 rlwinm    r26, r9, 18,22,29
#seg001:00000000006BAF48
                 lwz       r28, 0xC00(r27)
#seg001:00000000006BAF4C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BAF4C
                 xor       r30, r30, r29
#seg001:00000000006BAF50
                 rlwinm    r29, r9, 10,22,29
#seg001:00000000006BAF54
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BAF54
                 xor       r30, r30, r28
#seg001:00000000006BAF58
                 clrlslwi  r28, r9, 24,2
#seg001:00000000006BAF5C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BAF5C
                 addc      r27, r10, r26
#seg001:00000000006BAF60
                 rlwinm    r9, r9, 26,22,29
#seg001:00000000006BAF64
                 addc      r28, r10, r28
#seg001:00000000006BAF68
                 addc      r9, r10, r9
#seg001:00000000006BAF6C
                 stw       r30, 0x98(r4)
#seg001:00000000006BAF70
                 lwzx      r29, r10, r29
#seg001:00000000006BAF74
                 rlwinm    r26, r7, 18,22,29
#seg001:00000000006BAF78
                 lwz       r27, 0x400(r27)
#seg001:00000000006BAF7C
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BAF7C
                 xor       r5, r5, r3
#seg001:00000000006BAF80
                 lwz       r28, 0xC00(r28)
#seg001:00000000006BAF84
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BAF84
                 xor       r29, r29, r27
#seg001:00000000006BAF88
                 lwz       r9, 0x800(r9)
#seg001:00000000006BAF8C
                 rlwinm    r27, r7, 26,22,29
#seg001:00000000006BAF90
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BAF90
                 xor       r9, r29, r9
#seg001:00000000006BAF94
                 addc      r29, r8, r27
#seg001:00000000006BAF98
                 xor       r9, r9, r28
#seg001:00000000006BAF9C
                 clrlslwi  r27, r7, 24,2
#seg001:00000000006BAFA0
                 addc      r28, r8, r27
#seg001:00000000006BAFA4
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BAFA4
                 rlwinm    r27, r7, 10,22,29
#seg001:00000000006BAFA8
                 stw       r9, 0x9C(r4)
#seg001:00000000006BAFAC
                 lwzx      r26, r8, r26
#seg001:00000000006BAFB0
                 addc      r27, r8, r27
#seg001:00000000006BAFB4
                 lwz       r29, 0x400(r29)
#seg001:00000000006BAFB8
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BAFB8
                 lwz       r28, 0x800(r28)
#seg001:00000000006BAFBC
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BAFBC
                 xor       r29, r26, r29
#seg001:00000000006BAFC0
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BAFC0
                 xor       r29, r29, r28
#seg001:00000000006BAFC4
                 lwz       r28, 0xC00(r27)
#seg001:00000000006BAFC8
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BAFC8
                 lwz       r27, 4(r31)
#seg001:00000000006BAFCC
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BAFCC
                 xor       r29, r29, r28
#seg001:00000000006BAFD0
                 xor       r29, r29, r27
#seg001:00000000006BAFD4
                 rlwinm    r27, r29, 26,22,29
#seg001:00000000006BAFD8
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BAFD8
                 rlwinm    r28, r29, 18,22,29
#seg001:00000000006BAFDC
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BAFDC
                 rlwinm    r26, r29, 10,22,29
#seg001:00000000006BAFE0
                 addc      r27, r10, r27
#seg001:00000000006BAFE4
                 std       r25, 0x70+var_38(r1)
#seg001:00000000006BAFE8
                 addc      r28, r10, r28
#seg001:00000000006BAFEC
                 clrlslwi  r25, r29, 24,2
#seg001:00000000006BAFF0
                 xor       r5, r5, r29
#seg001:00000000006BAFF4
                 lwzx      r26, r10, r26
#seg001:00000000006BAFF8
                 addc      r25, r10, r25
#seg001:00000000006BAFFC
                 lwz       r27, 0x800(r27)
#seg001:00000000006BB000
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB000
                 lwz       r29, 0x400(r28)
#seg001:00000000006BB004
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB004
                 xor       r29, r26, r29
#seg001:00000000006BB008
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB008
                 lwz       r28, 0xC00(r25)
#seg001:00000000006BB00C
                 xor       r29, r29, r27
#seg001:00000000006BB010
                 rlwinm    r27, r5, 18,22,29
#seg001:00000000006BB014
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB014
                 xor       r29, r29, r28
#seg001:00000000006BB018
                 rlwinm    r28, r5, 26,22,29
#seg001:00000000006BB01C
                 xor       r12, r29, r12
#seg001:00000000006BB020
                 addc      r29, r8, r28
#seg001:00000000006BB024
                 xor       r11, r12, r11
#seg001:00000000006BB028
                 clrlslwi  r28, r5, 24,2
#seg001:00000000006BB02C
                 xor       r30, r11, r30
#seg001:00000000006BB030
                 stw       r12, 0x80(r4)
#seg001:00000000006BB034
                 addc      r28, r8, r28
#seg001:00000000006BB038
                 xor       r9, r30, r9
#seg001:00000000006BB03C
                 stw       r11, 0x84(r4)
#seg001:00000000006BB040
                 rlwinm    r26, r5, 10,22,29
#seg001:00000000006BB044
                 stw       r30, 0x88(r4)
#seg001:00000000006BB048
                 xor       r6, r6, r3
#seg001:00000000006BB04C
                 addc      r26, r8, r26
#seg001:00000000006BB050
                 stw       r9, 0x8C(r4)
#seg001:00000000006BB054
                 lwzx      r27, r8, r27
#seg001:00000000006BB058
                 lwz       r29, 0x400(r29)
#seg001:00000000006BB05C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB05C
                 lwz       r28, 0x800(r28)
#seg001:00000000006BB060
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB060
                 xor       r29, r27, r29
#seg001:00000000006BB064
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB064
                 lwz       r27, 0xC00(r26)
#seg001:00000000006BB068
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB068
                 xor       r29, r29, r28
#seg001:00000000006BB06C
                 lwz       r28, 8(r31)
#seg001:00000000006BB070
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB070
                 xor       r29, r29, r27
#seg001:00000000006BB074
                 xor       r29, r29, r28
#seg001:00000000006BB078
                 rlwinm    r28, r29, 18,22,29
#seg001:00000000006BB07C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB07C
                 rlwinm    r27, r29, 10,22,29
#seg001:00000000006BB080
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB080
                 addc      r28, r10, r28
#seg001:00000000006BB084
                 rlwinm    r26, r29, 26,22,29
#seg001:00000000006BB088
                 clrlslwi  r25, r29, 24,2
#seg001:00000000006BB08C
                 addc      r26, r10, r26
#seg001:00000000006BB090
                 lwzx      r27, r10, r27
#seg001:00000000006BB094
                 lwz       r28, 0x400(r28)
#seg001:00000000006BB098
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB098
                 addc      r25, r10, r25
#seg001:00000000006BB09C
                 xor       r6, r6, r29
#seg001:00000000006BB0A0
                 xor       r29, r27, r28
#seg001:00000000006BB0A4
                 lwz       r28, 0x800(r26)
#seg001:00000000006BB0A8
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB0A8
                 rlwinm    r27, r6, 18,22,29
#seg001:00000000006BB0AC
                 rlwinm    r26, r6, 10,22,29
#seg001:00000000006BB0B0
                 xor       r29, r29, r28
#seg001:00000000006BB0B4
                 lwz       r28, 0xC00(r25)
#seg001:00000000006BB0B8
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB0B8
                 addc      r26, r8, r26
#seg001:00000000006BB0BC
                 xor       r29, r29, r28
#seg001:00000000006BB0C0
                 rlwinm    r28, r6, 26,22,29
#seg001:00000000006BB0C4
                 xor       r12, r29, r12
#seg001:00000000006BB0C8
                 clrlslwi  r29, r6, 24,2
#seg001:00000000006BB0CC
                 xor       r11, r12, r11
#seg001:00000000006BB0D0
                 addc      r28, r8, r28
#seg001:00000000006BB0D4
                 xor       r30, r11, r30
#seg001:00000000006BB0D8
                 stw       r12, 0x70(r4)
#seg001:00000000006BB0DC
                 addc      r29, r8, r29
#seg001:00000000006BB0E0
                 xor       r9, r30, r9
#seg001:00000000006BB0E4
                 stw       r11, 0x74(r4)
#seg001:00000000006BB0E8
                 stw       r30, 0x78(r4)
#seg001:00000000006BB0EC
                 stw       r9, 0x7C(r4)
#seg001:00000000006BB0F0
                 lwzx      r27, r8, r27
#seg001:00000000006BB0F4
                 lwz       r28, 0x400(r28)
#seg001:00000000006BB0F8
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB0F8
                 lwz       r29, 0x800(r29)
#seg001:00000000006BB0FC
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB0FC
                 xor       r28, r27, r28
#seg001:00000000006BB100
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB100
                 lwz       r27, 0xC(r31)
#seg001:00000000006BB104
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB104
                 xor       r29, r28, r29
#seg001:00000000006BB108
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB108
                 lwz       r28, 0xC00(r26)
#seg001:00000000006BB10C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB10C
                 xor       r29, r29, r28
#seg001:00000000006BB110
                 xor       r29, r29, r27
#seg001:00000000006BB114
                 rlwinm    r27, r29, 26,22,29
#seg001:00000000006BB118
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB118
                 rlwinm    r28, r29, 18,22,29
#seg001:00000000006BB11C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB11C
                 rlwinm    r26, r29, 10,22,29
#seg001:00000000006BB120
                 addc      r27, r10, r27
#seg001:00000000006BB124
                 addc      r28, r10, r28
#seg001:00000000006BB128
                 clrlslwi  r25, r29, 24,2
#seg001:00000000006BB12C
                 xor       r3, r3, r29
#seg001:00000000006BB130
                 lwzx      r26, r10, r26
#seg001:00000000006BB134
                 addc      r25, r10, r25
#seg001:00000000006BB138
                 lwz       r27, 0x800(r27)
#seg001:00000000006BB13C
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB13C
                 lwz       r29, 0x400(r28)
#seg001:00000000006BB140
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB140
                 xor       r29, r26, r29
#seg001:00000000006BB144
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB144
                 rlwinm    r26, r3, 10,22,29
#seg001:00000000006BB148
                 lwz       r28, 0xC00(r25)
#seg001:00000000006BB14C
                 xor       r29, r29, r27
#seg001:00000000006BB150
                 rlwinm    r27, r3, 18,22,29
#seg001:00000000006BB154
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB154
                 xor       r29, r29, r28
#seg001:00000000006BB158
                 rlwinm    r28, r3, 26,22,29
#seg001:00000000006BB15C
                 xor       r12, r29, r12
#seg001:00000000006BB160
                 addc      r29, r8, r28
#seg001:00000000006BB164
                 xor       r11, r12, r11
#seg001:00000000006BB168
                 clrlslwi  r28, r3, 24,2
#seg001:00000000006BB16C
                 xor       r30, r11, r30
#seg001:00000000006BB170
                 stw       r12, 0x60(r4)
#seg001:00000000006BB174
                 addc      r28, r8, r28
#seg001:00000000006BB178
                 xor       r9, r30, r9
#seg001:00000000006BB17C
                 stw       r11, 0x64(r4)
#seg001:00000000006BB180
                 addc      r26, r8, r26
#seg001:00000000006BB184
                 stw       r30, 0x68(r4)
#seg001:00000000006BB188
                 stw       r9, 0x6C(r4)
#seg001:00000000006BB18C
                 lwzx      r27, r8, r27
#seg001:00000000006BB190
                 lwz       r29, 0x400(r29)
#seg001:00000000006BB194
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB194
                 lwz       r28, 0x800(r28)
#seg001:00000000006BB198
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB198
                 xor       r29, r27, r29
#seg001:00000000006BB19C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB19C
                 lwz       r27, 0xC00(r26)
#seg001:00000000006BB1A0
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB1A0
                 xor       r29, r29, r28
#seg001:00000000006BB1A4
                 lwz       r28, 0x10(r31)
#seg001:00000000006BB1A8
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB1A8
                 xor       r29, r29, r27
#seg001:00000000006BB1AC
                 xor       r29, r29, r28
#seg001:00000000006BB1B0
                 rlwinm    r28, r29, 18,22,29
#seg001:00000000006BB1B4
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB1B4
                 rlwinm    r27, r29, 10,22,29
#seg001:00000000006BB1B8
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB1B8
                 addc      r28, r10, r28
#seg001:00000000006BB1BC
                 rlwinm    r26, r29, 26,22,29
#seg001:00000000006BB1C0
                 clrlslwi  r25, r29, 24,2
#seg001:00000000006BB1C4
                 addc      r26, r10, r26
#seg001:00000000006BB1C8
                 lwzx      r27, r10, r27
#seg001:00000000006BB1CC
                 lwz       r28, 0x400(r28)
#seg001:00000000006BB1D0
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB1D0
                 addc      r25, r10, r25
#seg001:00000000006BB1D4
                 xor       r7, r7, r29
#seg001:00000000006BB1D8
                 xor       r29, r27, r28
#seg001:00000000006BB1DC
                 lwz       r28, 0x800(r26)
#seg001:00000000006BB1E0
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB1E0
                 rlwinm    r27, r7, 18,22,29
#seg001:00000000006BB1E4
                 rlwinm    r26, r7, 10,22,29
#seg001:00000000006BB1E8
                 xor       r29, r29, r28
#seg001:00000000006BB1EC
                 lwz       r28, 0xC00(r25)
#seg001:00000000006BB1F0
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB1F0
                 addc      r26, r8, r26
#seg001:00000000006BB1F4
                 xor       r29, r29, r28
#seg001:00000000006BB1F8
                 rlwinm    r28, r7, 26,22,29
#seg001:00000000006BB1FC
                 xor       r12, r29, r12
#seg001:00000000006BB200
                 clrlslwi  r29, r7, 24,2
#seg001:00000000006BB204
                 xor       r11, r12, r11
#seg001:00000000006BB208
                 addc      r28, r8, r28
#seg001:00000000006BB20C
                 xor       r30, r11, r30
#seg001:00000000006BB210
                 stw       r12, 0x50(r4)
#seg001:00000000006BB214
                 addc      r29, r8, r29
#seg001:00000000006BB218
                 xor       r9, r30, r9
#seg001:00000000006BB21C
                 stw       r11, 0x54(r4)
#seg001:00000000006BB220
                 stw       r30, 0x58(r4)
#seg001:00000000006BB224
                 stw       r9, 0x5C(r4)
#seg001:00000000006BB228
                 lwzx      r27, r8, r27
#seg001:00000000006BB22C
                 lwz       r28, 0x400(r28)
#seg001:00000000006BB230
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB230
                 lwz       r29, 0x800(r29)
#seg001:00000000006BB234
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB234
                 xor       r28, r27, r28
#seg001:00000000006BB238
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB238
                 lwz       r27, 0x14(r31)
#seg001:00000000006BB23C
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB23C
                 xor       r29, r28, r29
#seg001:00000000006BB240
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB240
                 lwz       r28, 0xC00(r26)
#seg001:00000000006BB244
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB244
                 xor       r29, r29, r28
#seg001:00000000006BB248
                 xor       r29, r29, r27
#seg001:00000000006BB24C
                 rlwinm    r27, r29, 26,22,29
#seg001:00000000006BB250
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB250
                 rlwinm    r28, r29, 18,22,29
#seg001:00000000006BB254
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB254
                 rlwinm    r26, r29, 10,22,29
#seg001:00000000006BB258
                 addc      r27, r10, r27
#seg001:00000000006BB25C
                 addc      r28, r10, r28
#seg001:00000000006BB260
                 clrlslwi  r25, r29, 24,2
#seg001:00000000006BB264
                 xor       r5, r5, r29
#seg001:00000000006BB268
                 lwzx      r26, r10, r26
#seg001:00000000006BB26C
                 addc      r25, r10, r25
#seg001:00000000006BB270
                 lwz       r27, 0x800(r27)
#seg001:00000000006BB274
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB274
                 lwz       r29, 0x400(r28)
#seg001:00000000006BB278
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB278
                 xor       r29, r26, r29
#seg001:00000000006BB27C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB27C
                 rlwinm    r26, r5, 10,22,29
#seg001:00000000006BB280
                 lwz       r28, 0xC00(r25)
#seg001:00000000006BB284
                 xor       r29, r29, r27
#seg001:00000000006BB288
                 rlwinm    r27, r5, 18,22,29
#seg001:00000000006BB28C
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB28C
                 xor       r29, r29, r28
#seg001:00000000006BB290
                 rlwinm    r28, r5, 26,22,29
#seg001:00000000006BB294
                 xor       r12, r29, r12
#seg001:00000000006BB298
                 addc      r29, r8, r28
#seg001:00000000006BB29C
                 xor       r11, r12, r11
#seg001:00000000006BB2A0
                 clrlslwi  r28, r5, 24,2
#seg001:00000000006BB2A4
                 xor       r30, r11, r30
#seg001:00000000006BB2A8
                 stw       r12, 0x40(r4)
#seg001:00000000006BB2AC
                 addc      r28, r8, r28
#seg001:00000000006BB2B0
                 xor       r9, r30, r9
#seg001:00000000006BB2B4
                 stw       r11, 0x44(r4)
#seg001:00000000006BB2B8
                 addc      r26, r8, r26
#seg001:00000000006BB2BC
                 stw       r30, 0x48(r4)
#seg001:00000000006BB2C0
                 stw       r9, 0x4C(r4)
#seg001:00000000006BB2C4
                 lwzx      r27, r8, r27
#seg001:00000000006BB2C8
                 lwz       r29, 0x400(r29)
#seg001:00000000006BB2CC
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB2CC
                 lwz       r28, 0x800(r28)
#seg001:00000000006BB2D0
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB2D0
                 xor       r29, r27, r29
#seg001:00000000006BB2D4
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB2D4
                 lwz       r27, 0xC00(r26)
#seg001:00000000006BB2D8
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB2D8
                 xor       r29, r29, r28
#seg001:00000000006BB2DC
                 lwz       r28, 0x18(r31)
#seg001:00000000006BB2E0
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB2E0
                 xor       r29, r29, r27
#seg001:00000000006BB2E4
                 xor       r29, r29, r28
#seg001:00000000006BB2E8
                 rlwinm    r28, r29, 18,22,29
#seg001:00000000006BB2EC
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB2EC
                 rlwinm    r27, r29, 10,22,29
#seg001:00000000006BB2F0
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB2F0
                 addc      r28, r10, r28
#seg001:00000000006BB2F4
                 rlwinm    r26, r29, 26,22,29
#seg001:00000000006BB2F8
                 clrlslwi  r25, r29, 24,2
#seg001:00000000006BB2FC
                 addc      r26, r10, r26
#seg001:00000000006BB300
                 lwzx      r27, r10, r27
#seg001:00000000006BB304
                 lwz       r28, 0x400(r28)
#seg001:00000000006BB308
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB308
                 addc      r25, r10, r25
#seg001:00000000006BB30C
                 xor       r6, r6, r29
#seg001:00000000006BB310
                 xor       r29, r27, r28
#seg001:00000000006BB314
                 lwz       r28, 0x800(r26)
#seg001:00000000006BB318
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB318
                 rlwinm    r27, r6, 18,22,29
#seg001:00000000006BB31C
                 rlwinm    r26, r6, 10,22,29
#seg001:00000000006BB320
                 xor       r29, r29, r28
#seg001:00000000006BB324
                 lwz       r28, 0xC00(r25)
#seg001:00000000006BB328
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB328
                 addc      r26, r8, r26
#seg001:00000000006BB32C
                 xor       r29, r29, r28
#seg001:00000000006BB330
                 rlwinm    r28, r6, 26,22,29
#seg001:00000000006BB334
                 xor       r12, r29, r12
#seg001:00000000006BB338
                 clrlslwi  r29, r6, 24,2
#seg001:00000000006BB33C
                 xor       r11, r12, r11
#seg001:00000000006BB340
                 addc      r28, r8, r28
#seg001:00000000006BB344
                 xor       r30, r11, r30
#seg001:00000000006BB348
                 stw       r12, 0x30(r4)
#seg001:00000000006BB34C
                 addc      r29, r8, r29
#seg001:00000000006BB350
                 xor       r9, r30, r9
#seg001:00000000006BB354
                 stw       r11, 0x34(r4)
#seg001:00000000006BB358
                 stw       r30, 0x38(r4)
#seg001:00000000006BB35C
                 stw       r9, 0x3C(r4)
#seg001:00000000006BB360
                 lwzx      r27, r8, r27
#seg001:00000000006BB364
                 lwz       r28, 0x400(r28)
#seg001:00000000006BB368
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB368
                 lwz       r29, 0x800(r29)
#seg001:00000000006BB36C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB36C
                 xor       r28, r27, r28
#seg001:00000000006BB370
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB370
                 lwz       r27, 0x1C(r31)
#seg001:00000000006BB374
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB374
                 xor       r29, r28, r29
#seg001:00000000006BB378
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BB378
                 lwz       r28, 0xC00(r26)
#seg001:00000000006BB37C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB37C
                 xor       r29, r29, r28
#seg001:00000000006BB380
                 xor       r29, r29, r27
#seg001:00000000006BB384
                 rlwinm    r27, r29, 26,22,29
#seg001:00000000006BB388
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB388
                 rlwinm    r28, r29, 18,22,29
#seg001:00000000006BB38C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB38C
                 rlwinm    r26, r29, 10,22,29
#seg001:00000000006BB390
                 addc      r27, r10, r27
#seg001:00000000006BB394
                 addc      r28, r10, r28
#seg001:00000000006BB398
                 clrlslwi  r25, r29, 24,2
#seg001:00000000006BB39C
                 xor       r29, r3, r29
#seg001:00000000006BB3A0
                 lwzx      r26, r10, r26
#seg001:00000000006BB3A4
                 addc      r25, r10, r25
#seg001:00000000006BB3A8
                 lwz       r27, 0x800(r27)
#seg001:00000000006BB3AC
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB3AC
                 lwz       r3, 0x400(r28)
#seg001:00000000006BB3B0
                 xor       r3, r26, r3
#seg001:00000000006BB3B4
                 rlwinm    r26, r29, 10,22,29
#seg001:00000000006BB3B8
                 lwz       r28, 0xC00(r25)
#seg001:00000000006BB3BC
                 xor       r3, r3, r27
#seg001:00000000006BB3C0
                 rlwinm    r27, r29, 18,22,29
#seg001:00000000006BB3C4
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB3C4
                 xor       r3, r3, r28
#seg001:00000000006BB3C8
                 rlwinm    r28, r29, 26,22,29
#seg001:00000000006BB3CC
                 xor       r3, r3, r12
#seg001:00000000006BB3D0
                 addc      r12, r8, r28
#seg001:00000000006BB3D4
                 xor       r11, r3, r11
#seg001:00000000006BB3D8
                 clrlslwi  r28, r29, 24,2
#seg001:00000000006BB3DC
                 xor       r30, r11, r30
#seg001:00000000006BB3E0
                 stw       r3, 0x20(r4)
#seg001:00000000006BB3E4
                 addc      r28, r8, r28
#seg001:00000000006BB3E8
                 xor       r9, r30, r9
#seg001:00000000006BB3EC
                 stw       r11, 0x24(r4)
#seg001:00000000006BB3F0
                 addc      r26, r8, r26
#seg001:00000000006BB3F4
                 stw       r30, 0x28(r4)
#seg001:00000000006BB3F8
                 stw       r9, 0x2C(r4)
#seg001:00000000006BB3FC
                 lwzx      r27, r8, r27
#seg001:00000000006BB400
                 lwz       r12, 0x400(r12)
#seg001:00000000006BB404
                 lwz       r28, 0x800(r28)
#seg001:00000000006BB408
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB408
                 xor       r12, r27, r12
#seg001:00000000006BB40C
                 lwz       r27, 0xC00(r26)
#seg001:00000000006BB410
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB410
                 xor       r12, r12, r28
#seg001:00000000006BB414
                 lwz       r28, 0x20(r31)
#seg001:00000000006BB418
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB418
                 xor       r12, r12, r27
#seg001:00000000006BB41C
                 xor       r12, r12, r28
#seg001:00000000006BB420
                 rlwinm    r28, r12, 18,22,29
#seg001:00000000006BB424
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB424
                 rlwinm    r27, r12, 10,22,29
#seg001:00000000006BB428
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006BB428
                 addc      r28, r10, r28
#seg001:00000000006BB42C
                 rlwinm    r26, r12, 26,22,29
#seg001:00000000006BB430
                 clrlslwi  r25, r12, 24,2
#seg001:00000000006BB434
                 addc      r26, r10, r26
#seg001:00000000006BB438
                 lwzx      r27, r10, r27
#seg001:00000000006BB43C
                 lwz       r28, 0x400(r28)
#seg001:00000000006BB440
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB440
                 addc      r10, r10, r25
#seg001:00000000006BB444
                 xor       r7, r7, r12
#seg001:00000000006BB448
                 xor       r12, r27, r28
#seg001:00000000006BB44C
                 lwz       r28, 0x800(r26)
#seg001:00000000006BB450
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB450
                 xor       r12, r12, r28
#seg001:00000000006BB454
                 lwz       r10, 0xC00(r10)
#seg001:00000000006BB458
                 rlwinm    r28, r7, 18,22,29
#seg001:00000000006BB45C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BB45C
                 xor       r10, r12, r10
#seg001:00000000006BB460
                 rlwinm    r12, r7, 26,22,29
#seg001:00000000006BB464
                 xor       r3, r10, r3
#seg001:00000000006BB468
                 clrlslwi  r10, r7, 24,2
#seg001:00000000006BB46C
                 xor       r11, r3, r11
#seg001:00000000006BB470
                 addc      r10, r8, r10
#seg001:00000000006BB474
                 xor       r30, r11, r30
#seg001:00000000006BB478
                 stw       r3, 0x10(r4)
#seg001:00000000006BB47C
                 xor       r3, r30, r9
#seg001:00000000006BB480
                 stw       r11, 0x14(r4)
#seg001:00000000006BB484
                 addc      r9, r8, r12
#seg001:00000000006BB488
                 stw       r30, 0x18(r4)
#seg001:00000000006BB48C
                 stw       r3, 0x1C(r4)
#seg001:00000000006BB490
                 rlwinm    r3, r7, 10,22,29
#seg001:00000000006BB494
                 lwzx      r11, r8, r28
#seg001:00000000006BB498
                 addc      r3, r8, r3
#seg001:00000000006BB49C
                 lwz       r9, 0x400(r9)
#seg001:00000000006BB4A0
                 lwz       r10, 0x800(r10)
#seg001:00000000006BB4A4
                 xor       r8, r11, r9
#seg001:00000000006BB4A8
                 lwz       r9, 0x24(r31)
#seg001:00000000006BB4AC
                 xor       r8, r8, r10
#seg001:00000000006BB4B0
                 lwz       r3, 0xC00(r3)
#seg001:00000000006BB4B4
                 xor       r3, r8, r3
#seg001:00000000006BB4B8
                 li        r8, 0xA0
#seg001:00000000006BB4BC
                 xor       r3, r3, r9
#seg001:00000000006BB4C0
                 xor       r5, r5, r3
#seg001:00000000006BB4C4
                 li        r3, 0
#seg001:00000000006BB4C8
                 xor       r7, r7, r5
#seg001:00000000006BB4CC
                 xor       r9, r5, r29
#seg001:00000000006BB4D0
                 xor       r6, r7, r6
#seg001:00000000006BB4D4
                 xor       r6, r6, r29
#seg001:00000000006BB4D8
                 stw       r7, 8(r4)
#seg001:00000000006BB4DC
                 stw       r9, 4(r4)
#seg001:00000000006BB4E0
                 stw       r5, 0xC(r4)
#seg001:00000000006BB4E4
                 stw       r3, 0xF0(r4)
#seg001:00000000006BB4E8
                 stw       r6, 0(r4)
#seg001:00000000006BB4EC
                 stb       r8, 0xF0(r4)
#seg001:00000000006BB4F0
                 ld        r25, 0x70+var_38(r1)
#seg001:00000000006BB4F4
                 ld        r26, 0x70+var_30(r1)
#seg001:00000000006BB4F8
                 ld        r27, 0x70+var_28(r1)
#seg001:00000000006BB4FC
                 ld        r28, 0x70+var_20(r1)
#seg001:00000000006BB500
                 ld        r29, 0x70+var_18(r1)
#seg001:00000000006BB504
                 ld        r30, 0x70+var_10(r1)
#seg001:00000000006BB508
                 ld        r31, 0x70+var_8(r1)
#seg001:00000000006BB50C
                 addi      r1, r1, 0x70
#seg001:00000000006BB510
                 blr
#seg001:00000000006BB510
# End of function sub_6BAD34
