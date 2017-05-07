Create procedure dbo.sp_DeleteBooks
(@OrderID nvarchar(50),
@BookID nvarchar(50),
@BK int)
as
set @BK=0
Select @BK=COUNT(*)
From ShopCart
Where (BookID=@BookID)
if @BK>0
Begin
Delete From ShopCart
Where(BookID=@BookID and OrderID=@OrderID)
end
Return @BookID