package expressions.lengthof_operator;

const string STR_CONSTANT = "€constant";

struct LengthOfFunctions
{
    uint8           fixedArray[10];

    uint8           numElements;
    uint8           variableArray[numElements];

    varsize         literalLengthField = lengthof("€literal");
    string          strField : lengthof(strField) > lengthof(STR_CONSTANT);
    bytes           bytesField : getLengthOfBytes() < getLengthOfString();

    string          strArray[];
    bytes           bytesArray[];

    function varsize getLengthOfStrConstant()
    {
        return lengthof(STR_CONSTANT);
    }

    function varsize getLengthOfLiteral()
    {
        return lengthof("€literal");
    }

    function varsize getLengthOfString()
    {
        return lengthof(strField);
    }

    function varsize getLengthOfBytes()
    {
        return lengthof(bytesField);
    }

    function uint8 getLengthOfFixedArray()
    {
        return lengthof(fixedArray);
    }

    function uint8 getLengthOfVariableArray()
    {
        return lengthof(variableArray);
    }

    function varsize getLengthOfFirstStrInArray()
    {
        return lengthof(strArray[0]);
    }

    function varsize getLengthOfFirstBytesInArray()
    {
        return lengthof(bytesArray[0]);
    }
};
