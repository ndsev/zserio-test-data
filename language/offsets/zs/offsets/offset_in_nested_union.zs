package offsets.offset_in_nested_union;

union NestedUnion
{
    uint32 offset;
    float32 floatField;
};

union TestUnion
{
    NestedUnion nestedUnion;
    string name[];
};

struct TestStruct
{
    TestUnion unionField;
unionField.nestedUnion.offset:
    uint32 u32Field;
};
