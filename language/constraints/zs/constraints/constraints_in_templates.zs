package constraints.constraints_in_templates;

struct TStruct
{
    int8 child;
};

enum int8 TestEnum
{
    ONE,
    TWO
};

struct TemplatedStruct<T, S, E>
{
    T tField : tField.child != 0;
    S sField : lengthof(sField) != 0;
    E eField : valueof(eField) <= valueof(TestEnum.ONE);
};

bitmask uint8 TestBitmask
{
    ZERO,
    TWO,
    FOUR
};

choice TemplatedChoice<T, S, B>(bit:3 param) on param
{
    case 0:
        T tField : tField.child != 0;
    case 1:
        S sField : lengthof(sField) != 0;
    default:
        B bField : valueof(bField) != 0;
};

union TemplatedUnion<T, S, B>
{
    T tField : tField != 0;
    S sField[] : lengthof(sField) != 0;
    B bField : bField != TestBitmask.FOUR;
};

struct ConstraintsInTemplates
{
    TemplatedStruct<TStruct, string, TestEnum> structField;
    TemplatedChoice<TStruct, string, TestBitmask>(2) choiceField;
    TemplatedUnion<varint64, extern, TestBitmask> unionField;
};
