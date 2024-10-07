package templates.instantiate_sql_table;

sql_table TestTable<T>
{
    T id sql "PRIMARY KEY NOT NULL";
    string info;
};

instantiate TestTable<uint32> U32Table;
