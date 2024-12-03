package choice_tag_clash;

// packed array needed to check clash in ZserioPackingContext (Java, C++)
struct ChoiceTagClash
{
    packed TestChoice(@index % 2 == 0) choices[];
    packed TestUnion unions[];
};

choice TestChoice(bool selector) on selector
{
    case true:
        varsize choiceTag;
    case false:
        string stringField;
};

union TestUnion
{
    varsize choiceTag;
    string stringField;
};
