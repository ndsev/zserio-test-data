package parameterized_types.multiple_params;

struct Data13(varsize arrayLength)
{
    int:13 array13[arrayLength];
};

struct TestStructure(varsize arrayLength, bit:4 bitFieldLength)
{
    bit:5 array5[arrayLength];
    Data13(arrayLength) array13[arrayLength];
    int:17 field17;
    int<bitFieldLength> dynBitField;
};
