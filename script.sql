USE [Wallet]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10.03.2024 17:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expenditures]    Script Date: 10.03.2024 17:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expenditures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Amount] [int] NOT NULL,
	[What] [nvarchar](max) NULL,
 CONSTRAINT [PK_Expenditures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240310112810_Initial', N'8.0.2')
GO
SET IDENTITY_INSERT [dbo].[Expenditures] ON 
GO
INSERT [dbo].[Expenditures] ([Id], [Date], [Amount], [What]) VALUES (1, CAST(N'2024-01-01T00:00:00.0000000' AS DateTime2), 33, N'электричка')
GO
INSERT [dbo].[Expenditures] ([Id], [Date], [Amount], [What]) VALUES (2, CAST(N'2024-01-01T00:30:00.0000000' AS DateTime2), 54, N'метро')
GO
INSERT [dbo].[Expenditures] ([Id], [Date], [Amount], [What]) VALUES (3, CAST(N'2024-03-01T01:00:00.0000000' AS DateTime2), 1000, N'магазин')
GO
INSERT [dbo].[Expenditures] ([Id], [Date], [Amount], [What]) VALUES (4, CAST(N'2024-03-01T01:30:00.0000000' AS DateTime2), 3000, N'ресторан')
GO
INSERT [dbo].[Expenditures] ([Id], [Date], [Amount], [What]) VALUES (5, CAST(N'2024-03-01T02:00:00.0000000' AS DateTime2), 100, N'подписка на игрока в twitch')
GO
INSERT [dbo].[Expenditures] ([Id], [Date], [Amount], [What]) VALUES (6, CAST(N'2024-03-01T02:30:00.0000000' AS DateTime2), 200, N'подписка на youtube')
GO
SET IDENTITY_INSERT [dbo].[Expenditures] OFF
GO
