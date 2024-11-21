package choice_types.multiple_param_choice;

struct Data13(varsize arrayLength)
{
    int:13 array13[arrayLength];
};

choice TestChoice(bit:7 selector, varsize arrayLength, bit:4 bitFieldLength) on selector
{
    case 5:
        bit:5 array5[arrayLength];
    case 13:
        Data13(arrayLength) array13[arrayLength];
    case 17:
        int:17 field17;
    default:
        int<bitFieldLength> dynBitField;
};
