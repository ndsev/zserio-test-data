package optional_members.optional_with_default;

struct Field
{
    bool hasInfo;
    bool alien = true if hasInfo == true;
};

struct TemplatedField<T>
{
    bool hasInfo;
    bool alien = true if hasInfo == true;
};
