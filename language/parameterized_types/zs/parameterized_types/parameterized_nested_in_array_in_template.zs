package parameterized_types.parameterized_nested_in_array_in_template;

struct Parameterized<P>(P param)
{
    uint32 field : field > param;
};

struct Element<T>
{
    T(5) parameterized;
};

struct TemplatedHolder<T>
{
    T elementArray[];
    packed T elementPackedArray[];
};

struct Holder
{
    TemplatedHolder<Element<Parameterized<uint8>>> holder;
};
