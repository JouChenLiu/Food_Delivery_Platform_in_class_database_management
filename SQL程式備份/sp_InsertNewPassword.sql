CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_InsertNewPassword`(
	IN InUserId int,
    IN InUserSalt char(64),
    IN InHashedPwd varchar(200),
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