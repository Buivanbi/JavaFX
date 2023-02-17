use Project
go
--"D:\Test5\Javafx-Restaurant-Management-System-main\Main\src\image\CusImage\Dan.jpg"
INSERT INTO [dbo].[Customer] (customerName,customerDOB,customerAddress,customerPhone,customerMail,customerGender,customerUserName,customerImage)
SELECT 'Dan','2000-02-28','BT',123456780,'dan@gmail.com','Female','dan',
	BulkColumn FROM OPENROWSET(BULK N'D:\Test5\Javafx-Restaurant-Management-System-main\Main\src\image\CusImage\Dan.jfif', SINGLE_BLOB) image;
go


select * from [Customer]
go