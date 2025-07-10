package default_values.default_values_in_templates;

struct BoolDefault<B>
{
    B field = true;
};

struct IntegralDefault<I>
{
    I field = 13;
};

struct FloatingDefault<F>
{
    F field = 3.14f;
};

struct StringDefault<S>
{
    S field = "test";
};

enum int8 TestEnum
{
    FIRST = -13,
    SECOND = 13
};

bitmask uint8 TestBitmask
{
    FIRST = 13,
    SECOND
};

struct EnumBitmaskDefault<EB>
{
    EB field = EB.FIRST;
};

struct DefaultValuesInTemplate
{
    BoolDefault<bool> bDefault;
    IntegralDefault<uint32> u32Default;
    IntegralDefault<varint> varintDefault;
    IntegralDefault<int:7> i7Default;
    FloatingDefault<float16> f16Default;
    FloatingDefault<float64> f64Default;
    StringDefault<string> sDefault;
};
