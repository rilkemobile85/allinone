USE [CompanyXYZ]
GO
/****** Object:  StoredProcedure [dbo].[AddEmp]    Script Date: 11-07-2023 16:07:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddEmp]
(
@Name varchar(500),
@City varchar (500),
@Address varchar (500)
)
as begin 
insert into employee values(@Name, @City, @Address )
end

create procedure UpdateEmp
(
   @Name varchar (50),    
   @City varchar (50),    
   @Address varchar (50)    
)
as begin
update employee set city=@City, address=@Address
where name=@Name
End
select * from employee