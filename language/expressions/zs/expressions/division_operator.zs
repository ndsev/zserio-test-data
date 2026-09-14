package expressions.division_operator;

struct DivisionFunction
{
    uint32 value;
    uint8 bitCount;

    function uint32 get1U()
    {
        return 1;
    }
    function float64 divideFloatByInt()
    {
        return (value + 0.0) / ((get1U() << bitCount) - 1);
    }
    function float64 divideIntByFloat()
    {
        return value / ((get1U() << bitCount) - 1.0);
    }
    function float64 divideFloatByFloat()
    {
        return (value + 0.0) / ((get1U() << bitCount) - 1.0);
    }
    function uint32 divideIntByInt()
    {
        return value / ((get1U() << bitCount) - 1);
    }

    function int32 positiveByNegativeRounding()
    {
        return 3 / (-2);
    }
    function int32 negativeByPositiveRounding()
    {
        return (-3) / 2;
    }
    function int32 negativeByNegativeRounding()
    {
        return (-3) / (-2);
    }
};
