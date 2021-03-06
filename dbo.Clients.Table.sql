USE [BankATM]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 2022-05-05 4:53:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[client_code] [int] NOT NULL,
	[client_fullname] [nvarchar](50) NOT NULL,
	[client_phone] [nvarchar](15) NOT NULL,
	[client_email] [nvarchar](50) NOT NULL,
	[client_pin] [int] NOT NULL,
	[client_situation] [char](1) NOT NULL,
	[client_attempts] [int] NOT NULL,
 CONSTRAINT [PK_clients] PRIMARY KEY CLUSTERED 
(
	[client_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UN_clientcode] UNIQUE NONCLUSTERED 
(
	[client_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [CHK_clientsituation] CHECK  (([client_situation]='U' OR [client_situation]='B'))
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [CHK_clientsituation]
GO
