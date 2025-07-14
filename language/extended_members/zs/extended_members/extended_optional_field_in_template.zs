package extended_members.extended_optional_field_in_template;

struct Original
{
    uint32 value;
};

struct Compound<T>
{
    T field;
};

struct Extended<T>
{
    uint32 value;
    extend optional T extendedValue;
};

instantiate Extended<uint32> ExtendedSimple;
instantiate Extended<Compound<uint32>> ExtendedCompound;
