Create Table Employee(
    EmployeeID Integer Primary Key,
    EmployeeName NVarChar2(100) Not Null
);
Create Table Product(
    ProductID Integer Primary Key,
    ProductName NVarChar2(100) Not Null
);
Create Table Compo(
    ComponentID Integer Primary Key,
    ComponentName NVarChar2(100) Not Null
);
Create Table Cont(
    ContainerID Integer Primary Key,
    ComponentID Integer Not Null,
    Constraint Container_FK
    Foreign Key (ComponentId)
    References Compo(ComponentID)
);
Create Table ProductBatch(
    BatchID Integer Primary Key,
    ProductID Integer,
    DateStarted Timestamp not null,
    DateCompleted Timestamp,
    Constraint Batch_FK
    Foreign Key (ProductID)
    References Product(ProductID)
);
Create Table Employee_Batch(
    EmployeeID Integer Not Null,
    BatchID Integer Not Null,
    Constraint EB_Employee_FK
    Foreign Key (EmployeeID)
    References Employee(EmployeeID),
    Constraint EB_Batch_FK
    Foreign Key (BatchID)
    References ProductBatch(BatchID)
);
Create Table Batch_Container(
    ContainerID Integer Not Null,
    BatchID Integer Not Null,
    Constraint BC_ContainerID_FK
    Foreign Key (ContainerID)
    References Cont(ContainerID),
    Constraint BC_BatchID_FK
    Foreign Key (BatchID)
    References ProductBatch(BatchID)
);