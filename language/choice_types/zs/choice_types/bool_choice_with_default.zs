package choice_types.bool_choice_with_default;

choice BoolChoiceWithDefault(bool selector) on selector
{
    default:
        uint8 field;
};
