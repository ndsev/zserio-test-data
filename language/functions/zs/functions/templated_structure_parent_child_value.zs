package functions.templated_structure_parent_child_value;

struct ChildValue<T>
{
    T val;

    function T getValue()
    {
        return val;
    }
};

struct ParentValue<T, U>
{
    T childValue;

    function U getValue()
    {
        return childValue.getValue();
    }
};

struct TemplatedStructureParentChildValue
{
    ParentValue<ChildValue<uint32>, uint32> parentValue;
};
