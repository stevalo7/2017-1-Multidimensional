USE [MyDb]
GO

IF OBJECT_ID ('Facts.FactSalesOrderHeader', 'U') IS NOT NULL
	/****** Object:  Table [Facts].[FactSalesOrderHeader]    Script Date: 2/10/2017 8:01:34 PM ******/
	DROP TABLE [Facts].[FactSalesOrderHeader]
GO

/****** Object:  Table [Facts].[FactSalesOrderHeader]    Script Date: 2/10/2017 8:01:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Facts].[FactSalesOrderHeader](
	[SalesOrderID] [int] ,
	[OrderDate] [datetime] ,
	[DueDate] [datetime] ,
	[ShipDate] [datetime] ,
	[Status] [tinyint] ,
	[OnlineOrderFlag] [bit] ,
	[CustomerID] [int] ,
	[SalesPersonID] [int] ,
	[TerritoryID] [int] ,
	[ShipToAddressID] [int] ,
	[ShipMethodID] [int] ,
	[SubTotal] [money],
	[TaxAmt] [money] ,
	[Freight] [money] ,
	[TotalDue] [money] 
) ON [PRIMARY]

GO


