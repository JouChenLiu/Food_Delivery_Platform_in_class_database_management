CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_CreateNewOrder`(
	IN InUserId int,
    IN InDeliverymanId int,
    IN InRestaurantId int,
    IN InMeals_1_Id int,
    IN InMeals_1_Count int,
    IN InMeals_2_Id int,
    IN InMeals_2_Count int,
    out AffectedRowNum int
)
BEGIN
	SET AffectedRowNum = 0;
	SET @Out1 = 0;
    SET @Out2 = 0;
    SET @Out3 = 0;
    SET @RestaurantX = (SELECT restaurant_loc_x FROM tbl_Restaurant WHERE restaurant_id = InRestaurantId);
    SET @RestaurantY = (SELECT restaurant_loc_y FROM tbl_Restaurant WHERE restaurant_id = InRestaurantId);
	SET @UserX = (SELECT user_loc_x FROM tbl_User WHERE user_id = InUserId);
    SET @UserY = (SELECT user_loc_y FROM tbl_User WHERE user_id = InUserId);
    
	IF(
		(SELECT restaurant_business FROM tbl_Restaurant WHERE restaurant_id = InRestaurantId) = 1
		AND (SELECT restaurant_id FROM tbl_Meals WHERE meals_id = InMeals_1_Id) = (SELECT restaurant_id FROM tbl_Meals WHERE meals_id = InMeals_2_Id)
		AND (SELECT restaurant_id FROM tbl_Meals WHERE meals_id = InMeals_2_Id) = InRestaurantId
        AND sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) ) <= 20
	)THEN
		IF( sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) )<=5)
			THEN SET @DeliverymanFee=15;
		ELSEIF( sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) )>5 AND sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) )<=10)
			THEN SET @DeliverymanFee = 20;
		ELSEIF( sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) )>10 AND sqrt( POW( (@UserX-@RestaurantX),2 ) + POW( (@UserY-@RestaurantY),2 ) )<=20)
			THEN SET @DeliverymanFee = 30;
		END IF;
    
		INSERT INTO tbl_Order(user_id, deliveryman_id, order_status, deliveryman_fee, total_price)
		VALUES(	InUserId, InDeliverymanId, 1, @DeliverymanFee,
				(InMeals_1_Count * (SELECT meals_price FROM tbl_Meals WHERE meals_id = InMeals_1_Id)
				+ InMeals_2_Count * (SELECT meals_price FROM tbl_Meals WHERE meals_id = InMeals_2_Id)) );
		SELECT row_count() INTO @Out1;

		INSERT INTO tbl_Ordered_Details(order_id, meals_id, ordered_details_unit_price, ordered_details_count)
		VALUES(	(SELECT order_id FROM tbl_Order ORDER BY order_id DESC LIMIT 1),
				InMeals_1_Id,
				(SELECT meals_price FROM tbl_Meals WHERE meals_id = InMeals_1_Id),
				InMeals_1_Count	);
		SELECT row_count() INTO @Out2;
    
		INSERT INTO tbl_Ordered_Details(order_id, meals_id, ordered_details_unit_price, ordered_details_count)
		VALUES(	(SELECT order_id FROM tbl_Order ORDER BY order_id DESC LIMIT 1),
				InMeals_2_Id,
				(SELECT meals_price FROM tbl_Meals WHERE meals_id = InMeals_2_Id),
				InMeals_2_Count	);
		SELECT row_count() INTO @Out3;
    
		SELECT
			user_id, order_id, restaurant_id, meals_id, ordered_details_unit_price, ordered_details_count
		FROM
			tbl_Ordered_Details
			LEFT JOIN tbl_Order USING(order_id)
			JOIN tbl_Meals USING(meals_id)
		ORDER BY order_id DESC LIMIT 2;
	END IF;
    
    SELECT @Out1 + @Out2 + @Out3 INTO AffectedRowNum;
END