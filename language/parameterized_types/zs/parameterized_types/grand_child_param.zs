package parameterized_types.grand_child_param;

struct Item(bool hasExtraParameter)
{
    uint16    param;
    uint32    extraParam if hasExtraParameter == true;
};

choice ItemChoice(bool hasItem) on hasItem
{
    case true:
        Item(true)  item;

    case false:
        uint16      param;
};

struct ItemChoiceHolder
{
    bool                hasItem;
    ItemChoice(hasItem) itemChoice;
};

// This compound type must have C++ initializeChildren() method because it contains parameterized children.
struct GrandChildParam
{
    ItemChoiceHolder itemChoiceHolder;
    ItemChoiceHolder itemChoiceHolderArray[];
    // Optional array is used intentionally to check initializeChildren() more deeply.
    optional uint32  dummyArray[];
};
