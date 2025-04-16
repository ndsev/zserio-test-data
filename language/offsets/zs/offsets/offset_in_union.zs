package offsets.offset_in_union;

union TestUnion
{
    uint32 offset;
    string name[];
};

struct TestStruct
{
    TestUnion unionField;
unionField.offset:
    uint32 u32Field;
};
