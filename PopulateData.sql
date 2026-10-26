Insert Into Employee (EmployeeID, EmployeeName) Values
(1, 'John A. Smith'),
(2, 'Sarah K. Johnson'),
(3, 'Michael T. Brown'),
(4, 'Emily R. Davis'),
(5, 'David L. Wilson');
Insert Into Product (ProductID, ProductName) Values
(1, 'Tablet-TBL-1001'),
(2, 'Smartphone-SMP-2001'),
(3, 'Laptop-LTP-3001');
Insert Into Compo (ComponentID, ComponentName) Values
(1,'Battery-BAT-4500mAh'),
(2,'Screen-SCR-6.5in-OLED'),
(3,'Processor-CPU-A78'),
(4,'Camera-CAM-48MP'),
(5,'Motherboard-MBD-X1');
Insert Into Cont (ContainerID, ComponentID) Values
(1001,1),
(1002,2),
(1003,3),
(1004,4),
(1005,5),
(1006,1),
(1007,2);
Insert Into ProductBatch (BatchID, ProductID, DateStarted, DateCompleted) Values
(5001, 1, TIMESTAMP '2026-02-25 08:15:00', TIMESTAMP '2026-02-28 16:40:00'),
    (5002, 2, TIMESTAMP '2026-03-02 09:30:00', TIMESTAMP '2026-03-05 14:10:00'),
    (5003, 3, TIMESTAMP '2026-03-15 07:45:00', TIMESTAMP '2026-03-20 18:25:00'),
    (5004, 1, TIMESTAMP '2026-04-05 10:00:00', TIMESTAMP '2026-04-10 15:55:00'),
    (5005, 2, TIMESTAMP '2026-04-18 11:20:00', NULL);
Insert Into Employee_Batch (EmployeeID, BatchID) Values
(1,5001),
(2,5001),
(3,5002),
(4,5003),
(5,5004),
(1,5005),
(3,5004);
Insert Into Batch_Container (ContainerID, BatchID) Values
(1001,5001),
(1002,5001),
(1003,5002),
(1004,5003),
(1005,5004),
(1006,5005),
(1007,5002),
(1002,5003),
(1003,5004);