USE [master]
GO
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'SWP_Project')
	DROP DATABASE SWP_Project
GO
create database SWP_Project
GO
USE SWP_Project
GO


/****** Object:  Table [dbo].[Shipper]    Script Date: 5/31/2022 5:48:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shipper]') AND type in (N'U'))
DROP TABLE [dbo].[Shipper]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 5/31/2022 5:48:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seller]') AND type in (N'U'))
DROP TABLE [dbo].[Seller]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/31/2022 5:48:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[Foods]    Script Date: 5/31/2022 5:48:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Foods]') AND type in (N'U'))
DROP TABLE [dbo].[Foods]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/31/2022 5:48:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/31/2022 5:48:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 5/31/2022 5:48:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Carts]') AND type in (N'U'))
DROP TABLE [dbo].[Carts]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/31/2022 5:48:22 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/31/2022 5:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Displayname] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[isAdmin] [bit] NULL,
	[isCustomer] [bit] NULL,
	[IsShipper] [bit] NULL,
	[IsSaller] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 5/31/2022 5:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[NameFood] [nvarchar](max) NULL,
	[ImageFood] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [float] NULL,
	[CreateDate] [date] NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/31/2022 5:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/31/2022 5:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foods]    Script Date: 5/31/2022 5:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foods](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [nvarchar](50) NULL,
	[CategoryID] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[DateCreated] [date] NULL,
 CONSTRAINT [PK_Foods] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/31/2022 5:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CartID] [int] NULL,
	[CustomerID] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [float] NULL,
	[SallerID] [int] NULL,
	[ShipperID] [int] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 5/31/2022 5:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seller](
	[SallerID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [int] NULL,
	[SallerName] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[ReceiveMoney] [float] NULL,
 CONSTRAINT [PK_Seller] PRIMARY KEY CLUSTERED 
(
	[SallerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 5/31/2022 5:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipper](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[SellerID] [int] NULL,
	[ShipperName] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[DeliveryMoney] [float] NULL,
 CONSTRAINT [PK_Shipper] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Username], [Password], [Address], [Phone], [isAdmin], [isCustomer], [IsShipper], [IsSaller]) VALUES (1, N'manhlam', N'lam123', NULL, NULL, 1, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
/****** insert category and foods ******/
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Pizza')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Chicken')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Drink')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'Pasta')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (5, N'Snacks ')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (6, N'Ice cream
')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (7, N'Hamburger ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Foods] ON 

INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (1, N'Cheese Mushroom Pizza', 1, N'https://drive.google.com/file/d/1E-07NQ_zWyVPLB-vGuDMITJGYlm1ORS6/view?usp=sharing', NULL, 15, N'The BEST pizza for all cheese and mushroom lovers! Loaded with 2 types of cheese and garlic herb sautéed mushrooms!! AMAZING.', 1, CAST(N'2021-09-02' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (2, N'Vegetarian Pizza', 1, N'https://drive.google.com/file/d/1v4Vq4Qtf8lkVw4pHOo6xOdgAJ7JAHk8e/view?usp=sharing', NULL, 12, N'This is our ultimate oven-baked veggie lover’s pizza. Olives, tomatoes, bell peppers, mushrooms, cheese. It''s all here!', 1, CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (3, N'Pizza Napolitana', 1, N'https://drive.google.com/file/d/1m3jMgvcqIauC01bwEAgJ19zg4-gaoOgl/view?usp=sharing', NULL, 10, N'This is our ultimate oven-baked veggie lover’s pizza. Consists of tomatoes, cheese.', 1, CAST(N'2021-06-15' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (4, N'Pizza Margherita', 1, N'https://drive.google.com/file/d/1dyWr6qNDO7eyo_s2FwsLwvlWrhvHlQbD/view?usp=sharing', NULL, 16, N'The Margherita is Pomodoro or San Marzano tomatoes, mozzarella di Buffala, extra virgin olive oil, and fresh basil, ingredients that don’t compete with each other. Simple ingredients in an amazing combo.', 1, CAST(N'2022-02-10' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (5, N'Pizza Sicilia', 1, N'https://drive.google.com/file/d/1015bPxCo42Bia7OCtw5o6G_BVgW-0Fke/view?usp=sharing', NULL, 13, N'This pizza is topped with a lot of tomato sauce and cheese is usually added (if it’s added) between the dough and the sauce, stopping the crust getting soggy. Another interesting piece of info about this pizza: It is square. For toppings, it usually has tomatoes, onions, anchovies, and herbs.', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (6, N'Detroit Pizza', 1, N'https://drive.google.com/file/d/1f0NubS7rOt82L6gg8umigYsNWwy-nk5j/view?usp=sharing', NULL, 12, N'The Detroit pizza speaks volumes about the area it became famous in. It was created in the forties in Detroit and was originally baked in a square automotive parts pan. Yes, it was originally baked in the spare industrial entrails of this city’s factories', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (7, N'Fried chicken thighs', 1, N'https://drive.google.com/file/d/1X7yuRRAApXyvOP-kE0mqZy4FsLWV24TZ/view?usp=sharing', NULL, 10, N'6 Pieces Spicy Crispy Chicken / 6 Pieces Traditional Chicken / 6 Pieces Non-Spicy Crispy Chicken', 1, CAST(N'0220-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (8, N'Fried chicken thighs', 1, N'https://drive.google.com/file/d/1X7yuRRAApXyvOP-kE0mqZy4FsLWV24TZ/view?usp=sharing', NULL, 5, N'3 Pieces Spicy Crispy Chicken / 3 Pieces Traditional Chicken / 3 Pieces Non-Spicy Crispy Chicken', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (9, N'Fried chicken with spicy sauce', 1, N'https://drive.google.com/file/d/1s5wGyc6bhpxjJaWARNQoAq8k1qtNir2W/view?usp=sharing', NULL, 12, N'3 Pieces Roasted Chicken Thighs with Silver Paper / 3 Pieces Roasted Chicken Thighs with Pepper', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (10, N'Roasted Chicken Fillet with Spicy Sauce', 1, N'https://drive.google.com/file/d/1m4JzUB5jiKOzJPstoZ63wuoOp-wZ6kPt/view?usp=sharing', NULL, 11, N'3 Pieces Flava Roast Chicken Fillet / 3 Pieces Roasted Pepper Chicken Fillet', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (11, N'Fried chicken thighs with cream sauce', 1, N'https://drive.google.com/file/d/1n9j8CJkO14Y9pdgSV_SYWrpGI9iQTeSa/view?usp=sharing', NULL, 16, N'3 Pieces Fried Chicken with Cream Sauce', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (12, N'Chicken Tenderods', 1, N'https://drive.google.com/file/d/1z7siKeo7HcdyJ7cOlVq-F_K-u14iN665/view?usp=sharing', NULL, 3, N'Chicken Tenderods (2 pcs)', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (13, N'Burger 2 layers of beef, cheese', 1, N'https://drive.google.com/file/d/1Gbhvh7u7aYlw5j4ZmvrNDd2XZQuf4Ajq/view?usp=sharing', NULL, 5, N'2 layers of beef and cheese.', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (14, N'Special Cheese Beef', 1, N'https://drive.google.com/file/d/1dkNbMBbfYguv2uMWd0pjcLDQxQpDkU5v/view?usp=sharing', NULL, 3, N'Special Cheese Beef', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (15, N'Burger Big Mac', 1, N'https://drive.google.com/file/d/1WItB0zxyyUtgz2P6GxmZ09-iHenQ-o7W/view?usp=sharing', NULL, 4, N'Double layer burger with beef, cheese, fresh vegetables and Big Mac sauce.', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (16, N'Classic bacon cheeseburger', 1, N'https://drive.google.com/file/d/1ub5BLZJQCObw_kQ061bQQQu6GgG64TqO/view?usp=sharing', NULL, 5, N'We have a big steak and layers of bacon', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (17, N'Cheese chicken special', 1, N'https://drive.google.com/file/d/1FRtllrYHcFybg02I7Xi9IXVH5j7tRJn6/view?usp=sharing', NULL, 3, N'Burger Special chicken and cheese.', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (18, N'Spaghetti with minced beef sauce', 1, N'https://drive.google.com/file/d/1MaaLtwIhFuQfrCV-k6fAkvc02eg17rVT/view?usp=sharing', NULL, 6, N'a plate of spaghetti mixed with minced beef sauce', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (19, N'Spaghetti with spicy cream sauce', 1, N'https://drive.google.com/file/d/1vyjg96gGRZhcKnbnrYphgKFyLeocv2LC/view?usp=sharing', NULL, 6, N'Spaghetti with spicy cream sauce with cream and a little bit of spicy makes the dish more flavorful', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (20, N'Noodles with minced beef sauce', 1, N'https://drive.google.com/file/d/16bNVqzDSHZT5jTptZUcsn_yN3TGllr_4/view?usp=sharing', NULL, 5, N'Noodles with minced beef sauce', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (21, N'Cheese Bar', 1, N'https://drive.google.com/file/d/1wQeTTZc8rS4-UMEuoTIqGp1r5BbU2M6R/view?usp=sharing', NULL, 2, N'5 Pieces Cheese Bar', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (22, N'Oreo® McFlurry®', 1, N'https://drive.google.com/file/d/14yNKmUH6PQY4_p7f3Nybx84qpHHWwz3c/view?usp=sharing', NULL, 3, N'Take two great things and put them together. Like our soft ice cream and crumbled-up Oreo cookies. Who could resist?

', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (23, N'World Famous Fries', 1, N'https://drive.google.com/file/d/1V9FXHMxcRbaDlumP-42yq1Yw31GJKodA/view?usp=sharing', NULL, 3, N'made with premium potatoes such as the Russet Burbank and the Shepody.', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (24, N'chocolate ice-cream', 1, N'https://drive.google.com/file/d/1IwJcqIQlmNpepPyTxqzj2-wdxOBcPvpD/view?usp=sharing', NULL, 2, N'chocolate ice-cream', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (25, N'Strawberry ice cream', 1, N'https://drive.google.com/file/d/1PRUmgAt48p--Na4CTHSTYz86AK3MSlj2/view?usp=sharing', NULL, 2, N'Strawberry ice-cream', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (26, N'Cream m&m', 1, N'https://drive.google.com/file/d/1vn5aDy1P2oc68TJSPA3GTmJka1kCNCIN/view?usp=sharing', NULL, 2, N'Cream m&m', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (27, N'Cream of nuts', 1, N'https://drive.google.com/file/d/1Vl6_ev-7JUnJLJ7Ysee-4P9qEwnHm9Zm/view?usp=sharing', NULL, 3, N'Cream of nuts', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (28, N'Caramel ice cream', 1, N'https://drive.google.com/file/d/1YS9MzfVn7B0cK6FZBRN1XvDtHZL0Ieod/view?usp=sharing', NULL, 3, N'Caramel ice cream', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (29, N'Cheese shake potato', 1, N'https://drive.google.com/file/d/1U_hFFoypdQrwzrju_Nha4-Th9FN8YCnA/view?usp=sharing', NULL, 5, N'Cheese shake potato', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (30, N'Orange juice', 1, N'https://drive.google.com/file/d/1OgiylRs-MAP1QZSLQwSSGxOXw9WTp5vM/view?usp=sharing', NULL, 3, N'Orange juice', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (31, N'Strawberry juice', 1, N'https://drive.google.com/file/d/1OUrQjKT6r8WF1i-j6gDFfNS3oQ4mZNwe/view?usp=sharing', NULL, 3, N'Strawberry juice', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (32, N'Coca Cola', 1, N'https://drive.google.com/file/d/1bafK0phAToqQDArUL36dtmh10hP_YwNn/view?usp=sharing', NULL, 2, N'Coca Cola', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (33, N'Fanta', 1, N'https://drive.google.com/file/d/1HVWqI8w36M8LYa9ChPGj8x-z4yEBk-jk/view?usp=sharing', NULL, 2, N'Fanta', 1, CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Foods] ([FoodID], [FoodName], [CategoryID], [Image], [Quantity], [UnitPrice], [Description], [Status], [DateCreated]) VALUES (34, N'Sprite', 1, N'https://drive.google.com/file/d/1Q_AXcklLDi1KgzN4dDJF0ux3I_VYfL8p/view?usp=sharing', NULL, 2, N'Sprite', 1, CAST(N'2022-02-11' AS Date))
SET IDENTITY_INSERT [dbo].[Foods] OFF
GO
/****** Object:  Index [IX_Orders]    Script Date: 5/31/2022 5:48:22 PM ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [IX_Orders] UNIQUE NONCLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Customer]
GO
ALTER TABLE [dbo].[Foods]  WITH CHECK ADD  CONSTRAINT [FK_Foods_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Foods] CHECK CONSTRAINT [FK_Foods_Category]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Carts] FOREIGN KEY([CartID])
REFERENCES [dbo].[Carts] ([CartID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Carts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Seller] FOREIGN KEY([SallerID])
REFERENCES [dbo].[Seller] ([SallerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Seller]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipper] FOREIGN KEY([ShipperID])
REFERENCES [dbo].[Shipper] ([ShipperID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipper]
GO
ALTER TABLE [dbo].[Shipper]  WITH CHECK ADD  CONSTRAINT [FK_Shipper_Seller] FOREIGN KEY([SellerID])
REFERENCES [dbo].[Seller] ([SallerID])
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [FK_Shipper_Seller]
GO
