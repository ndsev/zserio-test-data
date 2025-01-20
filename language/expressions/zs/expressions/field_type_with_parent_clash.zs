package expressions.field_type_with_parent_clash;

struct ContainedType
{
    bool            needsExtraValue;
};

struct FieldTypeExpression
{
    ContainedType   FieldTypeExpression;  // intended clash with type
    bit:3           extraValue if FieldTypeExpression.needsExtraValue;
};
