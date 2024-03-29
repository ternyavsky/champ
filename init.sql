USE [champ_db]
GO
/****** Object:  Table [dbo].[order_content]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_content](
	[content_id] [bigint] NOT NULL,
	[order_id] [bigint] NOT NULL,
	[quantity] [int] NOT NULL,
	[product_vendor] [varchar](10) NOT NULL,
 CONSTRAINT [PK__order_co__655FE510EC240F13] PRIMARY KEY CLUSTERED 
(
	[content_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_status]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_status](
	[status_id] [bigint] NOT NULL,
	[status_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [bigint] NOT NULL,
	[order_date] [date] NOT NULL,
	[date_deliev] [date] NOT NULL,
	[code] [int] NOT NULL,
	[status_id] [bigint] NOT NULL,
	[point_id] [bigint] NOT NULL,
	[order_content] [varchar](50) NULL,
	[user_id] [bigint] NULL,
 CONSTRAINT [PK__orders__4659622925604A54] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pickpoints]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pickpoints](
	[id] [bigint] NOT NULL,
	[point_index] [bigint] NOT NULL,
	[city] [varchar](50) NOT NULL,
	[street] [varchar](50) NULL,
	[house_num] [int] NULL,
 CONSTRAINT [PK__pickpoin__3213E83F50C0E0BD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_category](
	[category_id] [bigint] NOT NULL,
	[category] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_class]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_class](
	[class_id] [bigint] NOT NULL,
	[class_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_manufac]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_manufac](
	[manufac_id] [bigint] NOT NULL,
	[manufac_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[manufac_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_provider]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_provider](
	[provider_id] [bigint] NOT NULL,
	[provider_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[provider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [bigint] NOT NULL,
	[product_vendor] [varchar](10) NOT NULL,
	[class_id] [bigint] NOT NULL,
	[price] [int] NOT NULL,
	[max_discount] [int] NOT NULL,
	[manufac_id] [bigint] NULL,
	[provider_id] [bigint] NOT NULL,
	[product_category] [bigint] NOT NULL,
	[discount_now] [int] NOT NULL,
	[quantity_total] [int] NOT NULL,
	[description] [varchar](220) NOT NULL,
	[img] [varchar](50) NULL,
 CONSTRAINT [PK__products__47027DF5D83D2635] PRIMARY KEY CLUSTERED 
(
	[product_vendor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[role_id] [bigint] NOT NULL,
	[role_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__roles__760965CC4D7796C5] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: Ср 31.01.24 14:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [bigint] NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[surname] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[role_id] [bigint] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (1, 1, 2, N'А112Т4')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (2, 2, 16, N'G387Y6')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (3, 3, 20, N'D735T5')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (4, 4, 2, N'H384H3')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (5, 5, 4, N'E732R7')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (6, 6, 4, N'F839R6')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (7, 7, 10, N'C430T4')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (8, 8, 5, N'V403G6')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (9, 9, 2, N'V026J4')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (10, 10, 2, N'C635Y6')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (11, 1, 3, N'T793T4')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (12, 2, 10, N'F573T5')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (13, 3, 20, N'B736H6')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (14, 4, 2, N'K437E6')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (15, 5, 3, N'R836H6')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (16, 6, 4, N'G304H6')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (17, 7, 3, N'C946Y6')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (18, 8, 5, N'B963H5')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (19, 9, 2, N'V727Y6')
INSERT [dbo].[order_content] ([content_id], [order_id], [quantity], [product_vendor]) VALUES (20, 10, 2, N'W405G6')
GO
INSERT [dbo].[order_status] ([status_id], [status_name]) VALUES (1, N'Завершен')
INSERT [dbo].[order_status] ([status_id], [status_name]) VALUES (2, N'Новый')
GO
INSERT [dbo].[orders] ([order_id], [order_date], [date_deliev], [code], [status_id], [point_id], [order_content], [user_id]) VALUES (1, CAST(N'2022-05-16' AS Date), CAST(N'2022-05-22' AS Date), 801, 1, 1, N'А112Т4, 2, T793T4, 3', 10)
INSERT [dbo].[orders] ([order_id], [order_date], [date_deliev], [code], [status_id], [point_id], [order_content], [user_id]) VALUES (2, CAST(N'2022-05-16' AS Date), CAST(N'2022-05-22' AS Date), 802, 2, 14, N'G387Y6, 16, F573T5, 10', NULL)
INSERT [dbo].[orders] ([order_id], [order_date], [date_deliev], [code], [status_id], [point_id], [order_content], [user_id]) VALUES (3, CAST(N'2022-05-17' AS Date), CAST(N'2022-05-23' AS Date), 803, 2, 2, N'D735T5, 20, B736H6, 20', 7)
INSERT [dbo].[orders] ([order_id], [order_date], [date_deliev], [code], [status_id], [point_id], [order_content], [user_id]) VALUES (4, CAST(N'2022-05-17' AS Date), CAST(N'2022-05-23' AS Date), 804, 2, 22, N'H384H3, 2, K437E6, 2', NULL)
INSERT [dbo].[orders] ([order_id], [order_date], [date_deliev], [code], [status_id], [point_id], [order_content], [user_id]) VALUES (5, CAST(N'2022-05-19' AS Date), CAST(N'2022-05-25' AS Date), 805, 2, 2, N'E732R7, 4, R836H6, 3', 9)
INSERT [dbo].[orders] ([order_id], [order_date], [date_deliev], [code], [status_id], [point_id], [order_content], [user_id]) VALUES (6, CAST(N'2022-05-20' AS Date), CAST(N'2022-05-26' AS Date), 806, 2, 28, N'F839R6, 4, G304H6, 4', NULL)
INSERT [dbo].[orders] ([order_id], [order_date], [date_deliev], [code], [status_id], [point_id], [order_content], [user_id]) VALUES (7, CAST(N'2022-05-22' AS Date), CAST(N'2022-05-28' AS Date), 807, 2, 3, N'C430T4, 10, C946Y6, 3', NULL)
INSERT [dbo].[orders] ([order_id], [order_date], [date_deliev], [code], [status_id], [point_id], [order_content], [user_id]) VALUES (8, CAST(N'2022-05-22' AS Date), CAST(N'2022-05-28' AS Date), 808, 2, 32, N'V403G6, 5, B963H5, 5', NULL)
INSERT [dbo].[orders] ([order_id], [order_date], [date_deliev], [code], [status_id], [point_id], [order_content], [user_id]) VALUES (9, CAST(N'2022-05-24' AS Date), CAST(N'2022-05-30' AS Date), 809, 2, 5, N'V026J4, 2, V727Y6, 2', NULL)
INSERT [dbo].[orders] ([order_id], [order_date], [date_deliev], [code], [status_id], [point_id], [order_content], [user_id]) VALUES (10, CAST(N'2022-05-24' AS Date), CAST(N'2022-05-30' AS Date), 810, 2, 36, N'C635Y6, 2, W405G6, 2', 8)
GO
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (1, 344288, N' г. Талнах', N' ул. Чехова', 1)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (2, 614164, N' г.Талнах', N'  ул. Степная', 30)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (3, 394242, N' г. Талнах', N' ул. Коммунистическая', 43)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (4, 660540, N' г. Талнах', N' ул. Солнечная', 25)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (5, 125837, N'', N' ул. Шоссейная', 40)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (6, 125703, N' г. Талнах', N' ул. Партизанская', 49)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (7, 625283, N' г. Талнах', N' ул. Победы', 46)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (8, 614611, N' г. Талнах', N' ул. Молодежная', 50)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (9, 454311, N' г.Талнах', N' ул. Новая', 19)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (10, 660007, N' г.Талнах', N' ул. Октябрьская', 19)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (11, 603036, N' г. Талнах', N' ул. Садовая', 4)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (12, 450983, N' г.Талнах', N' ул. Комсомольская', 26)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (13, 394782, N' г. Талнах', N' ул. Чехова', 3)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (14, 603002, N' г. Талнах', N' ул. Дзержинского', 28)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (15, 450558, N' г. Талнах', N' ул. Набережная', 30)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (16, 394060, N' г.Талнах', N' ул. Фрунзе', 43)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (17, 410661, N' г. Талнах', N' ул. Школьная', 50)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (18, 625590, N' г. Талнах', N' ул. Коммунистическая', 20)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (19, 625683, N' г. Талнах', N' ул. 8 Марта', NULL)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (20, 400562, N' г. Талнах', N' ул. Зеленая', 32)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (21, 614510, N' г. Талнах', N' ул. Маяковского', 47)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (22, 410542, N' г. Талнах', N' ул. Светлая', 46)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (23, 620839, N' г. Талнах', N' ул. Цветочная', 8)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (24, 443890, N' г. Талнах', N' ул. Коммунистическая', 1)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (25, 603379, N' г. Талнах', N' ул. Спортивная', 46)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (26, 603721, N' г. Талнах', N' ул. Гоголя', 41)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (27, 410172, N' г. Талнах', N' ул. Северная', 13)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (28, 420151, N' г. Талнах', N' ул. Вишневая', 32)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (29, 125061, N' г. Талнах', N' ул. Подгорная', 8)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (30, 630370, N' г. Талнах', N' ул. Шоссейная', 24)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (31, 614753, N' г. Талнах', N' ул. Полевая', 35)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (32, 426030, N' г. Талнах', N' ул. Маяковского', 44)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (33, 450375, N' г. Талнах', N' ул. Клубная', NULL)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (34, 625560, N' г. Талнах', N' ул. Некрасова', 12)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (35, 630201, N' г. Талнах', N' ул. Комсомольская', 17)
INSERT [dbo].[pickpoints] ([id], [point_index], [city], [street], [house_num]) VALUES (36, 190949, N' г. Талнах', N' ул. Мичурина', 26)
GO
INSERT [dbo].[product_category] ([category_id], [category]) VALUES (1, N'Вилки')
INSERT [dbo].[product_category] ([category_id], [category]) VALUES (2, N'Ложки')
INSERT [dbo].[product_category] ([category_id], [category]) VALUES (3, N'Наборы')
INSERT [dbo].[product_category] ([category_id], [category]) VALUES (4, N'Ножи')
GO
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (1, N'Набор вилок')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (2, N'Набор ложек')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (3, N'Ложка столовая')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (4, N'Вилки столовые')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (5, N'Ложка чайная')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (6, N'Вилка столовая')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (7, N'Набор столовых приборов')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (8, N'Набор столовых ножей')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (9, N' Ложка детская')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (10, N'Набор на одну персону')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (11, N'Набор чайных ложек')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (12, N'Ложка')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (13, N'Нож для стейка')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (14, N'Набор для серверовки')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (15, N'Набор десертных ложек')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (16, N'Набор стейковых ножей')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (17, N'Столовые приборы для салата')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (18, N'Детский столовый набор')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (19, N'Сервировочный набор для торта')
INSERT [dbo].[product_class] ([class_id], [class_name]) VALUES (20, N'Набор ножей')
GO
INSERT [dbo].[product_manufac] ([manufac_id], [manufac_name]) VALUES (1, N'Davinci')
INSERT [dbo].[product_manufac] ([manufac_id], [manufac_name]) VALUES (2, N'Attribute')
INSERT [dbo].[product_manufac] ([manufac_id], [manufac_name]) VALUES (3, N'Doria')
INSERT [dbo].[product_manufac] ([manufac_id], [manufac_name]) VALUES (4, N'Alaska')
INSERT [dbo].[product_manufac] ([manufac_id], [manufac_name]) VALUES (5, N'Apollo')
INSERT [dbo].[product_manufac] ([manufac_id], [manufac_name]) VALUES (6, N'Smart Home')
INSERT [dbo].[product_manufac] ([manufac_id], [manufac_name]) VALUES (7, N'Mayer & Boch')
GO
INSERT [dbo].[product_provider] ([provider_id], [provider_name]) VALUES (1, N'Максидом')
INSERT [dbo].[product_provider] ([provider_id], [provider_name]) VALUES (2, N'LeroiMerlin')
GO
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (6, N'B736H6', 6, 220, 5, 4, 2, 1, 3, 4, N'6 21,2 см «Аляска бэйсик» сталь KunstWerk', N'B736H6.jpg')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (21, N'B963H5', 12, 800, 5, 6, 2, 2, 3, 8, N'12 21 мм металлическая (медная) (Упаковка 10 шт)', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (15, N'C430T4', 10, 1600, 30, 2, 2, 3, 3, 6, N'10 (4 предмета) серия "Bistro", нерж. сталь, Was, Германия.', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (28, N'C635Y6', 18, 1000, 15, 5, 1, 3, 4, 25, N'18 Fissman «Зебра» ', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (12, N'C730R7', 9, 300, 5, 6, 2, 2, 3, 17, N'9 столовая', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (17, N'C943G5', 11, 200, 5, 2, 1, 3, 4, 12, N'2 11 Baguette 3 предмета серебристый', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (16, N'C946Y6', 6, 300, 15, 5, 2, 1, 2, 16, N'Вилка детская столовая', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (5, N'D735T5', 5, 220, 5, 4, 2, 2, 2, 13, N'5 4 Eternum', N'D735T5.jpg')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (9, N'E732R7', 7, 990, 15, 6, 1, 3, 5, 6, N'7 620 Black в подарочной коробке, 4 шт', N'E732R7.jpg')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (11, N'F392G6', 7, 490, 10, 5, 2, 3, 4, 9, N'5 7 Chicago 4 предмета серебристый', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (4, N'F573T5', 4, 650, 15, 1, 1, 1, 3, 4, N'4 на блистере / 6 шт.', N'F573T5.jpg')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (27, N'F745K4', 17, 2000, 10, 7, 2, 3, 3, 2, N'17 Orskov Lava, 2шт', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (13, N'F839R6', 5, 400, 15, 3, 1, 2, 2, 6, N'5 3 Eternum', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (14, N'G304H6', 2, 500, 5, 5, 1, 2, 4, 12, N'2 столовых 5 "Bohemica" 3 пр.', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (3, N'G387Y6', 3, 441, 5, 3, 1, 2, 4, 23, N'3 3 L=195/60 мм Eternum', N'G387Y6.jpg')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (7, N'H384H3', 7, 600, 15, 5, 1, 3, 2, 9, N'7 для торта Palette 7 предметов серебристый', N'H384H3.jpg')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (26, N'H495H6', 16, 7000, 15, 7, 2, 4, 2, 15, N'16 4 пр. в деревянной коробке', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (8, N'K437E6', 1, 530, 5, 5, 1, 3, 3, 16, N'1 столовых 5 "Aurora" 3шт.', N'K437E6.jpg')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (23, N'L593H5', 20, 1300, 25, 7, 1, 3, 5, 14, N'20 7, 4 шт', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (22, N'N493G6', 14, 2550, 15, 6, 2, 3, 4, 6, N'Набор для сервировки сыра Select', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (10, N'R836H6', 8, 250, 5, 2, 2, 4, 3, 16, N'2 8 Baguette 2 предмета серебристый', N'R836H6.jpg')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (18, N'S394J5', 11, 170, 5, 2, 2, 3, 3, 4, N'2 11 Chaplet 3 предмета серебристый', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (19, N'S395B5', 13, 600, 10, 5, 2, 4, 4, 15, N'13 11,5 см серебристый/черный', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (2, N'T793T4', 2, 250, 10, 2, 2, 2, 3, 16, N'Набор столовых ложек Baguette 3 предмета серебристый', N'T793T4.jpg')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (24, N'V026J4', 20, 700, 15, 5, 1, 3, 3, 9, N'абор ножей для стейка и пиццы Swiss classic 2 шт. желтый', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (20, N'V403G6', 5, 600, 15, 3, 1, 2, 5, 24, N'5 3 Eternum', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (25, N'V727Y6', 15, 3000, 10, 7, 2, 2, 4, 8, N'15 на подставке Размер: 7*7*15 см', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (30, N'W295Y5', 19, 1100, 15, 2, 1, 3, 2, 16, N'Набор сервировочный для торта "Розанна"', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (29, N'W405G6', 7, 1300, 25, 2, 2, 3, 3, 4, N'Набор сервировочных столовых вилок Цветы', N'')
INSERT [dbo].[products] ([product_id], [product_vendor], [class_id], [price], [max_discount], [manufac_id], [provider_id], [product_category], [discount_now], [quantity_total], [description], [img]) VALUES (1, N'А112Т4', 1, 1600, 30, 1, 1, 1, 2, 6, N'Набор столовых вилок 1, 20 см 6 шт.', N'А112Т4.jpg')
GO
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (1, N'Администратор')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (2, N'Менеджер')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (3, N'Клиент')
GO
INSERT [dbo].[users] ([user_id], [first_name], [last_name], [surname], [email], [password], [role_id]) VALUES (1, N'Арина', N'Саввична', N'Савицкая', N'1y3lj8w0viop@outlook.com', N'2L6KZG', 1)
INSERT [dbo].[users] ([user_id], [first_name], [last_name], [surname], [email], [password], [role_id]) VALUES (2, N'Максим', N'Михайлович', N'Мартынов', N'3o698uk5c0rw@tutanota.com', N'uzWC67', 1)
INSERT [dbo].[users] ([user_id], [first_name], [last_name], [surname], [email], [password], [role_id]) VALUES (3, N'Александр', N'Дамирович', N'Зубов', N'lx24fvrt1aip@yahoo.com', N'8ntwUp', 1)
INSERT [dbo].[users] ([user_id], [first_name], [last_name], [surname], [email], [password], [role_id]) VALUES (4, N'Даниил', N'Олегович', N'Попов', N's8z076vku95j@gmail.com', N'YOyhfR', 2)
INSERT [dbo].[users] ([user_id], [first_name], [last_name], [surname], [email], [password], [role_id]) VALUES (5, N'Михаил', N'Никитич', N'Семенов', N'n3bxm7f2q5i4@outlook.com', N'RSbvHv', 2)
INSERT [dbo].[users] ([user_id], [first_name], [last_name], [surname], [email], [password], [role_id]) VALUES (6, N'Надежда', N'Вячеславовна', N'Дмитриева', N'r7dztn8a5ihq@mail.com', N'rwVDh9', 2)
INSERT [dbo].[users] ([user_id], [first_name], [last_name], [surname], [email], [password], [role_id]) VALUES (7, N'Виктория', N'Саввична', N'Воронцова', N'vofgck2m39hq@gmail.com', N'LdNyos', 3)
INSERT [dbo].[users] ([user_id], [first_name], [last_name], [surname], [email], [password], [role_id]) VALUES (8, N'Ярослав', N'Игоревич', N'Софронов', N's6q9tevybado@yahoo.com', N'gynQMT', 3)
INSERT [dbo].[users] ([user_id], [first_name], [last_name], [surname], [email], [password], [role_id]) VALUES (9, N'Артём', N'Евгеньевич', N'Егоров', N'p7wuls3dtq9v@yahoo.com', N'AtnDjr', 3)
INSERT [dbo].[users] ([user_id], [first_name], [last_name], [surname], [email], [password], [role_id]) VALUES (10, N'Эмилия', N'Степановна', N'Ситникова', N'rdn04s1u2ckb@mail.com', N'JlFRCZ', 3)
GO
ALTER TABLE [dbo].[order_content]  WITH CHECK ADD  CONSTRAINT [FK__order_con__order__619B8048] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[order_content] CHECK CONSTRAINT [FK__order_con__order__619B8048]
GO
ALTER TABLE [dbo].[order_content]  WITH CHECK ADD  CONSTRAINT [FK_order_content_products] FOREIGN KEY([product_vendor])
REFERENCES [dbo].[products] ([product_vendor])
GO
ALTER TABLE [dbo].[order_content] CHECK CONSTRAINT [FK_order_content_products]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_order_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[order_status] ([status_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_order_status]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_pickpoints] FOREIGN KEY([point_id])
REFERENCES [dbo].[pickpoints] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_pickpoints]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_product_category] FOREIGN KEY([product_category])
REFERENCES [dbo].[product_category] ([category_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_product_category]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_product_class] FOREIGN KEY([class_id])
REFERENCES [dbo].[product_class] ([class_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_product_class]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_product_manufac] FOREIGN KEY([manufac_id])
REFERENCES [dbo].[product_manufac] ([manufac_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_product_manufac]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_product_provider] FOREIGN KEY([provider_id])
REFERENCES [dbo].[product_provider] ([provider_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_product_provider]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([role_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO
