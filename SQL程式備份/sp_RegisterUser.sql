CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_RegisterUser`(
	IN InUserAccount varchar(64),
    IN InUserSalt char(64),
    IN InUserName varchar(64),
    IN InUserPhone varchar(64),
    IN InUserAddress varchar(64),
    IN InUserLocX int,
    IN InUserLocY int,
    IN InHashedPwd varchar(200),
    out NumberOfRowsInTheResultSet int
)
BEGIN
	SET NumberOfRowsInTheResultSet = 0;
	SET @Out1 = 0;
    SET @Out2 = 0;
    
	INSERT INTO tbl_User(user_account, user_salt, user_name, user_address, user_phone, user_loc_x, user_loc_y, createdatetime)
	VALUES(InUserAccount, InUserSalt, InUserName, InUserAddress, InUserPhone, InUserLocX, InUserLocY, NOW());
    SELECT row_count() INTO @Out1;
    
	INSERT INTO tbl_User_Credential(user_id, hashedPwd, createdatetime)
	VALUES(
		(SELECT user_id FROM tbl_User WHERE user_salt = InUserSalt),
	InHashedPwd, NOW());
    SELECT row_count() INTO @Out2;
    
    SELECT @Out1 + @Out2 INTO NumberOfRowsInTheResultSet;
END