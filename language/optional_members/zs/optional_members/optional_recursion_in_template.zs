package optional_members.optional_recursion_in_template;

struct Block<T>(uint8 count)
{
    T   data[count];
    T   blockTerminator;

    Block<T>(blockTerminator) nextData if blockTerminator > 0;
};

struct OptionalRecursionInTemplate
{
    Block<uint8>(32) block;
};
