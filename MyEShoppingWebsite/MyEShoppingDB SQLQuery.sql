create table tblUsers
( Uid int identity (1,1) primary key not null,
  Username nvarchar(50)  Null,
  Password nvarchar(50)  Null,
  Email nvarchar(50)  Null,
  Name nvarchar(50)  Null,
) 