Param(
    [string]$wit = "wit",
    [string]$originalRom = "original/R44J8P.wbfs"
)

& $wit extract $originalRom -d extracted/ --verbose --verbose