CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_SearchStarRestaurant`(
	IN InX int,
    out NumberOfRowsInTheResultSet int
)
BEGIN
	SET NumberOfRowsInTheResultSet = 0;

	SELECT DISTINCT
		restaurant_id, restaurant_name, ROUND(AVG(restaurant_rating), 0) AS RestaurantRating
    FROM
		tbl_Order
		JOIN tbl_Ordered_Details USING(order_id)
		JOIN tbl_Meals USING(meals_id)
		JOIN tbl_Restaurant USING(restaurant_id)
    WHERE RestaurantRating >= InX
    GROUP BY restaurant_id;
    
    SELECT found_rows() into NumberOfRowsInTheResultSet;
END