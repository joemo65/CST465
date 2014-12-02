IF OBJECT_ID('dbo.UserProfile', 'U') IS NOT NULL
BEGIN
	DROP TABLE dbo.UserProfile
END
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[UserType] [varchar](25) NOT NULL,
	[Hobbies] [varchar](500) NULL,
	[FavoriteBands] [varchar](500) NULL,
	[Biography] [varchar](max) NULL
)
GO 
IF OBJECT_ID('dbo.Courses', 'U') IS NOT NULL
BEGIN
	DROP TABLE dbo.Courses
END
GO
CREATE TABLE [dbo].[Courses](
	[UserId] [uniqueidentifier] NOT NULL,
	[Prefix] [char](5) NOT NULL,
	[Number] [char](5) NOT NULL,
	[Description] [varchar](100) NOT NULL
)
GO
IF OBJECT_ID('dbo.UserProfile_InsertUpdate') IS NOT NULL
BEGIN
	DROP PROCEDURE dbo.UserProfile_InsertUpdate
END
GO
CREATE PROCEDURE UserProfile_InsertUpdate
(
	@UserId uniqueidentifier,
	@Name varchar(50),
	@Email varchar(100),
	@UserType varchar(25),
	@Hobbies varchar(500),
	@FavoriteBands varchar(500),
	@Biography varchar(MAX)
)
AS
DECLARE @RecordExists int;
SELECT @RecordExists = COUNT(UserId) 
FROM UserProfile
WHERE UserId=@UserId;

IF @RecordExists = 0
BEGIN
INSERT INTO UserProfile(UserId, Name, Email, UserType, Hobbies, FavoriteBands, Biography)
VALUES (@UserId, @Name, @Email, @UserType, @Hobbies, @FavoriteBands, @Biography);
END
ELSE
BEGIN
UPDATE UserProfile
SET Name=@Name,
Email=@Email,
UserType=@UserType,
Hobbies=@Hobbies,
FavoriteBands=@FavoriteBands,
Biography=@Biography
WHERE UserId=@UserId;
END
GO