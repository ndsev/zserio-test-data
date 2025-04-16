package offsets.offset_in_nested_choice;

choice NestedChoice(bool selector) on selector
{
    case true:
        uint32 offset;
    default:
        string name[];
};

choice TestChoice(bool selector) on selector
{
    case true:
        NestedChoice(true) nestedChoice;
    default:
        uint32 field;
};

struct TestStruct
{
    bool hasOffset;
    TestChoice(hasOffset) choiceField;
choiceField.nestedChoice.offset:
    uint32 u32Field;
};
