package expressions.expressions_in_templates;

struct ArrayExpressions<T>
{
    T array[2];
    bool isZeroArrayValid if array[0] == 0 && array[1] == 0; // todo: add default value = true when #88 is fixed
};

bitmask uint8 ColorB
{
    RED,
    GREEN,
    BLUE
};

struct BitmaskExpressions<B>
{
    B color;
    bool hasRed if (color & B.RED) == B.RED;
    bool hasGreed if isset(color, B.GREEN);
    bool hasBlue if valueof(color & B.BLUE) == valueof(B.BLUE);
};

const bit:7 Constant = 13;

struct ConstExpressions<T>
{
    T value : value == Constant;
};

enum int8 ColorE
{
    RED,
    GREEN,
    BLUE
};

struct EnumExpressions<E>
{
    E color;
    bool isRed if color == E.RED;
};

struct Field
{
    bool hasExtra;
};

struct FieldExpressions<T>
{
    T field;
    bit:3 extra if field.hasExtra;
};

struct FloatExpressions<F>
{
    F value;
    F extra if result();

    function bool result()
    {
        return (value * 2.0 + 1.0 / 0.5 > 1.0);
    }
};

struct FunctionExpressions<T>
{
    T color;
    bool isRed if getColor() == T.RED;

    function T getColor()
    {
        return color;
    }
};

choice Index<B>(B isEven) on isEven
{
    case true:
        uint8 field8;
    case false:
        int16 field16;
};

struct IndexExpressions<T>
{
    uint16 length;
    T(@index % 2 + 1 == 2) elements[length];
};

struct IsSetParam<B>(B param)
{
    uint32 intField if isset(param, B.RED);
};

struct IsSetExpressions<B>
{
    B color;
    IsSetParam<B>(color) isSetParam;

    function bool hasRed()
    {
        return isset(color, B.RED);
    }
};

struct LeftShiftExpressions<T>
{
    uint32 fieldU32;
    T fieldT = 5 << 3;

    function T getFieldU8Shift()
    {
        return fieldU32 << 3;
    }

    function T getFieldTShift()
    {
        return fieldT << 3;
    }
};

struct LengthOfExpressions<T, S, B>
{
    T array[] : lengthof(array) < 10;
    S strField : lengthof(strField) != 0;
    B bytesField : lengthof(bytesField) != 0;
};

struct ModuloExpressions<T>
{
    T field = 4;

    function bool isValueDivBy4()
    {
        return (getValue() % 4) == 0;
    }

    function T getValue()
    {
        return field;
    }
};

struct NegationExpressions<B>
{
    B value;

    function B negate()
    {
        return !value;
    }
};

struct NumBitsExpressions<U1, U2>
{
    U1 u1Value;
    U2 u2Value;

    function uint8 getNumBitsU1()
    {
        return numbits(u1Value);
    }

    function uint8 getNumBitsU2()
    {
        return numbits(u2Value);
    }
};

struct ParameterizedArrayElement<T, B>(B needsExtra)
{
    T value1;
    T value2 if needsExtra;
};

struct ParameterizedArrayHolder<T, B>(B param)
{
    T(param) array[2];
};

struct ParameterizedArrayExpressions<T>
{
    T(false) holder;
    bool isValueZero if holder.array[0].value1 == 0;
};

struct ParenthesisExpressions<T>
{
    T firstValue;
    T secondValue;

    function T result()
    {
        return firstValue * (secondValue  + 1);
    }
};

struct QuestionMarkExpressions<T, B>
{
    T firstValue;
    T secondValue;
    B isFirstValueValid;

    function T validValue()
    {
        return isFirstValueValid == true ? firstValue : secondValue;
    }
};

struct StringExpressions<S>
{
    S value;
    S defaultValue = "test";

    function S returnValue()
    {
        return value;
    }

    function S returnDefaultValue()
    {
        return defaultValue;
    }

    function S valueOrLiteral()
    {
        return lengthof(value) == 0 ? "literal" : value;
    }
};

struct ValueOfExpressions<E, B>
{
    E colorE;
    B colorB;

    function bool sameFields()
    {
        return valueof(colorE) == valueof(colorB);
    }

    function bool sameValues()
    {
        return valueof(E.RED) == valueof(B.RED);
    }
};

struct ExpressionsInTemplates
{
    ArrayExpressions<int8> arrayExpressions;
    BitmaskExpressions<ColorB> bitmaskExpressions;
    ConstExpressions<bit:7> constExpressions;
    EnumExpressions<ColorE> colorExpressions;
    FieldExpressions<Field> fieldExpressions;
    FloatExpressions<float64> floatExpressions;
    FunctionExpressions<ColorE> functionExpressions;
    IndexExpressions<Index<bool>> indexExpressions;
    IsSetExpressions<ColorB> isSetExpressions;
    LeftShiftExpressions<uint32> leftShiftExpressions;
    LengthOfExpressions<float32, string, bytes> lengthOfExpressions;
    ModuloExpressions<uint16> moduloExpressions;
    NegationExpressions<bool> negationExpressions;
    NumBitsExpressions<uint32, uint16> numBitsExpressions;
    ParameterizedArrayExpressions<ParameterizedArrayHolder<ParameterizedArrayElement<uint16, bool>, bool>>
            parameterizedArrayExpressions;
    ParenthesisExpressions<uint32> parenthesisExpressions;
    QuestionMarkExpressions<float32, bool> questionMarkExpressions;
    StringExpressions<string> stringExpressions;
    ValueOfExpressions<ColorE, ColorB> valueOfExpressions;
};
