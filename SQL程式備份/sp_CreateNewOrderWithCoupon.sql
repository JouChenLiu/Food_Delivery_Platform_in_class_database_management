CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_CreateNewOrderWithCoupon`(
	IN InUserId int,
    IN InDeliverymanId int,
    IN InRestaurantId int,
    IN InMeals_1_Id int,
    IN InMeals_1_Count int,
    IN InMeals_2_Id int,
    IN InMeals_2_Count int,
    OUT AffectedRowNum int
)
BEGIN
	
	SELECT
		user_id, order_id, deliveryman_id, order_status, total_price
    FROM
		tbl_Order
    WHERE user_id = UserId;
    
    SELECT row_count() INTO AffectedRowNum;
END