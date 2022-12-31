CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_ResetNewPassword`(
	IN InUserId int,
    IN InResetUserSalt char(64),
    IN InResetHashedPwd varchar(200),
    out AffectedRowNum int
)
BEGIN
	SET AffectedRowNum = 0;
	SET @Out1 = 0;
    SET @Out2 = 0;

	UPDATE tbl_User
		SET user_salt = InResetUserSalt
        WHERE user_id = InUserId;
	SELECT row_count() INTO @Out1;
    
    UPDATE tbl_User_Credential
		SET hashedpwd = InResetHashedPwd
        WHERE user_id = InUserId;
	SELECT row_count() INTO @Out2;
    
    SELECT @Out1 + @Out2 INTO AffectedRowNum;
END