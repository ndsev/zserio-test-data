package array_types.templated_auto_array;

struct Templated<T>
{
    T array[];
};

struct TemplatedParam<T, P>(P param)
{
    T(param.array[@index]) array[];
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

struct Arrays
{
    Templated<uint8> uint8Array;
    Templated<varsize> varsizeArray;
    Templated<string> stringArray;
    Templated<bytes> bytesArray;
    Templated<TestEnum> enumArray;
    Templated<TestBitmask> bitmaskArray;
    Templated<TestStruct<string>> structArray;
    TemplatedParam<TestChoice<TestEnum>, Templated<TestEnum>>(enumArray) choiceArray;
    Templated<TestUnion<TestBitmask>> unionArray;
};

struct TemplatedAutoArray
{
    Arrays arrays;
};
