package array_types.templated_packed_array_of_templates;

struct ArrayTemplate<E, C>
{
    E enumeration;
    varsize length;
    packed Element<E, C>(enumeration) array[length];
};

struct Element<E, C>(E enumeration)
{
    C(enumeration) element;
};

enum varuint16 TestEnum
{
    NAME
};

choice TestChoice(TestEnum type) on type
{
    case NAME:
        string text;
};

struct Holder
{
    ArrayTemplate<TestEnum, TestChoice> list;
};
