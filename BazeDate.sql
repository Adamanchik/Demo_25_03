USE [master]
GO
/****** Object:  Database [Dem_25_03_Kyrdyumov]    Script Date: 25.03.2023 12:49:01 ******/
CREATE DATABASE [Dem_25_03_Kyrdyumov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dem_25_03_Kyrdyumov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Dem_25_03_Kyrdyumov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dem_25_03_Kyrdyumov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Dem_25_03_Kyrdyumov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dem_25_03_Kyrdyumov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET RECOVERY FULL 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET  MULTI_USER 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Dem_25_03_Kyrdyumov', N'ON'
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET QUERY_STORE = OFF
GO
USE [Dem_25_03_Kyrdyumov]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Dem_25_03_Kyrdyumov]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 25.03.2023 12:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[client_id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[patronymic] [varchar](50) NULL,
	[phone_number] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients_transports]    Script Date: 25.03.2023 12:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients_transports](
	[client_id] [int] NOT NULL,
	[transport_id] [int] NULL,
	[date_begin] [datetime] NULL,
	[date_end] [datetime] NULL,
	[begin_point] [varchar](50) NULL,
	[end_point] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 25.03.2023 12:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[role_id] [int] NOT NULL,
	[role_name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transport]    Script Date: 25.03.2023 12:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transport](
	[transport_id] [int] NOT NULL,
	[transport_type_id] [int] NULL,
	[transport_color] [varchar](50) NULL,
	[transport_model] [varchar](50) NULL,
	[transport_number] [varchar](10) NULL,
	[transport_enabled] [nvarchar](50) NULL,
	[current_point_location_number] [int] NULL,
	[current_point_location_address] [varchar](50) NULL,
	[price] [money] NULL,
	[transport_date] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 25.03.2023 12:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[login] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[role_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vechicle]    Script Date: 25.03.2023 12:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vechicle](
	[transport_typ_id] [int] NOT NULL,
	[name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (1, N'Климова', N'Алиса', N'Александровна', N'4542341')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (2, N'Морозов', N'Геннадий', N'Валерьевич', N'9963433')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (3, N'Сергеев', N'Борис', N'Николаевич', N'9531230')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (4, N'Куликов', N'Владислав', N'Даниилович', N'8663312')
INSERT [dbo].[clients] ([client_id], [name], [surname], [patronymic], [phone_number]) VALUES (5, N'Коротков', N'Олег', N'Матвеевич', N'9257843')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (1, 1, CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-01T00:00:00.000' AS DateTime), N'1', N'1')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (1, 2, CAST(N'2023-03-02T00:00:00.000' AS DateTime), CAST(N'2023-03-10T00:00:00.000' AS DateTime), N'1', N'1')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (1, 3, CAST(N'2023-03-15T00:00:00.000' AS DateTime), CAST(N'2023-03-30T00:00:00.000' AS DateTime), N'2', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (4, 4, CAST(N'2022-12-12T00:00:00.000' AS DateTime), CAST(N'2023-01-11T00:00:00.000' AS DateTime), N'3', N'3')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (2, 5, CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'4', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (3, 6, CAST(N'2023-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-30T00:00:00.000' AS DateTime), N'2', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (4, 7, CAST(N'2021-12-14T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), N'1', N'3')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (2, 8, CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2023-04-01T00:00:00.000' AS DateTime), N'2', NULL)
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (3, 9, CAST(N'2022-05-01T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), N'3', N'3')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (3, 10, CAST(N'2022-06-01T00:00:00.000' AS DateTime), CAST(N'2022-07-01T00:00:00.000' AS DateTime), N'2', N'2')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (4, 11, CAST(N'2019-08-07T00:00:00.000' AS DateTime), CAST(N'2019-08-08T00:00:00.000' AS DateTime), N'1', N'4')
INSERT [dbo].[clients_transports] ([client_id], [transport_id], [date_begin], [date_end], [begin_point], [end_point]) VALUES (1, 12, CAST(N'2020-09-19T00:00:00.000' AS DateTime), CAST(N'2020-10-19T00:00:00.000' AS DateTime), N'4', N'2')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (1, N'Администратор')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (2, N'Менеджер')
INSERT [dbo].[roles] ([role_id], [role_name]) VALUES (3, N'Клиент')
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (1, 1, N'Синий', N'MERIDA KALAHARI-500', N'XR430Z', N'Да', 1, N'ул. Мира 14', 500.0000, CAST(N'2010-01-01' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (2, 2, N'Синий', N'Suzuki RG200', N'АБ201В', N'Да', 2, N'ул. Победы 20', 1000.0000, CAST(N'2015-10-05' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (3, 1, N'Красный', N'STELS 730', N'ГГ311В', N'Да', 2, N'ул. Победы 20', 400.0000, CAST(N'2020-12-17' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (4, 4, N'Желтый', N'LADA VESTA', N'К341ТО', N'Нет', NULL, NULL, 2000.0000, CAST(N'2014-12-06' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (5, 4, N'Белый', N'LADA VESTA', N'У312ТН', N'Да', 3, N'п. Ленина 16', 2000.0000, CAST(N'2016-06-21' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (6, 4, N'Белый', N'Kia Rio', N'К312ОО', N'Нет', NULL, NULL, 3000.0000, CAST(N'2022-07-01' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (7, 1, N'Чёрный', N'MERIDA KALAHARI-500', N'ZC182V', N'Нет', NULL, NULL, 500.0000, CAST(N'2005-01-01' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (8, 2, N'Красный', N'Alpha RX-11', N'Г352ВС', N'Да', 2, N'ул. Победы 20', 900.0000, CAST(N'2021-05-05' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (9, 2, N'Красный', N'Alpha RX-15', N'А513ВВ', N'Да', 4, N'ул. Труда 8', 900.0000, CAST(N'2019-04-16' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (10, 3, N'Коричневый', N'Yamaha G800', N'У666СР', N'Нет', NULL, NULL, 1000.0000, CAST(N'2011-05-02' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (11, 4, N'Фиолетовый', N'Renault Sandero-II', N'C999ЕН', N'Да', 4, N'ул. Труда 8', 2500.0000, CAST(N'2012-11-10' AS Date))
INSERT [dbo].[transport] ([transport_id], [transport_type_id], [transport_color], [transport_model], [transport_number], [transport_enabled], [current_point_location_number], [current_point_location_address], [price], [transport_date]) VALUES (12, 1, N'Белый', N'GT-50', N'XW121V', N'Да', 1, N'ул. Мира 14', 550.0000, CAST(N'2017-09-11' AS Date))
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'7efwqtub80i5@outlook.com', N'54zxr3', 3)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'v718fhbjuq0p@mail.com', N'4d23as', 2)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'7vnrat4hmcz6@yahoo.com', N'zzz323', 1)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'v4mlcsi1bgnk@tutanota.com', N'6664ee', 1)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'2yx3tbqv4ndi@outlook.com', N'85fd4', 2)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'5bf1xdiq6zup@tutanota.com', N'99663w', 2)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'p7rviz42j6bh@outlook.com', N'hryus33', 3)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'g5nrmh1axwfl@outlook.com', N'watw2ain', 3)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'5knb4drlf2hj@tutanota.com', N'ZsdSDr', 3)
INSERT [dbo].[users] ([login], [password], [role_id]) VALUES (N'pk90ratym8bo@yahoo.com', N'ZZZds2', 3)
INSERT [dbo].[vechicle] ([transport_typ_id], [name]) VALUES (1, N'Велосипед')
INSERT [dbo].[vechicle] ([transport_typ_id], [name]) VALUES (2, N'Мопед')
INSERT [dbo].[vechicle] ([transport_typ_id], [name]) VALUES (3, N'Мотоцикл')
INSERT [dbo].[vechicle] ([transport_typ_id], [name]) VALUES (4, N'Автомобиль')
USE [master]
GO
ALTER DATABASE [Dem_25_03_Kyrdyumov] SET  READ_WRITE 
GO
