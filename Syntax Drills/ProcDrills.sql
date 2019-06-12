/* ====== THIS IS HOW WE CREATE A PROC WITH TWO PARAMETERS ====== */

USE AdventureWorks2014
GO
CREATE PROC dbo.uspGetAddress @City NVARCHAR(30) = NULL, @AddressLine1 NVARCHAR(60) = NULL
AS
SELECT *
FROM Person.Address
WHERE City = @City
AND AddressLine1 = @AddressLine1
GO

/* This line creates the procedure and assigns it two parameters(aka variables)
with unicode var characters up to 30*/
CREATE PROC dbo.getFavorite @GameTitle NVARCHAR(30), @GameScore INT OUTPUT

/* This says the following code after as is what the procedure/function will do*/
AS

/* This line grabs the parameter established above and and makes its */
SELECT @GameTitle = COUNT(*)
FROM AdventureWorks2014.Person.Address
WHERE GameTitle = @GameTitle

USE AdventureWorks2014
GO
CREATE PROCEDURE GetAddressCount @City NVARCHAR(30), @AddressCount INT OUT
AS
SELECT @AddressCount = COUNT(*)--tells you the row you can find this data
FROM AdventureWorks2014.Person.Address
WHERE City = @City

DECLARE @AddressCount INT
EXEC GetAddressCount @City = 'Calgary', @AddressCount = @AddressCount OUT
SELECT @AddressCount

OR

DECLARE @AddressCount int
EXEC dbo.uspGetAddressCount 'Calgary', @AddressCount OUTPUT
SELECT @AddressCount

USE AdventureWorks2014 --this invokes the database
GO --like Teen Titans gotta' make it go
CREATE PROC dbo.uspTryCatchTest --we create procedure and name it
AS --what follows 'as' is what is gonna' be executed
BEGIN TRY --begin starts the code to running and try is a built-in method
	SELECT 1/0 --???
END TRY
BEGIN CATCH
	SELECT ERROR_NUMBER() AS ErrorNumber --this changes the output of error number, 'as' in this instance is like a mini-variable declaration
		,ERROR_SEVERITY() AS ErrorSeverity
		,ERROR_STATE() AS ErrorState
		,ERROR_PROCEDURE() AS ErrorProcedure
		,ERROR_LINE()AS ErrorLine
		,ERROR_MESSAGE()AS ErrorMessage;
END CATCH

CREATE SCHEMA [HumanResources] AUTHORIZATION [dbo]

--Standardization of naming procedures could be as follows
/*
1. SCHEMA
2. PREFIX
3. OBJECT
4. ACTION

example: 

HR.uspGameRatingRetrieve

I like putting the Object first b/c it keeps procedures together with like objects and should make it 
easier to find.
*/

SET NOCOUNT ON --reduce traffic within your procedures by not counting all the changes

--how to make procedures vanish

DROP PROC HR.uspGameRetrieve, GetAddressCount
GO

--to drop

--THIS IS HOW YOU ALTER A PROC

ALTER PROC
AS
SELECT --what you want to see
FROM --choose the table here
WHERE --whereas the following stipulations
GO

--this is an approximate statement
USE AdventureWorks2014
GO
CREATE PROC EntityFind @PersonName NVARCHAR(30), @BusinessEntity NVARCHAR(50)
AS
SELECT *
FROM
