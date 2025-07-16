package union_types.templated_union;

struct Compound
{
    uint8 data;
};

union ParameterizedUnion<T>(T param)
{
    uint32 array[param];
    string str;
};

struct ParameterizedStruct<T>(T param)
{
    string array[param];
};

union TestUnion<T1, T2, T3, T4>
{
    T1 t1Array[];
    T2 t2;
    T3 t3;
    T4(5) t4;
};

union TemplatedUnion
{
    TestUnion<float32, string, Compound, ParameterizedUnion<varsize>> testUnion1;
    TestUnion<extern, bytes, Compound, ParameterizedStruct<varsize>> testUnion2;
};
