package offsets.offset_in_nested_union_in_template;

union NestedUnion<T>
{
    T offset;
    float32 floatField;
};

union TestUnion<T>
{
    T nestedUnion;
    string name[];
};

struct TestStruct<T>
{
    T unionField;
unionField.nestedUnion.offset:
    uint32 u32Field;
};

struct OffsetInNestedUnionInTemplate
{
    TestUnion<NestedUnion<uint32>> testUnion;
};
