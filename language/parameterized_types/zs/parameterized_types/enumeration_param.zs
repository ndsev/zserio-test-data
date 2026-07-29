package parameterized_types.enumeration_param;

enum uint8 BasicColor
{
    BLACK,
    WHITE
};

struct EnumerationParam(BasicColor basicColor)
{
    int32 field if basicColor == BasicColor.WHITE;
};
