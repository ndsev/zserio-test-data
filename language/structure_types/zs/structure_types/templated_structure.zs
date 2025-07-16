package structure_types.templated_structure;

enum int8 TestEnum
{
    MINUS_ONE = -1,
    ZERO,
    ONE
};

bitmask uint8 TestBitmask
{
    READ,
    WRITE,
    ALL
};

struct TestStructure<T1, T2, T3, T4>
{
    T1 field1;
    T2 field2;
    T3 field3;
    T4 field4;
};

struct Compound
{
    varsize array[];
};

union TestUnion
{
    string sField;
    bytes bField;
    extern eField;
};

struct TemplatedStructure
{
    TestStructure<uint32, TestEnum, TestBitmask, string> testStruct1;
    TestStructure<Compound, TestEnum, TestBitmask, TestUnion> testStruct2;
    TestStructure<TestStructure<Compound, TestEnum, TestBitmask, TestUnion>, float64, bytes, extern>
            testStruct3;
};
