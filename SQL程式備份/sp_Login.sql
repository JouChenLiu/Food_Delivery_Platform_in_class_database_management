CREATE DEFINER=`108403501`@`192.168.56.1` PROCEDURE `sp_Login`(
	IN InUserAccount varchar(64),
    IN InHashedpwd varchar(200),
    out AffectedRowNum int
)
BEGIN
	SET AffectedRowNum = 0;

	IF EXISTS
		(SELECT
			user_account, hashedpwd
		FROM
			tbl_User
			JOIN tbl_User_Credential USING(user_id)
		WHERE user_account = InUserAccount
			AND hashedpwd = InHashedpwd)
	THEN
		set @OutputAffect = 1;
	ELSE
		set @OutputAffect = 0;
	END IF;
    
    SELECT @OutputAffect INTO AffectedRowNum;
END