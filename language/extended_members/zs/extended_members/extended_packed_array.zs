package extended_members.extended_packed_array;

struct Element
{
    uint32 value = 13;
};

struct Original
{
    Element array[];
};

struct Extended1
{
    Element array[];
    extend packed Element packedArray[];
};

struct Extended2
{
    Element array[];
    extend packed Element packedArray[];
    extend optional packed Element optionalPackedArray[];
};
