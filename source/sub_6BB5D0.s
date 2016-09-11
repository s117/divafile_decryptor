# =============== S U B R O U T I N E =======================================
.text
.global .sub_6BB5D0
#seg001:00000000006BB5D0
.sub_6BB5D0:                             # CODE XREF: sub_3D0444+88p
#seg001:00000000006BB5D0
                                         # sub_5607DC+78p ...
#seg001:00000000006BB5D0

#seg001:00000000006BB5D0
 .set var_20, -0x20
#seg001:00000000006BB5D0
 .set var_18, -0x18
#seg001:00000000006BB5D0
 .set var_10, -0x10
#seg001:00000000006BB5D0
 .set var_8, -8
#seg001:00000000006BB5D0
 .set arg_10,  0x10
#seg001:00000000006BB5D0

#seg001:00000000006BB5D0
                 stdu      r1, -0x90(r1)
#seg001:00000000006BB5D4
                 mflr      r0
#seg001:00000000006BB5D8
                 std       r0, 0x90+arg_10(r1)
#seg001:00000000006BB5DC
                 std       r30, 0x90+var_10(r1)
#seg001:00000000006BB5E0
                 std       r28, 0x90+var_20(r1)
#seg001:00000000006BB5E4
                 mr        r30, r4
#seg001:00000000006BB5E8
                 srawi     r28, r5, 4
#seg001:00000000006BB5EC
                 std       r31, 0x90+var_8(r1)
#seg001:00000000006BB5F0
                 clrlwi    r4, r5, 28
#seg001:00000000006BB5F4
                 std       r29, 0x90+var_18(r1)
#seg001:00000000006BB5F8
                 mr        r31, r6
#seg001:00000000006BB5FC
                 mr        r29, r3
#seg001:00000000006BB600
                 cmpwi     cr1, r28, 0
#seg001:00000000006BB604
                 cmpwi     r4, 0
#seg001:00000000006BB608
                 beq       loc_6BB614
#seg001:00000000006BB60C
                 li        r3, 1
#seg001:00000000006BB610
                 b         loc_6BB664
#seg001:00000000006BB614
 # ---------------------------------------------------------------------------
#seg001:00000000006BB614

#seg001:00000000006BB614
 loc_6BB614:                             # CODE XREF: sub_6BB5D0+38j
#seg001:00000000006BB614
                 addic     r28, r28, -1
#seg001:00000000006BB618
                 beq       cr1, loc_6BB660
#seg001:00000000006BB61C

#seg001:00000000006BB61C
 loc_6BB61C:                             # CODE XREF: sub_6BB5D0+8Cj
#seg001:00000000006BB61C
                 mr        r3, r29
#seg001:00000000006BB620
                 mr        r4, r30
#seg001:00000000006BB624
                 mr        r5, r31
#seg001:00000000006BB628
                 bl        sub_6B96E0
#seg001:00000000006BB62C
                 nop
#seg001:00000000006BB630
                 cmpwi     r3, 0
#seg001:00000000006BB634
                 beq       loc_6BB640
#seg001:00000000006BB638
                 li        r3, 1
#seg001:00000000006BB63C
                 b         loc_6BB664
#seg001:00000000006BB640
 # ---------------------------------------------------------------------------
#seg001:00000000006BB640

#seg001:00000000006BB640
 loc_6BB640:                             # CODE XREF: sub_6BB5D0+64j
#seg001:00000000006BB640
                 addic     r29, r29, 0x10
#seg001:00000000006BB644
                 addic     r30, r30, 0x10
#seg001:00000000006BB648
                 mr        r3, r28
#seg001:00000000006BB64C
                 clrldi    r29, r29, 32
#seg001:00000000006BB650
                 clrldi    r30, r30, 32
#seg001:00000000006BB654
                 addic     r28, r28, -1
#seg001:00000000006BB658
                 cmpwi     r3, 0
#seg001:00000000006BB65C
                 bne       loc_6BB61C
#seg001:00000000006BB660

#seg001:00000000006BB660
 loc_6BB660:                             # CODE XREF: sub_6BB5D0+48j
#seg001:00000000006BB660
                 li        r3, 0
#seg001:00000000006BB664

#seg001:00000000006BB664
 loc_6BB664:                             # CODE XREF: sub_6BB5D0+40j
#seg001:00000000006BB664
                                         # sub_6BB5D0+6Cj
#seg001:00000000006BB664
                 ld        r0, 0x90+arg_10(r1)
#seg001:00000000006BB668
                 mtlr      r0
#seg001:00000000006BB66C
                 ld        r28, 0x90+var_20(r1)
#seg001:00000000006BB670
                 ld        r29, 0x90+var_18(r1)
#seg001:00000000006BB674
                 ld        r30, 0x90+var_10(r1)
#seg001:00000000006BB678
                 ld        r31, 0x90+var_8(r1)
#seg001:00000000006BB67C
                 addi      r1, r1, 0x90
#seg001:00000000006BB680
                 blr
#seg001:00000000006BB680
# End of function sub_6BB5D0
