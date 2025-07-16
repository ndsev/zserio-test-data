package parameterized_types.array_element_param_with_optional_in_template;

struct Holder
{
    TemplatedHolder<bit:7> holder;
};

struct TemplatedHolder<T>
{
    Param<T> param;
    Value<Param<T>, ExtraValue<T>>(param) values[];
};

struct Param<T>
{
    bool hasExtra;
    T extraParam if hasExtra;
};

struct Value<T, E>(T param)
{
    uint32 normalValue if !param.hasExtra;
    E(param.extraParam) extraValue if param.hasExtra; // optional field stored in parameter
};

struct ExtraValue<T>(T extraParam)
{
    uint64 value if extraParam == 0;
};
