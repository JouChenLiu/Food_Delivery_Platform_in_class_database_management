CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_CancelOrder`(
	IN InOrderId int,
    out AffectedRowNum int
)
BEGIN
	SET AffectedRowNum = 0;
	SET @Out1 = 0;

	IF EXISTS
		(SELECT
			order_id
		FROM
			tbl_Order
		WHERE order_id = InOrderId)
    THEN
		SET @Out1 = (SELECT COUNT(order_id) FROM tbl_Ordered_Details WHERE order_id = InOrderId);
		DELETE FROM tbl_Order WHERE order_id = InOrderId;
    END IF;
    
    SELECT @Out1+row_count() INTO AffectedRowNum;
END