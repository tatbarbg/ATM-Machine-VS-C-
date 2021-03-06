USE [BankATM]
GO
/****** Object:  Table [dbo].[ClientsAccounts]    Script Date: 2022-05-05 4:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientsAccounts](
	[clientaccount_id] [nvarchar](10) NOT NULL,
	[client_code] [int] NOT NULL,
	[accounttype_code] [char](2) NOT NULL,
	[account_balance] [decimal](8, 2) NOT NULL,
	[accounttype_description] [char](20) NOT NULL,
	[clientaccount_id_transferto] [nvarchar](10) NULL,
 CONSTRAINT [PK_clientsaccounts] PRIMARY KEY CLUSTERED 
(
	[clientaccount_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
