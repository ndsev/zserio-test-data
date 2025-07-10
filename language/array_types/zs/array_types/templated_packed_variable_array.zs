package array_types.templated_packed_variable_array;

struct Templated<T>(varsize len)
{
    packed T array[len];
};

struct TemplatedParam<T, P, S>(P param, S len)
{
    packed T(param.array[@index]) array[len];
};

struct TestStruct<T>
{
    T field;
};

choice TestChoice<E>(E param) on param
{
    case E.MINUS_ONE:
        uint32 uint32Field;
    default:
        string stringField;
};

union TestUnion<B>
{
    B bitmaskField;
    TestStruct<B> structField;
};

enum int8 TestEnum
{
    MINUS_ONE = -1,
    ONE = 1,
    TWO,
};

bitmask uint8 TestBitmask
{
    READ,
    WRITE
};

struct Arrays<T>(T len)
{
    Templated<uint8>(len) uint8Array;
    Templated<varsize>(len) varsizeArray;
    Templated<string>(len) stringArray;
    Templated<bytes>(len) bytesArray;
    Templated<TestEnum>(len) enumArray;
    Templated<TestBitmask>(len) bitmaskArray;
    Templated<TestStruct<string>>(len) structArray;
    TemplatedParam<TestChoice<TestEnum>, Templated<TestEnum>, varsize>(enumArray, len) choiceArray;
    Templated<TestUnion<TestBitmask>>(len) unionArray;
};

struct TemplatedPackedVariableArray
{
    varsize len;
    Arrays<varsize>(len) arrays;
};
