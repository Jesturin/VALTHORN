USE [kal_db]
GO

/****** Object:  Table [dbo].[DailyLogins]    Script Date: 07/28/2019 12:31:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DailyLogins](
	[UID] [int] NOT NULL,
	[Day] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[IP] [varchar](50) NOT NULL,
	[HWID] [varchar](150) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


