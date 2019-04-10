create table empl
(
Name varchar(10),
Password varchar(10),
confirmpassword varchar(10),
Address varchar(50),
Contanct varchar(10),
EmailID varchar(50)
)







create procedure emplinsert
@Name varchar(10),
@Password varchar(10),
@confirmpassword varchar(10),
@Address varchar(50),
@Contanct varchar(10),
@EmailID varchar(50)
as
begin
insert empl(NAME,Address,Password,confirmpassword,contanct,EmailID)VALUES(@Name,@Password,@confirmpassword,@Address,@Contanct,@EmailID);
end


select * from empl