USE AdventureWorks2014
GO
CREATE PROC FindCurrencyWithRate  @CurrencyName NVARCHAR(30), @FromCurrencyCode VARCHAR(3)
AS
SELECT Sales.Currency.Name, Sales.CurrencyRate.EndOfDayRate, Sales.CurrencyRate.FromCurrencyCode
FROM Sales.Currency
JOIN Sales.CurrencyRate ON Sales.Currency.CurrencyCode = Sales.CurrencyRate.ToCurrencyCode
JOIN Sales.CountryRegionCurrency ON Sales.CountryRegionCurrency.CurrencyCode = Sales.CurrencyRate.ToCurrencyCode
WHERE Name = @CurrencyName  AND FromCurrencyCode = @FromCurrencyCode
GO

EXEC FindCurrencyWithRate @CurrencyName = EURO, @FromCurrencyCode = USD;