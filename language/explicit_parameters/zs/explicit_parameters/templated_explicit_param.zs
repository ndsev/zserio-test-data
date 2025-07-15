package explicit_parameters.templated_explicit_param;

struct Parameterized(uint32 param)
{
    string array[param];
};

sql_table TestTableWithExplicit<T>
{
    uint32 id sql "PRIMARY KEY NOT NULL";
    T(explicit len) parameterizedColumn;
};

sql_database TestDb
{
    TestTableWithExplicit<Parameterized> explicitParameterizedTable;
};
