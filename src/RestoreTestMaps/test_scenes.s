repl_8001AA28:
    mflr 0

hook_8001AA2C:
    cmpwi 3,0x02
    ble special
    cmpwi 3,0x0C
    bne testscene
    
    clubroom:
    cmpwi 3,0x0B
    blr

    special:
    cmpwi 3,-1
    blr

    testscene:
    cmpwi 3,0x0D
    blr

repl_8001AA30:
    mtlr 0

hook_8002B338:
    stw 0,0x54(1)
    lwz 0,-0x7688(13)
    lwz 4,-0x7684(13)
    stw 4,0x60(1)
    stw 0,0x64(1)
    blr

repl_8002B340:
    cmpwi 21,0x0D

repl_8002B354:
    cmpwi 0,0x0B