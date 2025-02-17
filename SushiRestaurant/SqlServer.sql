USE [master]
GO
/****** Object:  Database [MySushii]    Script Date: 5/3/2020 1:12:14 AM ******/
CREATE DATABASE [MySushii]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MySushii', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MySushii.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MySushii_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MySushii_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MySushii] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MySushii].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MySushii] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MySushii] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MySushii] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MySushii] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MySushii] SET ARITHABORT OFF 
GO
ALTER DATABASE [MySushii] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MySushii] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MySushii] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MySushii] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MySushii] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MySushii] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MySushii] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MySushii] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MySushii] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MySushii] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MySushii] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MySushii] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MySushii] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MySushii] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MySushii] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MySushii] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MySushii] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MySushii] SET RECOVERY FULL 
GO
ALTER DATABASE [MySushii] SET  MULTI_USER 
GO
ALTER DATABASE [MySushii] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MySushii] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MySushii] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MySushii] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MySushii] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MySushii', N'ON'
GO
ALTER DATABASE [MySushii] SET QUERY_STORE = OFF
GO
USE [MySushii]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/3/2020 1:12:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[price] [nvarchar](max) NULL,
	[shortDes] [nvarchar](max) NULL,
	[detailDes] [nvarchar](max) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Share]    Script Date: 5/3/2020 1:12:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[Icon] [nvarchar](max) NULL,
	[SocialNetwork] [nvarchar](max) NULL,
	[URL] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sushi]    Script Date: 5/3/2020 1:12:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sushi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[shortDes] [nvarchar](max) NULL,
	[detailDes] [nvarchar](max) NULL,
	[price] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sushi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visit_count]    Script Date: 5/3/2020 1:12:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visit_count](
	[number] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (2, N'Menu 1', N'15.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (4, N'Menu 2', N'20.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (5, N'Menu 2', N'25.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (7, N'Menu 4', N'35.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (8, N'Menu 5', N'45.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (9, N'Menu 6', N'50.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (10, N'Menu 7', N'55.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (11, N'Menu 8', N'60.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (12, N'Menu 9', N'65.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (13, N'Menu 10', N'70.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [name], [price], [shortDes], [detailDes]) VALUES (14, N'Menu 11', N'75.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
SET IDENTITY_INSERT [dbo].[Menu] OFF
INSERT [dbo].[Share] ([Icon], [SocialNetwork], [URL]) VALUES (N'.\images\fb.png', N'Facebook', N'https://www.facebook.com/')
INSERT [dbo].[Share] ([Icon], [SocialNetwork], [URL]) VALUES (N'.\images\tw.png', N'Twitter', N'https://twitter.com/')
INSERT [dbo].[Share] ([Icon], [SocialNetwork], [URL]) VALUES (N'.\images\gg.png', N'Google+', N'https://www.google.com.vn/')
SET IDENTITY_INSERT [dbo].[Sushi] ON 

INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (1, N'Intro Sushi', N'.\images\sushi00.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'5000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (2, N'Sushi 1', N'.\images\sushi1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'6000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (4, N'Sushi 2', N'.\images\sushi2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'7000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (5, N'Sushi 3', N'.\images\sushi3.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'6000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (6, N'Sushi 4', N'.\images\sushi4.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'3000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (8, N'Sushi 5', N'.\images\sushi5.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'2000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (9, N'Sushi 6', N'.\images\sushi6.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'1000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (10, N'Sushi 7', N'.\images\sushi7.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'3000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (11, N'Sushi 8', N'.\images\sushi8.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'3000')
INSERT [dbo].[Sushi] ([id], [name], [image], [shortDes], [detailDes], [price]) VALUES (12, N'Sushi 9', N'.\images\sushi9.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'3000')
SET IDENTITY_INSERT [dbo].[Sushi] OFF
INSERT [dbo].[visit_count] ([number]) VALUES (50)
USE [master]
GO
ALTER DATABASE [MySushii] SET  READ_WRITE 
GO
