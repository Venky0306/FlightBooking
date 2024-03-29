USE [master]
GO
/****** Object:  Database [FlightBooking]    Script Date: 08-06-2023 22:22:41 ******/
CREATE DATABASE [FlightBooking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FlightBooking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FlightBooking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FlightBooking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FlightBooking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FlightBooking] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FlightBooking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FlightBooking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FlightBooking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FlightBooking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FlightBooking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FlightBooking] SET ARITHABORT OFF 
GO
ALTER DATABASE [FlightBooking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FlightBooking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FlightBooking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FlightBooking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FlightBooking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FlightBooking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FlightBooking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FlightBooking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FlightBooking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FlightBooking] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FlightBooking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FlightBooking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FlightBooking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FlightBooking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FlightBooking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FlightBooking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FlightBooking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FlightBooking] SET RECOVERY FULL 
GO
ALTER DATABASE [FlightBooking] SET  MULTI_USER 
GO
ALTER DATABASE [FlightBooking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FlightBooking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FlightBooking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FlightBooking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FlightBooking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FlightBooking] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FlightBooking', N'ON'
GO
ALTER DATABASE [FlightBooking] SET QUERY_STORE = ON
GO
ALTER DATABASE [FlightBooking] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FlightBooking]
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 08-06-2023 22:22:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[Booking_id] [int] IDENTITY(1,1) NOT NULL,
	[Flight_id] [int] NULL,
	[Customer_id] [int] NULL,
	[Booking_date] [datetime] NULL,
	[SeatNumber] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 08-06-2023 22:22:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[Country_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cost]    Script Date: 08-06-2023 22:22:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cost](
	[Cost_id] [int] IDENTITY(1,1) NOT NULL,
	[FlightName] [nvarchar](50) NULL,
	[Source] [nvarchar](50) NULL,
	[Destination] [nvarchar](50) NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Cost] PRIMARY KEY CLUSTERED 
(
	[Cost_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 08-06-2023 22:22:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Country_id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
	[Flight_id] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 08-06-2023 22:22:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nchar](10) NULL,
	[PhoneNumber] [nchar](10) NULL,
	[Payment_id] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightDetail]    Script Date: 08-06-2023 22:22:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightDetail](
	[Flight_id] [int] IDENTITY(1,1) NOT NULL,
	[FlightName] [nchar](10) NULL,
	[Departuretime] [datetime] NULL,
	[DepartureDate] [date] NULL,
	[ArrivalTime] [datetime] NULL,
	[ArrivalDate] [date] NULL,
	[Cost] [money] NULL,
	[Cost_id] [int] NULL,
 CONSTRAINT [PK_FlightDetail] PRIMARY KEY CLUSTERED 
(
	[Flight_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionDetails]    Script Date: 08-06-2023 22:22:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionDetails](
	[Payment_id] [int] IDENTITY(1,1) NOT NULL,
	[TransactionAmount] [money] NULL,
 CONSTRAINT [PK_TransactionDetails] PRIMARY KEY CLUSTERED 
(
	[Payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Country_id], [CountryName], [Flight_id]) VALUES (1, N'United States
', NULL)
INSERT [dbo].[Country] ([Country_id], [CountryName], [Flight_id]) VALUES (2, N'South Africa
', NULL)
INSERT [dbo].[Country] ([Country_id], [CountryName], [Flight_id]) VALUES (3, N'Russia
', NULL)
INSERT [dbo].[Country] ([Country_id], [CountryName], [Flight_id]) VALUES (4, N'India', NULL)
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[FlightDetail] ON 

INSERT [dbo].[FlightDetail] ([Flight_id], [FlightName], [Departuretime], [DepartureDate], [ArrivalTime], [ArrivalDate], [Cost], [Cost_id]) VALUES (1, N'Indigo    ', CAST(N'2023-01-06T00:00:00.000' AS DateTime), CAST(N'2023-02-06' AS Date), CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2023-04-06' AS Date), NULL, NULL)
INSERT [dbo].[FlightDetail] ([Flight_id], [FlightName], [Departuretime], [DepartureDate], [ArrivalTime], [ArrivalDate], [Cost], [Cost_id]) VALUES (2, N'Air India ', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FlightDetail] OFF
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Customer] FOREIGN KEY([Customer_id])
REFERENCES [dbo].[Customer] ([Customer_id])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Customer]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_FlightDetail] FOREIGN KEY([Flight_id])
REFERENCES [dbo].[FlightDetail] ([Flight_id])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_FlightDetail]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Country] FOREIGN KEY([Country_id])
REFERENCES [dbo].[Country] ([Country_id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Country]
GO
ALTER TABLE [dbo].[Cost]  WITH CHECK ADD  CONSTRAINT [FK_Cost_Cost] FOREIGN KEY([Cost_id])
REFERENCES [dbo].[Cost] ([Cost_id])
GO
ALTER TABLE [dbo].[Cost] CHECK CONSTRAINT [FK_Cost_Cost]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_FlightDetail] FOREIGN KEY([Flight_id])
REFERENCES [dbo].[FlightDetail] ([Flight_id])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_FlightDetail]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_TransactionDetails] FOREIGN KEY([Payment_id])
REFERENCES [dbo].[TransactionDetails] ([Payment_id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_TransactionDetails]
GO
USE [master]
GO
ALTER DATABASE [FlightBooking] SET  READ_WRITE 
GO
