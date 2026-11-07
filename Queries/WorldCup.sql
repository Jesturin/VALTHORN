USE [kal_db]
GO

/****** Object:  Table [dbo].[WorldCup]    Script Date: 02/16/2019 20:21:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WorldCup](
	[PID] [int] NOT NULL,
	[Wins] [int] NULL,
	[Finals] [int] NULL,
	[CurrentWinner] [int] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[WorldCup] ADD  CONSTRAINT [DF_WorldCup_CurrentWinner]  DEFAULT ((0)) FOR [CurrentWinner]
GO


