package union_types.union_with_multiple_parameters;

struct Data13(varsize arrayLength)
{
    int:13 array13[arrayLength];
};

union TestUnion(varsize arrayLength, bit:4 bitFieldLength)
{
    bit:5 array5[arrayLength];
    Data13(arrayLength) array13[arrayLength];
    int:17 field17;
    int<bitFieldLength> dynBitField;
};
