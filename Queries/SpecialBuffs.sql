USE [kal_db]
GO

/****** Object:  Table [dbo].[SpecialBuffs]    Script Date: 02/16/2019 20:19:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SpecialBuffs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[BuffID] [int] NOT NULL,
	[Time] [int] NOT NULL,
	[Value] [int] NOT NULL,
	[SBName] [int] NULL,
	[SBKey] [int] NULL
) ON [PRIMARY]

GO


