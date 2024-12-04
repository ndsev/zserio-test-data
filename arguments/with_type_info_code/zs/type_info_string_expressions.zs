package type_info_string_expressions;

struct TypeInfoStringExpressions
{
    TestChoice(lengthof("literal")) choiceField;
};

choice TestChoice(uint32 selector) on selector + lengthof("literal")
{
    case 0 + lengthof("literal"):
        uint32 u32Field;
    default:
        TestStruct(lengthof("literal")) structField;
};

struct TestStruct(uint32 param)
{
    uint32 arrayField[param + lengthof("literal")] : lengthof(arrayField) > lengthof("literal");
    bit<lengthof("literal")> dynBitField if param + lengthof("literal") != 0;
align(lengthof("literal") + 1):
    bit:2 bitField;
    TestEnum enumField;
    TestBitmask bitmaskField;
};

enum int<lengthof("literal")> TestEnum
{
    ONE,
    TWO
};

bitmask bit<lengthof("literal")> TestBitmask
{
    READ,
    WRITE
};
