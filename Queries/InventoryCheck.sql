USE [kal_db]
GO

/****** Object:  Table [dbo].[InventoryCheck]    Script Date: 07/28/2019 12:32:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InventoryCheck](
	[Index] [int] NOT NULL,
	[Type] [int] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[InventoryCheck] ADD  CONSTRAINT [DF_InventoryCheck_Type]  DEFAULT ((0)) FOR [Type]
GO


