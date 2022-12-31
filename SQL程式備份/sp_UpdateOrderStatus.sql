CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_UpdateOrderStatus`(
	IN InOrderId int,
    IN InOrderStatus int,
    out AffectedRowNum int
)
BEGIN
	SET AffectedRowNum = 0;

	IF EXISTS
		(SELECT
			order_status
		FROM
			tbl_Order
        WHERE InOrderStatus > order_status AND order_id = InOrderId)
	THEN
		UPDATE tbl_Order
		SET order_status = InOrderStatus
		WHERE order_id = InOrderId;
	END IF;
    
    SELECT row_count() INTO AffectedRowNum;
    
    SELECT order_id, order_status
    FROM tbl_Order
    WHERE order_id = InOrderId;
END