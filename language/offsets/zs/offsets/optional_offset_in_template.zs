package offsets.optional_offset_in_template;

struct OffsetHolder<T>
{
    bool hasOptional;
    T optionalFieldOffset if hasOptional == true;
};

struct OptionalMemberOffset
{
    OffsetHolder<uint32> offsetHolder;

offsetHolder.optionalFieldOffset:
    int32   optionalField if offsetHolder.hasOptional == true;

    int32   field;
};
