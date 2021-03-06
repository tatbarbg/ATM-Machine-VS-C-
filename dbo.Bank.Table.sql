USE [BankATM]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 2022-05-05 4:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[bank_code] [int] NOT NULL,
	[bank_balance] [decimal](8, 2) NOT NULL,
	[bank_status] [char](1) NOT NULL,
 CONSTRAINT [PK_bank_code] PRIMARY KEY CLUSTERED 
(
	[bank_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bank]  WITH CHECK ADD  CONSTRAINT [CHK_bankstatus] CHECK  (([bank_status]='O' OR [bank_status]='C'))
GO
ALTER TABLE [dbo].[Bank] CHECK CONSTRAINT [CHK_bankstatus]
GO
