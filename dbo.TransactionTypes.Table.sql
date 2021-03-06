USE [BankATM]
GO
/****** Object:  Table [dbo].[TransactionTypes]    Script Date: 2022-05-05 4:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionTypes](
	[transactiontype_code] [char](2) NOT NULL,
	[transactiontype_description] [char](20) NOT NULL,
 CONSTRAINT [PK_transactiontypes] PRIMARY KEY CLUSTERED 
(
	[transactiontype_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TransactionTypes]  WITH CHECK ADD  CONSTRAINT [CHK_transactionscode] CHECK  (([transactiontype_code]='TB' OR [transactiontype_code]='TT' OR [transactiontype_code]='TW' OR [transactiontype_code]='TD'))
GO
ALTER TABLE [dbo].[TransactionTypes] CHECK CONSTRAINT [CHK_transactionscode]
GO
