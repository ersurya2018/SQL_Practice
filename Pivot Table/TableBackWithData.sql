USE [AngularAPI]
GO
/****** Object:  Table [dbo].[TblProduct]    Script Date: 22-07-2024 17:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[year] [int] NULL,
	[Product] [nvarchar](100) NULL,
	[Sales] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProduct2]    Script Date: 22-07-2024 17:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProduct2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Company_Name] [nvarchar](100) NULL,
	[Product_Name] [nvarchar](100) NULL,
	[Price] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblProduct] ON 

INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (1, 2020, N'CPU', 65)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (2, 2021, N'Pen', 20)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (3, 2022, N'Pencile', 22)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (4, 2023, N'CPU', 60)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (5, 2020, N'Pen', 65)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (6, 2021, N'CPU', 20)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (7, 2022, N'Pen', 22)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (8, 2023, N'Pencile', 60)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (9, 2020, N'CPU', 65)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (10, 2021, N'CPU', 20)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (11, 2022, N'Pen', 22)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (12, 2023, N'Mouse', 60)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (13, 2020, N'CPU', 65)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (14, 2021, N'CPU', 20)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (15, 2022, N'Pen', 22)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (16, 2023, N'Mouse', 60)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (17, 2020, N'Pencile', 65)
INSERT [dbo].[TblProduct] ([Id], [year], [Product], [Sales]) VALUES (18, 2020, N'Mouse', 65)
SET IDENTITY_INSERT [dbo].[TblProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[TblProduct2] ON 

INSERT [dbo].[TblProduct2] ([Id], [Company_Name], [Product_Name], [Price]) VALUES (1, N'James', N'Fridge', 897)
INSERT [dbo].[TblProduct2] ([Id], [Company_Name], [Product_Name], [Price]) VALUES (2, N'Cosmos', N'Cable', 200)
INSERT [dbo].[TblProduct2] ([Id], [Company_Name], [Product_Name], [Price]) VALUES (3, N'York', N'CPU', 8000)
INSERT [dbo].[TblProduct2] ([Id], [Company_Name], [Product_Name], [Price]) VALUES (4, N'Vita', N'Car', 2000)
INSERT [dbo].[TblProduct2] ([Id], [Company_Name], [Product_Name], [Price]) VALUES (5, N'Set', N'VDC', 10000)
SET IDENTITY_INSERT [dbo].[TblProduct2] OFF
GO
