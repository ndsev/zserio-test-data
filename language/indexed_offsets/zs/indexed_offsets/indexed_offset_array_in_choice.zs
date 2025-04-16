package indexed_offsets.indexed_offset_array_in_choice;

choice TestChoice(uint32 nameLength) on nameLength
{
    case 0:
        uint32 offsetArray[];
    default:
        string name[nameLength];
};

struct TestStruct
{
    uint32 nameLength;
    TestChoice(nameLength) choiceField;
choiceField.offsetArray[@index]:
    uint32 u32Array[];
};
