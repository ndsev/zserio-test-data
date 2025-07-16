package offsets.offset_in_nested_choice_in_template;

// keep the current order of compound definitions to check correct behavior of OffsetFieldsCollector in cpp17

struct TestStruct<T>
{
    bool hasOffset;
    T(hasOffset) choiceField;
choiceField.nestedChoice.offset:
    uint32 u32Field;
};

choice TestChoice<T>(bool selector) on selector
{
    case true:
        T(true) nestedChoice;
    default:
        uint32 field;
};

struct OffsetInNestedChoiceInTemplate
{
    TestStruct<TestChoice<NestedChoice<uint32>>> testStruct;
};

choice NestedChoice<T>(bool selector) on selector
{
    case true:
        T offset;
    default:
        string name[];
};
