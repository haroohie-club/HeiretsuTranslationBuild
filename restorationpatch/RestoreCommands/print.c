char* AdjustString(char* string, int digit, char* newString)
{
    int stringLength = 0;
    
    while (*string != 0x00)
    {
        *newString = *string;
        newString++;
        string++;
        stringLength++;
    }
    if (digit == 1)
    {
        *newString = '%';
        newString++;
        *newString = 'd';
        newString++;
        stringLength += 2;
    }
    *newString = '\n';

    newString -= stringLength;

    return newString;
}