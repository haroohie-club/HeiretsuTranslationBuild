hook_8001726C:
    start:
        cmpwi 26, 'A'
        beq A_letter
        li 0, 0x90
        b end
    A_letter:
        li 0, 0x180
    end:
        blr
    
hook_80017250:
    add 5,5,0
    mr 26,3
    blr