package scope_symbols.bitmask_value_camel_case_clash_error;

bitmask uint8 PermissionClash
{
    NONE   = 000b,
    READ_PERMISSION   = 010b,
    WRITE_PERMISSION  = 100b,
    CREATE_PERMISSION = 111b,
    createPermission
};
