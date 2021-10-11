USE [master]
GO
/****** Object:  Database [SHOPPING]    Script Date: 10/11/2021 2:14:28 PM ******/
CREATE DATABASE [SHOPPING]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SHOPPING', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SHOPPING.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SHOPPING_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SHOPPING_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SHOPPING] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SHOPPING].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SHOPPING] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SHOPPING] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SHOPPING] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SHOPPING] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SHOPPING] SET ARITHABORT OFF 
GO
ALTER DATABASE [SHOPPING] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SHOPPING] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SHOPPING] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SHOPPING] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SHOPPING] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SHOPPING] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SHOPPING] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SHOPPING] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SHOPPING] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SHOPPING] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SHOPPING] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SHOPPING] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SHOPPING] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SHOPPING] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SHOPPING] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SHOPPING] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SHOPPING] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SHOPPING] SET RECOVERY FULL 
GO
ALTER DATABASE [SHOPPING] SET  MULTI_USER 
GO
ALTER DATABASE [SHOPPING] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SHOPPING] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SHOPPING] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SHOPPING] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SHOPPING] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SHOPPING', N'ON'
GO
USE [SHOPPING]
GO
/****** Object:  Table [dbo].[Footers]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Footers](
	[ID] [varchar](250) NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Footers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[URL] [nvarchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[GroupID] [int] NULL,
	[Target] [varchar](10) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MenuGroup]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuGroup](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_MenuGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] NOT NULL,
	[CustomerName] [nvarchar](250) NOT NULL,
	[CustomerAddress] [nvarchar](250) NOT NULL,
	[CustomerEmail] [nvarchar](250) NOT NULL,
	[CustomerMobile] [varchar](50) NOT NULL,
	[CustomerMessage] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [smalldatetime] NULL,
	[PaymentMethod] [nvarchar](250) NULL,
	[PaymentStatus] [nvarchar](250) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Content] [nvarchar](max) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PostCategory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Alias] [varchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ParentID] [int] NULL,
	[DisplayOrder] [int] NULL,
	[Image] [nvarchar](500) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
	[HomeFlag] [bit] NULL,
 CONSTRAINT [PK_PostCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Posts](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Alias] [varchar](250) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Image] [nvarchar](500) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Promotion] [decimal](18, 2) NULL,
	[Warranty] [int] NULL,
	[Content] [nvarchar](max) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
	[HomeFlag] [bit] NULL,
	[HotFlag] [bit] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PostTags]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PostTags](
	[PostID] [int] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PostTags] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Alias] [varchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ParentID] [int] NULL,
	[DisplayOrder] [int] NULL,
	[Image] [nvarchar](500) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
	[HomeFlag] [bit] NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Alias] [varchar](250) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Image] [nvarchar](500) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Promotion] [decimal](18, 2) NULL,
	[Warranty] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
	[HomeFlag] [bit] NULL,
	[HotFlag] [bit] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductTags]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductTags](
	[ProductID] [int] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductTags] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Image] [nvarchar](500) NOT NULL,
	[URL] [nvarchar](500) NOT NULL,
	[DisplayOrder] [int] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupportOnline]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportOnline](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Department] [nvarchar](250) NULL,
	[Skype] [nvarchar](250) NULL,
	[Mobile] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Facebook] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SupportOnline] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SystemConfigs]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemConfigs](
	[ID] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[ValueString] [nvarchar](250) NULL,
	[ValueInt] [int] NULL,
 CONSTRAINT [PK_SystemConfigs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tags](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VisitorStatitics]    Script Date: 10/11/2021 2:14:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VisitorStatitics](
	[ID] [uniqueidentifier] NOT NULL,
	[VisitedDate] [datetime] NOT NULL,
	[IPAddress] [varchar](50) NOT NULL,
 CONSTRAINT [PK_VisitorStatitics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_MenuGroup] FOREIGN KEY([GroupID])
REFERENCES [dbo].[MenuGroup] ([ID])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_MenuGroup]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_ProductCategories] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductCategories] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_ProductCategories]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_PostCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[PostCategory] ([ID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_PostCategory]
GO
ALTER TABLE [dbo].[PostTags]  WITH CHECK ADD  CONSTRAINT [FK_PostTags_Posts] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([ID])
GO
ALTER TABLE [dbo].[PostTags] CHECK CONSTRAINT [FK_PostTags_Posts]
GO
ALTER TABLE [dbo].[PostTags]  WITH CHECK ADD  CONSTRAINT [FK_PostTags_Tags] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([ID])
GO
ALTER TABLE [dbo].[PostTags] CHECK CONSTRAINT [FK_PostTags_Tags]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductCategories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductCategories]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Products]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Tags] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([ID])
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Tags]
GO
USE [master]
GO
ALTER DATABASE [SHOPPING] SET  READ_WRITE 
GO
