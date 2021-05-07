DECLARE @message varchar(200)
EXEC [pr_BTRIS_User_Admin] @Ned_id =9999999002, @Last_Name = 'BTRIS', @first_Name = 'TEST2'
, @BTRIS_RoleName = 'BTRIS Administrator'
, @IC = 'AR', @Protocol_list ='000010-AR', @operation = 1
, @UpdateReason = 'testing'
, @Data_Source ='C2176643'
, @Message = @Message
SELECT @message