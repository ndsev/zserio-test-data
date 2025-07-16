package offsets.parameter_offset_in_template;

struct OffsetHolder
{
    uint32 roomOffset;
};

struct School<O, R>
{
    uint16 schoolId;
    O offsetHolder;
    R(offsetHolder) room;
};

struct Room<T>(T offsetHolder)
{
offsetHolder.roomOffset:
    uint16 roomId;
};

struct ParameterOffsetInTemplate
{
    School<OffsetHolder, Room<OffsetHolder>> school;
};
