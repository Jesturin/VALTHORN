USE [kal_db]
GO

/****** Object:  Table [dbo].[GuildBuff]    Script Date: 01/25/2020 12:09:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GuildBuff](
	[PID] [int] NOT NULL,
	[GID] [int] NOT NULL,
	[Amount] [int] NOT NULL
) ON [PRIMARY]

GO


