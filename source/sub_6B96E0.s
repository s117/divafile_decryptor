# =============== S U B R O U T I N E =======================================
.text
.global .sub_6B96E0
.global sub_6B96E0
#seg001:00000000006B96E0
.sub_6B96E0:                             # CODE XREF: sub_6198B0+20p
sub_6B96E0:
#seg001:00000000006B96E0
                                         # sub_6198E8+18p ...
#seg001:00000000006B96E0

#seg001:00000000006B96E0
 .set var_38, -0x38
#seg001:00000000006B96E0
 .set var_30, -0x30
#seg001:00000000006B96E0
 .set var_28, -0x28
#seg001:00000000006B96E0
 .set var_20, -0x20
#seg001:00000000006B96E0
 .set var_18, -0x18
#seg001:00000000006B96E0
 .set var_10, -0x10
#seg001:00000000006B96E0
 .set var_8, -8
#seg001:00000000006B96E0

#seg001:00000000006B96E0
                 stdu      r1, -0x70(r1)
#seg001:00000000006B96E4
                 lbz       r6, 0xF0(r5)
#seg001:00000000006B96E8
                 cmpwi     cr1, r6, 0xC0
#seg001:00000000006B96EC
                 cmpwi     r6, 0xA0
#seg001:00000000006B96F0
                 std       r31, 0x70+var_8(r1)
#seg001:00000000006B96F4
                 std       r30, 0x70+var_10(r1)
#seg001:00000000006B96F8
                 std       r29, 0x70+var_18(r1)
#seg001:00000000006B96FC
                 std       r28, 0x70+var_20(r1)
#seg001:00000000006B9700
                 std       r27, 0x70+var_28(r1)
#seg001:00000000006B9704
                 std       r26, 0x70+var_30(r1)
#seg001:00000000006B9708
                 std       r25, 0x70+var_38(r1)
#seg001:00000000006B970C
                 cror      eq, eq, 4*cr1+eq
#seg001:00000000006B9710
                 beq       loc_6B9724
#seg001:00000000006B9714
                 cmpwi     r6, 0xE0
#seg001:00000000006B9718
                 beq       loc_6B9724
#seg001:00000000006B971C
                 li        r3, 1
#seg001:00000000006B9720
                 b         loc_6BA844
#seg001:00000000006B9724
 # ---------------------------------------------------------------------------
#seg001:00000000006B9724

#seg001:00000000006B9724
 loc_6B9724:                             # CODE XREF: sub_6B96E0+30j
#seg001:00000000006B9724
                                         # sub_6B96E0+38j
#seg001:00000000006B9724
                 addic     r7, r3, 5
#seg001:00000000006B9728
                 lbz       r10, 1(r3)
#seg001:00000000006B972C
                 lbz       r12, 0(r3)
#seg001:00000000006B9730
                 addic     r11, r3, 6
#seg001:00000000006B9734
                 clrldi    r7, r7, 32
#seg001:00000000006B9738
                 lbz       r31, 2(r3)
#seg001:00000000006B973C
                 slwi      r10, r10, 16
#seg001:00000000006B9740
                 lbz       r30, 4(r3)
#seg001:00000000006B9744
                 addic     r8, r3, 9
#seg001:00000000006B9748
                 insrwi    r10, r12, 8,0
#seg001:00000000006B974C
                 clrldi    r11, r11, 32
#seg001:00000000006B9750
                 lbz       r7, 0(r7)
#seg001:00000000006B9754
                 addic     r9, r3, 7
#seg001:00000000006B9758
                 lbz       r12, 3(r3)
#seg001:00000000006B975C
                 insrwi    r10, r31, 8,16
#seg001:00000000006B9760
                 clrldi    r8, r8, 32
#seg001:00000000006B9764
                 slwi      r7, r7, 16
#seg001:00000000006B9768
                 lwz       r31, 0(r5)
#seg001:00000000006B976C
                 or        r10, r10, r12
#seg001:00000000006B9770
                 lbz       r11, 0(r11)
#seg001:00000000006B9774
                 clrldi    r9, r9, 32
#seg001:00000000006B9778
                 addic     r12, r3, 0xA
#seg001:00000000006B977C
                 insrwi    r7, r30, 8,0
#seg001:00000000006B9780
                 clrldi    r12, r12, 32
#seg001:00000000006B9784
                 xor       r10, r10, r31
#seg001:00000000006B9788
                 lbz       r30, 8(r3)
#seg001:00000000006B978C
                 addic     r31, r3, 0xD
#seg001:00000000006B9790
                 lbz       r8, 0(r8)
#seg001:00000000006B9794
                 insrwi    r7, r11, 8,16
#seg001:00000000006B9798
                 lbz       r9, 0(r9)
#seg001:00000000006B979C
                 clrldi    r31, r31, 32
#seg001:00000000006B97A0
                 lwz       r29, 4(r5)
#seg001:00000000006B97A4
                 slwi      r8, r8, 16
#seg001:00000000006B97A8
                 lbz       r12, 0(r12)
#seg001:00000000006B97AC
                 addic     r11, r3, 0xB
#seg001:00000000006B97B0
                 or        r9, r7, r9
#seg001:00000000006B97B4
                 addic     r7, r3, 0xE
#seg001:00000000006B97B8
                 insrwi    r8, r30, 8,0
#seg001:00000000006B97BC
                 clrldi    r11, r11, 32
#seg001:00000000006B97C0
                 lbz       r30, 0xC(r3)
#seg001:00000000006B97C4
                 clrldi    r7, r7, 32
#seg001:00000000006B97C8
                 lbz       r31, 0(r31)
#seg001:00000000006B97CC
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B97CC
                 addic     r3, r3, 0xF
#seg001:00000000006B97D0
                 insrwi    r8, r12, 8,16
#seg001:00000000006B97D4
                 clrldi    r3, r3, 32
#seg001:00000000006B97D8
                 lwz       r12, 8(r5)
#seg001:00000000006B97DC
                 slwi      r31, r31, 16
#seg001:00000000006B97E0
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B97E0
                 lbz       r11, 0(r11)
#seg001:00000000006B97E4
                 lbz       r7, 0(r7)
#seg001:00000000006B97E8
                 xor       r9, r9, r29
#seg001:00000000006B97EC
                 insrwi    r31, r30, 8,0
#seg001:00000000006B97F0
                 or        r8, r8, r11
#seg001:00000000006B97F4
                 rlwinm    r11, r6, 0,24,29
#seg001:00000000006B97F8
                 lbz       r3, 0(r3)
#seg001:00000000006B97FC
                 insrwi    r31, r7, 8,16
#seg001:00000000006B9800
                 lwz       r7, 0xC(r5)
#seg001:00000000006B9804
                 addc      r5, r5, r11
#seg001:00000000006B9808
                 or        r11, r31, r3
#seg001:00000000006B980C
                 xor       r8, r8, r12
#seg001:00000000006B9810
                 clrldi    r3, r5, 32
#seg001:00000000006B9814
                 xor       r7, r11, r7
#seg001:00000000006B9818
                 cmpwi     r6, 0xE0
#seg001:00000000006B981C
                 beq       loc_6B9830
#seg001:00000000006B9820
                 beq       cr1, loc_6B9A68
#seg001:00000000006B9824
                 cmpwi     r6, 0xA0
#seg001:00000000006B9828
                 beq       loc_6B9CA0
#seg001:00000000006B982C
                 b         loc_6BA788
#seg001:00000000006B9830
 # ---------------------------------------------------------------------------
#seg001:00000000006B9830

#seg001:00000000006B9830
 loc_6B9830:                             # CODE XREF: sub_6B96E0+13Cj
#seg001:00000000006B9830
                 lis       r5, unk_9E08A8@h
#seg001:00000000006B9834
                 rlwinm    r6, r7, 18,22,29
#seg001:00000000006B9838
                 lwz       r30, -0xD0(r3)
#seg001:00000000006B983C
                 addic     r5, r5, unk_9E08A8@l
#seg001:00000000006B9840
                 rlwinm    r11, r10, 10,22,29
#seg001:00000000006B9844
                 addc      r6, r5, r6
#seg001:00000000006B9848
                 rlwinm    r12, r8, 26,22,29
#seg001:00000000006B984C
                 clrlslwi  r29, r9, 24,2
#seg001:00000000006B9850
                 addc      r12, r5, r12
#seg001:00000000006B9854
                 lwzx      r11, r5, r11
#seg001:00000000006B9858
                 addc      r29, r5, r29
#seg001:00000000006B985C
                 lwz       r6, 0x400(r6)
#seg001:00000000006B9860
                 rlwinm    r28, r9, 10,22,29
#seg001:00000000006B9864
                 rlwinm    r31, r10, 18,22,29
#seg001:00000000006B9868
                 xor       r6, r11, r6
#seg001:00000000006B986C
                 lwz       r12, 0x800(r12)
#seg001:00000000006B9870
                 addic     r27, r3, -0xCC
#seg001:00000000006B9874
                 lwz       r29, 0xC00(r29)
#seg001:00000000006B9878
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9878
                 addc      r11, r5, r31
#seg001:00000000006B987C
                 xor       r6, r6, r12
#seg001:00000000006B9880
                 lwzx      r12, r5, r28
#seg001:00000000006B9884
                 rlwinm    r28, r7, 26,22,29
#seg001:00000000006B9888
                 clrldi    r27, r27, 32
#seg001:00000000006B988C
                 addc      r28, r5, r28
#seg001:00000000006B9890
                 lwz       r11, 0x400(r11)
#seg001:00000000006B9894
                 clrlslwi  r31, r8, 24,2
#seg001:00000000006B9898
                 xor       r6, r6, r29
#seg001:00000000006B989C
                 addc      r31, r5, r31
#seg001:00000000006B98A0
                 lwz       r27, 0(r27)
#seg001:00000000006B98A4
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B98A4
                 xor       r6, r30, r6
#seg001:00000000006B98A8
                 rlwinm    r29, r9, 18,22,29
#seg001:00000000006B98AC
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B98AC
                 lwz       r30, 0x800(r28)
#seg001:00000000006B98B0
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B98B0
                 xor       r11, r12, r11
#seg001:00000000006B98B4
                 rlwinm    r28, r8, 10,22,29
#seg001:00000000006B98B8
                 lwz       r31, 0xC00(r31)
#seg001:00000000006B98BC
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B98BC
                 rlwinm    r12, r10, 26,22,29
#seg001:00000000006B98C0
                 addc      r29, r5, r29
#seg001:00000000006B98C4
                 addic     r26, r3, -0xC8
#seg001:00000000006B98C8
                 addc      r12, r5, r12
#seg001:00000000006B98CC
                 xor       r11, r11, r30
#seg001:00000000006B98D0
                 lwzx      r28, r5, r28
#seg001:00000000006B98D4
                 clrlslwi  r30, r7, 24,2
#seg001:00000000006B98D8
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B98D8
                 clrldi    r26, r26, 32
#seg001:00000000006B98DC
                 xor       r11, r11, r31
#seg001:00000000006B98E0
                 lwz       r29, 0x400(r29)
#seg001:00000000006B98E4
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B98E4
                 addc      r31, r5, r30
#seg001:00000000006B98E8
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B98E8
                 lwz       r12, 0x800(r12)
#seg001:00000000006B98EC
                 rlwinm    r8, r8, 18,22,29
#seg001:00000000006B98F0
                 rlwinm    r7, r7, 10,22,29
#seg001:00000000006B98F4
                 xor       r29, r28, r29
#seg001:00000000006B98F8
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B98F8
                 lwz       r30, 0(r26)
#seg001:00000000006B98FC
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B98FC
                 addc      r8, r5, r8
#seg001:00000000006B9900
                 addic     r28, r3, -0xC4
#seg001:00000000006B9904
                 xor       r12, r29, r12
#seg001:00000000006B9908
                 lwz       r31, 0xC00(r31)
#seg001:00000000006B990C
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B990C
                 clrlslwi  r10, r10, 24,2
#seg001:00000000006B9910
                 lwzx      r7, r5, r7
#seg001:00000000006B9914
                 rlwinm    r9, r9, 26,22,29
#seg001:00000000006B9918
                 clrldi    r29, r28, 32
#seg001:00000000006B991C
                 addc      r10, r5, r10
#seg001:00000000006B9920
                 lwz       r8, 0x400(r8)
#seg001:00000000006B9924
                 addc      r9, r5, r9
#seg001:00000000006B9928
                 xor       r7, r7, r8
#seg001:00000000006B992C
                 xor       r12, r12, r31
#seg001:00000000006B9930
                 lwz       r8, 0(r29)
#seg001:00000000006B9934
                 lwz       r10, 0xC00(r10)
#seg001:00000000006B9938
                 xor       r12, r30, r12
#seg001:00000000006B993C
                 lwz       r9, 0x800(r9)
#seg001:00000000006B9940
                 xor       r11, r27, r11
#seg001:00000000006B9944
                 addic     r27, r3, -0xBC
#seg001:00000000006B9948
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B9948
                 xor       r7, r7, r9
#seg001:00000000006B994C
                 rlwinm    r9, r12, 26,22,29
#seg001:00000000006B9950
                 xor       r7, r7, r10
#seg001:00000000006B9954
                 rlwinm    r10, r6, 10,22,29
#seg001:00000000006B9958
                 xor       r7, r8, r7
#seg001:00000000006B995C
                 addc      r9, r5, r9
#seg001:00000000006B9960
                 rlwinm    r31, r7, 18,22,29
#seg001:00000000006B9964
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9964
                 clrlslwi  r29, r11, 24,2
#seg001:00000000006B9968
                 addc      r31, r5, r31
#seg001:00000000006B996C
                 lwzx      r10, r5, r10
#seg001:00000000006B9970
                 rlwinm    r30, r11, 10,22,29
#seg001:00000000006B9974
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9974
                 lwz       r28, -0xC0(r3)
#seg001:00000000006B9978
                 addc      r29, r5, r29
#seg001:00000000006B997C
                 rlwinm    r8, r6, 18,22,29
#seg001:00000000006B9980
                 clrldi    r27, r27, 32
#seg001:00000000006B9984
                 lwz       r31, 0x400(r31)
#seg001:00000000006B9988
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9988
                 addc      r8, r5, r8
#seg001:00000000006B998C
                 lwz       r9, 0x800(r9)
#seg001:00000000006B9990
                 rlwinm    r26, r6, 26,22,29
#seg001:00000000006B9994
                 xor       r10, r10, r31
#seg001:00000000006B9998
                 lwzx      r30, r5, r30
#seg001:00000000006B999C
                 clrlslwi  r31, r12, 24,2
#seg001:00000000006B99A0
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B99A0
                 xor       r9, r10, r9
#seg001:00000000006B99A4
                 lwz       r10, 0xC00(r29)
#seg001:00000000006B99A8
                 addc      r31, r5, r31
#seg001:00000000006B99AC
                 rlwinm    r29, r7, 26,22,29
#seg001:00000000006B99B0
                 lwz       r8, 0x400(r8)
#seg001:00000000006B99B4
                 xor       r10, r9, r10
#seg001:00000000006B99B8
                 lwz       r27, 0(r27)
#seg001:00000000006B99BC
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B99BC
                 addc      r29, r5, r29
#seg001:00000000006B99C0
                 rlwinm    r9, r11, 18,22,29
#seg001:00000000006B99C4
                 xor       r8, r30, r8
#seg001:00000000006B99C8
                 rlwinm    r30, r12, 10,22,29
#seg001:00000000006B99CC
                 xor       r10, r28, r10
#seg001:00000000006B99D0
                 addc      r9, r5, r9
#seg001:00000000006B99D4
                 lwz       r29, 0x800(r29)
#seg001:00000000006B99D8
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B99D8
                 addic     r28, r3, -0xB8
#seg001:00000000006B99DC
                 lwz       r31, 0xC00(r31)
#seg001:00000000006B99E0
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B99E0
                 addc      r26, r5, r26
#seg001:00000000006B99E4
                 xor       r8, r8, r29
#seg001:00000000006B99E8
                 lwzx      r30, r5, r30
#seg001:00000000006B99EC
                 clrldi    r28, r28, 32
#seg001:00000000006B99F0
                 clrlslwi  r29, r7, 24,2
#seg001:00000000006B99F4
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B99F4
                 lwz       r25, 0x400(r9)
#seg001:00000000006B99F8
                 rlwinm    r7, r7, 10,22,29
#seg001:00000000006B99FC
                 addc      r29, r5, r29
#seg001:00000000006B9A00
                 xor       r9, r8, r31
#seg001:00000000006B9A04
                 rlwinm    r8, r12, 18,22,29
#seg001:00000000006B9A08
                 lwz       r12, 0(r28)
#seg001:00000000006B9A0C
                 xor       r31, r30, r25
#seg001:00000000006B9A10
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9A10
                 rlwinm    r11, r11, 26,22,29
#seg001:00000000006B9A14
                 lwz       r30, 0x800(r26)
#seg001:00000000006B9A18
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9A18
                 addc      r8, r5, r8
#seg001:00000000006B9A1C
                 addic     r28, r3, -0xB4
#seg001:00000000006B9A20
                 lwz       r29, 0xC00(r29)
#seg001:00000000006B9A24
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9A24
                 addc      r11, r5, r11
#seg001:00000000006B9A28
                 lwzx      r7, r5, r7
#seg001:00000000006B9A2C
                 xor       r31, r31, r30
#seg001:00000000006B9A30
                 clrlslwi  r6, r6, 24,2
#seg001:00000000006B9A34
                 clrldi    r30, r28, 32
#seg001:00000000006B9A38
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9A38
                 addc      r5, r5, r6
#seg001:00000000006B9A3C
                 lwz       r28, 0x400(r8)
#seg001:00000000006B9A40
                 xor       r9, r27, r9
#seg001:00000000006B9A44
                 lwz       r11, 0x800(r11)
#seg001:00000000006B9A48
                 xor       r8, r31, r29
#seg001:00000000006B9A4C
                 xor       r6, r7, r28
#seg001:00000000006B9A50
                 lwz       r7, 0(r30)
#seg001:00000000006B9A54
                 xor       r6, r6, r11
#seg001:00000000006B9A58
                 lwz       r5, 0xC00(r5)
#seg001:00000000006B9A5C
                 xor       r8, r12, r8
#seg001:00000000006B9A60
                 xor       r5, r6, r5
#seg001:00000000006B9A64
                 xor       r7, r7, r5
#seg001:00000000006B9A68

#seg001:00000000006B9A68
 loc_6B9A68:                             # CODE XREF: sub_6B96E0+140j
#seg001:00000000006B9A68
                 lis       r5, unk_9E08A8@h
#seg001:00000000006B9A6C
                 rlwinm    r6, r7, 18,22,29
#seg001:00000000006B9A70
                 lwz       r30, -0xB0(r3)
#seg001:00000000006B9A74
                 addic     r5, r5, unk_9E08A8@l
#seg001:00000000006B9A78
                 rlwinm    r11, r10, 10,22,29
#seg001:00000000006B9A7C
                 addc      r6, r5, r6
#seg001:00000000006B9A80
                 rlwinm    r12, r8, 26,22,29
#seg001:00000000006B9A84
                 clrlslwi  r29, r9, 24,2
#seg001:00000000006B9A88
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9A88
                 addc      r12, r5, r12
#seg001:00000000006B9A8C
                 lwzx      r11, r5, r11
#seg001:00000000006B9A90
                 addc      r29, r5, r29
#seg001:00000000006B9A94
                 lwz       r6, 0x400(r6)
#seg001:00000000006B9A98
                 rlwinm    r28, r9, 10,22,29
#seg001:00000000006B9A9C
                 rlwinm    r31, r10, 18,22,29
#seg001:00000000006B9AA0
                 xor       r6, r11, r6
#seg001:00000000006B9AA4
                 lwz       r12, 0x800(r12)
#seg001:00000000006B9AA8
                 addic     r27, r3, -0xAC
#seg001:00000000006B9AAC
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B9AAC
                 lwz       r29, 0xC00(r29)
#seg001:00000000006B9AB0
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9AB0
                 addc      r11, r5, r31
#seg001:00000000006B9AB4
                 xor       r6, r6, r12
#seg001:00000000006B9AB8
                 lwzx      r12, r5, r28
#seg001:00000000006B9ABC
                 rlwinm    r28, r7, 26,22,29
#seg001:00000000006B9AC0
                 clrldi    r27, r27, 32
#seg001:00000000006B9AC4
                 addc      r28, r5, r28
#seg001:00000000006B9AC8
                 lwz       r11, 0x400(r11)
#seg001:00000000006B9ACC
                 clrlslwi  r31, r8, 24,2
#seg001:00000000006B9AD0
                 xor       r6, r6, r29
#seg001:00000000006B9AD4
                 addc      r31, r5, r31
#seg001:00000000006B9AD8
                 lwz       r27, 0(r27)
#seg001:00000000006B9ADC
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B9ADC
                 xor       r6, r30, r6
#seg001:00000000006B9AE0
                 rlwinm    r29, r9, 18,22,29
#seg001:00000000006B9AE4
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9AE4
                 lwz       r30, 0x800(r28)
#seg001:00000000006B9AE8
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9AE8
                 xor       r11, r12, r11
#seg001:00000000006B9AEC
                 rlwinm    r28, r8, 10,22,29
#seg001:00000000006B9AF0
                 lwz       r31, 0xC00(r31)
#seg001:00000000006B9AF4
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9AF4
                 rlwinm    r12, r10, 26,22,29
#seg001:00000000006B9AF8
                 addc      r29, r5, r29
#seg001:00000000006B9AFC
                 addic     r26, r3, -0xA8
#seg001:00000000006B9B00
                 addc      r12, r5, r12
#seg001:00000000006B9B04
                 xor       r11, r11, r30
#seg001:00000000006B9B08
                 lwzx      r28, r5, r28
#seg001:00000000006B9B0C
                 clrlslwi  r30, r7, 24,2
#seg001:00000000006B9B10
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9B10
                 clrldi    r26, r26, 32
#seg001:00000000006B9B14
                 xor       r11, r11, r31
#seg001:00000000006B9B18
                 lwz       r29, 0x400(r29)
#seg001:00000000006B9B1C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9B1C
                 addc      r31, r5, r30
#seg001:00000000006B9B20
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9B20
                 lwz       r12, 0x800(r12)
#seg001:00000000006B9B24
                 rlwinm    r8, r8, 18,22,29
#seg001:00000000006B9B28
                 rlwinm    r7, r7, 10,22,29
#seg001:00000000006B9B2C
                 xor       r29, r28, r29
#seg001:00000000006B9B30
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9B30
                 lwz       r30, 0(r26)
#seg001:00000000006B9B34
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9B34
                 addc      r8, r5, r8
#seg001:00000000006B9B38
                 addic     r28, r3, -0xA4
#seg001:00000000006B9B3C
                 xor       r12, r29, r12
#seg001:00000000006B9B40
                 lwz       r31, 0xC00(r31)
#seg001:00000000006B9B44
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9B44
                 clrlslwi  r10, r10, 24,2
#seg001:00000000006B9B48
                 lwzx      r7, r5, r7
#seg001:00000000006B9B4C
                 rlwinm    r9, r9, 26,22,29
#seg001:00000000006B9B50
                 clrldi    r29, r28, 32
#seg001:00000000006B9B54
                 addc      r10, r5, r10
#seg001:00000000006B9B58
                 lwz       r8, 0x400(r8)
#seg001:00000000006B9B5C
                 addc      r9, r5, r9
#seg001:00000000006B9B60
                 xor       r7, r7, r8
#seg001:00000000006B9B64
                 xor       r12, r12, r31
#seg001:00000000006B9B68
                 lwz       r8, 0(r29)
#seg001:00000000006B9B6C
                 lwz       r10, 0xC00(r10)
#seg001:00000000006B9B70
                 xor       r12, r30, r12
#seg001:00000000006B9B74
                 lwz       r9, 0x800(r9)
#seg001:00000000006B9B78
                 xor       r11, r27, r11
#seg001:00000000006B9B7C
                 addic     r27, r3, -0x9C
#seg001:00000000006B9B80
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B9B80
                 xor       r7, r7, r9
#seg001:00000000006B9B84
                 rlwinm    r9, r12, 26,22,29
#seg001:00000000006B9B88
                 xor       r7, r7, r10
#seg001:00000000006B9B8C
                 rlwinm    r10, r6, 10,22,29
#seg001:00000000006B9B90
                 xor       r7, r8, r7
#seg001:00000000006B9B94
                 addc      r9, r5, r9
#seg001:00000000006B9B98
                 rlwinm    r31, r7, 18,22,29
#seg001:00000000006B9B9C
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9B9C
                 clrlslwi  r29, r11, 24,2
#seg001:00000000006B9BA0
                 addc      r31, r5, r31
#seg001:00000000006B9BA4
                 lwzx      r10, r5, r10
#seg001:00000000006B9BA8
                 rlwinm    r30, r11, 10,22,29
#seg001:00000000006B9BAC
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9BAC
                 lwz       r28, -0xA0(r3)
#seg001:00000000006B9BB0
                 addc      r29, r5, r29
#seg001:00000000006B9BB4
                 rlwinm    r8, r6, 18,22,29
#seg001:00000000006B9BB8
                 clrldi    r27, r27, 32
#seg001:00000000006B9BBC
                 lwz       r31, 0x400(r31)
#seg001:00000000006B9BC0
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9BC0
                 addc      r8, r5, r8
#seg001:00000000006B9BC4
                 lwz       r9, 0x800(r9)
#seg001:00000000006B9BC8
                 rlwinm    r26, r6, 26,22,29
#seg001:00000000006B9BCC
                 xor       r10, r10, r31
#seg001:00000000006B9BD0
                 lwzx      r30, r5, r30
#seg001:00000000006B9BD4
                 clrlslwi  r31, r12, 24,2
#seg001:00000000006B9BD8
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9BD8
                 xor       r9, r10, r9
#seg001:00000000006B9BDC
                 lwz       r10, 0xC00(r29)
#seg001:00000000006B9BE0
                 addc      r31, r5, r31
#seg001:00000000006B9BE4
                 rlwinm    r29, r7, 26,22,29
#seg001:00000000006B9BE8
                 lwz       r8, 0x400(r8)
#seg001:00000000006B9BEC
                 xor       r10, r9, r10
#seg001:00000000006B9BF0
                 lwz       r27, 0(r27)
#seg001:00000000006B9BF4
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B9BF4
                 addc      r29, r5, r29
#seg001:00000000006B9BF8
                 rlwinm    r9, r11, 18,22,29
#seg001:00000000006B9BFC
                 xor       r8, r30, r8
#seg001:00000000006B9C00
                 rlwinm    r30, r12, 10,22,29
#seg001:00000000006B9C04
                 xor       r10, r28, r10
#seg001:00000000006B9C08
                 addc      r9, r5, r9
#seg001:00000000006B9C0C
                 lwz       r29, 0x800(r29)
#seg001:00000000006B9C10
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9C10
                 addic     r28, r3, -0x98
#seg001:00000000006B9C14
                 lwz       r31, 0xC00(r31)
#seg001:00000000006B9C18
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9C18
                 addc      r26, r5, r26
#seg001:00000000006B9C1C
                 xor       r8, r8, r29
#seg001:00000000006B9C20
                 lwzx      r30, r5, r30
#seg001:00000000006B9C24
                 clrldi    r28, r28, 32
#seg001:00000000006B9C28
                 clrlslwi  r29, r7, 24,2
#seg001:00000000006B9C2C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9C2C
                 lwz       r25, 0x400(r9)
#seg001:00000000006B9C30
                 rlwinm    r7, r7, 10,22,29
#seg001:00000000006B9C34
                 addc      r29, r5, r29
#seg001:00000000006B9C38
                 xor       r9, r8, r31
#seg001:00000000006B9C3C
                 rlwinm    r8, r12, 18,22,29
#seg001:00000000006B9C40
                 lwz       r12, 0(r28)
#seg001:00000000006B9C44
                 xor       r31, r30, r25
#seg001:00000000006B9C48
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9C48
                 rlwinm    r11, r11, 26,22,29
#seg001:00000000006B9C4C
                 lwz       r30, 0x800(r26)
#seg001:00000000006B9C50
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9C50
                 addc      r8, r5, r8
#seg001:00000000006B9C54
                 addic     r28, r3, -0x94
#seg001:00000000006B9C58
                 lwz       r29, 0xC00(r29)
#seg001:00000000006B9C5C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9C5C
                 addc      r11, r5, r11
#seg001:00000000006B9C60
                 lwzx      r7, r5, r7
#seg001:00000000006B9C64
                 xor       r31, r31, r30
#seg001:00000000006B9C68
                 clrlslwi  r6, r6, 24,2
#seg001:00000000006B9C6C
                 clrldi    r30, r28, 32
#seg001:00000000006B9C70
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9C70
                 addc      r5, r5, r6
#seg001:00000000006B9C74
                 lwz       r28, 0x400(r8)
#seg001:00000000006B9C78
                 xor       r9, r27, r9
#seg001:00000000006B9C7C
                 lwz       r11, 0x800(r11)
#seg001:00000000006B9C80
                 xor       r8, r31, r29
#seg001:00000000006B9C84
                 xor       r6, r7, r28
#seg001:00000000006B9C88
                 lwz       r7, 0(r30)
#seg001:00000000006B9C8C
                 xor       r6, r6, r11
#seg001:00000000006B9C90
                 lwz       r5, 0xC00(r5)
#seg001:00000000006B9C94
                 xor       r8, r12, r8
#seg001:00000000006B9C98
                 xor       r5, r6, r5
#seg001:00000000006B9C9C
                 xor       r7, r7, r5
#seg001:00000000006B9CA0

#seg001:00000000006B9CA0
 loc_6B9CA0:                             # CODE XREF: sub_6B96E0+148j
#seg001:00000000006B9CA0
                 lis       r5, unk_9E08A8@h
#seg001:00000000006B9CA4
                 rlwinm    r6, r7, 18,22,29
#seg001:00000000006B9CA8
                 lwz       r30, -0x90(r3)
#seg001:00000000006B9CAC
                 addic     r5, r5, unk_9E08A8@l
#seg001:00000000006B9CB0
                 rlwinm    r11, r10, 10,22,29
#seg001:00000000006B9CB4
                 addc      r6, r5, r6
#seg001:00000000006B9CB8
                 rlwinm    r12, r8, 26,22,29
#seg001:00000000006B9CBC
                 clrlslwi  r29, r9, 24,2
#seg001:00000000006B9CC0
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9CC0
                 addc      r12, r5, r12
#seg001:00000000006B9CC4
                 lwzx      r11, r5, r11
#seg001:00000000006B9CC8
                 addc      r29, r5, r29
#seg001:00000000006B9CCC
                 lwz       r6, 0x400(r6)
#seg001:00000000006B9CD0
                 rlwinm    r28, r9, 10,22,29
#seg001:00000000006B9CD4
                 rlwinm    r31, r10, 18,22,29
#seg001:00000000006B9CD8
                 xor       r6, r11, r6
#seg001:00000000006B9CDC
                 lwz       r12, 0x800(r12)
#seg001:00000000006B9CE0
                 addic     r27, r3, -0x8C
#seg001:00000000006B9CE4
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B9CE4
                 lwz       r29, 0xC00(r29)
#seg001:00000000006B9CE8
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9CE8
                 addc      r11, r5, r31
#seg001:00000000006B9CEC
                 xor       r6, r6, r12
#seg001:00000000006B9CF0
                 lwzx      r12, r5, r28
#seg001:00000000006B9CF4
                 rlwinm    r28, r7, 26,22,29
#seg001:00000000006B9CF8
                 clrldi    r27, r27, 32
#seg001:00000000006B9CFC
                 addc      r28, r5, r28
#seg001:00000000006B9D00
                 lwz       r11, 0x400(r11)
#seg001:00000000006B9D04
                 clrlslwi  r31, r8, 24,2
#seg001:00000000006B9D08
                 xor       r6, r6, r29
#seg001:00000000006B9D0C
                 addc      r31, r5, r31
#seg001:00000000006B9D10
                 lwz       r27, 0(r27)
#seg001:00000000006B9D14
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B9D14
                 xor       r6, r30, r6
#seg001:00000000006B9D18
                 rlwinm    r29, r9, 18,22,29
#seg001:00000000006B9D1C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9D1C
                 lwz       r30, 0x800(r28)
#seg001:00000000006B9D20
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9D20
                 xor       r11, r12, r11
#seg001:00000000006B9D24
                 rlwinm    r28, r8, 10,22,29
#seg001:00000000006B9D28
                 lwz       r31, 0xC00(r31)
#seg001:00000000006B9D2C
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9D2C
                 rlwinm    r12, r10, 26,22,29
#seg001:00000000006B9D30
                 addc      r29, r5, r29
#seg001:00000000006B9D34
                 addic     r26, r3, -0x88
#seg001:00000000006B9D38
                 addc      r12, r5, r12
#seg001:00000000006B9D3C
                 xor       r11, r11, r30
#seg001:00000000006B9D40
                 lwzx      r28, r5, r28
#seg001:00000000006B9D44
                 clrlslwi  r30, r7, 24,2
#seg001:00000000006B9D48
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9D48
                 clrldi    r26, r26, 32
#seg001:00000000006B9D4C
                 xor       r11, r11, r31
#seg001:00000000006B9D50
                 lwz       r29, 0x400(r29)
#seg001:00000000006B9D54
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9D54
                 addc      r31, r5, r30
#seg001:00000000006B9D58
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9D58
                 lwz       r12, 0x800(r12)
#seg001:00000000006B9D5C
                 rlwinm    r8, r8, 18,22,29
#seg001:00000000006B9D60
                 rlwinm    r7, r7, 10,22,29
#seg001:00000000006B9D64
                 xor       r29, r28, r29
#seg001:00000000006B9D68
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9D68
                 lwz       r30, 0(r26)
#seg001:00000000006B9D6C
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9D6C
                 addc      r8, r5, r8
#seg001:00000000006B9D70
                 addic     r28, r3, -0x84
#seg001:00000000006B9D74
                 xor       r12, r29, r12
#seg001:00000000006B9D78
                 lwz       r31, 0xC00(r31)
#seg001:00000000006B9D7C
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9D7C
                 clrlslwi  r10, r10, 24,2
#seg001:00000000006B9D80
                 lwzx      r7, r5, r7
#seg001:00000000006B9D84
                 rlwinm    r9, r9, 26,22,29
#seg001:00000000006B9D88
                 clrldi    r29, r28, 32
#seg001:00000000006B9D8C
                 addc      r10, r5, r10
#seg001:00000000006B9D90
                 lwz       r8, 0x400(r8)
#seg001:00000000006B9D94
                 addc      r9, r5, r9
#seg001:00000000006B9D98
                 xor       r7, r7, r8
#seg001:00000000006B9D9C
                 xor       r12, r12, r31
#seg001:00000000006B9DA0
                 lwz       r8, 0(r29)
#seg001:00000000006B9DA4
                 lwz       r10, 0xC00(r10)
#seg001:00000000006B9DA8
                 xor       r12, r30, r12
#seg001:00000000006B9DAC
                 lwz       r9, 0x800(r9)
#seg001:00000000006B9DB0
                 xor       r11, r27, r11
#seg001:00000000006B9DB4
                 addic     r27, r3, -0x7C
#seg001:00000000006B9DB8
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B9DB8
                 xor       r7, r7, r9
#seg001:00000000006B9DBC
                 rlwinm    r9, r12, 26,22,29
#seg001:00000000006B9DC0
                 xor       r7, r7, r10
#seg001:00000000006B9DC4
                 rlwinm    r10, r6, 10,22,29
#seg001:00000000006B9DC8
                 xor       r7, r8, r7
#seg001:00000000006B9DCC
                 addc      r9, r5, r9
#seg001:00000000006B9DD0
                 rlwinm    r31, r7, 18,22,29
#seg001:00000000006B9DD4
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9DD4
                 clrlslwi  r29, r11, 24,2
#seg001:00000000006B9DD8
                 addc      r31, r5, r31
#seg001:00000000006B9DDC
                 lwzx      r10, r5, r10
#seg001:00000000006B9DE0
                 rlwinm    r30, r11, 10,22,29
#seg001:00000000006B9DE4
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9DE4
                 lwz       r28, -0x80(r3)
#seg001:00000000006B9DE8
                 addc      r29, r5, r29
#seg001:00000000006B9DEC
                 rlwinm    r8, r6, 18,22,29
#seg001:00000000006B9DF0
                 clrldi    r27, r27, 32
#seg001:00000000006B9DF4
                 lwz       r31, 0x400(r31)
#seg001:00000000006B9DF8
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9DF8
                 addc      r8, r5, r8
#seg001:00000000006B9DFC
                 lwz       r9, 0x800(r9)
#seg001:00000000006B9E00
                 rlwinm    r26, r6, 26,22,29
#seg001:00000000006B9E04
                 xor       r10, r10, r31
#seg001:00000000006B9E08
                 lwzx      r30, r5, r30
#seg001:00000000006B9E0C
                 clrlslwi  r31, r12, 24,2
#seg001:00000000006B9E10
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9E10
                 xor       r9, r10, r9
#seg001:00000000006B9E14
                 lwz       r10, 0xC00(r29)
#seg001:00000000006B9E18
                 addc      r31, r5, r31
#seg001:00000000006B9E1C
                 rlwinm    r29, r7, 26,22,29
#seg001:00000000006B9E20
                 lwz       r8, 0x400(r8)
#seg001:00000000006B9E24
                 xor       r9, r9, r10
#seg001:00000000006B9E28
                 lwz       r27, 0(r27)
#seg001:00000000006B9E2C
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B9E2C
                 addc      r29, r5, r29
#seg001:00000000006B9E30
                 rlwinm    r10, r11, 18,22,29
#seg001:00000000006B9E34
                 xor       r8, r30, r8
#seg001:00000000006B9E38
                 xor       r9, r28, r9
#seg001:00000000006B9E3C
                 rlwinm    r30, r12, 10,22,29
#seg001:00000000006B9E40
                 addic     r28, r3, -0x78
#seg001:00000000006B9E44
                 addc      r10, r5, r10
#seg001:00000000006B9E48
                 lwz       r29, 0x800(r29)
#seg001:00000000006B9E4C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9E4C
                 clrldi    r28, r28, 32
#seg001:00000000006B9E50
                 lwz       r31, 0xC00(r31)
#seg001:00000000006B9E54
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9E54
                 xor       r8, r8, r29
#seg001:00000000006B9E58
                 addc      r26, r5, r26
#seg001:00000000006B9E5C
                 clrlslwi  r29, r7, 24,2
#seg001:00000000006B9E60
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9E60
                 lwzx      r30, r5, r30
#seg001:00000000006B9E64
                 lwz       r10, 0x400(r10)
#seg001:00000000006B9E68
                 xor       r8, r8, r31
#seg001:00000000006B9E6C
                 addc      r29, r5, r29
#seg001:00000000006B9E70
                 lwz       r31, 0(r28)
#seg001:00000000006B9E74
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9E74
                 rlwinm    r12, r12, 18,22,29
#seg001:00000000006B9E78
                 xor       r10, r30, r10
#seg001:00000000006B9E7C
                 rlwinm    r7, r7, 10,22,29
#seg001:00000000006B9E80
                 lwz       r30, 0x800(r26)
#seg001:00000000006B9E84
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9E84
                 rlwinm    r11, r11, 26,22,29
#seg001:00000000006B9E88
                 addc      r12, r5, r12
#seg001:00000000006B9E8C
                 addic     r28, r3, -0x74
#seg001:00000000006B9E90
                 lwz       r29, 0xC00(r29)
#seg001:00000000006B9E94
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9E94
                 addc      r11, r5, r11
#seg001:00000000006B9E98
                 xor       r10, r10, r30
#seg001:00000000006B9E9C
                 clrlslwi  r6, r6, 24,2
#seg001:00000000006B9EA0
                 lwzx      r7, r5, r7
#seg001:00000000006B9EA4
                 clrldi    r30, r28, 32
#seg001:00000000006B9EA8
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9EA8
                 lwz       r12, 0x400(r12)
#seg001:00000000006B9EAC
                 addc      r6, r5, r6
#seg001:00000000006B9EB0
                 lwz       r11, 0x800(r11)
#seg001:00000000006B9EB4
                 xor       r7, r7, r12
#seg001:00000000006B9EB8
                 xor       r10, r10, r29
#seg001:00000000006B9EBC
                 lwz       r12, 0(r30)
#seg001:00000000006B9EC0
                 xor       r7, r7, r11
#seg001:00000000006B9EC4
                 lwz       r6, 0xC00(r6)
#seg001:00000000006B9EC8
                 rlwinm    r11, r9, 10,22,29
#seg001:00000000006B9ECC
                 xor       r10, r31, r10
#seg001:00000000006B9ED0
                 xor       r6, r7, r6
#seg001:00000000006B9ED4
                 xor       r8, r27, r8
#seg001:00000000006B9ED8
                 xor       r6, r12, r6
#seg001:00000000006B9EDC
                 lwzx      r7, r5, r11
#seg001:00000000006B9EE0
                 clrlslwi  r28, r8, 24,2
#seg001:00000000006B9EE4
                 rlwinm    r12, r6, 18,22,29
#seg001:00000000006B9EE8
                 lwz       r29, -0x70(r3)
#seg001:00000000006B9EEC
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9EEC
                 rlwinm    r11, r10, 26,22,29
#seg001:00000000006B9EF0
                 addc      r12, r5, r12
#seg001:00000000006B9EF4
                 addc      r11, r5, r11
#seg001:00000000006B9EF8
                 rlwinm    r31, r9, 18,22,29
#seg001:00000000006B9EFC
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9EFC
                 rlwinm    r30, r8, 10,22,29
#seg001:00000000006B9F00
                 addc      r28, r5, r28
#seg001:00000000006B9F04
                 lwz       r12, 0x400(r12)
#seg001:00000000006B9F08
                 addc      r31, r5, r31
#seg001:00000000006B9F0C
                 lwz       r11, 0x800(r11)
#seg001:00000000006B9F10
                 addic     r27, r3, -0x6C
#seg001:00000000006B9F14
                 # .drop r27 # 0xFFFFFFFF
#seg001:00000000006B9F14
                 xor       r7, r7, r12
#seg001:00000000006B9F18
                 lwzx      r12, r5, r30
#seg001:00000000006B9F1C
                 rlwinm    r26, r6, 26,22,29
#seg001:00000000006B9F20
                 lwz       r28, 0xC00(r28)
#seg001:00000000006B9F24
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006B9F24
                 xor       r7, r7, r11
#seg001:00000000006B9F28
                 clrldi    r30, r27, 32
#seg001:00000000006B9F2C
                 lwz       r11, 0x400(r31)
#seg001:00000000006B9F30
                 xor       r7, r7, r28
#seg001:00000000006B9F34
                 addc      r31, r5, r26
#seg001:00000000006B9F38
                 clrlslwi  r27, r10, 24,2
#seg001:00000000006B9F3C
                 xor       r7, r29, r7
#seg001:00000000006B9F40
                 lwz       r30, 0(r30)
#seg001:00000000006B9F44
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9F44
                 rlwinm    r29, r10, 10,22,29
#seg001:00000000006B9F48
                 xor       r11, r12, r11
#seg001:00000000006B9F4C
                 lwz       r31, 0x800(r31)
#seg001:00000000006B9F50
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9F50
                 addc      r12, r5, r27
#seg001:00000000006B9F54
                 rlwinm    r28, r8, 18,22,29
#seg001:00000000006B9F58
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006B9F58
                 addic     r27, r3, -0x68
#seg001:00000000006B9F5C
                 xor       r11, r11, r31
#seg001:00000000006B9F60
                 lwzx      r29, r5, r29
#seg001:00000000006B9F64
                 addc      r28, r5, r28
#seg001:00000000006B9F68
                 rlwinm    r31, r9, 26,22,29
#seg001:00000000006B9F6C
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9F6C
                 clrldi    r27, r27, 32
#seg001:00000000006B9F70
                 lwz       r12, 0xC00(r12)
#seg001:00000000006B9F74
                 clrlslwi  r26, r6, 24,2
#seg001:00000000006B9F78
                 addc      r31, r5, r31
#seg001:00000000006B9F7C
                 addc      r26, r5, r26
#seg001:00000000006B9F80
                 lwz       r28, 0x400(r28)
#seg001:00000000006B9F84
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006B9F84
                 xor       r11, r11, r12
#seg001:00000000006B9F88
                 rlwinm    r10, r10, 18,22,29
#seg001:00000000006B9F8C
                 rlwinm    r6, r6, 10,22,29
#seg001:00000000006B9F90
                 lwz       r12, 0(r27)
#seg001:00000000006B9F94
                 xor       r11, r30, r11
#seg001:00000000006B9F98
                 lwz       r31, 0x800(r31)
#seg001:00000000006B9F9C
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9F9C
                 rlwinm    r8, r8, 26,22,29
#seg001:00000000006B9FA0
                 addc      r10, r5, r10
#seg001:00000000006B9FA4
                 xor       r30, r29, r28
#seg001:00000000006B9FA8
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006B9FA8
                 addic     r28, r3, -0x64
#seg001:00000000006B9FAC
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006B9FAC
                 addc      r8, r5, r8
#seg001:00000000006B9FB0
                 lwz       r29, 0xC00(r26)
#seg001:00000000006B9FB4
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006B9FB4
                 xor       r31, r30, r31
#seg001:00000000006B9FB8
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006B9FB8
                 lwzx      r6, r5, r6
#seg001:00000000006B9FBC
                 clrlslwi  r9, r9, 24,2
#seg001:00000000006B9FC0
                 lwz       r10, 0x400(r10)
#seg001:00000000006B9FC4
                 clrldi    r30, r28, 32
#seg001:00000000006B9FC8
                 addc      r9, r5, r9
#seg001:00000000006B9FCC
                 lwz       r8, 0x800(r8)
#seg001:00000000006B9FD0
                 xor       r6, r6, r10
#seg001:00000000006B9FD4
                 xor       r31, r31, r29
#seg001:00000000006B9FD8
                 xor       r6, r6, r8
#seg001:00000000006B9FDC
                 lwz       r10, 0(r30)
#seg001:00000000006B9FE0
                 xor       r12, r12, r31
#seg001:00000000006B9FE4
                 lwz       r8, 0xC00(r9)
#seg001:00000000006B9FE8
                 clrlslwi  r28, r11, 24,2
#seg001:00000000006B9FEC
                 rlwinm    r9, r7, 10,22,29
#seg001:00000000006B9FF0
                 xor       r6, r6, r8
#seg001:00000000006B9FF4
                 rlwinm    r31, r7, 18,22,29
#seg001:00000000006B9FF8
                 xor       r6, r10, r6
#seg001:00000000006B9FFC
                 rlwinm    r30, r11, 10,22,29
#seg001:00000000006BA000
                 rlwinm    r10, r6, 18,22,29
#seg001:00000000006BA004
                 lwzx      r8, r5, r9
#seg001:00000000006BA008
                 addc      r28, r5, r28
#seg001:00000000006BA00C
                 rlwinm    r9, r12, 26,22,29
#seg001:00000000006BA010
                 lwz       r29, -0x60(r3)
#seg001:00000000006BA014
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA014
                 addc      r10, r5, r10
#seg001:00000000006BA018
                 addc      r9, r5, r9
#seg001:00000000006BA01C
                 addc      r31, r5, r31
#seg001:00000000006BA020
                 addic     r27, r3, -0x5C
#seg001:00000000006BA024
                 rlwinm    r26, r6, 26,22,29
#seg001:00000000006BA028
                 lwz       r10, 0x400(r10)
#seg001:00000000006BA02C
                 lwz       r9, 0x800(r9)
#seg001:00000000006BA030
                 xor       r8, r8, r10
#seg001:00000000006BA034
                 lwzx      r10, r5, r30
#seg001:00000000006BA038
                 lwz       r28, 0xC00(r28)
#seg001:00000000006BA03C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA03C
                 xor       r8, r8, r9
#seg001:00000000006BA040
                 clrldi    r30, r27, 32
#seg001:00000000006BA044
                 lwz       r9, 0x400(r31)
#seg001:00000000006BA048
                 xor       r8, r8, r28
#seg001:00000000006BA04C
                 addc      r31, r5, r26
#seg001:00000000006BA050
                 clrlslwi  r27, r12, 24,2
#seg001:00000000006BA054
                 xor       r8, r29, r8
#seg001:00000000006BA058
                 rlwinm    r29, r12, 10,22,29
#seg001:00000000006BA05C
                 xor       r9, r10, r9
#seg001:00000000006BA060
                 lwz       r30, 0(r30)
#seg001:00000000006BA064
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA064
                 addc      r10, r5, r27
#seg001:00000000006BA068
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA06C
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA06C
                 rlwinm    r28, r11, 18,22,29
#seg001:00000000006BA070
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA070
                 addic     r27, r3, -0x58
#seg001:00000000006BA074
                 xor       r9, r9, r31
#seg001:00000000006BA078
                 lwzx      r29, r5, r29
#seg001:00000000006BA07C
                 addc      r28, r5, r28
#seg001:00000000006BA080
                 rlwinm    r31, r7, 26,22,29
#seg001:00000000006BA084
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA084
                 lwz       r10, 0xC00(r10)
#seg001:00000000006BA088
                 clrldi    r27, r27, 32
#seg001:00000000006BA08C
                 clrlslwi  r26, r6, 24,2
#seg001:00000000006BA090
                 addc      r31, r5, r31
#seg001:00000000006BA094
                 xor       r9, r9, r10
#seg001:00000000006BA098
                 lwz       r28, 0x400(r28)
#seg001:00000000006BA09C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA09C
                 addc      r26, r5, r26
#seg001:00000000006BA0A0
                 rlwinm    r10, r12, 18,22,29
#seg001:00000000006BA0A4
                 rlwinm    r6, r6, 10,22,29
#seg001:00000000006BA0A8
                 lwz       r12, 0(r27)
#seg001:00000000006BA0AC
                 xor       r9, r30, r9
#seg001:00000000006BA0B0
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA0B4
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA0B4
                 rlwinm    r11, r11, 26,22,29
#seg001:00000000006BA0B8
                 addc      r10, r5, r10
#seg001:00000000006BA0BC
                 xor       r30, r29, r28
#seg001:00000000006BA0C0
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA0C0
                 addic     r28, r3, -0x54
#seg001:00000000006BA0C4
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA0C4
                 addc      r11, r5, r11
#seg001:00000000006BA0C8
                 lwz       r29, 0xC00(r26)
#seg001:00000000006BA0CC
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA0CC
                 xor       r31, r30, r31
#seg001:00000000006BA0D0
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA0D0
                 lwzx      r6, r5, r6
#seg001:00000000006BA0D4
                 clrlslwi  r7, r7, 24,2
#seg001:00000000006BA0D8
                 lwz       r10, 0x400(r10)
#seg001:00000000006BA0DC
                 clrldi    r30, r28, 32
#seg001:00000000006BA0E0
                 addc      r7, r5, r7
#seg001:00000000006BA0E4
                 lwz       r11, 0x800(r11)
#seg001:00000000006BA0E8
                 xor       r6, r6, r10
#seg001:00000000006BA0EC
                 xor       r31, r31, r29
#seg001:00000000006BA0F0
                 xor       r6, r6, r11
#seg001:00000000006BA0F4
                 lwz       r10, 0(r30)
#seg001:00000000006BA0F8
                 rlwinm    r11, r8, 10,22,29
#seg001:00000000006BA0FC
                 lwz       r7, 0xC00(r7)
#seg001:00000000006BA100
                 xor       r12, r12, r31
#seg001:00000000006BA104
                 clrlslwi  r28, r9, 24,2
#seg001:00000000006BA108
                 xor       r6, r6, r7
#seg001:00000000006BA10C
                 rlwinm    r31, r8, 18,22,29
#seg001:00000000006BA110
                 xor       r6, r10, r6
#seg001:00000000006BA114
                 lwzx      r7, r5, r11
#seg001:00000000006BA118
                 rlwinm    r10, r12, 26,22,29
#seg001:00000000006BA11C
                 rlwinm    r11, r6, 18,22,29
#seg001:00000000006BA120
                 lwz       r29, -0x50(r3)
#seg001:00000000006BA124
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA124
                 addc      r10, r5, r10
#seg001:00000000006BA128
                 addc      r11, r5, r11
#seg001:00000000006BA12C
                 rlwinm    r30, r9, 10,22,29
#seg001:00000000006BA130
                 addc      r28, r5, r28
#seg001:00000000006BA134
                 addc      r31, r5, r31
#seg001:00000000006BA138
                 addic     r27, r3, -0x4C
#seg001:00000000006BA13C
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA140
                 rlwinm    r26, r6, 26,22,29
#seg001:00000000006BA144
                 lwz       r10, 0x800(r10)
#seg001:00000000006BA148
                 xor       r7, r7, r11
#seg001:00000000006BA14C
                 lwzx      r11, r5, r30
#seg001:00000000006BA150
                 lwz       r28, 0xC00(r28)
#seg001:00000000006BA154
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA154
                 xor       r7, r7, r10
#seg001:00000000006BA158
                 clrldi    r30, r27, 32
#seg001:00000000006BA15C
                 lwz       r10, 0x400(r31)
#seg001:00000000006BA160
                 xor       r7, r7, r28
#seg001:00000000006BA164
                 addc      r31, r5, r26
#seg001:00000000006BA168
                 clrlslwi  r27, r12, 24,2
#seg001:00000000006BA16C
                 xor       r7, r29, r7
#seg001:00000000006BA170
                 lwz       r30, 0(r30)
#seg001:00000000006BA174
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA174
                 rlwinm    r29, r12, 10,22,29
#seg001:00000000006BA178
                 xor       r10, r11, r10
#seg001:00000000006BA17C
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA180
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA180
                 addc      r11, r5, r27
#seg001:00000000006BA184
                 rlwinm    r28, r9, 18,22,29
#seg001:00000000006BA188
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA188
                 addic     r27, r3, -0x48
#seg001:00000000006BA18C
                 xor       r10, r10, r31
#seg001:00000000006BA190
                 lwzx      r29, r5, r29
#seg001:00000000006BA194
                 addc      r28, r5, r28
#seg001:00000000006BA198
                 rlwinm    r31, r8, 26,22,29
#seg001:00000000006BA19C
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA19C
                 clrldi    r27, r27, 32
#seg001:00000000006BA1A0
                 lwz       r11, 0xC00(r11)
#seg001:00000000006BA1A4
                 addc      r31, r5, r31
#seg001:00000000006BA1A8
                 clrlslwi  r26, r6, 24,2
#seg001:00000000006BA1AC
                 xor       r10, r10, r11
#seg001:00000000006BA1B0
                 lwz       r28, 0x400(r28)
#seg001:00000000006BA1B4
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA1B4
                 addc      r26, r5, r26
#seg001:00000000006BA1B8
                 rlwinm    r11, r12, 18,22,29
#seg001:00000000006BA1BC
                 lwz       r12, 0(r27)
#seg001:00000000006BA1C0
                 xor       r10, r30, r10
#seg001:00000000006BA1C4
                 rlwinm    r6, r6, 10,22,29
#seg001:00000000006BA1C8
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA1CC
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA1CC
                 xor       r30, r29, r28
#seg001:00000000006BA1D0
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA1D0
                 rlwinm    r9, r9, 26,22,29
#seg001:00000000006BA1D4
                 addc      r11, r5, r11
#seg001:00000000006BA1D8
                 lwz       r29, 0xC00(r26)
#seg001:00000000006BA1DC
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA1DC
                 addic     r28, r3, -0x44
#seg001:00000000006BA1E0
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA1E0
                 addc      r9, r5, r9
#seg001:00000000006BA1E4
                 xor       r31, r30, r31
#seg001:00000000006BA1E8
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA1E8
                 lwzx      r6, r5, r6
#seg001:00000000006BA1EC
                 clrlslwi  r8, r8, 24,2
#seg001:00000000006BA1F0
                 clrldi    r30, r28, 32
#seg001:00000000006BA1F4
                 addc      r8, r5, r8
#seg001:00000000006BA1F8
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA1FC
                 lwz       r9, 0x800(r9)
#seg001:00000000006BA200
                 xor       r31, r31, r29
#seg001:00000000006BA204
                 xor       r6, r6, r11
#seg001:00000000006BA208
                 xor       r12, r12, r31
#seg001:00000000006BA20C
                 lwz       r11, 0(r30)
#seg001:00000000006BA210
                 xor       r6, r6, r9
#seg001:00000000006BA214
                 lwz       r8, 0xC00(r8)
#seg001:00000000006BA218
                 rlwinm    r9, r7, 10,22,29
#seg001:00000000006BA21C
                 clrlslwi  r28, r10, 24,2
#seg001:00000000006BA220
                 xor       r6, r6, r8
#seg001:00000000006BA224
                 rlwinm    r31, r7, 18,22,29
#seg001:00000000006BA228
                 xor       r6, r11, r6
#seg001:00000000006BA22C
                 lwzx      r8, r5, r9
#seg001:00000000006BA230
                 rlwinm    r30, r10, 10,22,29
#seg001:00000000006BA234
                 rlwinm    r11, r6, 18,22,29
#seg001:00000000006BA238
                 lwz       r29, -0x40(r3)
#seg001:00000000006BA23C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA23C
                 rlwinm    r9, r12, 26,22,29
#seg001:00000000006BA240
                 addc      r11, r5, r11
#seg001:00000000006BA244
                 addc      r9, r5, r9
#seg001:00000000006BA248
                 addc      r28, r5, r28
#seg001:00000000006BA24C
                 addc      r31, r5, r31
#seg001:00000000006BA250
                 addic     r27, r3, -0x3C
#seg001:00000000006BA254
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA258
                 rlwinm    r26, r6, 26,22,29
#seg001:00000000006BA25C
                 lwz       r9, 0x800(r9)
#seg001:00000000006BA260
                 xor       r8, r8, r11
#seg001:00000000006BA264
                 lwzx      r11, r5, r30
#seg001:00000000006BA268
                 lwz       r28, 0xC00(r28)
#seg001:00000000006BA26C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA26C
                 xor       r8, r8, r9
#seg001:00000000006BA270
                 clrldi    r30, r27, 32
#seg001:00000000006BA274
                 lwz       r9, 0x400(r31)
#seg001:00000000006BA278
                 xor       r8, r8, r28
#seg001:00000000006BA27C
                 addc      r31, r5, r26
#seg001:00000000006BA280
                 clrlslwi  r27, r12, 24,2
#seg001:00000000006BA284
                 xor       r8, r29, r8
#seg001:00000000006BA288
                 lwz       r30, 0(r30)
#seg001:00000000006BA28C
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA28C
                 rlwinm    r29, r12, 10,22,29
#seg001:00000000006BA290
                 xor       r9, r11, r9
#seg001:00000000006BA294
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA298
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA298
                 addc      r11, r5, r27
#seg001:00000000006BA29C
                 rlwinm    r28, r10, 18,22,29
#seg001:00000000006BA2A0
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA2A0
                 addic     r27, r3, -0x38
#seg001:00000000006BA2A4
                 xor       r9, r9, r31
#seg001:00000000006BA2A8
                 lwzx      r29, r5, r29
#seg001:00000000006BA2AC
                 addc      r28, r5, r28
#seg001:00000000006BA2B0
                 rlwinm    r31, r7, 26,22,29
#seg001:00000000006BA2B4
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA2B4
                 clrldi    r27, r27, 32
#seg001:00000000006BA2B8
                 lwz       r11, 0xC00(r11)
#seg001:00000000006BA2BC
                 addc      r31, r5, r31
#seg001:00000000006BA2C0
                 clrlslwi  r26, r6, 24,2
#seg001:00000000006BA2C4
                 xor       r9, r9, r11
#seg001:00000000006BA2C8
                 lwz       r28, 0x400(r28)
#seg001:00000000006BA2CC
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA2CC
                 addc      r26, r5, r26
#seg001:00000000006BA2D0
                 rlwinm    r11, r12, 18,22,29
#seg001:00000000006BA2D4
                 lwz       r12, 0(r27)
#seg001:00000000006BA2D8
                 xor       r9, r30, r9
#seg001:00000000006BA2DC
                 rlwinm    r6, r6, 10,22,29
#seg001:00000000006BA2E0
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA2E4
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA2E4
                 xor       r30, r29, r28
#seg001:00000000006BA2E8
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA2E8
                 rlwinm    r10, r10, 26,22,29
#seg001:00000000006BA2EC
                 addc      r11, r5, r11
#seg001:00000000006BA2F0
                 lwz       r29, 0xC00(r26)
#seg001:00000000006BA2F4
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA2F4
                 addic     r28, r3, -0x34
#seg001:00000000006BA2F8
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA2F8
                 addc      r10, r5, r10
#seg001:00000000006BA2FC
                 xor       r31, r30, r31
#seg001:00000000006BA300
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA300
                 lwzx      r6, r5, r6
#seg001:00000000006BA304
                 clrlslwi  r7, r7, 24,2
#seg001:00000000006BA308
                 clrldi    r30, r28, 32
#seg001:00000000006BA30C
                 addc      r7, r5, r7
#seg001:00000000006BA310
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA314
                 lwz       r10, 0x800(r10)
#seg001:00000000006BA318
                 xor       r31, r31, r29
#seg001:00000000006BA31C
                 xor       r6, r6, r11
#seg001:00000000006BA320
                 xor       r12, r12, r31
#seg001:00000000006BA324
                 lwz       r11, 0(r30)
#seg001:00000000006BA328
                 xor       r6, r6, r10
#seg001:00000000006BA32C
                 lwz       r7, 0xC00(r7)
#seg001:00000000006BA330
                 rlwinm    r10, r8, 10,22,29
#seg001:00000000006BA334
                 clrlslwi  r28, r9, 24,2
#seg001:00000000006BA338
                 xor       r6, r6, r7
#seg001:00000000006BA33C
                 rlwinm    r31, r8, 18,22,29
#seg001:00000000006BA340
                 xor       r6, r11, r6
#seg001:00000000006BA344
                 lwzx      r7, r5, r10
#seg001:00000000006BA348
                 rlwinm    r30, r9, 10,22,29
#seg001:00000000006BA34C
                 rlwinm    r11, r6, 18,22,29
#seg001:00000000006BA350
                 lwz       r29, -0x30(r3)
#seg001:00000000006BA354
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA354
                 rlwinm    r10, r12, 26,22,29
#seg001:00000000006BA358
                 addc      r11, r5, r11
#seg001:00000000006BA35C
                 addc      r10, r5, r10
#seg001:00000000006BA360
                 addc      r28, r5, r28
#seg001:00000000006BA364
                 addc      r31, r5, r31
#seg001:00000000006BA368
                 addic     r27, r3, -0x2C
#seg001:00000000006BA36C
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA370
                 rlwinm    r26, r6, 26,22,29
#seg001:00000000006BA374
                 lwz       r10, 0x800(r10)
#seg001:00000000006BA378
                 xor       r7, r7, r11
#seg001:00000000006BA37C
                 lwzx      r11, r5, r30
#seg001:00000000006BA380
                 lwz       r28, 0xC00(r28)
#seg001:00000000006BA384
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA384
                 xor       r7, r7, r10
#seg001:00000000006BA388
                 clrldi    r30, r27, 32
#seg001:00000000006BA38C
                 lwz       r10, 0x400(r31)
#seg001:00000000006BA390
                 xor       r7, r7, r28
#seg001:00000000006BA394
                 addc      r31, r5, r26
#seg001:00000000006BA398
                 clrlslwi  r27, r12, 24,2
#seg001:00000000006BA39C
                 xor       r7, r29, r7
#seg001:00000000006BA3A0
                 lwz       r30, 0(r30)
#seg001:00000000006BA3A4
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA3A4
                 rlwinm    r29, r12, 10,22,29
#seg001:00000000006BA3A8
                 xor       r10, r11, r10
#seg001:00000000006BA3AC
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA3B0
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA3B0
                 addc      r11, r5, r27
#seg001:00000000006BA3B4
                 rlwinm    r28, r9, 18,22,29
#seg001:00000000006BA3B8
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA3B8
                 addic     r27, r3, -0x28
#seg001:00000000006BA3BC
                 xor       r10, r10, r31
#seg001:00000000006BA3C0
                 lwzx      r29, r5, r29
#seg001:00000000006BA3C4
                 addc      r28, r5, r28
#seg001:00000000006BA3C8
                 rlwinm    r31, r8, 26,22,29
#seg001:00000000006BA3CC
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA3CC
                 clrldi    r27, r27, 32
#seg001:00000000006BA3D0
                 lwz       r11, 0xC00(r11)
#seg001:00000000006BA3D4
                 addc      r31, r5, r31
#seg001:00000000006BA3D8
                 clrlslwi  r26, r6, 24,2
#seg001:00000000006BA3DC
                 xor       r10, r10, r11
#seg001:00000000006BA3E0
                 lwz       r28, 0x400(r28)
#seg001:00000000006BA3E4
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA3E4
                 addc      r26, r5, r26
#seg001:00000000006BA3E8
                 rlwinm    r11, r12, 18,22,29
#seg001:00000000006BA3EC
                 lwz       r12, 0(r27)
#seg001:00000000006BA3F0
                 xor       r10, r30, r10
#seg001:00000000006BA3F4
                 rlwinm    r6, r6, 10,22,29
#seg001:00000000006BA3F8
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA3FC
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA3FC
                 xor       r30, r29, r28
#seg001:00000000006BA400
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA400
                 rlwinm    r9, r9, 26,22,29
#seg001:00000000006BA404
                 addc      r11, r5, r11
#seg001:00000000006BA408
                 lwz       r29, 0xC00(r26)
#seg001:00000000006BA40C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA40C
                 addic     r28, r3, -0x24
#seg001:00000000006BA410
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA410
                 addc      r9, r5, r9
#seg001:00000000006BA414
                 xor       r31, r30, r31
#seg001:00000000006BA418
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA418
                 lwzx      r6, r5, r6
#seg001:00000000006BA41C
                 clrlslwi  r8, r8, 24,2
#seg001:00000000006BA420
                 clrldi    r30, r28, 32
#seg001:00000000006BA424
                 addc      r8, r5, r8
#seg001:00000000006BA428
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA42C
                 lwz       r9, 0x800(r9)
#seg001:00000000006BA430
                 xor       r31, r31, r29
#seg001:00000000006BA434
                 xor       r6, r6, r11
#seg001:00000000006BA438
                 xor       r12, r12, r31
#seg001:00000000006BA43C
                 lwz       r11, 0(r30)
#seg001:00000000006BA440
                 xor       r6, r6, r9
#seg001:00000000006BA444
                 lwz       r8, 0xC00(r8)
#seg001:00000000006BA448
                 rlwinm    r9, r7, 10,22,29
#seg001:00000000006BA44C
                 clrlslwi  r28, r10, 24,2
#seg001:00000000006BA450
                 xor       r6, r6, r8
#seg001:00000000006BA454
                 rlwinm    r31, r7, 18,22,29
#seg001:00000000006BA458
                 xor       r6, r11, r6
#seg001:00000000006BA45C
                 lwzx      r8, r5, r9
#seg001:00000000006BA460
                 rlwinm    r30, r10, 10,22,29
#seg001:00000000006BA464
                 rlwinm    r11, r6, 18,22,29
#seg001:00000000006BA468
                 lwz       r29, -0x20(r3)
#seg001:00000000006BA46C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA46C
                 rlwinm    r9, r12, 26,22,29
#seg001:00000000006BA470
                 addc      r11, r5, r11
#seg001:00000000006BA474
                 addc      r9, r5, r9
#seg001:00000000006BA478
                 addc      r28, r5, r28
#seg001:00000000006BA47C
                 addc      r31, r5, r31
#seg001:00000000006BA480
                 addic     r27, r3, -0x1C
#seg001:00000000006BA484
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA488
                 rlwinm    r26, r6, 26,22,29
#seg001:00000000006BA48C
                 lwz       r9, 0x800(r9)
#seg001:00000000006BA490
                 xor       r8, r8, r11
#seg001:00000000006BA494
                 lwzx      r11, r5, r30
#seg001:00000000006BA498
                 lwz       r28, 0xC00(r28)
#seg001:00000000006BA49C
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA49C
                 xor       r8, r8, r9
#seg001:00000000006BA4A0
                 clrldi    r30, r27, 32
#seg001:00000000006BA4A4
                 lwz       r9, 0x400(r31)
#seg001:00000000006BA4A8
                 xor       r8, r8, r28
#seg001:00000000006BA4AC
                 addc      r31, r5, r26
#seg001:00000000006BA4B0
                 clrlslwi  r27, r12, 24,2
#seg001:00000000006BA4B4
                 xor       r8, r29, r8
#seg001:00000000006BA4B8
                 lwz       r30, 0(r30)
#seg001:00000000006BA4BC
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA4BC
                 rlwinm    r29, r12, 10,22,29
#seg001:00000000006BA4C0
                 xor       r9, r11, r9
#seg001:00000000006BA4C4
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA4C8
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA4C8
                 addc      r11, r5, r27
#seg001:00000000006BA4CC
                 rlwinm    r28, r10, 18,22,29
#seg001:00000000006BA4D0
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA4D0
                 addic     r27, r3, -0x18
#seg001:00000000006BA4D4
                 xor       r9, r9, r31
#seg001:00000000006BA4D8
                 lwzx      r29, r5, r29
#seg001:00000000006BA4DC
                 addc      r28, r5, r28
#seg001:00000000006BA4E0
                 rlwinm    r31, r7, 26,22,29
#seg001:00000000006BA4E4
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA4E4
                 clrldi    r27, r27, 32
#seg001:00000000006BA4E8
                 lwz       r11, 0xC00(r11)
#seg001:00000000006BA4EC
                 addc      r31, r5, r31
#seg001:00000000006BA4F0
                 clrlslwi  r26, r6, 24,2
#seg001:00000000006BA4F4
                 xor       r9, r9, r11
#seg001:00000000006BA4F8
                 lwz       r28, 0x400(r28)
#seg001:00000000006BA4FC
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA4FC
                 addc      r26, r5, r26
#seg001:00000000006BA500
                 rlwinm    r11, r12, 18,22,29
#seg001:00000000006BA504
                 lwz       r12, 0(r27)
#seg001:00000000006BA508
                 xor       r9, r30, r9
#seg001:00000000006BA50C
                 rlwinm    r6, r6, 10,22,29
#seg001:00000000006BA510
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA514
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA514
                 xor       r30, r29, r28
#seg001:00000000006BA518
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA518
                 rlwinm    r10, r10, 26,22,29
#seg001:00000000006BA51C
                 addc      r11, r5, r11
#seg001:00000000006BA520
                 lwz       r29, 0xC00(r26)
#seg001:00000000006BA524
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA524
                 addic     r28, r3, -0x14
#seg001:00000000006BA528
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA528
                 addc      r10, r5, r10
#seg001:00000000006BA52C
                 xor       r31, r30, r31
#seg001:00000000006BA530
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA530
                 lwzx      r6, r5, r6
#seg001:00000000006BA534
                 clrlslwi  r7, r7, 24,2
#seg001:00000000006BA538
                 clrldi    r30, r28, 32
#seg001:00000000006BA53C
                 addc      r7, r5, r7
#seg001:00000000006BA540
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA544
                 lwz       r10, 0x800(r10)
#seg001:00000000006BA548
                 xor       r31, r31, r29
#seg001:00000000006BA54C
                 xor       r6, r6, r11
#seg001:00000000006BA550
                 xor       r12, r12, r31
#seg001:00000000006BA554
                 lwz       r11, 0(r30)
#seg001:00000000006BA558
                 xor       r6, r6, r10
#seg001:00000000006BA55C
                 lwz       r7, 0xC00(r7)
#seg001:00000000006BA560
                 rlwinm    r10, r8, 10,22,29
#seg001:00000000006BA564
                 clrlslwi  r28, r9, 24,2
#seg001:00000000006BA568
                 xor       r6, r6, r7
#seg001:00000000006BA56C
                 rlwinm    r31, r8, 18,22,29
#seg001:00000000006BA570
                 xor       r6, r11, r6
#seg001:00000000006BA574
                 lwzx      r7, r5, r10
#seg001:00000000006BA578
                 rlwinm    r30, r9, 10,22,29
#seg001:00000000006BA57C
                 rlwinm    r11, r6, 18,22,29
#seg001:00000000006BA580
                 lwz       r29, -0x10(r3)
#seg001:00000000006BA584
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA584
                 rlwinm    r10, r12, 26,22,29
#seg001:00000000006BA588
                 addc      r11, r5, r11
#seg001:00000000006BA58C
                 addc      r10, r5, r10
#seg001:00000000006BA590
                 addc      r28, r5, r28
#seg001:00000000006BA594
                 addc      r31, r5, r31
#seg001:00000000006BA598
                 addic     r27, r3, -0xC
#seg001:00000000006BA59C
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA5A0
                 rlwinm    r26, r6, 26,22,29
#seg001:00000000006BA5A4
                 lwz       r10, 0x800(r10)
#seg001:00000000006BA5A8
                 xor       r7, r7, r11
#seg001:00000000006BA5AC
                 lwzx      r11, r5, r30
#seg001:00000000006BA5B0
                 lwz       r28, 0xC00(r28)
#seg001:00000000006BA5B4
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA5B4
                 xor       r7, r7, r10
#seg001:00000000006BA5B8
                 clrldi    r30, r27, 32
#seg001:00000000006BA5BC
                 lwz       r10, 0x400(r31)
#seg001:00000000006BA5C0
                 xor       r7, r7, r28
#seg001:00000000006BA5C4
                 addc      r31, r5, r26
#seg001:00000000006BA5C8
                 clrlslwi  r27, r12, 24,2
#seg001:00000000006BA5CC
                 xor       r7, r29, r7
#seg001:00000000006BA5D0
                 lwz       r30, 0(r30)
#seg001:00000000006BA5D4
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA5D4
                 rlwinm    r29, r12, 10,22,29
#seg001:00000000006BA5D8
                 xor       r10, r11, r10
#seg001:00000000006BA5DC
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA5E0
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA5E0
                 addc      r11, r5, r27
#seg001:00000000006BA5E4
                 rlwinm    r28, r9, 18,22,29
#seg001:00000000006BA5E8
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA5E8
                 addic     r27, r3, -8
#seg001:00000000006BA5EC
                 xor       r10, r10, r31
#seg001:00000000006BA5F0
                 lwzx      r29, r5, r29
#seg001:00000000006BA5F4
                 addc      r28, r5, r28
#seg001:00000000006BA5F8
                 rlwinm    r31, r8, 26,22,29
#seg001:00000000006BA5FC
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA5FC
                 clrldi    r27, r27, 32
#seg001:00000000006BA600
                 lwz       r11, 0xC00(r11)
#seg001:00000000006BA604
                 clrlslwi  r26, r6, 24,2
#seg001:00000000006BA608
                 addc      r31, r5, r31
#seg001:00000000006BA60C
                 addc      r26, r5, r26
#seg001:00000000006BA610
                 lwz       r28, 0x400(r28)
#seg001:00000000006BA614
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA614
                 xor       r10, r10, r11
#seg001:00000000006BA618
                 rlwinm    r11, r12, 18,22,29
#seg001:00000000006BA61C
                 rlwinm    r6, r6, 10,22,29
#seg001:00000000006BA620
                 lwz       r12, 0(r27)
#seg001:00000000006BA624
                 xor       r30, r30, r10
#seg001:00000000006BA628
                 # .drop r30 # 0xFFFFFFFF
#seg001:00000000006BA628
                 lwz       r31, 0x800(r31)
#seg001:00000000006BA62C
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA62C
                 xor       r10, r29, r28
#seg001:00000000006BA630
                 rlwinm    r9, r9, 26,22,29
#seg001:00000000006BA634
                 addc      r11, r5, r11
#seg001:00000000006BA638
                 lwz       r29, 0xC00(r26)
#seg001:00000000006BA63C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA63C
                 addic     r28, r3, -4
#seg001:00000000006BA640
                 # .drop r28 # 0xFFFFFFFF
#seg001:00000000006BA640
                 lwzx      r6, r5, r6
#seg001:00000000006BA644
                 addc      r9, r5, r9
#seg001:00000000006BA648
                 xor       r10, r10, r31
#seg001:00000000006BA64C
                 clrlslwi  r8, r8, 24,2
#seg001:00000000006BA650
                 clrldi    r31, r28, 32
#seg001:00000000006BA654
                 # .drop r31 # 0xFFFFFFFF
#seg001:00000000006BA654
                 addc      r5, r5, r8
#seg001:00000000006BA658
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA65C
                 xor       r10, r10, r29
#seg001:00000000006BA660
                 lwz       r9, 0x800(r9)
#seg001:00000000006BA664
                 xor       r6, r6, r11
#seg001:00000000006BA668
                 xor       r8, r12, r10
#seg001:00000000006BA66C
                 lwz       r10, 0(r31)
#seg001:00000000006BA670
                 xor       r6, r6, r9
#seg001:00000000006BA674
                 lwz       r5, 0xC00(r5)
#seg001:00000000006BA678
                 lis       r9, unk_9E18A8@h
#seg001:00000000006BA67C
                 rlwinm    r11, r7, 10,22,29
#seg001:00000000006BA680
                 lwz       r31, 0(r3)
#seg001:00000000006BA684
                 xor       r5, r6, r5
#seg001:00000000006BA688
                 addic     r6, r9, unk_9E18A8@l
#seg001:00000000006BA68C
                 xor       r5, r10, r5
#seg001:00000000006BA690
                 rlwinm    r9, r8, 26,22,29
#seg001:00000000006BA694
                 rlwinm    r10, r5, 18,22,29
#seg001:00000000006BA698
                 addc      r9, r6, r9
#seg001:00000000006BA69C
                 addc      r10, r6, r10
#seg001:00000000006BA6A0
                 lwzx      r11, r6, r11
#seg001:00000000006BA6A4
                 clrlslwi  r29, r30, 24,2
#seg001:00000000006BA6A8
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA6A8
                 rlwinm    r12, r7, 18,22,29
#seg001:00000000006BA6AC
                 rlwinm    r28, r30, 10,22,29
#seg001:00000000006BA6B0
                 addc      r29, r6, r29
#seg001:00000000006BA6B4
                 lwz       r10, 0x400(r10)
#seg001:00000000006BA6B8
                 addc      r12, r6, r12
#seg001:00000000006BA6BC
                 lwz       r9, 0x800(r9)
#seg001:00000000006BA6C0
                 rlwinm    r27, r5, 26,22,29
#seg001:00000000006BA6C4
                 xor       r10, r11, r10
#seg001:00000000006BA6C8
                 lwzx      r28, r6, r28
#seg001:00000000006BA6CC
                 xor       r9, r10, r9
#seg001:00000000006BA6D0
                 lwz       r10, 0xC00(r29)
#seg001:00000000006BA6D4
                 lwz       r12, 0x400(r12)
#seg001:00000000006BA6D8
                 addc      r29, r6, r27
#seg001:00000000006BA6DC
                 xor       r10, r9, r10
#seg001:00000000006BA6E0
                 lwz       r26, 4(r3)
#seg001:00000000006BA6E4
                 clrlslwi  r27, r8, 24,2
#seg001:00000000006BA6E8
                 xor       r9, r28, r12
#seg001:00000000006BA6EC
                 rlwinm    r11, r30, 18,22,29
#seg001:00000000006BA6F0
                 rlwinm    r28, r8, 10,22,29
#seg001:00000000006BA6F4
                 addc      r27, r6, r27
#seg001:00000000006BA6F8
                 lwz       r29, 0x800(r29)
#seg001:00000000006BA6FC
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA6FC
                 rlwinm    r12, r7, 26,22,29
#seg001:00000000006BA700
                 addc      r11, r6, r11
#seg001:00000000006BA704
                 xor       r10, r31, r10
#seg001:00000000006BA708
                 addc      r12, r6, r12
#seg001:00000000006BA70C
                 clrlslwi  r31, r5, 24,2
#seg001:00000000006BA710
                 lwzx      r28, r6, r28
#seg001:00000000006BA714
                 xor       r9, r9, r29
#seg001:00000000006BA718
                 lwz       r29, 0xC00(r27)
#seg001:00000000006BA71C
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA71C
                 rlwinm    r5, r5, 10,22,29
#seg001:00000000006BA720
                 lwz       r11, 0x400(r11)
#seg001:00000000006BA724
                 rlwinm    r8, r8, 18,22,29
#seg001:00000000006BA728
                 lwz       r27, 8(r3)
#seg001:00000000006BA72C
                 addc      r31, r6, r31
#seg001:00000000006BA730
                 lwz       r12, 0x800(r12)
#seg001:00000000006BA734
                 xor       r11, r28, r11
#seg001:00000000006BA738
                 addc      r8, r6, r8
#seg001:00000000006BA73C
                 rlwinm    r30, r30, 26,22,29
#seg001:00000000006BA740
                 lwzx      r5, r6, r5
#seg001:00000000006BA744
                 xor       r11, r11, r12
#seg001:00000000006BA748
                 clrlslwi  r7, r7, 24,2
#seg001:00000000006BA74C
                 lwz       r12, 0xC00(r31)
#seg001:00000000006BA750
                 xor       r9, r9, r29
#seg001:00000000006BA754
                 addc      r31, r6, r30
#seg001:00000000006BA758
                 lwz       r8, 0x400(r8)
#seg001:00000000006BA75C
                 addc      r6, r6, r7
#seg001:00000000006BA760
                 lwz       r7, 0xC(r3)
#seg001:00000000006BA764
                 xor       r3, r11, r12
#seg001:00000000006BA768
                 xor       r5, r5, r8
#seg001:00000000006BA76C
                 xor       r8, r27, r3
#seg001:00000000006BA770
                 lwz       r3, 0x800(r31)
#seg001:00000000006BA774
                 lwz       r6, 0xC00(r6)
#seg001:00000000006BA778
                 xor       r9, r26, r9
#seg001:00000000006BA77C
                 xor       r3, r5, r3
#seg001:00000000006BA780
                 xor       r3, r3, r6
#seg001:00000000006BA784
                 xor       r7, r7, r3
#seg001:00000000006BA788

#seg001:00000000006BA788
 loc_6BA788:                             # CODE XREF: sub_6B96E0+14Cj
#seg001:00000000006BA788
                 srwi      r3, r10, 24
#seg001:00000000006BA78C
                 extrwi    r5, r10, 8,8
#seg001:00000000006BA790
                 extrwi    r11, r10, 8,16
#seg001:00000000006BA794
                 addic     r6, r4, 5
#seg001:00000000006BA798
                 stb       r3, 0(r4)
#seg001:00000000006BA79C
                 srwi      r3, r9, 24
#seg001:00000000006BA7A0
                 stb       r5, 1(r4)
#seg001:00000000006BA7A4
                 clrldi    r6, r6, 32
#seg001:00000000006BA7A8
                 stb       r11, 2(r4)
#seg001:00000000006BA7AC
                 extrwi    r5, r9, 8,8
#seg001:00000000006BA7B0
                 stb       r10, 3(r4)
#seg001:00000000006BA7B4
                 addic     r12, r4, 6
#seg001:00000000006BA7B8
                 stb       r3, 4(r4)
#seg001:00000000006BA7BC
                 clrldi    r3, r12, 32
#seg001:00000000006BA7C0
                 addic     r11, r4, 7
#seg001:00000000006BA7C4
                 extrwi    r10, r9, 8,16
#seg001:00000000006BA7C8
                 stb       r5, 0(r6)
#seg001:00000000006BA7CC
                 clrldi    r5, r11, 32
#seg001:00000000006BA7D0
                 addic     r12, r4, 0xA
#seg001:00000000006BA7D4
                 srwi      r6, r8, 24
#seg001:00000000006BA7D8
                 stb       r10, 0(r3)
#seg001:00000000006BA7DC
                 addic     r3, r4, 9
#seg001:00000000006BA7E0
                 stb       r9, 0(r5)
#seg001:00000000006BA7E4
                 clrldi    r3, r3, 32
#seg001:00000000006BA7E8
                 stb       r6, 8(r4)
#seg001:00000000006BA7EC
                 addic     r5, r4, 0xB
#seg001:00000000006BA7F0
                 extrwi    r10, r8, 8,8
#seg001:00000000006BA7F4
                 clrldi    r12, r12, 32
#seg001:00000000006BA7F8
                 extrwi    r11, r8, 8,16
#seg001:00000000006BA7FC
                 clrldi    r5, r5, 32
#seg001:00000000006BA800
                 srwi      r6, r7, 24
#seg001:00000000006BA804
                 addic     r9, r4, 0xD
#seg001:00000000006BA808
                 stb       r10, 0(r3)
#seg001:00000000006BA80C
                 stb       r11, 0(r12)
#seg001:00000000006BA810
                 extrwi    r31, r7, 8,8
#seg001:00000000006BA814
                 clrldi    r3, r9, 32
#seg001:00000000006BA818
                 stb       r8, 0(r5)
#seg001:00000000006BA81C
                 addic     r9, r4, 0xE
#seg001:00000000006BA820
                 stb       r6, 0xC(r4)
#seg001:00000000006BA824
                 addic     r4, r4, 0xF
#seg001:00000000006BA828
                 clrldi    r6, r9, 32
#seg001:00000000006BA82C
                 extrwi    r5, r7, 8,16
#seg001:00000000006BA830
                 stb       r31, 0(r3)
#seg001:00000000006BA834
                 clrldi    r4, r4, 32
#seg001:00000000006BA838
                 li        r3, 0
#seg001:00000000006BA83C
                 stb       r5, 0(r6)
#seg001:00000000006BA840
                 stb       r7, 0(r4)
#seg001:00000000006BA844

#seg001:00000000006BA844
 loc_6BA844:                             # CODE XREF: sub_6B96E0+40j
#seg001:00000000006BA844
                 ld        r25, 0x70+var_38(r1)
#seg001:00000000006BA848
                 ld        r26, 0x70+var_30(r1)
#seg001:00000000006BA84C
                 ld        r27, 0x70+var_28(r1)
#seg001:00000000006BA850
                 ld        r28, 0x70+var_20(r1)
#seg001:00000000006BA854
                 ld        r29, 0x70+var_18(r1)
#seg001:00000000006BA858
                 # .drop r29 # 0xFFFFFFFF
#seg001:00000000006BA858
                 ld        r30, 0x70+var_10(r1)
#seg001:00000000006BA85C
                 ld        r31, 0x70+var_8(r1)
#seg001:00000000006BA860
                 addi      r1, r1, 0x70
#seg001:00000000006BA864
                 blr
#seg001:00000000006BA864
# End of function sub_6B96E0
