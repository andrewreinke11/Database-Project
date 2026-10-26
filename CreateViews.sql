Create View ProductBatches AS
SELECT a.productID, a.productName, b.batchid, b.datecompleted
FROM Product a join productBatch b on a.productid = b.productid;
Create View EmployeeBatches AS
SELECT a.employeeID, a.employeename, b. batchid from
employee a join employee_batch b on a.employeeID = b.employeeID;