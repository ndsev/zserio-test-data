package indexed_offsets.indexed_offset_array_in_recursive_union;

union TestUnion
{
    TestUnion unionArray[];
    uint32 offset;
};

struct TestStruct
{
    TestUnion unionField;
    uint32 field;
unionField.unionArray[@index].offset:
    uint32 array[];
};
