// font_hack.c generated by CLI at runtime

// replace ASCII font rendering with variable-width font
hook_8001726C:
    stwu 1,-24(1)
    mflr 0
    stw 0,20(1)
    stw 31,16(1)
    mr 31,1
    stw 9,12(1)
    stw 3,8(1)
    mr 3,26
    bl =font_offset
    lwz 0,20(1)
    mtlr 0
    mr 0,3
    lwz 9,12(1)
    lwz 3,8(1)
    addi 11,31,24
    lwz 31,-4(11)
    mr 1,11
    blr

// skip code that special-cases half-width spaces
repl_800171A8:
    nop
    nop
    
// skip code that makes half-width digits into full-width ones
repl_80017188:
    b 0x20

hook_80017250:
    add 5,5,0
    mr 26,3
    blr