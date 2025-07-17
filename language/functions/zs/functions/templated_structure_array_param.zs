package functions.templated_structure_array_param;

/* This Zserio uses the function which is used as parameter for array elements. This produced
 * the compilation error of generated Java and C++ sources in the past. */

struct ChildStructure<T>(T bitSize)
{
    bit<bitSize>    value;
};

struct NotLeftMost<T>
{
    function T getAnotherChildBitSize()
    {
        return 17;
    }
};

struct ParentStructure<T, CH>
{
    NotLeftMost<T> notLeftMost;
    T numChildren;
    CH(getChildBitSize()) children[numChildren];
    T numAnotherChildren;
    ChildStructure<T>(notLeftMost.getAnotherChildBitSize()) anotherChildren[numAnotherChildren];

    function T getChildBitSize()
    {
        return 19;
    }
};

struct TemplatedStructureArrayParam
{
    ParentStructure<uint8, ChildStructure<uint8>> parentStructure;
};
