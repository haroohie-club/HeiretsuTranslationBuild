// ref_801BBB38:
//     stwu 1,-0x30(1)
//     mflr 0
//     stw 0,0x34(1)
//     stw 31,0x2C(1)
//     stw 30,0x28(1)
//     stw 29,0x24(1)

//     mr 31,3
//     lha 3,0x50(31)
//     lwz 4,0x20(31)
//     li 5,0x01
//     li 6,0x00
//     bl =GetParam
//     cmpwi 3,0x00
//     beq end
//     mr 4,3
//     addi 3,1,0x02
//     bl =store_script_short

//     lha 3,0x02(1)
//     bl =LoadValueFromArray
//     mr 30,3

//     lha 3,0x50(31)
//     lwz 4,0x20(31)
//     li 5,0x05
//     li 6,0x00
//     bl =GetParam
//     cmpwi 3,0x00
//     beq print
//     mr 4,3
//     addi 3,1,0x04
//     bl =store_script_int
//     mr 4,3
//     addi 3,1,0x08
//     bl =store_script_int
//     lwz 3,0x04(1)
//     lwz 4,0x08(1)
//     bl =CommandValueCalc
    
//     mr 4,3
//     print:
//     mr 3,30
//     crclr 4*cr1+eq
//     bl =debug_print

//     end:
//     lhz 0,0x00(31)
//     ori 0,0,0x10
//     sth 0,0x00(31)

//     li 3,0x00
    
//     lwz 0,0x34(1)
//     lwz 31,0x2C(1)
//     lwz 30,0x28(1)
//     lwz 29,0x24(1)
//     mtlr 0
//     addi 1,1,0x30
//     blr

repl_801BBB38:
    .word 0x8004F8CC