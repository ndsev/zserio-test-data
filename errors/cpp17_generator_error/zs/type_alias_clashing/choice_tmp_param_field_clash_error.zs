package choice_tmp_param_field_clash_error;

choice Clash1<Uint8ArrayType>(uint8 param) on param
{
case 0:
    uint8   uint8Array[];
};
