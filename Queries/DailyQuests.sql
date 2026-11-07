USE [kal_db]
GO

/****** Object:  Table [dbo].[DailyQuests]    Script Date: 07/28/2019 12:31:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DailyQuests](
	[PID] [int] NOT NULL,
	[Quest] [int] NOT NULL,
	[Monster] [int] NOT NULL,
	[Amount] [int] NOT NULL
) ON [PRIMARY]

GO


