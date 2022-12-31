CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_GetRestaurant`(
	IN InUserId int,
    out NumberOfRowsInTheResultSet int
)
BEGIN
	SET NumberOfRowsInTheResultSet = 0;
	DROP TABLE IF EXISTS TempRestaurant;
	CREATE TEMPORARY TABLE TempRestaurant
    
    SELECT
		restaurant_id, restaurant_name, (sqrt(POW((tbl_User.user_loc_x-tbl_Restaurant.restaurant_loc_x), 2) + POW((tbl_User.user_loc_y-tbl_Restaurant.restaurant_loc_y), 2))) AS DeliverymanFee
    FROM
		tbl_User, tbl_Restaurant
    WHERE user_id = InUserId AND restaurant_business = 1;
    
    SET SQL_SAFE_UPDATES = 0;
    
    UPDATE TempRestaurant
    SET DeliverymanFee = CASE
		WHEN DeliverymanFee <= 5
			THEN 15
		WHEN DeliverymanFee > 5 AND DeliverymanFee <= 10
			THEN 20
		WHEN DeliverymanFee > 10 AND DeliverymanFee <= 20
			THEN 30
	END;
    
    SET SQL_SAFE_UPDATES = 1;
    
    SELECT * FROM TempRestaurant WHERE DeliverymanFee <= 30;
    
    SELECT found_rows() INTO NumberOfRowsInTheResultSet;
END