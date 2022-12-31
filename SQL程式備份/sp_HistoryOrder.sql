CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_HistoryOrder`(
	IN InUserId int,
    out NumberOfRowsInTheResultSet int
)
BEGIN
	SET NumberOfRowsInTheResultSet = 0;

	SELECT
		user_id, order_id, deliveryman_id, order_status, total_price
    FROM
		tbl_Order
    WHERE user_id = InUserId;
    
    SELECT found_rows() into NumberOfRowsInTheResultSet;
END