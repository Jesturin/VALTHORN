USE [kal_db]
GO

/****** Object:  Table [dbo].[Reward]    Script Date: 03/22/2020 17:26:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Reward](
	[PID] [int] NOT NULL,
	[Index] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Class] [int] NULL,
	[Prefix] [int] NULL,
	[Info] [int] NULL,
	[Attack] [int] NULL,
	[Magic] [int] NULL,
	[TOA] [int] NULL,
	[Upgrade] [int] NULL,
	[Defense] [int] NULL,
	[Evasion] [int] NULL,
	[Endurance] [int] NULL,
	[ItemStat] [int] NULL,
	[Message] [varchar](500) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


