package functions.templated_choice_array;

struct Item
{
    uint8   valueA;
    uint8   valueB;
};

struct OuterArray<ITEM>
{
    uint16 numElements;
    ITEM values[numElements];
    bit:1 dummy if numElements == 0;
};

struct Inner
{
    OuterArray<Item> outerArray;
    uint8 isExplicit;
    ItemRef<Item, OuterArray<Item>>(isExplicit, outerArray) ref;
    int32 extra if ref.getElement().valueA == 20;
};

choice ItemRef<ITEM, OUTER>(uint8 isExplicit, OUTER outerArray) on isExplicit
{
    case 1:
        ITEM item;

    case 0:
        uint16 pos;

    function Item getElement()
    {
        return (isExplicit == 1) ? item : outerArray.values[getPosition()];
    }

    function uint16 getPosition()
    {
        return pos;
    }
};
