
ALTER PROC SP_LOGIN

@USERNAME VARCHAR(25),@PASSWORD VARCHAR(25)

AS

SELECT * FROM Users
WHERE USERNAME=@USERNAME
AND 
PASSWORD=@PASSWORD