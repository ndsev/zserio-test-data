package indexed_offsets.indexed_offset_array_in_nested_choice;

choice NestedChoice(uint32 nameLength) on nameLength
{
    case 0:
        uint32 offsetArray[];
    default:
        string name[nameLength];
};

choice TestChoice(uint32 nameLength) on nameLength
{
    default:
        NestedChoice(nameLength) nestedChoice;
};

struct TestStruct
{
    uint32 nameLength;
    TestChoice(nameLength) choiceField;
choiceField.nestedChoice.offsetArray[@index]:
    uint32 u32Array[];
};
