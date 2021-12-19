int font_offset(char character)
{
    switch (character)
    {
        case 'A':
            return 0x180;
        case 'I':
        case 'i':
        case 'l':
        case '!':
            return 0x48;
        default:
            return 0x90;
    }
}