//These should only be run once, separately
CREATE TYPE monthlyreport AS OBJECT(
        productid   INTEGER,
        productname NVARCHAR2(100),
        batchcount  INTEGER
);

CREATE TYPE monthlytable AS
    TABLE OF monthlyreport;
CREATE TYPE idTable AS
    TABLE OF INTEGER;