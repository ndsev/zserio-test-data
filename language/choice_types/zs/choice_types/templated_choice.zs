package choice_types.templated_choice;

struct Selector
{
    uint8 field;
};

struct TestStruct
{
    varuint varuintField;
    float64 float64Field;
};

union TestUnion(Selector param)
{
    string strField;
    uint32 arrayField[param.field];
};

choice TestChoice<T, U, S>(S selector) on selector.field
{
    case 0:
        T field;
    case 1:
        U(selector) paramField;
};

struct TemplatedChoice
{
    Selector bytesSelector;
    TestChoice<bytes, TestUnion, Selector>(bytesSelector) bytesChoice;
    Selector structSelector;
    TestChoice<TestStruct, TestUnion, Selector>(structSelector) structChoice;
};
