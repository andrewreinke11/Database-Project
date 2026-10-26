//functions for auditing and metrics
CREATE OR REPLACE FUNCTION makemonthlyreport (
    formonth IN INTEGER
) RETURN monthlytable AS
    answer monthlytable;
BEGIN
    SELECT MonthlyReport(
        productid,
        productname,
        COUNT(batchid))
    BULK COLLECT
    INTO answer
    FROM
        productbatches
    WHERE
        EXTRACT(MONTH FROM datecompleted) = formonth
    GROUP BY
        productid,
        productname;

    RETURN answer;
END;
/
CREATE OR REPLACE FUNCTION makeEmployeeReport(forEmployeeID IN Integer) RETURN idTable AS
    answer idtable;
    Begin
        SELECT BATCHID
        BULK COLLECT INTO answer
        FROM employeebatches
        WHERE employeeid = forEmployeeID;
        RETURN answer;
    END;
    /