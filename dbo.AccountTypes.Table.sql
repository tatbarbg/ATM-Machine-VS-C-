USE [BankATM]
GO
/****** Object:  Table [dbo].[AccountTypes]    Script Date: 2022-05-05 4:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountTypes](
	[accounttype_code] [char](2) NOT NULL,
	[accounttype_description] [char](20) NOT NULL,
 CONSTRAINT [PK_accounttypes] PRIMARY KEY CLUSTERED 
(
	[accounttype_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountTypes]  WITH CHECK ADD  CONSTRAINT [CHK_accountcode] CHECK  (([accounttype_code]='AL' OR [accounttype_code]='AM' OR [accounttype_code]='AS' OR [accounttype_code]='AC'))
GO
ALTER TABLE [dbo].[AccountTypes] CHECK CONSTRAINT [CHK_accountcode]
GO
