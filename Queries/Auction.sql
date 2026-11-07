USE [kal_db]
GO

/****** Object:  Table [dbo].[Auction]    Script Date: 07/28/2019 12:31:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Auction](
	[IID] [int] NOT NULL,
	[Type] [int] NULL,
	[Seller] [varchar](20) NOT NULL,
	[Bidder] [varchar](20) NULL,
	[BidRemain] [int] NULL,
	[CurrentBid] [int] NULL,
	[Price] [int] NOT NULL,
	[Index] [smallint] NOT NULL,
	[Prefix] [tinyint] NULL,
	[Info] [int] NULL,
	[Num] [int] NOT NULL,
	[MaxEnd] [tinyint] NULL,
	[CurEnd] [tinyint] NULL,
	[SetGem] [tinyint] NULL,
	[XAttack] [int] NULL,
	[XMagic] [int] NULL,
	[XDefense] [int] NULL,
	[XHit] [int] NULL,
	[XDodge] [int] NULL,
	[Protect] [int] NULL,
	[UpgrLevel] [int] NULL,
	[UpgrRate] [int] NULL,
	[x] [int] NULL,
	[y] [int] NULL,
	[z] [int] NULL,
	[remaintime] [int] NOT NULL,
	[dsstype] [int] NULL,
	[phyatk] [int] NULL,
	[magatk] [int] NULL,
	[def] [int] NULL,
	[absorb] [int] NULL,
	[eva] [int] NULL,
	[otp] [int] NULL,
	[hpinc] [int] NULL,
	[mpinc] [int] NULL,
	[str] [int] NULL,
	[hp] [int] NULL,
	[intel] [int] NULL,
	[wis] [int] NULL,
	[agi] [int] NULL,
	[PerfShotCheck] [int] NULL,
	[QIgongGrade] [int] NULL,
	[dg1stat] [int] NULL,
	[dg1type] [int] NULL,
	[a] [int] NULL,
	[dg2stat] [int] NULL,
	[dg2type] [int] NULL,
	[refill] [int] NULL,
	[PID] [int] NULL,
	[RPID] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_MaxEnd]  DEFAULT ((0)) FOR [MaxEnd]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_CurEnd]  DEFAULT ((0)) FOR [CurEnd]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_SetGem]  DEFAULT ((0)) FOR [SetGem]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_XAttack]  DEFAULT ((0)) FOR [XAttack]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_XMagic]  DEFAULT ((0)) FOR [XMagic]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_XDefense]  DEFAULT ((0)) FOR [XDefense]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_XHit]  DEFAULT ((0)) FOR [XHit]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_XDodge]  DEFAULT ((0)) FOR [XDodge]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_Protect]  DEFAULT ((0)) FOR [Protect]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_UpgrLevel]  DEFAULT ((0)) FOR [UpgrLevel]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_UpgrRate]  DEFAULT ((0)) FOR [UpgrRate]
GO

ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Table_1_PetTime]  DEFAULT ((0)) FOR [remaintime]
GO


