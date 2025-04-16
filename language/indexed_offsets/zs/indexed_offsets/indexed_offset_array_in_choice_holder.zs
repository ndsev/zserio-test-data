package indexed_offsets.indexed_offset_array_in_choice_holder;

choice TestChoice(uint32 nameLength) on nameLength
{
    case 0:
        uint32 offset;
    default:
        string name[nameLength];
};

struct TestStruct
{
    uint32 nameLength = 0;
    TestChoice(nameLength) choiceArray[];
choiceArray[@index].offset:
    uint32 u32Array[];
};
