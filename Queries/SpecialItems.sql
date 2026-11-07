USE [kal_db]
GO

/****** Object:  Table [dbo].[SpecialItems]    Script Date: 02/16/2019 20:20:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SpecialItems](
	[PID] [int] NOT NULL,
	[Index] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Prefix] [int] NULL,
	[Storage] [int] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[SpecialItems] ADD  CONSTRAINT [DF_SpecialItems_Prefix]  DEFAULT ((0)) FOR [Prefix]
GO

ALTER TABLE [dbo].[SpecialItems] ADD  CONSTRAINT [DF_SpecialItems_Storage]  DEFAULT ((0)) FOR [Storage]
GO


