package expressions.division_operator;

struct DivisionFunction
{
    int16 value;
    int8 bitCount;

    function float64 divideFloatByInt()
    {
        return (value + 0.0) / ((1 << bitCount) - 1);
    }
    function float64 divideIntByFloat()
    {
        return value / ((1 << bitCount) - 1.0);
    }
    function float64 divideFloatByFloat()
    {
        return (value + 0.0) / ((1 << bitCount) - 1.0);
    }
    function int32 divideIntByInt()
    {
        return value / ((1 << bitCount) - 1);
    }
};
