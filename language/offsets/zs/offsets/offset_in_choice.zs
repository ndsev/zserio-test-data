package offsets.offset_in_choice;

choice TestChoice(bool selector) on selector
{
    case true:
        uint32 offset;
    default:
        string name[];
};

struct TestStruct
{
    bool hasOffset;
    TestChoice(hasOffset) choiceField;
choiceField.offset:
    uint32 u32Field;
};
