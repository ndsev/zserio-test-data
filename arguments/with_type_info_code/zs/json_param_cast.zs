package json_param_cast;

// Parameters to XXXParam struct are supplied as literals yielding different 
// but compatible type. DebugString should type cast to target parameter type
// as needed when calling target type ctor.

struct Holder
{
    int32 number;
    Int8Param(0) int8Param;
    Int16Param(030) int16Param;
    Int32Param(0x30) int32Param;
    Int64Param(111B) int64Param;
    Float16Param(0.2) float16Param;
    Float32Param(0.2) float32Param;
    Float64Param(0.1f) float64Param;
    Int32Param(number) param;
};

struct Int8Param(int8 param)
{
    int32 data if param > 0;
};

struct Int16Param(int16 param)
{
    int32 data if param > 0;
};

struct Int32Param(int32 param)
{
    int32 data if param > 0;
};

struct Int64Param(int64 param)
{
    int32 data if param > 0;
};

struct Float16Param(float16 param)
{
    int32 data if param > 0.0;
};

struct Float32Param(float32 param)
{
    int32 data if param > 0.0;
};

struct Float64Param(float64 param)
{
    int32 data if param > 0.f;
};
