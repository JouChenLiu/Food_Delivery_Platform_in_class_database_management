CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_SearchMealsOfRestaurant`(
	IN InMealsName varchar(64),
    out NumberOfRowsInTheResultSet int
)
BEGIN
	SET NumberOfRowsInTheResultSet = 0;

	SELECT
		restaurant_name, meals_name, meals_price
    FROM
		tbl_Restaurant
        JOIN tbl_Meals USING(restaurant_id)
    WHERE meals_name LIKE CONCAT('%',InMealsName,'%');
    
    SELECT found_rows() into NumberOfRowsInTheResultSet;
END