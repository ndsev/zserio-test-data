package indexed_offsets.indexed_offset_array_in_nested_union;

union NestedUnion
{
    uint32 offsetArray[];
};

union TestUnion
{
    NestedUnion nestedUnion;
    string name[];
};

struct TestStruct
{
    TestUnion unionField;
unionField.nestedUnion.offsetArray[@index]:
    uint32 u32Array[];
};
