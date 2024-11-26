package optional_members.optional_complex_expression;

struct Container
{
    Permission permission;
    // no parenthesis about whole if command is intended to check correctness of the generated code
    bit:4 extraData if (permission & Permission.WRITE) == Permission.WRITE ||
            (permission & Permission.APPEND) == Permission.APPEND ||
            (permission & Permission.CREATE) == Permission.CREATE;
};

bitmask bit:5 Permission
{
    NONE   = 00000b,
    READ   = 00010b,
    WRITE  = 00100b,
    APPEND = 01000b,
    CREATE = 10000b
};
