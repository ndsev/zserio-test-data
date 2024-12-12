package default_values.extended_default_values;

struct ExtendedDefaultValues
{
    uint32 noDefaultU32Field;
    string noDefaultStringField;
    extend bool extendedDefaultBoolField = true;
    extend string extendedDefaultStringField = "default";
    extend optional float32 extendedOptionalDefaultFloatField = 1.234f;
    extend optional string extendedOptionalDefaultStringField = "default";
    extend uint32 extendedNoDefaultU32Field;
    extend extern extendedNoDefaultExternField;
    extend optional uint32 extendedOptionalNoDefaultU32Field;
    extend optional bytes extendedOptionalNoDefaultBytesField;
};
