USE [BookingTicket]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Roles_RoleId]
GO
ALTER TABLE [dbo].[Tickets] DROP CONSTRAINT [FK_Tickets_Bookings_BookingId]
GO
ALTER TABLE [dbo].[Cinemas] DROP CONSTRAINT [FK_Cinemas_CinemaSeats_CinemaSeatId]
GO
ALTER TABLE [dbo].[Cinemas] DROP CONSTRAINT [FK_Cinemas_CinemaComplices_CinemaComplexId]
GO
ALTER TABLE [dbo].[CinemaInterests] DROP CONSTRAINT [FK_CinemaInterests_Movies_MovieId]
GO
ALTER TABLE [dbo].[CinemaInterests] DROP CONSTRAINT [FK_CinemaInterests_Cinemas_CinemaId]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_Bookings_Users_UserId]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_Bookings_CinemaInterests_CinemaInterestId]
GO
/****** Object:  Index [IX_Users_RoleId]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP INDEX [IX_Users_RoleId] ON [dbo].[Users]
GO
/****** Object:  Index [IX_Tickets_BookingId]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP INDEX [IX_Tickets_BookingId] ON [dbo].[Tickets]
GO
/****** Object:  Index [IX_Cinemas_CinemaSeatId]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP INDEX [IX_Cinemas_CinemaSeatId] ON [dbo].[Cinemas]
GO
/****** Object:  Index [IX_Cinemas_CinemaComplexId]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP INDEX [IX_Cinemas_CinemaComplexId] ON [dbo].[Cinemas]
GO
/****** Object:  Index [IX_CinemaInterests_MovieId]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP INDEX [IX_CinemaInterests_MovieId] ON [dbo].[CinemaInterests]
GO
/****** Object:  Index [IX_CinemaInterests_CinemaId]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP INDEX [IX_CinemaInterests_CinemaId] ON [dbo].[CinemaInterests]
GO
/****** Object:  Index [IX_Bookings_UserId]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP INDEX [IX_Bookings_UserId] ON [dbo].[Bookings]
GO
/****** Object:  Index [IX_Bookings_CinemaInterestId]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP INDEX [IX_Bookings_CinemaInterestId] ON [dbo].[Bookings]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP TABLE [dbo].[Tickets]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP TABLE [dbo].[Movies]
GO
/****** Object:  Table [dbo].[CinemaSeats]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP TABLE [dbo].[CinemaSeats]
GO
/****** Object:  Table [dbo].[Cinemas]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP TABLE [dbo].[Cinemas]
GO
/****** Object:  Table [dbo].[CinemaInterests]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP TABLE [dbo].[CinemaInterests]
GO
/****** Object:  Table [dbo].[CinemaComplices]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP TABLE [dbo].[CinemaComplices]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP TABLE [dbo].[Bookings]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [BookingTicket]    Script Date: 20/10/2021 6:36:23 PM ******/
DROP DATABASE [BookingTicket]
GO
/****** Object:  Database [BookingTicket]    Script Date: 20/10/2021 6:36:23 PM ******/
CREATE DATABASE [BookingTicket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookingTicket', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BookingTicket.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BookingTicket_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BookingTicket_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BookingTicket] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookingTicket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookingTicket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookingTicket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookingTicket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookingTicket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookingTicket] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookingTicket] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BookingTicket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookingTicket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookingTicket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookingTicket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookingTicket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookingTicket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookingTicket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookingTicket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookingTicket] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookingTicket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookingTicket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookingTicket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookingTicket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookingTicket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookingTicket] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BookingTicket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookingTicket] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookingTicket] SET  MULTI_USER 
GO
ALTER DATABASE [BookingTicket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookingTicket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookingTicket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookingTicket] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BookingTicket] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BookingTicket]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/10/2021 6:36:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 20/10/2021 6:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[BookingTime] [datetime2](7) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[UserId] [int] NOT NULL,
	[CinemaInterestId] [int] NOT NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CinemaComplices]    Script Date: 20/10/2021 6:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CinemaComplices](
	[CinemaComplexId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_CinemaComplices] PRIMARY KEY CLUSTERED 
(
	[CinemaComplexId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CinemaInterests]    Script Date: 20/10/2021 6:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CinemaInterests](
	[CinemaInterestId] [int] IDENTITY(1,1) NOT NULL,
	[StartTime] [datetime2](7) NOT NULL,
	[EndTime] [datetime2](7) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[MovieId] [int] NOT NULL,
	[CinemaId] [int] NOT NULL,
 CONSTRAINT [PK_CinemaInterests] PRIMARY KEY CLUSTERED 
(
	[CinemaInterestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cinemas]    Script Date: 20/10/2021 6:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cinemas](
	[CinemaId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[TotalSeats] [int] NOT NULL,
	[CinemaComplexId] [int] NOT NULL,
	[CinemaSeatId] [int] NOT NULL,
 CONSTRAINT [PK_Cinemas] PRIMARY KEY CLUSTERED 
(
	[CinemaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CinemaSeats]    Script Date: 20/10/2021 6:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CinemaSeats](
	[CinemaSeatId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[TotalRow] [int] NOT NULL,
	[TotalColmn] [int] NOT NULL,
 CONSTRAINT [PK_CinemaSeats] PRIMARY KEY CLUSTERED 
(
	[CinemaSeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movies]    Script Date: 20/10/2021 6:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Directors] [nvarchar](max) NULL,
	[Casts] [nvarchar](max) NULL,
	[Summary] [nvarchar](max) NULL,
	[PremiereDate] [datetime2](7) NOT NULL,
	[Poster] [nvarchar](max) NULL,
	[Trailer] [nvarchar](max) NULL,
	[MovieDuration] [int] NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 20/10/2021 6:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 20/10/2021 6:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[TicketId] [int] IDENTITY(1,1) NOT NULL,
	[Row] [nvarchar](max) NULL,
	[Column] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[BookingId] [int] NOT NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 20/10/2021 6:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DOB] [datetime2](7) NOT NULL,
	[Phone] [int] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NULL,
	[PasswordSalt] [nvarchar](max) NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[RefreshTokenExpiryTime] [datetime2](7) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210927171950_V1', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210929152541_V2', N'5.0.10')
SET IDENTITY_INSERT [dbo].[CinemaComplices] ON 

INSERT [dbo].[CinemaComplices] ([CinemaComplexId], [Name], [Address], [Image]) VALUES (1, N'A', N'ABC', NULL)
INSERT [dbo].[CinemaComplices] ([CinemaComplexId], [Name], [Address], [Image]) VALUES (2, N'N', N'DNCC', NULL)
SET IDENTITY_INSERT [dbo].[CinemaComplices] OFF
SET IDENTITY_INSERT [dbo].[Cinemas] ON 

INSERT [dbo].[Cinemas] ([CinemaId], [Name], [Type], [TotalSeats], [CinemaComplexId], [CinemaSeatId]) VALUES (3, N'TEST', N'TEST', 30, 2, 2)
INSERT [dbo].[Cinemas] ([CinemaId], [Name], [Type], [TotalSeats], [CinemaComplexId], [CinemaSeatId]) VALUES (4, N'A', N'A', 45, 2, 2)
SET IDENTITY_INSERT [dbo].[Cinemas] OFF
SET IDENTITY_INSERT [dbo].[CinemaSeats] ON 

INSERT [dbo].[CinemaSeats] ([CinemaSeatId], [Name], [TotalRow], [TotalColmn]) VALUES (1, N'TÉT', 5, 6)
INSERT [dbo].[CinemaSeats] ([CinemaSeatId], [Name], [TotalRow], [TotalColmn]) VALUES (2, N'TIAA', 6, 7)
SET IDENTITY_INSERT [dbo].[CinemaSeats] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MovieId], [Name], [Directors], [Casts], [Summary], [PremiereDate], [Poster], [Trailer], [MovieDuration]) VALUES (2, N'VENOM: ĐỐI MẶT TỬ THÙ', N'Andy Serkis', N'	Tom Hardy, 
Michelle Williams, 
Naomie Harris, 
Reid Scott, 
Stephen Graham, 
Woody Harrelson', N'18 tháng sau các sự kiện trong Venom (2018), phóng viên Eddie Brock cố gắng làm quen với việc sống như 1 vật chủ của sinh vật ngoài hành tinh Venom, kẻ ban cho anh siêu năng lực nhưng cũng khiến anh phải cảnh giác. Brock cố gắng xây dựng lại sự nghiệp của mình bằng cách phỏng vấn tên sát nhân Cletus Kasady, kẻ trở thành vật chủ của sinh vật Carnage và bỏ trốn khỏi nhà tù sau khi may mắn thoát khỏi hành quyết.', CAST(N'2021-10-18 08:53:05.7530000' AS DateTime2), N'https://m.media-amazon.com/images/I/91LPOMer4jL._AC_SL1500_.jpg', N'https://www.youtube.com/embed/-FmWuCgJmxo', 120)
INSERT [dbo].[Movies] ([MovieId], [Name], [Directors], [Casts], [Summary], [PremiereDate], [Poster], [Trailer], [MovieDuration]) VALUES (3, N'A', N'A', N'A', N'A', CAST(N'2021-10-10 00:00:00.0000000' AS DateTime2), N'https://m.media-amazon.com/images/I/91LPOMer4jL._AC_SL1500_.jpg', N'A', 13)
INSERT [dbo].[Movies] ([MovieId], [Name], [Directors], [Casts], [Summary], [PremiereDate], [Poster], [Trailer], [MovieDuration]) VALUES (4, N'AC', N'AC', N'AC', N'AC', CAST(N'2020-12-12 00:00:00.0000000' AS DateTime2), N'https://m.media-amazon.com/images/I/91LPOMer4jL._AC_SL1500_.jpg', N'AC', 123)
INSERT [dbo].[Movies] ([MovieId], [Name], [Directors], [Casts], [Summary], [PremiereDate], [Poster], [Trailer], [MovieDuration]) VALUES (5, N'striang', N'striaaaang', N'striaaaaang', N'straaaaaaaaaaaaaaaaaaing', CAST(N'2021-09-29 08:58:31.4430000' AS DateTime2), N'https://m.media-amazon.com/images/I/91LPOMer4jL._AC_SL1500_.jpg', N'straaaaaaaaaaaaaaaaaaaaaing', 10)
INSERT [dbo].[Movies] ([MovieId], [Name], [Directors], [Casts], [Summary], [PremiereDate], [Poster], [Trailer], [MovieDuration]) VALUES (6, N'striang', N'striaaaang', N'striaaaaang', N'straaaaaaaaaaaaaaaaaaing', CAST(N'2021-09-29 08:58:31.4430000' AS DateTime2), N'https://m.media-amazon.com/images/I/91LPOMer4jL._AC_SL1500_.jpg', N'straaaaaaaaaaaaaaaaaaaaaing', 10)
INSERT [dbo].[Movies] ([MovieId], [Name], [Directors], [Casts], [Summary], [PremiereDate], [Poster], [Trailer], [MovieDuration]) VALUES (7, N'striang', N'striaaaang', N'striaaaaang', N'straaaaaaaaaaaaaaaaaaing', CAST(N'2021-09-29 08:58:31.4430000' AS DateTime2), N'https://m.media-amazon.com/images/I/91LPOMer4jL._AC_SL1500_.jpg', N'straaaaaaaaaaaaaaaaaaaaaing', 10)
INSERT [dbo].[Movies] ([MovieId], [Name], [Directors], [Casts], [Summary], [PremiereDate], [Poster], [Trailer], [MovieDuration]) VALUES (8, N'sg', N'string', N'string', N'string', CAST(N'2021-09-29 09:03:02.6220000' AS DateTime2), N'string', N'string', 0)
INSERT [dbo].[Movies] ([MovieId], [Name], [Directors], [Casts], [Summary], [PremiereDate], [Poster], [Trailer], [MovieDuration]) VALUES (9, N'string', N'string', N'string', N'string', CAST(N'2021-09-29 09:17:18.6390000' AS DateTime2), N'string', N'string', 0)
INSERT [dbo].[Movies] ([MovieId], [Name], [Directors], [Casts], [Summary], [PremiereDate], [Poster], [Trailer], [MovieDuration]) VALUES (10, N'A', N'A', N'A', N'A', CAST(N'2021-10-02 15:11:58.4030000' AS DateTime2), N'A', N'A', 10)
INSERT [dbo].[Movies] ([MovieId], [Name], [Directors], [Casts], [Summary], [PremiereDate], [Poster], [Trailer], [MovieDuration]) VALUES (11, N'B', N'AB', N'BA', N'AB', CAST(N'2021-09-10 15:11:58.4030000' AS DateTime2), N'AB', N'AB', 10)
SET IDENTITY_INSERT [dbo].[Movies] OFF
/****** Object:  Index [IX_Bookings_CinemaInterestId]    Script Date: 20/10/2021 6:36:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_CinemaInterestId] ON [dbo].[Bookings]
(
	[CinemaInterestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Bookings_UserId]    Script Date: 20/10/2021 6:36:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_UserId] ON [dbo].[Bookings]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CinemaInterests_CinemaId]    Script Date: 20/10/2021 6:36:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_CinemaInterests_CinemaId] ON [dbo].[CinemaInterests]
(
	[CinemaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CinemaInterests_MovieId]    Script Date: 20/10/2021 6:36:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_CinemaInterests_MovieId] ON [dbo].[CinemaInterests]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cinemas_CinemaComplexId]    Script Date: 20/10/2021 6:36:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Cinemas_CinemaComplexId] ON [dbo].[Cinemas]
(
	[CinemaComplexId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cinemas_CinemaSeatId]    Script Date: 20/10/2021 6:36:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Cinemas_CinemaSeatId] ON [dbo].[Cinemas]
(
	[CinemaSeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tickets_BookingId]    Script Date: 20/10/2021 6:36:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tickets_BookingId] ON [dbo].[Tickets]
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_RoleId]    Script Date: 20/10/2021 6:36:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Users_RoleId] ON [dbo].[Users]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_CinemaInterests_CinemaInterestId] FOREIGN KEY([CinemaInterestId])
REFERENCES [dbo].[CinemaInterests] ([CinemaInterestId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_CinemaInterests_CinemaInterestId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Users_UserId]
GO
ALTER TABLE [dbo].[CinemaInterests]  WITH CHECK ADD  CONSTRAINT [FK_CinemaInterests_Cinemas_CinemaId] FOREIGN KEY([CinemaId])
REFERENCES [dbo].[Cinemas] ([CinemaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CinemaInterests] CHECK CONSTRAINT [FK_CinemaInterests_Cinemas_CinemaId]
GO
ALTER TABLE [dbo].[CinemaInterests]  WITH CHECK ADD  CONSTRAINT [FK_CinemaInterests_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([MovieId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CinemaInterests] CHECK CONSTRAINT [FK_CinemaInterests_Movies_MovieId]
GO
ALTER TABLE [dbo].[Cinemas]  WITH CHECK ADD  CONSTRAINT [FK_Cinemas_CinemaComplices_CinemaComplexId] FOREIGN KEY([CinemaComplexId])
REFERENCES [dbo].[CinemaComplices] ([CinemaComplexId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cinemas] CHECK CONSTRAINT [FK_Cinemas_CinemaComplices_CinemaComplexId]
GO
ALTER TABLE [dbo].[Cinemas]  WITH CHECK ADD  CONSTRAINT [FK_Cinemas_CinemaSeats_CinemaSeatId] FOREIGN KEY([CinemaSeatId])
REFERENCES [dbo].[CinemaSeats] ([CinemaSeatId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cinemas] CHECK CONSTRAINT [FK_Cinemas_CinemaSeats_CinemaSeatId]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Bookings_BookingId] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Bookings_BookingId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles_RoleId]
GO
USE [master]
GO
ALTER DATABASE [BookingTicket] SET  READ_WRITE 
GO
