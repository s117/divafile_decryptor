# =============== S U B R O U T I N E =======================================
.text
.global .sub_642238
#seg001:0000000000642238

#seg001:0000000000642238

#seg001:0000000000642238
.sub_642238:                             # CODE XREF: sub_108B0+44p
#seg001:0000000000642238
                                         # sub_10964+120p ...
#seg001:0000000000642238
                 cmplwi    cr7, r5, 7
#seg001:000000000064223C
                 add       r5, r3, r5
#seg001:0000000000642240
                 clrldi    r4, r4, 56
#seg001:0000000000642244
                 mr        r10, r3
#seg001:0000000000642248
                 ble       cr7, loc_6422E4
#seg001:000000000064224C
                 addi      r8, r3, 1
#seg001:0000000000642250
                 stb       r4, 0(r3)
#seg001:0000000000642254
                 sldi      r11, r4, 8
#seg001:0000000000642258
                 clrrwi    r8, r8, 1
#seg001:000000000064225C
                 clrrwi    r12, r5, 3
#seg001:0000000000642260
                 addi      r10, r8, 2
#seg001:0000000000642264
                 or        r11, r11, r4
#seg001:0000000000642268
                 clrrwi    r10, r10, 2
#seg001:000000000064226C
                 addi      r7, r12, -0x40
#seg001:0000000000642270
                 sth       r11, 0(r8)
#seg001:0000000000642274
                 addi      r9, r10, 4
#seg001:0000000000642278
                 sldi      r0, r11, 16
#seg001:000000000064227C
                 clrrwi    r6, r9, 3
#seg001:0000000000642280
                 or        r0, r0, r11
#seg001:0000000000642284
                 cmplw     cr7, r6, r7
#seg001:0000000000642288
                 sldi      r9, r0, 32
#seg001:000000000064228C
                 stw       r0, 0(r10)
#seg001:0000000000642290
                 or        r9, r0, r9
#seg001:0000000000642294
                 bgt       cr7, loc_6422D8
#seg001:0000000000642298

#seg001:0000000000642298
 loc_642298:                             # CODE XREF: sub_642238+8Cj
#seg001:0000000000642298
                 mr        r8, r6
#seg001:000000000064229C
                 addi      r6, r6, 0x40
#seg001:00000000006422A0
                 cmplw     cr7, r7, r6
#seg001:00000000006422A4
                 std       r9, 0x38(r8)
#seg001:00000000006422A8
                 std       r9, 0x30(r8)
#seg001:00000000006422AC
                 std       r9, 0x28(r8)
#seg001:00000000006422B0
                 std       r9, 0x20(r8)
#seg001:00000000006422B4
                 std       r9, 0x18(r8)
#seg001:00000000006422B8
                 std       r9, 0x10(r8)
#seg001:00000000006422BC
                 std       r9, 8(r8)
#seg001:00000000006422C0
                 std       r9, 0(r8)
#seg001:00000000006422C4
                 bge       cr7, loc_642298
#seg001:00000000006422C8
                 b         loc_6422D8
#seg001:00000000006422CC
 # ---------------------------------------------------------------------------
#seg001:00000000006422CC

#seg001:00000000006422CC
 loc_6422CC:                             # CODE XREF: sub_642238+A4j
#seg001:00000000006422CC
                 addi      r0, r6, 8
#seg001:00000000006422D0
                 std       r9, 0(r6)
#seg001:00000000006422D4
                 mr        r6, r0
#seg001:00000000006422D8

#seg001:00000000006422D8
 loc_6422D8:                             # CODE XREF: sub_642238+5Cj
#seg001:00000000006422D8
                                         # sub_642238+90j
#seg001:00000000006422D8
                 cmplw     cr7, r12, r6
#seg001:00000000006422DC
                 bgt       cr7, loc_6422CC
#seg001:00000000006422E0
                 mr        r10, r6
#seg001:00000000006422E4

#seg001:00000000006422E4
 loc_6422E4:                             # CODE XREF: sub_642238+10j
#seg001:00000000006422E4
                 cmplw     cr7, r5, r10
#seg001:00000000006422E8
                 blelr     cr7
#seg001:00000000006422EC
                 subf      r9, r10, r5
#seg001:00000000006422F0
                 li        r11, 0
#seg001:00000000006422F4
                 mtctr     r9
#seg001:00000000006422F8

#seg001:00000000006422F8
 loc_6422F8:                             # CODE XREF: sub_642238+CCj
#seg001:00000000006422F8
                 add       r9, r10, r11
#seg001:00000000006422FC
                 addi      r11, r11, 1
#seg001:0000000000642300
                 stb       r4, 0(r9)
#seg001:0000000000642304
                 bdnz      loc_6422F8
#seg001:0000000000642308
                 blr
#seg001:0000000000642308
# End of function sub_642238
