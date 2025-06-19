package templates.choice_templated_enum_selector;

enum uint8 EnumFromZero
{
    ONE,
    TWO,
    THREE
};

enum uint32 EnumFromOne
{
    ONE = 1,
    TWO,
    THREE
};

// note that when the selector is a template parameter, the T cannot be omitted
choice TemplatedChoice<T>(T selector) on selector
{
    case T.ONE:
        uint16 uint16Field;
    case T.TWO:
        uint32 uint32Field;
    case T.THREE:
        string stringField;
};

struct ChoiceTemplatedEnumSelector
{
    EnumFromZero selectorFromZero;
    EnumFromOne selectorFromOne;
    TemplatedChoice<EnumFromZero>(selectorFromZero) fromZeroChoice;
    TemplatedChoice<EnumFromOne>(selectorFromOne) fromOneChoice;
};
