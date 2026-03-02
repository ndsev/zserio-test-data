package struct_tmpl_param_clash_error;

struct Clash3<PARAM, Param>
{
    PARAM value;
    Param value2;
};
