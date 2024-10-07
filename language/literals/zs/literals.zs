package literals;

const bool BOOLEAN_TRUE = true;
const bool BOOLEAN_FALSE = false;

const int32 DECIMAL_POSITIVE = 255;
const int32 DECIMAL_POSITIVE_WITH_SIGN = +255;
const int32 DECIMAL_NEGATIVE = -255;
const int32 DECIMAL_ZERO = 0;

const int32 HEXADECIMAL_POSITIVE = 0xFF;
const int32 HEXADECIMAL_POSITIVE_WITH_CAPITAL_X = 0XFF;
const int32 HEXADECIMAL_POSITIVE_WITH_SIGN = +0xFF;
const int32 HEXADECIMAL_NEGATIVE = -0xFF;

const int32 OCTAL_POSITIVE = 0377;
const int32 OCTAL_POSITIVE_WITH_SIGN = +0377;
const int32 OCTAL_NEGATIVE = -0377;
const int32 OCTAL_ZERO = 00;

const int32 BINARY_POSITIVE = 11111111b;
const int32 BINARY_POSITIVE_WITH_CAPITAL_B = 11111111B;
const int32 BINARY_POSITIVE_WITH_SIGN = +11111111b;
const int32 BINARY_NEGATIVE = -11111111b;

const float16 FLOAT16 = 15.2f;
const float32 FLOAT32 = 1.523e1f;
const float64 FLOAT64 = 15234e-3;

const string STRING = "String with escaped values \u0031 \x32 \063 \n \t \f \r \\ \"";
