USE [BookingTicket]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/10/2021 6:33:26 PM ******/
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
/****** Object:  Table [dbo].[Bookings]    Script Date: 20/10/2021 6:33:26 PM ******/
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
/****** Object:  Table [dbo].[CinemaComplices]    Script Date: 20/10/2021 6:33:26 PM ******/
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
/****** Object:  Table [dbo].[CinemaInterests]    Script Date: 20/10/2021 6:33:26 PM ******/
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
/****** Object:  Table [dbo].[Cinemas]    Script Date: 20/10/2021 6:33:26 PM ******/
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
/****** Object:  Table [dbo].[CinemaSeats]    Script Date: 20/10/2021 6:33:26 PM ******/
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
/****** Object:  Table [dbo].[Movies]    Script Date: 20/10/2021 6:33:26 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 20/10/2021 6:33:26 PM ******/
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
/****** Object:  Table [dbo].[Tickets]    Script Date: 20/10/2021 6:33:26 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 20/10/2021 6:33:26 PM ******/
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
