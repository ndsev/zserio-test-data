package constraints.optional_constraints;

struct OptionalConstraints
{
    uint32 field;
    optional uint32 autoOptionalField : autoOptionalField > field;
    uint32 optionalField if field > 10 : optionalField > field;
};
