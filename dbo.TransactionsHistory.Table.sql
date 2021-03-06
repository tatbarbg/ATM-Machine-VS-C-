USE [BankATM]
GO
/****** Object:  Table [dbo].[TransactionsHistory]    Script Date: 2022-05-05 4:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionsHistory](
	[clientaccount_id] [nvarchar](10) NOT NULL,
	[client_code] [int] NOT NULL,
	[accounttype_description] [char](20) NOT NULL,
	[transactiontype_description] [char](20) NOT NULL,
	[transaction_amount] [decimal](8, 2) NOT NULL,
	[transaction_date] [datetime] NOT NULL,
	[clientaccount_id_transferto] [nvarchar](10) NULL
) ON [PRIMARY]
GO
