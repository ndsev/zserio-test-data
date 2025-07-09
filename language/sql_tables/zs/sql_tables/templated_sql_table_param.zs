package sql_tables.templated_sql_table_param;

struct Parameterized(uint32 param)
{
    string array[param];
};

sql_table TestTable<T>
{
    uint32 id sql "PRIMARY KEY NOT NULL";
    varsize lenColumn;
    T(lenColumn) parameterizedColumn;
};

sql_database TestDb
{
    TestTable<Parameterized> parameterizedTable;
};
