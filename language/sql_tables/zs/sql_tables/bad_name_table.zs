package sql_tables.bad_name_table;

// Table with columns having reserved names in SQL
sql_table BadNameTable
{
    int32 id sql "PRIMARY KEY NOT NULL";
    int32 select;
    int32 where;
    int32 order;
};
