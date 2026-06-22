package indexed_offsets.optional_nested_indexed_offset_array_in_template;

struct Header<L, O>
{
    L length;
    O offsets[length];
};

//OptionalNestedIndexedOffsetArray
struct OptionalNestedIndexedOA<T>
{
    T header;

header.offsets[@index]:
    string  data[header.length] if header.length > 0;

    bit:6   field;
};

struct OptionalNestedIndexedOffsetArrayInTemplate
{
    OptionalNestedIndexedOA<Header<uint16, uint32>> field;
};
