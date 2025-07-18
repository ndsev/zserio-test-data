package offsets.optional_member_optional_offset;

struct OptionalMemberOffset
{
    bool    hasOptional;
    uint32  optionalFieldOffset if hasOptional == true;

optionalFieldOffset:
    int32   optionalField if hasOptional == true;

    int32   field;
};
