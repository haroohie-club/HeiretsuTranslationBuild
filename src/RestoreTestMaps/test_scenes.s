repl_8001AA30:
    cmpwi 3,0x0D

hook_8002B338:
    stw 0,0x54(1)
    lwz 0,-0x7680(13)
    lwz 4,-0x767C(13)
    stw 4,0x58(1)
    stw 0,0x5C(1)
    lwz 0,-0x7688(13)
    lwz 4,-0x7684(13)
    stw 4,0x60(1)
    stw 0,0x64(1)
    blr

repl_8002B340:
    cmpwi 21,0x0D

repl_8002B354:
    cmpwi 0,0x0B