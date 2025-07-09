package sql_tables.templated_sql_table;

struct Blob
{
    uint32 field;
};

enum int8 TestEnum
{
    ONE,
    TWO
};

bitmask uint8 TestBitmask
{
    READ,
    WRITE
};

sql_table TestTable<T>
{
    uint32 id sql "PRIMARY KEY NOT NULL";
    T column;
};

sql_database TestDb
{
    TestTable<int8> int8Table;
    TestTable<uint32> uint32Table;
    TestTable<float16> float16Table;
    TestTable<varint16> varint16Table;
    TestTable<varuint> varuintTable;
    TestTable<string> stringTable;
    TestTable<TestEnum> enumTable;
    TestTable<TestBitmask> bitmaskTable;
    TestTable<Blob> blobTable;
};
