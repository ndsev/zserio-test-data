package module_names.structure_with_service_clash_error;

struct SomeName
{
    uint32 field;
};

service Some_Name
{
    SomeName someName(SomeName);
};
