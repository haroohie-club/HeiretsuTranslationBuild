# Redirect map change call in title screen loader to special version
repl_80092274:
    li 4,0x0D

# Redirect map change call in eye catch returns to special version
repl_8005F070:
    li 4,0x0D

# Reduce number of expected eye catches from five to two
repl_8005EF50:
    cmplwi 0,1

# Make the first cutscene be the special version one
repl_8005EE0C:
    li 4,0x23

# Make the second cutscene be the special version one
repl_8005EE48:
    li 4,0x25