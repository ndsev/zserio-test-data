package indexed_offsets.indexed_offset_array_in_union;

union TestUnion
{
    uint32 offsetArray[];
    string name[];
};

struct TestStruct
{
    TestUnion unionField;
unionField.offsetArray[@index]:
    uint32 u32Array[];
};
