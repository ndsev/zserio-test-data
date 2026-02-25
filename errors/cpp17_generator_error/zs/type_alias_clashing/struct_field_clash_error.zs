package struct_field_clash_error;

struct Clash2
{
    int32 myArray[];
    int16 MY_ARRAY[];
};
