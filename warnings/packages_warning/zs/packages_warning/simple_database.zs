package packages_warning.simple_database;

sql_table SimpleTable
{
    int32       schoolId    sql "PRIMARY KEY NOT NULL";
    int32       classId;
    int32       studentId;
};

sql_database SimpleDatabase
{
    SimpleTable simpleTable;
};
