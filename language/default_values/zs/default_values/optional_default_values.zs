package default_values.optional_default_values;

struct OptionalDefaultValues
{
    optional bool optionalNoDefaultBoolField;
    optional string optionalNoDefaultStringField;
    optional uint32 optionalDefaultU32Field = 13;
    optional float64 optionalDefaultF64Field = 1.234;
    optional string optionalDefaultStringField = "default";
};
