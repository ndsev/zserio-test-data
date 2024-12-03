package expressions.left_shift_operator;

// TODO: Using bit:63 instead of uint64 because BigInteger issue in Java generator - see issue #84.
struct LeftShiftOperator
{
    uint32 u32 = 5 << 3;
    int32 i32 = -5 << 3;
    uint32 u32Complex = 1 << 2 << 3;
    int32 i32Complex = -1 << 2 << 3;
    uint32 u32Plus = 1 + 2 << 3;
    int32 i32Minus = 4 - 6 << 5;
    uint32 u32PlusRhsExpr = 1 + 2 << 5 - 3;
    int32 i32MinusRhsExpr = 5 - 8 << 1 + 2;
    bit:63 u63Complex  = 10 + 1 << 10 - 1 << 10 + 1;
    int64 i64Complex = 1 - 10 << 10 - 1 << 2 - 3 + 2;

    bit:63 u63 = 13;
    int64 i64 = -13;
    int32 positiveI32 = 13;

    uint8 shift = 10;

    function bit:63 getU63LShift3()
    {
        return u63 << 3;
    }

    function int64 getI64LShift4()
    {
        return i64 << 4;
    }

    function bit:63 getU63LShift()
    {
        return u63 << shift;
    }

    function int64 getI64LShift()
    {
        return i64 << shift;
    }

    function int32 getPositiveI32LShift()
    {
        return positiveI32 << shift;
    }

    function int64 getI64ComplexLShift()
    {
        return i64 + 1 << shift - 5 << 2 << 1 << 0;
    }
 };
