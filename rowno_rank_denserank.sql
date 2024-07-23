CREATE TABLE [Emp] (
    [EmpId] INT NOT NULL IDENTITY(1, 1),
    [Name] VARCHAR(255) NULL,
    [DeptId] INT NULL,
    [Salary] INT NULL,
    PRIMARY KEY ([EmpID]));

INSERT INTO [Emp] ([Name], DeptId, Salary)
VALUES
  ('Britanni',3,1000),
  ('Julian',2,2000),
  ('Dolan',3,3000),
  ('Jonah',4,4000),
  ('Fulton',2,5000),
  ('Scarlett',4,1000),
  ('Bernard',2,2000),
  ('Chancellor',1,3000),
  ('Dalton',4,4500),
  ('Len',1,5000),
  ('Bree',4,1000),
  ('Cooper',1,2000),
  ('Nora',4,3000),
  ('Gareth',3,4000),
  ('Beau',2,5000);

select * from [Emp];

SELECT *,
ROW_NUMBER() OVER(PARTITION BY DeptId ORDER BY Salary) AS RowNumber,
      RANK() OVER(PARTITION BY DeptId ORDER BY Salary) AS [Rank],
DENSE_RANK() OVER(PARTITION BY DeptId ORDER BY Salary) AS [DenseRank]
FROM [dbo].[Emp]