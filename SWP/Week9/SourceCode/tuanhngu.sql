USE [master]
GO
/****** Object:  Database [Course_DB]    Script Date: 7/22/2023 10:37:24 PM ******/
CREATE DATABASE [Course_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Course_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Course_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Course_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Course_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Course_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Course_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Course_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Course_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Course_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Course_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Course_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Course_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Course_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Course_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Course_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Course_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Course_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Course_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Course_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Course_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Course_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Course_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Course_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Course_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Course_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Course_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Course_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Course_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Course_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Course_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Course_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Course_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Course_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Course_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Course_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Course_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Course_DB', N'ON'
GO
ALTER DATABASE [Course_DB] SET QUERY_STORE = OFF
GO
USE [Course_DB]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[user1_id] [int] NULL,
	[user2_id] [int] NULL,
	[blocked] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] NOT NULL,
	[course_name] [nvarchar](50) NULL,
	[course_img] [nvarchar](max) NULL,
	[course_price] [money] NULL,
	[course_desc] [nvarchar](max) NULL,
	[last_update] [date] NULL,
	[sub_id] [int] NULL,
	[level_id] [int] NULL,
	[course_status] [bit] NULL,
	[durationDAY] [int] NULL,
	[course_Title] [nvarchar](150) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[choices]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[choices](
	[choice_id] [int] IDENTITY(1,1) NOT NULL,
	[choice_content] [nvarchar](255) NULL,
	[is_true] [bit] NULL,
	[ques_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[choice_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[district]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[district](
	[district_id] [int] NOT NULL,
	[province_id] [int] NOT NULL,
	[name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_district] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[gender_id] [int] IDENTITY(1,1) NOT NULL,
	[gender_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[gender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_name] [nvarchar](max) NULL,
	[lesson_video] [nvarchar](max) NULL,
	[section_id] [int] NULL,
	[lesson_desc] [nvarchar](max) NULL,
	[lesson_status] [bit] NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson_Result]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson_Result](
	[lesson_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[lesson_status] [bit] NULL,
 CONSTRAINT [PK_Lesson_Result] PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[level_id] [int] IDENTITY(1,1) NOT NULL,
	[level_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[level_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manage_Course]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manage_Course](
	[course_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[course_Start] [datetime] NULL,
	[course_end] [datetime] NULL,
	[done] [bit] NULL,
 CONSTRAINT [PK_Manage_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[message]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[message](
	[message_id] [int] IDENTITY(1,1) NOT NULL,
	[contact_id] [int] NULL,
	[title] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[message_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[per_id] [int] IDENTITY(1,1) NOT NULL,
	[per_name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[post_img] [nvarchar](max) NULL,
	[post_title] [nvarchar](max) NULL,
	[post_desc] [nvarchar](max) NULL,
	[post_date] [date] NULL,
	[post_status] [bit] NULL,
	[blog_id] [int] NULL,
	[postContent] [nvarchar](max) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_Category]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Category](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[blog_name] [nvarchar](255) NULL,
	[note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price_Package]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price_Package](
	[package_id] [int] IDENTITY(1,1) NOT NULL,
	[package_name] [nvarchar](50) NULL,
	[duration] [int] NULL,
	[pack_status] [bit] NULL,
	[price] [float] NULL,
	[description] [nvarchar](300) NULL,
 CONSTRAINT [PK_Price_Package] PRIMARY KEY CLUSTERED 
(
	[package_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[province]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[province_id] [int] NOT NULL,
	[name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_province] PRIMARY KEY CLUSTERED 
(
	[province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ques_Result]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques_Result](
	[ques_result_id] [int] IDENTITY(1,1) NOT NULL,
	[ques_id] [int] NULL,
	[user_id] [int] NULL,
	[ques_status] [bit] NULL,
	[ques_flag] [bit] NULL,
	[ques_answer] [nvarchar](max) NULL,
	[quiz_result_id] [int] NULL,
 CONSTRAINT [PK_Ques_Result] PRIMARY KEY CLUSTERED 
(
	[ques_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[ques_id] [int] IDENTITY(1,1) NOT NULL,
	[ques_content] [nvarchar](max) NULL,
	[ques_note] [nvarchar](max) NULL,
	[quiz_id] [int] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[ques_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[quiz_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_name] [nvarchar](255) NULL,
	[quiz_desc] [nvarchar](max) NULL,
	[section_id] [int] NULL,
	[quiz_status] [bit] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz_Result]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz_Result](
	[quiz_result_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[quiz_status] [bit] NULL,
	[quiz_grade] [float] NULL,
	[quiz_start] [datetime] NULL,
	[quiz_end] [datetime] NULL,
	[attempt] [int] NULL,
 CONSTRAINT [PK_Quiz_Result] PRIMARY KEY CLUSTERED 
(
	[quiz_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Permission]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Permission](
	[role_per_id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[per_id] [int] NULL,
 CONSTRAINT [PK_Role_Permission] PRIMARY KEY CLUSTERED 
(
	[role_per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[section_id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NOT NULL,
	[section_name] [nvarchar](255) NULL,
	[section_status] [bit] NULL,
 CONSTRAINT [PK_Section_1] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[SettingId] [int] IDENTITY(1,1) NOT NULL,
	[SettingTypeId] [int] NOT NULL,
	[SettingValue] [nvarchar](50) NOT NULL,
	[SettingOrder] [nvarchar](100) NOT NULL,
	[SettingStatusId] [int] NOT NULL,
	[SettingDescription] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SettingStatus]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SettingStatus](
	[SettingStatusId] [int] IDENTITY(1,1) NOT NULL,
	[SettingStatusName] [nchar](10) NULL,
 CONSTRAINT [PK_SettingStatus] PRIMARY KEY CLUSTERED 
(
	[SettingStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SettingType]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SettingType](
	[SettingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SettingTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SettingType] PRIMARY KEY CLUSTERED 
(
	[SettingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[slider_id] [int] IDENTITY(1,1) NOT NULL,
	[slider_title] [nvarchar](max) NULL,
	[slider_img] [nvarchar](max) NULL,
	[slider_link] [nvarchar](max) NULL,
	[slider_status] [bit] NULL,
	[slider_note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_name] [nvarchar](50) NULL,
	[sub_desc] [nvarchar](max) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[reg_id] [int] IDENTITY(1,1) NOT NULL,
	[reg_time] [date] NULL,
	[user_id] [int] NULL,
	[package_id] [int] NULL,
	[expireDate] [date] NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/22/2023 10:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_email] [nvarchar](100) NOT NULL,
	[password] [nvarchar](255) NULL,
	[full_name] [nvarchar](255) NOT NULL,
	[user_img] [nvarchar](max) NULL,
	[gender_id] [int] NULL,
	[user_dob] [date] NULL,
	[user_phone] [nvarchar](50) NULL,
	[user_address] [nvarchar](255) NULL,
	[user_wallet] [nvarchar](100) NULL,
	[role_id] [int] NULL,
	[user_time] [date] NULL,
	[user_status] [bit] NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (1, N'Xác suất thống kê I', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học xác suất và thống kê là một khóa học cơ bản giúp người học hiểu về cách tính toán và áp dụng các khái niệm cơ bản của hai lĩnh vực này. Nó được thiết kế để giúp người mới bắt đầu có được kiến thức và kỹ năng căn bản trong xác suất và thống kê.

Trong khóa học này, bạn sẽ được giới thiệu với các khái niệm cơ bản như biến số, phân phối, chuỗi thời gian và mô hình hồi quy tuyến tính. Bạn sẽ học cách tính toán trung bình, phương sai, độ lệch chuẩn và các đại lượng thống kê khác.

Bên cạnh đó, khóa học cũng sẽ giúp bạn hiểu rõ hơn về các phương pháp thống kê cơ bản để xác định mối quan hệ giữa các biến số trong tập dữ liệu. Bạn sẽ học cách xây dựng mô hình cho các dữ liệu liên tục và rời rạc.

Khóa học sử dụng các ví dụ và bài tập giúp người học áp dụng những kiến thức đã học vào thực tế và nắm vững các kỹ năng thống kê cơ bản. Với khóa học này, bạn sẽ có được nền tảng vững chắc để tiếp tục học tập và phát triển kiến thức thực tế trong lĩnh vực xác suất và thống kê."', CAST(N'2022-03-04' AS Date), 2, 1, 0, 30, N'Xác suất thống kê cho người mới bắt đầu')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (2, N'Đại số tuyến tính I', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học đại số tuyến tính là một khóa học cơ bản trong toán học, và được giới thiệu cho những người mới bắt đầu học toán. Khóa học này giảng dạy về các phương pháp để giải các bài toán liên quan đến hệ đại số tuyển tính.

Trong khóa học này, bạn sẽ bắt đầu với kiến ​​thức cơ bản về đại số tuyến tính, bao gồm các khái niệm về ma trận, vector và hệ phương trình tuyến tính. Sau đó, bạn sẽ học về các phép tính cơ bản trong đại số tuyến tính, bao gồm cộng, trừ, nhân ma trận và tích vô hướng.

Sau khi hoàn thành phần cơ bản, khóa học sẽ tiếp tục với việc giải các hệ phương trình tuyến tính bằng các phương pháp khác nhau, bao gồm phương pháp khử Gauss và định thức. Bạn sẽ học cách áp dụng các phương pháp này vào các ví dụ thực tế, như trong khoa học máy tính và kĩ thuật điện tử.

Khóa học đại số tuyến tính rất quan trọng trong nhiều lĩnh vực khác nhau, bao gồm khoa học máy tính, kĩ thuật và khoa học dữ liệu. Nếu bạn muốn bắt đầu học toán hoặc muốn nâng cao kiến ​​thức của mình trong lĩnh vực này, thì đây là một khóa học tuyệt vời để bắt đầu.', CAST(N'2022-03-05' AS Date), 2, 1, 1, 30, N'Đại số tuyến tính cho người mới bắt đầu')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (3, N'Giải tích I', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học giải tích là một khóa học cơ bản trong toán học và nó dành cho những người mới bắt đầu học toán. Khóa học này sẽ giúp bạn hiểu các khái niệm cơ bản của giải tích, từ đó giúp bạn có thể áp dụng kiến thức này vào các vấn đề trong cuộc sống hàng ngày.

Trong khóa học này, bạn sẽ bắt đầu với các khái niệm cơ bản như đạo hàm và tích phân. Bạn sẽ học cách tính đạo hàm của một hàm số và cách sử dụng đạo hàm để tìm cực trị của một hàm số. Sau đó, khóa học sẽ giới thiệu cho bạn về tích phân và các phương pháp tính toán tích phân đơn giản.

Sau khi hoàn thành phần cơ bản, khóa học sẽ tiếp tục với việc giới thiệu cho bạn các khái niệm cao cấp hơn, bao gồm phép tích phân đường, phép tích phân ba chiều và phương trình vi phân. Bạn sẽ học cách sử dụng các phương pháp này để giải quyết các vấn đề trong nhiều lĩnh vực khác nhau, bao gồm khoa học máy tính, kỹ thuật và vật lý.

Khóa học giải tích rất quan trọng trong nhiều lĩnh vực, đặc biệt là trong khoa học tự nhiên và kỹ thuật. Nếu bạn muốn bắt đầu học toán hoặc muốn nâng cao kiến ​​thức của mình trong lĩnh vực này, thì đây là một khóa học tuyệt vời để bắt đầu.', CAST(N'2022-03-06' AS Date), 2, 1, 1, 30, N'Giải tích cho người mới bắt đầu')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (4, N'Toán rời rạc I', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học toán rời rạc là một khóa học cơ bản trong toán học và giành cho những người mới bắt đầu học toán. Khóa học này sẽ giúp bạn hiểu các khái niệm cơ bản của toán rời rạc, từ đó giúp bạn có thể áp dụng kiến thức này vào các vấn đề trong cuộc sống hàng ngày.

Trong khóa học này, bạn sẽ được giới thiệu với các khái niệm cơ bản như tập hợp, đồ thị, quan hệ và logic. Bạn sẽ học cách phân tích các tập hợp, hiểu được các thuộc tính cơ bản của chúng và cách sử dụng chúng để giải quyết các vấn đề.

Sau khi hoàn thành phần cơ bản, khóa học sẽ giới thiệu cho bạn về các khái niệm nâng cao hơn, bao gồm lượng tử, hàm sinh và combinatorics. Bạn sẽ học cách sử dụng các phương pháp này để giải quyết các vấn đề liên quan đến xác suất và thống kê, và áp dụng chúng vào các ví dụ thực tế như trong khoa học máy tính, tài chính và kinh doanh.

Khóa học toán rời rạc là rất quan trọng trong nhiều lĩnh vực, đặc biệt là trong khoa học máy tính, kỹ thuật và kinh doanh. Nếu bạn muốn bắt đầu học toán hoặc muốn nâng cao kiến ​​thức của mình trong lĩnh vực này, thì đây là một khóa học tuyệt vời để bắt đầu.', CAST(N'2022-03-07' AS Date), 2, 1, 1, 30, N'Toán rời rạc cho người mới bắt đầu')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (5, N'Hình học giải tích I', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học hình học giải tích là một khóa học cơ bản trong toán học và chủ yếu dành cho những người mới bắt đầu học toán. Khóa học này sẽ giúp bạn hiểu các khái niệm cơ bản của hình học giải tích, từ đó giúp bạn có thể áp dụng kiến thức này vào các vấn đề trong cuộc sống hàng ngày.

Trong khóa học này, bạn sẽ được giới thiệu với các khái niệm cơ bản về không gian vector và đại số tuyến tính, từ đó bạn sẽ học cách áp dụng các khái niệm này để giải quyết các vấn đề hình học. Bạn sẽ học cách biểu diễn các đối tượng hình học như điểm, đường, mặt phẳng và đa giác bằng cách sử dụng ma trận và vector.

Sau khi hoàn thành phần cơ bản, khóa học sẽ giới thiệu cho bạn về các khái niệm nâng cao hơn, bao gồm hình học riêng và giải tích riêng. Bạn sẽ học cách tính gradient và divergence của một hàm số, và cách sử dụng chúng để giải quyết các vấn đề liên quan đến hình học và vật lý.

Khóa học hình học giải tích là rất quan trọng trong nhiều lĩnh vực, đặc biệt là trong khoa học máy tính, kỹ thuật và vật lý. Nếu bạn muốn bắt đầu học toán hoặc muốn nâng cao kiến ​​thức của mình trong lĩnh vực này, thì đây là một khóa học tuyệt vời để bắt đầu.', CAST(N'2022-03-08' AS Date), 2, 1, 1, 30, N'Hình học giải tích cho người mới bắt đầu')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (6, N'Đại số đại cương', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học đại số đại cương là một khóa học cung cấp kiến thức cơ bản về đại số cho người mới bắt đầu. Khóa học này giúp bạn hiểu các khái niệm cơ bản của đại số, bao gồm các phép tính cộng, trừ, nhân, chia, và quy tắc ưu tiên trong các phép tính.

Ngoài ra, khóa học còn giới thiệu về các khái niệm quan trọng như biểu thức đại số, phép nghịch đảo, phân số và định lý Pythagoras. Bạn sẽ được học cách giải các bài toán đơn giản sử dụng các kiến thức này.

Các bài tập trong khóa học cũng rất hữu ích để bạn có thể áp dụng các kiến thức đã học vào thực tế. Cuối khóa học, bạn sẽ có được nền tảng vững chắc về đại số để tiếp tục học tập những chủ đề nâng cao hơn, chẳng hạn như đại số tuyến tính hay đại số đại số.

Một số khóa học đại số đại cương có thể yêu cầu kiến thức toán học cơ bản, tuy nhiên, nếu bạn không có kiến thức toán học trước đó, các khóa học này cũng sẽ giúp bạn học được những kỹ năng cần thiết để giải quyết các bài toán đơn giản.

Khóa học đại số đại cương là một khóa học cung cấp kiến thức cơ bản về đại số cho người mới bắt đầu. Khóa học này giúp bạn hiểu các khái niệm cơ bản của đại số, bao gồm các phép tính cộng, trừ, nhân, chia, và quy tắc ưu tiên trong các phép tính.

Ngoài ra, khóa học còn giới thiệu về các khái niệm quan trọng như biểu thức đại số, phép nghịch đảo, phân số và định lý Pythagoras. Bạn sẽ được học cách giải các bài toán đơn giản sử dụng các kiến thức này.

Các bài tập trong khóa học cũng rất hữu ích để bạn có thể áp dụng các kiến thức đã học vào thực tế. Cuối khóa học, bạn sẽ có được nền tảng vững chắc về đại số để tiếp tục học tập những chủ đề nâng cao hơn, chẳng hạn như đại số tuyến tính hay đại số đại số.

Một số khóa học đại số đại cương có thể yêu cầu kiến thức toán học cơ bản, tuy nhiên, nếu bạn không có kiến thức toán học trước đó, các khóa học này cũng sẽ giúp bạn học được những kỹ năng cần thiết để giải quyết các bài toán đơn giản.', CAST(N'2022-03-09' AS Date), 2, 1, 1, 30, N'Giới thiệu về môn đại số')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (7, N'Thực hành tính toán', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học thực hành tính toán cho người mới bắt đầu có thể bao gồm các chủ đề sau:

Các phép tính cơ bản: Khóa học có thể bắt đầu với việc giới thiệu các phép tính cơ bản như cộng, trừ, nhân và chia để xây dựng nền tảng cho tổ hợp tính toán phức tạp hơn.

Thực hành với bộ đếm: Khóa học có thể cho sinh viên thực hành với bộ đếm để làm quen với các số học cơ bản và cách tính toán chúng.

Đổi đơn vị đo: Các bài tập trong khóa học có thể yêu cầu sinh viên chuyển đổi giữa các đơn vị đo khác nhau như mét, feet, inch, kilogram, pound, gram,...

Tính toán trong cuộc sống hàng ngày: Khóa học có thể giải thích những ví dụ cụ thể trong cuộc sống hàng ngày khi phải áp dụng tính toán như tính thuế, tính tiền tip, tính lương,...

Sử dụng ứng dụng tính toán: Ngoài việc sử dụng máy tính, khóa học có thể giới thiệu các ứng dụng tính toán khác như bảng tính Excel, Matlab, Python để giúp sinh viên có thể áp dụng kiến thức tính toán vào các bài toán thực tế.

Giải quyết vấn đề: Khóa học có thể cung cấp cho sinh viên một số bài toán để thực hành giải quyết vấn đề và trình bày các phương pháp, kết quả của mình.

Tất cả các chủ đề trên đều được thiết kế để giúp sinh viên mới bắt đầu tích lũy kiến thức và kỹ năng tính toán cơ bản và ứng dụng chúng vào cuộc sống hàng ngày.', CAST(N'2022-03-10' AS Date), 2, 1, 1, 30, N'Cung cấp các kĩ năng thực hành tính toán cơ bản')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (8, N'Topo đại cương', N'img/tempAvatar.jpg', 75000.0000, N'Topology là một nhánh của toán học nghiên cứu tính chất không gian và đường cong. Một khóa học topology cho người mới bắt đầu thường bao gồm các khái niệm cơ bản, ví dụ như:

Khái niệm về tập hợp, độ đo khoảng cách và hình dạng của các đối tượng không gian.
Các khái niệm cơ bản trong topology như định nghĩa về không gian metric, không gian topological, và các tính chất của chúng như liên thông, phân hoạch, đóng/mở, được xác định bằng cách sử dụng các tập con.
Các định lý cơ bản trong topology như định lý Banach-Tarski (về phân tích một khối cầu thành nhiều phần và tái lắp chúng thành hai khối cầu có diện tích lớn hơn), định lý Euler (liên quan đến số dạng của các đa diện trên không gian Euclide) và định lý Jordan (đưa ra điều kiện để một đường cong được chia thành hai phần không giao).
Ứng dụng của topology trong các lĩnh vực khác như vật lý, sinh học, kinh tế, và máy tính.
Một khóa học topology cho người mới bắt đầu thường sử dụng phương pháp giảng dạy trực quan, với việc sử dụng hình ảnh và ví dụ để giải thích các khái niệm và định lý. Ngoài ra, các bài tập và ví dụ cũng được sử dụng để giúp học sinh hiểu sâu hơn các khái niệm và áp dụng chúng vào những vấn đề thực tế.', CAST(N'2022-03-11' AS Date), 2, 1, 1, 30, N'Giới thiệu về Topology')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (9, N'Cơ sở hình học vi phân', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học cơ sở hình học vi phân là một khóa học giúp người học hiểu về các khái niệm và công cụ cơ bản của hình học vi phân. Khóa học bao gồm các chủ đề như đạo hàm, tích phân và các ứng dụng của chúng trong hình học và vật lý.

Trong khóa học này, người học sẽ được giới thiệu với các khái niệm căn bản của đạo hàm, bao gồm đạo hàm riêng, đạo hàm của hàm số tổng quát và một số tính chất quan trọng của đạo hàm. Sau đó, khóa học sẽ tiếp tục với tích phân, bao gồm tích phân không xác định, tích phân xác định và tích phân đường cong.

Ngoài ra, khóa học cũng giới thiệu các ứng dụng của hình học vi phân trong các lĩnh vực khác nhau, bao gồm các bài toán liên quan đến tốc độ và gia tốc, tìm diện tích và thể tích, các bài toán tối ưu và các bài toán liên quan đến các phương trình vi phân.

Để tiếp cận khóa học này, người học cần có kiến thức căn bản về đại số và tính toán, bao gồm giải phương trình và véc-tơ. Ngoài ra, người học cũng cần có hiểu biết cơ bản về các hàm số và đồ thị của chúng.', CAST(N'2022-03-12' AS Date), 2, 1, 1, 30, N'Giới thiệu về hình học vi phân')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (10, N'Giải tích hàm', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học về Giải tích hàm sẽ cung cấp cho bạn những kiến thức và kỹ năng cần thiết để phân tích, giải quyết các bài toán liên quan đến tích phân và vi phân. Khóa học này thường bao gồm các chủ đề như lượng giác, đạo hàm, tích phân, nguyên hàm, tính giới hạn và các ứng dụng của Giải tích hàm trong các lĩnh vực khác nhau.

Trong khóa học này, bạn sẽ học cách tính đạo hàm của một hàm số, tìm giá trị cực trị và các điểm uốn của một đồ thị. Bạn cũng sẽ được học cách tính tích phân của một hàm và sử dụng các công thức tích phân để giải quyết các bài toán phức tạp. Ngoài ra, bạn còn được giới thiệu với khái niệm nguyên hàm và các ứng dụng của nó.

Khóa học có thể được thiết kế cho các sinh viên khoa học, kỹ thuật, toán học hoặc các chuyên ngành liên quan đến quản lý, kinh tế, y tế... Các phương pháp giảng dạy trong khóa học có thể bao gồm bài giảng trực tiếp, thảo luận nhóm và các bài tập thực hành để hỗ trợ việc học tập của sinh viên.', CAST(N'2022-03-13' AS Date), 2, 1, 1, 60, N'Nâng cao kĩ năng giải tích với giải tích hàm')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (11, N'Thống kê ứng dụng', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học về thống kê ứng dụng sẽ cung cấp cho học viên những kiến thức cơ bản và nâng cao về thống kê và ứng dụng của nó. Khóa học này giúp các học viên hiểu được lý thuyết thống kê và cách áp dụng nó vào các tình huống thực tế trong công việc hoặc nghiên cứu.

Trong khóa học, học viên sẽ được giới thiệu về các phương pháp thống kê cơ bản, bao gồm những khái niệm quan trọng như độ tin cậy, tần suất, trung bình, độ lệch chuẩn và phương sai. Họ cũng sẽ được hướng dẫn cách sử dụng các công cụ thống kê để phân tích dữ liệu và đưa ra kết luận chính xác từ những thông tin thu thập được.

Ngoài ra, khóa học còn giới thiệu về các phương pháp thống kê tiên tiến như hồi quy tuyến tính, ANOVA và phân tích chiều sâu (PCA), và cách áp dụng chúng để giải quyết các vấn đề phức tạp hơn.

Cuối cùng, khóa học cũng sẽ đưa ra một số ví dụ cụ thể về ứng dụng thống kê trong nhiều lĩnh vực, bao gồm kinh doanh, khoa học dữ liệu và y học. Học viên sẽ được trang bị những kiến thức cần thiết để áp dụng thống kê vào công việc hoặc nghiên cứu của mình một cách hiệu quả và chuyên nghiệp.', CAST(N'2022-03-14' AS Date), 2, 2, 1, 60, N'Áp dụng thông kê vào bài toán thực tiễn')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (12, N'Giải tích phức', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học về giải tích phức là một khóa học chuyên sâu về các phương pháp và kỹ thuật trong lĩnh vực giải tích phức. Giải tích phức là một nhánh của toán học nghiên cứu tính toán trên số phức, bao gồm các hàm phức, tích phức, đạo hàm phức và tích phân phức.

Trong khóa học này, sinh viên sẽ học về các khái niệm cơ bản của giải tích phức, bao gồm các hàm phức liên tục, đạo hàm phức, tích phân phức, phép biến đổi Fourier và chuỗi Laurent. Sinh viên sẽ được giới thiệu với các ứng dụng quan trọng của giải tích phức trong các lĩnh vực khác nhau, như lý thuyết điều khiển, vật lý lượng tử và khoa học máy tính.

Các chủ đề cụ thể có thể bao gồm:

Phương pháp tính toán với các hàm phức
Tích phân phức và nguyên hàm phức
Chuỗi Laurent
Định lí Morera và định lí Cauchy
Đạo hàm phức và công thức Cauchy–Riemann
Nguyên lý siêu còi và phép biến đổi Fourier
Các ứng dụng của giải tích phức trong lý thuyết điều khiển, vật lý lượng tử và khoa học máy tính.
Khóa học này thường là một phần của chương trình đào tạo tiên tiến trong toán học và các ngành liên quan. Sau khi hoàn thành, sinh viên sẽ có được kiến thức cơ bản và kỹ năng để áp dụng giải tích phức vào việc nghiên cứu và giải quyết các vấn đề thực tế.', CAST(N'2022-03-15' AS Date), 2, 2, 1, 60, N'Nâng cao kĩ năng giải tích với giải tích phức')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (13, N'Giải tích II', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học Giải tích II là một khóa học tiên tiến trong lĩnh vực toán học, thông thường được dạy trong các trường đại học và cao đẳng. Khóa học này nhằm cung cấp cho sinh viên kiến ​​thức về các chủ đề toán học tiên tiến như: tích phân đa biến, chuỗi công bội, dãy Fourier và giải phương trình vi phân.

Các chủ đề cụ thể có thể bao gồm:

Tích phân đa biến: Tổng quan về tích phân đa biến, và các công thức tính toán cơ bản.

Chuỗi công bội: Tổng quan về chuỗi công bội và chuỗi Taylor, các định lý của chúng và ứng dụng của chúng.

Các định lý về tích phân: Bao gồm định lý Fubini và các định lý về tích phân Riemann và Lebesgue.

Dãy Fourier: Tổng quan về dãy Fourier và ứng dụng của chúng trong giải phương trình vi phân.

Phương trình vi phân: Giới thiệu về phương trình vi phân và các phương pháp giải phương trình vi phân đặc biệt, bao gồm phương pháp Picard, phương pháp Laplace và phương pháp sinh.

Trong khóa học này, sinh viên sẽ được thực hành giải quyết các bài tập và ứng dụng thực tế của các chủ đề toán học tiên tiến này. Khóa học Giải tích II là một bước tiến quan trọng trong việc nâng cao kiến ​​thức toán học của sinh viên và chuẩn bị cho các khóa học toán học chuyên sâu hơn sau này.', CAST(N'2022-03-16' AS Date), 2, 2, 1, 60, N'Nâng tầm kiến thức về bộ môn giải tích')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (14, N'Đại số tuyến tính II', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học Đại số tuyến tính II (Linear Algebra II) là một khóa học cao cấp trong lĩnh vực đại số tuyến tính, nó xây dựng trên các kiến thức cơ bản đã được định nghĩa trong khóa học Đại số tuyến tính I.

Trong khóa học này, sinh viên sẽ tìm hiểu về các chủ đề như không gian vector, ánh xạ tuyến tính, ma trận và định thức, giá trị riêng và vector riêng, phân tích giá trị suy biến và ứng dụng của đại số tuyến tính trong thực tế.

Ngoài ra, sinh viên cũng sẽ học cách giải quyết các bài toán liên quan đến các chủ đề này bằng cách sử dụng các kỹ thuật tính toán và kĩ năng lập trình.

Khóa học này có thể được áp dụng rộng rãi trong nhiều lĩnh vực như khoa học máy tính, vật lý, kinh tế học, quản lý kinh doanh và nhiều lĩnh vực khác.', CAST(N'2022-03-17' AS Date), 2, 2, 1, 60, N'Nâng tầm kiến thức về bộ môn đại số tuyến tính')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (15, N'Toán rời rạc II', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học Toán rời rạc II (Discrete Mathematics II) là một khóa học tiên tiến trong lĩnh vực toán học, được thiết kế để giúp sinh viên có kiến thức cơ bản về Toán rời rạc tiếp tục phát triển các kỹ năng và kiến ​​thức chuyên sâu về lý thuyết đồ thị, lý thuyết tối ưu, lý thuyết mã hóa, lý thuyết ngôn ngữ hình thức, lý thuyết thông tin, và một số chủ đề khác.

Khóa học này bao gồm các chủ đề như: Đồ thị và tổ hợp, Các thuật toán trên đồ thị, Lý thuyết tối ưu, Tổ hợp và xác suất, Lập trình tối ưu, Độ phức tạp tính toán, Lý thuyết mã hóa và Giải mã, Ngôn ngữ hình thức và Tính toán lý thuyết thông tin.

Sinh viên sẽ được học các khái niệm và công cụ cơ bản để thiết kế, phân tích và cải tiến các thuật toán, cũng như phát triển các kỹ năng lập trình để giải quyết các vấn đề liên quan đến đồ thị và tối ưu hoá. Ngoài ra, sinh viên sẽ được giới thiệu các khái niệm cơ bản về lý thuyết thông tin và mã hóa để xây dựng các hệ thống bảo mật và truyền thông hiệu quả.

Khóa học Toán rời rạc II là một khóa học quan trọng và rất hữu ích đối với những ai quan tâm đến các chủ đề liên quan đến toán học ứng dụng và khoa học máy tính.', CAST(N'2022-03-18' AS Date), 2, 2, 1, 60, N'Nâng tầm kiến thức về bộ môn toán rời rạc')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (16, N'Hình học giải tích II', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học Hình học giải tích II là một khóa học nâng cao trong ngành Toán học, tập trung vào việc khai thác các kiến thức về hình học và giải tích để giải quyết các bài toán phức tạp. Trong khóa học này, sinh viên sẽ được học về các chủ đề như:

Nghiên cứu về các dạng số phức và ứng dụng của chúng trong hình học.

Các phép biến đổi hình học và tính chất của chúng, bao gồm phép xoay, phép tịnh tiến và phép co giãn.

Phương pháp tính tích phân đường và ứng dụng trong tìm diện tích và thể tích.

Bài toán về đường cong và diện tích bị giới hạn bởi đường cong.

Tính chất của các đường cong nổi tiếng như parabol, elip, hyperbol và cycloid.

Sinh viên sẽ được học thông qua các bài giảng lý thuyết cùng với các bài tập thực hành để áp dụng các kiến thức đã học vào giải quyết các bài toán thực tế. Khóa học này đòi hỏi sinh viên có kiến thức cơ bản về hình học giải tích và các kỹ năng tính toán, do đó nó thường được giảng dạy ở trình độ cao hơn trong chương trình Toán học của các trường đại học.', CAST(N'2022-03-19' AS Date), 2, 2, 1, 60, N'Nâng tầm kiến thức về bộ môn hình học giải tích')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (17, N'Xác suất thống kê II', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học về Xác suất thống kê II là một khóa học tiên tiến trong lĩnh vực xác suất và thống kê. Khóa học này tập trung vào các phương pháp nâng cao để giải quyết các vấn đề phức tạp trong xác suất và thống kê.

Trong khóa học này, sinh viên sẽ được học các chủ đề như:

Các phân phối xác suất liên tục và rời rạc, bao gồm phân phối chuẩn, phân phối Poisson, phân phối nhị thức, phân phối đa thức và phân phối gamma.
Các phương pháp ước lượng tham số, bao gồm phương sai, phương sai trung bình, tỷ lệ, phân phối và trung vị.
Kiểm định giả thuyết và kiểm định độ tin cậy.
Đặc điểm của các phương pháp phân tích dữ liệu, bao gồm phân tích biến thể, phân tích phương sai (ANOVA), phân tích hồi quy tuyến tính và phi tuyến tính.
Áp dụng các phương pháp xác suất và thống kê để giải quyết các vấn đề thực tế.
Khóa học này dành cho sinh viên đã có kiến thức cơ bản về xác suất và thống kê, và cần nâng cao kiến ​​thức để áp dụng vào các lĩnh vực khác nhau như khoa học dữ liệu, kinh doanh, tài chính, y tế và nhiều ngành công nghiệp khác.', CAST(N'2022-03-20' AS Date), 2, 2, 1, 60, N'Nâng tầm kiến thức về bộ môn xác suất thống kê')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (18, N'Lý thuyết nhóm và biểu diễn nhóm', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học về lý thuyết nhóm và biểu diễn nhóm là một khóa học chuyên sâu giúp học viên hiểu rõ về lý thuyết cơ bản của các nhóm và cách biểu diễn chúng. Trong khóa học này, học viên sẽ được giới thiệu về các định nghĩa và thuộc tính cơ bản của nhóm, bao gồm nhóm Abel, nhóm chuẩn, nhóm đơn, nhóm vòng, và nhóm Lie.

Sau đó, học viên sẽ được giảng dạy về các loại biểu diễn nhóm, bao gồm biểu diễn đối xứng, biểu diễn ma trận, biểu diễn biến đổi tuyến tính và biểu diễn suy biến. Họ sẽ học cách phân tích và kết hợp các biểu diễn nhóm, tạo ra các biểu diễn mới và áp dụng chúng vào các ứng dụng trong vật lý, toán học và khoa học máy tính.

Trong quá trình học, học viên sẽ được giải thích các ví dụ cụ thể và các bài toán khó trong lý thuyết nhóm và biểu diễn nhóm. Họ cũng sẽ được thực hành qua các bài tập và dự án nhỏ để trau dồi kỹ năng phân tích và giải quyết vấn đề.

Cuối cùng, khóa học sẽ kết thúc với các bài giảng về ứng dụng của lý thuyết nhóm và biểu diễn nhóm trong các lĩnh vực khác nhau như vật lý hạt nhân, vật lý lượng tử, hoặc lý thuyết mạng neural. Khóa học này sẽ cung cấp cho học viên các kiến thức cần thiết để nghiên cứu và làm việc trong các lĩnh vực này.', CAST(N'2022-03-21' AS Date), 2, 2, 1, 60, N'Hiểu rõ hơn về lý thuyết nhóm và biểu diễn nhóm')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (19, N'Topo vi phân', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học về Topo vi phân sẽ giúp sinh viên hiểu về các khái niệm cơ bản và ứng dụng của Topo vi phân trong toán học và các lĩnh vực liên quan như khoa học máy tính, kinh tế học, vật lý và sinh học.

Trong khóa học này, sinh viên sẽ được giới thiệu về các khái niệm căn bản của Topo vi phân như không gian metric, không gian topological, đỉnh và đường biên, đường cong, tập mở và tập đóng, hàm liên tục và hàm đồng nhất. Sau đó, sinh viên sẽ học về các công cụ và kỹ thuật cần thiết để nghiên cứu lý thuyết Topo vi phân, như bổ đề Urysohn, định lý Tychonoff và định lý Banach-Alaoglu.

Bên cạnh đó, khóa học cũng giúp sinh viên áp dụng Topo vi phân vào các vấn đề thực tế. Ví dụ, trong khoa học máy tính, Topo vi phân được sử dụng để phát hiện các điểm nổi bật trong hình ảnh, xử lý ngôn ngữ tự nhiên và phân tích dữ liệu. Trong kinh tế học, Topo vi phân được sử dụng để nghiên cứu các vấn đề tài chính và tối ưu hoá.

Cuối cùng, khóa học Topo vi phân cũng đưa ra những bài toán thực tế và giúp sinh viên rèn luyện kỹ năng giải quyết vấn đề và suy luận logic.', CAST(N'2022-03-22' AS Date), 2, 2, 1, 60, N'Hiểu rõ hơn về Topo vi phân')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (20, N'Không gian vector Topo', N'img/tempAvatar.jpg', 150000.0000, N'Khóa học về không gian vector topo là một khóa học chuyên sâu trong lĩnh vực toán học, tập trung vào việc nghiên cứu các tính chất của không gian vector và không gian topo. Khóa học này thường được giảng dạy ở trình độ đại học hoặc sau đại học.

Trong khóa học này, sinh viên sẽ được học về các khái niệm và tính chất cơ bản của không gian vector và không gian topo như: độc lập tuyến tính, hạng của một không gian vector, không gian con và không gian làm phẳng, quan hệ giữa căn cứ và chiều của một không gian vector, topology trên không gian vector và các tính chất cơ bản của một không gian topo như định nghĩa liên thông, tiếp xúc và đo đạc.

Sinh viên sẽ được học cách áp dụng các kiến thức và kỹ năng này để giải quyết các bài toán và ứng dụng thực tế, bao gồm các vấn đề về quy hoạch tuyến tính, hệ phương trình đại số tuyến tính, phân tích dữ liệu, thiết kế mạng và nhiều lĩnh vực khác.

Khóa học này sẽ giúp sinh viên phát triển khả năng tư duy logic, trừu tượng hóa và giải quyết vấn đề, cũng như mở rộng kiến thức, hiểu biết và cách tiếp cận trong lĩnh vực toán học.', CAST(N'2022-03-23' AS Date), 2, 3, 1, 60, N'Hiểu rõ hơn về không gian vector Topo')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (21, N'Cơ sở hình học vi phân', N'img/tempAvatar.jpg', 150000.0000, N'Khóa học về Cơ sở hình học vi phân (Foundations of Differential Geometry) là một khóa học tiên tiến trong lĩnh vực Toán học, giúp sinh viên hiểu và ứng dụng các khái niệm cơ bản của Hình học vi phân trong nghiên cứu các vấn đề liên quan đến khoa học máy tính, Khoa học vật liệu, và các lĩnh vực khác.

Khóa học này bao gồm các chủ đề như: Không gian Euclid và không gian riêng biệt, Độ cong và độ cong riêng, Hình học đại số, Các chiếu song song và bề mặt, Lý thuyết đường cong và bề mặt riêng biệt, Các đa tọa độ và các tổ hợp tensor.

Sinh viên sẽ được học các khái niệm cơ bản về định nghĩa các khái niệm như đường cong, bề mặt, độ cong và độ cong riêng, và áp dụng chúng để giải quyết các vấn đề liên quan đến tối ưu hoá, xử lý hình ảnh và cảm nhận thị giác. Ngoài ra, sinh viên sẽ được giới thiệu về các công cụ toán học cơ bản để giải quyết các vấn đề phức tạp trong lĩnh vực này.

Khóa học Cơ sở hình học vi phân là một khóa học quan trọng và rất hữu ích cho những ai quan tâm đến các chủ đề liên quan đến toán học ứng dụng, khoa học máy tính và các ngành công nghệ khác. Nó cũng là một cơ hội tuyệt vời để học các kiến ​​thức và kỹ năng cần thiết để nghiên cứu tiếp các chủ đề liên quan đến Hình học vi phân và các lĩnh vực liên quan.', CAST(N'2022-03-24' AS Date), 2, 3, 1, 90, N'Hiểu rõ hơn về cơ sở hình học vi phân')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (22, N'Hình học đại số', N'img/tempAvatar.jpg', 150000.0000, N'Khóa học hình học đại số là một khóa học toán học cơ bản, nghiên cứu về các đối tượng hình học như điểm, đường, mặt trong không gian và kết hợp với đại số để xây dựng các mô hình đầy đủ hơn. Khóa học này sẽ giúp sinh viên hiểu được các khái niệm căn bản trong hình học đại số, bao gồm hệ tọa độ, phương trình đường thẳng và mặt phẳng, vector, ma trận và định lý Pythagoras.

Trong khóa học, sinh viên sẽ học cách sử dụng các công cụ hình học đại số để giải quyết các vấn đề thực tế trong khoa học máy tính, kỹ thuật, thiết kế đồ họa và khoa học vật lý. Sinh viên cũng sẽ được đào tạo để nắm vững các kỹ năng tính toán trên các hình học đại số để giải các bài toán liên quan đến khối lượng, diện tích, thể tích, độ dốc, độ cong và khoảng cách.

Ngoài ra, khóa học còn giúp sinh viên rèn luyện kỹ năng tư duy logic, phân tích và giải quyết các vấn đề, đặc biệt là trong lĩnh vực khoa học máy tính. Khóa học hình học đại số cung cấp cho sinh viên nền tảng kiến thức chắc chắn và kỹ năng cần thiết để phát triển sự nghiệp trong lĩnh vực này.', CAST(N'2022-03-25' AS Date), 2, 3, 1, 90, N'Hiểu rõ hơn về hình học đại số')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (23, N'Đại số tuyến tính III', N'img/tempAvatar.jpg', 150000.0000, N'Khóa học Đại số tuyến tính III là một khóa học nâng cao về đại số tuyến tính, được thiết kế để giúp sinh viên hiểu sâu hơn về các khái niệm và ứng dụng của đại số tuyến tính trong các lĩnh vực khoa học khác nhau.

Trong khóa học này, sinh viên sẽ được học về các chủ đề như: không gian vector, phép biến đổi tuyến tính, ma trận, giá trị riêng và vectơ riêng, đa thức ma trận và phép đồng nhất. Ngoài ra, sinh viên cũng sẽ được thực hành trên các bài tập và ví dụ để rèn luyện kỹ năng áp dụng kiến thức vào thực tiễn.

Khóa học Đại số tuyến tính III thường được dạy trong chương trình đào tạo các ngành khoa học tự nhiên, kỹ thuật, toán học và các ngành liên quan. Với kiến thức từ khóa học này, sinh viên có thể áp dụng vào nhiều lĩnh vực như khoa học máy tính, xử lý ảnh, điện tử, cơ học, vật lý và nhiều lĩnh vực khác.', CAST(N'2022-03-26' AS Date), 2, 3, 1, 90, N'Làm chủ môn đại số tuyến tính')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (24, N'Lý thuyết số', N'img/tempAvatar.jpg', 150000.0000, N'Khóa học lý thuyết số là một khóa học toán học cung cấp kiến thức về các tính chất của số nguyên và các phép toán liên quan đến chúng. Khóa học này tập trung vào việc nghiên cứu các tính chất cơ bản của số nguyên, ví dụ như cách phân tích một số thành các thừa số nguyên tố, tính chẵn lẻ của số và ước chung lớn nhất của các số.

Ngoài ra, khóa học lý thuyết số cũng bao gồm các chủ đề như lượng giác, hoán vị và kỹ thuật mã hóa. Học viên sẽ được học về những phương pháp để giải các bài toán liên quan đến lý thuyết số, xây dựng các thuật toán và áp dụng chúng trong thực tiễn.

Khóa học lý thuyết số có rất nhiều ứng dụng trong khoa học máy tính, mật mã học và công nghệ thông tin. Nó cũng rất hữu ích cho những người làm việc với các hệ thống mã hóa và bảo mật, cũng như cho những người quan tâm đến các vấn đề liên quan đến an toàn thông tin.', CAST(N'2022-03-27' AS Date), 2, 3, 1, 90, N'Hiểu rõ hơn về lý thuyết số')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (25, N'Giải tích phổ toán tử', N'img/tempAvatar.jpg', 150000.0000, N'Khóa học Giải tích phổ Toán tử là một khóa học chuyên sâu trong lĩnh vực Toán học, giúp sinh viên hiểu và áp dụng các phương pháp của Giải tích phổ để giải quyết các bài toán liên quan đến các phổ toán tử.

Trong khóa học này, sinh viên sẽ được học về các khái niệm cơ bản của Toán tử và phổ Toán tử, bao gồm các khái niệm về các phép biến đổi Fourier và Laplace, ứng dụng của chúng trong việc giải phương trình vi phân và các bài toán liên quan đến các phổ toán tử.

Sinh viên cũng sẽ được học về các kỹ thuật tiên tiến trong Giải tích phổ Toán tử, bao gồm các phương pháp phân tích Vi phân, các phương pháp nghiên cứu tích phân và các phương pháp phân rã thức.

Ngoài ra, khóa học cũng đề cập đến những ứng dụng của Giải tích phổ Toán tử trong các lĩnh vực khác nhau như Vật lý lý thuyết, Cơ học lượng tử và Xử lý tín hiệu.

Tóm lại, khóa học Giải tích phổ Toán tử là một khóa học chuyên sâu, cung cấp cho sinh viên các kiến thức và kỹ năng cần thiết để có thể giải quyết các bài toán liên quan đến các phổ toán tử trong nhiều lĩnh vực khác nhau.', CAST(N'2022-03-28' AS Date), 2, 3, 1, 90, N'Hiểu rõ hơn về giải tích phổ toán tử')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (26, N'Quá trình ngẫu nhiên', N'img/tempAvatar.jpg', 150000.0000, N'Khóa học quá trình ngẫu nhiên là một khóa học đầy thú vị và hữu ích cho những ai muốn tìm hiểu về lý thuyết xác suất và các ứng dụng của nó trong cuộc sống hàng ngày. Trong khóa học này, bạn sẽ học cách mô hình hoá và phân tích các quá trình ngẫu nhiên, từ đó có thể dự đoán các sự kiện trong tương lai.

Bạn sẽ được hướng dẫn chi tiết về lý thuyết xác suất, bao gồm các khái niệm cơ bản như biến ngẫu nhiên, phân phối xác suất và kỳ vọng. Sau đó, bạn sẽ học về các loại quá trình ngẫu nhiên như quá trình Markov, quá trình Poisson và quá trình Gauss.

Trong quá trình học, bạn sẽ được áp dụng các kiến thức đã học để giải quyết các vấn đề thực tế, chẳng hạn như dự đoán số lượng xe cộ đi qua một ngã tư trong một khoảng thời gian nhất định, hoặc tính toán xác suất của một sự kiện nào đó xảy ra.

Cuối cùng, khi hoàn thành khóa học, bạn sẽ có kiến thức và kỹ năng để áp dụng lý thuyết xác suất vào cuộc sống hàng ngày của mình, từ đó giúp bạn ra các quyết định thông minh hơn và hiểu rõ hơn về các khái niệm xác suất trong cuộc sống.', CAST(N'2022-03-29' AS Date), 2, 3, 1, 90, N'Hiểu rõ hơn về quá trình ngẫu nhiên')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (27, N'Điều kiển tối ưu', N'img/tempAvatar.jpg', 150000.0000, N'Khóa học về điều khiển tối ưu là một khóa học chuyên sâu về việc tối ưu hóa các hệ thống động. Khóa học này bao gồm các khái niệm cơ bản về lý thuyết tối ưu và phương pháp điều khiển tối ưu, bao gồm:

Tối ưu hoá: Các khái niệm cơ bản về tối ưu hoá, định nghĩa hàm mục tiêu, ràng buộc và phương pháp giải quyết bài toán tối ưu.

Điều khiển tối ưu: Tổng quan về điều khiển tối ưu, bao gồm các phương pháp như điều khiển quy hoạch tuyến tính (LQR), điều khiển tối ưu dựa trên mô hình (MPC) và phương pháp điều khiển tối ưu dựa trên kế hoạch (OPC).

Ứng dụng: Các ứng dụng của điều khiển tối ưu trong các lĩnh vực như robot, điều khiển tự động, điều khiển động cơ, điều khiển hàng không vũ trụ...

Thực hành: Khóa học cung cấp các bài tập thực hành để giúp sinh viên thực hành và nắm vững kiến thức.

Sinh viên sau khi hoàn thành khóa học sẽ có hiểu biết sâu rộng về lý thuyết tối ưu và phương pháp điều khiển tối ưu, cũng như tìm hiểu được cách áp dụng kiến thức này vào thực tế.', CAST(N'2022-03-30' AS Date), 2, 3, 1, 90, N'Học cách điều khiển tối ưu')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (28, N'Tối ưu rời rạc', N'img/tempAvatar.jpg', 150000.0000, N'Khóa học về tối ưu rời rạc (discrete optimization) nhằm giúp sinh viên và chuyên gia trong lĩnh vực này học được các kỹ năng và công cụ để giải quyết các vấn đề tối ưu hóa trong các bài toán rời rạc.

Khóa học sẽ giới thiệu các phương pháp tối ưu rời rạc cơ bản, bao gồm thủ tục tìm kiếm địa phương, giải thuật di truyền, và phương pháp cắt nhánh và cận. Sinh viên cũng có thể học cách sử dụng các công cụ tối ưu hóa, chẳng hạn như các phần mềm tối ưu hóa động và các thư viện tối ưu hóa.

Ngoài ra, khóa học còn tập trung vào các ứng dụng của tối ưu rời rạc trong các lĩnh vực như kinh tế, khoa học máy tính, và kỹ thuật. Sinh viên sẽ được đưa ra các bài toán thực tế và học cách áp dụng các kỹ thuật tối ưu rời rạc để giải quyết chúng.

Tổng quan lại, khóa học về tối ưu rời rạc cung cấp cho sinh viên một nền tảng vững chắc để giải quyết các vấn đề tối ưu hóa rời rạc, từ đó giúp họ trở thành những chuyên gia trong lĩnh vực này.', CAST(N'2022-03-31' AS Date), 2, 3, 1, 90, N'Học cách tối ưu rời rạc')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (29, N'Lý thuyết ước lượng và kiểm định giả thuyết', N'img/tempAvatar.jpg', 150000.0000, N'Khóa học về Lý thuyết ước lượng và Kiểm định giả thuyết là một khóa học trong lĩnh vực Thống kê, giúp sinh viên hiểu và áp dụng các phương pháp thống kê để ước lượng và kiểm định giả thuyết.

Trong khóa học này, sinh viên sẽ được học về các khái niệm cơ bản của Thống kê như: biến số, tập dữ liệu, trung bình, phương sai, độ lệch chuẩn và phân phối xác suất.

Sinh viên sẽ được hướng dẫn về các phương pháp ước lượng, bao gồm ước lượng điểm và ước lượng khoảng tin cậy. Khóa học cũng đề cập đến các phương pháp kiểm định giả thuyết, bao gồm kiểm định giả thuyết về trung bình, kiểm định giả thuyết về phương sai và kiểm định giả thuyết về tỷ lệ.

Ngoài ra, khóa học còn đưa ra các ứng dụng của Lý thuyết ước lượng và Kiểm định giả thuyết trong các lĩnh vực khác nhau như Kinh tế học, Y học và Khoa học máy tính.

Tóm lại, khóa học về Lý thuyết ước lượng và Kiểm định giả thuyết là một khóa học cung cấp cho sinh viên các kiến thức và kỹ năng cần thiết để có thể áp dụng các phương pháp thống kê để ước lượng và kiểm định những giả thuyết trong nhiều lĩnh vực khác nhau.', CAST(N'2022-04-01' AS Date), 2, 3, 1, 90, N'Nắm rõ lý thuyết ước lượng và kiểm định giả thuyết')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (30, N'Nhập môn lập trình C', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học "Nhập môn lập trình C" là một khóa học cơ bản dành cho những người mới bắt đầu muốn học lập trình. Trong khóa học này, bạn sẽ học được kiến thức cơ bản về ngôn ngữ lập trình C và cách sử dụng những công cụ cơ bản để phát triển các ứng dụng đơn giản.

Khóa học sẽ bắt đầu với việc giới thiệu về C, cú pháp và cách thức hoạt động của ngôn ngữ này. Sau đó, bạn sẽ học về biến, kiểu dữ liệu, câu lệnh điều kiện, vòng lặp và các hàm cơ bản trong C.

Bạn cũng sẽ được hướng dẫn cách sử dụng các công cụ phát triển ứng dụng C cơ bản, bao gồm trình biên dịch và trình gỡ lỗi. Khóa học cũng sẽ trang bị cho bạn kỹ năng debug và tối ưu mã nguồn.

Sau khi hoàn thành khóa học, bạn sẽ có kiến thức cơ bản về lập trình C và có thể tiếp tục học tập về các chủ đề liên quan như lập trình hướng đối tượng và phát triển ứng dụng trên nhiều nền tảng khác nhau.', CAST(N'2022-04-02' AS Date), 1, 1, 1, 30, N'Lập trình cơ bản với ngôn ngữ C')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (31, N'Nhập môn lập trình C++', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học "Nhập môn lập trình C++" là khóa học cơ bản dành cho những người mới bắt đầu học lập trình. Trong khóa học này, bạn sẽ được giới thiệu về ngôn ngữ lập trình C++ và các khái niệm cơ bản của lập trình như biến, hàm, điều kiện và vòng lặp.

Khóa học sẽ bao gồm các chủ đề như cách sử dụng các công cụ phát triển phần mềm để viết mã C++, cách tạo và sử dụng các biến, kiểu dữ liệu, hàm và toán tử trong C++. Bạn cũng sẽ học cách sử dụng các câu lệnh điều kiện và các vòng lặp để điều khiển luồng chương trình.

Điểm nổi bật của khóa học này là các ví dụ minh họa cụ thể và các bài tập thực hành giúp bạn hiểu rõ hơn về cách áp dụng kiến thức vào thực tế. Cuối khóa học, bạn sẽ có kiến thức cơ bản về lập trình C++ để phát triển các ứng dụng đơn giản.', CAST(N'2022-04-03' AS Date), 1, 1, 1, 30, N'Lập trình cơ bản với ngôn ngữ C++')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (32, N'Nhập môn lập trình C#', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học "Nhập môn lập trình C#" được thiết kế để giúp người học có kiến thức cơ bản về lập trình hoặc chưa từng tiếp xúc với ngôn ngữ lập trình C# có thể học và hiểu được các khái niệm cơ bản của ngôn ngữ này.

Trong khóa học, người học sẽ được giới thiệu về cách sử dụng các công cụ lập trình C#, bao gồm Visual Studio và .NET Framework. Ngoài ra, khóa học cũng sẽ giới thiệu về cấu trúc chương trình C# cơ bản, cú pháp và cách viết mã.

Người học sẽ học được cách sử dụng các biến, kiểu dữ liệu, toán tử và điều kiện trong ngôn ngữ lập trình C#. Họ cũng sẽ tìm hiểu về vòng lặp và mảng, cách sử dụng chúng để xử lý dữ liệu.

Cuối cùng, khóa học sẽ giúp người học hiểu các khái niệm cơ bản về hướng đối tượng, và cách sử dụng các lớp, đối tượng, phương thức và thuộc tính.

Với những kiến thức thu được sau khóa học, người học sẽ có khả năng phát triển các ứng dụng đơn giản trong C# và hiểu được cách xây dựng các chương trình lớn hơn.', CAST(N'2022-04-04' AS Date), 1, 1, 1, 30, N'Lập trình cơ bản với ngôn ngữ C#')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (33, N'Nhập môn lập trình Java', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học Nhập môn lập trình Java là khóa học dành cho những người mới bắt đầu học lập trình. Trong khóa học này, bạn sẽ được giới thiệu về cú pháp của ngôn ngữ lập trình Java và các khái niệm cơ bản trong lập trình hướng đối tượng.

Bạn sẽ học cách viết các chương trình đơn giản bằng Java, từ các ví dụ đơn giản đến các chương trình phức tạp hơn. Khóa học sẽ đi sâu vào các chủ đề như biến, kiểu dữ liệu, toán tử, điều kiện, vòng lặp, mảng, chuỗi và phương thức.

Ngoài ra, bạn cũng sẽ được học cách xử lý ngoại lệ và nhập xuất dữ liệu. Điều quan trọng là khóa học sẽ giúp bạn hiểu rõ các khái niệm cơ bản như lớp, đối tượng, kế thừa, đóng gói và trừu tượng hóa.

Khóa học Nhập môn lập trình Java sẽ giúp bạn có được những kiến thức cơ bản để tiếp tục học các khóa học nâng cao hơn trong lĩnh vực lập trình Java.', CAST(N'2022-04-05' AS Date), 1, 1, 1, 30, N'Lập trình cơ bản với ngôn ngữ Java')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (34, N'Nhập môn lập trình Python', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học "Nhập môn lập trình Python" là một khóa học cơ bản dành cho những người mới bắt đầu học lập trình. Trong khóa học này, bạn sẽ được giới thiệu về cách sử dụng ngôn ngữ lập trình Python để tạo ra các chương trình đơn giản.

Khóa học bao gồm các chủ đề như cú pháp và cấu trúc của ngôn ngữ Python, biến và kiểu dữ liệu, câu lệnh điều kiện và vòng lặp, hàm và module, cùng với các thực hành và bài tập để giúp bạn nắm vững kiến thức đã học được.

Sau khi hoàn thành khóa học này, bạn sẽ có kiến thức cơ bản về lập trình Python và sẵn sàng tiếp tục học các khóa học lập trình nâng cao hơn.', CAST(N'2022-04-06' AS Date), 1, 1, 1, 30, N'Lập trình cơ bản với ngôn ngữ Python')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (35, N'Nhập môn cơ sở dữ liệu', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học Nhập môn cơ sở dữ liệu là khóa học cung cấp cho học viên kiến thức cơ bản về quản lý cơ sở dữ liệu (CSDL). Trong khóa học này, học viên sẽ được giới thiệu về các khái niệm và các kỹ thuật cơ bản để thiết kế, triển khai và truy vấn một CSDL.

Các chủ đề cụ thể được bao gồm trong khóa học này bao gồm:

Kiến trúc của CSDL
Ngôn ngữ truy vấn cơ sở dữ liệu SQL
Phân tích và thiết kế cơ sở dữ liệu
Các loại cơ sở dữ liệu quan hệ và phi quan hệ
Đối tượng học viên của khóa học này có thể là sinh viên ngành Công nghệ thông tin, các nhà phát triển phần mềm mới bắt đầu hoặc các chuyên gia công nghệ thông tin mong muốn cải thiện kỹ năng của mình về quản lý cơ sở dữ liệu. Sau khi hoàn thành khóa học, học viên sẽ hiểu được các khái niệm cơ bản và kỹ thuật của quản lý cơ sở dữ liệu, giúp họ trở thành các chuyên gia trong lĩnh vực này.', CAST(N'2022-04-07' AS Date), 1, 1, 1, 30, N'Học cách sử dụng SQL Server')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (36, N'Nhập môn IOT', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học "Nhập môn IoT" là một khóa học cơ bản giúp bạn hiểu về Internet of Things (IoT) và cách thức hoạt động của nó. Trong khóa học này, bạn sẽ được giới thiệu về các thành phần cơ bản của IoT, bao gồm các thiết bị đầu cuối, cảm biến, công nghệ mạng và dịch vụ điện toán đám mây.

Khóa học bắt đầu với việc giải thích khái niệm IoT và tầm quan trọng của nó trong thế giới kỹ thuật số hiện đại. Sau đó, bạn sẽ học cách thiết kế và triển khai các ứng dụng IoT đơn giản sử dụng các nền tảng và công nghệ phổ biến như Arduino, Raspberry Pi và các dịch vụ điện toán đám mây.

Trong khóa học, bạn sẽ được hướng dẫn cách lập trình các thiết bị IoT và cách sử dụng các cảm biến để thu thập dữ liệu từ môi trường xung quanh. Bạn cũng sẽ được giải thích về các mạng IoT và cách chúng hoạt động, bao gồm mạng LAN, mạng Wi-Fi, Bluetooth, ZigBee và LoRaWAN.

Cuối cùng, bạn sẽ được hướng dẫn cách lưu trữ dữ liệu IoT và phân tích nó để đưa ra các thông tin hữu ích. Sau khi hoàn thành khóa học, bạn sẽ có kiến thức cơ bản về IoT và có thể tiếp tục học tập về các chủ đề liên quan như phát triển ứng dụng IoT phức tạp hơn và triển khai các giải pháp IoT cho các doanh nghiệp và tổ chức.', CAST(N'2022-04-08' AS Date), 1, 1, 1, 30, N'Học cách tạo ra một mạch Arduino đơn giản')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (37, N'Nhập môn cấu trúc dữ liệu và giải thuật', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học "Nhập môn cấu trúc dữ liệu và giải thuật" là một khóa học cơ bản dành cho những người mới bắt đầu muốn học về cách tổ chức và xử lý các dữ liệu trong máy tính. Trong khóa học này, bạn sẽ được hướng dẫn về cách sử dụng các cấu trúc dữ liệu phổ biến như mảng, danh sách liên kết, hàng đợi, ngăn xếp, cây và đồ thị để giải quyết các vấn đề thực tế.

Bạn cũng sẽ được giới thiệu về các giải thuật phổ biến như tìm kiếm nhị phân, sắp xếp nhanh, sắp xếp chọn và thuật toán Dijkstra để giải quyết các vấn đề liên quan đến cấu trúc dữ liệu. Khóa học cũng sẽ giúp bạn nắm vững các kỹ thuật thường được sử dụng để phân tích hiệu suất của các giải thuật.

Sau khi hoàn thành khóa học, bạn sẽ có kiến ​​thức cơ bản về cấu trúc dữ liệu và giải thuật và có khả năng áp dụng chúng vào việc giải quyết các vấn đề thực tế trong công việc lập trình. Bạn cũng sẽ có thể tiếp tục học tập về các chủ đề nâng cao hơn trong lĩnh vực này.', CAST(N'2022-04-09' AS Date), 1, 1, 1, 30, N'Học các cấu trúc dữ liệu và thuật toán thông dụng')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (38, N'Nhập môn lập trình hướng đối tượng', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học Nhập môn lập trình hướng đối tượng là một khóa học cơ bản giúp các học viên hiểu và áp dụng các khái niệm cơ bản của lập trình hướng đối tượng (OOP). Khóa học bao gồm các chủ đề như định nghĩa lớp, đối tượng, phương thức và thuộc tính, kế thừa, đa hình, đóng gói và các quy tắc thiết kế OOP.

Trong khóa học này, học viên sẽ được hướng dẫn thông qua các bài tập thực tế, đảm bảo họ có thể áp dụng những kiến thức đã học được vào những ứng dụng thực tế. Ngoài ra, các học viên sẽ được giới thiệu với ngôn ngữ lập trình Java hoặc Python để xây dựng các chương trình hướng đối tượng đơn giản.

Khóa học này phù hợp cho những người mới bắt đầu học lập trình hoặc muốn chuyển sang lập trình hướng đối tượng và mong muốn có kiến thức cơ bản về OOP. Sau khi hoàn thành khóa học, học viên sẽ có thể tự tin trong việc áp dụng OOP vào trong các dự án lớn hơn và phát triển các ứng dụng phức tạp hơn bằng cách sử dụng các ngôn ngữ lập trình OOP khác nhau.', CAST(N'2022-04-10' AS Date), 1, 1, 1, 30, N'Học lập trình hướng đối tượng với Java')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (39, N'Nhập môn cấu trúc và tổ chức máy tính', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học "Nhập môn cấu trúc và tổ chức máy tính" là một khóa học cơ bản dành cho những người mới bắt đầu với lĩnh vực khoa học máy tính. Khóa học này sẽ giúp bạn hiểu được cách thức hoạt động của máy tính, từ các khái niệm căn bản như bộ nhớ, CPU, tín hiệu điện...và cách phân tích cấu trúc và tổ chức của chúng.

Trong khóa học, bạn sẽ được hướng dẫn về các kiến thức cơ bản về cấu trúc và tổ chức của máy tính, bao gồm kiến trúc bộ xử lý, bộ nhớ và thiết bị ngoại vi. Bạn sẽ học cách thiết kế và triển khai các thuật toán cơ bản, đồng thời áp dụng những kiến thức đã học để hiểu rõ hơn về các ứng dụng thực tế của máy tính.

Các chủ đề cụ thể trong khóa học bao gồm: kiến trúc von Neumann, các loại bộ xử lý (CPU), các loại bộ nhớ (RAM, ROM, Cache), các loại thiết bị ngoại vi (bàn phím, chuột, máy in, màn hình,...), cách thức hoạt động của hệ điều hành và phần mềm ứng dụng.

Khóa học này là một bước đầu tuyệt vời cho những người mới bắt đầu với khoa học máy tính, giúp bạn hiểu rõ hơn về cách thức hoạt động của máy tính - một trong những lĩnh vực quan trọng nhất trong thời đại công nghệ số ngày nay.', CAST(N'2022-04-11' AS Date), 1, 1, 1, 30, N'Các lý thuyết cơ bản về cấu trúc và tổ chức máy tính')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (40, N'Lập trình game với Unity', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học "Lập trình game với Unity" sẽ giúp người học có kiến thức cần thiết để thiết kế và phát triển các trò chơi sử dụng công cụ Unity.

Trong khóa học, người học sẽ được giới thiệu về các khái niệm cơ bản của Unity, bao gồm các thành phần cấu tạo nên một trò chơi như đối tượng, ánh sáng, camera và vật liệu. Họ sẽ tìm hiểu cách tạo ra các đối tượng trong trò chơi, thiết lập các thuộc tính và tạo ra các kịch bản.

Khóa học cũng sẽ giúp người học hiểu về cách tạo ra các animating cho các đối tượng trong trò chơi, bao gồm cách tạo ra các animation controller và animator trong Unity. Ngoài ra, người học sẽ tìm hiểu cách tạo ra các hiệu ứng đặc biệt như ánh sáng, âm thanh và hình ảnh.

Cuối cùng, khóa học sẽ giúp người học hiểu về lập trình game với Unity, bao gồm cách sử dụng C# trong Unity để tạo ra các kịch bản và điều khiển các đối tượng trong trò chơi. Người học sẽ học được cách tạo ra các kịch bản điều khiển đối tượng, cách thiết lập các collider và rigidbody, và cách sử dụng các script để tạo ra các trò chơi động.

Với những kiến thức thu được sau khóa học, người học sẽ có khả năng phát triển các trò chơi đơn giản trong Unity và hiểu được cách xây dựng các trò chơi lớn hơn.', CAST(N'2022-04-12' AS Date), 1, 2, 1, 60, N'Lập trình game đơn giản với Unity và C#')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (41, N'Lập trình phần mềm với Window Form', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học về Lập trình phần mềm với Windows Form là một khóa học chuyên sâu giúp bạn học cách phát triển các ứng dụng Windows Desktop chuyên nghiệp. Trong khóa học này, bạn sẽ học được cách sử dụng Framework .NET và ngôn ngữ lập trình C# để tạo ra các giao diện người dùng độc đáo cho các ứng dụng Windows.

Khóa học này bao gồm những kiến thức cơ bản về lập trình, bao gồm cách thiết kế giao diện người dùng, tương tác với các thành phần của hệ thống, đọc và viết dữ liệu vào cơ sở dữ liệu và giao tiếp với các Web Service. Ngoài ra, bạn sẽ cũng được hướng dẫn cách sử dụng các công cụ phát triển phần mềm như Visual Studio để xây dựng các ứng dụng Windows hiệu quả.

Sau khi hoàn thành khóa học, bạn sẽ có năng lực phát triển các ứng dụng Windows đa dạng và chất lượng cao bao gồm các ứng dụng quản lý, ứng dụng desktop, ứng dụng đồ họa, ứng dụng di động và rất nhiều loại ứng dụng khác. Đặc biệt, bạn sẽ có kiến thức và kỹ năng để tiếp tục học tập và phát triển bản thân trong lĩnh vực lập trình phần mềm.', CAST(N'2022-04-13' AS Date), 1, 2, 1, 60, N'Thiết kế và lập trình một ứng dụng đơn giản với Window Form')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (42, N'Lập trình website với ASP.net', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học về Lập trình website với ASP.net là một khóa học thực hành về việc phát triển các ứng dụng web động dựa trên nền tảng Microsoft .NET. Khóa học này cung cấp cho học viên kiến thức và kỹ năng cần thiết để tạo ra các trang web đáp ứng được các yêu cầu của khách hàng.

Trong khóa học này, học viên sẽ được giới thiệu về cấu trúc của một ứng dụng web, những công nghệ mới nhất của ASP.net và những công cụ lập trình cần thiết để xây dựng ứng dụng web. Học viên sẽ được hướng dẫn cách tạo các trang web với các tính năng cơ bản như đăng nhập, đăng ký, quản lý người dùng và quản lý dữ liệu.

Ngoài ra, học viên cũng sẽ học cách tối ưu hóa mã nguồn, quản lý phiên làm việc và bảo mật ứng dụng web. Khóa học cũng bao gồm các chủ đề liên quan đến việc triển khai ứng dụng web, bao gồm cách triển khai trên máy chủ local và cách triển khai trên các môi trường đám mây.

Khóa học về Lập trình website với ASP.net phù hợp cho những người muốn học cách tạo ra các ứng dụng web động chất lượng cao và mong muốn sử dụng ASP.net để xây dựng các ứng dụng web có tính năng phong phú. Học viên không yêu cầu phải có kiến thức về lập trình trước đó, tuy nhiên kiến thức căn bản về lập trình sẽ giúp ích cho việc học khóa học này.', CAST(N'2022-04-14' AS Date), 1, 2, 1, 60, N'Thiết kế và lập trình một website cơ bản với ASP.net')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (43, N'Trí tuệ nhân tạo và máy học', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học về Trí tuệ nhân tạo và Máy học là một khóa học đầy thử thách và hiện đại, giới thiệu các khái niệm, nguyên lý và ứng dụng của trí tuệ nhân tạo và máy học. Khóa học này cung cấp cho học viên kiến thức về các thuật toán của máy học và trí tuệ nhân tạo, bao gồm học máy, mạng nơ-ron, học sâu và nhiều hơn nữa.

Học viên sẽ được hướng dẫn để có thể áp dụng những kiến thức họ học được vào các bài toán thực tiễn trong các lĩnh vực khác nhau như nhận diện hình ảnh, xử lý ngôn ngữ tự nhiên, dự đoán và phân tích dữ liệu. Ngoài ra, học viên cũng sẽ được trang bị kỹ năng lập trình và sử dụng các công cụ phát triển phổ biến như Python, TensorFlow, PyTorch, Keras và Scikit-Learn.

Khóa học này sẽ giúp các học viên có khả năng trở thành những chuyên gia về trí tuệ nhân tạo và máy học có thể tham gia vào các dự án phát triển sản phẩm mới, cải tiến các hệ thống hiện có và giải quyết các bài toán khó trong nhiều lĩnh vực khác nhau.', CAST(N'2022-04-15' AS Date), 1, 2, 1, 60, N'Tìm hiểu về trí tuệ nhân tạo và máy học')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (44, N'Khoa học dữ liệu và phân tích Big Data', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học về Khoa học dữ liệu và phân tích Big Data giúp học viên hiểu được cách sử dụng các công cụ và kỹ thuật phân tích dữ liệu để phát hiện ra những thông tin quan trọng và đưa ra các quyết định có tính thực tiễn. Trong khóa học, học viên sẽ được hướng dẫn cách thu thập, xử lý và phân tích dữ liệu lớn từ các nguồn khác nhau, bao gồm cả dữ liệu có cấu trúc và không có cấu trúc.

Ngoài ra, khóa học cũng giúp học viên nắm được các kỹ thuật phân tích dữ liệu như Machine Learning, Data Mining và Statistical Analysis, giúp họ có thể áp dụng các phương pháp này để tìm kiếm các mối quan hệ giữa dữ liệu và đưa ra dự đoán hoặc khuyến nghị cho các bộ phận khác trong tổ chức.

Khóa học về Khoa học dữ liệu và phân tích Big Data là sự lựa chọn tuyệt vời cho những ai muốn học hỏi và phát triển kỹ năng trong lĩnh vực này. Các học viên sẽ được hướng dẫn bởi những chuyên gia hàng đầu trong lĩnh vực này và có cơ hội thực hành thông qua các dự án thực tế. Sau khi hoàn thành khóa học, học viên sẽ trang bị được kiến thức và kỹ năng cần thiết để bắt đầu sự nghiệp trong lĩnh vực Khoa học dữ liệu và phân tích Big Data.', CAST(N'2022-04-16' AS Date), 1, 2, 1, 60, N'Tìm hiểu về khoa học dữ liệu và Big Data')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (45, N'Bảo mật và đảm bảo thông tin', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học về Bảo mật và Đảm bảo Thông tin là một chương trình đào tạo hoàn chỉnh về các vấn đề liên quan đến an ninh mạng và bảo vệ thông tin. Trong khóa học này, sinh viên sẽ được giới thiệu với các nguy cơ và mối đe dọa tiềm ẩn cho hệ thống thông tin của tổ chức và cách ngăn chặn chúng.

Ngoài ra, khóa học cũng sẽ bao gồm các phương pháp và công nghệ hiện đại để bảo vệ thông tin, bao gồm mã hóa, chứng thực, kiểm soát truy cập và giám sát. Sinh viên sẽ được hướng dẫn cách thực hiện các bài kiểm tra kiểm soát, phân tích rủi ro và xây dựng chiến lược bảo mật cho tổ chức.

Khóa học này sẽ cung cấp cho sinh viên những kỹ năng cần thiết để đảm bảo an toàn và bảo vệ thông tin của tổ chức trong một môi trường ngày càng phức tạp và đầy thách thức của thế giới kỹ thuật số hiện nay.', CAST(N'2022-04-17' AS Date), 1, 2, 1, 60, N'Tìm hiểu về bảo mật và đảm bảo thông tin')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (46, N'Công nghệ Blockchain', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học về Công nghệ Blockchain là một khóa học chuyên sâu về cách hoạt động và ứng dụng của công nghệ blockchain. Trong khóa học này, học viên sẽ được giới thiệu về các khái niệm cơ bản của blockchain, bao gồm cách thức hoạt động của các giao dịch blockchain, các loại blockchain khác nhau và cách chúng có thể được áp dụng trong các lĩnh vực khác nhau.

Khóa học cũng sẽ trang bị cho học viên kiến ​​thức về các ứng dụng blockchain, bao gồm các ví dụ về cách blockchain đã được ứng dụng trong các lĩnh vực như tài chính, y tế và chuỗi cung ứng. Học viên cũng sẽ được hướng dẫn để xây dựng các ứng dụng blockchain đơn giản bằng cách sử dụng các công cụ lập trình phổ biến như Solidity và Ethereum.

Khóa học này sẽ hướng đến các chuyên gia công nghệ, kỹ sư phần mềm, nhà phát triển web và các chuyên gia an ninh mạng muốn tìm hiểu về công nghệ blockchain và các ứng dụng của nó trong thực tiễn. Sau khi hoàn thành khóa học, học viên sẽ có được kiến ​​thức cơ bản về blockchain và cách áp dụng nó trong các ứng dụng thực tế.', CAST(N'2022-04-18' AS Date), 1, 2, 1, 60, N'Tìm hiểu về công nghệ Blockchain')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (47, N'Kiến trúc Đám mây và Ảo hóa', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học về Kiến trúc Đám mây và Ảo hóa là một khóa học tổng quan về các khái niệm cơ bản của kiến trúc đám mây và công nghệ ảo hóa. Khóa học này giải thích chi tiết về kiến trúc đám mây, bao gồm các khái niệm như IaaS, PaaS, SaaS, và các dịch vụ đám mây công cộng, riêng tư và hybrid.

Ngoài ra, khóa học cũng cung cấp cho bạn các khái niệm về ảo hóa, bao gồm các công nghệ ảo hóa máy chủ, ảo hóa mạng và ảo hóa lưu trữ. Bạn sẽ được hướng dẫn cách triển khai các máy ảo, tạo và quản lý mạng ảo, và cách sử dụng các phần mềm quản lý ảo hóa.

Khóa học này còn cung cấp các kỹ thuật và công cụ để hoàn thiện hiệu suất, độ tin cậy, khả năng mở rộng và bảo mật trong kiến trúc đám mây và ảo hóa. Bạn sẽ được hướng dẫn cách xác định và giải quyết các vấn đề hiệu suất của kiến trúc đám mây và ảo hóa.

Với khóa học về Kiến trúc Đám mây và Ảo hóa, bạn sẽ có được nền tảng để triển khai các giải pháp đám mây và ảo hóa trong môi trường thực tế.', CAST(N'2022-04-19' AS Date), 1, 2, 1, 60, N'Tìm hiểu về Kiến trúc Đám mây và Ảo hóa')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (48, N'Tương tác Người - Máy', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học về Tương tác Người - Máy là một khóa học chuyên sâu về lĩnh vực trí tuệ nhân tạo, tập trung vào việc nghiên cứu và phát triển các kỹ thuật để cải thiện tính tương tác giữa người và máy. Khóa học này cung cấp cho sinh viên các kiến thức và kỹ năng cần thiết để thiết kế và phát triển các ứng dụng tương tác người-máy thông minh.

Trong khóa học này, sinh viên sẽ được học các khái niệm cơ bản của trí tuệ nhân tạo, bao gồm học máy, xử lý ngôn ngữ tự nhiên và thị giác máy tính. Sinh viên cũng sẽ được hướng dẫn cách áp dụng các phương pháp này để phát triển các ứng dụng tương tác người-máy như trợ lý ảo, robot thông minh và hệ thống tương tác đa phương tiện.

Khóa học này cũng sẽ đưa ra các thảo luận về các vấn đề liên quan đến đạo đức và an ninh trong tương tác người-máy, giúp sinh viên hiểu rõ hơn về vai trò và trách nhiệm của các nhà phát triển trong việc xây dựng các ứng dụng tương tác người-máy.

Khóa học về Tương tác Người - Máy là một khóa học đầy thử thách và cung cấp cho sinh viên những kỹ năng vượt trội để trở thành các chuyên gia trong lĩnh vực này.', CAST(N'2022-04-20' AS Date), 1, 2, 1, 60, N'Tìm hiểu về Robotics')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (49, N'Thị giác máy tình và Xử lý hình ảnh', N'img/tempAvatar.jpg', 200000.0000, N'Khóa học về Thị giác máy tính và xử lý hình ảnh là một khóa học cơ bản trong lĩnh vực khoa học máy tính và công nghệ thông tin. Khóa học này sẽ giúp cho các học viên hiểu được cách thức hoạt động của thị giác máy tính và các kỹ thuật xử lý hình ảnh.

Trong khóa học, các học viên sẽ được học cách phân tích hình ảnh, trích xuất đặc trưng, giải mã hình ảnh và nhận dạng đối tượng. Họ cũng sẽ được giới thiệu về các thuật toán xử lý hình ảnh phổ biến như OpenCV và Deep Learning để giải quyết các vấn đề liên quan đến hình ảnh.

Ngoài ra, khóa học còn đưa ra các ứng dụng của Thị giác máy tính và xử lý hình ảnh trong thực tế như nhận dạng khuôn mặt, xử lý ảnh y tế, tự động hóa công nghiệp và xe tự hành.

Tổng quan về khóa học này là giúp các học viên hiểu rõ về cách thức hoạt động của thị giác máy tính và các kỹ thuật xử lý hình ảnh, từ đó phát triển các kỹ năng cần thiết để áp dụng trong thực tế và tăng cường khả năng giải quyết các vấn đề liên quan đến hình ảnh.', CAST(N'2022-04-21' AS Date), 1, 3, 1, 90, N'Tìm hiểu về nhận diện hình ảnh với OpenAI')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (50, N'Phát triển và Thiết kế Web Nâng cao', N'img/tempAvatar.jpg', 200000.0000, N'Khóa học về Phát triển và Thiết kế Web Nâng cao là một khóa học chuyên sâu dành cho những người đã có kiến ​​thức cơ bản về lập trình và thiết kế web. Trong khóa học này, bạn sẽ được tìm hiểu các kỹ thuật phát triển web tiên tiến và được đào tạo để xây dựng các ứng dụng web đa nền tảng và động.

Bạn sẽ học cách tạo ra các trang web tương tác sử dụng HTML, CSS, JavaScript và các thư viện phổ biến như ReactJS, AngularJS và VueJS. Bạn cũng sẽ được giới thiệu với các công nghệ back-end như NodeJS và Ruby on Rails để phát triển các ứng dụng web động.

Khóa học cũng sẽ đưa ra các kỹ thuật thiết kế web chuyên sâu để bạn có thể tạo ra các giao diện người dùng đẹp và thân thiện. Bạn sẽ học cách tùy chỉnh các mẫu thiết kế sử dụng CSS và Bootstrap, tạo các hiệu ứng động bằng jQuery và tối ưu hóa trang web của mình cho tốc độ tải nhanh và kích thước trang nhỏ hơn.

Cuối cùng, bạn sẽ được hướng dẫn cách triển khai ứng dụng web của mình trên các nền tảng phổ biến như AWS và Heroku. Sau khi hoàn thành khóa học, bạn sẽ có kiến ​​thức và kỹ năng để thiết kế và phát triển các ứng dụng web đa nền tảng, động và ấn tượng.', CAST(N'2022-04-22' AS Date), 1, 3, 1, 90, N'Học cách phát triển một trang web nâng cao')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (51, N'Ứng dụng và Bảo mật của IoT', N'img/tempAvatar.jpg', 200000.0000, N'Khóa học "Ứng dụng và bảo mật IoT" là một khóa học chuyên sâu về cách áp dụng công nghệ IoT vào các ứng dụng thực tế và đảm bảo an ninh thông tin trong quá trình triển khai. Trong khóa học này, sinh viên sẽ được giới thiệu với các khía cạnh cơ bản của IoT, từ cách hoạt động của các thiết bị IoT đến việc thu thập và xử lý dữ liệu.

Ngoài ra, khóa học cũng tập trung vào các vấn đề về bảo mật và riêng tư trong môi trường IoT. Sinh viên sẽ được hướng dẫn tìm hiểu về các vấn đề như phát hiện xâm nhập, mã hóa dữ liệu và kiểm soát truy cập để đảm bảo an toàn thông tin cho các hệ thống IoT.

Thông qua khóa học này, sinh viên sẽ có cơ hội học hỏi từ các chuyên gia hàng đầu trong lĩnh vực IoT và bảo mật, đồng thời sử dụng các công cụ và kỹ thuật mới nhất để thiết kế, triển khai và quản lý các hệ thống IoT an toàn và hiệu quả.', CAST(N'2022-04-23' AS Date), 1, 3, 1, 90, N'Tìm hiểu về ứng dụng và bảo mật của IoT')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (52, N'Tính toán lượng tử và Mật mã học', N'img/tempAvatar.jpg', 200000.0000, N'Khóa học về Tính toán lượng tử và Mật mã học là một chương trình đào tạo tiên tiến nhằm cung cấp các kiến thức và kỹ năng cần thiết để hiểu và sử dụng các phương pháp tính toán lượng tử trong bảo mật thông tin. Khóa học này cung cấp cho học viên kiến ​​thức cơ bản về lý thuyết lượng tử, thuật toán lượng tử và các ứng dụng của chúng trong mật mã học.

Trong khóa học này, học viên sẽ được giới thiệu với các khái niệm cơ bản về lý thuyết lượng tử như trạng thái lượng tử, phép đo lượng tử và nguyên tắc không xác định Heisenberg. Họ sẽ được hướng dẫn cách áp dụng các phép tính toán lượng tử để giải quyết các bài toán liên quan đến xử lý thông tin.

Sau khi đã có kiến thức cơ bản về lý thuyết lượng tử, học viên sẽ được giải thích về các thuật toán lượng tử như Grover''s algorithm, Shor''s algorithm, và Deutsch-Jozsa algorithm. Họ sẽ được thực hành các phương pháp này và giải quyết các bài toán liên quan đến mật mã học.

Cuối cùng, khóa học sẽ tập trung vào các ứng dụng của tính toán lượng tử trong mật mã học. Học viên sẽ được giới thiệu với các thuật toán mật mã học như BB84 protocol, Quantum key distribution, và Quantum signature schemes. Họ sẽ học cách áp dụng các phương pháp này để xây dựng các hệ thống bảo mật thông tin chống lại các cuộc tấn công.

Với khóa học về Tính toán lượng tử và Mật mã học này, học viên sẽ có kiến thức cơ bản về lý thuyết lượng tử, thuật toán lượng tử và ứng dụng của chúng trong mật mã học. Họ sẽ có khả năng áp dụng những kiến thức này để nghiên cứu và phát triển các giải pháp bảo mật thông tin mới dựa trên tính toán lượng tử.', CAST(N'2022-04-24' AS Date), 1, 3, 1, 90, N'Tìm hiểu về tính toán lượng tử và Mật mã học')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (53, N'Ghi-ta cho người mới bắt đầu', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Ghita là một khóa học dành cho người mới bắt đầu chơi đàn ghita, giúp họ có thể học cách chơi ghita từ những kiến thức cơ bản nhất.

Trong khóa học, bạn sẽ được hướng dẫn về các yếu tố cơ bản của ghita như cách cầm đàn, cách đánh và bấm các nốt nhạc, các kỹ thuật căn bản để tránh sai sót khi chơi, v.v. Bạn sẽ học theo từng bài học, từ dễ đến khó, có bài tập giúp củng cố kiến thức đã học và rèn luyện kỹ năng.

Ngoài ra, các khóa học Ghita thường cung cấp các tài liệu học tập như sách hướng dẫn và video hướng dẫn để bạn có thể tự học tập theo tốc độ của mình.

Tùy vào nhu cầu và mong muốn của bạn, khóa học Ghita có thể dài hoặc ngắn, có thể đi sâu vào những kỹ thuật chơi ghita cao cấp hơn hoặc chỉ tập trung vào các kỹ năng cơ bản. Việc tìm hiểu kỹ năng cơ bản này sẽ giúp bạn có nền tảng vững chắc khi tiến thêm vào những khóa học ghita khó hơn.', CAST(N'2022-04-25' AS Date), 3, 1, 1, 30, N'Học các hợp âm cơ bản của guitar')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (54, N'Piano cho người mới bắt đầu', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Piano cho người mới bắt đầu sẽ giúp bạn có được kiến thức cơ bản và kỹ năng chơi đàn Piano. Trong khóa học, bạn sẽ được giới thiệu về các yếu tố cơ bản của âm nhạc, các nốt nhạc, nhịp điệu và những quy tắc cơ bản trong chơi Piano.

Bạn sẽ bắt đầu bằng cách học cách đặt tay trên bàn phím, vị trí các ngón tay và cách sử dụng các ngón tay để chơi các nốt nhạc. Sau đó, bạn sẽ học cách đánh các nốt nhạc và nhịp điệu cơ bản. Ngoài ra, khóa học cũng sẽ giúp bạn hiểu về các ký hiệu âm nhạc và cách đọc những ký hiệu đó trên bản nhạc.

Trong quá trình học, bạn sẽ được đưa qua các bài học về các bản nhạc đơn giản, từ đó tích lũy kinh nghiệm và luyện tập để phát triển kỹ năng chơi đàn Piano của mình. Khóa học cũng có thể bao gồm các bài học video, tổ chức lớp học trực tuyến hoặc cá nhân, và các bài tập luyện tay.

Khi hoàn thành khóa học này, bạn sẽ có đủ năng lực để chơi các bản nhạc đơn giản và thực hành độc lập. Bạn cũng có thể tiếp tục học Piano trên một cấp độ cao hơn để phát triển kỹ năng của mình.', CAST(N'2022-04-26' AS Date), 3, 1, 1, 30, N'Làm quen với piano và đánh các bài hát đơn giản')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (55, N'Vi-ô-lông cho người mới bắt đầu ', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Vi-ô-lông là một khóa học nhạc cụ dành cho người mới bắt đầu. Nó cung cấp kiến thức cơ bản về vi-ô-lông, từ cách cầm cây gậy và đánh các âm thanh cơ bản đến các kỹ thuật chơi như vibrato và tremolo.

Trong khóa học này, bạn sẽ học các yếu tố cơ bản của âm nhạc như nốt nhạc, giai điệu và nhịp điệu. Bạn sẽ cũng được giới thiệu với các bài hát cơ bản để luyện tập, từ đó phát triển khả năng chơi nhạc của mình.

Ngoài ra, khóa học còn giúp bạn hiểu rõ hơn về lịch sử và văn hoá của vi-ô-lông, các loại vi-ô-lông và phụ kiện đi kèm nó. Cuối cùng, bạn sẽ có cơ hội tham gia vào các buổi biểu diễn và hòa nhạc, giúp bạn phát triển kỹ năng trình diễn của mình.

Tóm lại, nếu bạn muốn học cách chơi vi-ô-lông từ cơ bản đến nâng cao, khóa học Vi-ô-lông là lựa chọn tốt cho bạn.', CAST(N'2022-04-27' AS Date), 3, 1, 1, 30, N'Làm quen với cây đàn violin và chơi các bài hát đơn giản')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (56, N'Trống cho người mới bắt đầu', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học "Trống cho người mới bắt đầu" là một khóa học nhằm giúp cho những người chưa có kinh nghiệm về trống có thể học cách chơi trống. Khóa học này sẽ giới thiệu với bạn các kiến thức cơ bản về trống, từ cách cầm và đánh trống đến cách đọc sheet nhạc.

Trong khóa học này, bạn sẽ học được:

Các kỹ thuật cơ bản để cầm và đánh trống
Cách hiểu và đọc sheet nhạc đơn giản
Tập luyện và phát triển kỹ năng đánh trống căn bản
Ngoài ra, trong khóa học còn có các bài tập và thực hành để giúp bạn ứng dụng các kỹ năng đã học vào thực tế. Với khóa học "Trống cho người mới bắt đầu", bạn sẽ có được kiến thức và kỹ năng cần thiết để bắt đầu tiếp cận việc chơi trống một cách tự tin và thành thạo.', CAST(N'2022-04-28' AS Date), 3, 1, 1, 30, N'Hướng dẫn các kỹ thuật đánh trống cơ bản cho người mới bắt đầu')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (57, N'Sáo cho người mới bắt đầu', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Sáo dành cho người mới bắt đầu sẽ giúp bạn tìm hiểu về nhạc cụ Sáo và hướng dẫn cách chơi Sáo cơ bản. Trong khóa học, bạn sẽ được hướng dẫn về các kỹ thuật cầm Sáo, thở đúng và phát âm các nốt nhạc. Khóa học cũng sẽ giới thiệu cho bạn những kiến thức cơ bản về lý thuyết nhạc và hợp âm.

Bạn sẽ được học các bài hát đơn giản để trau dồi kỹ năng chơi Sáo của mình. Khóa học cũng sẽ cung cấp cho bạn các tài liệu và video hướng dẫn để bạn có thể tự học tập tại nhà sau khi khóa học kết thúc.

Ngoài ra, khóa học sẽ giúp bạn phát triển kỹ năng nghe nhạc và cảm nhận âm nhạc một cách sâu sắc hơn. Bạn sẽ có cơ hội tạo ra những giai điệu đẹp và tinh tế bằng cách kết hợp các nốt nhạc trên Sáo.

Tóm lại, khóa học Sáo cho người mới bắt đầu là một khóa học rất tốt để bắt đầu học chơi nhạc cụ Sáo. Nó sẽ giúp bạn phát triển các kỹ năng cơ bản và giới thiệu cho bạn những kiến thức về lý thuyết nhạc cần thiết để trở thành một nghệ sĩ Sáo tài năng.', CAST(N'2022-04-29' AS Date), 3, 1, 1, 30, N'Làm quen với sáo trúc và chơi các bài nhạc đơn giản')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (58, N'Sắc-xô-phôn cho người mới bắt đầu', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Saxophone cho người mới bắt đầu sẽ giúp bạn có được kiến thức và kỹ năng cơ bản để chơi đàn saxophone. Trong khóa học, bạn sẽ được giới thiệu về các loại đàn saxophone, từ cách lựa chọn và bảo quản đàn đến cách lắp màng, dây và các phụ kiện khác.

Bạn sẽ bắt đầu bằng cách học cách cầm đàn, đặt miệng và thở vào đàn để tạo ra âm thanh. Sau đó, bạn sẽ học cách chơi các nốt nhạc cơ bản, các yếu tố trong kỹ thuật thổi, nghệ thuật phrasing và cách bộc lộ tình cảm thông qua âm nhạc.

Trong quá trình học, bạn sẽ được hướng dẫn qua các bài học về các bản nhạc đơn giản, từ đó tích lũy kinh nghiệm và luyện tập để phát triển kỹ năng chơi đàn saxophone của mình. Khóa học cũng có thể bao gồm các bài học video, tổ chức lớp học trực tuyến hoặc cá nhân, và các bài tập luyện tay.

Ngoài ra, khóa học còn giúp bạn hiểu về lịch sử và các thể loại âm nhạc phổ biến trong chơi đàn saxophone. Bạn sẽ học về các nghệ sĩ saxophone nổi tiếng và cách họ đã ảnh hưởng đến âm nhạc hiện đại.

Khi hoàn thành khóa học này, bạn sẽ có đủ năng lực để chơi các bản nhạc đơn giản và thực hành độc lập. Bạn cũng có thể tiếp tục học saxophone trên một cấp độ cao hơn để phát triển kỹ năng của mình.', CAST(N'2022-04-30' AS Date), 3, 1, 1, 30, N'Hướng dẫn các kỹ thuật thổi kèn cơ bản')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (59, N'Ơ-ku-le-le cho người mới bắt đầu', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Ơ-ku-le-le là một khóa học âm nhạc dành cho người mới bắt đầu, giúp bạn học cách chơi nhạc cụ Ơ-ku-le-le, một loại nhạc cụ gỗ có nguồn gốc từ Hawaii.

Trong khóa học này, bạn sẽ học các kỹ thuật cơ bản của Ơ-ku-le-le, bao gồm cách cầm đàn, đánh các nốt nhạc cơ bản và chuyển đổi giữa các nốt nhạc. Bạn cũng sẽ được hướng dẫn về cách đọc tab âm nhạc để có thể chơi các bài hát trên đàn.

Ngoài ra, khóa học còn giúp bạn hiểu rõ về lịch sử và văn hoá của Ơ-ku-le-le, cũng như học cách chơi các bản nhạc truyền thống của Hawaii và các địa phương khác trên thế giới.

Cuối cùng, khóa học cũng giúp bạn phát triển kỹ năng diễn xuất trên sân khấu bằng cách tập luyện với các bài hát và biểu diễn trước công chúng.

Tóm lại, nếu bạn muốn học cách chơi và hiểu rõ về Ơ-ku-le-le, khóa học này là một lựa chọn tuyệt vời cho bạn, cung cấp cho bạn các kiến thức cơ bản và kỹ năng để bắt đầu chơi nhạc trên đàn.', CAST(N'2022-05-01' AS Date), 3, 1, 1, 30, N'Học các hợp âm ukulele cơ bản')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (60, N'Các kỹ thuật Ghi-ta nâng cao', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học "Các kỹ thuật Ghi-ta nâng cao" là một khóa học dành cho các nghệ sĩ guitar có kinh nghiệm hoặc đã từng học qua khóa học guitar cơ bản và mong muốn phát triển thêm các kỹ thuật chơi guitar nâng cao.

Trong khóa học này, bạn sẽ học được:

Các kỹ thuật chơi đệm giọng (fingerstyle) và đệm đơn (flatpicking)
Các kỹ thuật chơi solo và improvisation
Các kỹ thuật về âm nhạc đương đại, điện tử, jazz và blues
Cách chơi các phong cách như flamenco, classical và bossa nova
Cách luyện tập và phát triển kỹ năng chơi guitar nâng cao
Ngoài ra, trong khóa học này, bạn sẽ được hướng dẫn cách đọc sheet nhạc và tablature và thực hành để ứng dụng các kỹ thuật đã học vào việc chơi guitar nâng cao.

Khóa học "Các kỹ thuật Ghi-ta nâng cao" sẽ giúp bạn trở thành một nghệ sĩ guitar đầy tự tin với các kỹ thuật chơi guitar nâng cao và công nghệ mới nhất.', CAST(N'2022-05-02' AS Date), 3, 2, 1, 60, N'Học các kĩ thuật guitar nâng cao')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (61, N'Các kỹ thuật Piano nâng cao', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Các kỹ thuật Piano nâng cao nhằm giúp cho người học piano tăng cường kỹ năng và kiến thức về âm nhạc, từ đó có thể phát triển sự chuyên nghiệp và truyền cảm hứng đến khán giả. Khóa học này dành cho các pianist đã có kiến thức và kinh nghiệm chơi đàn, và muốn tiếp tục phát triển khả năng của mình.

Trong khóa học này, người học sẽ được giới thiệu với các kỹ thuật chơi đàn nâng cao, bao gồm:

Kỹ thuật pedal: Học viên sẽ được hướng dẫn sử dụng pedal để tạo ra các hiệu ứng âm thanh đặc biệt, tăng tính cảm xúc và sắc thái của bản nhạc.

Kỹ thuật phối hợp tay trái và tay phải: Học viên sẽ tập trung vào việc phối hợp tay trái và tay phải để tạo ra những bản nhạc đầy đủ và sống động hơn.

Kỹ thuật chuyển nhanh giữa các nốt nhạc: Học viên sẽ học các kỹ thuật để chuyển nhanh và chính xác giữa các nốt nhạc trong bản nhạc.

Kỹ thuật chơi đệm: Học viên sẽ tìm hiểu về các kỹ thuật chơi đệm để tăng khả năng sáng tạo và biến đổi bản nhạc.

Kỹ thuật cải tiến việc chơi bản nhạc: Học viên sẽ được hướng dẫn cách cải tiến việc chơi bản nhạc, như thêm giai điệu, tạo ra các phần solo và tự do sáng tạo trên bản nhạc đã có sẵn.

Khóa học này cũng cung cấp cho học viên những bài tập và bản nhạc để tập luyện, giúp họ phát triển kỹ năng và khả năng chơi đàn piano của mình.', CAST(N'2022-05-03' AS Date), 3, 2, 1, 60, N'Học các kĩ thuật piano nâng cao')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (62, N'Biểu diễn Vi-ô-lông nâng cao', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Biểu diễn Vi-ô-lông nâng cao sẽ giúp bạn phát triển kỹ năng biểu diễn và cải thiện khả năng chơi đàn Vi-ô-lông của mình. Trong khóa học này, bạn sẽ được hướng dẫn về các kỹ thuật biểu diễn chuyên sâu như vibrato, staccato, legato, phrasing và các kỹ thuật tròn âm.

Bạn sẽ được giới thiệu về các bản nhạc nâng cao và khó khăn hơn, từ đó tích lũy kinh nghiệm và luyện tập để phát triển kỹ năng của mình. Khóa học cũng sẽ giúp bạn hiểu rõ hơn về các phương pháp học tập hiệu quả, cách phân tích và thực hiện bản nhạc, cách tiếp cận với các thể loại âm nhạc khác nhau và làm thế nào để phát triển phong cách biểu diễn riêng của mình.

Ngoài ra, khóa học sẽ giúp bạn rèn luyện kỹ năng dùng tai nghe để cảm nhận âm nhạc, giúp bạn có thể đưa ra các quyết định đúng đắn về điệu và tốc độ phù hợp khi biểu diễn.

Khóa học Biểu diễn Vi-ô-lông nâng cao có thể bao gồm các lớp học trực tuyến hoặc cá nhân với giáo viên giàu kinh nghiệm, các buổi thảo luận về kỹ thuật và phong cách biểu diễn, các buổi tập trung thực hành và các buổi biểu diễn công cộng.

Khi hoàn thành khóa học này, bạn sẽ có khả năng biểu diễn các bản nhạc khó hơn và phát triển phong cách biểu diễn riêng của mình. Bạn cũng có thể tiếp tục học tập và phát triển kỹ năng của mình trong các khóa học Vi-ô-lông chuyên sâu khác.', CAST(N'2022-05-04' AS Date), 3, 2, 1, 60, N'Học cách trình diễn violin')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (63, N'Sáng tác Sắc-xô-phôn nâng cao', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Sáng tác Saxophone nâng cao là một khóa học dành cho những người chơi saxophone có kinh nghiệm và mong muốn tìm hiểu về quá trình sáng tác nhạc cho saxophone. Khóa học này giúp học viên nắm vững các kiến thức cơ bản về lý thuyết âm nhạc, từ đó phát triển và ứng dụng các kỹ năng sáng tác để tạo ra những tác phẩm saxophone độc đáo và sáng tạo.

Trong khóa học này, học viên sẽ được giảng dạy các kỹ năng sáng tác như phát triển ý tưởng, viết nhạc và soạn phần cho saxophone. Họ cũng sẽ được hướng dẫn về các kỹ thuật biểu diễn âm nhạc để có thể tạo ra những bản nhạc thật đầy cảm xúc.

Ngoài ra, khóa học còn tập trung vào việc nghiên cứu và phân tích các tác phẩm saxophone của các nghệ sĩ nổi tiếng, từ đó học viên có thể học hỏi và áp dụng vào quá trình sáng tác của mình.

Khóa học Sáng tác Saxophone nâng cao sẽ giúp học viên phát triển kỹ năng sáng tác và biểu diễn nhạc cụ saxophone, đồng thời mở rộng kiến thức về âm nhạc để có thể tự tin sáng tác những bản nhạc độc đáo của riêng mình.', CAST(N'2022-05-05' AS Date), 3, 2, 1, 60, N'Học cách sáng tác một bản nhạc Sắc-xô-phôn hay')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (64, N'Kỹ thuật Trống nâng cao', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học về Kỹ thuật Trống nâng cao sẽ giúp cho những người đã có kiến thức cơ bản về trống hoặc đã từng tập luyện trống có thể tiếp cận và phát triển kỹ thuật của mình lên một tầm cao mới.

Trong khóa học này, học viên sẽ được giảng dạy về các kỹ thuật chơi trống nâng cao như: ghost notes, polyrhythms, linear drumming, phrasing, hi-hat control, foot technique, improvisation, và nhiều kỹ thuật khác. Họ cũng sẽ học cách phối hợp và đồng điệu cùng các nhạc công khác trong một ban nhạc.

Ngoài ra, học viên sẽ được trang bị kiến thức về lý thuyết âm nhạc để có thể hiểu rõ hơn cách sử dụng những kỹ thuật này trong một bài hát cụ thể.

Khóa học sẽ cung cấp cả lý thuyết và thực hành, qua đó giúp học viên phát triển kỹ năng chơi trống của mình lên một tầm cao mới và trở thành một nhạc công trống nâng cao.', CAST(N'2022-05-06' AS Date), 3, 2, 1, 60, N'Các kỹ thuật nâng cao khi đánh trống')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (65, N'Biểu diễn Sáo nâng cao', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Biểu diễn Sáo nâng cao nhằm giúp cho người học sáo tăng cường kỹ năng và kiến thức về âm nhạc, từ đó có thể phát triển sự chuyên nghiệp và truyền cảm hứng đến khán giả. Khóa học này dành cho các người chơi sáo đã có kiến thức và kinh nghiệm chơi đàn, và muốn tiếp tục phát triển khả năng của mình.

Trong khóa học này, người học sẽ được giới thiệu với các kỹ thuật biểu diễn sáo nâng cao, bao gồm:

Kỹ thuật thổi: Học viên sẽ được hướng dẫn các kỹ thuật thổi sáo để tạo ra các hiệu ứng âm thanh đặc biệt, tăng tính cảm xúc và sắc thái của bản nhạc.

Kỹ thuật thở và phối hợp hơi: Học viên sẽ tập trung vào việc phối hợp thở và hơi để tạo ra những bản nhạc đầy đủ và sống động hơn.

Kỹ thuật chuyển nhanh giữa các nốt nhạc: Học viên sẽ học các kỹ thuật để chuyển nhanh và chính xác giữa các nốt nhạc trong bản nhạc.

Kỹ thuật trình diễn: Học viên sẽ tìm hiểu về các kỹ thuật trình diễn để tăng khả năng sáng tạo và biến đổi bản nhạc.

Kỹ thuật cải tiến việc biểu diễn: Học viên sẽ được hướng dẫn cách cải tiến việc biểu diễn, như thêm giai điệu, tạo ra các phần solo và tự do sáng tạo trên bản nhạc đã có sẵn.

Khóa học này cũng cung cấp cho học viên những bài tập và bản nhạc để tập luyện, giúp họ phát triển kỹ năng và khả năng biểu diễn sáo của mình.', CAST(N'2022-05-07' AS Date), 3, 2, 1, 60, N'Học các kĩ thuật biểu diễn sáo nâng cao')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (66, N'Nhạc cụ dân tộc Việt Nam', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Nhạc cụ dân tộc Việt Nam sẽ giúp bạn hiểu và trải nghiệm âm nhạc dân tộc đặc trưng của Việt Nam thông qua việc tìm hiểu về các loại nhạc cụ dân tộc và cách chơi chúng.

Trong khóa học này, bạn sẽ được giới thiệu với các loại nhạc cụ dân tộc, bao gồm đàn bầu, đàn tranh, đàn nguyệt, đàn tỳ bà và nhiều loại nhạc cụ khác. Bạn sẽ được hướng dẫn về cách thức chơi nhạc cụ, từ cách cầm đàn, điệu nhảy của ngón tay đến cách kết hợp các âm thanh để tạo ra âm nhạc đẹp mắt.

Ngoài ra, khóa học cũng sẽ giúp bạn hiểu rõ hơn về lịch sử và văn hóa dân tộc Việt Nam, từ đó có thể tìm hiểu sâu hơn về ý nghĩa của âm nhạc dân tộc và cách áp dụng trong việc biểu diễn.

Khóa học Nhạc cụ dân tộc Việt Nam có thể bao gồm các lớp học trực tuyến hoặc cá nhân với giáo viên giàu kinh nghiệm, các buổi thảo luận về lịch sử và văn hóa dân tộc, các buổi tập trung thực hành và các buổi biểu diễn công cộng.

Khi hoàn thành khóa học này, bạn sẽ có kiến thức về các loại nhạc cụ dân tộc Việt Nam và cách chơi chúng. Bạn cũng có thể tiếp tục học tập và phát triển kỹ năng của mình trong các khóa học Nhạc cụ dân tộc khác, hoặc áp dụng kiến thức đã được học để biểu diễn âm nhạc dân tộc đặc trưng của Việt Nam.', CAST(N'2022-05-08' AS Date), 3, 2, 1, 60, N'Tìm hiểu về các loại nhạc cụ dân tộc Việt Nam')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (67, N'Biểu diễn và sáng tác nhạc', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học Biểu diễn và sáng tác nhạc là một khóa học đa dạng, giúp các học viên nắm vững cả kỹ năng biểu diễn và sáng tác nhạc. Trong khóa học này, học viên sẽ được hướng dẫn cách biểu diễn các thể loại nhạc khác nhau trên nhiều loại nhạc cụ khác nhau, bao gồm cả piano, guitar, violin và các nhạc cụ gõ. Họ sẽ được hướng dẫn về các kỹ thuật biểu diễn, từ cách cầm nhạc cụ, cách đánh các nốt nhạc đến cách di chuyển trên sân khấu.

Bên cạnh đó, học viên sẽ được giới thiệu với các kiến thức cơ bản về lý thuyết âm nhạc, từ đó phát triển khả năng sáng tác nhạc của mình. Khóa học này sẽ giúp học viên nắm vững các kỹ năng sáng tác như phát triển ý tưởng, viết nhạc và soạn phần cho các loại nhạc cụ khác nhau. Họ cũng sẽ được hướng dẫn về cách xây dựng các giai điệu, tạo động lực cho bản nhạc và cách sử dụng các công cụ sáng tạo để tạo ra những bản nhạc độc đáo.

Ngoài ra, khóa học này cũng tập trung vào việc thực hành sáng tác và biểu diễn nhạc trực tiếp. Học viên sẽ được giảng dạy về cách thu âm và sản xuất âm nhạc chuyên nghiệp để có thể hoàn thiện các bản nhạc của mình.

Tóm lại, khóa học Biểu diễn và sáng tác nhạc là một khóa học đa dạng và toàn diện giúp các học viên nắm vững kỹ năng biểu diễn và sáng tác nhạc, từ đó phát triển sự nghiệp trong lĩnh vực âm nhạc.', CAST(N'2022-05-09' AS Date), 3, 3, 1, 90, N'Hướng dẫn biểu diễn và sáng tác nhạc cho nghệ sĩ')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (68, N'Sản xuất nhạc và kỹ thuật âm thanh', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học Sản xuất nhạc và kỹ thuật âm thanh là một khóa học toàn diện giúp học viên nắm vững các kiến thức và kỹ năng cần thiết để sản xuất, sáng tác và phối nhạc chuyên nghiệp.

Trong khóa học này, học viên sẽ được giảng dạy về các công cụ, phần mềm và thiết bị cần thiết để sản xuất, chỉnh sửa và phối nhạc. Họ sẽ học cách lựa chọn các loại âm thanh và hiệu ứng để tạo ra các bản nhạc chất lượng cao và đồng thời giảm thiểu tiếng ồn và nhiễu trong quá trình sản xuất.

Ngoài ra, học viên sẽ được hướng dẫn về các kỹ thuật chuyên sâu trong việc mix và master bài hát để đưa chúng lên một tầm cao mới. Khóa học cũng cung cấp cho học viên kiến thức về lý thuyết âm nhạc và cách áp dụng nó trong quá trình sản xuất.

Học viên sẽ được thực hành qua nhiều bài tập và dự án thực tế để có thể áp dụng các kỹ thuật đã học vào sản xuất và phối nhạc thực tế. Khóa học cũng sẽ giúp học viên phát triển kỹ năng làm việc độc lập và đồng thời cũng cung cấp cho họ các kỹ năng giao tiếp và làm việc trong một dự án nhóm.

Sau khi hoàn thành khóa học, học viên sẽ có kiến thức cơ bản và kỹ năng chuyên sâu để sản xuất và phối nhạc chuyên nghiệp, từ đó có thể phát triển sự nghiệp của mình trong ngành âm nhạc.', CAST(N'2022-05-10' AS Date), 3, 3, 1, 90, N'Thành thạo phương thức sản xuất nhạc và các kĩ thuật âm thanh')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (69, N'Kinh doanh âm nhạc và khởi nghiệp', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học Kinh doanh âm nhạc và khởi nghiệp là một khóa học giúp các sinh viên, người yêu âm nhạc hoặc những người đam mê kinh doanh có thể hiểu rõ hơn về cách kinh doanh trong ngành âm nhạc. Khóa học này sẽ cung cấp cho học viên kiến thức về quản lý kinh doanh, tài chính, tiếp thị, phân tích thị trường và xây dựng thương hiệu trong lĩnh vực âm nhạc.

Nội dung của khóa học bao gồm:

Giới thiệu lĩnh vực kinh doanh âm nhạc: Đây là phần giới thiệu tổng quan về ngành kinh doanh âm nhạc, từ đó học viên có thể hiểu rõ hơn về cơ hội và thách thức mà ngành này đem lại.

Quản lý kinh doanh âm nhạc: Phần này sẽ cung cấp cho học viên kiến thức về quản lý kinh doanh trong ngành âm nhạc, từ việc lập kế hoạch kinh doanh, quản lý tài chính, đẩy mạnh chiến lược marketing và xây dựng chiến lược phát triển doanh nghiệp.

Tài chính và đầu tư: Phần này cung cấp cho học viên kiến thức cơ bản về tài chính của doanh nghiệp âm nhạc, từ việc quản lý ngân sách, đầu tư và chiến lược tài chính.

Tiếp thị và phân tích thị trường: Học viên sẽ được giới thiệu các kỹ thuật phân tích thị trường để hiểu hơn về yêu cầu của khách hàng và đối thủ cạnh tranh, từ đó xử lý và đưa ra các giải pháp kinh doanh phù hợp.

Xây dựng thương hiệu: Phần này sẽ giúp học viên hiểu thêm về ý nghĩa của việc xây dựng thương hiệu trong ngành âm nhạc, từ việc định vị thương hiệu, phát triển logo và thông điệp quảng cáo.

Khóa học cũng sẽ đưa ra một số ví dụ thực tế và bài tập để học viên có thể áp dụng các kiến thức đã học vào thực tế. Sau khi hoàn thành khóa học, học viên sẽ có được kiến thức cơ bản để khởi động và vận hành một doanh nghiệp âm nhạc theo cách chuyên nghiệp.', CAST(N'2022-05-11' AS Date), 3, 3, 1, 90, N'Làm sao để bắt đầu kinh doanh âm nhạc và khởi nghiệp')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (70, N'Giáo dục âm nhạc và nghiên cứu giảng dạy', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học Giáo dục âm nhạc và nghiên cứu giảng dạy sẽ giúp bạn hiểu rõ hơn về vai trò của âm nhạc trong giáo dục và các phương pháp giảng dạy hiệu quả trong lĩnh vực này.

Trong khóa học này, bạn sẽ được giới thiệu với các lý thuyết và phương pháp giảng dạy âm nhạc hiện đại nhất, bao gồm cả cách thiết kế và triển khai các chương trình giảng dạy âm nhạc cho các cấp độ từ mầm non đến đại học. Bạn sẽ tìm hiểu cách sử dụng công nghệ để tăng tính tương tác và hiệu quả trong giảng dạy âm nhạc, cũng như cách đánh giá và đo lường kết quả học tập của học sinh.

Ngoài ra, khóa học sẽ giúp bạn hiểu rõ hơn về cách phát triển và thúc đẩy tư duy sáng tạo của học sinh thông qua âm nhạc. Bạn sẽ được hướng dẫn về cách tổ chức các hoạt động giáo dục âm nhạc để khuyến khích học sinh tìm kiếm và phát triển tài năng âm nhạc của mình.

Khóa học Giáo dục âm nhạc và nghiên cứu giảng dạy có thể bao gồm các lớp học trực tuyến hoặc cá nhân với giáo viên giàu kinh nghiệm, các buổi thảo luận về các chủ đề liên quan đến giáo dục âm nhạc, các buổi tập trung thực hành và các buổi giảng dạy thực tế.

Khi hoàn thành khóa học này, bạn sẽ có kiến thức và kỹ năng để thiết kế và triển khai các chương trình giảng dạy âm nhạc hiệu quả và khuyến khích sự phát triển tư duy sáng tạo của học sinh. Bạn cũng có thể áp dụng kiến thức đã được học để phát triển sự nghiệp trong lĩnh vực giáo dục âm nhạc hoặc tổ chức các hoạt động giáo dục cho cộng đồng.', CAST(N'2022-05-12' AS Date), 3, 3, 1, 90, N'Nghiên cứu về các phương pháp giáo dục âm nhạc và ứng dụng thực tiễn')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (71, N'Tiếng Anh cho người mới bắt đầu', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Tiếng Anh cho người mới bắt đầu là một khóa học giúp các học viên có thể học và sử dụng tiếng Anh cơ bản trong cuộc sống hàng ngày. Khóa học này giúp người học tiếng Anh phát triển khả năng nghe, nói, đọc và viết thông qua các hoạt động và bài tập thực tế.

Trong khóa học này, học viên sẽ được giới thiệu với các kiến thức cơ bản như cách phát âm, từ vựng, ngữ pháp, cấu trúc câu và các kỹ năng giao tiếp cơ bản. Họ cũng sẽ được hướng dẫn cách sử dụng tiếng Anh trong các tình huống thường gặp như mua sắm, đặt phòng khách sạn, đi du lịch, trò chuyện với bạn bè và đồng nghiệp.

Ngoài ra, học viên cũng sẽ học cách đọc hiểu văn bản tiếng Anh và viết các bài luận ngắn đơn giản. Khóa học này cung cấp cho học viên nhiều cơ hội thực hành, bao gồm cả các hoạt động nhóm và cá nhân để giúp họ cải thiện khả năng ngôn ngữ của mình.

Tóm lại, khóa học Tiếng Anh cho người mới bắt đầu là một khóa học cơ bản, giúp các học viên phát triển kỹ năng sử dụng tiếng Anh trong cuộc sống hàng ngày và chuẩn bị cho những khóa học tiếng Anh cao cấp hơn trong tương lai.', CAST(N'2022-05-13' AS Date), 4, 1, 1, 30, N'Làm quen với môn Tiếng Anh')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (72, N'Tiếng Nhật cho trình độ N5', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Tiếng Nhật cho trình độ N5 là một khóa học cơ bản, giúp người học có thể hiểu và sử dụng các từ vựng, ngữ pháp và ký hiệu kanji đơn giản trong Tiếng Nhật.

Trong khóa học này, người học sẽ được giảng dạy về cách giao tiếp cơ bản trong Tiếng Nhật, bao gồm cách chào hỏi, giới thiệu bản thân và nhắn tin. Người học sẽ học cách đọc và viết các ký hiệu hiragana, katakana và khoảng 100 ký hiệu kanji thông dụng.

Ngoài ra, khóa học cũng sẽ tập trung vào việc đọc hiểu và nghe hiểu tiếng Nhật đơn giản. Người học sẽ học cách đọc và hiểu các câu đơn giản theo chủ đề như gia đình, thực phẩm, mua sắm, du lịch và nghề nghiệp.

Họ cũng sẽ được giới thiệu với các thuật ngữ cơ bản của ngữ pháp Nhật Bản và học cách xây dựng các câu đơn giản theo thứ tự từ. Khóa học cũng sẽ tập trung vào việc luyện tập phát âm chính xác và sử dụng các từ vựng, ngữ pháp và ký hiệu kanji đúng cách.

Sau khi hoàn thành khóa học, người học sẽ có thể hiểu và sử dụng được các từ vựng, ngữ pháp và ký hiệu kanji đơn giản trong Tiếng Nhật, đủ để giao tiếp cơ bản với người Nhật. Họ cũng sẽ có thể đọc và hiểu được các văn bản và tin tức đơn giản bằng Tiếng Nhật.', CAST(N'2022-05-14' AS Date), 4, 1, 1, 30, N'Ngữ pháp và từ vựng Tiếng Nhật cơ bản')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (73, N'Tiếng Anh cho người đi làm', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Tiếng Anh cho người đi làm thường được thiết kế để cung cấp cho học viên các kỹ năng cần thiết để giao tiếp hiệu quả trong môi trường làm việc bằng Tiếng Anh. Khóa học này có thể bao gồm các nội dung như:

Từ vựng và ngữ pháp cơ bản: Học viên sẽ được giới thiệu các từ vựng và ngữ pháp cơ bản để sử dụng trong các tình huống giao tiếp văn phòng.

Kỹ năng nghe và nói: Học viên sẽ được rèn luyện kỹ năng nghe hiểu và nói Tiếng Anh thông qua các hoạt động luyện tập và thực hành.

Giao tiếp trong công việc: Học viên sẽ học cách giao tiếp trong các tình huống liên quan đến công việc, chẳng hạn như thảo luận với đồng nghiệp, trình bày ý kiến, thuyết trình...

Viết văn bản công việc: Học viên sẽ được hướng dẫn viết email, báo cáo, tin nhắn và các tài liệu khác liên quan đến công việc.

Kỹ năng xử lý thông tin: Học viên sẽ học cách đọc và hiểu các tài liệu văn phòng, báo cáo, hợp đồng...

Cải thiện phát âm: Học viên sẽ được hướng dẫn cách phát âm chuẩn và diễn đạt rõ ràng.

Khóa học Tiếng Anh cho người đi làm có thể được tổ chức linh hoạt, với các lịch học và thời gian học phù hợp với lịch trình công việc của học viên. Ngoài ra, các khóa học này thường được giảng dạy bởi các giáo viên có kinh nghiệm trong việc dạy Tiếng Anh cho người đi làm và sử dụng phương pháp học tập hiệu quả để giúp học viên tiến bộ nhanh chóng.', CAST(N'2022-05-15' AS Date), 4, 1, 1, 30, N'Các câu giao tiếp thông dụng bằng Tiếng Anh trong môi trường làm việc')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (74, N'Tiếng Pháp ngữ pháp và từ vựng cơ bản', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Tiếng Pháp ngữ pháp và từ vựng cơ bản sẽ giúp bạn hiểu và sử dụng tiếng Pháp một cách chính xác, tự tin và lưu loát hơn. Trong khóa học này, bạn sẽ được giới thiệu với các quy tắc ngữ pháp cơ bản của tiếng Pháp và học cách sử dụng các từ vựng phổ biến trong giao tiếp hàng ngày.

Ban đầu, khóa học sẽ bắt đầu từ những kiến thức căn bản về chữ cái, số đếm, cách nói ngày tháng, thời gian và các từ vựng hàng ngày. Sau đó, khóa học sẽ giới thiệu cho bạn các quy tắc ngữ pháp cơ bản như thì hiện tại đơn, quá khứ đơn, tương lai đơn, cách sử dụng tính từ và danh từ, cách sử dụng giới từ, và các câu hỏi thông dụng.

Bạn sẽ được học qua các bài tập thực hành để có thể áp dụng kiến thức đã học vào thực tế. Bên cạnh đó, khóa học cũng sẽ cung cấp cho bạn các tài liệu bổ sung như sách giáo khoa, video hướng dẫn và bài kiểm tra để giúp bạn nâng cao trình độ tiếng Pháp của mình.

Khóa học Tiếng Pháp ngữ pháp và từ vựng cơ bản thích hợp cho những người mới bắt đầu học tiếng Pháp hoặc những người đã có chút kiến thức về tiếng Pháp và muốn nâng cao trình độ của mình. Sau khi hoàn thành khóa học này, bạn sẽ có thể hiểu và sử dụng tiếng Pháp một cách chính xác, tự tin và lưu loát hơn trong giao tiếp hàng ngày.', CAST(N'2022-05-16' AS Date), 4, 1, 1, 30, N'Nắm chắc ngữ pháp cơ bản của Tiếng Pháp và một số từ vựng phổ biến')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (75, N'Tiếng Đức ngữ pháp và từ vựng cơ bản', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Tiếng Đức ngữ pháp và từ vựng cơ bản là một khóa học giúp các học viên có thể hiểu và sử dụng tiếng Đức cơ bản. Khóa học này tập trung vào việc giới thiệu ngữ pháp và từ vựng cơ bản để giúp học viên xây dựng cơ sở vững chắc cho việc học tiếng Đức.

Trong khóa học này, học viên sẽ được giới thiệu với các kiến thức cơ bản như cách phát âm, bảng chữ cái, cấu trúc câu đơn giản và các dạng động từ cơ bản. Họ cũng sẽ được hướng dẫn sử dụng các từ vựng cơ bản để giao tiếp trong các tình huống thông thường như đi mua sắm, đặt phòng khách sạn, đi du lịch và trò chuyện với bạn bè.

Ngoài ra, học viên cũng sẽ học cách đọc và viết các câu đơn giản, bao gồm cả việc áp dụng các ngữ pháp và từ vựng đã học vào việc xây dựng câu. Họ cũng sẽ được hướng dẫn cách sử dụng các từ liên kết để liên kết các ý tưởng trong bài viết.

Khóa học Tiếng Đức ngữ pháp và từ vựng cơ bản cung cấp cho học viên nhiều cơ hội thực hành, bao gồm cả các hoạt động nhóm và cá nhân để giúp họ cải thiện khả năng tiếng Đức của mình.

Tóm lại, khóa học Tiếng Đức ngữ pháp và từ vựng cơ bản là một khóa học cơ bản, giúp các học viên phát triển kỹ năng sử dụng tiếng Đức trong cuộc sống hàng ngày và chuẩn bị cho những khóa học tiếng Đức cao cấp hơn trong tương lai.', CAST(N'2022-05-17' AS Date), 4, 1, 1, 30, N'Nắm chắc ngữ pháp cơ bản của Tiếng Đức và một số từ vựng phổ biến')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (76, N'Tiếng Nhật cho trình độ N4', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Tiếng Nhật cho trình độ N4 là một khóa học nâng cao, giúp người học có thể tiếp cận với những cấu trúc ngữ pháp và từ vựng phức tạp hơn trong Tiếng Nhật.

Trong khóa học này, người học sẽ được giảng dạy về các chủ đề sâu hơn, bao gồm cả kinh tế, chính trị, văn hóa và lịch sử của Nhật Bản. Họ sẽ được trang bị các công cụ để hiểu và sử dụng các cấu trúc ngữ pháp phức tạp hơn như phương thức so sánh, mệnh đề, câu điều kiện và các trạng từ.

Ngoài ra, khóa học cũng tập trung vào việc nâng cao kỹ năng đọc và nghe hiểu của người học. Họ sẽ học cách đọc hiểu các văn bản và tin tức phức tạp hơn, và cũng sẽ luyện tập nghe hiểu qua các bài hội thoại, cuộc phỏng vấn và các đoạn tin tức.

Họ cũng sẽ được giới thiệu với các ký hiệu kanji mới và học cách sử dụng chúng trong các văn bản và tin tức. Khóa học cũng sẽ giúp người học cải thiện kỹ năng viết bằng cách luyện tập viết các bài văn ngắn, bao gồm các câu hỏi và trả lời, các mẩu tin tức và các đơn đặt hàng.

Sau khi hoàn thành khóa học, người học sẽ có thể hiểu và sử dụng được các cấu trúc ngữ pháp và từ vựng phức tạp hơn trong Tiếng Nhật. Họ cũng sẽ có thể đọc, nghe và viết các văn bản và tin tức phức tạp bằng Tiếng Nhật và có thể giao tiếp hiệu quả với người Nhật trong các tình huống hàng ngày và công việc.', CAST(N'2022-05-18' AS Date), 4, 1, 1, 30, N'Ôn thi N4 Tiếng Nhật')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (77, N'Luyện tập kỹ năng thuyết trình bằng Tiếng Anh', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học "Luyện tập kỹ năng thuyết trình bằng Tiếng Anh" là một khóa học chuyên sâu nhằm giúp bạn phát triển kỹ năng thuyết trình trong tiếng Anh. Khóa học này cung cấp cho bạn các kỹ năng cần thiết để chuẩn bị và thực hiện một bài thuyết trình thành công.

Trong khóa học, bạn sẽ được hướng dẫn về các nguyên tắc cơ bản của thuyết trình, từ việc chuẩn bị nội dung đến cách trình bày một bài thuyết trình hiệu quả. Bạn sẽ được học về cách tổ chức ý tưởng, lựa chọn từ ngữ phù hợp, sử dụng kỹ thuật trình bày linh hoạt và thu hút sự chú ý của khán giả.

Ngoài ra, khóa học cũng cung cấp cho bạn cơ hội để thực hành thuyết trình trước một nhóm người, giúp bạn cải thiện kỹ năng giao tiếp và tự tin trong việc trình bày ý tưởng.

Cuối cùng, khi hoàn thành khóa học này, bạn sẽ có khả năng thuyết trình một cách hiệu quả và tự tin trong việc sử dụng tiếng Anh để truyền đạt thông điệp của mình.', CAST(N'2022-05-19' AS Date), 4, 1, 1, 30, N'Học tập và rèn dũa kỹ năng sử dụng Tiếng Anh khi thuyết trình')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (78, N'Các câu thả thính bằng tiếng Pháp', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học "Các câu thả thính bằng tiếng Pháp" là một khóa học dành cho những người muốn học cách sử dụng các câu nói thả thính trong tiếng Pháp. Trong khóa học này, bạn sẽ được học cách sử dụng từ vựng và ngữ pháp cơ bản để tạo ra các câu nói thả thính đầy sức hấp dẫn.

Các chủ đề trong khoá học này bao gồm:

Từ vựng và ngữ pháp cơ bản để sử dụng trong các câu nói thả thính.
Cách sử dụng các câu hỏi để tạo sự quan tâm và khám phá về đối tượng của mình.
Cách sử dụng các câu nói thính có tính gợi cảm và lãng mạn để thu hút sự chú ý của đối tượng.
Cách sử dụng ngôn ngữ cơ thể và kỹ năng giao tiếp để tạo ấn tượng.
Bạn sẽ được học từ các giáo viên người bản ngữ, họ sẽ cung cấp cho bạn kiến thức và kinh nghiệm của họ để giúp bạn trở thành một người nói tiếng Pháp tự tin và thu hút. Sau khi hoàn thành khoá học này, bạn sẽ có thể áp dụng những gì đã học vào cuộc sống hàng ngày của mình và tạo ra mối quan hệ mới đầy cảm hứng và lãng mạn.', CAST(N'2022-05-20' AS Date), 4, 1, 1, 30, N'Các câu thả thính lãng mạng bằng Tiếng Pháp')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (79, N'Luyện thi IELTS 6.0', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Luyện thi IELTS 6.0 là một khóa học đặc biệt được thiết kế để giúp các học viên có thể cải thiện kỹ năng tiếng Anh của mình và đạt được điểm số IELTS tối thiểu là 6.0. Khóa học này bao gồm những bài học về ngữ pháp, từ vựng, đọc hiểu, viết và nói, giúp học viên có thể tự tin sử dụng tiếng Anh trong các kỳ thi quốc tế như IELTS.

Trong khóa học, các học viên sẽ được giảng dạy bởi các giáo viên chuyên nghiệp và có kinh nghiệm trong lĩnh vực giảng dạy tiếng Anh cho người nước ngoài. Họ sẽ giúp học viên hiểu và áp dụng các kỹ năng tiếng Anh cần thiết để đạt được điểm số IELTS mong muốn.

Khóa học cũng cung cấp các bài kiểm tra thường xuyên để đánh giá trình độ tiếng Anh của học viên và giúp họ cải thiện những kỹ năng còn yếu. Ngoài ra, học viên còn có cơ hội tham gia vào các hoạt động thực tế, như phỏng vấn tiếng Anh và thảo luận nhóm để rèn luyện khả năng nói và nghe.

Với khóa học Luyện thi IELTS 6.0, các học viên sẽ có cơ hội nâng cao trình độ tiếng Anh của mình và đạt được điểm số IELTS mong muốn để theo đuổi học vấn hoặc công việc của mình ở nước ngoài.', CAST(N'2022-05-21' AS Date), 4, 2, 1, 60, N'Ôn tập 4 kỹ năng để tự tin lấy chứng chỉ IELTS 6.0')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (80, N'Tiếng Nhật cho trình độ N3', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Tiếng Nhật cho trình độ N3 sẽ giúp cho những người đã có kiến thức cơ bản về tiếng Nhật có thể nâng cao kỹ năng ngôn ngữ của mình. Trình độ N3 tương đương với khả năng sử dụng tiếng Nhật thông thạo ở mức độ giao tiếp hàng ngày, có thể đọc hiểu các đoạn văn đơn giản và giao tiếp tương đối trôi chảy.

Trong khóa học này, sinh viên sẽ được học về từ vựng và ngữ pháp phức tạp hơn so với trình độ N4 và N5. Sinh viên sẽ học các kĩ năng như đọc hiểu các văn bản hội thoại hay các bài viết với độ khó tương đối, viết các bài luận đơn giản và diễn đạt ý kiến của mình về một số chủ đề cụ thể. Đồng thời, khóa học cũng sẽ tập trung vào việc luyện nghe và nói để cải thiện khả năng giao tiếp hàng ngày của học viên.

Để đạt được trình độ N3, học viên cần phải nắm vững khoảng 3000 từ vựng và 300 cấu trúc ngữ pháp cơ bản. Trong khóa học này, sinh viên sẽ tiếp tục mở rộng vốn từ vựng và cấu trúc ngữ pháp của mình để có thể sử dụng tiếng Nhật trong nhiều tình huống khác nhau.

Khóa học Tiếng Nhật cho trình độ N3 sẽ giúp các học viên có thể chuẩn bị cho kỳ thi N3 JLPT (Japanese Language Proficiency Test) hoặc sử dụng để giao tiếp hàng ngày trong cuộc sống và công việc.', CAST(N'2022-05-22' AS Date), 4, 2, 1, 60, N'Luyện thi tiếng Nhật lấy chứng chỉ N3')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (81, N'Tiếng Nhật cho trình độ N2', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Tiếng Nhật cho trình độ N2 là một khóa học tiếp cận nâng cao dành cho những người đã có kiến thức cơ bản và muốn tăng cường kỹ năng giao tiếp, đọc hiểu và viết văn bản tiếng Nhật. Trong khóa học này, sinh viên sẽ học được các kỹ năng chính sau đây:

Ngữ pháp: Học về các loại câu phức tạp và cách sử dụng các từ ngữ phức tạp trong câu.

Từ vựng: Học new words and phrases liên quan đến chủ đề cụ thể.

Đọc hiểu: Học cách đọc và hiểu các văn bản bao gồm cả các bài đọc ngắn, chuyên đề và tin tức.

Viết: Học cách viết các bài luận đơn giản, các câu hỏi và trả lời.

Giao tiếp: Học cách giao tiếp một cách tự tin bằng cách thực hành các cuộc đối thoại và trò chuyện.

Khóa học này cũng sẽ giúp sinh viên ôn tập và củng cố lại kiến thức đã học ở trình độ N3, và giúp chuẩn bị cho kỳ thi trình độ N2.', CAST(N'2022-05-23' AS Date), 4, 2, 1, 60, N'Luyện thi tiếng Nhật lấy chứng chỉ N2')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (82, N'Tiếng Pháp ngữ pháp và từ vựng nâng cao', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Tiếng Nhật cho trình độ N2 là một khóa học tiếp cận nâng cao dành cho những người đã có kiến thức cơ bản và muốn tăng cường kỹ năng giao tiếp, đọc hiểu và viết văn bản tiếng Nhật. Trong khóa học này, sinh viên sẽ học được các kỹ năng chính sau đây:

Ngữ pháp: Học về các loại câu phức tạp và cách sử dụng các từ ngữ phức tạp trong câu.

Từ vựng: Học new words and phrases liên quan đến chủ đề cụ thể.

Đọc hiểu: Học cách đọc và hiểu các văn bản bao gồm cả các bài đọc ngắn, chuyên đề và tin tức.

Viết: Học cách viết các bài luận đơn giản, các câu hỏi và trả lời.

Giao tiếp: Học cách giao tiếp một cách tự tin bằng cách thực hành các cuộc đối thoại và trò chuyện.

Khóa học này cũng sẽ giúp sinh viên ôn tập và củng cố lại kiến thức đã học ở trình độ N3, và giúp chuẩn bị cho kỳ thi trình độ N2.', CAST(N'2022-05-24' AS Date), 4, 2, 1, 60, N'Nắm chắc ngữ pháp Tiếng Pháp nâng cao và các từ vựng thông dụng')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (83, N'Tiếng Đức ngữ pháp và từ vựng nâng cao', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Tiếng Đức ngữ pháp và từ vựng nâng cao sẽ giúp bạn cải thiện kỹ năng nói, viết và đọc tiếng Đức của mình. Trong khóa học này, bạn sẽ học được các kiến thức về ngữ pháp và từ vựng tiên tiến hơn so với trình độ tiếng Đức trung bình.

Các chủ đề chính trong khóa học này bao gồm:

Ngữ pháp: Trọng tâm của khóa học là về cách sử dụng các thì trong tiếng Đức (Quá khứ hoàn thành, Tương lai đơn, Tương lai hoàn thành,...), các dạng câu phức tạp (đại từ quan hệ, động từ kép, động từ phrasal), và cách sử dụng giới từ, liên từ và trạng từ trong câu.

Từ vựng: Khóa học này sẽ giới thiệu cho bạn các từ vựng mới trong các lĩnh vực chuyên môn như kinh tế, khoa học, công nghệ thông tin, y tế, tài chính và truyền thông.

Kỹ năng giao tiếp: Bạn sẽ được luyện tập kỹ năng nói và viết để có thể giao tiếp một cách tự tin hơn với người bản xứ. Các hoạt động thảo luận, viết bài và phát âm sẽ được tích hợp trong khóa học để giúp bạn trau dồi kỹ năng này.

Đọc hiểu và nghe hiểu: Bạn sẽ được đào tạo kỹ năng đọc hiểu và nghe hiểu bằng cách đọc các bài báo tiếng Đức và nghe các đoạn hội thoại thực tế của người bản xứ.

Khóa học Tiếng Đức ngữ pháp và từ vựng nâng cao sẽ giúp bạn nâng cao trình độ tiếng Đức của mình, phục vụ cho các mục đích học tập, làm việc hay du lịch.', CAST(N'2022-05-25' AS Date), 4, 2, 1, 60, N'Nắm chắc ngữ pháp Tiếng Đức nâng cao và các từ vựng thông dụng')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (84, N'Tiếng Nhật cho trình độ N1', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học tiếng Nhật trình độ N1 là một khóa học chuyên sâu dành cho những người muốn nâng cao trình độ tiếng Nhật của mình. Trình độ N1 tương đương với trình độ cao nhất trong bảng đánh giá trình độ tiếng Nhật (JLPT) và được coi là trình độ khó nhất.

Trong khóa học này, học viên sẽ học về văn phong và tài liệu chuyên nghiệp, cải thiện kỹ năng đọc hiểu và nghe hiểu thông tin phức tạp, nâng cao và phát triển từ vựng và ngữ pháp tiếng Nhật. Họ cũng sẽ được rèn luyện kỹ năng viết và nói để có thể tự tin trình bày ý kiến và giao tiếp hiệu quả trong môi trường công việc hoặc giao tiếp hàng ngày.

Ngoài ra, khóa học còn tập trung vào giúp học viên nắm vững các kĩ năng làm bài thi JLPT N1, bao gồm các kĩ năng đọc hiểu, nghe hiểu, kanji, từ vựng và ngữ pháp.

Khóa học tiếng Nhật trình độ N1 là một khóa học rất thực tế và sẽ giúp học viên phát triển các kỹ năng cần thiết để thành công trong công việc và cuộc sống hàng ngày.', CAST(N'2022-05-26' AS Date), 4, 3, 1, 90, N'Luyện thi tiếng Nhật lấy chứng chỉ N1')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (85, N'Tiếng Anh chuyên ngành công nghệ thông tin', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học Tiếng Anh chuyên ngành Công nghệ thông tin là một khóa học thiết kế để giúp sinh viên và chuyên gia trong ngành CNTT cải thiện khả năng sử dụng tiếng Anh chuyên ngành, đặc biệt là trong việc đọc, viết và giao tiếp trong môi trường làm việc quốc tế.

Trong khóa học này, bạn sẽ được học về các từ vựng, thuật ngữ và ngữ pháp liên quan đến Công nghệ thông tin. Bạn sẽ củng cố kiến thức về lĩnh vực này và rèn luyện khả năng đọc hiểu các tài liệu chuyên ngành, như báo cáo, tài liệu kỹ thuật hay sách vở. Ngoài ra, khóa học cũng sẽ tập trung vào cách viết email chuyên nghiệp, báo cáo kỹ thuật và chia sẻ thông tin trong môi trường làm việc CNTT.

Khóa học Tiếng Anh chuyên ngành Công nghệ thông tin còn giúp cho sinh viên hoặc chuyên gia có thể tự tin giao tiếp với đồng nghiệp và khách hàng quốc tế, đặc biệt là trong các cuộc họp trực tuyến hoặc trao đổi thông tin qua email.', CAST(N'2022-05-27' AS Date), 4, 3, 1, 90, N'Từ vựng Tiếng Anh chuyên ngành công nghệ thông tin và cách sử dụng')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (86, N'Tiếng Anh chuyên ngành quản trị doanh nghiệp', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học Tiếng Anh chuyên ngành quản trị doanh nghiệp là một khóa học thiết thực và hữu ích cho những người đang hoặc sẽ làm việc trong lĩnh vực kinh doanh và quản trị. Khóa học này nhằm cung cấp cho học viên những kiến thức chuyên sâu về từ vựng, ngữ pháp và các kỹ năng liên quan đến quản trị, kinh doanh, tiếp thị và tài chính.

Trong khóa học này, học viên sẽ được hướng dẫn cách sử dụng tiếng Anh hiệu quả trong các tình huống công việc hàng ngày như giao tiếp qua email, thảo luận, thuyết trình, phỏng vấn và nhiều hơn nữa. Họ cũng sẽ học cách đọc và hiểu các tài liệu, báo cáo và thông tin về kinh doanh và quản trị, cũng như sử dụng các công cụ và phần mềm để hiểu rõ hơn về các số liệu và thống kê kinh doanh.

Ngoài ra, khóa học còn giúp học viên phát triển các kỹ năng mềm quan trọng như lãnh đạo, quản lý thời gian, giải quyết vấn đề và làm việc nhóm. Học viên sẽ được thực hành và trau dồi kỹ năng này thông qua các hoạt động nhóm và bài tập cá nhân.

Khóa học Tiếng Anh chuyên ngành quản trị doanh nghiệp là một lựa chọn tuyệt vời cho những người muốn nâng cao trình độ Tiếng Anh của mình và phát triển kỹ năng liên quan đến quản trị và kinh doanh.', CAST(N'2022-05-28' AS Date), 4, 3, 1, 90, N'Từ vựng Tiếng Anh chuyên ngành quản trị doanh nghiệp và cách sử dụng')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (87, N'Ngôn ngữ học', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học Ngôn ngữ học là một khóa học nghiên cứu về ngôn ngữ và các yếu tố liên quan đến ngôn ngữ. Khóa học này có thể bao gồm nhiều chủ đề khác nhau, từ lịch sử phát triển của ngôn ngữ đến cách mà con người sử dụng ngôn ngữ để giao tiếp và suy nghĩ.

Các chủ đề thường được bao gồm trong khóa học này bao gồm:

Cấu trúc ngữ pháp: cách các từ được sắp xếp vào các câu, cấu trúc của các thành phần của câu (như danh từ, động từ và tính từ), và cách chúng tương tác với nhau.

Phân loại ngôn ngữ: loại ngôn ngữ (ví dụ: tiếng Anh, tiếng Tây Ban Nha, tiếng Trung Quốc), cách phân biệt giữa chúng và cách chúng ảnh hưởng đến cuộc sống hàng ngày của con người.

Sự phát triển của ngôn ngữ: cách ngôn ngữ đã phát triển qua thời gian, từ ngôn ngữ cổ đại đến ngôn ngữ hiện đại, và cách này ảnh hưởng đến cách con người sử dụng ngôn ngữ.

Ngôn ngữ và văn hóa: cách ngôn ngữ ảnh hưởng đến văn hóa, lối sống và tư duy của các quốc gia và bộ lạc khác nhau trên thế giới.

Các lý thuyết về học ngôn ngữ: cách con người học ngôn ngữ và cách nghiên cứu ngôn ngữ để hiểu rõ hơn quá trình này.

Khóa học Ngôn ngữ học có thể được dạy trong các trường đại học hoặc trung tâm nghiên cứu. Nó cũng có thể được phân chia thành các chuyên ngành khác nhau như Ngôn ngữ học áp dụng, Ngôn ngữ học so sánh và Ngôn ngữ học lý thuyết.', CAST(N'2022-05-29' AS Date), 4, 3, 1, 90, N'Nghiên cứu chuyên sâu về các ngôn ngữ trên toàn thế giới')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (88, N'Kế hoạch và chiến lược kinh doanh', N'img/tempAvatar.jpg', 60000.0000, N'Khóa học Kế hoạch và chiến lược kinh doanh là một khóa học đào tạo cung cấp cho học viên kiến ​​thức và kỹ năng cần thiết để phát triển kế hoạch và chiến lược kinh doanh hiệu quả cho tổ chức của họ. Trong khóa học này, học viên sẽ được giới thiệu về các phương pháp, công cụ và kỹ năng để phân tích thị trường, xác định mục tiêu kinh doanh, lập kế hoạch chiến lược, và theo dõi và đánh giá hiệu quả của chiến lược kinh doanh.

Một số chủ đề quan trọng trong khóa học bao gồm:

Phân tích SWOT: Đánh giá điểm mạnh, điểm yếu, cơ hội và thách thức của tổ chức để xác định các chiến lược phù hợp.
Xác định mục tiêu kinh doanh: Lựa chọn mục tiêu rõ ràng và phù hợp với các chiến lược kinh doanh.
Lập kế hoạch chiến lược: Xây dựng kế hoạch chiến lược chi tiết với các mục tiêu, các hoạt động và các chỉ tiêu rõ ràng.
Thực hiện và theo dõi kế hoạch: Đảm bảo rằng chiến lược kinh doanh được triển khai và theo dõi để đánh giá hiệu quả và thực hiện các điều chỉnh cần thiết.
Ngoài ra, khóa học cũng sẽ bao gồm các bài học về marketing, tài chính, quản trị nhân sự và quản lý rủi ro, để hỗ trợ cho việc phát triển các chiến lược kinh doanh hiệu quả.', CAST(N'2022-05-30' AS Date), 5, 1, 1, 30, N'Làm quen với các khái niệm cơ bản về kế hoạch và chiến lược kinh doanh')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (89, N'Các khái niệm cơ bản về marketing', N'img/tempAvatar.jpg', 60000.0000, N'Khóa học "Các khái niệm cơ bản về marketing" là một khóa học giới thiệu về các khái niệm và nguyên lý cơ bản trong lĩnh vực marketing. Khóa học này có thể dành cho những người mới bắt đầu hoặc muốn tìm hiểu cơ bản về marketing.

Trong khóa học này, bạn sẽ được giới thiệu về các khái niệm chính trong marketing như sản phẩm, giá cả, chương trình khuyến mãi và kênh phân phối. Bạn cũng sẽ tìm hiểu về quy trình marketing, từ việc nghiên cứu thị trường, lên kế hoạch, thực hiện và đánh giá kết quả.

Ngoài ra, khóa học cũng sẽ giúp bạn hiểu rõ hơn về khách hàng và cách thức tương tác với họ. Bạn sẽ được học cách xây dựng chiến lược marketing hiệu quả để thu hút và giữ chân khách hàng.

Cuối cùng, khóa học sẽ giúp bạn hiểu rõ hơn về vai trò của marketing trong thành công của doanh nghiệp và giúp bạn phát triển các kỹ năng cần thiết để làm việc trong lĩnh vực này.', CAST(N'2022-05-31' AS Date), 5, 1, 1, 30, N'Làm quen với các khái niệm cơ bản về marketing')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (90, N'Kế toán và tài chính cơ bản', N'img/tempAvatar.jpg', 60000.0000, N'Khóa học kế toán và tài chính cơ bản là một khóa học thiết yếu cho những người mới bắt đầu trong lĩnh vực kế toán và tài chính. Khóa học này giúp cho học viên có được kiến thức cơ bản về các nguyên tắc kế toán và tài chính, từ đó giúp họ xây dựng nền tảng chắc chắn để phát triển sự nghiệp trong lĩnh vực này.

Trong khóa học này, học viên sẽ được học về các khái niệm căn bản của kế toán và tài chính, bao gồm lịch sử phát triển, các nguyên tắc chung, phân loại tài sản, các phương pháp đánh giá tài sản, thu nhập và chi phí, báo cáo tài chính và quản lý tài chính. Ngoài ra, học viên sẽ được hướng dẫn cách sử dụng các công cụ và phần mềm hỗ trợ kế toán và tài chính hiện đại.

Khóa học này được thiết kế để phù hợp với những người chưa có kinh nghiệm hoặc ít kinh nghiệm trong lĩnh vực kế toán và tài chính. Sau khi hoàn thành khóa học này, học viên sẽ có được kiến thức cần thiết để áp dụng vào công việc kế toán và tài chính của mình, hoặc tiếp tục học tập với các khóa học cao cấp hơn để phát triển nghề nghiệp của mình.', CAST(N'2022-06-01' AS Date), 5, 1, 1, 30, N'Nắm chắc kiến thức cơ bản về kế toán và tài chính')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (91, N'Hiểu về thị trường mục tiêu của bạn', N'img/tempAvatar.jpg', 60000.0000, N'Khóa học "Hiểu về thị trường" nhằm giúp học viên có được hiểu biết sâu sắc về cách hoạt động và ảnh hưởng của thị trường tài chính đến nền kinh tế.

Trong khóa học này, các học viên sẽ được giới thiệu với các khái niệm cơ bản trong lĩnh vực tài chính và đầu tư, từ đó hiểu rõ hơn về cách hoạt động của thị trường chứng khoán, thị trường tiền tệ và thị trường hàng hóa.

Ngoài ra, khóa học sẽ giúp học viên hiểu được các yếu tố ảnh hưởng đến giá cả và xu hướng thị trường, từ đó có thể đưa ra quyết định đầu tư thông minh và đưa ra các chiến lược phù hợp với mục tiêu đầu tư của mình.

Khóa học này sẽ hỗ trợ cho các nhà đầu tư mới bắt đầu, những người muốn tìm hiểu và lấp đầy kiến thức cơ bản về thị trường, cũng như giúp tăng cường kỹ năng đầu tư cho những người đã có kinh nghiệm đầu tư.', CAST(N'2022-06-02' AS Date), 5, 1, 1, 30, N'Nắm rõ các khái niệm cơ bản trong lĩnh vực tài chính và đầu tư')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (92, N'Kỹ thuật bán hàng và quản lí hệ khách hàng', N'img/tempAvatar.jpg', 60000.0000, N'Khóa học "Kỹ thuật bán hàng và quản lí hệ khách hàng" nhằm giúp các học viên nắm được các kỹ năng, kiến thức cần thiết để có thể trở thành một nhân viên bán hàng hiệu quả và đồng thời có khả năng quản lý hệ thống khách hàng của doanh nghiệp một cách chuyên nghiệp.

Trong khóa học này, các học viên sẽ được giới thiệu các phương pháp và kỹ thuật bán hàng hiệu quả, từ việc xây dựng mối quan hệ với khách hàng, tìm kiếm khách hàng tiềm năng, đưa ra đề xuất sản phẩm và dịch vụ phù hợp, đến kỹ năng thuyết phục và đàm phán để chiến thắng được khách hàng.

Ngoài ra, khóa học cũng tập trung vào việc quản lí hệ thống khách hàng của doanh nghiệp, từ việc xây dựng cơ sở dữ liệu khách hàng, phân tích thông tin khách hàng để đưa ra các chiến lược tiếp thị phù hợp, đến việc xây dựng dịch vụ chăm sóc khách hàng để duy trì và phát triển khách hàng hiện tại.

Khóa học này sẽ hỗ trợ cho các nhân viên bán hàng, kinh doanh và quản lý doanh nghiệp muốn tăng cường kỹ năng bán hàng và quản lí hệ thống khách hàng, từ đó mang lại hiệu quả kinh doanh cao và đồng thời tang doanh thu cho doanh nghiệp.', CAST(N'2022-06-03' AS Date), 5, 1, 1, 30, N'Nắm vững các kỹ năng, kiến thức cần thiết để có thể trở thành một nhân viên bán hàng hiệu quả')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (93, N'Nguồn nhân lực và quản lí nhân viên', N'img/tempAvatar.jpg', 60000.0000, N'Khóa học về Nguồn nhân lực và quản lí nhân viên là một khóa học tập trung vào các kỹ năng cần thiết để quản lí và phát triển nguồn nhân lực trong doanh nghiệp. Khóa học này giúp sinh viên hiểu được ý nghĩa của việc quản lí nguồn nhân lực, đặc biệt là trong bối cảnh thị trường lao động hiện nay.

Trong khóa học, sinh viên sẽ được học về các khía cạnh cơ bản của quản lí nhân viên, bao gồm: tuyển dụng, đào tạo, phát triển và thăng tiến, xây dựng một môi trường làm việc tích cực, và giải quyết các vấn đề liên quan đến nhân viên.

Ngoài ra, khóa học còn giới thiệu các công cụ, kỹ thuật và phương pháp quản lí nhân viên hiệu quả, đảm bảo rằng các sinh viên hoàn thành khóa học có thể áp dụng được kiến thức vào thực tế trong công việc.

Tóm lại, khóa học về Nguồn nhân lực và quản lí nhân viên cung cấp cho sinh viên kiến thức và kỹ năng để trở thành một nhà quản lí nhân viên hiệu quả và thành công.', CAST(N'2022-06-04' AS Date), 5, 1, 1, 30, N'Hiểu rõ ý nghĩa của việc quản lý nguồn nhân lực')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (94, N'Các cấu trúc pháp lý cho doanh nghiệp', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học "Các cấu trúc pháp lý cho doanh nghiệp" là một khóa học chuyên sâu về các khía cạnh pháp lý của việc thành lập và hoạt động doanh nghiệp. Khóa học này giúp học viên hiểu rõ các quy định pháp luật liên quan đến việc thành lập, hoạt động, quản lý và giải thể doanh nghiệp tại Việt Nam.

Trong khóa học, các chủ đề được bao gồm đầy đủ, từ việc lựa chọn loại hình doanh nghiệp phù hợp, đăng ký kinh doanh, thuế và bảo hiểm, quản lý nhân sự, đến các chủ đề pháp lý phức tạp như đầu tư, bảo vệ quyền sở hữu trí tuệ và quy định về cạnh tranh.

Học viên sẽ được trang bị kiến thức pháp lý cần thiết để có thể thành lập và điều hành một doanh nghiệp một cách hiệu quả và hợp pháp. Ngoài ra, khóa học cũng giúp học viên hiểu rõ hơn về quy trình và thủ tục liên quan đến việc xử lý các vấn đề pháp lý cho doanh nghiệp.

Khóa học được thiết kế để phù hợp với mọi người, từ những người mới bắt đầu quan tâm đến lĩnh vực pháp lý doanh nghiệp, cho đến những chuyên gia pháp lý đã có kinh nghiệm trong lĩnh vực này.', CAST(N'2022-06-05' AS Date), 5, 1, 1, 30, N'Hiểu rõ các quy định pháp luật liên quan đến việc thành lập, hoạt động,quản lí và giải thể doanh nghiệp tại Việt Nam')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (95, N'Quản lý rủi ro và bảo hiểm', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học Quản lý rủi ro và bảo hiểm là một chương trình đào tạo cung cấp cho các học viên kiến thức và kỹ năng để quản lý rủi ro và áp dụng các phương pháp bảo hiểm trong việc giảm thiểu những tổn thất tiềm ẩn của các sự cố và tai nạn.

Chương trình này bao gồm các chủ đề như:

Hiểu về rủi ro và các loại rủi ro khác nhau
Phân tích rủi ro và đánh giá mức độ rủi ro
Thiết lập các chiến lược quản lý rủi ro
Hiểu về các sản phẩm bảo hiểm và cách thức hoạt động của chúng
Đánh giá và lựa chọn các sản phẩm bảo hiểm phù hợp
Thực hiện các biện pháp bảo hiểm để giảm thiểu rủi ro
Khóa học này sẽ giúp các học viên có được kiến thức và kỹ năng cần thiết để đối phó với những tình huống không may và giảm thiểu tổn thất trong công việc và cuộc sống hàng ngày.', CAST(N'2022-06-06' AS Date), 5, 2, 1, 60, N'Cung cấp kiến thức và kĩ năng để quản lý rủi ro và áp dụng các phương pháp bảo hiểm')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (96, N'Thương mại điện tử và marketing số', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học Thương mại điện tử và Marketing số là một khóa học trực tuyến, chuyên sâu về các kỹ năng và kiến thức cơ bản để phát triển các chiến lược kinh doanh và tiếp thị thành công trên các nền tảng thương mại điện tử.

Trong khóa học này, bạn sẽ được giới thiệu với các khái niệm và cách thức thực hiện của thương mại điện tử, từ những khái niệm cơ bản cho đến các chiến lược tiếp thị số phức tạp, và các công cụ và kỹ thuật tiếp thị online hiện đại.

Bạn sẽ học cách xác định và phân tích đối tượng khách hàng, nghiên cứu thị trường, phát triển và triển khai các chiến lược quảng cáo và tiếp thị cho các sản phẩm và dịch vụ. Bạn cũng sẽ học cách phân tích và giám sát dữ liệu, đánh giá hiệu quả của chiến lược marketing của bạn và điều chỉnh chúng để đạt được kết quả tốt nhất.

Khóa học này sẽ giúp bạn có được kiến thức và kỹ năng cần thiết để thành công trong lĩnh vực thương mại điện tử và tiếp thị số', CAST(N'2022-06-07' AS Date), 5, 2, 1, 60, N'Cung cấp kỹ năng và kiến thức cơ bản để phát triển các chiến lược kinh doanh và tiếp thị thành công trên các nền tảng thương mại điện tử.')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (97, N'Quản lý dòng tiền và ngân sách', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học Quản lý dòng tiền và ngân sách là một khóa học chuyên sâu về việc quản lý tài chính trong doanh nghiệp. Khóa học này sẽ giúp cho bạn hiểu rõ hơn về cách quản lý ngân sách và dòng tiền của doanh nghiệp một cách hiệu quả.

Trong khóa học này, bạn sẽ được học cách phân tích các báo cáo tài chính để đưa ra các quyết định quan trọng liên quan đến việc quản lý ngân sách và dòng tiền. Bạn sẽ được hướng dẫn cách lập kế hoạch ngân sách cho doanh nghiệp, xác định các nguồn tài chính và cách sử dụng chúng một cách hiệu quả.

Khóa học cũng sẽ giúp bạn hiểu rõ hơn về kiểm soát chi phí, cách xây dựng một dự án với ngân sách hợp lý và cách chỉnh sửa ngân sách khi cần thiết.

Cuối cùng, sau khi hoàn thành khóa học, bạn sẽ có kiến thức và kỹ năng cần thiết để quản lý tài chính và ngân sách của doanh nghiệp một cách chuyên nghiệp và hiệu quả.', CAST(N'2022-06-08' AS Date), 5, 2, 1, 60, N'Hiểu rõ hơn về cách quản lý ngân sách và dòng tiền của doanh nghiệp một cách hiệu quả.')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (98, N'Phân tích kinh doanh và đưa ra quyết định', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học Phân tích kinh doanh và đưa ra quyết định dựa trên dữ liệu là một khóa học chuyên sâu về các phương pháp phân tích dữ liệu và ứng dụng của chúng trong việc ra quyết định kinh doanh. Khóa học này cung cấp cho học viên những kiến thức, kỹ năng và công cụ để có thể hiểu và phân tích dữ liệu kinh doanh, từ đó đưa ra những quyết định quan trọng cho doanh nghiệp.

Trong khóa học, học viên sẽ được giới thiệu những kỹ thuật phân tích dữ liệu phổ biến như phân tích tuyến tính, phân tích dữ liệu chuỗi thời gian, phân tích dữ liệu định lượng và định tính, và các phương pháp khác. Họ sẽ học cách áp dụng các kỹ thuật này vào việc phân tích các bộ số liệu kinh doanh, từ đó đưa ra các quyết định về chiến lược kinh doanh, quản lý rủi ro và tối ưu hóa hoạt động doanh nghiệp.

Thêm vào đó, khóa học cũng giới thiệu cho học viên các công cụ và phần mềm phân tích dữ liệu như Excel, Python và R. Họ sẽ học cách sử dụng các công cụ này để thu thập, xử lý và phân tích dữ liệu kinh doanh.

Cuối cùng, khóa học cũng đề cập đến những vấn đề liên quan đến bảo mật dữ liệu và đạo đức trong việc sử dụng dữ liệu kinh doanh. Học viên sẽ được giải thích về các quy định pháp lý liên quan đến bảo vệ dữ liệu và cách thức sử dụng dữ liệu một cách đúng đắn và trung thực.

Tóm lại, khóa học Phân tích kinh doanh và đưa ra quyết định dựa trên dữ liệu là một khóa học rất hữu ích cho những người muốn học cách phân tích dữ liệu kinh doanh và sử dụng nó để ra quyết định chiến lược cho doanh nghiệp.', CAST(N'2022-06-09' AS Date), 5, 2, 1, 60, N'Cung cấp kiến thức, kỹ năng và công cụ để có thể hiểu và phân tích dữ liệu kinh doanh, từ đó đưa ra những quyết định quan trọng cho doanh nghiệp.')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (99, N'Lãnh đạo chiến lược và hành vi tổ chức', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học về Lãnh đạo chiến lược và hành vi tổ chức là một khóa học đào tạo nhằm giúp người học có thể hiểu và áp dụng các khái niệm, kỹ năng và phương pháp liên quan đến lãnh đạo chiến lược và hành vi tổ chức trong hoạt động kinh doanh.

Trong khóa học này, người học sẽ được trang bị kiến thức về cách xây dựng một chiến lược hiệu quả để giúp tổ chức đạt được các mục tiêu kinh doanh. Ngoài ra, người học cũng sẽ được hướng dẫn để tìm hiểu về các thuật ngữ và khái niệm liên quan đến lãnh đạo, quản lý, và hành vi tổ chức.

Khóa học này cũng đưa ra những ví dụ cụ thể để giải thích cách áp dụng các công cụ và kỹ năng lãnh đạo chiến lược và hành vi tổ chức trong thực tế. Ngoài ra, người học sẽ được tham gia vào các hoạt động thực hành để rèn luyện các kỹ năng cần thiết như quản lý thời gian, lãnh đạo nhóm, đàm phán và giải quyết xung đột, v.v.

Cuối cùng, khóa học này cũng nhấn mạnh tầm quan trọng của việc phát triển kỹ năng giao tiếp hiệu quả trong tổ chức và các kỹ năng lãnh đạo khác như lãnh đạo đổi mới và tạo dựng môi trường làm việc tích cực để thu hút và giữ chân nhân viên.', CAST(N'2022-06-10' AS Date), 5, 2, 1, 60, N'Cung cấp các khái niệm, kỹ năng và phương pháp liên quan đến lãnh đạo chiến lược và hành vi tổ chức trong hoạt động kinh doanh')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (100, N'Tài chính công ty và quản lý tài chính', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học Tài chính công ty và Quản lý tài chính là một khóa học cung cấp cho sinh viên kiến ​​thức về quản lý tài chính trong một doanh nghiệp hoặc tổ chức. Khóa học này bao gồm các chủ đề như phân tích tài chính, quản lý dòng tiền, quản lý rủi ro, quản lý tài sản, quản trị vốn và quản lý chi phí.

Đối với phân tích tài chính, sinh viên sẽ học cách đánh giá hiệu suất tài chính của doanh nghiệp thông qua việc phân tích các số liệu tài chính, bao gồm bảng cân đối kế toán, báo cáo lưu chuyển tiền tệ và báo cáo kết quả kinh doanh.

Trong khi đó, quản lý dòng tiền sẽ tập trung vào việc quản lý các khoản thu và chi của doanh nghiệp để đảm bảo sự ổn định và đủ tiền để hoạt động.

Về quản lý rủi ro, sinh viên sẽ học cách đánh giá và giảm thiểu rủi ro trong các quyết định tài chính và đầu tư của doanh nghiệp.

Quản lý tài sản bao gồm việc quản lý các tài sản của doanh nghiệp, bao gồm cách sử dụng và bảo trì chúng để tối đa hóa giá trị.

Quản trị vốn và quản lý chi phí sẽ giúp sinh viên hiểu được cách quản lý vốn và chi phí của doanh nghiệp một cách hiệu quả, bao gồm cách tạo ngân sách và quản lý chi phí để đạt được mục tiêu kinh doanh.

Khóa học này sẽ cung cấp cho sinh viên kiến ​​thức để có thể thực hiện quản lý tài chính trong một doanh nghiệp hoặc tổ chức một cách hiệu quả và bền vững.', CAST(N'2022-06-11' AS Date), 5, 2, 1, 60, N'Nghiên cứu các chủ đề như phân tích tài chính, quản lý dòng tiền, quản lý rủi ro, quản lý tài sản, quản trị vốn và quản lý chi phí')
GO
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (101, N'Kinh doanh quốc tế và quản lý đa văn hóa', N'img/tempAvatar.jpg', 80000.0000, N'Khóa học Kinh doanh quốc tế và quản lý đa văn hóa (International Business and Cross-Cultural Management) là một chương trình đào tạo cao cấp cho những người muốn trang bị kiến thức và kỹ năng để hoạt động trong môi trường kinh doanh toàn cầu phức tạp và đa dạng.

Trong khóa học này, sinh viên sẽ học các kỹ năng cần thiết để phát triển và triển khai chiến lược kinh doanh ở các thị trường quốc tế. Các chủ đề chính bao gồm: quản trị tài chính quốc tế, tiếp thị toàn cầu, quản lý chuỗi cung ứng, quản lý rủi ro và quản lý văn hoá.

Ngoài ra, khóa học còn tập trung vào việc hiểu và giải quyết các vấn đề liên quan đến quản lý đa văn hoá. Sinh viên sẽ học được cách xây dựng và duy trì mối quan hệ đối tác hiệu quả với các đối tác quốc tế đến từ các nền văn hóa khác nhau, và cách thích nghi với các phong tục tập quán và thói quen kinh doanh của các nền văn hóa khác nhau.

Khóa học này đặc biệt phù hợp cho các chuyên gia kinh doanh quốc tế, giám đốc điều hành, nhà quản lý và các nhân viên cấp cao của các công ty đa quốc gia.', CAST(N'2022-06-12' AS Date), 5, 2, 1, 60, N'Trang bị kiến thức và kỹ năng để hoạt động trong môi trường kinh doanh toàn cầu phức tạp và đa dạng')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (102, N'Đổi mới và khởi nghiệp', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học Đổi mới và khởi nghiệp là một chương trình đào tạo nhằm giúp các sinh viên, nhân viên văn phòng và những người quan tâm đến lĩnh vực kinh doanh hiểu rõ hơn về quá trình khởi nghiệp cùng với những kỹ năng cần thiết để thành công trong việc khởi nghiệp.

Khóa học này sẽ giúp người học tiếp cận với các khái niệm cơ bản về khởi nghiệp, từ việc tìm kiếm ý tưởng, xác định thị trường tiềm năng, phát triển sản phẩm và dịch vụ, đến việc xây dựng mối quan hệ với khách hàng và tìm nguồn vốn đầu tư.

Ngoài ra, khóa học sẽ cung cấp cho người học những kỹ năng cần thiết để quản lý một doanh nghiệp, bao gồm quản lý tài chính, quản lý nhân sự, marketing và kinh doanh trực tuyến.

Khóa học Đổi mới và khởi nghiệp thường được tổ chức dưới dạng các buổi học trực tiếp hoặc trực tuyến, và có thể kéo dài từ vài tuần đến vài tháng tùy vào chương trình của từng tổ chức đào tạo.', CAST(N'2022-06-13' AS Date), 5, 3, 1, 90, N'Hiểu rõ hơn về quá trình khởi nghiệp cùng với những kỹ năng cần thiết để thành công trong việc khởi nghiệp')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (103, N'Quản lý chuỗi cung ứng và vận chuyển hàng hóa', N'img/tempAvatar.jpg', 100000.0000, N'Khóa học về Quản lý chuỗi cung ứng và vận chuyển hàng hóa giúp sinh viên hiểu về cách quản lý quy trình vận chuyển, từ việc lập kế hoạch đến thực hiện và giám sát, để đảm bảo rằng hàng hóa được giao tới khách hàng một cách an toàn và đúng thời điểm.

Ngoài ra, khóa học này còn cung cấp cho sinh viên kiến thức về các phương pháp tối ưu hóa chuỗi cung ứng, từ việc thiết kế và triển khai chuỗi cung ứng đến việc quản lý nhà cung cấp và tối ưu hóa quá trình sản xuất. Sinh viên sẽ học cách tối ưu hóa các quy trình vận chuyển, thu gom và phân phối hàng hóa thông qua việc phân tích và đánh giá dữ liệu.

Ngoài ra, khóa học này còn bao gồm các chủ đề liên quan đến quản lý kho và lưu trữ hàng hóa, bao gồm cách xác định độ lớn của kho, cách quản lý kho và các chiến lược quản lý lưu thông hàng hóa.

Cuối cùng, sinh viên sẽ học cách áp dụng các công nghệ và phần mềm quản lý chuỗi cung ứng để cải thiện hiệu suất, tăng trưởng và đáp ứng nhanh chóng với nhu cầu của khách hàng. Khóa học này sẽ giúp sinh viên trang bị kiến ​​thức và kỹ năng cần thiết để quản lý chuỗi cung ứng và vận chuyển hàng hóa một cách hiệu quả và hiệu quả từ một doanh nghiệp hoặc tổ chức.', CAST(N'2022-06-14' AS Date), 5, 3, 1, 90, N'Cung cấp kiến thức về quản lý quy trình vận chuyển')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (104, N'Sức khỏe toàn diện và phòng ngừa bệnh tật', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học về sức khỏe toàn diện và phòng ngừa bệnh tật là một khóa học giúp học viên có thể hiểu rõ về cách duy trì sức khỏe tốt và phòng ngừa các bệnh tật thông qua việc thay đổi lối sống và ăn uống. Khóa học này cung cấp cho học viên kiến thức về các loại thực phẩm, dinh dưỡng và cách thực hiện các bài tập thể dục để duy trì sức khỏe tốt. Học viên cũng sẽ được giải đáp những thắc mắc liên quan đến sức khỏe và bệnh tật thông qua các buổi thảo luận và thực hành thực tế. Ngoài ra, khóa học còn đưa ra các kỹ năng tâm lý và cách giảm stress giúp học viên có thể sống một cuộc sống cân bằng và hạnh phúc. Khóa học này sẽ giúp học viên có được kiến thức và kỹ năng để duy trì sức khỏe tốt và phòng ngừa bệnh tật trong cuộc sống hàng ngày.', CAST(N'2022-06-15' AS Date), 6, 1, 1, 30, N'Hiểu biết về sức khỏe và cách phòng ngừa bệnh tật')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (105, N'Tập thể dục và dinh dưỡng cơ bản', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học về Tập thể dục và Dinh dưỡng cơ bản là chương trình giảng dạy về sức khỏe và thể chất, tập trung vào hai lĩnh vực chính là tập thể dục và dinh dưỡng.

Trong khóa học này, sinh viên sẽ học được các kiến thức cơ bản về tập thể dục và phát triển kỹ năng tập luyện đúng cách và hiệu quả. Các chủ đề cụ thể bao gồm: Lợi ích của tập thể dục cho sức khỏe, các kỹ thuật tập thể dục, cách thiết lập mục tiêu tập luyện và định kỳ theo dõi tiến độ tập luyện.

Ngoài ra, khóa học còn tập trung vào việc hiểu về dinh dưỡng và cách ăn uống lành mạnh để duy trì sức khỏe. Sinh viên sẽ được hướng dẫn về cách lựa chọn thực phẩm và chế độ ăn uống phù hợp, những nguyên tắc cơ bản của dinh dưỡng và tác động của dinh dưỡng đến sức khỏe.

Khóa học này rất hữu ích đối với những người muốn bắt đầu tập thể dục và muốn hiểu về những nguyên tắc cơ bản của dinh dưỡng để duy trì một lối sống lành mạnh. Nó cũng phù hợp cho những người làm việc trong ngành y tế, giáo dục và thể dục thể thao.', CAST(N'2022-06-16' AS Date), 6, 1, 1, 30, N'Cung cấp kiến thức cơ bản về tập thể dục và phát triển kỹ năng tập luyện đúng cách và hiệu quả')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (106, N'Yoga và một tâm hồn đầy đủ', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Yoga là một chương trình huấn luyện cơ thể và tâm trí, giúp bạn tăng cường sức khỏe và cân bằng tâm hồn. Trong khóa học này, bạn sẽ được hướng dẫn các động tác yoga, các kỹ thuật thở và các phương pháp thư giãn để giảm stress và căng thẳng.

Một tâm hồn đầy đủ là một trạng thái của tâm trí và cảm xúc khi chúng ta cảm thấy hài lòng với cuộc sống, có sự cân bằng trong công việc và mối quan hệ, và có khả năng giải tỏa stress và căng thẳng. Chỉ khi tâm hồn của chúng ta đầy đủ thì chúng ta mới có thể tận hưởng cuộc sống và thực hiện sứ mệnh của mình trong thế giới này. Việc thực hiện các bài tập yoga và kỹ thuật thở có thể giúp cân bằng cơ thể và tâm trí, giúp tâm hồn của bạn trở nên đầy đủ và cảm nhận cuộc sống một cách đầy trọn vẹn.', CAST(N'2022-06-17' AS Date), 6, 1, 1, 30, N'Trong khóa học này, bạn sẽ được hướng dẫn các động tác yoga, các kỹ thuật thở và các phương pháp thư giãn để giảm stress và căng thẳng')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (107, N'Cải thiện giấc ngủ và nghỉ ngơi', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học "Cải thiện giấc ngủ và nghỉ ngơi" nhằm giúp bạn hiểu rõ hơn về cách hoạt động của giấc ngủ và tác động của nó đến sức khỏe và tinh thần của con người.

Trong khóa học này, bạn sẽ được tìm hiểu về các chủ đề sau:

Cơ chế hoạt động của giấc ngủ
Các bệnh lý liên quan đến giấc ngủ và cách điều trị
Các yếu tố ảnh hưởng đến giấc ngủ, ví dụ như thói quen sinh hoạt và môi trường sống
Các kỹ thuật thư giãn để giúp bạn có giấc ngủ sâu và ngon hơn
Bạn sẽ được học qua các bài giảng video, đọc tài liệu, và thực hành các kỹ thuật thư giãn như yoga và mindfulness. Khóa học cũng đưa ra các bài tập và phương pháp theo dõi giấc ngủ của bạn để giúp bạn cải thiện chất lượng giấc ngủ và nghỉ ngơi của mình.', CAST(N'2022-06-18' AS Date), 6, 1, 1, 30, N'Khóa học này giúp bạn hiểu rõ hơn về cách hoạt động của giấc ngủ và tác động của nó đến sức khỏe và tinh thần của con người')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (108, N'Chăm sóc răng miệng và nha khoa', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Chăm sóc răng miệng và nha khoa có thể bao gồm các chủ đề sau:

Kiến thức cơ bản về răng miệng: bao gồm cấu trúc của răng, chức năng của từng phần của răng và vai trò của răng trong hệ thống tiêu hóa.

Các loại bệnh lý về răng miệng: bao gồm sâu răng, viêm nướu, tấy đờm, viêm xoang và những vấn đề khác liên quan đến răng miệng.

Cách chăm sóc răng miệng: bao gồm các phương pháp chăm sóc răng miệng hàng ngày như đánh răng, dùng nước súc miệng và sử dụng chỉ tăm. Bên cạnh đó, còn giới thiệu các kỹ thuật chuyên sâu như điều trị mất răng, cắt tả và trồng răng.

Thực hành: sinh viên sẽ được thực hành các kỹ thuật chăm sóc răng miệng và nha khoa trên mô hình hoặc trên bệnh nhân thật.

An toàn vệ sinh: giúp sinh viên biết cách làm việc an toàn trong phòng khám nha khoa để tránh lây nhiễm cho bệnh nhân và cả cho mình.

Khóa học này giúp sinh viên có nền tảng kiến thức vững chắc về chăm sóc răng miệng và nha khoa, từ đó có thể áp dụng các kỹ thuật này trong thực tiễn nghề nghiệp của mình.', CAST(N'2022-06-19' AS Date), 6, 1, 1, 30, N'Khóa học này giúp sinh viên có nền tảng kiến thức vững chắc về chăm sóc răng miệng và nha khoa')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (109, N'Điều trị đau lưng và cột sống', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học Điều trị đau lưng và cột sống là một khóa học y tế nhằm giúp các chuyên gia y tế và bệnh nhân có thể hiểu rõ hơn về nguyên nhân và điều trị của đau lưng và các vấn đề liên quan đến cột sống.

Trong khóa học này, người học sẽ được giảng dạy về các loại đau lưng phổ biến, cơ chế gây đau và các phương pháp điều trị khác nhau để giảm đau và tăng cường chức năng của cột sống. Các phương pháp điều trị có thể bao gồm các biện pháp tự chăm sóc, dùng thuốc hoặc các kỹ thuật phẫu thuật.

Ngoài ra, khóa học cũng sẽ giảng dạy về các yếu tố nguy cơ gây đau lưng và cách giảm thiểu chúng, cũng như cách duy trì một lối sống lành mạnh và chăm sóc cột sống để giảm thiểu nguy cơ mắc các vấn đề về sức khỏe ở khu vực này.

Khóa học này là rất hữu ích cho những người đang gặp phải vấn đề về đau lưng và cột sống, cũng như cho những người quan tâm đến sức khỏe của bản thân và muốn có kiến thức cơ bản về các vấn đề này.', CAST(N'2022-06-20' AS Date), 6, 1, 1, 30, N'Hiểu rõ hơn về nguyên nhân và điều trị của đau lưng và các vấn đề liên quan đến cột sống')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (110, N'Quản lý căng thẳng và tâm lý học', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Quản lý căng thẳng và tâm lý học là một chương trình đào tạo được thiết kế để giúp học viên hiểu rõ về căng thăng và cách quản lý nó. Trong khóa học này, học viên sẽ được giảng dạy cách nhận biết các dấu hiệu của căng thẳng và hiểu rõ nguyên nhân gây ra căng thẳng.

Ngoài ra, khóa học cũng cung cấp cho học viên kiến thức về tâm lý học, giúp họ hiểu được tầm quan trọng của tâm trí và tâm lý trong cuộc sống hàng ngày. Họ sẽ được hướng dẫn về các kỹ thuật giải tỏa căng thẳng và cách làm việc với suy nghĩ tiêu cực và cảm xúc.

Khóa học này còn đưa ra những bài tập thực hành, giúp học viên áp dụng những kỹ năng đã học được vào cuộc sống hàng ngày. Khóa học rất hữu ích cho những người muốn cải thiện sức khỏe tinh thần, tăng cường sự tự tin và đạt được thành công trong cuộc sống.', CAST(N'2022-06-21' AS Date), 6, 2, 1, 60, N'Nắm bắt cách nhận biết các dấu hiệu của căng thẳng và hiểu rõ nguyên nhân gây ra căng thẳng')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (111, N'Sức khỏe tâm thần và điều trị tâm lý', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Sức khỏe tâm thần và điều trị tâm lý là một chương trình đào tạo chuyên sâu về các vấn đề liên quan đến tâm lý và sức khỏe tâm thần. Khóa học này bao gồm nhiều chuyên đề, từ những cơ chế phát triển tâm lý, các rối loạn tâm lý thông thường, các phương pháp điều trị và quản lý tâm lý.

Các chủ đề trong khóa học này có thể bao gồm những vấn đề như: Các rối loạn tâm lý phổ biến (như trầm cảm, lo âu, rối loạn ái tình và các rối loạn khác), tâm lý học phát triển, tâm lý trị liệu, tâm lý học xã hội, tâm lý học công nghiệp và tổ chức, tâm lý học giáo dục, tâm lý học y tế và sức khỏe, và nhiều chủ đề khác.

Khóa học này được thiết kế để giúp sinh viên hiểu rõ hơn về các nguyên nhân và các phương pháp chữa trị rối loạn tâm lý nhằm cải thiện sức khỏe tâm thần của cá nhân và cộng đồng. Nội dung khóa học được xây dựng dựa trên những nghiên cứu và kinh nghiệm thực tiễn trong lĩnh vực tâm lý học.', CAST(N'2022-06-22' AS Date), 6, 2, 1, 60, N'Khóa học này bao gồm nhiều chuyên đề, từ những cơ chế phát triển tâm lý, các rối loạn tâm lý thông thường, các phương pháp điều trị và quản lý tâm lý')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (112, N'Sức khỏe tình dục và sinh sản', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Sức khỏe tình dục và sinh sản là một khóa học giáo dục về đời sống tình dục, các vấn đề liên quan đến sức khỏe tình dục và những phương pháp bảo vệ sức khỏe sinh sản. Khóa học này thường được thiết kế để cung cấp cho học viên các kiến ​​thức và kỹ năng cơ bản để có một cuộc sống tình dục an toàn, lành mạnh và tránh được các bệnh lây truyền qua đường tình dục.

Trong khóa học, học viên sẽ được giới thiệu với các chủ đề như: giới tính, sự khác biệt giữa nam và nữ, bệnh lây truyền qua đường tình dục, bảo vệ sức khỏe sinh sản và phương pháp tránh thai. Họ cũng sẽ được hướng dẫn cách đối phó với các tình huống xảy ra trong đời sống tình dục và làm thế nào để đưa ra quyết định thông thái và an toàn khi tham gia vào các hoạt động tình dục.

Một khóa học sức khỏe tình dục và sinh sản tốt cũng sẽ bao gồm các hoạt động thực hành để giúp học viên phát triển các kỹ năng cần thiết, như quan hệ tình dục an toàn, sử dụng bảo vệ sinh lý và việc kiểm tra sức khỏe định kỳ. Khóa học này có thể được cung cấp cho các đối tượng khác nhau, từ học sinh trung học đến người lớn.', CAST(N'2022-06-23' AS Date), 6, 2, 1, 60, N'Khóa học này thường được thiết kế để cung cấp cho học viên các kiến ​​thức và kỹ năng cơ bản để có một cuộc sống tình dục an toàn, lành mạnh')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (113, N'Kế hoạch hóa gia đình', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Kế hoạch hóa gia đình là một chương trình đào tạo thiết kế để giúp các hộ gia đình phát triển kế hoạch tài chính bền vững và hiệu quả. Khóa học này sẽ cung cấp cho người tham gia các kỹ năng và kiến ​​thức cần thiết để tạo ra kế hoạch tài chính đáng tin cậy, từ quản lý ngân sách hàng ngày cho đến quản lý các khoản tiết kiệm và đầu tư dài hạn.

Chương trình bao gồm các chủ đề như việc xác định mục tiêu tài chính của gia đình, tạo ngân sách hàng tháng, quản lý và giảm nợ, đầu tư và tiết kiệm, bảo hiểm và quản lý rủi ro tài chính. Các học viên sẽ được hưởng lợi từ các bài giảng trực tuyến, tài liệu hướng dẫn, và các buổi thảo luận trực tiếp với giáo viên và các sinh viên khác để giải đáp các câu hỏi và tìm kiếm giải pháp cho những vấn đề tài chính cá nhân của họ.

Khóa học Kế hoạch hóa gia đình được thiết kế để phù hợp với mọi đối tượng, bao gồm cả những người mới bắt đầu quản lý tài chính gia đình và những người đã có kinh nghiệm nhưng muốn cải thiện các kỹ năng quản lý tài chính của mình.', CAST(N'2022-06-24' AS Date), 6, 2, 1, 60, N'Cung cấp cho người tham gia các kỹ năng và kiến ​​thức cần thiết để tạo ra kế hoạch tài chính đáng tin cậy')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (114, N'Y học thể thao và tập luyện chuyên nghiệp', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Y học thể thao và tập luyện chuyên nghiệp là một chương trình đào tạo bao gồm các kiến thức về y học thể thao, dinh dưỡng, tập luyện và các kỹ năng cần thiết để trở thành một huấn luyện viên chuyên nghiệp.

Trong khóa học này, học viên sẽ được giảng dạy về cách phát hiện và điều trị các chấn thương thể thao, đặc biệt là những chấn thương phổ biến trong các môn thể thao khác nhau. Họ cũng sẽ tìm hiểu về cơ thể con người và cách ảnh hưởng của việc tập luyện đến sức khỏe của một người.

Ngoài ra, khóa học cũng đào tạo học viên về các phương pháp tập luyện hiệu quả, từ luyện tập cơ bản đến các phương pháp tập luyện chuyên sâu như đào tạo thể lực, giảm cân, tăng cường khả năng thể chất và linh hoạt.

Với khóa học Y học thể thao và tập luyện chuyên nghiệp, học viên sẽ trang bị cho mình những kỹ năng thiết yếu để trở thành một huấn luyện viên chuyên nghiệp và đáp ứng được nhu cầu ngày càng tăng về sức khỏe và thể hình của con người.', CAST(N'2022-06-25' AS Date), 6, 2, 1, 60, N'Cung cấp kiến thức về y học thể thao, dinh dưỡng, tập luyện và các kỹ năng cần thiết để trở thành một huấn luyện viên chuyên nghiệp')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (115, N'Công nghệ y tế trong chẩn đoán và điều trị', N'img/tempAvatar.jpg', 90000.0000, N'Khóa học Công nghệ y tế và tiên tiến trong chẩn đoán và điều trị là một khóa học chuyên sâu, cung cấp các kiến thức về các công nghệ mới nhất được sử dụng trong lĩnh vực y tế để chẩn đoán và điều trị bệnh.

Khóa học này bao gồm các chủ đề như:

Các phương pháp chẩn đoán hình ảnh như siêu âm, CT, MRI và PET/CT.
Sử dụng công nghệ để theo dõi sự tiến triển của bệnh và hiệu quả của liệu pháp.
Các công nghệ tiên tiến như truyền máu tự động, robot phẫu thuật và nanorobots.
Hiểu về các yếu tố ảnh hưởng đến việc áp dụng công nghệ trong y tế như đạo đức và giới hạn về kinh phí.
Các sinh viên tham gia khóa học sẽ được học từ các chuyên gia hàng đầu trong lĩnh vực y tế và công nghệ, và có cơ hội thực hành sử dụng các công cụ và thiết bị y tế tiên tiến.

Sau khi hoàn thành khóa học, sinh viên sẽ có kiến thức vững vàng về các công nghệ mới nhất trong lĩnh vực y tế, từ đó có thể áp dụng vào việc chẩn đoán và điều trị bệnh hiệu quả hơn.', CAST(N'2022-06-26' AS Date), 6, 2, 1, 60, N'Cung cấp các kiến thức về các công nghệ mới nhất được sử dụng trong lĩnh vực y tế để chẩn đoán và điều trị bệnh')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (116, N'Nghiên cứu và phương pháp đánh giá sức khỏe', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học Nghiên cứu sức khỏe và phương pháp đánh giá hiệu quả là một khóa học chuyên sâu về nghiên cứu và đánh giá các biện pháp liên quan đến sức khỏe con người. Khóa học này bao gồm các chủ đề như:

Lý thuyết nghiên cứu sức khỏe: Bao gồm các khái niệm, lý thuyết và phương pháp nghiên cứu trong lĩnh vực sức khỏe.

Thiết kế nghiên cứu: Các kỹ thuật thiết kế nghiên cứu, bao gồm các phương pháp tiếp cận và kế hoạch nghiên cứu.

Phương pháp thu thập dữ liệu: Bao gồm các phương pháp thu thập dữ liệu trong nghiên cứu sức khỏe, như các cuộc khảo sát và phỏng vấn.

Phân tích dữ liệu: Bao gồm các phương pháp phân tích dữ liệu cơ bản, bao gồm cả phân tích đa biến.

Đánh giá hiệu quả: Các phương pháp đánh giá các biện pháp liên quan đến sức khỏe, bao gồm các phương pháp đánh giá kinh tế và xã hội.

Khóa học này sẽ giúp các học viên có kiến thức về các phương pháp nghiên cứu và đánh giá hiệu quả, từ đó giúp họ hiểu rõ hơn và làm việc hiệu quả hơn trong lĩnh vực sức khỏe.', CAST(N'2022-06-27' AS Date), 6, 3, 1, 90, N'Cung cấp kiến thức về các phương pháp nghiên cứu và đánh giá hiệu quả, từ đó giúp họ hiểu rõ hơn và làm việc hiệu quả hơn trong lĩnh vực sức khỏe')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (117, N'Khoa học về căn bệnh và y tế cộng đồng', N'img/tempAvatar.jpg', 120000.0000, N'Khoa học về căn bệnh và y tế cộng đồng là lĩnh vực nghiên cứu về sức khỏe của cộng đồng trong xã hội. Nó bao gồm các hoạt động, chương trình và chính sách nhằm cải thiện sức khỏe cộng đồng và ngăn ngừa bệnh tật.

Trong lĩnh vực này, các nhà khoa học nghiên cứu các yếu tố tác động đến sức khỏe cộng đồng như môi trường sống, chế độ ăn uống, lối sống, di truyền và những yếu tố xã hội - kinh tế - văn hóa. Họ cũng điều tra sự lây lan của các bệnh truyền nhiễm và không truyền nhiễm trong cộng đồng, phát triển các chương trình kiểm soát bệnh tật và xây dựng các chiến lược phòng chống dịch bệnh.

Đồng thời, Khoa học về căn bệnh và y tế cộng đồng cũng nghiên cứu và áp dụng các phương pháp và công nghệ tiên tiến để cải thiện chất lượng chăm sóc sức khỏe của cộng đồng, bao gồm các chiến lược phát triển vắc xin, thuốc điều trị, hoặc các phương pháp chẩn đoán sớm và đánh giá nguy cơ.

Với mục tiêu tạo ra một cộng đồng khỏe mạnh, y tế cộng đồng là một lĩnh vực quan trọng trong nghiên cứu y học và có vai trò to lớn trong việc nâng cao chất lượng cuộc sống cho cả một quốc gia.', CAST(N'2022-06-28' AS Date), 6, 3, 1, 90, N'Nghiên cứu về các hoạt động, chương trình và chính sách nhằm cải thiện sức khỏe cộng đồng và ngăn ngừa bệnh tật')
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (118, N'Các kỹ thuật phục hồi chức năng sau chấn thương', N'img/tempAvatar.jpg', 120000.0000, N'Khóa học "Các kỹ thuật phục hồi chức năng sau chấn thương" là một khóa học giáo dục chuyên sâu trong lĩnh vực y tế, thường được cung cấp bởi các trường đại học hoặc tổ chức y tế uy tín.

Khóa học này nhằm giúp các chuyên gia y tế và nhân viên y tế có kiến thức và kỹ năng cần thiết để phục hồi chức năng của các bệnh nhân sau khi họ đã trải qua chấn thương. Khóa học bao gồm các chủ đề như đánh giá chức năng, kế hoạch điều trị, các kỹ thuật phục hồi chức năng, và các phương pháp đánh giá hiệu quả điều trị.

Trong khóa học này, sinh viên sẽ học các kỹ năng chẩn đoán bệnh nhân, xác định các vấn đề liên quan đến việc phục hồi chức năng và lựa chọn phương pháp phù hợp nhất cho từng trường hợp cụ thể. Họ cũng được đào tạo để thực hiện các kỹ thuật phục hồi chức năng như luyện tập vận động, điều chỉnh độ cứng của các khớp và cơ, massage và xoa bóp.

Khóa học này có thể phù hợp với các chuyên gia y tế, điều dưỡng viên, kỹ thuật viên phục hồi chức năng, và các chuyên gia liên quan đến phục hồi chức năng sau chấn thương. Sau khi hoàn thành khóa học, họ sẽ có kiến thức và kỹ năng để đáp ứng nhu cầu phục hồi chức năng cho bệnh nhân sau chấn thương.', CAST(N'2022-06-29' AS Date), 6, 3, 1, 90, N'Cung cấp kiến thức và kỹ năng cần thiết để phục hồi chức năng của các bệnh nhân sau khi họ đã trải qua chấn thương')
GO
SET IDENTITY_INSERT [dbo].[choices] ON 

INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (1, N'11', 1, 1)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (2, N'91', 0, 1)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (3, N'85', 0, 1)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (4, N'27', 0, 1)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (5, N'10', 1, 2)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (6, N'91', 0, 2)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (7, N'85', 0, 2)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (8, N'27', 0, 2)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (9, N'9', 1, 3)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (10, N'91', 0, 3)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (11, N'85', 0, 3)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (12, N'27', 0, 3)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (13, N'8', 1, 4)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (14, N'91', 0, 4)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (15, N'85', 0, 4)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (16, N'27', 0, 4)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (17, N'13', 1, 5)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (18, N'91', 0, 5)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (19, N'85', 0, 5)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (20, N'27', 0, 5)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (21, N'8', 1, 6)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (22, N'91', 0, 6)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (23, N'85', 0, 6)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (24, N'27', 0, 6)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (25, N'13', 1, 7)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (26, N'91', 0, 7)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (27, N'85', 0, 7)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (28, N'27', 0, 7)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (29, N'3', 1, 8)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (30, N'91', 0, 8)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (31, N'85', 0, 8)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (32, N'27', 0, 8)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (33, N'-2', 1, 9)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (34, N'91', 0, 9)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (35, N'85', 0, 9)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (36, N'27', 0, 9)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (37, N'8', 1, 10)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (38, N'91', 0, 10)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (39, N'85', 0, 10)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (40, N'27', 0, 10)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (41, N'19', 1, 11)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (42, N'91', 0, 11)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (43, N'85', 0, 11)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (44, N'27', 0, 11)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (45, N'21', 1, 12)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (46, N'91', 0, 12)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (47, N'85', 0, 12)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (48, N'27', 0, 12)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (49, N'8', 1, 13)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (50, N'91', 0, 13)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (51, N'85', 0, 13)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (52, N'27', 0, 13)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (53, N'6', 1, 14)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (54, N'91', 0, 14)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (55, N'85', 0, 14)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (56, N'27', 0, 14)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (57, N'14', 1, 15)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (58, N'91', 0, 15)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (59, N'85', 0, 15)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (60, N'27', 0, 15)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (61, N'5', 1, 16)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (62, N'91', 0, 16)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (63, N'85', 0, 16)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (64, N'27', 0, 16)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (65, N'7', 1, 17)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (66, N'91', 0, 17)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (67, N'85', 0, 17)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (68, N'27', 0, 17)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (69, N'3', 1, 18)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (70, N'91', 0, 18)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (71, N'85', 0, 18)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (72, N'27', 0, 18)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (73, N'0', 1, 19)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (74, N'91', 0, 19)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (75, N'85', 0, 19)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (76, N'27', 0, 19)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (77, N'10', 1, 20)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (78, N'91', 0, 20)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (79, N'85', 0, 20)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (80, N'27', 0, 20)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (81, N'11', 1, 21)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (82, N'91', 0, 21)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (83, N'85', 0, 21)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (84, N'27', 0, 21)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (85, N'13', 1, 22)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (86, N'91', 0, 22)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (87, N'85', 0, 22)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (88, N'27', 0, 22)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (89, N'9', 1, 23)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (90, N'91', 0, 23)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (91, N'85', 0, 23)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (92, N'27', 0, 23)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (93, N'5', 1, 24)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (94, N'91', 0, 24)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (95, N'85', 0, 24)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (96, N'27', 0, 24)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (97, N'13', 1, 25)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (98, N'91', 0, 25)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (99, N'85', 0, 25)
GO
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (100, N'27', 0, 25)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (101, N'0', 1, 26)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (102, N'91', 0, 26)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (103, N'85', 0, 26)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (104, N'27', 0, 26)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (105, N'16', 1, 27)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (106, N'91', 0, 27)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (107, N'85', 0, 27)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (108, N'27', 0, 27)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (109, N'-4', 1, 28)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (110, N'91', 0, 28)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (111, N'85', 0, 28)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (112, N'27', 0, 28)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (113, N'-4', 1, 29)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (114, N'91', 0, 29)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (115, N'85', 0, 29)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (116, N'27', 0, 29)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (117, N'6', 1, 30)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (118, N'91', 0, 30)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (119, N'85', 0, 30)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (120, N'27', 0, 30)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (121, N'24', 1, 31)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (122, N'91', 0, 31)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (123, N'85', 0, 31)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (124, N'27', 0, 31)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (125, N'14', 1, 32)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (126, N'91', 0, 32)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (127, N'85', 0, 32)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (128, N'27', 0, 32)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (129, N'3', 1, 33)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (130, N'91', 0, 33)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (131, N'85', 0, 33)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (132, N'27', 0, 33)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (133, N'4', 1, 34)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (134, N'91', 0, 34)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (135, N'85', 0, 34)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (136, N'27', 0, 34)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (137, N'0', 1, 35)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (138, N'91', 0, 35)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (139, N'85', 0, 35)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (140, N'27', 0, 35)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (141, N'3', 1, 36)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (142, N'91', 0, 36)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (143, N'85', 0, 36)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (144, N'27', 0, 36)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (145, N'10', 1, 37)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (146, N'91', 0, 37)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (147, N'85', 0, 37)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (148, N'27', 0, 37)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (149, N'15', 1, 38)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (150, N'91', 0, 38)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (151, N'85', 0, 38)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (152, N'27', 0, 38)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (153, N'15', 1, 39)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (154, N'91', 0, 39)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (155, N'85', 0, 39)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (156, N'27', 0, 39)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (157, N'-3', 1, 40)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (158, N'91', 0, 40)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (159, N'85', 0, 40)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (160, N'27', 0, 40)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (161, N'9', 1, 41)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (162, N'91', 0, 41)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (163, N'85', 0, 41)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (164, N'27', 0, 41)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (165, N'22', 1, 42)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (166, N'91', 0, 42)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (167, N'85', 0, 42)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (168, N'27', 0, 42)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (169, N'15', 1, 43)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (170, N'91', 0, 43)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (171, N'85', 0, 43)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (172, N'27', 0, 43)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (173, N'15', 1, 44)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (174, N'91', 0, 44)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (175, N'85', 0, 44)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (176, N'27', 0, 44)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (177, N'10', 1, 45)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (178, N'91', 0, 45)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (179, N'85', 0, 45)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (180, N'27', 0, 45)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (181, N'4', 1, 46)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (182, N'91', 0, 46)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (183, N'85', 0, 46)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (184, N'27', 0, 46)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (185, N'6', 1, 47)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (186, N'91', 0, 47)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (187, N'85', 0, 47)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (188, N'27', 0, 47)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (189, N'0', 1, 48)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (190, N'91', 0, 48)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (191, N'85', 0, 48)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (192, N'27', 0, 48)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (193, N'-3', 1, 49)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (194, N'91', 0, 49)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (195, N'85', 0, 49)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (196, N'27', 0, 49)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (197, N'19', 1, 50)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (198, N'91', 0, 50)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (199, N'85', 0, 50)
GO
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (200, N'27', 0, 50)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (201, N'11', 1, 51)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (202, N'91', 0, 51)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (203, N'85', 0, 51)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (204, N'27', 0, 51)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (205, N'10', 1, 52)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (206, N'91', 0, 52)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (207, N'85', 0, 52)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (208, N'27', 0, 52)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (209, N'9', 1, 53)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (210, N'91', 0, 53)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (211, N'85', 0, 53)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (212, N'27', 0, 53)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (213, N'8', 1, 54)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (214, N'91', 0, 54)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (215, N'85', 0, 54)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (216, N'27', 0, 54)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (217, N'13', 1, 55)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (218, N'91', 0, 55)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (219, N'85', 0, 55)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (220, N'27', 0, 55)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (221, N'8', 1, 56)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (222, N'91', 0, 56)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (223, N'85', 0, 56)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (224, N'27', 0, 56)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (225, N'13', 1, 57)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (226, N'91', 0, 57)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (227, N'85', 0, 57)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (228, N'27', 0, 57)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (229, N'3', 1, 58)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (230, N'91', 0, 58)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (231, N'85', 0, 58)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (232, N'27', 0, 58)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (233, N'-2', 1, 59)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (234, N'91', 0, 59)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (235, N'85', 0, 59)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (236, N'27', 0, 59)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (237, N'8', 1, 60)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (238, N'91', 0, 60)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (239, N'85', 0, 60)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (240, N'27', 0, 60)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (241, N'19', 1, 61)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (242, N'91', 0, 61)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (243, N'85', 0, 61)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (244, N'27', 0, 61)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (245, N'21', 1, 62)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (246, N'91', 0, 62)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (247, N'85', 0, 62)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (248, N'27', 0, 62)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (249, N'8', 1, 63)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (250, N'91', 0, 63)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (251, N'85', 0, 63)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (252, N'27', 0, 63)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (253, N'6', 1, 64)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (254, N'91', 0, 64)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (255, N'85', 0, 64)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (256, N'27', 0, 64)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (257, N'14', 1, 65)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (258, N'91', 0, 65)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (259, N'85', 0, 65)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (260, N'27', 0, 65)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (261, N'5', 1, 66)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (262, N'91', 0, 66)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (263, N'85', 0, 66)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (264, N'27', 0, 66)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (265, N'7', 1, 67)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (266, N'91', 0, 67)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (267, N'85', 0, 67)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (268, N'27', 0, 67)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (269, N'3', 1, 68)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (270, N'91', 0, 68)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (271, N'85', 0, 68)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (272, N'27', 0, 68)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (273, N'0', 1, 69)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (274, N'91', 0, 69)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (275, N'85', 0, 69)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (276, N'27', 0, 69)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (277, N'10', 1, 70)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (278, N'91', 0, 70)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (279, N'85', 0, 70)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (280, N'27', 0, 70)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (281, N'11', 1, 71)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (282, N'91', 0, 71)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (283, N'85', 0, 71)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (284, N'27', 0, 71)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (285, N'13', 1, 72)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (286, N'91', 0, 72)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (287, N'85', 0, 72)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (288, N'27', 0, 72)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (289, N'9', 1, 73)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (290, N'91', 0, 73)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (291, N'85', 0, 73)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (292, N'27', 0, 73)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (293, N'5', 1, 74)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (294, N'91', 0, 74)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (295, N'85', 0, 74)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (296, N'27', 0, 74)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (297, N'13', 1, 75)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (298, N'91', 0, 75)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (299, N'85', 0, 75)
GO
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (300, N'27', 0, 75)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (301, N'0', 1, 76)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (302, N'91', 0, 76)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (303, N'85', 0, 76)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (304, N'27', 0, 76)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (305, N'16', 1, 77)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (306, N'91', 0, 77)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (307, N'85', 0, 77)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (308, N'27', 0, 77)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (309, N'-4', 1, 78)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (310, N'91', 0, 78)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (311, N'85', 0, 78)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (312, N'27', 0, 78)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (313, N'-4', 1, 79)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (314, N'91', 0, 79)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (315, N'85', 0, 79)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (316, N'27', 0, 79)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (317, N'6', 1, 80)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (318, N'91', 0, 80)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (319, N'85', 0, 80)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (320, N'27', 0, 80)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (321, N'van vat sinh soi', 0, 81)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (322, N'hi hi', 1, 81)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (323, N'85', 0, 81)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (325, N'he', 1, 82)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (326, N'425', 0, 82)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (327, N'Nhập nội dung tại đêi', 0, 82)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (329, N'peeeeeee', 1, 83)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (330, N'2222', 0, 83)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (331, N'27', 0, 83)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (332, N'111111', 0, 83)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (334, N'them zo', 0, 84)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (335, N'Nhập nội dung tại đêi', 0, 84)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (336, N'nhap cau tra loi tai dei', 0, 84)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (337, N'91', 0, 85)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (338, N'85', 0, 85)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (339, N'27', 0, 85)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (340, N'3', 0, 85)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (341, N'aaa', 0, 86)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (342, N'91', 0, 86)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (343, N'27', 0, 86)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (344, N'4', 0, 86)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (345, N'85', 0, 87)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (346, N'27', 0, 87)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (347, N'0', 0, 87)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (348, N'91', 0, 87)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (349, N'85', 0, 88)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (350, N'27', 0, 88)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (351, N'3', 0, 88)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (352, N'huhu', 0, 88)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (353, N'85', 1, 89)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (354, N'27', 0, 89)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (355, N'10', 0, 89)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (356, N'91', 0, 89)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (357, N'85', 0, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (358, N'27', 0, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (359, N'15', 0, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (360, N'Nhập nội dung tại đêi', 0, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (362, N'van vat sinh soi', 1, 91)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (363, N'chu quy son', 0, 91)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (364, N'85', 0, 91)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (365, N'27', 0, 92)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (366, N'22', 0, 92)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (367, N'aaa·', 0, 92)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (368, N'85', 0, 92)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (369, N'27', 0, 93)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (370, N'15', 0, 93)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (371, N'91', 1, 93)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (372, N'85', 0, 93)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (373, N'27', 1, 94)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (374, N'15', 0, 94)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (375, N'91', 0, 94)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (376, N'85', 0, 94)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (377, N'27', 1, 95)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (378, N'10', 0, 95)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (379, N'91', 0, 95)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (380, N'85', 0, 95)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (381, N'27', 1, 96)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (382, N'4', 0, 96)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (383, N'91', 0, 96)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (384, N'11111111', 0, 96)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (385, N'27', 1, 97)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (386, N'6', 0, 97)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (387, N'91', 0, 97)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (388, N'85', 0, 97)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (389, N'27', 1, 98)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (390, N'0', 0, 98)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (391, N'91', 0, 98)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (392, N'85', 0, 98)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (393, N'27', 0, 99)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (394, N'-3', 0, 99)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (395, N'91', 0, 99)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (396, N'85', 0, 99)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (397, N'27', 0, 100)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (398, N'19', 0, 100)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (400, N'91', 0, 100)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (407, N'hehe', 0, 81)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (410, N'14', 0, 83)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (412, N'nigg', 0, 86)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (418, N'hehe', 0, 88)
GO
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (422, N'91', 1, 86)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (427, N'Nhập nội dung tại đêi', 0, 99)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (431, N'Nhập nội dung tại đêi', 1, 100)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (433, N'aaaa', 0, 84)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (435, N'aaaa', 0, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (436, N'91', 0, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (437, N'91', 1, 88)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (458, N'chu quy son ', 0, 91)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (462, N'Sơn', 0, 81)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (463, N'aaaaaa', 1, 99)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (464, N'Nhập nội dung tại đây', 1, 87)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (467, N'chu qy ', 0, 82)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (468, N'nigg', 1, 92)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (469, N'chu quy son', 1, 84)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (471, N'aaaaa', 1, 85)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (472, N'Nhập nội dung tại đây', 1, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (476, N'aaaaaaaaaaa', 0, 83)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (480, N'Nhập nội dung tại đây', 0, 103)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (481, N'aaaaaaaaaa', 0, 103)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (482, N'haha', 0, 104)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (483, N'lala', 0, 104)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (484, N'bruh', 0, 104)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (485, N'Nhập nội dung tại đêi', 0, 105)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (486, N'aaaa', 1, 105)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (491, N'aaaaaa', 0, 98)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (492, N'kkkkk', 0, 98)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (498, N'bbbbbbbb', 1, 103)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (503, N'Nhập nội dung tại đây', 0, 103)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (504, N'Nhập nội dung tại đây', 0, 103)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (505, N'aaaaaaaaaa', 0, 103)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (506, N'Nhập nội dung tại đây', 0, 103)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (507, N'aaaaaaaaaa', 0, 108)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (511, N'chu quy son', 1, 108)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (513, N'aaaaaaaaaaaaaa', 0, 108)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (514, N'aaaaaaaa', 0, 108)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (519, N'aaaaaaaaaaaaaaaaa', 0, 104)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (520, N'aaaaaaa', 0, 104)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (521, N'Nhập nội dung tại đêi', 1, 104)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (526, N'aaaaaaaaaaaaa', 0, 103)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (527, N'aaaaaaaaaa', 0, 103)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (528, N'Nhập nội dung tại đây', 0, 103)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (557, N'aaaaaaa', 0, 89)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (577, N'Nhập nội dung tại đây', 0, 121)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (578, N'ligma', 0, 121)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (579, N'nigga', 0, 121)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (611, N'106666666666666666', 0, 154)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (612, N'11', 1, 154)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (613, N'1', 0, 154)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (614, N'2', 1, 155)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (615, N'3', 0, 155)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (616, N'4', 0, 155)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (617, N'106666666666666666', 0, 156)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (618, N'11', 0, 156)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (619, N'1', 0, 156)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (639, N'i love you, i hate you ', 0, 164)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (640, N'knee socks', 1, 164)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (641, N'bellyache', 0, 164)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (642, N'vô tình', 0, 164)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (649, N'Nhập nội dung tại đêi', 1, 167)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (650, N'2', 1, 168)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (651, N'3', 0, 168)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (652, N'4', 0, 168)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (653, N'106666666666666666', 0, 169)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (654, N'11', 1, 169)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (655, N'1', 0, 169)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (657, N'quang anh', 1, 156)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (663, N'hahahaha', 1, 171)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (664, N'noi dung', 0, 171)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (665, N'fffffff', 0, 171)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (671, N'nhập nội dung câu trả lời', 0, 171)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (672, N'2', 1, 172)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (673, N'3', 0, 172)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (674, N'4', 0, 172)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (675, N'106666666666666666', 0, 173)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (676, N'11', 1, 173)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (677, N'1', 0, 173)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (678, N'nhập nội dung câu trả lời', 0, 164)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (679, N'Nhập nội dung t', 0, 167)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (680, N'2', 1, 175)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (681, N'3', 0, 175)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (682, N'4', 0, 175)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (683, N'106666666666666666', 0, 176)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (684, N'11', 0, 176)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (685, N'1', 0, 176)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (686, N'2', 1, 176)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (687, N'1', 0, 178)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (688, N'2', 0, 178)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (689, N'3', 0, 178)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (690, N'4', 0, 178)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (691, N'5', 0, 178)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (692, N'2', 0, 179)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (693, N'5', 0, 179)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (694, N'4', 0, 179)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (695, N'1', 0, 182)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (696, N'2', 0, 182)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (697, N'0 ', 0, 183)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (698, N'2', 0, 183)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (699, N'2', 0, 184)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (700, N'4', 0, 184)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (701, N'9', 0, 185)
GO
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (702, N'1', 0, 185)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (703, N'0', 0, 186)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (704, N'1', 0, 186)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (705, N'2,5', 0, 187)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (706, N'2', 0, 187)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (707, N'-1', 0, 188)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (708, N'0', 0, 188)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (709, N'-0', 0, 189)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (710, N'3', 0, 188)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (711, N'-1', 0, 189)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (712, N'0', 0, 190)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (713, N'5', 0, 190)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (714, N'-9', 0, 191)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (715, N'-7', 0, 191)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (716, N'242', 0, 192)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (717, N'2', 0, 192)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (718, N'0', 0, 193)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (719, N'3', 0, 193)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (739, N'2', 0, 203)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (740, N'9', 1, 203)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (741, N'2', 1, 204)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (742, N'1', 0, 204)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (743, N'242', 1, 205)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (744, N'2', 0, 205)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (755, N'1', 1, 213)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (756, N'1', 1, 212)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (757, N'1', 1, 217)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (758, N'2', 0, 217)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (759, N'-1', 0, 218)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (760, N'2', 0, 218)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (761, N'3', 1, 219)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (762, N'5', 0, 219)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (763, N'2', 1, 220)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (764, N'0', 0, 220)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (765, N'8', 1, 221)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (766, N'3', 0, 222)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (767, N'10', 0, 221)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (768, N'5', 1, 222)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (769, N'17', 1, 223)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (770, N'6', 1, 224)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (771, N'10', 0, 223)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (772, N'6', 1, 225)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (773, N'7', 0, 225)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (774, N'12', 1, 226)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (775, N'4', 0, 226)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (776, N'14', 1, 227)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (777, N'2', 0, 227)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (778, N'9', 1, 228)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (779, N'5', 0, 228)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (780, N'8', 1, 229)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (781, N'3', 0, 229)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (782, N'-1', 1, 230)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (783, N'9', 0, 230)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (784, N'3', 1, 231)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (785, N'9', 1, 232)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (786, N'5', 0, 231)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (787, N'2', 0, 232)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (788, N'5', 1, 234)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (789, N'8', 1, 233)
SET IDENTITY_INSERT [dbo].[choices] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([gender_id], [gender_name]) VALUES (1, N'Nam')
INSERT [dbo].[Gender] ([gender_id], [gender_name]) VALUES (2, N'Nữ')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Lesson] ON 

INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (1, N'Bắt đầu với lập trình C', N'https://www.youtube.com/embed/17gp5DJEyiw', 1, N'Mô-đun này giới thiệu một quy trình mạnh mẽ để giải quyết bất kỳ vấn đề lập trình nào&mdash;Bảy bước

Bạn sẽ học cách tiếp cận một vấn đề lập trình một cách có phương pháp, để bạn có thể xây dựng một thuật toán cụ thể và chính xác.

Bạn sẽ làm việc thông qua các ví dụ với các chuỗi số và mẫu đồ họa để phát triển kỹ năng phát triển thuật toán', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (2, N'Biến và đầu ra ', N'https://www.youtube.com/watch?v=h4VBpylsjJc&ab_channel=Programiz', 1, N'Trong mô-đun này, bạn sẽ học cách đọc mã; điều này có nghĩa là bạn sẽ có thể thực thi một đoạn mã bằng tay và minh họa rõ ràng chức năng của từng câu lệnh và trạng thái của chương trình.

Hiểu cách đọc mã là cách duy nhất để đảm bảo bạn có thể viết đúng mã

Khi kết thúc mô-đun này, bạn sẽ có thể đọc và hiểu mã với các hàm, câu lệnh điều kiện, phép lặp và các kỹ thuật cơ bản khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (3, N'Các kiểu dữ liệu trong lập trình C', N'https://www.youtube.com/watch?v=sARaqR0hRI4&ab_channel=Programiz', 3, N'Mọi thứ đều là một con số đối với máy tính, nhưng các loại xác định kích thước và cách giải thích các con số.

Trong mô-đun này, bạn sẽ tìm hiểu về các loại ngoài số nguyên, cả biểu diễn khái niệm và biểu diễn phần cứng của chúng ở dạng nhị phân

Bạn sẽ tìm hiểu các loại dữ liệu cơ bản, &quot;không phải số&quot; các loại và các loại tùy chỉnh, phức tạp, cũng như một số cảnh báo quan trọng, vì vậy bạn sẽ tránh được các lỗi lập trình liên quan đến loại
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (4, N'Nhập đầu vào từ người dùng trong chương trình C.', N'https://www.youtube.com/embed/17gp5DJEyiw', 1, N'Bạn đã học được rất nhiều về thiết kế thuật toán và các khái niệm lập trình sẽ giúp bạn triển khai chúng.

Đối với dự án này, bạn sẽ phát triển và kiểm thử thuật toán của riêng mình để sắp xếp dữ liệu.
Mô-đun này sẽ củng cố tầm quan trọng của việc cụ thể hóa khi bạn viết một thuật toán và cung cấp cơ hội cho bạn để làm như vậy đối với một nhiệm vụ tính toán rất phổ biến: sắp xếp.
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (5, N'Nhận xét trong Lập trình C''', N'https://www.youtube.com/watch?v=sARaqR0hRI4&ab_channel=Programiz', 2, N'Trong mô-đun này, bạn sẽ học cách viết mã và thực hiện bài tập đầu tiên của mình trong Môi trường lập trình thực hành

Bạn đã thực hành bốn bước đầu tiên của Bảy bước trong khóa học trước và bạn sẽ xem lại chúng tại đây trước khi học Bước 5: Dịch thuật toán của bạn sang mã

Các lập trình viên chuyên nghiệp dành phần lớn thời gian để lập kế hoạch trước khi bắt đầu viết mã và bạn sẽ học cách làm như vậy', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (6, N'Toán tử C', N'https://www.youtube.com/embed/_57FcSBtJNU', 2, N'Bây giờ bạn đã biết cách lập kế hoạch cho một thuật toán và chuyển nó thành mã, bạn cần học cách biên dịch và chạy nó

Bạn sẽ tìm hiểu về trình biên dịch, chương trình này lấy mã bạn đã viết và dịch nó thành các lệnh mà máy có thể thực thi, sau đó bạn có thể chạy các lệnh này.

Bạn cũng sẽ tìm hiểu về các tùy chọn khác nhau mà bạn có thể cung cấp cho trình biên dịch, cũng như các cách khác nhau để chạy chương trình cung cấp cho bạn thông tin gỡ lỗi.
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (7, N'Loại chuyển đổi trong C', N'https://www.youtube.com/embed/xi2wf0Zy2Y4', 2, N'Hai kỹ năng quan trọng để lập trình tốt là kiểm tra&mdash;tìm các vấn đề với mã của bạn và gỡ lỗi&mdash;sửa chúng.

Trong mô-đun này, bạn sẽ học các cách có hệ thống để xác định các vấn đề trong mã của mình, cũng như cách áp dụng phương pháp khoa học để sửa chương trình của bạn khi bạn tìm thấy lỗi', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (8, N'Boolean và toán tử so sánh trong lập trình C', N'https://www.youtube.com/embed/TybmJxXRV80', 2, N'Trong mô-đun này, bạn sẽ bắt đầu dự án mà bạn sẽ hoàn thành trong suốt phần còn lại của chuyên môn.

Vào cuối mỗi khóa học, bạn sẽ viết một đoạn chương trình tính toán tỷ lệ thắng của các ván bài poker khác nhau bằng mô phỏng Monte Carlo&mdash;một cách tính toán các xác suất phức tạp bằng cách tạo dữ liệu ngẫu nhiên.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (9, N'Câu lệnh If Else trong C', N'https://www.youtube.com/embed/K8mntKyBJGc', 3, N'Con trỏ là một trong những khía cạnh quan trọng và mạnh mẽ nhất của ngôn ngữ C. Con trỏ rất quan trọng để hiểu mảng, cho phép bạn thao tác chuỗi dữ liệu.

Chúng cũng cung cấp cho lập trình viên quyền kiểm soát và tính linh hoạt khi lập trình, cho phép các giải pháp rõ ràng và hiệu quả.

Một số ngôn ngữ khác sử dụng con trỏ hoàn toàn&mdash;hoặc các cấu trúc giống như con trỏ&mdash;vì vậy việc hiểu cách sử dụng chúng sẽ giúp bạn trở thành một lập trình viên giỏi hơn trong bất kỳ ngôn ngữ nào.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (10, N'Toán tử bậc ba trong C', N'https://www.youtube.com/embed/05xv2nMj6Ls', 3, N'Mảng là dãy bộ nhớ cùng loại được đảm bảo nối tiếp nhau.

Đây là một định dạng dữ liệu cực kỳ hữu ích, cho phép bạn lưu trữ nhiều thứ cùng nhau dưới một tên biến. Trong mô-đun này, bạn sẽ học cách sử dụng mảng để giải quyết các vấn đề phức tạp hơn và đặt nền tảng cho các kiểu dữ liệu phức tạp hơn.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (11, N'Switch Statement trong lập trình C ', N'https://www.youtube.com/embed/u6mb8NNwojA', 3, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng.

Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều.

Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển &quot;gọi hàm nào&quot; làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (12, N'vòng lặp while trong lập trình C', N'https://www.youtube.com/embed/WgS_SF1VrEk', 3, N'Bây giờ bạn đã quen với phép lặp, trong đó phép lặp được thể hiện dưới dạng các vòng lặp.

Một kỹ thuật lập trình khác để thực hiện các ý tưởng tương tự là &quot;đệ quy&quot; trong đó một trường hợp phức tạp hơn của một vấn đề được thể hiện dưới dạng các giải pháp cho các trường hợp đơn giản hơn của vấn đề.

Trong mô-đun này, bạn sẽ học cách đọc và viết mã đệ quy, cung cấp cho bạn một tùy chọn mạnh mẽ khác để tiếp cận các vấn đề lập trình.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (13, N'for loop trong lập trình C', N'https://www.youtube.com/embed/Xtl1oGtcX-8', 4, N'Cho đến nay, các chương trình của chúng tôi có tương tác khá hạn chế với người dùng hoặc phần còn lại của hệ thống, in một số kết quả ra đầu ra tiêu chuẩn (thường là tới thiết bị đầu cuối).

Bây giờ chúng ta đã học về các chủ đề như chuỗi và mảng, chúng ta đã sẵn sàng học cách viết chương trình lấy đầu vào từ người dùng, lấy đối số trên dòng lệnh, truy cập tệp và thực hiện nhiều việc khác mà chúng ta thường nghĩ là thực. các chương trình như đang làm.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (14, N'break và continue trong lập trình C', N'https://www.youtube.com/embed/DpPf9XskST8', 4, N'Cho đến nay, hầu hết bộ nhớ chúng ta đã sử dụng đã được đặt trên ngăn xếp.

Cấp phát bộ nhớ động giúp lập trình viên linh hoạt hơn nhiều, ở chỗ nó cho phép bạn yêu cầu cấp phát một lượng bộ nhớ cụ thể trên heap, để nó không biến mất cùng với khung ngăn xếp của hàm gọi.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (15, N'Hàm C', N'https://www.youtube.com/embed/Npo1u37lcg8', 4, N'Cho đến nay, chúng tôi đã tập trung hoàn toàn vào lập trình trong quy mô nhỏ&mdash;thiết kế thuật toán cho một nhiệm vụ quy mô nhỏ, triển khai, thử nghiệm và gỡ lỗi cho nhiệm vụ đó.

Mô-đun này thảo luận về ba điểm khác biệt chính mà &quot;thực tế&quot; các chương trình trưng bày.

1) Chúng có xu hướng lớn hơn nhiều so với những gì chúng tôi đã viết.
) Nhiều người làm việc với chúng, đôi khi là các nhóm từ hàng trăm đến hàng nghìn người.

3) Phần mềm thực sự có tuổi thọ dài và trong thời gian đó nó phải được bảo trì.

Bây giờ bạn đã hiểu những kiến thức cơ bản về lập trình quy mô nhỏ, chúng ta đã sẵn sàng để bắt đầu tìm hiểu về lập trình quy mô lớn!', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (16, N'Phạm vi biến C', N'https://www.youtube.com/embed/ej-GOnj7mj0', 4, N'Trong mô-đun này, bạn sẽ hoàn thành Dự án Poker!

Bây giờ bạn đã biết về cấp phát bộ nhớ động, đầu vào của người dùng và cách lập trình tổng thể, bạn có thể viết phần cuối cùng của chương trình.

Bạn sẽ viết mã để đọc trong một tệp bằng một tay các quân bài và mã để chọn các quân bài chưa biết từ bộ bài đã xáo.

Khi bạn lập trình với các cấu trúc dữ liệu phức tạp hơn, tầm quan trọng của việc vẽ những bức tranh đẹp sẽ tăng lên.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (17, N'Hàm thư viện chuẩn C', N'https://www.youtube.com/embed/OJvwk3pLK34', 1, N'Bây giờ bạn đã học về con trỏ và mảng, bạn sẽ xây dựng dựa trên mã bạn đã viết trong Khóa học 2 để xây dựng một cỗ bài và đánh giá một ván bài xì phé.

Trong khóa học tiếp theo, bạn sẽ hoàn thành chương trình tính toán tỷ lệ cược poker bằng mô phỏng Monte Carlo.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (18, N'Python là gì?', N'https://www.youtube.com/embed/zGLYC3e5mks', 5, N'Đây là những tài liệu cho toàn khóa học cũng như là phần đầu tiên của Chương Một nơi chúng ta khám phá ý nghĩa của việc viết chương trình.Chúng tôi hoàn thành Chương Một và có bài kiểm tra và bài tập đầu tiên vào tuần thứ ba của lớp học.Trong suốt khóa học, bạn có thể muốn quay lại và xem những tài liệu này.Phần này sẽ không mất cả tuần.', 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (19, N'Python Print Values và biến trong Python', N'https://www.youtube.com/embed/i83VkP0LHPI', 5, N'Trong mô-đun này, bạn sẽ thiết lập mọi thứ để có thể viết chương trình Python.

Không phải tất cả các hoạt động trong mô-đun này đều bắt buộc đối với lớp học này, vì vậy vui lòng đọc phần &quot;Sử dụng Python trong Lớp học này&quot; vật liệu cho các chi tiết.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (20, N'Làm cách nào để lấy đầu vào của người dùng trong Python?', N'https://www.youtube.com/embed/DRBybZ6hsY0', 5, N'Trong chương đầu tiên, chúng tôi cố gắng đề cập đến &quot;bức tranh lớn&quot; lập trình để bạn có được &quot;mục lục&quot; của phần còn lại của cuốn sách.

Đừng lo lắng nếu không phải mọi thứ đều có ý nghĩa hoàn hảo ngay lần đầu tiên bạn nghe thấy.

Chương này khá rộng và bạn sẽ được lợi nếu đọc chương này trong cuốn sách bên cạnh việc xem các bài giảng để hiểu sâu hơn.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (21, N'Nhận xét Python (Cách tạo và sử dụng nhận xét?', N'https://www.youtube.com/embed/rhF1x2lnRQA', 5, N'Trong chương này, chúng tôi đề cập đến cách một chương trình sử dụng bộ nhớ của máy tính để lưu trữ, truy xuất và tính toán thông tin.', 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (22, N'Toán tử trong Python', N'https://www.youtube.com/embed/xTmEqNRr9T4', 6, N'Trong lớp học này, chúng tôi tiếp tục nơi chúng tôi đã dừng lại ở lớp trước, bắt đầu từ Chương 6 của sách giáo khoa và bao gồm các Chuỗi và chuyển sang cấu trúc dữ liệu.

Tuần thứ hai của lớp học này dành riêng cho việc cài đặt Python nếu bạn thực sự muốn chạy các ứng dụng trên máy tính để bàn hoặc máy tính xách tay của mình.

Nếu bạn chọn không cài đặt Python, bạn có thể bỏ qua tuần thứ ba và bắt đầu.', 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (23, N'Python Booleans (Toán tử so sánh & logic', N'https://www.youtube.com/embed/mrryXQnlYN8', 6, N'Trong mô-đun này, bạn sẽ thiết lập mọi thứ để có thể viết chương trình Python.

Chúng tôi không yêu cầu cài đặt Python cho lớp này.

Bạn có thể viết và kiểm tra các chương trình Python trong trình duyệt bằng cách sử dụng &quot;Python Code Playground&quot; trong bài học này. Vui lòng đọc phần &quot;Sử dụng Python trong Lớp học này&quot; vật liệu cho các chi tiết.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (24, N'Điều kiện if...else trong Python', N'https://www.youtube.com/embed/497MClrekMY', 6, N'Cho đến nay, chúng tôi đã làm việc với dữ liệu được đọc từ người dùng hoặc dữ liệu ở dạng hằng số.

Nhưng các chương trình thực xử lý lượng dữ liệu lớn hơn nhiều bằng cách đọc và ghi tệp trên bộ lưu trữ thứ cấp trên máy tính của bạn.

Trong chương này, chúng ta bắt đầu viết những chương trình đầu tiên đọc, quét và xử lý dữ liệu thực.', 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (25, N'Vòng lặp While trong Python', N'https://www.youtube.com/embed/5AOfDuV6X30', 6, N'Khi chúng ta muốn giải quyết các vấn đề phức tạp hơn trong Python, chúng ta cần các biến mạnh hơn.

Cho đến bây giờ, chúng tôi đã sử dụng các biến đơn giản để lưu trữ các số hoặc chuỗi trong đó chúng tôi có một giá trị duy nhất trong một biến.

Bắt đầu với danh sách, chúng tôi sẽ lưu trữ nhiều giá trị trong một biến bằng cách sử dụng sơ đồ lập chỉ mục để lưu trữ, sắp xếp và truy xuất các giá trị khác nhau từ bên trong một biến.

Chúng tôi gọi những biến đa giá trị này là &quot;bộ sưu tập&quot; hoặc &quot;cấu trúc dữ liệu&quot;', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (26, N'câu lệnh break" & "continue" trong Python', N'https://www.youtube.com/embed/Mho_1WO-ht4', 7, N'Trong phần này, bạn sẽ cài đặt Python và trình soạn thảo văn bản. Trong các lớp chuyên môn trước đây, đây là một bài tập tùy chọn, nhưng trong lớp này, đây là yêu cầu đầu tiên để bắt đầu.

Từ thời điểm này trở đi, chúng tôi sẽ ngừng sử dụng môi trường phân loại Python dựa trên trình duyệt vì môi trường Python dựa trên trình duyệt (Skulpt) không có khả năng chạy các chương trình phức tạp hơn mà chúng tôi sẽ phát triển trong lớp này.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (27, N'Vòng lặp trong Python', N'https://www.youtube.com/embed/yaqMSBr_NCU', 7, N'Biểu thức chính quy là một ngôn ngữ rất chuyên biệt cho phép chúng ta tìm kiếm các chuỗi và trích xuất dữ liệu từ các chuỗi một cách ngắn gọn.

Biểu thức thông thường là một ngôn ngữ cho chính họ.

Không nhất thiết phải biết cách sử dụng các biểu thức chính quy, nhưng chúng có thể khá hữu ích và mạnh mẽ', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (28, N'Truyền câu lệnh trong Python', N'https://www.youtube.com/embed/n4B3zYfk_Pg', 7, N'Trong phần này, chúng ta tìm hiểu về các giao thức mà trình duyệt web sử dụng để truy xuất tài liệu và ứng dụng web sử dụng để tương tác với Giao diện Chương trình Ứng dụng (API)', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (29, N'Hàm Python', N'https://www.youtube.com/embed/Bkupx9gX0o', 7, N'Trong phần này, chúng ta học cách sử dụng Python để truy xuất dữ liệu từ các trang web và API qua Internet', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (30, N'Đối số Python trong hàm', N'https://www.youtube.com/embed/Gf-Ws2cXEuA', 8, N'Để bắt đầu lớp học này, chúng tôi trình bày những kiến thức cơ bản về Python hướng đối tượng.

Chúng ta sẽ không viết các đối tượng của riêng mình, nhưng vì nhiều thứ chúng ta sử dụng như BeautifulSoup, chuỗi, từ điển, kết nối cơ sở dữ liệu đều sử dụng các mẫu Hướng đối tượng (OO), ít nhất chúng ta nên hiểu một số mẫu và thuật ngữ của nó', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (31, N'Biến toàn cục Python', N'https://www.youtube.com/embed/ngCDTEWVjrQ', 8, N'Chúng ta tìm hiểu bốn thao tác CRUD cốt lõi (Tạo, Đọc, Cập nhật và Xóa) để quản lý dữ liệu được lưu trữ trong cơ sở dữ liệu.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (32, N'Danh sách & Bộ dữ liệu trong Python', N'https://www.youtube.com/embed/hANUgg72TDc', 8, N'Trong phần này, chúng ta tìm hiểu về cách dữ liệu được lưu trữ trên nhiều bảng trong cơ sở dữ liệu và cách các hàng được liên kết (nghĩa là chúng ta thiết lập mối quan hệ) trong cơ sở dữ liệu', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (33, N'Cách làm việc với ''''Văn bản''''?', N'https://www.youtube.com/embed/GQywwPUrsgA', 8, N'Trong phần này, chúng ta khám phá cách mô hình hóa các tình huống như sinh viên đăng ký vào các khóa học trong đó mỗi khóa học có nhiều sinh viên và mỗi sinh viên đăng ký vào nhiều khóa học.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (34, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (35, N'Giới thiệu về Digital Marketing', N'https://www.youtube.com/embed/ZRrH90b5rIE', 11, N'Bạn sẽ tìm hiểu những gì sắp có cho Khóa học 1 và toàn bộ chương trình chứng chỉ.Bạn cũng sẽ tìm hiểu về nền tảng Coursera, quy trình và loại nội dung, đồng thời gặp gỡ những người học khác trong chương trình.Sau đó, bạn sẽ tìm hiểu về tiếp thị kỹ thuật số và thương mại điện tử cơ bản, nhiệm vụ mà những người làm việc trong các lĩnh vực này thực hiện và các kỹ năng có thể chuyển đổi mà bạn có thể đã có.Cuối cùng, bạn sẽ nhận được một số mẹo để bắt đầu sự nghiệp trong lĩnh vực này', 0)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (36, N'Mô đun tiếp thị kĩ thuật số', N'https://www.youtube.com/embed/DqKFjgGvbnU', 11, N'Bạn sẽ tìm hiểu những vai trò và bộ phận tiếp thị kỹ thuật số và thương mại điện tử thực hiện trong các tổ chức và cách họ tạo ra giá trị.Bạn cũng sẽ được giới thiệu về các khái niệm tiếp thị, chẳng hạn như hành trình của khách hàng và kênh tiếp thị, tạo cơ sở cho phần lớn công việc của những vai trò này', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (37, N'Làm thế nào để bắt đầu một blog', N'https://www.youtube.com/embed/FgtB4fWIjRE', 11, N'Bạn sẽ khám phá mối quan hệ giữa tiếp thị kỹ thuật số và xây dựng thương hiệu cũng như cách các doanh nghiệp có thể tận dụng cả hai để thành công.

Bạn sẽ điều tra các yếu tố của chiến lược tiếp thị kỹ thuật số, bao gồm thiết lập mục tiêu, lựa chọn kênh và lập kế hoạch nội dung.

Sau đó, bạn sẽ tìm hiểu về các kênh và nền tảng thường được sử dụng, như tối ưu hóa công cụ tìm kiếm (SEO), tiếp thị công cụ tìm kiếm (SEM), quảng cáo hiển thị hình ảnh, tiếp thị truyền thông xã hội và tiếp thị qua email.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (38, N'Thiết lập blog của bạn như một blogger chuyên nghiệp', N'https://www.youtube.com/embed/ZjVoShBahRg', 12, N'Bạn sẽ tiếp tục tìm hiểu về kênh tiếp thị và các giai đoạn của nó: nhận thức, cân nhắc, chuyển đổi và lòng trung thành.

Bạn cũng sẽ tìm hiểu các chiến lược biến khách hàng tiềm năng thành khách hàng trả tiền và mua lại ở mỗi giai đoạn của kênh tiếp thị.

Cuối cùng, bạn sẽ khám phá cách sử dụng chân dung khách hàng để hiểu người tiêu dùng&rsquo; mục tiêu, điểm đau và nền tảng trực tuyến ưa thích.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (39, N'SEO là gì trong năm 2020?', N'https://www.youtube.com/embed/N8DhIndTi6E', 12, N'Bạn sẽ xem xét các nguyên tắc cơ bản của SEO.

Sau đó, bạn sẽ hiểu cơ bản về cách thức hoạt động của công cụ Tìm kiếm Google và cách các trang web được xếp hạng.

Sau đó, bạn sẽ học cách thực hiện nghiên cứu từ khóa', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (40, N'SEO Offpage – Backlinks là gì?', N'https://www.youtube.com/embed/QYrupSGZ3B8', 12, N'Bạn sẽ kiểm tra cách tối ưu hóa một trang web để tối ưu hóa công cụ tìm kiếm, bao gồm các chiến lược về nội dung, hình ảnh và liên kết.

Bạn cũng sẽ tìm hiểu cách giúp các công cụ tìm kiếm hiểu rõ hơn về nội dung của bạn.

Tiếp theo, bạn sẽ khám phá cách tạo tiêu đề trang web hiệu quả và thêm đánh dấu dữ liệu có cấu trúc để giúp người dùng và công cụ tìm kiếm tìm thấy những gì họ cần.

Sau đó, bạn sẽ tìm hiểu tất cả về cách sử dụng các công cụ SEO để phân tích hiệu suất tìm kiếm và hành vi của người dùng.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (41, N'Rất vui được gặp bạn!', N'https://www.youtube.com/embed/IeaadwctbD4', 13, N'Tìm hiểu cấu trúc viết email cơ bản

1) Nắm được các cấu trúc email chuyên nghiệp cơ bản bằng tiếng Anh.

2) Xác định những việc chính cần làm và những việc cần tránh.

3) Tìm hiểu cách chỉnh sửa cơ bản dấu câu và cách viết hoa', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (42, N'How Are You?', N'https://www.youtube.com/embed/S2lFmQcXsM4', 13, N'1) Viết dòng chủ đề hiệu quả hơn.

2) Hiểu cách tổ chức văn bản email.

3) Viết văn bản email tốt hơn', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (43, N'What does she look like?', N'https://www.youtube.com/embed/QTd9Hu-1RH0', 13, N'Phân tích và xác định các đặc điểm của email giới thiệu và thông báo.

2) Tìm hiểu và sử dụng ngôn ngữ chính cho các loại email này để sửa lại email đầu tiên của bạn', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (44, N'Where are you from?', N'https://www.youtube.com/embed/Hbcn940MG6A', 14, N'Giao tiếp trực tiếp: Sức mạnh của kết nối trực tiếp

Thông qua các bài học trong mô-đun này, bạn sẽ có thể làm việc với vốn từ vựng hội thoại chuyên nghiệp cũng như trọng âm và ngữ điệu thích hợp của từ

Sau bài học cuối cùng, bạn sẽ có thể trình bày một &quot;Bài phát biểu trong thang máy&quot;', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (45, N'Do you speak English?', N'https://www.youtube.com/embed/sGCS1SoVKqk', 14, N'Gặp gỡ và nói chuyện trực tuyến

Mô-đun này xem xét các tình huống thảo luận nhóm với trọng tâm là hội nghị truyền hình

Bằng cách xem xét các tình huống khác nhau, bạn sẽ học ngôn ngữ chính để thảo luận nhóm cũng như đạt được một số nghi thức kinh doanh', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (46, N'My Family', N'https://www.youtube.com/embed/rX8V9_P84Kk', 14, N'Nói chuyện qua điện thoại mạnh mẽ

Trong mô-đun này, bạn sẽ cải thiện việc sử dụng ngôn ngữ và cách phát âm cho các cuộc trò chuyện qua điện thoại.

Sự khác biệt về cách phát âm phức tạp hơn trong can/can&#39;t và số sẽ là trọng tâm cho cách phát âm.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (47, NULL, NULL, 15, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (48, N'What this Course Will Do for You and Your Purposes', N'https://www.youtube.com/embed/WQui_3Hpmmc', 15, N'Học phần này giới thiệu Chuyên ngành Quản lý danh mục đầu tư và đầu tư

Mô-đun này thảo luận về cách thức tổ chức khóa học đầu tiên, Thị trường tài chính toàn cầu và các công cụ.

Nó phác thảo các giai đoạn khác nhau của quy trình quản lý đầu tư, hướng dẫn trọng tâm của Chuyên ngành.

Nó cũng xem xét các khái niệm và công cụ tài chính cơ bản như giá trị thời gian của tiền, lợi nhuận tính toán, chiết khấu và gộp.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (49, N'Rủi ro và khủng hoảng tài chính', N'https://www.youtube.com/embed/QbosMr2JVrc', 15, N'Trong mô-đun này và mô-đun tiếp theo, chúng tôi đề cập đến các đặc điểm thể chế chính của thị trường và công cụ tài chính.

Chúng tôi hỏi những câu hỏi sau: Tại sao thị trường tài chính tồn tại? Họ đóng vai trò gì?

Tài sản tài chính là gì và chúng khác với tài sản thực như thế nào? Làm thế nào để tất cả đến với nhau?

Về cơ bản, đây là nơi tôi hy vọng bạn sẽ nhìn thấy bức tranh toàn cảnh về toàn bộ hệ thống tài chính và cách nó kết hợp với nhau.

Mô-đun 2 tập trung vào chứng khoán có thu nhập cố định. Chúng ta sẽ bắt đầu với việc xem xét các vấn đề cơ bản về định giá trái phiếu.

Bạn sẽ tìm hiểu về các công cụ thị trường tiền tệ ngắn hạn, chứng khoán Kho bạc Hoa Kỳ cũng như trái phiếu doanh nghiệp.

Sau mô-đun 2, bạn sẽ có thể mô tả chứng khoán thu nhập cố định, làm quen với các đặc điểm thể chế của chúng và xác định dòng tiền của chúng.

Cuối cùng, bạn sẽ học cách định giá các chứng khoán có thu nhập cố định như tín phiếu kho bạc, trái phiếu không lãi suất hoặc trái phiếu phiếu lãi và tính toán lợi tức', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (50, N'Công nghệ và Phát minh trong Tài chính', N'https://www.youtube.com/embed/Iij2mpilSJo', 15, N'Chúng tôi tiếp tục tổng quan về thị trường tài chính và các công cụ.

Tiếp theo, chúng tôi tập trung vào hai loại tài sản chính khác: chứng khoán vốn và các công cụ phái sinh.

Bạn sẽ tìm hiểu về vốn chủ sở hữu khác với chứng khoán có thu nhập cố định như thế nào, dòng tiền liên quan đến cổ phiếu và cổ phiếu ưu đãi cũng như cách tìm giá trị của cổ phiếu.

Bạn cũng sẽ tìm hiểu về các chiến lược lựa chọn. Sau khi hoàn thành mô-đun 3, bạn sẽ có thể mô tả tất cả các loại tài sản chính, bao gồm các công cụ phái sinh như quyền chọn, hợp đồng kỳ hạn và hợp đồng tương lai.

Bạn sẽ có thể giải thích những thứ này khác nhau như thế nào và kết quả của chúng.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (51, N'Hỗ trợ các tổ chức tài chính', N'https://www.youtube.com/embed/_B_24GUWdSM', 16, N'Chúng tôi thảo luận về cách thị trường tài chính thực sự hoạt động.

Chúng ta sẽ nói về các địa điểm giao dịch khác nhau và cơ chế giao dịch chứng khoán.

Tôi sẽ nhấn mạnh nhiều thuật ngữ và xu hướng mới nhất trong giao dịch chứng khoán để bạn làm quen với cách thức hoạt động của thị trường tài chính

Sau mô-đun này, bạn sẽ có thể so sánh các địa điểm giao dịch, cơ chế giao dịch khác nhau và có thể giải thích các loại lệnh khác nhau, bao gồm các giao dịch như mua ký quỹ và bán khống; bạn sẽ quen thuộc với ngôn ngữ và thuật ngữ bạn cần để trở thành một người thực hành đầu tư có hiểu biết', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (52, N'Tổ chức quản lý rủi ro nguyên mẫu', N'https://www.youtube.com/embed/qfK9rCDCicE', 16, N'Chúng tôi xây dựng dựa trên các công cụ từ mô-đun trước để phát triển thước đo rủi ro và lợi nhuận của danh mục đầu tư.

Chúng tôi xác định và phân biệt giữa các nguồn rủi ro khác nhau và thảo luận về khái niệm đa dạng hóa:

làm thế nào và tại sao việc đặt các tài sản rủi ro lại với nhau trong một danh mục đầu tư sẽ loại bỏ rủi ro mang lại một danh mục đầu tư ít rủi ro hơn các thành phần của nó.

Cuối cùng, chúng tôi xem xét các công cụ định lượng giúp chúng tôi xác định công cụ &lsquo;tốt nhất&rsquo; danh mục đầu tư có ít rủi ro nhất đối với một mức lợi nhuận kỳ vọng nhất định bằng cách xem xét một ví dụ số sử dụng dữ liệu vốn chủ sở hữu quốc tế.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (53, N'Diễn giả khách mời David Swensen', N'https://www.youtube.com/embed/wRdx7kVNQ_E', 16, N'Chúng tôi mô tả cách các nhà đầu tư đưa ra lựa chọn.

Cụ thể, chúng tôi xem xét cách các chức năng tiện ích được sử dụng để thể hiện sở thích.

Chúng tôi xem xét các biện pháp để mô tả các nhà đầu tư&rsquo; thái độ đối với rủi ro.

Cuối cùng, chúng tôi thảo luận về cách chúng tôi có thể tóm tắt các nhà đầu tư&rsquo; tùy chọn sử dụng một chức năng tiện ích cụ thể: tùy chọn phương sai trung bình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (54, N'Hợp âm ĐẦU TIÊN để học trên guitar', N'https://www.youtube.com/embed/4EVT2VNMcpA', 17, N'Chào mừng bạn đến với Guitar cho người mới bắt đầu!

Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (55, N'Hợp âm THỨ HAI để học trên guitar', N'https://www.youtube.com/embed/0MtCQi-9SAM', 17, N'Trong bài học đầu tiên này, chúng ta sẽ làm mọi thứ chậm lại.

Chúng tôi sẽ tập trung vào cách chọn cây đàn guitar phù hợp với bạn và những phụ kiện cần thiết cho bất kỳ người chơi guitar nào

Chúng tôi cũng sẽ tìm hiểu các bộ phận của ghi-ta và giúp bạn cảm thấy thoải mái với nhạc cụ của mình.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (56, N'Thay đổi Hợp âm NHANH HƠN trên Guitar', N'https://www.youtube.com/embed/3g06dUrnsn4', 17, N'Trong bài học này, bạn sẽ học cách lên dây và bạn sẽ bắt đầu chơi nhạc cụ của mình từ đầu!

Hãy kiên nhẫn và ghi nhớ: tập trung vào tính chính xác và chơi đúng thời gian với máy đếm nhịp của bạn.

Những điều này quan trọng hơn nhiều so với chơi với tốc độ.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (57, N'Thanh và Nhịp ', N'https://www.youtube.com/embed/crtW9DkgVxE', 18, N'Trước tiên, chúng ta sẽ tìm hiểu âm giai ngũ cung b3, sau đó là âm giai ngũ cung b7, sau đó chúng ta sẽ tìm hiểu cách chơi âm giai này trên một dây. Chúng tôi cũng sẽ làm việc để ứng biến bằng cách sử dụng một chuỗi duy nhất.

Cuối cùng, chúng ta sẽ thực hành chơi các thang âm ở vị trí mở có thể di chuyển được.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (58, N'Ngón tay bị đau khi chơi guitar?', N'https://www.youtube.com/embed/_l6_PRSYC_A', 18, N'Bài học này, chúng ta sẽ làm việc với hợp âm rải, có nghĩa là chơi từng nốt một trong hợp âm.

Chúng ta sẽ học và thực hành các hợp âm hợp âm trưởng, hợp âm thứ, giảm dần và tăng cường.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (59, N'Những bài hát guitar dễ dàng cho người mới bắt đầu', N'https://www.youtube.com/embed/bAkuNXtgrLA', 18, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (60, N'Giới thiệu về bộ não con người', N'https://www.youtube.com/embed/bAkuNXtgrLA', 19, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (61, N'giải phẫu thần kinh', N'https://www.youtube.com/embed/bAkuNXtgrLA', 19, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (62, N'Phương pháp khoa học thần kinh nhận thức I', N'https://www.youtube.com/embed/vFZY--lgmHs', 19, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (63, N'Phương pháp khoa học thần kinh nhận thức II', N'https://www.youtube.com/embed/YD7QG4G7WVg', 20, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (64, N'Giới thiệu về bộ não con người', N'https://www.youtube.com/embed/Nk0H3o-hRMA', 20, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (65, N'Thể loại Tính chọn lọc, Tranh cãi', N'https://www.youtube.com/embed/otriwYhNtm0', 20, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (66, N'Giới thiệu', N'https://www.youtube.com/embed/rGrBHiuPlT0', 21, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (67, N'Đếm Số 1 - 100', N'https://www.youtube.com/embed/bOUqVC4XkOY', 21, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (68, N'Các ngày trong tuần và các ngày trong tháng', N'https://www.youtube.com/embed/JnoZE51WZg4', 21, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (69, N'Đi đến một điểm đến', N'https://www.youtube.com/embed/k74yjmfFb_A', 22, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (70, N'Nomimasu, Tabemasu, Mimasu, Kikimasu', N'https://www.youtube.com/embed/KUIWRsVZZZA', 22, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (71, N'To do (verb)', N'https://www.youtube.com/embed/ZGGufccTLso', 22, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (72, N'GIỚI THIỆU LÝ THUYẾT TẬP HỢP', N'https://www.youtube.com/embed/tyDKR4FG3Yw', 23, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (73, N'SẢN PHẨM CARTESIAN VÀ CẶP ĐẶT HÀNG', N'https://www.youtube.com/embed/NnEkVooAsxk', 23, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (74, N'TẬP HỢP CON VÀ TẬP HỢP CÔNG SUẤT', N'https://www.youtube.com/embed/H5D6EAezsXQ', 23, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (75, N'Ví dụ về tập hợp con và tập hợp sức mạnh', N'https://www.youtube.com/embed/4hC8y9rVanw', 24, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (76, N'BA BÀI TẬP TRONG TẬP HỢP VÀ TẬP HỢP CON', N'https://www.youtube.com/embed/v818mV6jgBQ', 24, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (77, N'THIẾT LẬP HOẠT ĐỘNG', N'https://www.youtube.com/embed/f26vt5uQ_uI', 24, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (78, N'Giới thiệu', N'https://www.youtube.com/embed/GY86lxlWWbM', 25, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (79, N'Định nghĩa tập hợp và phần tử', N'https://www.youtube.com/embed/WelPq6Kgf7s', 25, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (80, N'Định nghĩa không gian mẫu và giai thừa', N'https://www.youtube.com/embed/EOk25Tb-1bM', 25, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (81, N'Định nghĩa sự kiện', N'https://www.youtube.com/embed/EOk25Tb-1bM', 26, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (82, NULL, N'https://www.youtube.com/embed/EOk25Tb-1bM', 26, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (83, N'Định nghĩa giao lộ, liên minh, bổ sung', N'https://www.youtube.com/embed/bOUqVC4XkOY', 26, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (84, N'Định luật De Morgan được giải thích', N'https://www.youtube.com/embed/bOUqVC4XkOY', 26, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (85, N'Giới thiệu sinh lý học', N'https://www.youtube.com/embed/EOk25Tb-1bM', 27, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (86, N'Cấu trúc phân tử và trái phiếu', N'https://www.youtube.com/embed/EOk25Tb-1bM', 27, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (87, N'Phản ứng hòa tan và pH', N'https://www.youtube.com/embed/EOk25Tb-1bM', 27, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (88, N'phân tử sinh học', N'https://www.youtube.com/embed/EOk25Tb-1bM', 28, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (89, N'tế bào', N'https://www.youtube.com/embed/EOk25Tb-1bM', 28, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (90, N'Năng lượng và trao đổi chất ATP', N'https://www.youtube.com/embed/EOk25Tb-1bM', 28, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (91, N'Bàn phím Piano', N'https://www.youtube.com/embed/EOk25Tb-1bM', 29, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (92, N'Bắt đầu đọc nhạc', N'https://www.youtube.com/embed/EOk25Tb-1bM', 29, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (93, N'Đọc một giai điệu', N'https://www.youtube.com/embed/EOk25Tb-1bM', 29, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (94, N'Bàn Tay Trái Và Quy Mô Của Đô Trưởng', N'https://www.youtube.com/embed/EOk25Tb-1bM', 30, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (95, N'Learning a Piece', N'https://www.youtube.com/embed/k74yjmfFb_A', 30, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (96, N'Một tác phẩm mới, một quy mô mới và nghỉ ngơi', N'https://www.youtube.com/embed/k74yjmfFb_A', 30, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (97, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (98, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (99, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (100, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (103, N'nf - let me go', N'https://www.youtube.com/embed/6WcxRWufzus', 11, N'Talk to you with my hands tied
Walk towards you on a fine line
Everybody has a dark side
I feel embarrassed when they see mine
Rain falling from my dark skies', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (104, N'Bài tập JaVa', N'https://www.youtube.com/embed/VuNIsY6JdUw', 62, N'java', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (105, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/3tmd-ClpJxA', 63, N'giải thuật và dữ liệu', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (106, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/VuNIsY6JdUw', 63, N'bài học hay', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (107, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/RlPNh_PBZb4', 64, N'bài học giúp ích', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (108, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/RlPNh_PBZb4', 64, N'bài học bổ ích', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (109, N'Bài tập JaVa', N'https://www.youtube.com/embed/RlPNh_PBZb4', 65, N'bài học vui', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (110, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/3tmd-ClpJxA', 65, N'Chào mừng bạn đến với Guitar cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (111, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/VuNIsY6JdUw', 66, N'Chào mừng bạn đến với Guitar cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (112, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/RlPNh_PBZb4', 66, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (113, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/RlPNh_PBZb4', 61, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (114, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/RlPNh_PBZb4', 61, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (115, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/RlPNh_PBZb4', 67, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (116, N'Bài tập JaVa', N'https://www.youtube.com/embed/RlPNh_PBZb4', 67, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (117, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/3tmd-ClpJxA', 68, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (118, N'Bài tập JaVa', N'https://www.youtube.com/embed/RlPNh_PBZb4', 68, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (119, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/RlPNh_PBZb4', 69, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (120, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/RlPNh_PBZb4', 69, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (121, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/3tmd-ClpJxA', 70, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (122, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/3tmd-ClpJxA', 70, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (123, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/3tmd-ClpJxA', 71, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (124, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/VuNIsY6JdUw', 71, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (125, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/3tmd-ClpJxA', 72, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (126, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/3tmd-ClpJxA', 72, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (127, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/3tmd-ClpJxA', 62, N'Chào mừng bạn đến cho người mới bắt đầu! Trước khi bạn bắt đầu khóa học, chúng tôi sẽ đề cập đến tất cả thông tin chi tiết về khóa học và những điều bạn cần biết để tận dụng tối đa khóa học trực tuyến khổng lồ Berklee của mình', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (128, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/_ZSy7YJiQZQ', 73, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (129, N'Bài tập lập trình', N'https://www.youtube.com/embed/RlPNh_PBZb4', 73, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (130, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/_ZSy7YJiQZQ', 74, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (131, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/_ZSy7YJiQZQ', 74, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (132, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/VuNIsY6JdUw', 75, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (133, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/3tmd-ClpJxA', 75, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng có thể tìm hiểu thêm các cơ bản về con trỏ, và mảng cũng như một số cách sử dụng quan trọng của chúng', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (134, N'Bài tập lập trình', N'https://www.youtube.com/embed/VuNIsY6JdUw', 76, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (135, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/3tmd-ClpJxA', 76, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (136, N'Bài tập lập trình', N'https://www.youtube.com/embed/RlPNh_PBZb4', 77, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (137, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/_ZSy7YJiQZQ', 77, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (138, N'Bài tập lập trình', N'https://www.youtube.com/embed/RlPNh_PBZb4', 78, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (139, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/VuNIsY6JdUw', 78, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (140, N'Bài tập lập trình', N'https://www.youtube.com/embed/RlPNh_PBZb4', 79, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (141, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/3tmd-ClpJxA', 79, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (142, N'Bài tập JaVa', N'https://www.youtube.com/embed/RlPNh_PBZb4', 80, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (143, N'Bài tập JaVa', N'https://www.youtube.com/embed/RlPNh_PBZb4', 80, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (144, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/RlPNh_PBZb4', 81, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (145, N'Bài tập JaVa', N'https://www.youtube.com/embed/VuNIsY6JdUw', 81, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (146, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/VuNIsY6JdUw', 82, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (147, N'Bài tập lập trình', N'https://www.youtube.com/embed/3tmd-ClpJxA', 82, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (148, N'Bài tập lập trình', N'https://www.youtube.com/embed/RlPNh_PBZb4', 83, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (149, N'Bài tập JaVa', N'https://www.youtube.com/embed/_ZSy7YJiQZQ', 83, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (150, N'Nhập môn cấu trúc giải thuật và dữ liệu', N'https://www.youtube.com/embed/VuNIsY6JdUw', 84, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (151, N'Bài tập lập trình', N'https://www.youtube.com/embed/RlPNh_PBZb4', 84, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (152, N'Lập trình website với ASP.net', N'https://www.youtube.com/embed/RlPNh_PBZb4', 85, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [section_id], [lesson_desc], [lesson_status]) VALUES (153, N'Bài tập JaVa', N'https://www.youtube.com/embed/3tmd-ClpJxA', 85, N'Bây giờ bạn đã nắm vững kiến thức cơ bản về con trỏ và mảng, đã đến lúc xem một số cách sử dụng quan trọng của chúng. Trong mô-đun này, bạn sẽ tìm hiểu về cách thao tác với chuỗi và mảng nhiều chiều. Bạn cũng sẽ tìm hiểu về con trỏ hàm, cho phép bạn chuyển "gọi hàm nào" làm tham số của hàm khác.', 1)
SET IDENTITY_INSERT [dbo].[Lesson] OFF
GO
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (1, 32, 1)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (19, 32, 1)
GO
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (1, N'Basic')
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (2, N'Intermediate')
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (3, N'Advanced')
SET IDENTITY_INSERT [dbo].[Level] OFF
GO
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (1, 1, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (1, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (1, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (1, 32, CAST(N'2023-07-01T00:00:00.000' AS DateTime), CAST(N'2023-07-11T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (2, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (3, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (3, 24, CAST(N'2022-03-06T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (3, 32, CAST(N'2023-07-02T00:00:00.000' AS DateTime), CAST(N'2023-07-12T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (4, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (5, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (5, 32, CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-31T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (6, 11, CAST(N'2023-06-19T00:00:00.000' AS DateTime), CAST(N'2023-06-29T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (6, 24, CAST(N'2023-03-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (6, 32, CAST(N'2023-07-10T00:00:00.000' AS DateTime), CAST(N'2023-07-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (7, 26, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (8, 33, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (9, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (10, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (11, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (12, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (13, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (14, 26, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (15, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (16, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (17, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (18, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (19, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (20, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (21, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (22, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (23, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (24, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (25, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (26, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (27, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (28, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (29, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (30, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (31, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (32, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (33, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (34, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (35, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (36, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (37, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (38, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (39, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (40, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (41, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (42, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (43, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (44, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (45, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (46, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (47, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (48, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (49, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (50, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (51, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (52, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (53, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (54, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (55, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (56, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (57, 26, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (58, 33, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (59, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (60, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (61, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (62, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (63, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (64, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (65, 26, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (66, 33, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (67, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (68, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (69, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (70, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (71, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (72, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (73, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (74, 33, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (75, 26, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (76, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (77, 33, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (78, 26, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (79, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (80, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (81, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (82, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (83, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (84, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (85, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (86, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (87, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (88, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (89, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (90, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (91, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (92, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (93, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (94, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (95, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (96, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (97, 26, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (98, 33, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (99, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (100, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-07-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (100, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (101, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-07-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (101, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (102, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-08-24T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (102, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (103, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-08-24T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (103, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (104, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (104, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (105, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (106, 33, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (107, 26, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (108, 24, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (109, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (110, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (110, 32, CAST(N'2023-07-20T00:00:00.000' AS DateTime), CAST(N'2023-07-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (111, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (111, 32, CAST(N'2023-07-20T00:00:00.000' AS DateTime), CAST(N'2023-07-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (112, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (113, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (113, 32, CAST(N'2023-07-20T00:00:00.000' AS DateTime), CAST(N'2023-07-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (114, 18, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (114, 32, CAST(N'2023-07-20T00:00:00.000' AS DateTime), CAST(N'2023-07-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (115, 16, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (116, 14, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (117, 13, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (117, 24, CAST(N'2023-06-24T00:00:00.000' AS DateTime), CAST(N'2023-07-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (118, 12, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (118, 24, CAST(N'2023-06-29T00:00:00.000' AS DateTime), CAST(N'2023-07-09T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end], [done]) VALUES (118, 32, CAST(N'2023-07-20T00:00:00.000' AS DateTime), CAST(N'2023-07-30T00:00:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (1, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/20491-Social-Paid-Ad-V1.png', N'Maki Villano đang kiếm được bằng thạc sĩ về khoa học dữ liệu trong khi cân bằng giữa công việc và gia đình', N'N''<br>Karim Makisig Maki Villano học kỹ thuật điện khi còn là sinh viên đại học. Ông đã đảm nhận nhiều vai trò CNTT khác nhau trong hai thập kỷ qua và hiện là kiến trúc sư giải pháp cấp cao tại một công ty dịch vụ CNTT. Anh nhanh chóng bị cuốn hút vào khoa học dữ liệu, nhận ra rằng đây là một lĩnh vực đang phát triển với nhu cầu cao đối với những người hành nghề lành nghề. Maki cảm thấy mình có thể cạnh tranh trong ngành, nhưng anh ấy cần hiểu rõ hơn về các kỹ thuật, công cụ và công nghệ khoa học dữ liệu cũng như cách chúng tương tác với công việc của anh ấy trong lĩnh vực CNTT.</br>

<br>Anh ấy quan tâm đến việc lấy bằng thạc sĩ, nhưng là một người cha đơn thân sống ở Philippines, anh ấy cần tìm một chương trình cho phép anh ấy học các kỹ năng cần thiết mà không ảnh hưởng đến cuộc sống, công việc hoặc gia đình của anh ấy. Anh ấy cũng lo ngại rằng mình không có nhiều kiến thức cơ bản về khoa học dữ liệu.</br>

<br>Khi Maki tìm thấy Thạc sĩ Khoa học về Khoa học Dữ liệu (MS-DS) từ Đại học Colorado Boulder trên Coursera, anh ấy ngay lập tức bị thu hút bởi danh tiếng xuất sắc của trường và rất hào hứng về cấu trúc tuyển sinh dựa trên thành tích. Việc thiếu kinh nghiệm của anh ấy sẽ không thành vấn đề và anh ấy có thể bắt đầu ngay lập tức.</br>

<br>Trong các chương trình khác, tôi phải đợi hàng tháng mới nhận được thông tin về việc nhập học của mình. Với CU Boulder, tôi có thể tham gia ngay và không lãng phí thời gian.</br>

<br>Maki đã đăng ký vào Chuyên ngành Pathway, một chuỗi 3 khóa học tập trung vào thống kê hoặc khoa học máy tính. Bằng cách hoàn thành cả ba khóa học trong một lộ trình với điểm trung bình tích lũy từ 3.0 trở lên, bạn sẽ ngay lập tức được nhận vào chương trình. Điều này thật hoàn hảo đối với Maki.</br>

<br>Sau khi đăng ký toàn bộ chương trình thạc sĩ, Maki rất vui khi thấy rằng định dạng trực tuyến và các công cụ trong khóa học cho phép anh ấy xử lý và tiếp thu tài liệu theo thời gian của riêng mình. Anh ấy có thể tiếp thu các bài giảng trong khi rửa bát đĩa hoặc gấp quần áo và xem lại các video cho đến khi hiểu rõ từng chủ đề. Anh ấy đặc biệt thích khóa học của mình với Tiến sĩ Anne Dougherty, người dạy Lý thuyết xác suất: Nền tảng cho dữ liệu Khoa học. Dr. Anne Dougherty quan tâm đến việc giải thích tài liệu và cung cấp nhiều cách nhìn về một khái niệm.</br>

<br>Chỉ sau một năm tham gia chương trình, Maki đã áp dụng những kiến thức mới vào vai trò hiện tại của mình</br>

<br>Khi chúng tôi phải đề xuất các hệ thống tại nơi làm việc, kiến thức thống kê mới của tôi giúp tôi tự tính toán các tham số và làm cho chúng chính xác hơn, đồng thời điều này cho phép tôi thực hiện công việc của mình tốt hơn.</br>

<br>Điều này hoàn toàn trực tuyến Thạc sĩ Khoa học về Khoa học Dữ liệu (MS-DS) của Đại học Colorado Boulder là lựa chọn lý tưởng cho những người học tập trung vào sự nghiệp mong muốn được hưởng lợi từ một chương trình toàn diện , phương pháp tiếp cận đa ngành. Chương trình này tận dụng chuyên môn vô song của giảng viên về thống kê, khoa học dữ liệu, khoa học máy tính, xử lý ngôn ngữ tự nhiên, khoa học thông tin, v.v.</br>''', CAST(N'2022-05-17' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (2, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/Copy-of-Blog-Header-Image-V2.png', N'Với tuyển sinh dựa trên hiệu suất, Mattison Hineline có thể kiếm được bằng thạc sĩ và theo đuổi sự nghiệp mới trong khoa học dữ liệu', N'N''<br>Sau khi tốt nghiệp cử nhân tâm lý học, Mattison Hineline chuyển đến Tây Ban Nha để dạy tiếng Anh. Trong thời gian xảy ra đại dịch, cô bắt đầu tham gia các lớp lập trình trực tuyến và ngày càng bị thu hút bởi các số liệu thống kê và biểu đồ được sử dụng để theo dõi tác động của COVID-19. Khi mối quan tâm của cô đối với dữ liệu và lập trình ngày càng tăng, Mattison bắt đầu nghĩ về khả năng phát triển sự nghiệp trong lĩnh vực khoa học dữ liệu.</br>

<br>Cô xác định rằng mình muốn lấy bằng thạc sĩ nhưng lại lo ngại về chi phí, sự thiếu thốn của mình. về kinh nghiệm khoa học dữ liệu và những thách thức khi chuyển từ Tây Ban Nha trở lại Hoa Kỳ. Vì vậy, cô ấy bắt đầu xem xét các lựa chọn trực tuyến.</br>

<br>Mattison đã quen thuộc với Coursera, sau khi tham gia khóa học Giới thiệu về Giải tích khóa học. Sau hai tháng nghiên cứu, cô kết luận rằng Thạc sĩ Khoa học về Khoa học dữ liệu chương trình (MS-DS) của Đại học Colorado Boulder trên Coursera đã mang đến cơ hội phù hợp cho cô ấy.</br>

<br>Chương trình linh hoạt, giá cả phải chăng và cơ cấu tuyển sinh dựa trên thành tích; có nghĩa là cô ấy không phải lo lắng về những thứ như bảng điểm, điểm trung bình hoặc Điểm GRE; cô ấy chỉ cần chứng minh rằng cô ấy có thể làm được công việc và cô ấy sẽ được chấp nhận. Quyết tâm theo đuổi sự nghiệp mới trong khoa học dữ liệu, cô đã đăng ký thành công vào Thạc sĩ Khoa học về Khoa học dữ liệu (MS-DS) của Đại học Colorado Boulder trên Coursera</br>

<br>Tôi sẽ không có cơ hội lấy bằng thạc sĩ khoa học dữ liệu nếu tôi không không tìm thấy chương trình MS-DS trên Coursera.</br>

<br>Sau khi có những e ngại ban đầu về việc thiếu kinh nghiệm của mình, cô nhận thấy mình có thể nhận được sự hỗ trợ cần thiết mỗi khi gặp trở ngại: "Tôi đã vật lộn với khóa học thống kê thứ hai của mình và phải đến giờ hành chính rất nhiều. Người hướng dẫn khóa học đã thực sự giúp giải thích tài liệu và đảm bảo rằng tôi không chỉ vượt qua lớp học mà còn hiểu các khái niệm. Thông tin bạn học được rất quan trọng đối với các dự án, khóa học và công việc trong tương lai của bạn. Việc hiểu nội dung cũng quan trọng như việc vượt qua khóa học."</br>

<br>Mattison cũng đã có thể kết nối với các sinh viên khác. Cô ấy và những người bạn học của mình kết nối thông qua kênh Slack được chia sẻ và sinh viên thậm chí còn tổ chức các nhóm học tập từ xa để nói chuyện trong suốt khóa học. Gần đây, cô ấy đã có được kỳ thực tập khoa học dữ liệu đầu tiên của mình và cô ấy hiện đang có kế hoạch tốt nghiệp vào năm 2023 và chuyển ngay sang vai trò khoa học dữ liệu&mdash;lý tưởng nhất là tại một công ty khởi nghiệp.</br>

<br>Mẹo lớn nhất của cô ấy dành cho sinh viên mới? Trước tiên hãy bắt đầu với một khóa học không tín chỉ để làm quen với tài liệu khóa học và hình thức học trực tuyến. Cô ấy cũng khuyên bạn nên tích cực trên Slack, tham dự giờ hành chính và tiếp cận với các đồng nghiệp. " Có tính giao tiếp"; cô ấy nói, "đồng nghĩa với thành công!"Nếu bạn quan tâm đến việc theo đuổi sự nghiệp khoa học dữ liệu và muốn làm theo lời khuyên của Mattison và tự mình thử một khóa học, chúng tôi khuyên bạn nên Các kỹ năng quan trọng cho chuyên môn khoa học dữ liệu là điểm khởi đầu tuyệt vời cho người mới bắt đầu. Đó là một cách tuyệt vời để nắm vững các nguyên tắc cơ bản về khoa học dữ liệu và sau khi bạn đã hoàn thành phiên bản không cấp tín chỉ của khóa học, bạn có thể chuyển công việc của mình sang phiên bản trả phí, lấy tín chỉ và phiên bản này sẽ được tính vào bằng cấp của bạn.</br>

<br>Điều này hoàn toàn trực tuyến Thạc sĩ Khoa học trong Khoa học dữ liệu (MS-DS) của Đại học Colorado Boulder là lựa chọn lý tưởng cho những người học tập trung vào nghề nghiệp mong muốn được hưởng lợi từ cách tiếp cận đa ngành, toàn diện. Chương trình này thúc đẩy chuyên môn vô song của giảng viên về thống kê, khoa học dữ liệu, khoa học máy tính, xử lý ngôn ngữ tự nhiên, khoa học thông tin, v.v.</br>''', CAST(N'2022-05-04' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (3, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/04/0001-1536x804.jpg', N'Được nhận vào chương trình Thạc sĩ Kỹ thuật mới của CU Boulder về Quản lý Kỹ thuật bằng cách hoàn thành Chuyên ngành 3 khóa', N'<br>Hôm nay, chúng tôi rất vui được chia sẻ thêm về bằng Thạc sĩ Kỹ thuật về Quản lý Kỹ thuật (ME-EM) của Đại học Colorado Boulder một trường đại học nghiên cứu hàng đầu được xếp hạng trong 1% hàng đầu trong số các trường đại học trên toàn cầu.</br>

<br>Đại học Colorado Boulder (CU Boulder) được công nhận về giá trị và tác động của các chương trình tập trung vào nghề nghiệp. Bằng cấp mới này kết hợp các ngành kỹ thuật và quản lý để trang bị cho sinh viên những kỹ năng cần thiết để đảm nhận các vai trò quản lý kỹ thuật và kỹ thuật có tác động cao. Được thiết kế bởi các nhà lãnh đạo ngành công nghiệp, chương trình này chuẩn bị cho sinh viên vai trò lãnh đạo và quản lý trong kỹ thuật và công nghệ. Học sinh sẽ học cách biến kỹ thuật thành kinh doanh từ việc giao tiếp hiệu quả với các bên liên quan kỹ thuật và phi kỹ thuật đến dẫn dắt sự phát triển của các dự án kỹ thuật phức tạp.</br>

<br>Khi công nghệ biến đổi các ngành, nhu cầu về kỹ sư tiếp tục tăng với gần 140.000 việc làm mới tại Hoa Kỳ được tạo ra vào năm 2026. Các nhà tuyển dụng đang tìm kiếm những chuyên gia có thể tổng hợp chuyên môn công nghệ với kỹ năng quản lý để thúc đẩy tác động kinh doanh. Kể từ năm 2016, Diễn đàn kinh tế thế giới; Báo cáo Tương lai của Việc làm đã cho thấy nhu cầu ngày càng tăng đối với các kỹ năng của con người, chẳng hạn như quản lý, ra quyết định và giao tiếp, trong bối cảnh tự động hóa tăng tốc.</br>

<br>ME-EM, chương trình giảng dạy cốt lõi giúp sinh viên xây dựng các kỹ năng cơ bản có giá trị về giao tiếp, quản lý dự án, tài chính và lãnh đạo trong khi các khóa học tự chọn trau dồi chuyên môn kỹ thuật của họ trong các chủ đề từ phát triển sản phẩm đến kỹ thuật hệ thống. Với trọng tâm là học tập ứng dụng trong thế giới thực, các khóa học liên quan đến các nghiên cứu tình huống trong ngành, bộ dữ liệu và dự án. Sinh viên có thể tương tác nhiều hơn với người hướng dẫn thông qua giờ làm việc trực tiếp hàng tuần và cộng tác với các đồng nghiệp của mình trong các dự án nhóm và diễn đàn thảo luận.</br>

<br>Chúng tôi tự hào mở rộng quan hệ đối tác với Coursera để làm cho giáo dục quản lý kỹ thuật trở nên hiệu quả hơn dễ tiếp cận và linh hoạt với phương thức cấp bằng mới này Christy Bozic, Giám đốc Chương trình Quản lý Kỹ thuật tại CU Boulder cho biết. Chương trình của chúng tôi được cấu trúc độc đáo để thu hút các ứng viên từ nhiều nguồn gốc khác nhau. Tuyển sinh hoàn toàn không cần nộp đơn, thay vào đó dựa trên hiệu suất trong một loạt các khóa học đầu vào; tất cả các sinh viên duy trì điểm trung bình B sẽ tự động được nhận. Việc có chương trình trên Coursera giúp chúng tôi tiếp cận các chuyên gia đang làm việc trên khắp thế giới, những người đang muốn biến việc học của họ thành sự thăng tiến trong sự nghiệp; thường xuyên trong khi vẫn làm việc toàn thời gian.</br>

<br>CU Boulder đã sớm đổi mới các chương trình cấp bằng dựa trên hiệu suất trên nền tảng Coursera, định hình các lộ trình hòa nhập hướng tới một nền giáo dục chất lượng cao. Bắt đầu từ tháng 8, học sinh có thể đăng ký tham gia lộ trình thành tích các khóa học để được nhận vào văn bằng thứ ba của trường đại học trên Coursera.</br>

<br>Chúng tôi rất vinh dự được hợp tác với CU Boulder để định hình lại tương lai của bằng cấp, ưu tiên khả năng tiếp cận, tính linh hoạt và giáo dục phù hợp với công việc, để tác động sinh viên trên toàn thế giới.</br>

<br>Đăng ký cấp độ ME-EM sẽ mở vào tháng 8 cho nhóm thuần tập mùa thu năm 2022.</br>', CAST(N'2022-04-06' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (4, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/UNTBAAS_Jaina.jpg', N'Người học tập suốt đời Jaina Bellanca đang lấy bằng trực tuyến để cô ấy có thể bắt đầu sự nghiệp mới của mình', N'N''<br>Jaina Bellanca mô tả mình là một người tự chủ. Cô ấy thích đặt ra những mục tiêu đầy tham vọng và đạt được chúng&rdquo; và chính suy nghĩ này đã thúc đẩy cô ấy tiếp tục học hỏi những kỹ năng và kiến thức mới. Cô ấy từ lâu đã là một người học tích cực, kiếm được bằng cao đẳng vào năm 2014 và tham gia các khóa học trên Coursera trong thời gian rảnh rỗi trong những năm gần đây. Học tập suốt đời là mục tiêu của tôi ngay từ đầu.</br>

<br>Khi Jaina quyết định theo đuổi sự nghiệp với tư cách là người quản lý dự án chiến lược, cô ấy biết mình cần phải học một số kỹ năng mới. Là một người học hỏi suốt đời, đó không phải là một thách thức nhưng giá cả và thời gian thì có. Kiếm được bằng cử nhân có ý nghĩa đối với các kế hoạch nghề nghiệp của cô ấy, nhưng việc tìm kiếm một chương trình mà cô ấy có đủ khả năng chi trả và phù hợp với lịch trình bận rộn của mình không hề dễ dàng.</br>

<br>Cô ấy đã chuyển sang Coursera và khám phá ra Cử nhân Khoa học Nghệ thuật Ứng dụng (B.A.A.S.) chương trình do Đại học Bắc Texas (UNT) cung cấp. Đó chính là thứ cô ấy cần. Thực tế là nó trực tuyến đã giúp ích cho tôi và họ xác nhận tất cả các lớp học trước đây của tôi, điều đó thật tuyệt vì tôi đã học rất nhiều.</br>

<br>Jaina hiện đang theo đuổi bằng cấp và việc học của mình các kỹ năng kinh doanh thiết yếu cần thiết để thành công trong lĩnh vực mới được chọn của cô ấy. Cô ấy đã suy nghĩ trước về con đường sự nghiệp cũng như hành trình học tập của mình. Tôi đã mở rộng bộ kỹ năng kinh doanh của mình và đang mong đợi lần thực tập quản lý dự án chiến lược đầu tiên của mình&rdquo; cô ấy nói, nhưng tôi cũng muốn theo đuổi học vấn cao hơn thông qua chương trình thạc sĩ hoặc tiến sĩ.</br>

<br>Ngay cả khi cô ấy tập trung cao độ vào các mục tiêu nghề nghiệp quản lý dự án của mình, cô ấy vẫn tìm thời gian để khám phá các chủ đề khác và cô ấy rất thích có thể đưa các khóa học phi kinh doanh vào nghiên cứu của mình. Tôi yêu thích các lớp học lịch sử và chính trị của mình, Jaina nói. Họ thực sự đưa bạn đến những điều khác nhau. Đó là một cơ hội tuyệt vời để mở rộng kiến thức của tôi. Chương trình này hoàn toàn phù hợp với tôi.</br>

<br>Bằng Cử nhân Khoa học và Nghệ thuật Ứng dụng (B.A.A.S.) chấp nhận và xây dựng dựa trên các tín chỉ trước đây của sinh viên, kết hợp chúng với các môn học ở tám mức độ khác nhau để sinh viên có thể đạt được các mục tiêu cá nhân và nghề nghiệp của họ.</br>''', CAST(N'2022-03-29' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (5, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/UNTBAAS_Alberto.jpg', N'UC Chile và Coursera công bố ba bằng thạc sĩ trực tuyến tập trung vào các kỹ năng của tương lai', N'N''Hôm nay, tôi là tự hào công bố ba văn bằng tiếng Tây Ban Nha mới từ Đại học Pontificia Cat de Chile (UC Chile) Trường đại học số 1 ở Mỹ Latinh. Đây là những chương trình cấp bằng đầu tiên của một trường đại học Chile trên Coursera. Mỹ Latinh không tìm được ứng viên có kỹ năng họ cần để duy trì tính cạnh tranh, so với 36% công ty ở các nước OECD. Các chương trình cấp bằng mới này của UC Chile được thiết kế để giúp những người nói tiếng Tây Ban Nha trong khu vực và trên toàn thế giới phát triển các kỹ năng cần thiết để thành công trong quá trình chuyển đổi kỹ thuật số.</br>

Các chương trình này sẽ mở đơn đăng ký vào ngày 8 tháng 3 năm 2022</br>

Ciencia de Datos (Thạc sĩ Khoa học dữ liệu), bằng cách sử dụng các công cụ tính toán tiên tiến, bằng cấp này đào tạo người học về cả nguyên tắc cơ bản và ứng dụng xử lý, mô hình hóa và phân tích dữ liệu. Chương trình giảng dạy sẽ bao gồm các chủ đề quan trọng như lập trình, công nghệ phần mềm, trực quan hóa dữ liệu và đạo đức dữ liệu. Sinh viên tốt nghiệp sẽ sẵn sàng làm việc trong môi trường học thuật hoặc với tư cách là kỹ sư dữ liệu, nhà khoa học dữ liệu và nhà phân tích dữ liệu tại các công ty hàng đầu. Finanzas Aplicadas (Thạc sĩ Đầu tư và Tài chính Ứng dụng). Chương trình này sẽ sử dụng các kỹ thuật mới nhất để cung cấp một nền giáo dục cơ bản về tài chính và đầu tư cũng như ứng dụng của nó vào thế giới kinh doanh. Chương trình giảng dạy bao gồm các lĩnh vực như thị trường vốn, phân tích tài chính, tài chính doanh nghiệp và tài chính để đầu tư. Sinh viên tốt nghiệp sẽ được chuẩn bị cho các vị trí điều hành trong lĩnh vực tài chính và đầu tư.</br>''', CAST(N'2022-03-01' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (6, N'https://d1zdxptf8tk3f9.cloudfront.net/articles/1418/large/Screen_Shot_2022-06-21_at_9.53.59_AM.png?1655828124', N'Sau mười năm tự kinh doanh, doanh nhân Ana Said đã quyết định lấy bằng cử nhân trực tuyến để phát triển sự nghiệp của mình', N'N''<br>Ana Said là một doanh nhân đã xây dựng và điều hành công việc kinh doanh của riêng mình trong gần một thập kỷ. Cô đạt được thành công nhờ làm việc chăm chỉ và sẵn sàng học hỏi trong công việc. Cam kết học các kỹ năng mới này đặc biệt quan trọng vì cô ấy đã thành lập doanh nghiệp của mình trước khi lấy bằng cử nhân. Bất chấp những thành tích của mình, cuối cùng cô ấy đã đạt đến điểm mà cô ấy cảm thấy mình không thể tiến xa hơn nữa trong sự nghiệp. Cô bắt đầu tự hỏi liệu kiếm được bằng cấp bây giờ có ý nghĩa gì đối với mục tiêu của mình hay không. Cô ghi công mẹ mình, một chuyên gia về học trực tuyến, vì cô đã tiếp xúc với các khả năng học trực tuyến. Kinh nghiệm giúp mẹ làm video và thiết kế cho các lớp học trực tuyến của Ana đã khơi dậy sự tò mò của cô đối với việc học trực tuyến và sẽ đánh dấu bước khởi đầu cho sự nghiệp làm việc tự do của cô. Dưới đây, Ana chia sẻ câu chuyện của mình về quyết định ghi danh vào chương trình cử nhân, cách cộng đồng mới giúp cô vượt qua những thách thức liên quan đến việc có khoảng cách học vấn trong hồ sơ xin việc và điều khiến cô ngạc nhiên nhất khi học trực tuyến. Tôi đã trải qua mười năm làm trợ lý tự kinh doanh, thu được nhiều kỹ năng và kinh nghiệm sống thông qua việc tổ chức và quản lý các công việc liên quan đến cuộc sống và công việc kinh doanh của người khác. Những người tuyệt vời mà tôi gặp trên đường đã truyền cảm hứng cho tôi đánh giá xem tôi đang ở đâu và tôi có thể đi đâu. Tôi nhận ra rằng mình đã đạt đến điểm mà tôi biết mình muốn có một sự nghiệp chuyên biệt hơn&mdash;một nghề mà tôi không chỉ nhận bất cứ công việc nào mà tôi có thể tìm được. Nhưng việc hoàn thành chương trình cử nhân của tôi không hề thực tế chút nào. Bây giờ tôi đang ở độ tuổi 30. Ý nghĩ về việc điều chỉnh lại lịch trình của mình, trả học phí trong khi làm việc ít hơn, đi lại nhiều hơn&mdash;chưa kể đến sự khác biệt về tuổi tác với bạn bè đồng trang lứa và cảm giác chung là không biết bắt đầu từ đâu&mdash;là quá nhiều và tôi cứ trì hoãn nó. Mẹ tôi, một hình mẫu to lớn đối với tôi, làm việc trong lĩnh vực giáo dục trực tuyến. Cô ấy nói với tôi về chương trình Cử nhân Khoa học Nghệ thuật Ứng dụng (BAAS) được cung cấp trên Coursera. Lần đầu tiên, việc hoàn thành chương trình đại học của tôi thực sự có vẻ thực tế. Nó trực tuyến, với một lịch trình linh hoạt và tôi có thể tham gia các lớp học mà tôi cần. Có vẻ như chương trình này được tạo ra cho những người trong hoàn cảnh của tôi. Tôi đã nghĩ rằng việc học trực tuyến sẽ chỉ dành cho tôi trên máy tính của mình. Nhưng các nhân viên tư vấn thực sự hữu ích và nhanh chóng trả lời. Và lớp học có nền tảng thảo luận và kênh trò chuyện. Chúng ta có thể thảo luận về các lớp học, đặt và trả lời các câu hỏi cũng như chia sẻ những kinh nghiệm có liên quan của mình. Điều này đã nâng cao kỹ năng làm việc với những người khác từ xa của tôi, đó là một lợi thế lớn trong bối cảnh ngày nay. Tôi đã kết nối với những người cũng truyền cảm hứng cho tôi để tiếp tục. Họ biết có khoảng cách đó trong giáo dục là như thế nào, nhưng họ sẵn sàng nỗ lực vì bản thân, vì gia đình và vì sự nghiệp của họ. Đó là một thử thách, nhưng tôi đang đảm nhận nhiều hơn những gì tôi từng nghĩ mình có thể. Tôi đã đăng ký học cả về quản trị và hành vi người tiêu dùng. Tôi đang hiểu cách các tổ chức được thiết lập cho các khía cạnh khác nhau của giao tiếp và động lực&mdash;điều gì thúc đẩy động lực, cách các nhóm làm việc cùng nhau và cách đề phòng những cạm bẫy nhất định. Nó đã giúp tôi thực sự hiểu tại sao tôi đang làm những việc mà tôi đang làm một cách chuyên nghiệp và làm thế nào để phát triển với tư cách là một nhà lãnh đạo. Sau khi tốt nghiệp, tôi có thể phát triển công việc kinh doanh của riêng mình hơn nữa để phục vụ khách hàng tốt hơn và có thể thuê người khác vào một ngày nào đó. Tôi hiểu làm thế nào để xây dựng nó từ đầu. UNT ghép từng sinh viên Cử nhân Khoa học và Nghệ thuật Ứng dụng (B.A.A.S.) với một cố vấn để tạo một kế hoạch cấp bằng tùy chỉnh tập trung vào &ldquo;những mảnh còn thiếu&rdquo; họ cần để hoàn thành. Hệ thống tư vấn này mang đến cho sinh viên sự linh hoạt cần thiết để xác định con đường nhanh nhất đạt được bằng cấp trong khi vẫn đảm bảo tính phù hợp với mục tiêu nghề nghiệp của họ.</br>''', CAST(N'2022-06-30' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (7, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/UNTBAAS_Cheyney.jpg', N'5 Phiên phải xem từ Hội nghị Coursera 2022', N'N''<br>Hội nghị Coursera thường niên lần thứ 10 của chúng tôi gần đây đã mang đến cơ hội duy nhất cho đội ngũ lãnh đạo Coursera, đại diện từ các tổ chức đối tác của chúng tôi và hơn 3.000 người tham gia từ khắp nơi trên thế giới cùng nhau thông qua cam kết chung nhằm thay đổi cuộc sống thông qua học tập.</br>

<br>Sự kiện có hơn 40 phiên thảo luận khám phá những cơ hội mới cho tương lai học tập và làm việc trong thế giới kỹ thuật số. Bạn có thể xem bản ghi của hầu hết các sự kiện theo yêu cầu trong phần mô tả phiên trên trang chương trình làm việc của trang web sự kiện.</br>

<br>Chúng tôi đã tóm tắt những điểm nổi bật. Bây giờ, trong bài viết này, chúng tôi muốn thu hút sự chú ý của bạn đến năm phiên nổi bật đối với chúng tôi.</br>

<br>Đầu tư vào điều tốt nhất: Tạo ra văn hóa học tập để thúc đẩy lợi thế cạnh tranh</br>

<br>Văn hóa học tập có thể là sự khác biệt giữa việc thúc đẩy kết quả kinh doanh và chuyển đổi kỹ thuật số hay trì trệ. Tuy nhiên, văn hóa này thường khó xây dựng.</br>

<br>Trong phần này, Jennie Drimmer, Giám đốc bán hàng khu vực cấp cao tại Coursera và Bartosz Zieleznik, Trưởng bộ phận học tập trực tuyến tại Prosus, đã thảo luận về cách họ thích nghi với sự thay đổi vai trò của học tập và phát triển, kinh nghiệm của họ trong việc xây dựng văn hóa học hỏi và cách họ đầu tư vào lực lượng lao động của mình để duy trì lợi thế cạnh tranh.</br>

<br>Dưới đây là một số điểm chính:</br>

<br>Tại sao việc thiết lập văn hóa học tập lại quan trọng?</br>

<br>Đó là một đề xuất giá trị cho nhân viên mà bạn có thể sử dụng để thu hút mọi người vào công ty của mình. Bạn cũng cần có khả năng tạo đủ sự di chuyển của nhân tài trong lực lượng lao động của mình bằng cách hỗ trợ họ bằng các biện pháp can thiệp học tập phù hợp.</br>

<br>Điều quan trọng cần nhận ra là văn hóa học tập không phải là thứ bạn cần trong tương lai xa. Điều đó phải diễn ra ngay bây giờ vì chúng tôi là cốt lõi của cuộc chiến giành nhân tài và sự di chuyển nội bộ cũng như trò chơi đào tạo lại kỹ năng mà chúng tôi muốn triển khai trong mỗi công ty.</br>

<br>Bạn xây dựng văn hóa học tập như thế nào ?</br>

<br>Bạn cần ngồi xuống với nhóm điều hành và trình bày một trường hợp kinh doanh về lý do tại sao việc học lại quan trọng. Ví dụ, nếu bạn xây dựng một bộ phận AI, nó không cần phải quá lớn mới có tác động đáng kể. Có những cuộc trò chuyện này để thu hút nhóm điều hành lên tàu là điều dễ dàng. Phần khó khăn là dẫn đầu bằng ví dụ. Cách nhóm điều hành của bạn học hỏi và sử dụng các sản phẩm học tập và phát triển của bạn sẽ xác định cách văn hóa học tập của bạn lan tỏa trong cộng đồng của bạn.</br>

<br>Truyền cảm hứng cho nhóm điều hành bằng những câu chuyện thực tế. Mỗi khi bạn muốn thuyết trình về việc học, hãy chuẩn bị sẵn tài khoản trực tiếp của một người đã hoàn thành khóa học. Nó tăng cường trường hợp kinh doanh của bạn. Khoảng 50% thời gian của bạn nên dành cho việc giáo dục đội ngũ lãnh đạo. Tuy nhiên, các nhà quản lý cấp trung rất quan trọng đối với sự thành công của việc thiết lập văn hóa học hỏi xuyên suốt toàn bộ tổ chức.</br>

<br>Tại sao quản lý cấp trung lại quan trọng đến vậy?

<br>Sẽ là tốt nhất nếu bạn hợp pháp hóa việc học trong ngày làm việc của một người. Bạn có thể đạt được điều đó bằng cách giáo dục các nhà quản lý và nói với họ rằng bạn rất nghiêm túc trong việc học hỏi, đồng thời hỏi họ muốn tạo không gian nào để nhóm của họ phát triển.

<br>Chúng tôi có xu hướng xem xét số lượng đăng ký so với số lần hoàn thành, nhưng đôi khi việc tập trung vào số lượng có thể gây bất lợi. Vì vậy, chúng tôi bắt đầu thử nghiệm bằng cách hỏi các sinh viên tốt nghiệp của chúng tôi về bất kỳ mẹo và thủ thuật nào mà họ có đối với những người tham gia cùng khóa học. Mọi người trở lại với đủ loại thông tin chi tiết: ví dụ: dành thời gian để học thường xuyên và phù hợp với người quản lý của họ là chìa khóa thành công của họ. Bằng cách thu hút sự ủng hộ của các nhà quản lý, bạn sẽ tạo ra một nhóm những người hỗ trợ giúp văn hóa học tập này trở nên khả thi.''', CAST(N'2022-06-01' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (8, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/simon-shareka.png', N'Tại sao thay đổi lại quan trọng: Trò chuyện bên lò sưởi với Simon Sinek', N'N''<br>Với vai trò là Lãnh đạo Phát triển và Văn hóa Coursera, gần đây tôi rất hân hạnh được chào đón tác giả, nhà lãnh đạo có tầm nhìn và tư tưởng Simon Sinek đến tham dự Hội nghị Coursera thường niên lần thứ 10. Trong cuộc trò chuyện bên lề 1:1 độc quyền, chúng tôi đã thảo luận về việc thúc đẩy thay đổi tại nơi làm việc, học hỏi như một phương tiện để tiến bộ cũng như vai trò của sự đa dạng và hòa nhập trong việc tạo ra sự thay đổi có ý nghĩa cho các tổ chức.</br>

<br>Simon Sinek là tác giả của cuốn sách bán chạy nhất Start With Why, bắt đầu một phong trào giúp mọi người có nhiều cảm hứng hơn trong công việc và từ đó truyền cảm hứng cho đồng nghiệp và khách hàng của họ. Bài nói chuyện trên TED của anh ấy về chủ đề này đã được hơn 28 triệu người theo dõi, trở thành video TED phổ biến thứ ba mọi thời đại.</br>

<br>Xây dựng văn hóa học tập</br>

<br>Tại sao phải chủ động thúc đẩy sự thay đổi thành một quyết định kinh doanh an toàn?</br>

<br>Ngay cả bây giờ, rất nhiều ngành vẫn chưa tìm ra cách điều chỉnh mô hình kinh doanh của họ với internet. Kết quả là, các công ty từ bên ngoài đã đến và phá vỡ toàn bộ ngành công nghiệp.</br>

<br>Lấy ngành công nghiệp điện ảnh làm ví dụ. Mỗi hãng phim hoặc hãng phim truyền hình đương nhiệm có thể đã xác định lại tương lai của truyền hình với sự phát triển của internet. Nhưng họ đã không làm thế, họ bám vào mô hình kinh doanh cũ của mình.</br>

<br>Netflix đã cố gắng thuyết phục Blockbuster mua lại họ và Giám đốc điều hành của Blockbuster vào thời điểm đó muốn thử nghiệm phát trực tuyến. Tuy nhiên, hội đồng quản trị không cho phép anh ta thay đổi mô hình kinh doanh, bởi vì công ty kiếm được 12% doanh thu từ các khoản phí mà họ tính khi khách hàng trả lại đĩa DVD muộn. Và bây giờ Blockbuster không tồn tại. Chỉ vì bạn đã bỏ qua điều gì đó trong quá khứ không có nghĩa là điều đó sẽ hiệu quả trong tương lai.</br>

<br>Đâu là rào cản chính để xây dựng văn hóa học hỏi?</br>

<br>Thế giới đã thay đổi, và nếu bạn không đầu tư vào một chương trình học tập mạnh mẽ, bạn sẽ tự đặt mình vào một thảm họa sau này khi bạn nhận ra mình không có lợi thế cạnh tranh để giải thích tại sao mọi người sẽ muốn làm việc cho bạn.</br>

<br>Các công ty thường làm việc để biết bắt đầu từ đâu và nói rằng họ không có ngân sách. Nhưng bạn có thể bắt đầu ở bất cứ đâu. Bạn có thể bắt đầu với những gì bạn hiểu và không phải lúc nào cũng phải trả giá đắt. Bạn có thể làm một câu lạc bộ sách chẳng hạn? Hãy biến nó thành tự nguyện và cứ mỗi tuần hoặc vài tuần, mọi người lại gặp nhau và trò chuyện về các chương của cuốn sách mà họ đã đọc.</br>

<br>Chương trình học tập có thể được phát triển tại nhà. Nó không cần phải được hoàn thành ngay lập tức. Chỉ cần hỏi ai quan tâm đến chủ đề hiện tại, và bạn sẽ ngạc nhiên về số lượng thành viên trong nhóm của bạn đã nghiên cứu về chủ đề đó. Mời họ chia sẻ điều họ đang học. Bắt đầu với một khóa học nhỏ để tạo hứng thú với khóa học đó và xem nó trở nên gây nghiện như thế nào khi bạn bắt đầu học.</br>

<br>Chúng ta càng học nhiều, điều đó càng mang lại lợi ích không chỉ cho bản thân mà còn cho những người xung quanh chúng ta &ndash; đồng nghiệp và đồng nghiệp của chúng tôi, gia đình của chúng tôi, và tất cả những người chúng tôi yêu thương và quan tâm. Về cơ bản, chấp nhận văn hóa học hỏi là chấp nhận một cuộc sống phục vụ.</br>

<br>Phát triển tài năng đa dạng và hòa nhập</br>

<br>Đa dạng và hòa nhập đóng vai trò gì trong việc thực hiện thay đổi</br>

<br>Thành thật mà nói, chúng ta không thể có sự thay đổi hiệu quả nếu không có sự đa dạng. Làm thế nào để chúng ta giải quyết những vấn đề khó khăn nếu xung quanh chúng ta toàn những người lớn lên giống chúng ta, trông giống chúng ta và phát âm giống chúng ta? Chúng tôi kết thúc với một hoặc hai quan điểm, những quan điểm này sẽ chỉ có tác dụng trong một thời gian ngắn.</br>

<br>Mặt khác, các quan điểm đa dạng sẽ dẫn đến sự đổi mới và cuối cùng là nhiều lợi nhuận hơn. Sự hợp nhất các ý tưởng tạo ra các giải pháp tốt hơn nhiều so với cách tiếp cận một kích cỡ phù hợp với tất cả. Nó mang lại lợi ích cho các tổ chức và cũng có ý nghĩa văn hóa. Các nhóm trong các công ty này có thể thể hiện tinh thần đồng đội tốt hơn và tò mò về ý tưởng của nhau hơn là phán xét.</br>''', CAST(N'2022-05-06' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (9, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/04/Coursera-AWS-joint-logos-1024x536.png', N'Coursera hợp tác với AWS để mở rộng đào tạo về điện toán đám mây cho các doanh nghiệp', N'N''<br>Tốc độ đổi mới đang tăng nhanh và các nhà lãnh đạo doanh nghiệp tập trung hơn vào việc xây dựng lực lượng lao động với các kỹ năng kỹ thuật số được yêu cầu cao để phát triển trong tương lai.</br>

<br>Hôm nay, Coursera vui mừng thông báo rằng họ đã gia nhập Amazon Mạng Đối tác Dịch vụ Web (AWS) (APN), một cộng đồng toàn cầu gồm hơn 100.000 công ty cung cấp các giải pháp và dịch vụ Công nghệ Thông tin (CNTT) cho các doanh nghiệp. Thông qua thông báo này, Coursera sẽ cung cấp khóa đào tạo về đám mây AWS, cùng với khóa đào tạo kỹ năng rộng hơn để giúp các công ty đẩy nhanh quá trình chuyển đổi kỹ thuật số. Ngoài ra, Coursera hiện sẽ có sẵn cho khách hàng trong AWS Marketplace, một danh mục kỹ thuật số với hàng nghìn danh sách phần mềm từ các nhà cung cấp phần mềm độc lập giúp bạn dễ dàng tìm kiếm, thử nghiệm, mua và triển khai phần mềm chạy trên AWS. Trải nghiệm khách hàng tích hợp này cho phép các doanh nghiệp hợp nhất liền mạch việc thanh toán, hợp lý hóa quy trình mua sắm và thương lượng các điều khoản hợp đồng tùy chỉnh.</br>

<br>Coursera for Business cung cấp cho các công ty trên toàn cầu sự phát triển kỹ năng dựa trên vai trò với nội dung đẳng cấp thế giới, học tập thực hành và khả năng theo dõi, đo lường và đánh giá các kỹ năng thông qua một nền tảng thống nhất, duy nhất.</br>

<br>Nâng cao mức độ thành thạo kỹ năng đám mây là một lĩnh vực cần thiết chính đối với các doanh nghiệp đang tìm cách duy trì cạnh tranh trong lực lượng lao động của tương lai. Coursera đang hợp tác với AWS để cho phép các doanh nghiệp cung cấp chương trình đào tạo trên đám mây phù hợp với công việc cho nhân viên trên khắp thế giới.</br>

<br>Coursera đang cung cấp nhiều khóa học khác nhau thông qua AWS Marketplace, bao gồm: Bắt đầu với AWS Machine Learning, của Blaine Sundrud; Nguyên tắc cơ bản của AWS: Xây dựng ứng dụng Serverless, của Bobbie Atristain, Adam Becker, Wes Gruver, Jonathan Dion, và Rick Hurst; AWS Cloud Technical Essentials, của Alana Layton và Morgan Willis; Trong giai đoạn thay đổi nhanh chóng này, ngày càng có nhiều doanh nghiệp tìm cách khai thác sức mạnh của công nghệ đám mây. Coursera và AWS sẽ cùng nhau giúp các tổ chức phát triển các kỹ năng đám mây thiết yếu cần thiết để mở ra những cách thức hiệu quả hơn nhằm mở rộng quy mô kinh doanh, giảm chi phí và thúc đẩy đổi mới mạnh mẽ hơn.</br>''', CAST(N'2022-04-19' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (10, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/02/Blog-Post-QA-w-Anthony-Tattersall-1200x628-1.png', N'Phát triển kỹ năng lái xe cho lực lượng lao động năm 2030: Hỏi và đáp với Anthony Tattersall. Bạn đang thấy những xu hướng nào xung quanh các kỹ năng từ người dùng của mình?', N'N''<br>Những điều cốt lõi thúc đẩy khả năng của một tổ chức là những kỹ năng mà mọi người có và khả năng khai thác công nghệ của họ. Khi các doanh nghiệp thực sự chuyển sang điều này, họ tập trung vào việc tìm hiểu các yêu cầu về kỹ năng cho các vai trò ngay bây giờ và trong tương lai gần, đồng thời tìm ra cách tốt nhất để giải quyết khoảng cách đó. Những thách thức là làm thế nào để việc học diễn ra trong quy trình làm việc của họ và cách sử dụng việc đào tạo lại kỹ năng để tạo ra các vai trò trong nội bộ nơi việc tuyển dụng không dễ dàng, chẳng hạn như công nghệ, khoa học dữ liệu, an ninh mạng, v.v.</br>

<br>Trong Khi làm việc với các chính phủ, chúng tôi thấy nhiều quốc gia đang phải vật lộn với tình trạng thất nghiệp sau đại học, một phần liên quan đến đại dịch và một phần vì các doanh nghiệp muốn thuê những người đã có kỹ năng họ cần. Có nhiều quốc gia có số lượng lớn người làm việc trong các ngành có nguy cơ bị tự động hóa cao và đây thường là những công việc được trả lương thấp hơn nếu những cá nhân đó không được tiếp cận với các cơ hội học tập để phát triển các bộ kỹ năng mới, thì đơn giản là sẽ không có đủ việc làm để phục vụ những người đó.</br>

<br>Đối với các trường đại học, vấn đề không chỉ là kiếm cho ai đó công việc đầu tiên sau đó tốt nghiệp, đó cũng là tất cả những khoảnh khắc chuyển giao nghề nghiệp mà mọi người sẽ trải qua trong cuộc đời của họ. Hầu hết những người tham gia lực lượng lao động bây giờ sẽ trải qua bốn hoặc năm sự thay đổi nghề nghiệp lớn liên quan đến việc nâng cao kỹ năng đáng kể và các trường đại học có vai trò ngày càng quan trọng. Nhưng họ cũng đang trải qua những thách thức &mdash; có sự tập trung lớn vào kết quả khả năng có việc làm và các kỹ năng tại nơi làm việc là mục tiêu thay đổi nhanh chóng, vì vậy nội dung học tập cũ đi nhanh chóng. Và làm thế nào để bạn làm việc với kỳ vọng cao hơn về các chương trình học tập kết hợp?</br>

<br>Phương pháp phát triển kỹ năng của Coursera là gì?</br>

<br>Cốt lõi của chúng tôi là phát triển kỹ năng nền tảng chuyển đổi, vì vậy chúng tôi đang cố gắng cho phép mọi người học ở mọi nơi trên thế giới, vào thời điểm họ chọn, với quyền truy cập vào nội dung tốt nhất từ các trường đại học lớn và các đối tác trong ngành. Mục tiêu là sử dụng phương pháp học ứng dụng để cải thiện kỹ năng, dù là nâng cao kỹ năng (cải thiện các kỹ năng hiện tại trong lĩnh vực chuyên môn của bạn), đào tạo lại kỹ năng (đưa bạn vào một lĩnh vực chuyên môn hoàn toàn mới) hay kỹ năng chuyên sâu (để thực sự phát triển mức độ thành thạo).</br>

<br>Điều thứ hai chúng tôi làm là làm việc với các tổ chức để xác định các bộ kỹ năng cần thiết cho từng vai trò và ở cấp độ năng lực nào. Sau đó, chúng tôi có thể chọn từng cá nhân, xem họ đang ở đâu và giúp họ hiểu được những lỗ hổng kỹ năng của mình để họ có thể phát triển. Tất cả nội dung của chúng tôi đều được đánh giá, trong một số trường hợp, nhiều lần khi bạn tiến bộ qua nội dung đó, vì vậy, các cá nhân có thể biết họ đang tiến bộ như thế nào đối với các mục tiêu kỹ năng đó và để các tổ chức có thể xây dựng bối cảnh các kỹ năng của họ, ở các cấp độ thành thạo cụ thể.</br>''', CAST(N'2022-07-18' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (11, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/ID11835_EmergeBlogPost_ImageCrop_Post2_OPTION2_1200x628.jpg', N'5 cách nhà tuyển dụng có thể thúc đẩy phát triển kỹ năng cho lực lượng lao động của tương lai', N'N''<br>Gần 3/4 CEO xác định tình trạng thiếu lao động hoặc thiếu kỹ năng là vấn đề bên ngoài có khả năng làm gián đoạn hoạt động kinh doanh của họ nhất trong 12 tháng tới, theo một báo cáo năm 2021; Khảo sát của Deloitte và Fortune. Sự thiếu hụt này gắn liền với quá trình số hóa tăng tốc vào năm 2025. Microsoft dự đoán rằng sẽ có 149 triệu việc làm kỹ thuật số mới chỉ tập trung vào điện toán đám mây, an ninh mạng, phân tích dữ liệu và phát triển phần mềm.</br>

<br>Mặc dù được thúc đẩy bởi các yếu tố bên ngoài, việc giải quyết sự thiếu hụt kỹ năng bắt đầu từ bên trong một tổ chức. Kiểm soát phát triển kỹ năng là rất quan trọng đối với các doanh nghiệp muốn duy trì tính cạnh tranh và đẩy nhanh quá trình chuyển đổi kinh doanh. Điều này đã được xác nhận bởi 73% số người được hỏi trong Báo cáo xu hướng nguồn nhân lực toàn cầu năm 2020 của Deloitte, người đã xác định các tổ chức là thực thể chịu trách nhiệm cao nhất về phát triển lực lượng lao động.</br>

<br>Việc ưu tiên phát triển kỹ năng cũng có thể dẫn đến hoạt động kinh doanh hữu hình kết quả. Báo cáo Kỹ năng Ngành của Coursera 2021; nhận thấy rằng các kỹ năng của nhân viên có liên quan đến khả năng phục hồi và một công ty; khả năng thích ứng khi đối mặt với những thách thức lợi ích tương quan với hiệu suất chứng khoán. Xét cho cùng, phát triển kỹ năng là một chiến lược thu hút và duy trì, một chiến lược về hiệu suất cũng như tăng trưởng và tiết kiệm chi phí đóng vai trò quan trọng đối với doanh nghiệp.</br>

<br>Trong báo cáo mới nhất của mình, Phát triển kỹ năng và đánh giá các con đường dẫn đến việc làm : Tầm nhìn cho năm 2030, Emerge Education và Coursera kiểm tra thêm cách người sử dụng lao động có thể kết nối tốt hơn việc phát triển các kỹ năng với tầm nhìn dài hạn về lực lượng lao động của họ.</br>

<br>Như đã trình bày trong báo cáo, đây là năm điều mà người sử dụng lao động có thể bắt đầu thực hiện ngay bây giờ để tận dụng sự phát triển kỹ năng và xây dựng lực lượng lao động của tương lai:</br>

<br>Ngừng yêu cầu sơ yếu lý lịch. Tình trạng mô tả công việc rất ảm đạm. Việc thiếu dữ liệu kỹ năng chất lượng cao có nghĩa là các tổ chức hiểu các kỹ năng và năng lực cần thiết để thực hiện thành công một vai trò nhất định. Mô tả công việc không đầy đủ dẫn đến quảng cáo việc làm được nhắm mục tiêu kém, quy trình phỏng vấn bị lỗi, giới thiệu không hiệu quả và khả năng di chuyển nhân tài kém. Việc tuyển dụng dựa trên kỹ năng, thay vì kinh nghiệm trong quá khứ, là cần thiết để thu hút nhiều người đa dạng hơn vào các vị trí đăng tuyển.</br>

<br>Thay vì yêu cầu sơ yếu lý lịch, hãy bắt đầu yêu cầu ứng viên cung cấp danh mục thành tích và chứng chỉ kỹ năng. Điều này sẽ chuyển trọng tâm từ trình độ sang năng lực. Bản mô tả công việc nên được biên soạn dựa trên các kỹ năng, chứ không phải các lĩnh vực kiến thức chung hơn hoặc số năm kinh nghiệm.</br>

<br>Cam kết về văn hóa dựa trên dữ liệu. Hầu hết các doanh nghiệp sử dụng dữ liệu để hỗ trợ việc ra quyết định, nhưng trong cuộc khảo sát điều hành của NewVantage Partners năm nay, chỉ 24% cho biết họ đã tạo ra một tổ chức dựa trên dữ liệu. Thách thức chính được nêu ra không phải là công nghệ (7,8%) mà là văn hóa, quy trình và kỹ năng của tổ chức (92,2%)</br>

<br>Tiếp tục đầu tư nguồn lực vào một chiến lược dữ liệu được xác định rõ ràng, phù hợp với các mục tiêu kinh doanh tổng thể. Nếu không có nó, bạn sẽ gặp khó khăn trong việc thu thập, diễn giải và tận dụng dữ liệu để đạt được kết quả tốt hơn.</br>''', CAST(N'2022-03-26' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (12, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/10/Missouri-DHEWD.png', N'Coursera ra mắt Bộ cấp độ để giúp người học phát triển các kỹ năng quan trọng nhanh hơn', N'N''<br>Chuyển đổi kỹ thuật số nhanh chóng đang làm tăng tính cấp bách để có được các kỹ năng theo yêu cầu. Tuy nhiên, thiếu thời gian và thất vọng vì không biết nên tham gia khóa học nào là những rào cản lớn đối với người học.</br>

<br>Hôm nay, chúng tôi rất vui mừng ra mắt LevelSets, một công cụ đánh giá mới được thiết kế để giúp người học xác định trình độ hiện tại của họ trong các kỹ năng kinh doanh, công nghệ và dữ liệu chính.</br>

<br>Được cung cấp như một phần của nền tảng doanh nghiệp của công ty, LevelSets hiện bao gồm hơn 20 bài đánh giá kỹ năng khác nhau được tạo bằng các chương trình máy học. Các bài đánh giá ban đầu sẽ kiểm tra mức độ thành thạo về các kỹ năng phân tích và dữ liệu có nhu cầu cao, bao gồm phân tích dữ liệu, điện toán đám mây, máy học, Python và SQL, cùng các kỹ năng khác.</br>

<br>LevelSets sẽ giúp thúc đẩy người học đăng ký tham gia đề xuất các khóa học và cho phép họ phát triển các kỹ năng liên quan đến công việc nhanh hơn. Những đánh giá này xác định nơi nên bắt đầu đào tạo và tạo lộ trình phát triển rõ ràng cho người học có nội dung chất lượng cao phù hợp với mục tiêu kỹ năng của họ.</br>

<br>Việc cung cấp LevelSets cho phép người học:</br>

<br>Tiết kiệm thời gian và phát triển các kỹ năng nhanh hơn. Người học có thể hoàn thành bài đánh giá trong vòng chưa đầy 15 phút để xác định các kỹ năng hiện có. Điều này cho phép họ không lãng phí thời gian vào nội dung mà họ đã nắm vững và tập trung vào các khóa học có thể nâng cao trình độ kỹ năng nhanh hơn. Trải nghiệm một hành trình học tập độc đáo với các đề xuất được nhắm mục tiêu. Sau khi hoàn thành các bài đánh giá, người học sẽ nhận được các đề xuất nội dung được nhắm mục tiêu phù hợp với trình độ thành thạo của họ để đảm bảo điểm khởi đầu phù hợp trong hành trình phát triển kỹ năng của họ. Điều này cho phép người học tránh tham gia các khóa học quá thô sơ hoặc quá nâng cao. Tạo động lực mạnh mẽ hơn để học các kỹ năng mới. Bằng cách cung cấp hiểu biết sâu hơn về các cấp độ kỹ năng hiện tại và đề xuất nội dung cụ thể để cải thiện trình độ, LevelSets có thể tăng số lượng người học; mong muốn đăng ký và hoàn thành các khóa học có liên quan. Giới thiệu kiến thức kỹ năng hiện có. Các bài đánh giá cho phép người học thể hiện trình độ thành thạo của họ trong các kỹ năng có yêu cầu cao cần thiết để mở khóa các kỹ năng mới cơ hội nghề nghiệp.</br>

<br>Các khách hàng như Fidelity, Ingka IKEA, Pfizer và Thermo Fisher Scientific là những người sớm sử dụng LevelSets. Dữ liệu ban đầu cho thấy rằng người học trong các công ty này có nhiều khả năng đăng ký khóa học được đề xuất hơn gấp 3 lần trong vòng 1 ngày sau khi thực hiện bài đánh giá LevelSet. Ngoài ra, tỷ lệ hoàn thành khóa học đã tăng 66% trong số những người đã hoàn thành bài đánh giá.</br>

<br>Bằng cách hoàn thành bài đánh giá LevelSet, người học sẽ có quyền truy cập vào các đề xuất nội dung đẳng cấp thế giới từ các đối tác trong ngành và trường đại học hàng đầu. Nội dung này được cung cấp thông qua SkillSets, các chương trình học tập dựa trên công việc giúp người học phát triển các kỹ năng cụ thể cho các vai trò cụ thể. Nội dung đề xuất bao gồm: Machine Learning for All của Tiến sĩ Marco Gillies từ Đại học London; Kiến thức cơ bản về AWS: Di chuyển lên đám mây của Seph Robinson và Sean Rinn từ Amazon Web Services; Hiểu và trực quan hóa dữ liệu bằng Python  của Giáo sư Kerby Shedden, Brenda Gunderson và Brady West từ Đại học của Michigan, SQL cho Khoa học dữ liệu của Sadie St. Lawrence từ Đại học California, Davis</br>

<br>LevelSets hiện có sẵn cho các công ty, trường đại học và chính phủ đã triển khai Bộ kỹ năng phân tích và dữ liệu. Coursera có kế hoạch cung cấp Bộ cấp độ trong danh mục hơn 300 Bộ kỹ năng vào đầu năm tới. Với LevelSets, chúng tôi mong muốn giúp người học trên khắp thế giới xác định điểm mạnh kỹ năng của họ và phát triển các kỹ năng có nhu cầu cao cần thiết để phát triển trong nền kinh tế mới.</br>''', CAST(N'2022-03-10' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (13, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/0001-2-1536x804.jpg', N'Điều gì thúc đẩy sự duy trì trong các chương trình cấp bằng trực tuyến? Thông tin chi tiết mới từ Báo cáo dựa trên dữ liệu của chúng tôi', N'N''<br>Nền tảng Coursera đã trở thành một trung tâm để các trường đại học hàng đầu xây dựng và cung cấp bằng cấp trực tuyến của họ cho khán giả háo hức là các cá nhân trên toàn thế giới. Từ các hoạt động của hàng nghìn sinh viên theo học tại các trường đại học đối tác của chúng tôi&rsquo; các chương trình cấp bằng, chúng tôi có thể rút ra những hiểu biết mới về cách các cá nhân tham gia vào các khóa học lấy tín chỉ trực tuyến, điều gì giúp họ thành công và hoạt động nào thúc đẩy việc giữ chân họ nhiều nhất. Xuyên suốt báo cáo mới của chúng tôi, Các yếu tố thúc đẩy tỷ lệ giữ chân trong các chương trình cấp bằng trực tuyến, chúng tôi đưa ra các phương pháp hay nhất dựa trên dữ liệu để thúc đẩy tỷ lệ giữ chân nhiều hơn trong các chương trình cấp bằng trực tuyến.</br>

<br>Chúng tôi thấy có nhiều yếu tố khác nhau thúc đẩy việc giữ chân sinh viên trong các chương trình cấp bằng được cung cấp trên nền tảng Coursera. Sau đây là những hành động mà các trường đại học có thể thực hiện để hỗ trợ sinh viên của họ khả năng ở lại trong các chương trình của họ: Xây dựng dựa trên thành công của nội dung mở. Đề xuất các khóa học mở có liên quan trên Coursera. Những sinh viên hoàn thành một khóa học mở có nhiều khả năng tiếp tục học lên cao hơn 12%. Những người tham gia các khóa học mở có khả năng tiếp tục theo học các chương trình của họ cao hơn 3%.</br>

<br>Chuẩn bị cho sinh viên một khởi đầu thuận lợi. Cung cấp tài nguyên, giờ hành chính và trả lời câu hỏi trực tiếp để giúp sinh viên nộp bài đánh giá đầu tiên thành công, giúp tăng khả năng duy trì của họ trong chương trình thêm 6%. Hiệu suất là một chỉ số mạnh mẽ của sinh viên, kiên trì sau này, với điểm số trong học kỳ đầu tiên trở nên đặc biệt quan trọng.</br>

<br>Bao gồm cả việc chấm điểm nhân viên. Tăng cường động lực thông qua việc chấm điểm của chuyên gia và nhận xét. Có ít nhất một bài đánh giá do nhân viên chấm điểm giúp tỷ lệ giữ chân sinh viên tăng 6%. Khuyến khích học tập thường xuyên. Sử dụng các kỹ thuật như các video ngắn và các bài đánh giá nhỏ hơn trong suốt khóa học để giúp đảm bảo sinh viên thường xuyên quay lại các khóa học lấy bằng. Để học sinh học trong nhiều ngày hơn dẫn đến tỷ lệ duy trì tăng 5% và là động lực quan trọng hơn so với tổng thời gian học. Thiết kế các dự án thực hành. Giúp học sinh tiến bộ với các dự án thực hành nơi họ có thể áp dụng các kỹ năng mới của mình. Trong các dự án viết lách, mã hóa và sáng tạo, những cơ hội này giúp tăng tỷ lệ giữ chân người dùng cao hơn 3%. Dự án cuối khóa là cơ hội tuyệt vời để cung cấp loại dự án thực hành này và trải nghiệm đỉnh cao cho khóa học. Sử dụng các cơ hội thực hành. Bao gồm các bài đánh giá không được chấm điểm cho bài kiểm tra có mức độ rủi ro thấp và cho các học sinh nâng cao&rsquo; hiểu biết. Việc có các bài đánh giá thực hành giúp tỷ lệ duy trì bằng cấp của sinh viên tăng 2%. Để biết thêm chi tiết cụ thể và các bài học rút ra có thể thực hiện được, vui lòng truy cập đầy đủ Động lực duy trì bằng cấp trong các Chương trình cấp bằng trực tuyến của chúng tôi. Chúng tôi mong muốn được tiếp tục hợp tác với các trường đại học để tạo ra những thiết kế hiệu quả và hiệu quả hơn, nâng việc giảng dạy trực tuyến của giảng viên lên một tầm cao mới.</br>''', CAST(N'2022-06-03' AS Date), 1, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (14, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/UP-1.jpg', N'Điểm nổi bật của Hội nghị Coursera 2022', N'N''<br>Gần ba phần tư CEO xác định tình trạng thiếu lao động hoặc kỹ năng là vấn đề bên ngoài có khả năng làm gián đoạn hoạt động kinh doanh của họ nhất trong 12 tháng tới, theo một báo cáo năm 2021; Khảo sát của Deloitte và Fortune. Sự thiếu hụt này gắn liền với quá trình số hóa tăng tốc. Microsoft dự đoán rằng sẽ có 149 triệu việc làm kỹ thuật số mới chỉ tập trung vào điện toán đám mây, an ninh mạng, phân tích dữ liệu và phát triển phần mềm.</br>

<br>Mặc dù được thúc đẩy bởi các yếu tố bên ngoài, nhưng việc giải quyết tình trạng thiếu hụt kỹ năng bắt đầu từ bên trong một tổ chức. Kiểm soát phát triển kỹ năng là rất quan trọng đối với các doanh nghiệp muốn duy trì tính cạnh tranh và đẩy nhanh quá trình chuyển đổi kinh doanh. Điều này đã được xác nhận bởi 73% số người được hỏi trong Báo cáo xu hướng nguồn nhân lực toàn cầu năm 2020 của Deloitte, người đã xác định các tổ chức là thực thể chịu trách nhiệm cao nhất về phát triển lực lượng lao động.</br>

<br>Việc ưu tiên phát triển kỹ năng cũng có thể dẫn đến hoạt động kinh doanh hữu hình kết quả. Báo cáo Kỹ năng Ngành của Coursera 2021, nhận thấy rằng các kỹ năng của nhân viên có liên quan đến khả năng phục hồi và khả năng thích ứng của công ty khi đối mặt với thách thức lợi ích tương quan với hiệu suất chứng khoán. Xét cho cùng, phát triển kỹ năng là một chiến lược thu hút và duy trì, một chiến lược về hiệu suất cũng như tăng trưởng và tiết kiệm chi phí đóng vai trò quan trọng đối với doanh nghiệp.</br>

<br>Trong báo cáo mới nhất của mình về Phát triển kỹ năng và đánh giá các con đường dẫn đến việc làm: Tầm nhìn cho năm 2030, Giáo dục mới nổi và Coursera kiểm tra thêm cách người sử dụng lao động có thể kết nối tốt hơn việc phát triển kỹ năng với tầm nhìn dài hạn về lực lượng lao động của họ.</br>

<br>Như đã trình bày trong báo cáo, đây là năm điều mà người sử dụng lao động có thể bắt đầu làm ngay bây giờ để nắm lấy sự phát triển kỹ năng và xây dựng lực lượng lao động trong tương lai:</br>

<br>1. Ngừng yêu cầu tạo sơ yếu lý lịch. Tình trạng mô tả công việc rất ảm đạm. Việc thiếu dữ liệu kỹ năng chất lượng cao có nghĩa là các tổ chức không hiểu các kỹ năng và năng lực cần thiết để thực hiện thành công một vai trò nhất định. Mô tả công việc không đầy đủ dẫn đến quảng cáo việc làm được nhắm mục tiêu kém, quy trình phỏng vấn bị lỗi, giới thiệu không hiệu quả và khả năng di chuyển nhân tài kém. Việc tuyển dụng dựa trên kỹ năng, thay vì kinh nghiệm trước đây, là cần thiết để thu hút nhiều người đa dạng hơn vào các vị trí đăng tuyển. Thay vì yêu cầu sơ yếu lý lịch, hãy bắt đầu yêu cầu ứng viên cung cấp danh mục thành tích và chứng chỉ kỹ năng. Điều này sẽ chuyển trọng tâm từ trình độ sang năng lực. Bản mô tả công việc nên được biên soạn dựa trên các kỹ năng, chứ không phải về lĩnh vực kiến thức chung hơn hoặc số năm kinh nghiệm.</br>

<br>2. Cam kết với văn hóa dựa trên dữ liệu. Hầu hết các doanh nghiệp sử dụng dữ liệu để hỗ trợ ra quyết định nhưng trong cuộc khảo sát điều hành của NewVantage Partners năm nay, chỉ 24% cho biết họ đã tạo ra một tổ chức dựa trên dữ liệu. Thách thức chính được nêu ra không phải là công nghệ (7,8%) mà là văn hóa, quy trình và kỹ năng của tổ chức (92,2%). Hãy tiếp tục đầu tư nguồn lực vào một chiến lược dữ liệu được xác định rõ ràng, phù hợp với các mục tiêu kinh doanh tổng thể. Nếu không có nó, bạn sẽ gặp khó khăn trong việc thu thập, diễn giải và tận dụng dữ liệu để đạt được kết quả tốt hơn.</br>

<br>3.Xác định kỹ năng cho tổ chức của bạn. Để xác định khoảng cách kỹ năng, bạn cần hiểu kỹ năng là gì trong bối cảnh tổ chức của bạn, sau đó liên kết kỹ năng với công việc và vai trò. Nhà tuyển dụng cần nắm bắt dữ liệu kỹ năng trước khi lập bản đồ tổ chức của họ. Có một kế hoạch cải thiện kỹ năng tại địa phương sẽ cung cấp một điểm khởi đầu chi tiết để phát triển các kỹ năng.</br>

<br>4. Ưu tiên học lại kỹ năng hơn là nâng cao kỹ năng. Các tổ chức có trách nhiệm giúp nhân viên của họ hiểu rõ hơn kỹ năng chuyển nhượng của họ. Các doanh nghiệp thường kém thành công hơn trong việc đào tạo lại kỹ năng so với nâng cao kỹ năng, bởi vì đào tạo lại đòi hỏi một tổ chức phải hoạt động đa chức năng. Tuy nhiên, các công ty như Amazon đang khởi xướng các chương trình của riêng họ nhằm đào tạo kỹ năng, nâng cao kỹ năng và đào tạo lại kỹ năng cho lực lượng lao động của họ ngay tại công ty. Việc xây dựng mối quan hệ với các cá nhân bằng cách hỗ trợ họ phát triển bản thân có giá trị: 87% người học việc ở Đa vũ trụ gắn bó với công ty của họ người sử dụng lao động lâu dài, và 50% được thăng chức trong vòng sáu tháng. Thay vì cho rằng khoảng cách kỹ năng là những thiếu sót cần được khắc phục ngay lập tức, hãy nhìn vào tiềm năng. Xem xét cách giúp một người phát triển thành một vai trò và luôn cởi mở về những gì có thể được phát triển một cách dễ dàng với các công cụ và khuôn khổ phù hợp. Sử dụng đánh giá hiệu suất để có cái nhìn về tổ chức, kết hợp nguyện vọng nghề nghiệp của cá nhân với công việc trong tương lai theo yêu cầu của công ty bạn.</br>

<br>5.Chống lại sự lỗi thời của công việc. Khi tự động hóa thu hẹp ranh giới xung quanh công việc, nhiều công việc đòi hỏi kỹ năng thấp, được trả lương thấp đang được thiết kế một cách hiệu quả để loại bỏ kỹ năng những người làm việc trong đó. Nhưng sự lỗi thời không phải là không thể tránh khỏi: sử dụng các lộ trình kỹ năng để thiết kế lại các vai trò cấp độ đầu vào và rủi ro. Sau đó, bằng cách sử dụng cơ sở hạ tầng dữ liệu và kỹ năng nêu trên, các công việc mới bắt đầu và những công việc có nguy cơ tự động hóa sẽ tạo thành một lộ trình mang đến cơ hội phát triển các kỹ năng và tiến bộ mới.</br>''', CAST(N'2022-07-18' AS Date), 1, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (15, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/04/barb-Cropped.png', N'Hỏi đáp với Tiến sĩ Barbara Oakley về các mẹo dạy và học', N'N''<br>Khóa học mới về Giảng dạy Ý thức Bất thường từ Tiến sĩ Oakley, người hướng dẫn từ khóa học nổi tiếng Learning How to Learn</br>

<br>Khi quá trình chuyển đổi kỹ thuật số nhanh chóng biến đổi thế giới, học tập đã trở thành một kỹ năng cơ bản mà McKinsey coi là một động lực quan trọng của sự thành công trong sự nghiệp lâu dài. Để giúp giáo viên trang bị cho thế hệ học sinh tiếp theo các công cụ để học tập tốt hơn, Tiến sĩ Barbara Oakley đã giới thiệu một khóa học mới hôm nay, Dạy về Ý thức Khác thường Phần 2: Xây dựng Cộng đồng và Thói quen học tập. Khóa học thứ hai, bổ sung cho khóa học đầu tiên được phát hành vào mùa hè năm ngoái, cung cấp các công cụ dựa trên khoa học thần kinh và hiểu biết thực tế để giúp bất kỳ ai, từ các nhà giáo dục và người hướng dẫn dày dặn kinh nghiệm đến các bậc cha mẹ, khai thác những điều tốt nhất từ người học. Chúng tôi đã liên hệ với Tiến sĩ Oakley để tìm hiểu xem khóa học mới của cô ấy có thể giúp giáo viên giải quyết những thách thức trong lớp học như thế nào. Một bài học rút ra cho các nhà giáo dục là gì có thể học trong khóa học mới của bạn</br>

<br>Trong môi trường học tập trực tuyến ngày càng đa dạng và thường xuyên, giáo viên đang vật lộn với việc làm thế nào để phát huy hết khả năng của tất cả học sinh, phát huy khả năng của họ và thu hút học sinh tham gia. Tôi thực sự tin rằng việc giảng dạy trực tuyến có thể giúp đạt được kết quả phù hợp với kết quả có thể đạt được trong một lớp học truyền thống, và thực sự, thậm chí còn vượt qua nó! Quay trở lại năm 2014, tôi bắt đầu tạo các khóa học trực tuyến về học tập vì kinh nghiệm của bản thân. Tôi rất giỏi toán hoặc khoa học, vì vậy khi trưởng thành, tôi đã phải điều chỉnh lại bộ não của chính mình để học chúng! Vào thời điểm đó, tôi nhớ mình đã tự hỏi tại sao không ai viết sách hay dạy một khóa học về cách học tập hiệu quả dựa trên những gì chúng ta biết từ khoa học về cách thức bộ não học hỏi. Khi tôi thấy các khóa học trực tuyến có thể tiếp cận được bao nhiêu người học; hơn 3,8 triệu người đã tham gia khóa học của tôi Học cách học. Tôi biết rằng mình cần chia sẻ những mẹo tương tự về cách giáo viên có thể truyền đạt những bài học này cho học sinh của họ trên khắp thế giới. Khóa học mới này được dạy cùng với Tiến sĩ Terrence Sejnowski và Beth Rogowsky, dựa trên cuốn sách mới nhất của tôi, cuốn sách gần đây đã được vinh danh là một trong mười cuốn sách hàng đầu dành cho các nhà giáo dục. Tâm lý học nhận thức và những hiểu biết sâu sắc liên quan đến khoa học thần kinh mà chúng tôi giảng dạy sẽ nâng cao kỹ năng giảng dạy của bạn và do đó, cách học sinh học. Vì vậy, mọi đối tượng học sinh đều phát triển khả năng thành thạo bất cứ thứ gì, có thể là toán học, khoa học, khiêu vũ, văn học hoặc nghệ thuật. Bạn có thể chia sẻ một số mẹo về cách chúng ta có thể dạy và học hiệu quả hơn không? Có một số yếu tố chính cần kết hợp hàng ngày</br>

<br>Học sinh có thể học nhanh hơn hoặc học chậm hơn. Vì vậy, cấu trúc giảng dạy. Cung cấp cho người đi bộ những mẩu thông tin nhỏ hơn. Là những người học chậm hơn, họ học sâu hơn và thường xuyên hơn, sáng tạo hơn. Các tay đua có thể học nhanh hơn nhưng cũng đưa ra kết luận nhanh hơn và thấy khó tự sửa lỗi khi mắc lỗi. Hiểu rằng cách chúng ta tìm hiểu sự kiện hoặc thông tin rất khác so với kiến thức về kỹ năng của chúng ta, chẳng hạn như học lái xe một chiếc xe đạp. Cái trước (lộ trình khai báo) chủ yếu là học tập có ý thức, cái sau (lộ trình thủ tục) phát triển thông qua thực hành và diễn ra trong tiềm thức. Bạn càng nhớ lại những gì đã học, bạn càng nhớ, học và hiểu nhiều hơn Nó. Nhưng hãy nhồi nhét tất cả thông tin cùng một lúc. Không gian nó ra và cố gắng giải thích nó cho người khác. Hãy thử kỹ thuật Pomodoro để học hiệu quả nhất. Tránh mọi phiền nhiễu (bao gồm cả điện thoại của bạn). Đặt giới hạn thời gian để tập trung hoàn toàn vào nhiệm vụ hiện tại. Sau khi hết thời gian, hãy thư giãn trong 5 phút và không cuộn Instagram Reels! Khóa học này tập trung vào giảng dạy trực tiếp hay trực tuyến?</br>

<br>Các lớp học ngày nay đã thay đổi mạnh mẽ và thường là môi trường học tập pha trộn. Vì vậy, bạn có thể sử dụng khóa học này như một tài liệu cơ bản nếu bạn chưa quen với việc dạy các bài học trực tuyến. Quan sát giọng điệu được cá nhân hóa mà chúng tôi sử dụng xuyên suốt. Hoặc cách hình ảnh và hoạt ảnh đơn giản truyền đạt những ý tưởng phức tạp. Lưu ý cách ẩn dụ thú vị, cách chơi chữ và phép loại suy là những công cụ tuyệt vời để thu hút người học.Bên cạnh đó, mỗi học phần đều có các câu đố cộng với bài đọc bổ sung để mở rộng kiến thức của bạn;<em>và</em>&nbsp;kiểm tra sự hiểu biết của bạn.</br>

<br>Người học phản hồi thế nào về khóa học?
Thật là một phần thưởng tuyệt vời khi biết rằng nhiều người đã tìm thấy nó được thiết kế phù hợp để trau dồi việc giảng dạy của họ; kỹ năng học tập. Như một học viên đã nhận xét: Làm sao chúng ta có thể dạy mà không biết cách học diễn ra như thế nào? Cũng thật phấn khởi khi thấy rằng nhiều người đã ra đi với nguồn cảm hứng, sự hướng dẫn và hy vọng trong những thời điểm bấp bênh này; khi bản thân kinh nghiệm giảng dạy đã thay đổi rất nhiều. Trên thực tế, chính sự phát triển này trong cách chúng tôi giảng dạy đã khiến tôi bắt đầu thực hiện một khóa học khác. Dạy trực tuyến, khóa học cuối cùng trong loạt bài này, sẽ sớm ra mắt!</br>''', CAST(N'2022-07-03' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (16, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/03/IIT-R-reaches-global-audience-on-Coursera-1024x683.jpeg', N'Mở rộng quyền truy cập và bao gồm: IIT Roorkee tiếp cận khán giả toàn cầu với chương trình khoa học dữ liệu trực tuyến mới', N'N''<br>Hơn 3/4 lãnh đạo các trường đại học đang mở rộng khả năng tiếp cận học tập trực tuyến sau đại dịch bằng cách cung cấp nhiều tùy chọn học tập trực tuyến hơn, bao gồm các chứng chỉ có thể xếp chồng lên nhau và các chương trình cấp bằng cho sinh viên phi truyền thống. Ở Ấn Độ, xu hướng toàn cầu này được thúc đẩy bởi Chính sách Giáo dục Quốc gia (NEP), khuyến khích các trường đại học Ấn Độ xây dựng các chương trình trực tuyến và mở rộng khả năng tiếp cận.</br>

<br>Là một tổ chức giáo dục hàng đầu ở Ấn Độ, Viện Công nghệ Ấn Độ ( IIT) Roorkee hợp tác với Coursera vào tháng 8 năm 2020, hai tháng sau khi NEP được phê duyệt. Thông qua quan hệ đối tác, IIT Roorkee mong muốn hoàn thành mục tiêu giáo dục hòa nhập và tiếp cận đối tượng toàn cầu là sinh viên và các chuyên gia.</br>

<br>IIT Roorkee trở thành trường đại học kỹ thuật công lập đầu tiên của Ấn Độ cung cấp các chương trình cấp chứng chỉ sau đại học trên Coursera, và học viện đã tiếp cận sinh viên trên khắp thế giới. Hơn một nửa (55%) sinh viên theo học Chứng chỉ sau đại học về Khoa học dữ liệu và Máy học của IIT Roorkee đến từ bên ngoài Ấn Độ. Học sinh trải rộng trên 14 quốc gia, bao gồm Canada, Vương quốc Anh, Indonesia và Ả Rập Saudi. Hơn một phần tư số sinh viên của chương trình đến từ Hoa Kỳ. Tại Ấn Độ, chương trình này cũng có phạm vi tiếp cận rộng rãi, thu hút người học từ 11 tiểu bang.</br>

<br>Mối quan hệ đối tác của chúng tôi cho thấy cách chúng tôi có thể tăng khả năng tiếp cận công bằng với nền giáo dục chất lượng cao, phù hợp với công việc cho tất cả người học, bất kể ở đâu. Khi sinh viên đón nhận việc học trực tuyến như một điều bình thường mới, dữ liệu của Coursera cho thấy rằng những sinh viên quan tâm đến bằng cấp quan tâm nhất đến khả năng chi trả và các chương trình được công nhận &ndash; vị trí trường đại học là yếu tố ít quan trọng nhất. Sinh viên háo hức học các kỹ năng cần thiết để thành công trong nền kinh tế kỹ thuật số từ các tổ chức hàng đầu thế giới.</br>

<br>Các quan hệ đối tác với trường đại học như thế này cũng có thể giúp giải quyết tình trạng thiếu kỹ năng tại địa phương, tạo ra con đường giúp nhiều công dân có việc làm hơn- sẵn sàng. Chương trình IIT Roorkee giải quyết khoảng cách kỹ năng quan trọng khi nhu cầu về các chuyên gia khoa học dữ liệu tăng cao ở Ấn Độ. Khi học sinh học các kỹ năng kỹ thuật số hàng đầu một cách không đồng bộ, họ cũng học các kỹ năng mềm cần thiết để thành công trong lực lượng lao động từ xa &mdash; bằng cách làm chủ công việc độc lập đồng thời cộng tác với các đồng nghiệp toàn cầu.</br>

<br>Học tập trực tuyến từ các trường đại học hàng đầu như IIT Roorkee có thể là một nhân tố hỗ trợ đắc lực cho cơ hội dân chủ hóa trong thời kỳ hậu đại dịch bằng cách đáp ứng nhu cầu của người sử dụng lao động và giúp công dân sẵn sàng cho sự nghiệp. Chúng ta đang ở một điểm then chốt trong cuộc hành trình này. Cùng nhau, chúng tôi mong muốn mở rộng quy mô tiếp cận và cơ hội thay đổi cuộc sống cho người học ở khắp mọi nơi.</br>''', CAST(N'2022-07-18' AS Date), 1, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (17, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/02/Blog-Post-QA-w-Anthony-Tattersall-1200x628-1.png', N'Thúc đẩy Phát triển Kỹ năng cho Lực lượng lao động năm 2030: Hỏi & Đáp với Anthony Tattersall', N'N''<br>Anthony Tattersall là phó chủ tịch nhóm bán hàng EMEA tại Coursera. Vai trò của anh ấy mang lại cho anh ấy những hiểu biết độc đáo về cách các doanh nghiệp, chính phủ và giáo dục đại học có thể hợp tác cùng nhau để xây dựng lực lượng lao động trong tương lai của chúng ta và cách dữ liệu có thể được sử dụng để hỗ trợ nỗ lực này. Nhóm Emerge Education đã phỏng vấn Tattersall cho một báo cáo chung với Coursera về Phát triển kỹ năng và đánh giá các con đường dẫn đến việc làm: Tầm nhìn cho năm 2030. Sau đây là những gì Tattersall đã nói</br>

<br>Những xu hướng nào bạn có đang nhìn thấy các kỹ năng từ người dùng của mình không?</br>

<br>Những điều cốt lõi thúc đẩy khả năng của một tổ chức là những kỹ năng mà mọi người có và khả năng khai thác công nghệ của họ. Khi các doanh nghiệp thực sự chuyển sang điều này, họ tập trung vào việc tìm hiểu các yêu cầu về kỹ năng cho các vai trò ngay bây giờ và trong tương lai gần, đồng thời tìm ra cách tốt nhất để giải quyết khoảng cách đó. Những thách thức là làm thế nào để việc học diễn ra trong quy trình làm việc của họ và cách sử dụng việc đào tạo lại kỹ năng để tạo ra các vai trò trong nội bộ nơi việc tuyển dụng không dễ dàng, chẳng hạn như công nghệ, khoa học dữ liệu, an ninh mạng, v.v.</br>

<br>Trong khi làm việc với các chính phủ, chúng tôi thấy nhiều quốc gia đang phải vật lộn với tình trạng thất nghiệp sau đại học, một phần liên quan đến đại dịch và một phần vì các doanh nghiệp muốn thuê những người đã có kỹ năng họ cần. Có nhiều quốc gia có số lượng lớn người làm việc trong các ngành có nguy cơ bị tự động hóa cao và đây thường là những công việc được trả lương thấp hơn nếu những cá nhân đó được tiếp cận với các cơ hội học tập để phát triển các bộ kỹ năng mới, đơn giản là sẽ không có đủ việc làm để phục vụ những người đó.</br>

<br>Đối với các trường đại học, vấn đề không chỉ là kiếm được công việc đầu tiên sau khi tốt nghiệp, nó cũng nói về tất cả những khoảnh khắc chuyển giao nghề nghiệp mà mọi người sẽ trải qua trong suốt cuộc đời của họ. Hầu hết những người tham gia lực lượng lao động bây giờ sẽ trải qua bốn hoặc năm sự thay đổi nghề nghiệp lớn liên quan đến việc nâng cao kỹ năng đáng kể và các trường đại học có vai trò ngày càng quan trọng. Nhưng họ cũng đang trải qua những thách thức, có sự tập trung lớn vào kết quả khả năng có việc làm và các kỹ năng tại nơi làm việc là mục tiêu thay đổi nhanh chóng, vì vậy nội dung học tập cũ đi nhanh chóng. Và làm thế nào để bạn làm việc với kỳ vọng cao hơn về các chương trình học tập kết hợp?</br>

<br>Phương pháp phát triển kỹ năng của Coursera là gì?</br>

<br>Về cốt lõi, chúng tôi là một nền tảng chuyển đổi kỹ năng, vì vậy chúng tôi đang cố gắng cho phép mọi người học ở mọi nơi trên thế giới, tại thời điểm do họ lựa chọn, với khả năng tiếp cận nội dung tốt nhất từ các trường đại học lớn và các đối tác trong ngành. Mục tiêu là sử dụng phương pháp học ứng dụng để cải thiện kỹ năng, dù là nâng cao kỹ năng (cải thiện các kỹ năng hiện tại trong lĩnh vực chuyên môn của bạn), đào tạo lại kỹ năng (đưa bạn vào một lĩnh vực chuyên môn hoàn toàn mới) hay kỹ năng chuyên sâu (để thực sự phát triển mức độ thành thạo).</br>

<br>Điều thứ hai chúng tôi làm là làm việc với các tổ chức để xác định các bộ kỹ năng cần thiết cho từng vai trò và ở cấp độ năng lực nào. Sau đó, chúng tôi có thể chọn từng cá nhân, xem họ đang ở đâu và giúp họ hiểu được những lỗ hổng kỹ năng của mình để họ có thể phát triển. Tất cả nội dung của chúng tôi đều được đánh giá, trong một số trường hợp, nhiều lần khi bạn tiến bộ qua nội dung đó, vì vậy các cá nhân có thể thấy mức độ tiến bộ của họ đối với các mục tiêu kỹ năng đó và để các tổ chức có thể xây dựng bối cảnh các kỹ năng của họ, ở các cấp độ thành thạo cụ thể.</br>

<br>Coursera sử dụng dữ liệu như thế nào để cải thiện kết quả cho người học và tổ chức?</br>

<br>Chúng tôi có 87 triệu người học trên nền tảng này trên toàn cầu, thuộc mọi độ tuổi, tính cách, nhân khẩu học ; một số người đi làm, một số người thất nghiệp, v.v. Kích thước của tập dữ liệu đó làm cho nó rất mạnh mẽ. Chúng tôi có thể biết những kỹ năng mà mọi người đang làm và công việc họ đang làm để hiểu các bộ kỹ năng cơ bản cho những vai trò đó, đồng thời chúng tôi cũng có thể biết quỹ đạo nghề nghiệp của họ theo thời gian, vì vậy chúng tôi hiểu những bộ kỹ năng đó dẫn đến sự thay đổi vai trò như thế nào. Các vòng phản hồi đảm bảo rằng tất cả những thông tin chi tiết về tổng hợp dữ liệu đó đều phù hợp với những cá nhân thực sự tham gia các khóa học của chúng tôi, những người có thể phản ánh về các kỹ năng mà họ nghĩ rằng họ đang học.</br>

<br>Tất cả điều này đã giúp chúng tôi xây dựng một hệ thống phân loại kỹ năng chi tiết, với hàng chục nghìn kỹ năng mà chúng tôi có thể tương quan với các nguồn dữ liệu của bên thứ ba, chẳng hạn như Diễn đàn Kinh tế Thế giới, để lập bản đồ ở cấp độ rất chi tiết về những gì chúng tôi nghĩ sẽ yêu cầu về kỹ năng trong tương lai.</br>

<br>Chúng tôi cũng có một nhóm bao gồm chuyên gia tư vấn chuyển đổi kỹ năng làm việc với các doanh nghiệp, chính phủ và tổ chức để xây dựng các chương trình cụ thể cho mục tiêu của họ. Khoảng 10% tổ chức mà chúng tôi hợp tác đủ lớn để đầu tư vào lĩnh vực này, vì vậy nếu họ đã biết chính xác những gì họ muốn đạt được, chúng tôi có thể lập danh mục của mình theo những nhu cầu phát triển kỹ năng cụ thể đó. Nhưng đại đa số nhận ra rằng thế giới kỹ năng đang thay đổi nhanh chóng và họ không có cái nhìn rõ ràng về chính xác những gì cần phải làm trong 2-3 năm tới, trên cơ sở từng vai trò, vì vậy họ tìm đến chúng tôi để làm điều đó hướng dẫn.</br>

<br>Việc phát triển kỹ năng sẽ như thế nào vào năm 2030 để tạo ra các con đường thay thế cho công việc?</br>

<br>Có người từng nói với tôi rằng chúng ta đánh giá quá cao mức độ thay đổi chúng ta nhìn thấy trong 5 năm và đánh giá thấp sự thay đổi mà chúng ta thấy trong 10 năm. Mười năm là khoảng thời gian đủ dài để một điều gì đó mà không ai lường trước được sẽ phá vỡ hoàn toàn thị trường. Giáo dục là một trong những pháo đài cuối cùng bị phá vỡ và trong khi đại dịch đã đẩy nhanh tốc độ thay đổi, tôi vẫn nghĩ rằng chúng ta đang ở giai đoạn rất, rất sớm.</br>

<br>Tôi rất muốn thấy hệ thống giáo dục trở thành một hệ thống lâu dài đối tác học tập, chứ không phải là một thời điểm riêng biệt ở giai đoạn sớm nhất trong sự nghiệp của bạn. Điều đó sẽ liên quan đến nhiều quan hệ đối tác hơn giữa các chính phủ, doanh nghiệp và tổ chức giáo dục và tôi nghĩ rằng trọng tâm của các trường đại học khi đó sẽ tập trung nhiều hơn vào việc kiểm định các chương trình, điều chỉnh bối cảnh cho phù hợp với nhu cầu địa phương và quản lý một loạt nội dung nhằm tạo cơ hội cho mọi người phát triển các kỹ năng họ cần. Tôi hy vọng chúng ta sẽ chứng kiến sự dân chủ hóa nhiều hơn về quyền truy cập và cách đánh giá năng lực của mọi người ngoài bằng cấp: nhiều chứng chỉ chuyên môn hơn, nhiều trường đại học doanh nghiệp hơn và nhiều tổ chức chuyên nghiệp hơn cung cấp các lộ trình học tập thay thế.</br>

<br>Và tôi hy vọng rằng đến năm 2030 nó là một kỳ vọng bình thường rằng bất kể công việc của bạn là gì, một tỷ lệ phần trăm thời gian của bạn được dành cho việc học, vì vậy các nhà quản lý được trao quyền để hỗ trợ công việc đó và tất cả các quy trình của công ty đều xoay quanh vấn đề đó. Để biết thêm thông tin chi tiết về cách học chuẩn bị cho 375 triệu công nhân lành nghề vào năm 2030, hãy đọc toàn bộ báo cáo Phát triển Kỹ năng và Đánh giá Con đường Dẫn đến Việc làm: Tầm nhìn cho Năm 2030 từ Emerge Education và Coursera. Tìm hiểu cách Coursera hỗ trợ phát triển kỹ năng có tác động cao và nói chuyện với một chuyên gia học tập ngay hôm nay về giải pháp học tập kỹ thuật số tốt nhất cho doanh nghiệp của bạn.</br>''', CAST(N'2022-02-07' AS Date), 1, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (18, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/06/Blog-header.png', N'Cung cấp tính toàn vẹn trong học thuật với các tính năng mới này', N'N''<br>Đối với các nhà lãnh đạo trong giáo dục đại học, liêm chính trong học thuật từ lâu đã là ưu tiên hàng đầu. Nhưng khi nhiều trường đại học bắt đầu đưa các chương trình của họ lên mạng và bắt đầu tăng tốc tự động hóa, hành vi sai trái trong học tập ngày càng trở thành một thách thức phổ biến.</br>

<br>Theo Trung tâm Liêm chính Học thuật Quốc tế, hơn 60% sinh viên đại học thừa nhận gian lận dưới một số hình thức . ProctorU, một dịch vụ chấm thi trực tuyến, đã thực hiện 1,3 triệu bài thi thông qua nền tảng của họ từ tháng 4 đến tháng 6 năm 2020, tăng gấp bốn lần so với ba tháng trước đó. Trong 1,3 triệu bài thi đó, họ thấy tỷ lệ gian lận tăng gấp 8 lần. Để củng cố niềm tin vào tính hợp lệ và hiệu quả của việc giảng dạy từ xa, các nền tảng học tập trực tuyến đang phải đối mặt với nhu cầu cấp thiết là cung cấp một bộ tính năng liêm chính trong học thuật mạnh mẽ.</br>

<br>Để đáp ứng nhu cầu này, Coursera đã phát triển một bộ các tính năng về liêm chính trong học thuật. sẽ giúp các tổ chức mang lại tính chính trực trong học thuật ở mức độ cao bằng cách 1) ngăn chặn và phát hiện gian lận và 2) đánh giá chính xác mức độ nắm vững kiến thức mà học sinh đang học bằng các bài đánh giá riêng.</br>

<br>Ngừng gian lận trước khi nó xảy ra và phát hiện nó khi nó xảy ra. Các tính năng ngăn chặn đạo văn được thiết kế để ngăn chặn hành vi sai trái trong học tập trước khi nó xảy ra bằng cách cảnh báo cho sinh viên khi bài làm của họ sẽ bị gắn cờ vì đạo văn, ngăn sinh viên sao chép bài làm của nhau và nhắc nhở họ về trách nhiệm duy trì tính chính trực trong công việc của họ. Chắc chắn, một số sinh viên có thể gửi một bài tập đạo văn. Đó là lúc phát hiện đạo văn, giúp bạn phát hiện và theo dõi các trường hợp không trung thực trong học thuật đồng thời cung cấp cho bạn thông tin bạn cần để duy trì các tiêu chuẩn cao về tính liêm chính trong học thuật trong chương trình của bạn. Dưới đây là danh sách các tính năng phát hiện và ngăn chặn đạo văn của chúng tôi.</br>

<br>Có sẵn trong cả gói Cơ sở và Gói cơ bản: Tắt chia sẻ URL: Tắt chia sẻ URL có nghĩa là sinh viên của bạn sẽ không thể gửi trực tiếp liên kết bài nộp của họ cho bạn bè để chấm điểm bài nộp, giúp việc bình duyệt của đồng nghiệp công bằng và khách quan hơn. Tắt bản sao bài bình duyệt: Tính năng này hạn chế học viên của bạn không thể sao chép bài nộp của người khác để sử dụng cho bài nộp của chính họ trong khi họ đang đánh giá đồng nghiệp của mình. Ẩn danh đánh giá ngang hàng: Tính năng này ẩn danh tên của cả người gửi và người đánh giá để đánh giá bình duyệt. Điều này hữu ích khi bạn lo lắng về tính khách quan của những người đánh giá, những người có thể biết người học đã gửi bài đánh giá qua bình duyệt. Sổ điểm trực tuyến (ra mắt vào tháng 8 năm 2021): Khi khả dụng, báo cáo sổ điểm trực tuyến của chúng tôi sẽ hiển thị thông tin về những người học hiện đang hoặc trước đây đã đăng ký một khóa học cụ thể. Điều này sẽ cho phép bạn theo dõi sự tiến bộ của người học và theo dõi các sự cố đạo văn. Chỉ có trong kế hoạch của Tổ chức: Điểm tương đồng của Turnitin: Thông qua sự tích hợp của chúng tôi với Turnitin, sinh viên của bạn sẽ biết liệu bài tập của họ có giống với các nguồn trực tuyến khác hoặc các bài nộp hiện có trong tổ chức của bạn hay không trước khi họ nộp bài tập, giúp họ có cơ hội sửa đổi bài tập của mình. Nếu học sinh của bạn nộp bài tập đáp ứng hoặc vượt quá ngưỡng điểm tương đồng, thì bài tập đó sẽ bị gắn cờ vì đạo văn. Nhắc nhở về chính sách đạo văn: Với lời nhắc về chính sách đạo văn của chúng tôi, bạn hãy đảm bảo rằng học viên của mình luôn biết về quy tắc danh dự của Coursera. Ngoài ra, tính năng này sẽ yêu cầu người học cung cấp chữ ký xác nhận các chính sách của Coursera và nhắc nhở họ về các tiêu chuẩn học tập cao mà họ cần duy trì.</br>''', CAST(N'2022-05-22' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (19, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/06/Coursera-Plus-evergreen-animated-1-1024x536.gif', N'Truy cập học tập không giới hạn với Coursera Plus, hiện đã có trên toàn thế giới', N'N''<br>Khi chúng tôi công bố Coursera Plus vào tháng 2 năm nay, chúng tôi rất vui mừng được mang đến cho bạn một gói đăng ký mới, nơi bạn có thể truy cập không giới hạn vào hơn 3.000 khóa học với một mức giá hợp lý và trọn gói.</br>

<br>Hôm nay, chúng tôi vui mừng thông báo rằng Coursera Plus không chỉ có sẵn cho người học ở mọi nơi trên toàn cầu mà còn bao gồm các Dự án có hướng dẫn không giới hạn!</br>

<br>Hơn 90% danh mục Coursera có sẵn thông qua Coursera Plus. Với việc bổ sung các Dự án có hướng dẫn, giờ đây bạn có nhiều cơ hội hơn bao giờ hết để đạt được các mục tiêu học tập cá nhân và nghề nghiệp của mình. Bạn có thể thành thạo một kỹ năng cụ thể trong Chuyên môn, sẵn sàng cho công việc theo yêu cầu nghề nghiệp với Chứng chỉ Chuyên nghiệp hoặc nhanh chóng tìm hiểu một công cụ ngành mới trong Dự án có hướng dẫn. Tốt hơn nữa, bạn có thể hoàn thành tất cả chỉ với một mức giá đơn giản.</br>

<br>Những người đăng ký Coursera Plus đã cho chúng tôi biết rằng gói này giúp họ dành nhiều thời gian hơn cho việc học và họ cảm thấy có động lực hơn để làm như vậy. Trên thực tế, chúng tôi thấy rằng những người học trên Coursera Plus có tỷ lệ hoàn thành cao hơn 35% và họ tăng gấp ba thời gian tích cực trong các khóa học của mình. Họ cũng tận dụng kế hoạch để khám phá nhiều chủ đề và kỹ năng hơn, đăng ký các khóa học trong nhiều lĩnh vực gấp đôi so với những người học đăng ký trực tiếp vào một Chuyên ngành.</br>

<br>Yiwen là người đăng ký Coursera Plus và cô ấy yêu thích sự linh hoạt, giá cả phải chăng và phạm vi học tập: Với Coursera Plus, tôi có quyền truy cập vào rất nhiều khóa học chất lượng cao, cho các chủ đề mà tôi quan tâm, chỉ trong một khóa học -thanh toán hàng năm theo thời gian. Tôi không cần phải vội vàng hoàn thành các khóa học của mình trong một tháng để cố gắng tiết kiệm tiền. Thật tiện lợi khi tôi có thể tham gia bao nhiêu khóa học tùy thích vào bất kỳ thời điểm nào trong năm</br>''', CAST(N'2022-05-04' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (20, N'https://lh5.googleusercontent.com/Wa4nb407pNEXXW2lK-_zqb7rrWKNGklrZBaLTJSv9i0i8EFBSlUdKz_vuGhWXeRJwH_mAmRnQNoQaebCObntoWyziuX2hw0VdBXv72MhHaPaNpXxw6hiXzQ5sKDOgFT6HlSTHm8h', N'Live2 Coursera: Sắp ra mắt dưới dạng ứng dụng Zoom', N'N''Vào tháng 8, chúng tôi đã ra mắt Live2 Coursera để giúp những người hướng dẫn nhanh chóng chuyển sang trực tuyến bằng cách tích hợp các bài giảng Zoom vào các khóa học riêng tư và thư viện nội dung của họ trên Coursera. Mặc dù điều này đã giúp giải quyết thách thức ban đầu trong việc chuyển đổi hướng dẫn trực tuyến, kết nối internet và quyền truy cập vào các thiết bị vẫn cản trở việc học tập của nhiều sinh viên.<p>Hôm nay, chúng tôi rất vui mừng được thông báo rằng Live Coursera sắp ra mắt trên thị trường ứng dụng Zoom Zoomtopia. Ứng dụng Live Coursera miễn phí giúp giảm khoảng cách kỹ thuật số trong phiên bản cao hơn bằng cách cung cấp các tùy chọn xem và tải xuống linh hoạt, người hướng dẫn sẽ có thể dạy từ xa một cách tự tin, biết rằng tất cả sinh viên của họ có thể truy cập bài giảng của họ mọi lúc, mọi nơi.<p>Người hướng dẫn có thể kích hoạt Ứng dụng Live Coursera để dễ dàng ghi lại, chia sẻ và tải các bài giảng Zoom của họ lên Coursera. Học viên có thể xem các bản ghi bài giảng trong Zoom hoặc tải xuống các bài giảng đã ghi từ Coursera qua thiết bị di động hoặc PC ở định dạng phù hợp nhất với video có độ phân giải cao băng thông, video dữ liệu thấp hoặc chỉ có âm thanh bằng cách sử dụng Live2 Coursera Zapp<p>Giảng viên có thể truy cập Ứng dụng Coursera trực tiếp cho Zoom (Zapp) trực tiếp trong môi trường Zoom.</p><p>Trước khi ghi, người hướng dẫn nên điền vào trường tiêu đề email và video. Người hướng dẫn cũng có thể chọn hộp bên cạnh &ldquo;Gửi video qua email cho mọi người được mời tham dự cuộc họp này để tự động gửi email cho sinh viên chứa liên kết đến bài giảng được ghi lại trên Coursera.&nbsp;</p><p>Khi người hướng dẫn đã sẵn sàng bắt đầu ghi lại bài giảng của mình, họ có thể nhấp vào &ldquo;Bắt đầu ghi vào Coursera. Sau khi bài giảng kết thúc, liên kết video có thể được chia sẻ trực tiếp với học viên qua email hoặc trong Zoom.</p><p>Trong Zoom, học viên có thể truy cập các video được thêm gần đây và xem trực tiếp trong Zoom.</p><p> Thông qua URL có thể chia sẻ, họ có thể xem video trực tuyến trên Coursera hoặc tải xuống để xem ngoại tuyến trên thiết bị di động hoặc PC.<p>Khi tải xuống video bài giảng, người học có thể chọn từ một số tùy chọn tải xuống, bao gồm video có độ phân giải cao, video dữ liệu thấp, hoặc chỉ có âm thanh.</p><p>Chúng tôi rất vui mừng được hợp tác với Zoom để giúp người hướng dẫn tạo ra chương trình học trực tuyến toàn diện và dễ tiếp cận cho tất cả học sinh.</p>''', CAST(N'2022-07-18' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (21, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/08/Blog-post-1-1-1536x804.png', N'Giới thiệu Lộ trình học tập nghề nghiệp: Học các kỹ năng để thăng tiến nghề nghiệp của bạn một cách tự tin', N'N''Bắt tay vào một chương mới trong hành trình sự nghiệp của bạn có thể là một trải nghiệm cảm xúc mạnh mẽ. Bạn có thể cảm thấy phấn khích và mong đợi, nhưng cũng lo lắng và căng thẳng. Cho dù bạn đang tìm kiếm công việc đầu tiên, theo đuổi sự thăng tiến hay dự tính chuyển đổi giữa sự nghiệp sang một lĩnh vực mới, luôn có những điều chưa biết để quản lý. Vào thời điểm mà COVID-19 đã tác động đáng kể đến bối cảnh việc làm, sự không chắc chắn này có vẻ còn khó khăn hơn.</p><p>Hôm nay, Coursera sẽ ra mắt Lộ trình học tập nghề nghiệp, một tài nguyên trực tuyến miễn phí để giúp bạn tìm thấy nội dung học tập mà mình mong muốn. cần phải đạt được mục tiêu nghề nghiệp của bạn. Mỗi lộ trình cho bạn thấy sự phát triển của các vai trò công việc&mdash;từ cấp độ mới bắt đầu đến chuyên gia có kinh nghiệm&mdash;đối với một lĩnh vực đang có nhu cầu, trình bày chi tiết các kỹ năng cần thiết để thành công trong sự nghiệp trong lĩnh vực đó và ánh xạ các kỹ năng này tới các chương trình học tập có liên quan trên Coursera. Với Lộ trình học tập nghề nghiệp, bạn có thể tự tin học hỏi khi biết rằng mình đang đi đúng hướng để thăng tiến trong sự nghiệp.</p><p>Lộ trình học tập nghề nghiệp cho sáu lĩnh vực tăng trưởng cao hiện đã có Dữ liệu kỹ thuật mạng quản lý dự án linh hoạt Tiếp thị kỹ thuật số Khoa học dữ liệu thiết kế kỹ thuật. Các chuyên gia chiến lược nội dung của Coursera đã chọn những lĩnh vực này vì mức tăng trưởng ổn định và mức lương cạnh tranh của chúng</a> và vì các kỹ năng cần thiết để thành công trong những lĩnh vực này có thể được học trực tuyến.</p><p>Ví dụ: hãy xem xét lĩnh vực Agile Quản lý dự án. Các vai trò trong lĩnh vực này chẳng hạn như người quản lý dự án CNTT có nguy cơ tự động hóa thấp và có mức lương trung bình cho các vai trò mới bắt đầu. Trong các chương trình như khóa học độc lập Atlassian Agile with Atlassian Jira và Chứng chỉ Chuyên gia Quản lý Dự án của UC Irvine</a>, bạn có thể học các kỹ năng để bắt đầu và thăng tiến trong sự nghiệp quản lý dự án của mình.</p><p><strong>Làm thế nào để có thể bạn bắt đầu sử dụng Lộ trình Học tập Nghề nghiệp? Giả sử bạn quan tâm đến việc bắt đầu sự nghiệp khoa học dữ liệu. Bạn có thể bắt đầu bằng cách khám phá Lộ trình học tập nghề nghiệp khoa học dữ liệu</a>, nơi bạn tìm thấy mô tả chung về lĩnh vực này và nội dung do chuyên gia tuyển chọn dành cho các chuyên gia khoa học dữ liệu mới bắt đầu, trung cấp và nâng cao. Nội dung được tuyển chọn cung cấp nhiều chương trình học tập, từ Dự án có hướng dẫn có thể hoàn thành trong vòng chưa đầy hai giờ đến các chương trình cấp bằng và chứng chỉ chính thức cung cấp đào tạo chuyên sâu hơn trong lĩnh vực này. Các ví dụ bao gồm Chứng chỉ Chuyên gia Khoa học Dữ liệu của IBM hoặc Thạc sĩ Khoa học Dữ liệu và Máy học của Đại học Hoàng gia Luân Đôn</a>. Sau khi xác định được cấp độ và loại nội dung phù hợp với mục tiêu của mình, bạn có thể bắt đầu học.<p>Trong những tháng tới, chúng tôi tiếp tục giới thiệu thêm Lộ trình học tập nghề nghiệp trên các lĩnh vực đang phát triển khác. Mục tiêu của chúng tôi là hỗ trợ bạn từng bước khi bạn theo đuổi mục tiêu của mình, bằng cách cung cấp các tài nguyên học tập đẳng cấp thế giới phù hợp với hành trình sự nghiệp độc đáo của bạn.</p>''', CAST(N'2022-04-28' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (22, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/02/CourseraPlus_Product_Update-1.png', N'Giới thiệu Coursera Plus: gói thuê bao để học không giới hạn', N' N''<p>Đại dịch đã gây ra một sự thay đổi chưa từng có trong giáo dục đại học. Mùa xuân vừa qua, học sinh trên toàn thế giới đã học ở nhà và ngày nay, nhiều học sinh vẫn bị ảnh hưởng bởi việc đóng cửa khuôn viên trường. Các trường cao đẳng và đại học tiếp tục vật lộn với tác động của COVID-19 và quá trình chuyển đổi sang học tập kết hợp và trực tuyến sẽ như thế nào vào mùa thu này.&nbsp;</p><p>Tại Hội nghị Coursera vào tháng 4, chúng tôi đã xem trước Live Coursera, chương trình này cho phép người hướng dẫn tích hợp các cuộc họp trực tiếp vào các khóa học của họ. Hôm nay, chúng tôi rất vui mừng thông báo rằng Live Coursera có sẵn cho tất cả các tác giả trên Coursera. Như chúng ta đã thấy trong vài tháng qua, các bài giảng Zoom được ghi lại có tiềm năng trở thành tài sản kỹ thuật số lâu dài, có giá trị cho cả nhà giáo dục và người học.</p><p><strong>Các công cụ có tác động dành cho nhà giáo dục<p>Để trợ giúp giúp quá trình chuyển đổi sang học trực tuyến dễ dàng hơn một chút, chúng tôi đã thiết kế Live2 Coursera để giúp việc giảng dạy trực tiếp trở nên trực quan và hiệu quả nhất có thể. Live2 Coursera giúp bạn dạy các lớp học trực tiếp, chẳng hạn như với sinh viên hoàn toàn trực tuyến hoặc sinh viên trong trường đang học từ xa, trong các khóa học riêng. Live2 Coursera cũng cho phép bạn thêm các bản ghi Thu phóng vào thư viện nội dung Coursera của mình và tận dụng chúng cho các lớp học và MOOC trong tương lai.<p>Chúng tôi rất vui được chia sẻ các tính năng mới sau đây dành cho các nhà giáo dục:</p>p><strong>Liên kết tài khoản Zoom của bạn : Giờ đây, bất kỳ tác giả nào cũng có thể liên kết tài khoản Zoom của họ với Coursera để bắt đầu cung cấp các cuộc họp trực tiếp trong các khóa học của họ (Khả dụng ngay hôm nay cho tất cả các tác giả)</em></p><p><strong>Lên lịch các cuộc họp: Các tác giả có thể lên lịch các cuộc họp Zoom một cách liền mạch tích hợp chúng trong trải nghiệm học tập khóa học của họ để có quyền truy cập hợp lý vào các cuộc họp trực tiếp (Hiện có sẵn cho các dịch vụ khóa học riêng)</em></p><p><strong>Định cấu hình bản ghi: Bản ghi cuộc họp được tự động lưu trữ trong Thư viện nội dung khóa học của bạn dành cho nhân viên và cũng có thể được định cấu hình để tự động xuất bản cho người học. Nội dung Thư viện nội dung có thể được tận dụng cho các dịch vụ trong tương lai của khóa học này hoặc bất kỳ khóa học nào khác, vì vậy, bạn thêm vào thư viện nội dung của mình với mỗi cuộc họp trực tiếp (Hiện có sẵn cho các dịch vụ khóa học riêng)</em></p><p><strong>Nhập bản ghi trước: Bạn có bản ghi từ các lớp trước trên Coursera không? Chúng tôi sẽ sớm thêm Zoom vào danh sách các nhà cung cấp Đám mây mà bạn có thể nhập trực tiếp video từ đó mà không cần phải tải xuống thủ công trước. Điều này cho phép tác giả nhập các bản ghi trước hiệu quả hơn, bổ sung thêm vào thư viện nội dung có thể tái sử dụng của bạn. (Sắp có cho tất cả các tác giả)</em></p><p><strong>Bắt đầu giảng dạy ngay lập tức: Giờ đây, các tác giả có thể khởi chạy các dịch vụ khóa học riêng hoàn toàn tự phục vụ, vì vậy bạn có thể bắt đầu giảng dạy bất cứ lúc nào trong vòng vài phút mà không cần đợi Phê duyệt của Coursera (Hiện có sẵn cho các khóa học riêng)</em></p><p><strong>Điều chỉnh nhanh chóng: Đối với các khóa học riêng, tác giả có thể thay đổi nội dung và đánh giá bất kỳ lúc nào, nghĩa là bạn có thể điều chỉnh khóa học của bạn một cách nhanh chóng dựa trên hiệu suất của sinh viên. Chúng tôi sẽ sớm cho phép tạo mô-đun (thêm, chỉnh sửa hoặc xóa) cho các dịch vụ khóa học riêng đã ra mắt (Sắp có cho các dịch vụ khóa học riêng)</em></p><p><strong>Trải nghiệm người học liền mạch</strong </p><p>Học viên xem các sự kiện và bản ghi trực tiếp ngay trong trải nghiệm khóa học của họ và nhận được email nhắc nhở trước sự kiện &ndash; tất cả được điều chỉnh theo múi giờ của từng cá nhân và được bản địa hóa để hỗ trợ người học trên khắp thế giới.&nbsp;<em>(Hiện có sẵn cho các khóa học riêng)</em></p><p><strong>Một cái nhìn thoáng qua về tương lai<p> Chúng tôi rất vinh dự được phục vụ hơn 200 trường đại học và đối tác trong ngành cũng như 68 triệu người học trên khắp thế giới trong hành trình dạy và học trực tuyến của họ. Sắp tới, chúng tôi sẽ tiếp tục đổi mới trên nền tảng này để tạo ra trải nghiệm tốt nhất cho các nhà giáo dục và người học &ndash; bao gồm cả giảng dạy trực tiếp và không đồng bộ.&nbsp;</p>', CAST(N'2022-07-18' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (23, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/04/Coursera_Conference_2020_Product_Announcement_blog_header.png', N'Giới thiệu các công cụ và tính năng mới khi nhu cầu học trực tuyến tăng lên', N'N''Người học trên khắp thế giới đang chuyển sang học trực tuyến vào thời điểm đặc biệt khó khăn này. Chỉ sau một đêm, các trường đại học đã chuyển sang hình thức giảng dạy từ xa để mang lại sự liên tục trong học tập cho sinh viên của họ. Trong tháng vừa qua, 5,9 triệu người học đã đăng ký các khóa học trên Coursera và gần 2.700 tổ chức đã triển khai các chương trình Coursera for Campus. Khi cộng đồng người học và nhà giáo dục trực tuyến phát triển, chúng tôi sẽ nỗ lực gấp đôi để cung cấp cho họ nội dung chất lượng hàng đầu, được cung cấp thông qua trải nghiệm học tập chất lượng cao. Hôm nay, chúng tôi rất vui mừng được giới thiệu một số công cụ và tính năng mới dành cho người học và nhà giáo dục của chúng tôi.&nbsp;</p><p><strong>Phục vụ người học</strong></p><p>Điều quan trọng là chúng tôi tiếp tục giúp người học phát triển và thể hiện các kỹ năng liên quan đến công việc. Điều này bắt đầu với nội dung phù hợp cho các mục tiêu cụ thể và hỗ trợ để giúp người học tiến bộ.</p><p><strong>Kết hợp người học với nội dung phù hợp</strong></p><p>Với nhiều loại nội dung các khóa học, Chuyên ngành, bằng cấp và chứng chỉ, người học có rất nhiều lựa chọn trên nền tảng của chúng tôi. Họ sẽ có thể dễ dàng khám phá nội dung phù hợp nhất để phát triển các kỹ năng họ cần. Để trợ giúp, chúng tôi đã giới thiệu:</p><strong>DUYỆT DUYỆT ĐƯỢC CÁ NHÂN HÓA </strong>&ndash; Được xây dựng trên các mô hình máy học, tính năng này đảm bảo người học nhận được đề xuất phù hợp cho nội dung học tập phù hợp nhất dựa trên hành trình học tập của họ cho đến nay.</li><li><strong>TRANG CHỦ ĐƯỢC CÁ NHÂN HÓA</strong> Khi đăng nhập, người học có thể tiếp tục một khóa học chỉ bằng một cú nhấp chuột, xem các đề xuất được cá nhân hóa về các khóa học để theo đuổi tiếp theo và xem các chứng chỉ mà họ đã đạt được cho đến nay.</ul><p><strong>Giúp người học tiến bộ</strong></p><p>Chúng tôi nhận ra rằng việc học cần có thời gian, cam kết và động lực. Chúng tôi tiếp tục cải thiện hệ thống trợ giúp trong khóa học của mình, cung cấp các thông tin hỗ trợ do AI cung cấp để giúp người học đi đúng hướng. Khi người học phát triển các kỹ năng, điều quan trọng là họ phải hiểu được trình độ của mình so với mục tiêu nghề nghiệp của họ. Chúng tôi rất vui được giới thiệu:</p>ĐẶT MỤC TIÊU</strong> Sau khi người học bắt đầu một khóa học mới, một lời nhắc sẽ xuất hiện để tạo mục tiêu học tập ngay từ đầu. Những mục tiêu này có thể được đồng bộ hóa liền mạch với Lịch Google và các ứng dụng lịch khác, tích hợp việc học vào thói quen hàng ngày.</ul><li><strong>TÀI LIỆU ĐÁNH GIÁ THÔNG MINH. Công cụ học máy này giúp bỏ chặn người học khi họ trượt bài kiểm tra. Nó cung cấp các đề xuất tài liệu ôn tập có mục tiêu dựa trên các câu hỏi cụ thể mà họ đã bỏ lỡ, cung cấp cho người học một lộ trình có cấu trúc để thành công trong lần thử làm bài kiểm tra tiếp theo.</li><strong>THEO DÕI KỸ NĂNG CỦA NGƯỜI HỌC. Công cụ dựa trên dữ liệu này theo dõi sự phát triển kỹ năng của người học, chia sẻ điểm năng lực được cập nhật khi người học thực hiện nhiều bài đánh giá hơn trên Coursera. Thông qua bảng điều khiển tập trung, người học có thể theo dõi sự tiến bộ của họ đối với các kỹ năng nghề nghiệp cụ thể và xem điểm năng lực của họ như thế nào so với các chuyên gia khác trên nền tảng Coursera.</ul><p><strong>Phục vụ các đối tác của chúng tôi<p>Trong khi các trường đại học cần nhanh chóng lên mạng do sự gián đoạn từ COVID-19, đây cũng là chất xúc tác cho quá trình chuyển đổi kỹ thuật số của phiên bản cao hơn. Chúng tôi ở đây để hỗ trợ các đối tác của mình trong nỗ lực cung cấp dịch vụ học tập trực tuyến trên quy mô lớn với một số công cụ và tính năng mới.<p><strong>Giúp các nhà giáo dục chuyển sang trực tuyến nhanh hơn</strong></p><p>Đại dịch vi-rút corona đang buộc thử nghiệm toàn cầu với việc giảng dạy từ xa. Chúng tôi đã nghe từ nhiều đối tác đang tìm kiếm các công cụ và nguồn lực để cung cấp tính liên tục trong học tập cho học sinh của họ. Lưu tâm đến những nhà giáo dục này, chúng tôi đã ra mắt:<strong>Live2Coursera</strong>. Hàng nghìn người hướng dẫn đang sử dụng Zoom để giảng bài cho hàng triệu sinh viên trên toàn thế giới và tài nguyên này sẽ được chuyển thành tài sản kỹ thuật số dài hạn. Live2 Coursera cho phép tích hợp liền mạch các bài giảng trực tiếp này vào một khóa học riêng. Các bản ghi thu phóng được tự động thêm vào khóa học của người hướng dẫn khi họ giảng dạy, vì vậy họ có thể xây dựng một thư viện nội dung để sử dụng lại trong các khóa học mở hoặc riêng tư trong tương lai. Ra mắt vào cuối năm 2020.</em><strong>CourseMatch. Tiếp nối Sáng kiến ứng phó với vi-rút corona, vốn cung cấp cho các trường đại học quyền truy cập miễn phí vào Coursera for Campus, chúng tôi đã ra mắt CourseMatch</a>: một giải pháp máy học tự động khớp các khóa học trong khuôn viên trường đại học với các khóa học trong danh mục của chúng tôi, cho phép các tổ chức nhanh chóng cung cấp các khóa học trực tuyến phù hợp nhất cho sinh viên của họ.</ul><p><strong>Dễ dàng tạo và quản lý nội dung<p>Các đối tác của chúng tôi tận tâm tạo ra các khóa học và chuyên ngành chất lượng cao cho người học ở khắp mọi nơi. Chúng tôi triển khai một số cải tiến mới để giúp các đối tác nhanh chóng tạo và quản lý nội dung trên nền tảng của chúng tôi:</p><strong>Nhập trên nền tảng đám mây. Nhập liền mạch nội dung đám mây trực tiếp vào nền tảng Coursera từ bất kỳ URL có sẵn công khai nào và sau khi đăng nhập vào tài khoản Dropbox hoặc Google Drive.</ul>mạnh>NHẬP KHẨU ĐÁNH GIÁ. Đánh giá tác giả một cách hiệu quả bằng cách nhập tài liệu trực tiếp vào nền tảng Coursera từ Google Docs, Sheets, Microsoft Word và Excel. Ra mắt vào cuối năm 2020.</em></li><strong>NGÂN HÀNG CÂU HỎI. Tạo ngân hàng câu hỏi, gắn thẻ câu hỏi dựa trên mục tiêu và độ khó để tận dụng hiệu quả bộ câu hỏi cốt lõi trong một số bài đánh giá. Ra mắt vào cuối năm 2020.</em></li><strong>ĐÁNH GIÁ NGÀNH NGHỀ CÓ SỰ TRỢ GIÚP CỦA MÁY. Công cụ này cho phép chấm điểm theo tỷ lệ. Những người học đang gặp khó khăn trong việc hoàn thành bài tập được xếp loại ngang hàng có thể tự động đánh giá công việc của họ bằng mô hình máy học được đào tạo dựa trên các bài nộp được xếp loại ngang hàng trước đó từ khóa học<strong>ITEM LINKING. Khi một đối tác thực hiện các thay đổi đối với một mục trong một khóa học, họ có thể áp dụng thay đổi đó trên tất cả các bản sao được liên kết của mục đó trong các khóa học khác, tăng hiệu quả, tính nhất quán và khả năng xếp chồng của nội dung. Điểm bài kiểm tra của người học từ một khóa học mở sẽ tự động chuyển sang cấp độ mà bài kiểm tra đó cũng được sử dụng, giúp người học không cần thực hiện lại bài đánh giá.</li><strong>VAI TRÒ TÙY CHỈNH. Việc quản lý các vai trò và quyền liên quan đến một khóa học thường đòi hỏi nỗ lực kết hợp của trợ lý giảng dạy, giảng viên và quản trị viên trường đại học. Vai trò tùy chỉnh cung cấp khả năng kiểm soát và tính linh hoạt bổ sung, giờ đây các đối tác có thể tạo vai trò nhân viên mới với bất kỳ sự kết hợp quyền và quyền truy cập nào. Đặc biệt với nội dung lấy tín chỉ, điều này mang lại một lớp bảo vệ bổ sung cho quyền riêng tư của sinh viên.<p><strong>Trao quyền cho các đối tác cấp bằng của chúng tôi bằng dữ liệu và API</strong></p><p>Khi chúng tôi làm việc với các đối tác của mình để mang lại nhiều bằng cấp chất lượng hàng đầu trực tuyến hơn, chúng tôi cũng tập trung vào việc giúp các đối tác cấp bằng của chúng tôi quản lý nội dung của họ hiệu quả hơn:</p><strong>API DEGREE. Các đối tác có thể tích hợp với Coursera thông qua API, cho phép trao đổi gần thời gian thực bằng công nghệ dựa trên tiêu chuẩn. Điều này sẽ bắt đầu với dữ liệu vận hành chính cho các chương trình cấp bằng và đăng ký khóa học, với nhiều API hơn sẽ ra mắt trong suốt năm 2020. Nó sẽ giúp xác định và giải quyết lỗi nhanh hơn, tăng tính linh hoạt cho các đối tác sử dụng kho công nghệ của riêng họ và cho phép thử nghiệm cả trước và sau và sau khi tung ra nội dung để chủ động giám sát mọi vấn đề.<p>Cộng đồng người học và nhà giáo dục của chúng tôi đại diện cho nhiều nhu cầu khác nhau và chúng tôi cam kết đáp ứng những nhu cầu đó bằng sự đổi mới nhanh chóng. Bất kể bạn ở đâu trên thế giới, chúng tôi luôn sẵn sàng trợ giúp bạn đạt được mục tiêu giảng dạy và học tập. Kiểm tra người học và cộng đồng của chúng tôi ngày hôm nay.''', CAST(N'2022-03-21' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (24, N'img/tempAvatar.jpg', N'Đại học Northeastern và Mayo Clinic ra mắt văn bằng đại học đầu tiên trên Coursera', N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', CAST(N'2023-06-29' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (25, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/12/sans-titre-%C2%AE-Hec-Paris-2016.jpg', N'Nghĩ rằng bạn không sáng tạo? Nghĩ lại', N'N''Đây là câu thần chú mà chuyên gia sáng tạo, Giáo sư Anne-Laure Sellier đưa vào thế giới kinh doanh và cả trong lớp học. Khóa học Tăng cường Sáng tạo của cô tại HEC Paris là một trong những khóa học nổi tiếng nhất trong chương trình Thạc sĩ Khởi nghiệp và Đổi mới của trường, đồng thời giúp những người tham gia khai thác những sức mạnh tiềm ẩn mà họ chưa từng biết đến &hellip;</p><p><strong>Quên đi những món quà từ các vị thần hoặc bị tấn công bởi nàng thơ, tất cả chúng ta đều có khả năng suy nghĩ sáng tạo</strong></p>Một trong những lý do mà hiện tại chúng tôi chỉ dạy về sáng tạo &ndash; và HEC Paris là một trong số ít trường kinh doanh trên thế giới làm như vậy vì trong thời gian dài nhất, người ta tin rằng nó chỉ đơn giản là có thể dạy được. Trong phần lớn lịch sử, loài người chúng ta tin rằng sự sáng tạo là do (các) Chúa ban tặng, và bạn không thể làm gì nhiều về điều đó. Bây giờ chúng tôi biết điều này ít nhất là một phần vô nghĩa: nghiên cứu cung cấp đủ dữ liệu để biết rằng bạn thực sự có thể dạy sự sáng tạo. Tôi có thể biến bạn thành Leonardo da Vinci sau 18 giờ không? Tất nhiên là không, nhưng có một điểm hấp dẫn ở giữa nơi tôi có thể giúp ai đó trở nên sáng tạo hơn một cách đáng tin cậy trong một khoảng thời gian tương đối ngắn.<p><strong>Học kỹ năng này cực kỳ hấp dẫn trong môi trường kinh doanh</strong> </p><p>Bất kể xuất phát điểm của bạn là gì, những gì chúng ta biết về sự sáng tạo ngày nay có thể giúp bạn trở thành một người sáng tạo tốt hơn &ndash; đó rõ ràng là một tài sản rất quý giá đối với các doanh nhân cũng như các công ty lớn, những người phải liên tục đổi mới trong một môi trường cạnh tranh ngày càng gay gắt. Da Vinci không gặp vấn đề đó &ndash; anh ấy có thể nghĩ ra 15 bức tranh trong đời và bỏ qua nó trong 500 năm. Trong kinh doanh ngày nay, bạn cần đổi mới; bạn cần luôn mang lại giá trị lớn hơn so với đối thủ cạnh tranh bằng cách sử dụng các khả năng mà bạn có.</p><p><strong>Các CEO đã đánh giá tính sáng tạo là tài sản kinh doanh số 1 của họ<p>Có một báo cáo vào năm 2010 vẫn rất cập nhật và có liên quan bởi vì tôi không biết bất cứ điều gì giống như vậy kể từ đó. Nó được sản xuất bởi IBM và được gọi là Độ phức tạp điều hướng. Đó là một cuộc khảo sát lớn với 1.500 CEO và lãnh đạo công hàng đầu trên toàn cầu, và họ được hỏi những kỹ năng nào là quan trọng để định hướng thành công trong thế giới kinh doanh ngày nay. Cho đến nay, kỹ năng quan trọng nhất mà các nhà lãnh đạo này nhấn mạnh là sự sáng tạo. Họ không trình bày chi tiết ý nghĩa của sự sáng tạo đối với họ nhưng họ đồng ý rằng đó là kỹ năng quan trọng nhất cần có trong kinh doanh ngày nay<p><strong>Làm sáng tỏ ý nghĩa của sự sáng tạo là rất quan trọng</strong></p><p>&ldquo;I dành trọn một buổi vào đầu buổi học của tôi để nói về ý nghĩa thực sự của sáng tạo bởi vì hầu hết những người tham gia đều không hiểu được từ này. Chính xác thì chúng ta đang nói về cái gì? Sự thật là chúng ta vẫn chỉ mới bắt đầu hiểu cách thức hoạt động của khả năng sáng tạo của con người, nhưng một trong số ít điều chúng ta có thể đồng ý vào thời điểm này là sản phẩm sáng tạo là một thứ gì đó vừa mới lạ vừa hữu ích. Các nhà khoa học nhận thức đã đạt được những hiểu biết đáng tin cậy khác, đủ vững chắc để tích hợp vào việc giảng dạy của chúng tôi. Nhưng hãy nói rõ ràng: có phần giống như chúng ta đang bước vài bước chân vững chắc trên đỉnh một tảng băng trôi lớn và chúng ta không biết nó chìm sâu bao nhiêu dưới nước. Chúng tôi chỉ mới bắt đầu hiểu cách thức hoạt động của sự sáng tạo; nó vẫn là một trong số ít các chức năng nhận thức của con người vẫn thoát khỏi trí tuệ nhân tạo.</p><h4><strong>Chúng ta có thể học được nhiều điều từ việc phân tích cấu trúc của những người sáng tạo trong quá khứ để hiểu quy trình sáng tạo của họ</strong></h4><p> Một điều đôi khi chúng ta làm trong lớp là phân tích cấu trúc của những người sáng tạo nổi tiếng. Hãy xem trường hợp của Steve Jobs chẳng hạn. Tôi vô cùng ngưỡng mộ anh ấy, nhưng tôi khuyến khích những người tham gia đặt câu hỏi về một số huyền thoại về anh ấy. Anh ấy không chỉ cực kỳ sáng tạo mà còn cực kỳ may mắn và được đào tạo để có được những hiểu biết sâu sắc mà anh ấy cần. Anh ấy vừa đi, Hmm, màn hình cảm ứng sẽ là con đường phía trước; anh ấy biết màn hình cảm ứng sẽ hoạt động vì anh ấy có kiến thức sâu rộng về nhân chủng học, và anh ấy hiểu rằng một trong những thú vui lớn nhất của loài người, từ thời xa xưa của những người thượng cổ, là thực sự dùng tay trực tiếp để vẽ, như họ đã làm. trên các bức tranh hang động. Anh ấy có quan điểm khác với hầu hết những người trong ngành của anh ấy và điều đó chắc chắn mang lại lợi thế cho anh ấy.<h4><strong>Một cách để dạy tính sáng tạo là thông qua sự khiêu khích</strong></h4>p>Nhiều người tham gia đưa ra quan điểm của mình tay khi tôi hỏi họ ai là người quá sáng tạo, điều đó luôn thú vị khi xem hạ cánh trên nhóm&hellip; và sau đó chúng tôi tìm hiểu lý do tại sao điều đó lại xảy ra và tìm cách hiểu cách suy nghĩ đó bắt nguồn từ đâu. Có rất nhiều điều chúng ta có thể làm bằng cách khiến mọi người nhận ra rằng điều đang kìm hãm sự sáng tạo của họ thực sự là chính họ và cách họ bị ảnh hưởng bởi nền giáo dục và nói chung là môi trường mà họ lớn lên. trải nghiệm và tôi cố gắng khiến bạn cảm thấy ít nhất một lần trong khóa học &ndash; nhưng lý tưởng nhất là nhiều lần suy nghĩ của bạn đang bị ảnh hưởng bởi những điều tôi yêu cầu bạn làm khác với những gì bạn thường làm. Lấy ví dụ, động não, đây là điều mà hầu hết các công ty luôn làm mặc dù các nhà khoa học từ lâu đã biết rằng động não là một quá trình đưa ra ý tưởng ở mức trung bình dưới mức tối ưu.</p>h4><strong>Ý tưởng lấy bớt mọi thứ để thêm vào giá trị là một thứ khác giúp mở rộng tầm mắt</strong></h4><p>Một trong những kỹ thuật sáng tạo mà chúng tôi thực hiện liên quan đến việc nghĩ đến việc tạo ra thứ gì đó mới bằng cách loại bỏ giá trị khỏi thế giới hiện có. Càng đơn giản càng đẹp. Vì vậy, bạn lấy một chiếc điện thoại chẳng hạn, và bạn loại bỏ một tính năng thay vì thêm tính năng mới, đó là điều mà mọi kỹ sư làm để tạo sự khác biệt cho điện thoại của họ. Khi bạn xóa một tính năng, ban đầu có vẻ như bạn có một chiếc điện thoại kém giá trị hơn, nhưng sau đó bạn bắt đầu nghĩ xem sản phẩm có vẻ kém hơn đó là gì &ndash; khi được xem trong bối cảnh của một thế giới xã hội &ndash; có thể làm tốt hơn Vì vậy, trong ví dụ về điện thoại, có thể tôi loại bỏ khả năng gọi điện, và đột nhiên bạn có chiếc điện thoại đầu tiên dành cho trẻ em mà cha mẹ có thể gọi cho chúng, nhưng chúng có thể gọi ra ngoài (không biết những người khác hoặc lãng phí thời gian để gọi cho những người bạn nhỏ mà chúng vừa rời khỏi trường). ). Tất nhiên, đó là một thị trường ngách, nhưng cuối cùng bạn lại tạo ra giá trị vượt trội cho thị trường ngách đó.</p><h4><strong>Một cách khác để kết hợp mọi thứ là yêu cầu sinh viên kết hợp các khái niệm không liên quan</strong></h4 <p>Hai ngày trước, một cựu sinh viên đã liên hệ với tôi vì cô ấy đã thành lập một nhà trẻ dành cho nhiều thế hệ trong các viện dưỡng lão ở Pháp. Cô ấy hiểu rằng không có đủ chỗ trong các trung tâm chăm sóc ban ngày ở Pháp, nghĩa là hàng nghìn gia đình không có giải pháp cho con nhỏ của họ, trong khi mặt khác, bạn có hai triệu rưỡi người đang trên 85 và thậm chí nhiều hơn những người đã qua 65 tuổi, đã nghỉ hưu và ở một mình. Vì vậy, cô ấy có ý tưởng kết hợp cả hai theo cách tạo ra giá trị cho cả người già và người trẻ &ndash; đó là một trong những bài tập chúng tôi làm trong lớp; để tìm các không gian giá trị hiện có không tương quan và xem xét điều gì sẽ xảy ra nếu chúng ta buộc chúng khớp với nhau. Trong trường hợp học sinh của tôi, cô ấy đã tìm ra giải pháp cho phép thế hệ lớn tuổi có được vài giờ mỗi ngày tương tác với trẻ em, đọc sách cho chúng nghe, v.v., trong khi những đứa trẻ học về sự tôn trọng và đồng cảm &ndash; và nó giúp giải quyết vấn đề chăm sóc trẻ em. Cô ấy có 10 trung tâm mở trong năm nay và những trung tâm đã mở đã đầy. Tra cứu chúng trên Internet, công ty tên là Tom Josette. Đó là một ví dụ rõ ràng rằng bạn cần phải phát minh lại bánh xe để tạo ra giá trị ghê gớm. Phần lớn sự sáng tạo bắt nguồn từ việc lấy những thứ hiện có và suy nghĩ lại về các khối xây dựng.''', CAST(N'2022-03-23' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (26, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/11/HSE-blog-header_Georgy-Pashchenko.png', N'Sử dụng dữ liệu trong việc ra quyết định tài chính', N'N''Đây là câu thần chú mà chuyên gia sáng tạo, Giáo sư Anne-Laure Sellier đưa vào thế giới kinh doanh và cả trong lớp học. Khóa học Thúc đẩy Sáng tạo của cô ấy tại HEC Paris là một trong những khóa học phổ biến nhất trên chương trình Thạc sĩ Khởi nghiệp và Đổi mới trực tuyến của trường, đồng thời giúp những người tham gia khai thác những sức mạnh tiềm ẩn mà họ chưa từng biết đến. Hãy quên đi những món quà từ các vị thần, tất cả chúng ta đều có khả năng suy nghĩ sáng tạo<p> Một trong những lý do mà hiện tại chúng tôi chỉ dạy sáng tạo và HEC Paris là một trong số ít các trường kinh doanh trên thế giới làm như vậy là trong thời gian dài nhất, có một niềm tin rộng rãi rằng nó có thể được dạy một cách đơn giản. Trong phần lớn lịch sử, loài người chúng ta tin rằng sự sáng tạo là do (các) Chúa ban tặng, và bạn không thể làm gì nhiều về điều đó. Bây giờ chúng tôi biết điều này ít nhất là một phần vô nghĩa: nghiên cứu cung cấp đủ dữ liệu để biết rằng bạn thực sự có thể dạy sự sáng tạo. Tôi có thể biến bạn thành Leonardo da Vinci sau 18 giờ không? Tất nhiên là không, nhưng có một điểm hấp dẫn ở giữa nơi tôi có thể giúp ai đó sáng tạo hơn &amp;ndash; đáng tin cậy &amp;ndash; trong một khoảng thời gian tương đối nhỏ. Học kỹ năng này cực kỳ hấp dẫn trong môi trường kinh doanh. Dù xuất phát điểm của bạn là gì, những gì chúng ta biết về sự sáng tạo ngày nay có thể giúp bạn trở thành một người sáng tạo tốt hơn, đây rõ ràng là một tài sản vô cùng quý giá đối với các doanh nhân cũng như các công ty lớn, những người phải liên tục đổi mới trong một môi trường ngày càng cạnh tranh. Da Vinci không gặp vấn đề đó; anh ấy có thể nghĩ ra 15 bức tranh trong đời và bỏ qua nó trong 500 năm. Trong kinh doanh ngày nay, bạn cần đổi mới; bạn cần luôn cung cấp giá trị lớn hơn đối thủ cạnh tranh bằng cách sử dụng các khả năng bạn có. Các CEO đã đánh giá sự sáng tạo là tài sản kinh doanh số 1 của họ. Có một báo cáo vào năm 2010 vẫn còn rất cập nhật và phù hợp vì tôi không biết về bất kỳ điều gì tương tự kể từ đó. Nó được sản xuất bởi IBM và được gọi là Độ phức tạp điều hướng. Đó là một cuộc khảo sát lớn với 1.500 CEO và lãnh đạo công hàng đầu trên toàn cầu, và họ được hỏi những kỹ năng nào là quan trọng để định hướng thành công trong thế giới kinh doanh ngày nay. Cho đến nay, kỹ năng quan trọng nhất mà các nhà lãnh đạo này nhấn mạnh là sự sáng tạo. Họ không nêu chi tiết sáng tạo có ý nghĩa gì đối với họ nhưng họ đồng ý rằng đó là kỹ năng quan trọng nhất cần có trong kinh doanh ngày nay. Làm sáng tỏ ý nghĩa của sự sáng tạo là rất quan trọng. Tôi dành toàn bộ thời gian vào đầu buổi học để nói về ý nghĩa thực sự của sáng tạo bởi vì bản thân từ này khiến hầu hết những người tham gia không thể hiểu được. Chính xác thì chúng ta đang nói về cái gì? Sự thật là chúng ta vẫn chỉ mới bắt đầu hiểu cách thức hoạt động của khả năng sáng tạo của con người, nhưng một trong số ít điều chúng ta có thể đồng ý vào thời điểm này là sản phẩm sáng tạo là một thứ gì đó vừa mới lạ vừa hữu ích. Các nhà khoa học nhận thức đã đạt được những hiểu biết đáng tin cậy khác, đủ vững chắc để tích hợp vào việc giảng dạy của chúng tôi. Nhưng hãy nói rõ: nó giống như chúng ta đang bước vài bước chân vững chắc trên đỉnh một tảng băng trôi lớn và chúng ta không biết nó chìm sâu bao nhiêu dưới nước. Chúng tôi chỉ mới bắt đầu hiểu cách thức hoạt động của sự sáng tạo; nó vẫn là một trong số ít các chức năng nhận thức của con người vẫn thoát khỏi trí tuệ nhân tạo. Chúng ta có thể học được nhiều điều từ việc phân tích cấu trúc của những người sáng tạo trong quá khứ để hiểu quá trình sáng tạo của họ. Một điều đôi khi chúng tôi làm trong lớp là phân tích cấu trúc của những người sáng tạo nổi tiếng. Hãy xem trường hợp của Steve Jobs chẳng hạn. Tôi vô cùng ngưỡng mộ anh ấy, nhưng tôi khuyến khích những người tham gia đặt câu hỏi về một số huyền thoại về anh ấy. Anh ấy không chỉ cực kỳ sáng tạo mà còn cực kỳ may mắn và được đào tạo để có được những hiểu biết sâu sắc mà anh ấy cần. Anh ấy vừa đi, Hmm, màn hình cảm ứng sẽ là con đường phía trước; anh ấy biết màn hình cảm ứng sẽ hoạt động vì anh ấy có kiến thức sâu rộng về nhân chủng học, và anh ấy hiểu rằng một trong những thú vui lớn nhất của loài người, từ thời xa xưa của những người thượng cổ, là thực sự dùng tay trực tiếp để vẽ, như họ đã làm. trên các bức tranh hang động. Anh ấy có một quan điểm khác với hầu hết những người trong ngành của anh ấy, và điều đó chắc chắn mang lại cho anh ấy một lợi thế. Một cách để dạy sự sáng tạo là thông qua. Nhiều người tham gia đã giơ tay khi tôi hỏi họ ai là người sáng tạo, điều luôn thú vị khi theo dõi nhóm và sau đó chúng tôi tìm hiểu lý do tại sao điều đó lại xảy ra và tìm cách hiểu lối suy nghĩ đó bắt nguồn từ đâu. Có rất nhiều điều chúng ta có thể làm bằng cách khiến mọi người nhận ra rằng điều đang kìm hãm sự sáng tạo của họ thực sự là chính họ và cách họ bị ảnh hưởng bởi nền giáo dục và nói chung là môi trường mà họ lớn lên. và tôi cố gắng làm cho bạn cảm thấy ít nhất một lần trong khóa học nhưng lý tưởng nhất là vài lần rằng suy nghĩ của bạn đang bị ảnh hưởng bởi những điều tôi khiến bạn làm khác với những gì bạn thường làm. Lấy ví dụ, động não, đó là điều mà hầu hết các công ty luôn làm mặc dù các nhà khoa học từ lâu đã biết rằng động não là một quá trình đưa ra ý tưởng ở mức trung bình. Ý tưởng lấy đi mọi thứ để tăng thêm giá trị là một điều thú vị khác. Một trong những kỹ thuật sáng tạo mà chúng tôi thực hiện liên quan đến việc suy nghĩ về việc tạo ra thứ gì đó mới bằng cách loại bỏ giá trị khỏi thế giới hiện có. Càng đơn giản càng đẹp. Vì vậy, bạn lấy một chiếc điện thoại chẳng hạn, và bạn loại bỏ một tính năng thay vì thêm tính năng mới, đó là điều mà mọi kỹ sư làm để tạo sự khác biệt cho điện thoại của họ. Khi bạn loại bỏ một tính năng, thoạt đầu có vẻ như bạn đang sở hữu một chiếc điện thoại kém giá trị hơn, nhưng sau đó bạn bắt đầu nghĩ xem sản phẩm có vẻ kém chất lượng đó khi nhìn trong bối cảnh của một thế giới xã hội có thể làm tốt hơn điều gì. Vì vậy, trong ví dụ về điện thoại, có thể tôi loại bỏ khả năng gọi điện, và đột nhiên bạn có chiếc điện thoại đầu tiên dành cho trẻ em mà cha mẹ có thể gọi cho chúng, nhưng chúng có thể gọi ra ngoài (không biết những người khác hoặc lãng phí thời gian để gọi cho những người bạn nhỏ mà chúng vừa rời khỏi trường). ). Tất nhiên là một thị trường ngách, nhưng cuối cùng bạn lại tạo ra giá trị vượt trội cho thị trường ngách đó. Một cách khác để trộn lẫn mọi thứ là khiến học sinh trộn lẫn các khái niệm không liên quan. Hai ngày trước, một cựu sinh viên đã liên hệ với tôi vì cô ấy đã thành lập một nhà giữ trẻ liên thế hệ cho trẻ em trong các viện dưỡng lão ở Pháp. Cô ấy hiểu rằng không có đủ chỗ trong các trung tâm chăm sóc ban ngày ở Pháp, nghĩa là hàng nghìn gia đình không có giải pháp cho con nhỏ của họ, trong khi mặt khác, bạn có hai triệu rưỡi người đang trên 85 tuổi và hơn nữa là trên 65 tuổi, đã nghỉ hưu và ở một mình. Vì vậy, cô ấy có ý tưởng kết hợp cả hai theo cách tạo ra giá trị cho cả người già và người trẻ, đó là một trong những bài tập chúng tôi làm trong lớp; để tìm các không gian giá trị hiện có không tương quan và xem xét điều gì sẽ xảy ra nếu chúng ta buộc chúng khớp với nhau. Trong trường hợp học sinh của tôi, cô ấy đã tìm ra giải pháp cho phép thế hệ lớn tuổi có được vài giờ mỗi ngày tương tác với trẻ em, đọc sách cho chúng nghe, v.v., trong khi những đứa trẻ học về sự tôn trọng và đồng cảm &amp;ndash; và nó giúp giải quyết vấn đề chăm sóc trẻ em. Cô ấy có 10 trung tâm mở trong năm nay và những trung tâm đã mở đã đầy. Tìm kiếm chúng trên Internet, công ty được gọi là Đó là một ví dụ rõ ràng rằng bạn không cần phải phát minh lại bánh xe để tạo ra giá trị ghê gớm. Phần lớn sự sáng tạo bắt nguồn từ việc lấy những thứ hiện có và suy nghĩ lại về các khối xây dựng''', CAST(N'2022-03-04' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (27, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/03/MCR-2021-545-QPR-Blog-Post-Header-Image.jpeg', N'Q1 2021 Phát hành sản phẩm hàng quý của Coursera dành cho doanh nghiệp''', N'N''Tự động hóa và suy thoái do COVID-19 đã tạo ra một kịch bản gián đoạn kép cho người lao động, kịch bản này sẽ biến đổi mạnh mẽ các nhiệm vụ, công việc và kỹ năng trong tương lai gần. Trên thực tế, theo Diễn đàn Kinh tế Thế giới</a>, 85 triệu việc làm sẽ bị thay thế vào năm 2025 và 47% kỹ năng cốt lõi của người lao động sẽ thay đổi trong thời gian này. Để duy trì tính cạnh tranh và thúc đẩy đổi mới, các nhà lãnh đạo doanh nghiệp đang nhận ra nhu cầu thu hẹp khoảng cách về kỹ năng, đồng thời đào tạo lại kỹ năng và nâng cao kỹ năng cho đội ngũ của họ.<p>Chúng ta đang ở trong một thế giới việc làm mới, nơi các kỹ năng mới là tiền tệ quý giá. Để giúp các tổ chức trang bị tốt hơn cho đội ngũ của họ trong bối cảnh thay đổi nhanh chóng này, chúng tôi đã đi tiên phong trong trải nghiệm sản phẩm ưu tiên kỹ năng, cho phép các tổ chức triển khai phát triển kỹ năng có mục tiêu bằng các công cụ giúp đơn giản hóa việc so khớp nội dung, thúc đẩy mức độ tương tác và làm rõ ROI khi học. Chúng tôi đã ra mắt Học viện và Bộ kỹ năng xác định mức độ thành thạo kỹ năng mục tiêu cần thiết cho các vai trò công việc cụ thể và cung cấp các lộ trình học tập được cá nhân hóa để phát triển các mức độ thành thạo kỹ năng đó. Chúng tôi cũng đã cập nhật Bảng điều khiển phát triển kỹ năng của mình để cung cấp các chương trình học phù hợp với các nhóm người học cụ thể, đo lường và theo dõi tiến độ phát triển kỹ năng cũng như đánh giá mức độ thành thạo kỹ năng của người học.<p>Tuần trước, nhóm Quản lý sản phẩm của chúng tôi đã tổ chức một hội thảo trên web để thảo luận về các vấn đề những tính năng mới này, cũng như lộ trình năm 2021 của chúng tôi, hoàn chỉnh với các bản cập nhật thậm chí còn thú vị hơn sẽ được phát hành vào cuối năm nay. Bạn có thể theo dõi hội thảo trên web theo yêu cầu tại đây. Không chần chừ gì nữa, hãy bắt đầu ngay.</p><p><strong>Bảng thông tin phát triển kỹ năng</strong></p><p>Vào tháng 10 năm 2019, nhóm Coursera đã ra mắt Bảng thông tin phát triển kỹ năng (SDD), cung cấp một cái nhìn chưa từng có về các kỹ năng theo dõi khả năng đo lường các kỹ năng thực tế đã phát triển đến các mức độ thành thạo cụ thể. Kể từ đó, nhóm Coursera đã cải thiện cách các kỹ năng được gắn thẻ, đo lường và thể hiện.</p><p>Bản cập nhật phiên bản mới nhất cho Bảng điều khiển phát triển kỹ năng liên quan đến việc giới thiệu các kỹ năng mới về giao tiếp, tiếp thị, tài chính, nhân sự, nguyên tắc công nghệ, công cụ công nghệ, toán học và thống kê. Bạn sẽ có thể thực hiện những việc sau:<li>Đo lường sự phát triển kỹ năng trên các lĩnh vực kinh doanh, công nghệ và dữ liệu với 66 lĩnh vực kỹ năng mới cho tổng số 101 kỹ năng có thể theo dõi</li><li>Tiếp tục tìm hiểu tác động của việc nâng cao kỹ năng kỹ thuật các chương trình thông qua việc giới thiệu các kỹ năng cụ thể và theo dõi công cụ trong các lĩnh vực khoa học dữ liệu và công nghệ, từ Khoa học máy tính, Kỹ thuật bảo mật và DevOps đến Python, AWS, SQL và HTML/CSS</li><li>Nắm bắt xu hướng học tập trong toàn tổ chức với trang tóm tắt kỹ năng bao gồm các chế độ xem phân bổ mức độ thông thạo kỹ năng và thời gian để thành thạo<li>Phân tích các chỉ số kỹ năng cụ thể, bao gồm nội dung nào phát triển kỹ năng nào, thông qua bảng điều khiển Phân tích kỹ năng mới của chúng tôi</li><li>Báo cáo về ROI của phần mềm các chương trình kỹ năng có bật tính năng theo dõi dành cho Lãnh đạo, Chiến lược và Hoạt động, Tâm lý Kinh doanh, Giao tiếp, v.v.</li>

<p>Việc giới thiệu các kỹ năng có thể theo dõi này mở đường cho các sản phẩm ưu tiên kỹ năng bổ sung, bao gồm Học viện SkillSets cũng như chẩn đoán và báo cáo chi tiết hơn để quản lý chương trình.</p><p><strong>SkillSets và Học viện</strong </p><p>SkillSets là chìa khóa trao tay, các chương trình học tập dựa trên công việc giúp phát triển mức độ thành thạo kỹ năng mục tiêu với các khóa học đẳng cấp thế giới và Dự án có hướng dẫn thực hành. SkillSets giúp bạn dễ dàng hiểu được kết quả phát triển kỹ năng của các chương trình nâng cao kỹ năng kỹ thuật và định lượng tác động của các chương trình kiến thức kỹ thuật số và dữ liệu. Với SkillSets, kỹ năng là ưu tiên hàng đầu. Nhân viên của bạn sẽ thấy các đề xuất nội dung giúp họ lên cấp độ tiếp theo và họ sẽ không bị đè nặng bởi nội dung họ cần học. Chọn từ hơn 100 Bộ kỹ năng bao gồm các công việc có tác động cao như kiến trúc sư đám mây, nhà khoa học dữ liệu, kỹ sư máy học và các kỹ năng theo yêu cầu như điều khiển dữ liệu, thành thạo Python và chuyên môn về Tensorflow, v.v. hoặc triển khai Bộ kỹ năng trên toàn bộ công việc của bạn tổ chức với Học viện, giải pháp phát triển kỹ năng hoàn chỉnh của chúng tôi cho các khả năng theo yêu cầu. Có được các kỹ năng bạn cần trong tương lai, theo vai trò công việc với SkillSets</strong></p><p>Bớt lo lắng về bối cảnh kinh doanh không ngừng phát triển có ý nghĩa như thế nào đối với nhu cầu kỹ năng tổ chức của bạn. Bộ kỹ năng hiển thị các khóa học Coursera và Dự án có hướng dẫn phù hợp nhất để phát triển mức độ thành thạo kỹ năng mục tiêu cho các công việc cụ thể.</p><li>Chọn từ hơn 100 Bộ kỹ năng giúp phát triển các kỹ năng quan trọng và thường xuyên cho các công việc quan trọng trong tổ chức của bạn</li><li> Cung cấp kỹ năng học tập đầu tiên cho hơn 40 công việc, bao gồm nhà phân tích kinh doanh, nhà khoa học dữ liệu, nhà thiết kế, nhà phân tích tài chính, chuyên gia nhân sự, chuyên gia CNTT, kỹ sư máy học, nhà tiếp thị, chuyên gia vận hành, quản lý sản phẩm, v.v.</li><li>Phát triển hơn 50 loại kỹ năng thành thạo, từ sử dụng dữ liệu và nhận biết AI đến thành thạo TensorFlow và chuyên về Spark</li><p><strong>Triển khai các chương trình học tập được nhắm mục tiêu một cách dễ dàng</strong<p>Mỗi tính năng của Bộ kỹ năng nội dung đẳng cấp thế giới được phân phối thông qua các quy trình tuyển chọn do AI cung cấp đã được các chuyên gia đánh giá, vì vậy, bạn có thể dành ít thời gian hơn để lo lắng về việc ánh xạ nội dung tới người học và có nhiều thời gian hơn cho chiến lược học tập tổng thể cũng như kế hoạch triển khai.</p><li>Định cấu hình Bộ kỹ năng để phù hợp với chức danh công việc trong tổ chức của bạn</li><li>Bộ kỹ năng mà bạn tạo hoặc định cấu hình sẽ được gắn thương hiệu bằng biểu trưng của tổ chức bạn</li><p><strong>Theo dõi và đo lường các kỹ năng được phát triển </strong></ p><p>SkillSets giúp bạn dễ dàng hiểu được kết quả phát triển kỹ năng của các chương trình nâng cao kỹ năng kỹ thuật và thậm chí định lượng tác động của dữ liệu và các chương trình kiến thức kỹ thuật số.</p><li>Xem có bao nhiêu người học đang tiến bộ trong SkillSet</p><li> li><li>Theo dõi tiến trình tập thể của người học đối với Bộ kỹ năng đó&nbsp<li>Xem người học nào đã đạt được mục tiêu kỹ năng của họ</li><p><strong>Đẩy nhanh quá trình tiếp thu kỹ năng bằng các đề xuất được cá nhân hóa</strong></p><p> Với SkillSets, kỹ năng là ưu tiên hàng đầu. Với các đề xuất được cá nhân hóa phù hợp với cấp độ kỹ năng hiện tại của họ, nhân viên của bạn sẽ thấy các đề xuất nội dung giúp họ đạt được cấp độ tiếp theo và họ sẽ không bị đè nặng bởi nội dung mà họ không cần phải học. <li>Các đề xuất nội dung động giúp người học đi từ cấp độ kỹ năng hiện tại đến mức độ thông thạo kỹ năng mục tiêu.</li><li>Người học chỉ thực hiện những gì họ cần để đạt được các mục tiêu kỹ năng đó; không bắt buộc phải hoàn thành khóa học để hoàn thành Bộ kỹ năng</li><li>Người học có thể theo dõi tiến trình hướng tới các mục tiêu kỹ năng của họ</li><p><strong>Mở cửa đón nhân tài</strong></p><p>Cảm thấy tự tin tuyển dụng nhanh hơn và hiệu quả hơn từ các nhóm nhân tài đa dạng khi biết rằng với SkillSets, bạn có thể phát triển và giữ chân nhân tài quan trọng trong nội bộ.</p><li>Việc tuyển dụng các nhà khoa học dữ liệu và kỹ sư dữ liệu có thể rất khó khăn. Chúng tôi tin rằng mình sẽ [thành công hơn] nếu phát triển những người hoạt động hiệu quả hàng đầu hiện có thành các chuyên gia dữ liệu. Pedro Uria-Recio, Trưởng bộ phận Phân tích Axiata</li><li>Công ty nghiên cứu IDC nhận thấy rằng khách hàng của Coursera nhận thấy tỷ lệ giữ chân +38% và khả năng di chuyển của nhân viên +20%</li><li>Công ty nghiên cứu IDC nhận thấy rằng khách hàng của Coursera có thể đào tạo +94% người học nhiều hơn</li><p>Với những tính năng mới này, chúng tôi hy vọng sẽ cung cấp cho bạn những khả năng cần thiết để nâng cao chương trình học tập của bạn và mang lại kết quả học tập tốt hơn. Hãy chắc chắn xem phát lại hội thảo trên web của chúng tôi để biết thêm thông tin (và bản trình diễn) về tất cả các tính năng mới này. Chúc bạn học tập vui vẻ!</p>''', CAST(N'2022-07-18' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (28, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/09/Leadership-Academy-blog-header.png', N'Lãnh đạo không giới hạn: Suy nghĩ lại về khả năng lãnh đạo trong thời đại đột phá''', N'N''<p>Lãnh đạo trong một thế giới không thể đoán trước, phụ thuộc lẫn nhau và thay đổi nhanh chóng có ý nghĩa gì? Làm cách nào để các nhà lãnh đạo có thể trau dồi khả năng phục hồi, sự nhanh nhẹn và sự gan dạ cần thiết để thành công, cả về mặt cá nhân và trong toàn tổ chức của họ, khi các quy tắc cứng rắn và nhanh chóng không được áp dụng<p>Trong hội thảo trực tuyến gần đây của anh ấy cho Coursera, Lãnh đạo không có giới hạn: Điều hướng qua sự không chắc chắn và Sự gián đoạn Mike Barger, Trợ lý Giáo sư tại Trường Kinh doanh Ross của Đại học Michigan, giải quyết những câu hỏi quan trọng này. Cùng thời điểm ra mắt Học viện Lãnh đạo Coursera</a>, bài nói chuyện của Berger làm sáng tỏ cách các nhà lãnh đạo có thể phát triển trong môi trường VUCA hay thay đổi, không chắc chắn, phức tạp và không rõ ràng.</strong></p><p><strong.</strong></p><p><strong >Chiến thắng trong môi trường VUCA</strong></p><p>Khuôn khổ VUCA được quân đội Hoa Kỳ phát triển vào cuối những năm 1980 để mô tả một thực tế mới: một thực tế được định hình bởi các động lực phức tạp, luôn thay đổi, thách thức những hiểu biết tuyến tính về nguyên nhân và tác dụng. Dựa trên 13 năm phục vụ trong Hải quân Hoa Kỳ và nhiệm kỳ của ông với tư cách là giám đốc điều hành sáng lập tại JetBlue Airways, Barger tiết lộ cách áp dụng các bài học từ chiến lược quân sự vào bối cảnh kinh doanh. Khi làm như vậy, ông trao quyền cho các nhà lãnh đạo dự đoán các mối đe dọa tiềm tàng, thích ứng với các sự kiện bất ngờ và quản lý khủng hoảng khi chúng phát sinh.</p><p>Cho đến gần đây, giới kinh doanh chính thống vẫn cho rằng các nhà lãnh đạo chỉ nên tránh khủng hoảng. Tuy nhiên, như đại dịch vi-rút corona đã cho thấy, những gián đoạn quan trọng trong nhiệm vụ có thể xuất hiện đột ngột và gia tăng với tốc độ cấp số nhân. Barger lập luận rằng trong thế giới VUCA ngày nay của chúng ta, khủng hoảng không phải là vấn đề khi nào mà là vấn đề. Thay vì ngây thơ cho rằng có thể ngăn chặn được các kịch bản bất lợi, ngày nay các doanh nghiệp cần chấp nhận tính tất yếu của khủng hoảng. Bằng cách áp dụng tư duy chuẩn bị sẵn sàng, các nhà lãnh đạo có thể phát triển các công cụ, năng lực và quy trình thiết yếu giúp họ giải quyết mọi khủng hoảng khi nó xảy ra.</p><p><strong>Ba sự thật phổ quát về khả năng lãnh đạo trong khủng hoảng</strong></ p><p>Tập hợp những bài học từ kinh nghiệm chuyên môn và nghiên cứu học thuật của mình, Barger xác định ba chân lý phổ quát về khả năng lãnh đạo trong khủng hoảng:</p><ol><li>Trong khủng hoảng, mọi người tìm kiếm bằng chứng hữu hình về khả năng lãnh đạo.</li> ><li>Khi họ nhìn vào, mọi người muốn và cần các nhà lãnh đạo tin tưởng<li>Mọi người không mong đợi các nhà lãnh đạo của họ phải hoàn hảo hay toàn trí<p>Thay vì bị ám ảnh bởi quyết định hoàn hảo, Barger khẳng định, các nhà lãnh đạo phải học cách đưa ra lựa chọn liên tục, gia tăng khi đối mặt với dữ liệu không thuyết phục. Bằng cách chứng tỏ khả năng phản ứng một cách điềm tĩnh nhưng mạnh mẽ trước các tình huống đang diễn ra, các nhà lãnh đạo có thể tạo dựng niềm tin và sự tin cậy của nhiều cá nhân và nhóm mà doanh nghiệp của họ tác động đến.</p>

<p>Chống lại sự chung chung, Barger khuyến khích các nhà lãnh đạo nêu rõ các bên liên quan khác nhau trong doanh nghiệp của họ, từ nhân viên, khách hàng và nhóm điều hành đến các nhà đầu tư, thành viên cộng đồng và giới truyền thông.&nbsp;<strong>Ông giải thích, mỗi bên liên quan đều cần được hiểu một cách toàn diện và theo cách hiểu riêng của họ.&nbsp;</strong>Bằng cách nuôi dưỡng sự đánh giá sâu sắc về nhu cầu, kỳ vọng và đề xuất giá trị riêng của mỗi bên, các nhà lãnh đạo doanh nghiệp có thể tương tác với họ hiệu quả hơn trong những thời điểm khủng hoảng, giao dịch với nhau kế hoạch -size-fits-all cho một loạt các phương pháp tiếp cận được nhắm mục tiêu.</p><p<strong>Các yêu cầu chính đối với các nhà lãnh đạo: Hãy, biết, làm</strong></p><p>Để làm rõ lập luận của mình, Barger mượn khuôn khổ thứ hai từ quân đội Hoa Kỳ, &ldquo;Be, Know, Do:</p><ol><li>Be: Hiển thị, Quan tâm, Đồng cảm, Bình tĩnh và Quyết đoán.</li><li>Biết: Tầm nhìn , Giá trị, Nguyên tắc hướng dẫn.</li><li>Làm: Giao tiếp, Đưa ra quyết định với lượng thông tin hạn chế, Chịu trách nhiệm và Thu hút các bên liên quan của bạn.</li></ol><p>Hãy chỉ đạo các nhà lãnh đạo thể hiện quyết tâm và tính cấp bách để khắc phục những kết quả không mong muốn trong khi vẫn hài hòa với các bên liên quan của họ&rsquo; lo lắng và quan tâm khác nhau. Biết trước sự cần thiết của các nhà lãnh đạo để tiếp thu các giá trị của tổ chức của họ. Trong những thời điểm căng thẳng, những giá trị này đóng vai trò là Ngôi sao phương Bắc, cung cấp nền tảng vững chắc để đưa ra quyết định, bất kể bản chất cụ thể của cuộc khủng hoảng hiện tại. Làm nhắc nhở các nhà lãnh đạo hành động ngay cả khi những ẩn số vẫn tồn tại. Bằng cách nhận trách nhiệm hướng dẫn tổ chức và tất cả các bên liên quan của tổ chức vượt qua các giai đoạn thử thách, những người cấp cao hơn có thể dẫn dắt bằng tấm gương và củng cố vị trí của họ như là nguồn thông tin có thẩm quyền trong một tình huống phát triển.</p><p><strong>Tạo một Kế hoạch hành động</strong></p><p>Được trang bị các khuôn khổ này, các nhà lãnh đạo có thể thực hiện các bước cụ thể nào để sẵn sàng cho cả bản thân và tổ chức của họ? Barger khuyến khích họ bắt đầu với một cuộc khủng hoảng giả định, chẳng hạn như thay đổi thị trường, vi phạm dữ liệu, lỗi sản phẩm, sai lầm trong thực thi hoặc thay đổi lãnh đạo. Sau khi xác định mối đe dọa, các nhà lãnh đạo có thể cộng tác với các nhóm của họ để:p><li>Suy nghĩ về cách kịch bản sẽ tác động khác nhau đến từng bên liên quan của họ.</li><li>Lập một kế hoạch hành động từng bước để giao tiếp với và thu hút các bên liên quan của họ, xem xét các loại, phương thức và tần suất gửi thông điệp phù hợp nhất với mong đợi, nhu cầu và lợi ích của từng cá nhân hoặc nhóm.</li><li>Sử dụng kế hoạch này để đánh giá vai trò, trách nhiệm của tổ chức, và các thủ tục hiện có và chủ động giải quyết các lỗ hổng trong đó.&nbsp</li></ol><p>Bằng cách tiến hành chạy thử, các nhà lãnh đạo có thể vận hành các tư duy và quy trình cần thiết để không chỉ vượt qua thời tiết mà còn phát triển vượt qua khủng hoảng, bất kể không quen thuộc hoặc chưa từng có.</p><p>Tìm hiểu sâu hơn về những thông tin chi tiết này bằng cách xem hội thảo trên web được ghi lại, &ldquo;Lãnh đạo không giới hạn: Điều hướng qua sự không chắc chắn và gián đoạn.&rdquo;</a></p>', CAST(N'2022-04-03' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (29, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/ID11835_EmergeBlogPost_ImageCrop_Post2_OPTION2_1200x628.jpg', N'N''5 cách nhà tuyển dụng có thể thúc đẩy phát triển kỹ năng cho lực lượng lao động của tương lai''', N'N''<p>Lãnh đạo trong một thế giới không thể đoán trước, phụ thuộc lẫn nhau và thay đổi nhanh chóng có ý nghĩa gì? Làm cách nào để các nhà lãnh đạo có thể trau dồi khả năng phục hồi, sự nhanh nhẹn và sự gan dạ cần thiết để thành công, cả về mặt cá nhân và trong toàn tổ chức của họ, khi các quy tắc cứng nhắc và nhanh chóng không được áp dụng<p>Trong hội thảo trực tuyến gần đây của anh ấy cho Coursera, Lãnh đạo không có giới hạn: Điều hướng qua sự không chắc chắn và Sự gián đoạn, Mike Barger, Trợ lý Giáo sư tại Trường Kinh doanh Ross của Đại học Michigan, giải quyết những câu hỏi quan trọng này. Cùng thời điểm ra mắt Học viện Lãnh đạo Coursera, bài nói chuyện của Berger làm sáng tỏ cách các nhà lãnh đạo có thể phát triển trong môi trường đầy biến động, không chắc chắn, phức tạp và không rõ ràng, gọi tắt là VUCA.</strong></p><p><strong>Chiến thắng trong một Môi trường VUCA</strong></p><p>Khuôn khổ VUCA được quân đội Hoa Kỳ phát triển vào cuối những năm 1980 để mô tả một thực tế mới: một thực tế được định hình bởi các động lực phức tạp, thay đổi bất chấp những hiểu biết tuyến tính về nguyên nhân và kết quả. Dựa trên 13 năm phục vụ trong Hải quân Hoa Kỳ và nhiệm kỳ của ông với tư cách là giám đốc điều hành sáng lập tại JetBlue Airways, Barger tiết lộ cách áp dụng các bài học từ chiến lược quân sự vào bối cảnh kinh doanh. Khi làm như vậy, ông trao quyền cho các nhà lãnh đạo dự đoán các mối đe dọa tiềm tàng, thích ứng với các sự kiện bất ngờ và quản lý khủng hoảng khi chúng phát sinh.</p><p>Cho đến gần đây, giới kinh doanh chính thống vẫn cho rằng các nhà lãnh đạo chỉ nên tránh khủng hoảng. Tuy nhiên, như đại dịch vi-rút corona đã cho thấy, những gián đoạn quan trọng trong nhiệm vụ có thể xuất hiện đột ngột và gia tăng với tốc độ cấp số nhân. Barger lập luận rằng trong thế giới VUCA ngày nay của chúng ta, khủng hoảng không phải là vấn đề xảy ra mà là khi nào xảy ra. Thay vì ngây thơ cho rằng có thể ngăn chặn được các kịch bản bất lợi, ngày nay các doanh nghiệp cần chấp nhận tính tất yếu của khủng hoảng. Bằng cách áp dụng tư duy chuẩn bị sẵn sàng, các nhà lãnh đạo có thể phát triển các công cụ, năng lực và quy trình thiết yếu giúp họ giải quyết mọi khủng hoảng khi nó xảy ra.</p><p><strong>Ba sự thật phổ quát về khả năng lãnh đạo trong khủng hoảng</strong></ p><p>Tập hợp những bài học từ kinh nghiệm chuyên môn và nghiên cứu học thuật của mình, Barger xác định ba sự thật phổ biến về khả năng lãnh đạo trong khủng hoảng:</p><li>Trong khủng hoảng, mọi người tìm kiếm bằng chứng hữu hình về khả năng lãnh đạo.</li><li >Khi họ nhìn vào, mọi người muốn và cần các nhà lãnh đạo tin tưởng.</li><li>Mọi người không mong đợi các nhà lãnh đạo của họ là người hoàn hảo hoặc toàn tri.</li><p>Thay vì bị ám ảnh bởi một quyết định hoàn hảo, Barger khẳng định, các nhà lãnh đạo phải học cách đưa ra các lựa chọn liên tục, gia tăng khi đối mặt với dữ liệu không thuyết phục. Bằng cách chứng minh khả năng phản ứng một cách điềm tĩnh nhưng mạnh mẽ trước các tình huống đang diễn ra, các nhà lãnh đạo có thể tạo dựng niềm tin và sự tin cậy của nhiều cá nhân và nhóm mà doanh nghiệp của họ tác động đến.</p><p>Chống lại sự chung chung, Barger khuyến khích các nhà lãnh đạo nêu rõ các bên liên quan khác nhau trong doanh nghiệp của họ, từ nhân viên, khách hàng và nhóm điều hành đến nhà đầu tư, thành viên cộng đồng và giới truyền thông. Ông giải thích, mỗi bên liên quan cần được hiểu một cách tổng thể và theo cách hiểu của riêng họ. Bằng cách nuôi dưỡng sự đánh giá sâu sắc về nhu cầu, kỳ vọng và đề xuất giá trị riêng của mỗi bên, các nhà lãnh đạo doanh nghiệp có thể thu hút họ hiệu quả hơn trong những thời điểm khủng hoảng, áp dụng kế hoạch một kích cỡ phù hợp với tất cả cho một loạt các phương pháp được nhắm mục tiêu.</p> <p><strong>Các Mệnh lệnh Chính dành cho Nhà lãnh đạo: Hãy, Biết, Làm</strong></p><p>Để làm rõ lập luận của mình, Barger mượn một khuôn khổ thứ hai từ quân đội Hoa Kỳ, Hãy, Biết, Làm </p ><li>Hãy: Hiển thị, Quan tâm, Đồng cảm, Bình tĩnh và Quyết đoán.</li><li>Biết: Tầm nhìn, Giá trị, Nguyên tắc chỉ đạo.</li><li>Thực hiện: Giao tiếp, Đưa ra quyết định với thông tin hạn chế, Chịu trách nhiệm và Thu hút sự tham gia của các bên liên quan.</li></ol><p> Chỉ đạo các nhà lãnh đạo thể hiện quyết tâm và tính khẩn cấp để khắc phục những kết quả không mong muốn trong khi vẫn hòa hợp với những lo lắng và mối quan tâm đa dạng của các bên liên quan. Biết trước sự cần thiết của các nhà lãnh đạo để tiếp thu các giá trị của tổ chức của họ. Trong những thời điểm căng thẳng, những giá trị này đóng vai trò là Ngôi sao phương Bắc, cung cấp nền tảng vững chắc để đưa ra quyết định, bất kể bản chất cụ thể của cuộc khủng hoảng hiện tại. Làm nhắc nhở các nhà lãnh đạo hành động ngay cả khi những ẩn số vẫn tồn tại. Bằng cách nhận trách nhiệm hướng dẫn tổ chức và tất cả các bên liên quan của tổ chức vượt qua các giai đoạn thử thách, những người cấp cao hơn có thể dẫn dắt bằng tấm gương và củng cố vị trí của họ như là nguồn thông tin có thẩm quyền trong một tình huống phát triển.</p><p><strong>Tạo một Kế hoạch hành động</strong></p><p>Được trang bị các khuôn khổ này, các nhà lãnh đạo có thể thực hiện các bước cụ thể nào để sẵn sàng cho cả bản thân và tổ chức của họ? Barger khuyến khích họ bắt đầu với một cuộc khủng hoảng giả định, chẳng hạn như thay đổi thị trường, vi phạm dữ liệu, lỗi sản phẩm, sai lầm trong thực thi hoặc thay đổi lãnh đạo. Sau khi xác định mối đe dọa, các nhà lãnh đạo có thể cộng tác với các nhóm của họ để: </p><li>Suy nghĩ về cách kịch bản sẽ tác động khác nhau đến từng bên liên quan của họ.</li><li>Soạn thảo một kế hoạch hành động từng bước cho giao tiếp và thu hút các bên liên quan của họ, xem xét các loại, phương thức và tần suất gửi tin nhắn phù hợp nhất với kỳ vọng, nhu cầu và lợi ích của từng cá nhân hoặc nhóm.</li><li>Sử dụng kế hoạch này để đánh giá các vai trò của tổ chức, trách nhiệm và thủ tục hiện có và chủ động giải quyết các lỗ hổng trong đó. </li<p>Bằng cách tiến hành các hoạt động thử nghiệm, các nhà lãnh đạo có thể vận hành tư duy và quy trình cần thiết để không chỉ vượt qua thời tiết mà còn phát triển vượt qua các cuộc khủng hoảng, bất kể mức độ mới lạ hoặc chưa từng có.</p><p>Tìm hiểu sâu hơn về những thông tin chi tiết này bằng cách xem hội thảo trên web được ghi lại, Dẫn đầu không có giới hạn: Điều hướng qua sự không chắc chắn và gián đoạn.
''', CAST(N'2022-03-26' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (30, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/08/skillsets-launch_blog-2-2-1-1536x806.jpg', N'N''Deliver học tập dựa trên công việc và xây dựng một chương trình tiên tiến''', N'N''<p>Chúng tôi rất vui được chia sẻ thông tin chi tiết với bạn về một số đợt ra mắt mới thú vị trong Quý 3. Trong bài đăng này, chúng tôi đang thảo luận cụ thể về SkillSets, là các chương trình học tập dựa trên công việc có thể giúp bạn thu hẹp khoảng cách kỹ năng và nâng cao kết quả công việc của sinh viên cũng như các tính năng tích hợp chương trình giảng dạy mới bao gồm đề xuất chương trình giảng dạy, gắn thẻ tín chỉ, lịch trình khả dụng hạn chế và sổ điểm trực tuyến.</p><p><strong>SkillSets</strong></p><p>SkillSets là các chương trình học tập dựa trên công việc tận dụng các khóa học đẳng cấp thế giới từ các trường đại học và công ty hàng đầu, học tập thực hành, và những hiểu biết sâu sắc về kỹ năng thu được từ những người học Coursera tại hơn 2.300 nhà tuyển dụng. Với hàng chục Bộ kỹ năng hiện có, bạn có thể tự tin chuẩn bị cho sinh viên những kỹ năng theo yêu cầu cần thiết để đảm bảo các công việc có tốc độ tăng trưởng cao hiện nay. Trong một Bộ kỹ năng nhất định, học viên sẽ tham gia các khóa học và dự án phù hợp với trình độ thành thạo hiện tại của họ để tăng tốc độ thành thạo kỹ năng của họ.</p><p><strong>Những lợi ích của Bộ kỹ năng là gì?</strong><br /><br />SkillSets sẽ cho phép bạn tự tin triển khai các chương trình học tập phù hợp, dựa trên công việc trên quy mô lớn. SkillSets tận dụng các kỹ năng toàn diện và hiểu biết sâu sắc về vai trò của Coursera để xác định các công việc có tốc độ tăng trưởng cao mà các công ty đang tuyển dụng và các kỹ năng tương ứng mà họ yêu cầu. Điều này cho phép bạn:</p><ul><li>Chọn từ hàng chục chương trình học tập dựa trên công việc giúp phát triển các kỹ năng theo yêu cầu cho các vai trò ở cấp độ đầu vào.</li><li>Tự tin cung cấp chương trình học tập dựa trên công việc , biết rằng bạn đang dạy chính xác các kỹ năng theo yêu cầu cần thiết để thúc đẩy kết quả khả năng có việc làm của sinh viên cao hơn.</li><li>Mang đến trải nghiệm học tập phù hợp với các đề xuất dự án và khóa học năng động được tối ưu hóa cho trình độ thành thạo của từng sinh viên.</li> li><li>Thúc đẩy khả năng làm chủ các công cụ và công nghệ theo yêu cầu bằng cách sử dụng Dự án có hướng dẫn tận dụng giao diện song song trong không gian làm việc ảo trên đám mây.<p>Ngoài ra, với Bảng điều khiển phát triển kỹ năng của chúng tôi, bạn có thể theo dõi và giám sát tiến trình của học viên tiếp thu kỹ năng theo thời gian. Ngoài ra, bạn có thể so sánh các kỹ năng của sinh viên với điểm chuẩn của ngành. Ngoài việc tối ưu hóa các chương trình học tập của bạn, thông tin này sẽ cho phép bạn chia sẻ thông tin chi tiết hữu ích với các nhà tuyển dụng tiềm năng và sắp xếp các ứng viên vào những cơ hội phù hợp dựa trên kỹ năng của họ.</p><p>Tìm hiểu thêm về SkillSets trong thông báo của chúng tôi tại đây.<p ><strong>Tích hợp chương trình giảng dạy<p>Việc tích hợp chương trình giảng dạy thành công bắt đầu bằng việc điều hướng dễ dàng và hiệu quả, khả năng tìm nhanh các khóa học phù hợp để bổ sung cho chương trình giảng dạy của bạn và phù hợp với học sinh của bạn&rsquo; nhu cầu. Sau đó, bạn sẽ muốn kết hợp liền mạch nội dung đó vào các chương trình học tập và quy trình làm việc của mình. Và cuối cùng, bạn cần có khả năng triển khai các khóa học và theo dõi sự tiến bộ của học viên. Để đạt được tất cả những mục tiêu này, chúng tôi đang giới thiệu một số tính năng mới tuyệt vời. Hãy xem xét từng cái một:</p>

<p><strong>Đề xuất chương trình giảng dạy. Tính năng đề xuất chương trình giảng dạy của chúng tôi sẽ giúp bạn điều hướng danh mục Coursera để chọn các khóa học bổ sung cho chương trình giảng dạy của bạn và phù hợp với sinh viên của bạn&rsquo; nhu cầu. Tính năng này cho phép bạn:</p><li>Duyệt qua các khóa học theo ngành học giúp bạn dễ dàng khám phá các khóa học trong danh mục của chúng tôi tương ứng với các môn học chính mà bạn đang dạy trong chương trình giảng dạy của mình.</li><li> Xem các đề xuất của chúng tôi về các khóa học để cung cấp tín chỉ dựa trên dữ liệu và kiến thức chuyên môn về kỹ năng sâu rộng của chúng tôi để tận dụng các khóa học trong danh mục phù hợp nhất với chương trình giảng dạy cốt lõi của bạn.&nbsp;</li></ul><p><strong>Dành cho -Gắn thẻ tín dụng Ngoài chức năng điều hướng nâng cao được mô tả ở trên, tính năng này cho phép bạn chọn và gắn thẻ các khóa học mà bạn muốn cung cấp tín dụng. Điều này giúp học viên của bạn dễ dàng biết được khóa học nào là một phần trong chương trình giảng dạy cốt lõi của bạn mà họ cần phải hoàn thành, ngay từ trong nền tảng Coursera.&nbsp;&nbsp;</p><p><strong>Lịch trình sẵn có có giới hạn:</p><p><strong>Lịch trình sẵn có có giới hạn:</p><p><strong>Lịch học khả dụng có giới hạn:</p><p><strong> Strong>&nbsp;Bạn có thể sử dụng tính năng này để cung cấp các khóa học trong khung thời gian phù hợp với học kỳ của bạn hoặc các mốc thời gian khác mà tổ chức của bạn tuân thủ. Điều này giúp đơn giản hóa việc quản lý chương trình, vì bạn phải lo lắng về nhiều mốc thời gian bị lệch. Đối với học sinh của bạn, điều này sẽ giúp đảm bảo họ đang tiến bộ như một nhóm để tuân thủ các mốc thời gian bạn đã đặt.&nbsp;</p><p><strong>Sổ điểm trực tuyến: Sổ điểm trực tuyến của chúng tôi cung cấp cho bạn khả năng theo dõi tiến độ khóa học khả năng, ngay từ trong nền tảng Coursera. Tận dụng chức năng này, bạn sẽ có thể:</p><li>Theo dõi tiến độ của học viên tham gia một khóa học để đảm bảo rằng học viên của bạn tiến bộ suôn sẻ trong suốt khóa học. Bạn có thể thấy tiến độ này ở cấp độ nhóm cho học kỳ hiện tại hoặc cho tất cả học viên đã tham gia khóa học đó.<li>Xác định những học viên đã đăng ký, có nguy cơ, không hoạt động hoặc đã hoàn thành khóa học để thực hiện các biện pháp khắc phục cần thiết đo lường<li>Xuất dữ liệu để tải vào LMS của bạn nhằm phân tích thông tin này cùng với phần còn lại của thông tin chương trình của bạn.<p>Sổ điểm trực tuyến cũng cung cấp thông tin ở cấp độ cá nhân, cho phép bạn xem học sinh đang tiến bộ như thế nào trong một khóa học, cách họ đã thực hiện trong các bài tập và câu hỏi, và tiến độ của họ bị đình trệ ở đâu. Ngoài ra, nếu bạn thấy bất kỳ điều gì đáng lo ngại (ví dụ: một học sinh đã trượt bài kiểm tra hoặc không hoạt động), bạn có thể gửi cho họ một tin nhắn từ trong sổ điểm trực tuyến, cung cấp sự thúc đẩy chủ động mà họ có thể cần.
''', CAST(N'2020-04-19' AS Date), 1, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (31, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/08/Blended-Curriculum-Slides-1536x864.jpg', N'N''Giới thiệu Sáu Bản đồ Chương trình giảng dạy cho Khả năng Việc làm của Sinh viên''', N'N''<p>Cơ sở hạ tầng kinh tế mới, được xây dựng thông qua những đổi mới như điện toán đám mây, dữ liệu lớn và trí tuệ nhân tạo, đang thúc đẩy công việc trở lại bình thường. Trong kỷ nguyên kỹ thuật số này, sự thành công trong sự nghiệp sẽ phụ thuộc vào khả năng thích ứng liên tục cùng với công nghệ. Điều này không chỉ ảnh hưởng đến cách chúng ta làm việc mà còn ảnh hưởng đến các kỹ năng chúng ta học được. Với vai trò là cầu nối thể chế giữa giáo dục và công việc, các trường đại học phải ngày càng đảm bảo rằng sinh viên được trang bị các kỹ năng làm việc cần thiết để phát triển trong thế giới kỹ thuật số này.</p><p>Đây là những chủ đề quan trọng mà các nhà lãnh đạo trường đại học cần xem xét khi họ chuẩn bị cho sinh viên bước vào thế giới lực lượng lao động:</p><li>Làm thế nào các tổ chức giáo dục đại học có thể nắm bắt các năng lực kỹ thuật số để theo kịp tốc độ thay đổi công nghệ ngày càng nhanh?<li>Làm thế nào các nhà giáo dục có thể xác định và dự đoán các kỹ năng của tương lai? <li>Làm cách nào để cấu hình lại các chương trình học hiện tại để đảm bảo rằng sinh viên sẵn sàng cho công việc?</li></ul><p>Cuốn sách điện tử mới nhất của Coursera, Lập bản đồ chương trình giảng dạy cho khả năng được tuyển dụng của sinh viên, giải quyết trực tiếp những câu hỏi này. Với hơn 86 triệu người học, 4.000 tổ chức học thuật, 300 tổ chức chính phủ và 2.000 tổ chức đã sử dụng nền tảng Coursera&nbsp; (kể từ tháng 6 năm 2021), Coursera có vị trí đặc biệt để giúp các tổ chức giáo dục đại học đáp ứng nhu cầu kỹ năng của lực lượng lao động hiện đại. Sơ đồ chương trình giảng dạy được trình bày trong Sách điện tử này hội tụ những hiểu biết sâu sắc này với sự giám tuyển của chuyên gia do nhóm Chuyển đổi Kỹ năng của Coursera dẫn đầu.<p><strong>Sáu bản đồ chương trình giảng dạy tùy chỉnh được giới thiệu trong Sách điện tử này đóng vai trò là hướng dẫn đề xuất cho các trường đại học muốn tích hợp học tập trực tuyến. Mỗi bản đồ thể hiện cách các trường đại học có thể tận dụng các khóa học trên Coursera để thu hẹp khoảng cách hiện tại và trao quyền cho sinh viên phát triển các kỹ năng sẵn sàng cho công việc.''', CAST(N'2020-04-17' AS Date), 1, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (32, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/04/1200x628-Template-12.jpg', N'N''The Unbounded University: Giáo dục cho mọi lứa tuổi''', N'N''<p>Diễn đàn Kinh tế Thế giới dự đoán rằng trung bình 42% kỹ năng cốt lõi trong các công việc hiện tại dự kiến sẽ thay đổi vào năm 2022. Học tập suốt đời và đào tạo lại liên tục, được cung cấp thông qua học tập trực tuyến, có thể giúp đáp ứng những nhu cầu về kỹ năng ngày càng tăng này. Các nền tảng trực tuyến có thể là một công cụ mạnh mẽ để các trường đại học tương tác với người học, từ cựu sinh viên và giảng viên đến sinh viên bán thời gian, trong suốt cuộc đời của họ để phát triển các kỹ năng họ cần để tham gia vào lực lượng lao động đang phát triển nhanh chóng.<p>Trong Phần III của bài viết mới nhất của chúng tôi báo cáo, Đại học không giới hạn: Mở ra cơ hội thông qua học tập trực tuyến, chúng tôi khám phá cách các trường đại học có thể cung cấp cơ hội học tập suốt đời và tìm cách thu hút người học ở mọi lứa tuổi để đảm bảo bộ kỹ năng của họ vẫn phù hợp. Phân tích của chúng tôi cho thấy rằng các kỹ năng trong lĩnh vực khoa học dữ liệu và công nghệ giảm nhanh hơn bất kỳ lĩnh vực nghiên cứu nào khác, với thời gian bán hủy trung bình của một kỹ năng khoa học dữ liệu hoặc công nghệ ngắn hơn khoảng bảy năm so với thời gian bán hủy của một kỹ năng bên ngoài các lĩnh vực đó chẳng hạn như kinh doanh hoặc khoa học xã hội.</p><p><strong>Trao quyền cho giảng viên thông qua học tập trực tuyến</strong></p><p>Các trường đại học đang sử dụng học tập trực tuyến để trao quyền cho giảng viên tiếp tục học tập. Trên Coursera, một số khóa học có nhiều giảng viên đăng ký nhất là Đại học McMaster và Đại học California San Diego Học cách học: Các công cụ tinh thần mạnh mẽ giúp bạn thành thạo các môn học khó và UNSW Sydney Learning to Teach Online</p><p>Trường đại học giảng viên sử dụng nền tảng Coursera cũng đang tham gia vào các xu hướng và kỹ năng tiên tiến trong lĩnh vực của họ, bao gồm các kỹ năng kinh doanh, công nghệ và khoa học dữ liệu như chuỗi khối, học máy và IoT. Gamification cũng đã trở thành một kỹ năng thịnh hành cho giảng viên trên nền tảng này.</p>', CAST(N'2022-04-14' AS Date), 1, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (33, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2019/10/Product-update-dark-mode.png', N'N''Học theo ngày hay đêm: Chế độ tối hiện khả dụng trên ứng dụng Coursera iOS''', N'N''<p>Diễn đàn Kinh tế Thế giới dự đoán rằng trung bình 42% kỹ năng cốt lõi trong các công việc hiện tại dự kiến sẽ thay đổi vào năm 2022. Học tập suốt đời và đào tạo lại liên tục, được cung cấp thông qua học tập trực tuyến, có thể giúp đáp ứng những nhu cầu về kỹ năng ngày càng tăng này. Các nền tảng trực tuyến có thể là một công cụ mạnh mẽ để các trường đại học tương tác với người học từ cựu sinh viên và giảng viên cho đến sinh viên bán thời gian trong suốt cuộc đời của họ nhằm phát triển các kỹ năng họ cần để tham gia vào lực lượng lao động đang phát triển nhanh chóng.<p>Trong Phần III của báo cáo mới nhất của chúng tôi, Đại học không giới hạn: Mở ra cơ hội thông qua học tập trực tuyến, chúng tôi khám phá cách các trường đại học có thể cung cấp cơ hội học tập suốt đời và tìm cách thu hút người học ở mọi lứa tuổi để đảm bảo bộ kỹ năng của họ vẫn phù hợp. Phân tích của chúng tôi cho thấy rằng các kỹ năng trong lĩnh vực khoa học dữ liệu và công nghệ giảm nhanh hơn bất kỳ lĩnh vực nghiên cứu nào khác, với thời gian bán hủy trung bình của một kỹ năng khoa học dữ liệu hoặc công nghệ ngắn hơn khoảng bảy năm so với thời gian bán hủy của một kỹ năng bên ngoài các lĩnh vực đó chẳng hạn như kinh doanh hoặc khoa học xã hội.</p><p><strong>Trao quyền cho giảng viên thông qua học tập trực tuyến</strong></p><p>Các trường đại học đang sử dụng học tập trực tuyến để trao quyền cho giảng viên tiếp tục học tập. Trên Coursera, một số khóa học có nhiều giảng viên đăng ký nhất là Đại học McMaster và Đại học California San Diego Học cách học: Các công cụ tinh thần mạnh mẽ giúp bạn thành thạo các môn học khó và Học để dạy trực tuyến của UNSW Sydney<p>Giảng viên đại học sử dụng Coursera nền tảng cũng đang tham gia vào các xu hướng và kỹ năng tiên tiến trong lĩnh vực của họ, bao gồm các kỹ năng kinh doanh, công nghệ và khoa học dữ liệu như chuỗi khối, học máy và IoT. Gamification cũng đã trở thành một kỹ năng thịnh hành cho giảng viên trên nền tảng này.</p>''', CAST(N'2022-03-18' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (34, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2019/09/AmazonAlexaAnnouncement_Blog.png', N'N''Coursera giới thiệu Kỹ năng Amazon Alexa để hỗ trợ các mục tiêu học tập''', N'N''<p>Hôm nay, chúng tôi rất vui mừng được công bố một kỹ năng dành cho Amazon Alexa sẽ giúp người học theo kịp các khóa học và đạt được các mục tiêu cá nhân cũng như nghề nghiệp của họ. Bắt đầu từ tháng tới, người học có thể truy cập các bài tập khóa học và điểm bài kiểm tra, ngày đến hạn và cập nhật tiến độ bằng cách hỏi Alexa. Đây là một trong những kỹ năng đầu tiên dành cho Amazon Alexa từ một nền tảng học tập trực tuyến.</p><p>Trợ lý giọng nói, như Alexa, đang được áp dụng nhanh hơn hầu hết mọi công nghệ khác cho đến nay. Hơn một phần ba chủ sở hữu loa thông minh ở Mỹ sử dụng các thiết bị để giúp theo dõi và sắp xếp chúng, bao gồm cài đặt báo thức, hẹn giờ và lên lịch. Nhận thấy những xu hướng này, chúng tôi đã thiết kế một kỹ năng cho Alexa để giúp người học luôn ngăn nắp với thời hạn, điểm số và cập nhật tiến độ khóa học dễ truy cập. Công cụ mới được xây dựng dựa trên khả năng tương thích đa nền tảng hiện tại của chúng tôi trên máy tính để bàn, thiết bị di động và máy tính bảng.<p>Trong những tuần tới, người học sẽ có thể tìm kiếm kỹ năng Coursera miễn phí trong cửa hàng Kỹ năng Amazon Alexa. Sau khi được kích hoạt và liên kết với Coursera, bạn có thể chỉ cần hỏi Alexa, khi nào nhiệm vụ tiếp theo của tôi đến hạn hoặc Alexa, hãy hỏi Coursera, tôi có đang tiến bộ không? Và vào cuối năm, Alexa, tôi đã nhận được gì trong bài kiểm tra khoa học máy tính của mình? Phản hồi sẽ cung cấp các bản cập nhật dựa trên thông tin mới nhất trong tài khoản Coursera của người học.<p>Kỹ năng Coursera mới của chúng tôi dành cho Alexa sẽ khả dụng cho tất cả người học có tài khoản Coursera và thiết bị hỗ trợ Amazon Alexa vào tháng 10. Bằng cách giới thiệu một công cụ mới giúp người học kết hợp giáo dục vào cuộc sống hàng ngày của họ, chúng tôi đã thực hiện một bước thú vị khác hướng tới sứ mệnh cung cấp trải nghiệm học tập chuyển đổi cho bất kỳ ai, ở bất kỳ đâu.''', CAST(N'2022-03-25' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (35, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2019/09/bigger.jpg', N'N''Sẵn sàng để lưu giữ: Trình bày trải nghiệm ghi chú thống nhất''', N'N''<p>Bạn đã học được gì trong khóa học cuối cùng của mình trên Coursera? Các khái niệm quan trọng được trình bày mỗi tuần là gì? Bạn có thể vẽ một biểu đồ mà người hướng dẫn đã sử dụng không? Nếu nhớ lại những sự thật này cảm thấy khó khăn, bạn không đơn độc. Con người có xu hướng mất 40% thông tin trong vòng 24 giờ đầu tiên sau khi nghe hoặc đọc nó, với tỷ lệ nhớ lại giảm đáng kể theo thời gian. Để giải quyết cuộc đấu tranh tự nhiên này, chúng tôi đã phát triển các chức năng ghi chú mới trên Coursera.<p>Việc tích cực tham gia vào quá trình học tập thông qua ghi chú gắn liền với việc tăng khả năng ghi nhớ và hiểu. Để giúp bạn tận dụng tối đa Coursera, chúng tôi đã tinh chỉnh các chức năng ghi chú, đánh dấu và ghi chú tập trung của nền tảng, kết hợp truyền thống có vẻ lỗi thời (hay còn gọi là viết nguệch ngoạc các khái niệm chính trong một bài giảng) với các khả năng của thế kỷ 21. <p><strong>Thu thập hình ảnh quan trọng</strong></p><p>Ảnh chụp màn hình là một cách tuyệt vời để lưu giữ các biểu đồ, hình vẽ và các hình ảnh trực quan khác mà người hướng dẫn có thể trình bày trong một khóa học. Thông qua các chức năng ghi chú, chúng tôi đã giúp việc chụp và sắp xếp hình ảnh trở nên dễ dàng hơn bao giờ hết.<p>Trong khi xem bài giảng, bạn có thể nhấp vào nút. Lưu nút Ghi chú bên dưới video và lưu ảnh chụp màn hình vào ghi chú khóa học của bạn. Bạn là người duy nhất có thể xem ghi chú khóa học của mình, nơi bạn có thể thêm bình luận của riêng mình, chẳng hạn như những gì cần quan sát trong một biểu đồ nhất định và dễ dàng xóa mọi ảnh chụp màn hình bài giảng đã lưu. Trong khi xem bài giảng, bạn có thể truy cập các ghi chú tương ứng trong thời gian thực thông qua một thanh bên ở bên phải màn hình.<p><strong>Bắt đầu (và kết thúc) các khóa học với một nốt cao</strong></p><p >Mặc dù việc giữ chân người dùng là một thách thức đối với nhiều người trong chúng ta, nhưng đó là một thách thức mà chúng ta có thể xác định và giải quyết. Hiện tại, tính năng ghi chú khả dụng trên cả máy tính để bàn và thiết bị di động. Các tính năng đánh dấu và trang đánh giá hợp nhất đã có trên máy tính để bàn và sắp ra mắt cho thiết bị di động.<p>Với nhiều tùy chọn có sẵn, bạn có thể tìm thấy phương pháp ghi chú phù hợp nhất với cách học của mình. Và quan trọng nhất, bằng cách sử dụng các công cụ ghi chú mới của chúng tôi, bạn sẽ có thể lưu giữ thông tin tốt hơn, cuối cùng là thúc đẩy trải nghiệm học tập hấp dẫn và có lợi hơn cho bất kỳ khóa học nào.</p>', CAST(N'2022-03-09' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (36, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/11/HEC-MSIE-image-1536x905.jpg', N'N''Nếu bạn muốn trở thành một doanh nhân, hãy học cách mong đợi những điều bất ngờ''', N'N''<p>Khởi nghiệp thật thú vị, nhưng thành công thường đòi hỏi phải vật lộn với những điều chưa biết. Mặc dù dự kiến sẽ có một số thách thức và cơ hội, nhưng chắc chắn cũng sẽ có nhiều bất ngờ.</p><p>Thật may mắn là các chương trình như Thạc sĩ Đổi mới và Khởi nghiệp (MSIE) của HEC Paris luôn sẵn sàng giúp bạn phát triển các kỹ năng để quản lý cả những điều đã biết và chưa biết trên con đường kinh doanh của bạn. Đó là một cách lý tưởng để tìm hiểu về các phương pháp hay nhất, thử nghiệm ý tưởng và khám phá các chiến lược kinh doanh khác nhau, tất cả trong một môi trường hỗ trợ và không có rủi ro.</p><p>Điểm cuối cùng đó là điểm quan trọng. Các nhà lãnh đạo có tư tưởng khởi nghiệp thường xuyên nhấn mạnh tầm quan trọng của việc học hỏi từ thất bại, nhưng nói thì dễ hơn làm. Cách bạn quản lý thất bại có thể có tác động đáng kể đến quỹ đạo kinh doanh của bạn. Cách tiếp cận dựa trên dự án do HEC Paris thực hiện giúp bạn có thể có được trải nghiệm thực tế và tạo ra một nhóm năng động và mạnh mẽ. Các sinh viên MSIE đến từ nhiều nền tảng khác nhau và bằng cách làm việc cùng nhau, bạn có thể trao đổi ý kiến và cải thiện kỹ năng làm việc nhóm của mình, điều cần thiết trong bất kỳ môi trường kinh doanh nào.</p><p>Ara Fernezian, cựu sinh viên của chương trình, đưa ra một số lời khuyên tuyệt vời về các loại xung đột nội bộ có thể phát triển trong một dự án kinh doanh. Hãy nhớ rằng tất cả bắt đầu với bạn, Ara nói. Hãy ưu tiên những gì giúp bạn đối xử tốt với mọi người và với chính mình, rồi bạn sẽ thấy điều kỳ diệu sẽ xảy ra. Azat Mardan, cũng là một cựu sinh viên và cũng là một doanh nhân thành đạt, đồng tình với quan điểm này, lưu ý rằng &ldquo;có thành tích tốt trong quản lý và lãnh đạo, đồng thời thể hiện sự đồng cảm, có thể giúp tạo ra một nhóm trung thành, vui vẻ và làm việc hiệu quả.</p>< p>Trong nửa sau của chương trình, bạn làm việc theo nhóm trong một dự án kinh doanh do bạn lựa chọn, từ giai đoạn lập kế hoạch đến thực hiện cuối cùng. Các dự án thành công thậm chí có thể được đệ trình để tìm kiếm nguồn tài trợ hạt giống từ HEC Paris thông qua vườn ươm HEC, có trụ sở tại Station F, khuôn viên khởi nghiệp rộng lớn nhất thế giới. Vườn ươm HEC đã hỗ trợ hơn 400 dự án và giúp các doanh nhân đầy tham vọng tăng tốc và khuếch đại sự phát triển của họ.</p><p>Các cựu sinh viên của chương trình thường tiếp tục khởi động các công ty khởi nghiệp của riêng họ cùng với các sinh viên tốt nghiệp khác. Bạn có thể đọc thêm về trải nghiệm của sinh viên tốt nghiệp tại đây.</p>', CAST(N'2022-03-09' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (37, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/07/Blog_Post_Final-1.jpg', N'N''Hai bước để L&D thúc đẩy chuyển đổi kỹ thuật số hậu COVID''', N'N''<p>Với việc đại dịch COVID-19 buộc các công ty phải chuyển sang hình thức làm việc từ xa, nhân viên đang phải thích nghi với thực tế mới. Việc cố gắng cân bằng công việc với trách nhiệm cuộc sống trong thời gian cách ly tại chỗ đã khiến nhiều người giảm năng suất lao động và không chắc chắn về tương lai. Lo lắng gia tăng, ngày trở nên dài hơn và các hoạt động hiện tại bị gián đoạn.</p><p>Trong một môi trường khó khăn như vậy, làm cách nào để các tổ chức có thể hỗ trợ nhân viên của mình một cách tốt nhất trong khi vẫn theo dõi quá trình chuyển đổi kỹ thuật số đang diễn ra?</p>< p>Dữ liệu cho thấy rằng các công ty có cơ hội thực sự để đáp ứng nhu cầu về cơ hội học tập ngày nay để đạt được cả hai mục tiêu này. Các cá nhân đang chuyển sang học trực tuyến nhanh hơn bao giờ hết. Tại Coursera, chúng tôi đã thấy số lượng đăng ký mới tăng hơn 15 lần trên toàn nền tảng và trên mọi ngành. Các công ty có thể tận dụng điều này bằng quy trình hai bước đơn giản: đầu tiên, họ nên tập trung vào phúc lợi của nhân viên bằng cách cung cấp đào tạo phát triển cá nhân có mục tiêu; thứ hai, họ nên tạo ra các lộ trình phát triển kỹ năng để mang đến cho mọi người cơ hội thúc đẩy chương trình kỹ thuật số của công ty họ.</p><p>Hiện tại, năm trong số mười kỹ năng hàng đầu trên nền tảng Coursera tập trung vào các kỹ năng phát triển cá nhân như chánh niệm, hạnh phúc và tâm lý tích cực so với không có gì trước khi đại dịch xảy ra và số lượng đăng ký tham gia phát triển cá nhân đã tăng hơn 1.500% kể từ tháng Ba. Nhu cầu này tạo cơ hội tuyệt vời cho các công ty tăng cường sự tham gia vào các chương trình học tập của họ bằng cách cung cấp cho người học quyền truy cập vào các khóa học phát triển cá nhân này.</p><p>Các khách hàng như Capgemini và Novartis, những công ty đã thực hiện các khóa học về hạnh phúc và khoa học đằng sau COVID-19 mà tất cả nhân viên có thể tiếp cận được, đã chứng kiến số lượt đăng ký tham gia các chương trình học tập của họ tăng trung bình 270%, so với mức trung bình 44% của những khách hàng khác không bổ sung nội dung về các chủ đề này. Nhiều người trong số những học viên bổ sung này không chỉ tham gia vào các kỹ năng hỗ trợ kịp thời mà còn có cơ hội tiếp thu các kỹ năng kỹ thuật số quan trọng.</p><p>Sau khi giúp nhân viên xây dựng các kỹ năng phát triển cá nhân, các tổ chức nên đảm bảo rằng đội của họ đã sẵn sàng để chuyển đổi kỹ thuật số.</p><p>COVID đã đẩy nhanh quá trình chuyển đổi này ở nhiều công ty. Chuỗi cung ứng đã bị gián đoạn và các cửa hàng trực tiếp đóng cửa, buộc các công ty phải chuyển sang các sản phẩm và dịch vụ kỹ thuật số. Nhân viên cần các kỹ năng để có thể thúc đẩy chương trình nghị sự này. Hai kỹ năng vốn đã rất cần thiết cho quá trình chuyển đổi kỹ thuật số nay càng trở nên quan trọng hơn trong thời kỳ khủng hoảng.</p><p>Khoa học dữ liệu đóng vai trò quan trọng đối với hầu hết các quyết định chiến lược mà chúng tôi đã thấy trong đại dịch COVID. Từ việc theo dõi đại dịch đến điều phối sản xuất vật tư y tế, dữ liệu lớn và phân tích thời gian thực là cốt lõi để đưa ra quyết định. Không còn khả thi để đưa ra quyết định bằng cách kết hợp thủ công các nguồn dữ liệu khác nhau trong bảng tính Excel làm việc quá sức. Nhân viên cần có khả năng quản lý các tập dữ liệu lớn và tích hợp thông tin chi tiết vào quá trình ra quyết định của họ một cách nhanh chóng và liên tục.</p><p>Tương tự như vậy, điện toán đám mây đã trở nên nổi bật trong thời kỳ đại dịch. Các công ty như Netflix, Zoom và Microsoft đang dẫn đầu về công nghệ đám mây và có thể mở rộng quy mô dịch vụ của họ một cách liền mạch để hỗ trợ tăng trưởng ba con số chỉ trong vài ngày, tận dụng các cơ hội kinh doanh mới trong khi vẫn duy trì chất lượng của các dịch vụ hiện có. Nếu các doanh nghiệp muốn duy trì sự linh hoạt trong một môi trường ngày càng biến động, thì các kỹ năng điện toán đám mây là điều bắt buộc để có thể thích ứng với công nghệ.</p><p>Trên Coursera, hành vi của người học phù hợp với trọng tâm bên ngoài là điện toán đám mây và khoa học dữ liệu. Từ năm 2018 đến 2019, số lượng đăng ký trung bình hàng tháng trong điện toán đám mây đã tăng 265% và trong khoa học dữ liệu tăng 50% (so với mức trung bình 30% đối với các kỹ năng khác). Kể từ đầu năm nay, số lượng đăng ký trung bình hàng tháng trong điện toán đám mây đã tăng 179% và trong khoa học dữ liệu tăng thêm 166%.</p>', CAST(N'2022-03-10' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (38, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/02/1200x628-Template.png', N'N''3 cách để chứng minh tương lai trường đại học của bạn''', N'N''3 cách để đảm bảo tương lai cho trường đại học của bạn'', N''<p>Khi đại dịch dẫn đến việc các trường đại học ban đầu phải đóng cửa vào đầu tháng 2, Đại học Duke Kunshan ở Côn Sơn, Trung Quốc, là một trong những trường đầu tiên chuyển tất cả các khóa học của mình sang một định dạng trực tuyến. Đến tháng 4, ở đỉnh điểm của cuộc khủng hoảng, có tới 1,6 tỷ sinh viên</a>&nbsp;trên toàn thế giới bị ảnh hưởng bởi việc đóng cửa trường học, trong đó có hơn 200 triệu sinh viên ở bậc đại học. Theo đó, các trường cao đẳng và đại học trên khắp thế giới cũng bắt đầu nhanh chóng chuyển sang hình thức giảng dạy từ xa trong trường hợp khẩn cấp, chuyển sang trực tuyến để giảng bài, quản lý bài kiểm tra và thậm chí tổ chức lễ tốt nghiệp.</p><p>Điều bắt đầu như một phản ứng ngắn hạn đối với COVID -Cuộc khủng hoảng -19 sẽ dẫn đến sự chuyển đổi kỹ thuật số lâu dài của giáo dục đại học. Mặc dù việc chuyển ra khỏi khuôn viên trường sẽ không phải là vĩnh viễn đối với tất cả sinh viên đại học, nhưng giáo dục đại học như chúng ta biết sẽ phát triển.</p><p>Năm vừa qua là chất xúc tác để các trường đại học biến việc học trực tuyến trở thành cốt lõi cho trải nghiệm của sinh viên, và các phương pháp hay nhất cho điều bình thường mới này đã bắt đầu xuất hiện. Dưới đây là ba bước mà bạn có thể cân nhắc thực hiện để đảm bảo tương lai cho trường đại học của mình trong học kỳ tới và hơn thế nữa.</p><h3>1) Nắm bắt các mô hình học tập kết hợp mới</h3><p>Một số mô hình giảng dạy từ xa đã xuất hiện trong bối cảnh đại dịch và chín tháng sau lần chuyển đổi trực tuyến đầu tiên, rõ ràng là không phải tất cả các phương pháp đều hấp dẫn như nhau. Nhiều tổ chức mặc định hướng dẫn đồng bộ hoàn toàn trong giai đoạn giảng dạy từ xa khẩn cấp, trong đó giảng viên chuyển bài giảng của họ trực tuyến thông qua các công cụ hội nghị truyền hình. Mô hình này có thể dẫn đến sự kiệt sức cho cả sinh viên và người hướng dẫn, và thường liên quan đến sự kinh ngạc xung quanh sự chú ý của sinh viên.</p><p>Nhiều tổ chức đang triển khai phương pháp giảng dạy hoàn toàn không đồng bộ và một số đang bổ sung các dịch vụ cấp bằng của họ bằng các chương trình làm sẵn, cho các khóa học -credit trên các nền tảng học tập trực tuyến. Các giáo sư có thể sắp xếp các khóa học để lấp đầy khoảng trống trong chương trình giảng dạy và đảm bảo nội dung mới phù hợp với mục tiêu của khoa. Tùy chọn bổ sung này thân thiện với sinh viên vì nó linh hoạt và phù hợp với nhịp độ của bản thân, đồng thời cho phép họ dễ dàng khám phá những sở thích mới bên ngoài chuyên ngành của mình.</p><p>Học tập kết hợp, các phần không đồng bộ và đồng bộ, cũng đã nổi lên như một phương pháp phổ biến đường vào đại học. Trong mô hình lớp học đảo ngược này, sinh viên có được kiến thức và kỹ năng từ các khóa học trực tuyến, do giáo viên hướng dẫn của họ soạn sẵn hoặc viết riêng. Khóa học hoạt động như một cuốn sách giáo khoa, chỉ khác là nó được chia thành các phân đoạn nhỏ và phản ánh trải nghiệm kỹ thuật số hiện đại mà giới trẻ mong đợi. Sau đó, học sinh cùng với giáo viên hướng dẫn trong một lớp học ảo để thảo luận ý tưởng và áp dụng các kỹ năng với các dự án và đánh giá thực hành.</p><p>Học tập kết hợp kết hợp những phương pháp học tập trực tuyến và trong khuôn viên tốt nhất, thúc đẩy cộng đồng và đảm bảo hiệu quả học tập cao. hôn ước. Những người tiên phong của nó bao gồm Đại học Covenant ở Nigeria, đang sử dụng các khóa học trực tuyến để làm phong phú thêm các chương trình cấp bằng với kiến thức và quan điểm quốc tế cho hơn 6.000 sinh viên.</p><h3>2) Chuẩn bị cho sinh viên sẵn sàng cho công việc của tương lai</h3>< p>Đại dịch gây ra tình trạng thất nghiệp trên diện rộng, đẩy nhanh quá trình chuyển đổi kỹ thuật số và tự động hóa, ảnh hưởng đến hàng triệu người lao động trên toàn cầu. Tại Hoa Kỳ, tỷ lệ thất nghiệp vốn đã cao đối với lao động trẻ tuổi từ 16-24 gần như tăng gấp ba lần từ mùa xuân năm 2019 đến năm 2020. Tỷ lệ này thậm chí còn cao hơn đối với lao động trẻ người da màu, gốc Tây Ban Nha, Châu Á và các đảo Thái Bình Dương.</p><p>Mặc dù cứ 5 sinh viên thì có 4 người cho biết họ tăng tốc hoặc duy trì ưu tiên tìm kiếm việc làm do đại dịch, nhưng chỉ 2/5 sinh viên cảm thấy tự tin rằng họ sẽ tìm được việc làm hoặc thực tập vào mùa hè năm 2021. Vì nhiều công việc đòi hỏi kỹ năng kỹ thuật số hơn, chúng tôi kỳ vọng sinh viên và các nhà tuyển dụng sẽ ngày càng tìm đến các trường đại học để chuẩn bị cho sinh viên tham gia vào thị trường lao động cạnh tranh mới này. Các công việc trong tương lai dự kiến sẽ mang tính kỹ thuật số cao, vì vậy các trường đại học phải xây dựng chương trình giảng dạy các kỹ năng về an ninh mạng, khoa học dữ liệu và điện toán đám mây. Các trường đại học cũng có thể bổ sung các chương trình cấp bằng bằng các khóa học do các nhà giáo dục hàng đầu trong ngành giảng dạy như Google, Amazon và Facebook, những công cụ thường được sử dụng tại nơi làm việc.</p><p>Ở Bắc Carolina, Đại học Johnson C. Smith đã xây dựng một Dữ liệu Chương trình khoa học nhằm nâng cao kỹ năng công nghệ sẵn sàng cho công việc của sinh viên với các khóa học trực tuyến của Google, IBM và Đại học John Hopkins. Các trường đại học khác đã tích hợp các chương trình học nghề của công ty để giúp sinh viên có kinh nghiệm giải quyết các vấn đề trong thế giới thực.</p><p>Các dự án thực hành đang nổi lên như một hình thức đào tạo nghề có tác động, dành cho thế giới kỹ thuật số. Những bài tập này giúp học sinh áp dụng các kỹ năng trong các tình huống thực tế, ở dạng ngắn, có thể thúc đẩy tỷ lệ phát triển kỹ năng cao hơn, bên cạnh việc đạt được sự hài lòng và kết quả nghề nghiệp.</p><h3>3) Cộng tác với những người hướng dẫn đồng đẳng và Các tổ chức</h3><p>Một trong những phương pháp truyền cảm hứng nhất mà chúng tôi thấy trong thời kỳ đại dịch là sự hợp tác giữa những người hướng dẫn và các tổ chức. Các giáo sư và lãnh đạo trường đại học trên toàn thế giới sẵn sàng chia sẻ các mẹo và nguồn lực để giúp nhau giảng dạy hiệu quả hơn và thậm chí nâng cao kỹ năng trong bối cảnh khủng hoảng chưa từng có.</p><p>Ví dụ, tại Đại học Szeged đổi mới ở Hungary, các giảng viên và sinh viên cấp cao- các sinh viên ở cấp độ này đã báo cáo sử dụng các khóa học trực tuyến do các chuyên gia quốc tế giảng dạy để xây dựng kiến thức chuyên môn và phát triển nghiên cứu của họ, cho dù bằng cách truy cập thư viện mới, cung cấp tài liệu học tập mới cho sinh viên hay viết nội dung kỹ thuật số của riêng họ. Trong khi đó, các sinh viên bậc Tiến sĩ đang tận dụng các khóa học trực tuyến lấy nghiên cứu và giảng dạy làm trung tâm để củng cố bộ kỹ năng của họ trong tương lai.</p><p>Các tổ chức nổi tiếng và các nhà giáo dục trực tuyến lâu năm như Đại học Duke, Đại học Hoàng gia Luân Đôn và Đại học Michigan đưa ra các chiến lược về thiết kế các khóa học trực tuyến hấp dẫn, cung cấp phòng thí nghiệm từ xa và thúc đẩy môi trường học tập trực tuyến toàn diện và công bằng. Việc tiếp tục chia sẻ kiến thức, dù là chiến lược giảng dạy hay nội dung khóa học tiên tiến, sẽ rất quan trọng để xây dựng các mô hình giảng dạy đại học linh hoạt trên quy mô lớn, hiện tại và trong nhiều năm tới.</p><p>Trải nghiệm đại học không còn giới hạn ở các bức tường của khuôn viên trường. Trên khắp thế giới, giảng viên đang giảng dạy và sinh viên đang học hầu như ở khắp mọi nơi: phòng ngủ, bàn ăn, sân sau, bạn có thể đặt tên cho nó. Chúng tôi hy vọng rằng mặc dù việc di chuyển ra khỏi khuôn viên trường sẽ là vĩnh viễn, nhưng tác động của đại dịch đối với giáo dục đại học sẽ là. Để duy trì tính cạnh tranh hiện tại và trong dài hạn, các trường đại học có thể sẽ cần phải thích nghi và mở đường cho một trạng thái bình thường mới.</p>', CAST(N'2022-03-10' AS Date), 1, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (39, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2017/07/Climber-768x436.png', N'N''Going Offline: Những cải tiến cho tính năng di động phổ biến nhất của chúng tôi''', N'N''<p>Bạn có đang ở một nơi trên thế giới có quyền truy cập WiFI hoặc kết nối di động không đáng tin cậy không? Bạn có muốn tải tài liệu xuống thiết bị di động của mình khi đang kết nối WiFi để tiết kiệm chi phí dữ liệu không? Hay bạn đang tham gia một cuộc phiêu lưu mà bạn có thể ở ngoài phạm vi tín hiệu?</p><p>Nếu bất kỳ điều nào ở trên áp dụng cho bạn, thì có lẽ bạn là một trong số nhiều người học thích tùy chọn học ngoại tuyến trên thiết bị di động . Khả năng tải xuống tài liệu để làm việc ngoại tuyến là một trong những tính năng có giá trị nhất đối với người dùng di động của chúng tôi. Năm ngoái, chúng tôi đã thêm khả năng tải xuống video và bài đọc để truy cập ngoại tuyến. Giờ đây, chúng tôi đang bổ sung thêm nhiều tính năng ngoại tuyến để giúp người học hoàn thành bài tập ở bất cứ đâu trong cuộc sống.</p><p>Người học trên cả iOS và Android hiện có thể:</p><p><strong>1. Lưu nội dung có giá trị trong một tuần để truy cập ngoại tuyến chỉ bằng một cú nhấp chuột.</strong></p><p><strong>2. Lưu và gửi bài kiểm tra ngoại tuyến.</strong></p><p>Nếu bạn hoàn thành bài kiểm tra ngoại tuyến, chúng tôi sẽ gửi câu trả lời của bạn và cập nhật tiến độ của bạn khi bạn kết nối lại.</p><p>3.<strong> Kiểm soát ngoại tuyến trong cài đặt</strong></p><p>Chúng tôi đã thêm các tùy chọn và tùy chọn trực tuyến mạnh mẽ hơn, bao gồm khả năng chuyển sang chế độ ngoại tuyến theo cách thủ công, chỉ tải xuống qua WiFi hoặc tự động xóa nội dung ngoại tuyến cũ hơn.</p <p><strong>4. Xem và quản lý tất cả nội dung ngoại tuyến ở một nơi.</strong></p><p>Nội dung tải xuống hiện được tổng hợp ở một nơi trên trang tổng quan của khóa học, vì vậy bạn có thể dễ dàng xem nội dung nào khả dụng ngoại tuyến.</p><p> Chúng tôi hy vọng những tính năng mới này giúp việc học trên thiết bị di động trở nên thuận tiện và hiệu quả hơn cho bạn!</p>', CAST(N'2023-07-08' AS Date), 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Post_Category] ON 

INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [note]) VALUES (1, N'Programming Basics', N'Introduction to Python Programming')
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [note]) VALUES (2, N'Web Development', N'Building Responsive Websites with HTML and CSS')
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [note]) VALUES (3, N'Data Science', N'Exploratory Data Analysis using Python')
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [note]) VALUES (4, N'Business and Finance', N'Financial Planning for Small Businesses')
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [note]) VALUES (5, N'Graphic Design', N'Introduction to Adobe Photoshop for Beginners')
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [note]) VALUES (6, N'Marketing', N'Social Media Marketing Strategies for E-commerce')
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [note]) VALUES (7, N'Personal Development', N'Mastering Time Management Skills')
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [note]) VALUES (8, N'Language Learning', N'Conversational Spanish for Travelers')
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [note]) VALUES (9, N'Health and Fitness', N'Effective Workout Routines for Weight Loss')
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [note]) VALUES (10, N' Photography', N'Introduction to Landscape Photography Techniques')
SET IDENTITY_INSERT [dbo].[Post_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Price_Package] ON 

INSERT [dbo].[Price_Package] ([package_id], [package_name], [duration], [pack_status], [price], [description]) VALUES (2, N'Gói bậc 1', 3, 0, 150000, N'Mở khoá các tính năng làm quiz, theo dõi tiến độ của bản thân trong vòng 3 tháng')
INSERT [dbo].[Price_Package] ([package_id], [package_name], [duration], [pack_status], [price], [description]) VALUES (3, N'Gói bậc 2', 6, 0, 250000, N'Mở khoá các tính năng làm quiz, theo dõi tiến độ của bản thân trong vòng 6 tháng')
INSERT [dbo].[Price_Package] ([package_id], [package_name], [duration], [pack_status], [price], [description]) VALUES (4, N'Gói bậc 1', 100000, 1, 1000000, N'Mở khoá các tính năng làm quiz, theo dõi tiến độ của bản thân vĩnh viễn')
SET IDENTITY_INSERT [dbo].[Price_Package] OFF
GO
INSERT [dbo].[province] ([province_id], [name]) VALUES (1, N'Hà Nội')
INSERT [dbo].[province] ([province_id], [name]) VALUES (2, N'Hà Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (3, N'Cao Bằng')
INSERT [dbo].[province] ([province_id], [name]) VALUES (4, N'Bắc Kạn')
INSERT [dbo].[province] ([province_id], [name]) VALUES (5, N'Tuyên Quang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (6, N'Lào Cai')
INSERT [dbo].[province] ([province_id], [name]) VALUES (7, N'Điện Biên')
INSERT [dbo].[province] ([province_id], [name]) VALUES (8, N'Lai Châu')
INSERT [dbo].[province] ([province_id], [name]) VALUES (9, N'Sơn La')
INSERT [dbo].[province] ([province_id], [name]) VALUES (10, N'Yên Bái')
INSERT [dbo].[province] ([province_id], [name]) VALUES (11, N'Hoà Bình')
INSERT [dbo].[province] ([province_id], [name]) VALUES (12, N'Thái Nguyên')
INSERT [dbo].[province] ([province_id], [name]) VALUES (13, N'Lạng Sơn')
INSERT [dbo].[province] ([province_id], [name]) VALUES (14, N'Quảng Ninh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (15, N'Bắc Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (16, N'Phú Thọ')
INSERT [dbo].[province] ([province_id], [name]) VALUES (17, N'Vĩnh Phúc')
INSERT [dbo].[province] ([province_id], [name]) VALUES (18, N'Bắc Ninh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (19, N'Hải Dương')
INSERT [dbo].[province] ([province_id], [name]) VALUES (20, N'Hải Phòng')
INSERT [dbo].[province] ([province_id], [name]) VALUES (21, N'Hưng Yên')
INSERT [dbo].[province] ([province_id], [name]) VALUES (22, N'Thái Bình')
INSERT [dbo].[province] ([province_id], [name]) VALUES (23, N'Hà Nam')
INSERT [dbo].[province] ([province_id], [name]) VALUES (24, N'Nam Định')
INSERT [dbo].[province] ([province_id], [name]) VALUES (25, N'Ninh Bình')
INSERT [dbo].[province] ([province_id], [name]) VALUES (26, N'Thanh Hóa')
INSERT [dbo].[province] ([province_id], [name]) VALUES (27, N'Nghệ An')
INSERT [dbo].[province] ([province_id], [name]) VALUES (28, N'Hà Tĩnh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (29, N'Quảng Bình')
INSERT [dbo].[province] ([province_id], [name]) VALUES (30, N'Quảng Trị')
INSERT [dbo].[province] ([province_id], [name]) VALUES (31, N'Thừa Thiên Huế')
INSERT [dbo].[province] ([province_id], [name]) VALUES (32, N'Đà Nẵng')
INSERT [dbo].[province] ([province_id], [name]) VALUES (33, N'Quảng Nam')
INSERT [dbo].[province] ([province_id], [name]) VALUES (34, N'Quảng Ngãi')
INSERT [dbo].[province] ([province_id], [name]) VALUES (35, N'Bình Định')
INSERT [dbo].[province] ([province_id], [name]) VALUES (36, N'Phú Yên')
INSERT [dbo].[province] ([province_id], [name]) VALUES (37, N'Khánh Hòa')
INSERT [dbo].[province] ([province_id], [name]) VALUES (38, N'Ninh Thuận')
INSERT [dbo].[province] ([province_id], [name]) VALUES (39, N'Bình Thuận')
INSERT [dbo].[province] ([province_id], [name]) VALUES (40, N'Kon Tum')
INSERT [dbo].[province] ([province_id], [name]) VALUES (41, N'Gia Lai')
INSERT [dbo].[province] ([province_id], [name]) VALUES (42, N'Đắk Lắk')
INSERT [dbo].[province] ([province_id], [name]) VALUES (43, N'Đắk Nông')
INSERT [dbo].[province] ([province_id], [name]) VALUES (44, N'Lâm Đồng')
INSERT [dbo].[province] ([province_id], [name]) VALUES (45, N'Bình Phước')
INSERT [dbo].[province] ([province_id], [name]) VALUES (46, N'Tây Ninh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (47, N'Bình Dương')
INSERT [dbo].[province] ([province_id], [name]) VALUES (48, N'Đồng Nai')
INSERT [dbo].[province] ([province_id], [name]) VALUES (49, N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[province] ([province_id], [name]) VALUES (50, N'Hồ Chí Minh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (51, N'Long An')
INSERT [dbo].[province] ([province_id], [name]) VALUES (52, N'Tiền Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (53, N'Bến Tre')
INSERT [dbo].[province] ([province_id], [name]) VALUES (54, N'Trà Vinh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (55, N'Vĩnh Long')
INSERT [dbo].[province] ([province_id], [name]) VALUES (56, N'Đồng Tháp')
INSERT [dbo].[province] ([province_id], [name]) VALUES (57, N'An Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (58, N'Kiên Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (59, N'Cần Thơ')
INSERT [dbo].[province] ([province_id], [name]) VALUES (60, N'Hậu Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (61, N'Sóc Trăng')
INSERT [dbo].[province] ([province_id], [name]) VALUES (62, N'Bạc Liêu')
INSERT [dbo].[province] ([province_id], [name]) VALUES (63, N'Cà Mau')
GO
SET IDENTITY_INSERT [dbo].[Ques_Result] ON 

INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (1, 11, 11, 0, 0, N'not answered', 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (2, 12, 11, 0, 0, N'not answered', 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (3, 13, 11, 0, 0, N'not answered', 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (4, 14, 11, 0, 0, N'not answered', 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (5, 15, 11, 0, 0, N'not answered', 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (6, 16, 11, 0, 0, N'not answered', 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (7, 17, 11, 0, 0, N'not answered', 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (8, 18, 11, 0, 0, N'not answered', 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (9, 19, 11, 0, 0, N'not answered', 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (10, 11, 11, 0, 0, N'not answered', 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (11, 12, 11, 0, 0, N'not answered', 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (12, 13, 11, 0, 0, N'not answered', 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (13, 14, 11, 0, 0, N'not answered', 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (14, 15, 11, 0, 0, N'not answered', 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (15, 16, 11, 0, 0, N'not answered', 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (16, 17, 11, 0, 0, N'not answered', 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (17, 18, 11, 0, 0, N'not answered', 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (18, 19, 11, 0, 0, N'not answered', 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (19, 11, 11, 0, 0, N'not answered', 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (20, 12, 11, 0, 0, N'not answered', 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (21, 13, 11, 0, 0, N'not answered', 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (22, 14, 11, 0, 0, N'not answered', 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (23, 15, 11, 0, 0, N'not answered', 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (24, 16, 11, 0, 0, N'not answered', 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (25, 17, 11, 0, 0, N'not answered', 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (26, 18, 11, 0, 0, N'not answered', 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (27, 19, 11, 0, 0, N'not answered', 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (28, 11, 11, 1, 0, N'19', 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (29, 12, 11, 1, 0, N'21', 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (30, 13, 11, 1, 0, N'8', 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (31, 14, 11, 1, 0, N'6', 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (32, 15, 11, 1, 0, N'14', 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (33, 16, 11, 1, 0, N'5', 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (34, 17, 11, 1, 0, N'7', 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (35, 18, 11, 1, 0, N'3', 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (36, 19, 11, 1, 0, N'0', 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (37, 11, 32, 0, 0, N'not answered', 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (38, 12, 32, 0, 0, N'not answered', 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (39, 13, 32, 0, 0, N'not answered', 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (40, 14, 32, 0, 0, N'not answered', 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (41, 15, 32, 0, 0, N'not answered', 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (42, 16, 32, 0, 0, N'not answered', 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (43, 17, 32, 0, 0, N'not answered', 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (44, 18, 32, 0, 0, N'not answered', 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (45, 19, 32, 0, 0, N'not answered', 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (46, 1, 32, 0, 0, N'not answered', 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (47, 2, 32, 0, 0, N'not answered', 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (48, 3, 32, 0, 0, N'not answered', 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (49, 4, 32, 0, 0, N'not answered', 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (50, 5, 32, 0, 0, N'not answered', 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (51, 6, 32, 0, 0, N'not answered', 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (52, 7, 32, 0, 0, N'not answered', 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (53, 8, 32, 0, 0, N'not answered', 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (54, 9, 32, 0, 0, N'not answered', 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (55, 10, 32, 0, 0, N'not answered', 6)
SET IDENTITY_INSERT [dbo].[Ques_Result] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (1, N'Hãy chọn đáp án đúng: 5 + 3 x 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (2, N'Hãy chọn đáp án đúng: 4 x 3 - 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (3, N'Hãy chọn đáp án đúng: 8 / 2 + 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (4, N'Hãy chọn đáp án đúng: 7 - 4 + 6 / 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (5, N'Hãy chọn đáp án đúng: 3 x (4 + 2) - 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (6, N'Hãy chọn đáp án đúng: 9 - 2 x 3 + 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (7, N'Hãy chọn đáp án đúng: 6 / 2 x 4 + 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (8, N'Hãy chọn đáp án đúng: 2 + 4 - 1 x 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (9, N'Hãy chọn đáp án đúng: 8 - (4 + 2 x 3) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (10, N'Hãy chọn đáp án đúng: 7 x 2 - (4 + 1) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (11, N'Hãy chọn đáp án đúng: 9 + 2 x 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (12, N'Hãy chọn đáp án đúng: 6 x 4 - 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (13, N'Hãy chọn đáp án đúng: 10 / 2 + 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (14, N'Hãy chọn đáp án đúng: 5 - 2 + 4 / 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (15, N'Hãy chọn đáp án đúng: 3 x (5 + 1) - 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (16, N'Hãy chọn đáp án đúng: 7 - 3 x 2 + 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (17, N'Hãy chọn đáp án đúng: 9 / 3 x 2 + 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (18, N'Hãy chọn đáp án đúng: 4 + 2 - 3 x 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (19, N'Hãy chọn đáp án đúng: 12 - (6 + 2 x 3) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (20, N'Hãy chọn đáp án đúng: 8 x 2 - (5 + 3) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (21, N'Hãy chọn đáp án đúng: 3 + 4 x 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (22, N'Hãy chọn đáp án đúng: 6 x 3 - 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (23, N'Hãy chọn đáp án đúng: 9 / 3 + 6 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (24, N'Hãy chọn đáp án đúng: 8 - 5 + 2 / 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (25, N'Hãy chọn đáp án đúng: 2 x (3 + 4) - 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (26, N'Hãy chọn đáp án đúng: 7 - 2 x 4 + 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (27, N'Hãy chọn đáp án đúng: 5 / 2 x 6 + 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (28, N'Hãy chọn đáp án đúng: 1 + 3 - 2 x 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (29, N'Hãy chọn đáp án đúng: 9 - (3 + 2 x 4) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (30, N'Hãy chọn đáp án đúng: 6 x 2 - (4 + 2) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (31, N'Hãy chọn đáp án đúng: 7 x 3 + 4 / 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (32, N'Hãy chọn đáp án đúng: 2 - 4 + 6 x 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (33, N'Hãy chọn đáp án đúng: 10 / 5 + 2 - 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (34, N'Hãy chọn đáp án đúng: 3 + 5 - 1 x 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (35, N'Hãy chọn đáp án đúng: 8 - (2 + 3 x 2) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (36, N'Hãy chọn đáp án đúng: 4 x 2 - (3 + 1) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (37, N'Hãy chọn đáp án đúng: 9 + 6 / 3 - 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (38, N'Hãy chọn đáp án đúng: 5 - 2 + 3 x 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (39, N'Hãy chọn đáp án đúng: 7 x 2 + 5 / 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (40, N'Hãy chọn đáp án đúng: 1 + 3 - 2 x 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (41, N'Hãy chọn đáp án đúng: 4 + 2 x 3 - 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 5)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (42, N'Hãy chọn đáp án đúng: 8 x 3 - 6 / 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 5)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (43, N'Hãy chọn đáp án đúng: 7 / 2 + 4 x 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 5)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (44, N'Hãy chọn đáp án đúng: 6 - 3 + 2 x 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 5)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (45, N'Hãy chọn đáp án đúng: 2 x (6 + 1) - 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 5)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (46, N'Hãy chọn đáp án đúng: 9 - 4 x 2 + 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 5)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (47, N'Hãy chọn đáp án đúng: 5 / 3 x 4 - 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 5)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (48, N'Hãy chọn đáp án đúng: 3 + 2 - 1 x 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 5)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (49, N'Hãy chọn đáp án đúng: 8 - (3 + 2 x 4) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 5)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (50, N'Hãy chọn đáp án đúng: 6 x 3 + 4 - 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (51, N'Hãy chọn đáp án đúng: 5 + 3 x 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (52, N'Hãy chọn đáp án đúng: 4 x 3 - 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (53, N'Hãy chọn đáp án đúng: 8 / 2 + 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (54, N'Hãy chọn đáp án đúng: 7 - 4 + 6 / 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (55, N'Hãy chọn đáp án đúng: 3 x (4 + 2) - 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (56, N'Hãy chọn đáp án đúng: 9 - 2 x 3 + 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (57, N'Hãy chọn đáp án đúng: 6 / 2 x 4 + 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (58, N'Hãy chọn đáp án đúng: 2 + 4 - 1 x 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (59, N'Hãy chọn đáp án đúng: 8 - (4 + 2 x 3) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (60, N'Hãy chọn đáp án đúng: 7 x 2 - (4 + 1) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (61, N'Hãy chọn đáp án đúng: 9 + 2 x 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (62, N'Hãy chọn đáp án đúng: 6 x 4 - 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (63, N'Hãy chọn đáp án đúng: 10 / 2 + 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (64, N'Hãy chọn đáp án đúng: 5 - 2 + 4 / 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (65, N'Hãy chọn đáp án đúng: 3 x (5 + 1) - 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (66, N'Hãy chọn đáp án đúng: 7 - 3 x 2 + 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (67, N'Hãy chọn đáp án đúng: 9 / 3 x 2 + 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (68, N'Hãy chọn đáp án đúng: 4 + 2 - 3 x 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (69, N'Hãy chọn đáp án đúng: 12 - (6 + 2 x 3) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (70, N'Hãy chọn đáp án đúng: 8 x 2 - (5 + 3) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (71, N'Hãy chọn đáp án đúng: 3 + 4 x 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (72, N'Hãy chọn đáp án đúng: 6 x 3 - 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (73, N'Hãy chọn đáp án đúng: 9 / 3 + 6 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (74, N'Hãy chọn đáp án đúng: 8 - 5 + 2 / 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (75, N'Hãy chọn đáp án đúng: 2 x (3 + 4) - 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (76, N'Hãy chọn đáp án đúng: 7 - 2 x 4 + 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (77, N'Hãy chọn đáp án đúng: 5 / 2 x 6 + 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (78, N'Hãy chọn đáp án đúng: 1 + 3 - 2 x 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (79, N'Hãy chọn đáp án đúng: 9 - (3 + 2 x 4) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (80, N'Hãy chọn đáp án đúng: 6 x 2 - (4 + 2) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (81, N'troi dat dung hoa', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (82, N'dep trai', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (83, N'peeeeee', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (84, N'Hãy chọn đáp án đúng: 3 + 5 - 1 x 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (85, N'Hãy chọn đáp án đúng: 8 - (2 + 3 x 2) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (86, N'Hãy chọn đáp án đúng: 4 x 2 - (3 + 1) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (87, N'Hãy chọn đáp án đúng: 9 + 6 / 3 - 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (88, N'Hãy chọn đáp án đúng: 5 - 2 + 3 x 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (89, N'Hãy chọn đáp án đúng: 7 x 2 + 5 / 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (90, N'Hãy chọn đáp án đúng: 1 + 3 - 2 x 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (91, N'troi dat dung hoa', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (92, N'Hãy chọn đáp án đúng: 8 x 3 - 6 / 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (93, N'Hãy chọn đáp án đúng: 7 / 2 + 4 x 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (94, N'Hãy chọn đáp án đúng: 6 - 3 + 2 x 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (95, N'Hãy chọn đáp án đúng: 2 x (6 + 1) - 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (96, N'Hãy chọn đáp án đúng: 9 - 4 x 2 + 3 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (97, N'Hãy chọn đáp án đúng: 5 / 3 x 4 - 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (98, N'Hãy chọn đáp án đúng: 3 + 2 - 1 x 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (99, N'Hãy chọn đáp án đúng: 8 - (3 + 2 x 4) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
GO
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (100, N'Hãy chọn đáp án đúng: 6 x 3 + 4 - 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (103, N'aaaaaa', N'', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (104, N'testing', N'', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (105, N'quang', N'', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (108, N'hhhhhhii', N'', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (121, N'dao ham ', N'', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (154, N'1*1=?', N'', 121)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (155, N'1+1=?', N'', 121)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (156, N'1*1=?', N'', 121)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (164, N'artic monkey song', N'', 122)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (167, N'dddd', N'', 122)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (168, N'1+1=?', N'', 122)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (169, N'1*1=?', N'', 122)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (171, N'bababa', N'', 121)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (172, N'1+1=?', N'', 121)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (173, N'1*1=?', N'', 121)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (174, N'', N'', 121)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (175, N'1+1=?', N'', 126)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (176, N'1*1=?', N'', 126)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (177, N'Nhập nội dung cho câu hỏi', N'', 126)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (178, N'1+2=', N'', 127)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (179, N'2+3', N'', 127)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (180, N'Nhập nội dung cho câu hỏi', N'', 127)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (181, N'Nhập nội dung cho câu hỏi', N'', 127)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (182, N'5+3 =', N'', 128)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (183, N'4-2 = ', N'', 128)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (184, N'6*8 =', N'', 128)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (185, N'2+7 = ', N'', 129)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (186, N'1+0 = ', N'', 129)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (187, N'5/3 = ', N'', 129)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (188, N'1-2= ', N'', 130)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (189, N'2-3', N'', 130)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (190, N'5+0', N'', 131)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (191, N'2-9', N'', 131)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (192, N'0+2 = ', N'', 132)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (193, N'1+2', N'', 132)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (203, N'3+2= ', N'', 141)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (204, N'5+3 =', N'', 141)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (205, N'1-2= ', N'', 141)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (212, N'3+2=', N'', 137)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (213, N'3+2=', N'', 137)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (214, N'3+2=', N'', 142)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (215, N'1+2=', N'', 142)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (216, N'3+2=', N'', 142)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (217, N'3+2=', N'', 145)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (218, N'5+3 =', N'', 145)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (219, N'1+2=', N'', 146)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (220, N'1+1=', N'', 146)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (221, N'5+3=', N'', 147)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (222, N'3+2=', N'', 147)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (223, N'8+9 =', N'', 148)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (224, N'4+2=', N'', 148)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (225, N'4+2=', N'', 149)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (226, N'4+8=', N'', 149)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (227, N'5+9=', N'', 149)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (228, N'6+3', N'', 150)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (229, N'5+3=', N'', 150)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (230, N'1-2= ', N'', 150)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (231, N'6-3=', N'', 151)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (232, N'6+3', N'', 151)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (233, N'6+2', N'', 153)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (234, N'3+2= ', N'', 153)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (1, N'Bài quiz 1: Xác suất và xác suất đồng thời', N'Làm bài quiz 1', 1, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (2, N'Bài quiz 2: Phân phối Bernoulli và phân phối chuẩn', N'Làm bài quiz 2', 1, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (3, N'Bài quiz 1: Độ tập trung và độ phân tán dữ liệu', N'Làm bài quiz 1', 2, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (4, N'Bài quiz 2: Ước lượng điểm trung bình và sai số ước lượng', N'Làm bài quiz 2', 2, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (5, N'Bài quiz 1: Tính hạng của ma trận', N'Làm bài quiz 1', 3, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (6, N'Bài quiz 2: Tìm ma trận căn cứ', N'Làm bài quiz 2', 3, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (7, N'Bài quiz 1: Tìm vectơ cơ sở và không gian sinh bởi các vectơ', N'Làm bài quiz 1', 4, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (8, N'Bài quiz 2: Kiểm tra tính tạo thành và tìm hệ số tuyến tính', N'Làm bài quiz 2', 4, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (9, N'Bài quiz 1: Tính giới hạn xác định và giới hạn vô hướng', N'Làm bài quiz 1', 5, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (10, N'Bài quiz 2: Tính giới hạn vô hạn và giới hạn đồng nhất', N'Làm bài quiz 2', 5, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (11, N'Bài quiz 1: Tính đạo hàm cơ bản', N'Làm bài quiz 1', 6, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (12, N'Bài quiz 2: Đạo hàm của hàm hợp và hàm nghịch đảo', N'Làm bài quiz 2', 6, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (13, N'Bài quiz 1: Tính tổng các số tự nhiên', N'Làm bài quiz 1', 7, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (14, N'Bài quiz 2: Tính tổng các dãy số hình học', N'Làm bài quiz 2', 7, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (15, N'Bài quiz 1: Chứng minh bằng quy nạp đơn giản', N'Làm bài quiz 1', 8, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (16, N'Bài quiz 2: Chứng minh bằng quy nạp toàn diện', N'Làm bài quiz 2', 8, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (17, N'Bài quiz 1: Tìm độ dài cung trên đồ thị', N'Làm bài quiz 1', 9, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (18, N'Bài quiz 2: Tìm độ dài cung trong không gian', N'Làm bài quiz 2', 9, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (19, N'Bài quiz 1: Tìm hệ số góc của đường tiếp tuyến với hàm số', N'Làm bài quiz 1', 10, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (20, N'Bài quiz 2: Tìm hệ số góc của đường tiếp tuyến với đường cong', N'Làm bài quiz 2', 10, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (21, N'Bài quiz 1: Phân tích số thành các thừa số nguyên tố.', N'Làm bài quiz 1', 11, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (22, N'Bài quiz 2: Tìm số nguyên tố lớn nhất trong một khoảng cho trước', N'Làm bài quiz 2', 11, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (23, N'Bài quiz 1: Tìm tập con có tổng lớn nhất', N'Làm bài quiz 1', 12, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (24, N'Bài quiz 2: Tìm tập con có tích lớn nhất', N'Làm bài quiz 2', 12, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (25, N'Bài quiz 1: Tính trung bình, phương sai và độ lệch chuẩn', N'Làm bài quiz 1', 13, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (26, N'Bài quiz 2: Tính tỉ lệ phần trăm và trung vị', N'Làm bài quiz 2', 13, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (27, N'Bài quiz 1: Áp dụng thuật toán tìm kiếm nhị phân', N'Làm bài quiz 1', 14, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (28, N'Bài quiz 2: Áp dụng phương pháp gradient descent', N'Làm bài quiz 2', 14, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (29, N'Bài quiz 1: Tìm số cạnh, số đỉnh và bậc của đồ thị', N'Làm bài quiz 1', 15, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (30, N'Bài quiz 2: Xác định đồ thị có chu trình hay không', N'Làm bài quiz 2', 15, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (31, N'Bài quiz 1: Tìm đường đi ngắn nhất bằng thuật toán Dijkstra', N'Làm bài quiz 1', 16, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (32, N'Bài quiz 2: Tìm chu trình Hamilton bằng thuật toán quay lui', N'Làm bài quiz 2', 16, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (33, N'Bài quiz 1: Tính đạo hàm riêng theo một biến', N'Làm bài quiz 1', 17, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (34, N'Bài quiz 2: Tìm vector pháp tuyến của một điểm trên đồ thị hàm nhiều biến', N'Làm bài quiz 2', 17, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (35, N'Bài quiz 1: Tính đạo hàm riêng và vector pháp tuyến của một đường vi phân', N'Làm bài quiz 1', 18, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (36, N'Bài quiz 2: Tìm phương trình mặt tiếp xúc với một bề mặt', N'Làm bài quiz 2', 18, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (37, N'Bài quiz 1: Tính tích phân không xác định của một hàm số đơn giản.', N'Làm bài quiz 1', 19, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (38, N'Bài quiz 2: Tính tích phân không xác định dựa trên phương pháp thay đổi biến số.', N'Làm bài quiz 2', 19, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (39, N'Bài quiz 1: Tính diện tích dưới đường cong.', N'Làm bài quiz 1', 20, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (40, N'Bài quiz 2: Tính diện tích của một hình bị chặn bởi đồ thị hàm số.', N'Làm bài quiz 2', 20, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (41, N'Bài quiz 1: Xác định xác suất của một sự kiện trong phân phối chuẩn', N'Làm bài quiz 1', 21, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (42, N'Bài quiz 2: Tính giá trị đồ thị hàm mật độ xác suất.', N'Làm bài quiz 2', 21, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (43, N'Bài quiz 1: Tìm hệ số hồi quy và phân tích ý nghĩa thống kê của chúng', N'Làm bài quiz 1', 22, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (44, N'Bài quiz 2: Dự đoán giá trị đầu ra dựa trên mô hình hồi quy.', N'Làm bài quiz 2', 22, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (45, N'Bài quiz 1: Tính giá trị tuyệt đối và đối số của một số phức.', N'Làm bài quiz 1', 23, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (46, N'Bài quiz 2: Phân tích thành phần thực và ảo của một hàm phức.', N'Làm bài quiz 2', 23, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (47, N'Bài quiz 1: Tìm giá trị riêng và vector riêng của một ma trận vuông.', N'Làm bài quiz 1', 24, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (48, N'Bài quiz 2: Xác định tính chất của giá trị riêng thông qua đường cong đặc trưng.', N'Làm bài quiz 2', 24, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (49, N'Bài quiz 1: Tính diện tích dưới đường cong sử dụng phương pháp tích phân Riemann.', N'Làm bài quiz 1', 25, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (50, N'Bài quiz 2: Xác định tích phân xác định bằng tích phân Riemann.', N'Làm bài quiz 2', 25, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (51, N'Bài quiz 1: Sử dụng phương pháp tích phân số Euler để tính toán.', N'Làm bài quiz 1', 26, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (52, N'Bài quiz 2: Áp dụng phương pháp chuỗi lũy thừa để tính toán giá trị hàm.', N'Làm bài quiz 2', 26, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (53, N'Bài quiz 1: Tính định thức của một ma trận vuông.', N'Làm bài quiz 1', 27, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (54, N'Bài quiz 2: Kiểm tra tính khả nghịch của ma trận bằng định thức.', N'Làm bài quiz 2', 27, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (55, N'Bài quiz 1: Xác định không gian con sinh bởi một tập hợp các vector.', N'Làm bài quiz 1', 28, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (56, N'Bài quiz 2: Kiểm tra tính tạo thành và tồn tại của một không gian con.', N'Làm bài quiz 2', 28, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (57, N'Bài quiz 1: Xác định tính kết nối và tính Euler của đồ thị.', N'Làm bài quiz 1', 29, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (58, N'Bài quiz 2: Tìm chu trình Euler trên đồ thị.', N'Làm bài quiz 2', 29, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (59, N'Bài quiz 1: Áp dụng nguyên lý quy nạp để chứng minh một đẳng thức trong một dãy số.', N'Làm bài quiz 1', 30, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (60, N'Bài quiz 2: Sử dụng nguyên lý quy nạp để giải một bài toán tìm số lượng cách sắp xếp.', N'Làm bài quiz 2', 30, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (61, N'Bài quiz 1: Xác định phương trình của một đường cong tọa độ đã cho', N'Làm bài quiz 1', 31, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (62, N'Bài quiz 2: Tìm đặc điểm của đường cong tọa độ như độ dốc, độ cong, hoặc điểm cực trị.', N'Làm bài quiz 2', 31, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (63, N'Bài quiz 1: Xác định phương trình và đồ thị của một bề mặt xoắn.', N'Làm bài quiz 1', 32, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (64, N'Bài quiz 2: Tìm các điểm đặc biệt trên bề mặt xoắn như điểm cực trị, điểm uốn cong, hoặc điểm xoắn.', N'Làm bài quiz 2', 32, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (65, N'Bài quiz 1: Tính xác suất hoặc diện tích dưới đường cong phân phối chuẩn.', N'Làm bài quiz 1', 33, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (66, N'Bài quiz 2: Xác định giá trị z-score hoặc phân vị của một biến ngẫu nhiên theo phân phối chuẩn.', N'Làm bài quiz 2', 33, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (67, N'Bài quiz 1: Thực hiện kiểm định giả thuyết về sự khác biệt giữa hai mẫu.', N'Làm bài quiz 1', 34, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (68, N'Bài quiz 2: Xác định giả thuyết nên chấp nhận hoặc bác bỏ dựa trên kết quả kiểm định.', N'Làm bài quiz 2', 34, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (69, N'Bài quiz 1: Tìm các nhóm con chính qui của một nhóm.', N'Làm bài quiz 1', 35, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (70, N'Bài quiz 2: Xác định tính chất của nhóm chính qui như tính giao hoặc tính bù đối.', N'Làm bài quiz 2', 35, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (71, N'Bài quiz 1: Tạo biểu đồ cột hoặc biểu đồ hình quạt để biểu diễn dữ liệu nhóm.', N'Làm bài quiz 1', 36, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (72, N'Bài quiz 2: Sử dụng biểu đồ đường hoặc biểu đồ hộp để biểu diễn sự phân bố của dữ liệu nhóm.', N'Làm bài quiz 2', 36, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (73, N'Bài quiz 1: Tính phép biến đổi Fourier của một chuỗi số.', N'Làm bài quiz 1', 37, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (74, N'Bài quiz 2: Tìm chuỗi con của một chuỗi số dựa trên phép biến đổi Fourier.', N'Làm bài quiz 2', 37, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (75, N'Bài quiz 1: Tìm giá trị hàm điều khiển thỏa mãn phương trình Laplace.', N'Làm bài quiz 1', 38, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (76, N'Bài quiz 2: Giải phương trình Laplace cho một hình dạng hình học cụ thể.', N'Làm bài quiz 2', 38, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (77, N'Bài quiz 1: Tính số cách chọn một số phần tử từ một tập hợp lớn và sắp xếp chúng theo một thứ tự cụ thể.', N'Làm bài quiz 1', 39, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (78, N'Bài quiz 2: Áp dụng nguyên lý cộng và nguyên lý nhân để tính tổng số cách chọn và sắp xếp các phần tử.', N'Làm bài quiz 2', 39, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (79, N'Bài quiz 1: Tìm phép chiếu của một vector lên một không gian con.', N'Làm bài quiz 1', 40, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (80, N'Bài quiz 2: Xác định tính chất và tính toán phép chiếu trong một không gian vector.', N'Làm bài quiz 2', 40, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (81, N'Bài quiz 1: Giải phương trình vi phân bậc nhất.', N'Làm bài quiz 1', 41, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (82, N'Bài quiz 2: Tìm hàm số thỏa mãn một phương trình vi phân bậc hai', N'Làm bài quiz 2', 41, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (83, N'Bài quiz 1: Tính toán độ cong và bán kính của một đường cong Gauss.', N'Làm bài quiz 1', 42, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (84, N'Bài quiz 2: Xác định điểm xoắn và các đặc điểm khác của đường cong Gauss.', N'Làm bài quiz 2', 42, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (85, N'Bài quiz 1: Tìm tổng của một dãy số vô hạn.', N'Làm bài quiz 1', 43, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (86, N'Bài quiz 2: Áp dụng nguyên lý hội tụ để kiểm tra tính hội tụ của một dãy số vô hạn.', N'Làm bài quiz 2', 43, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (87, N'Bài quiz 1: Tìm phép chiếu của một đối tượng trên một mặt phẳng.', N'Làm bài quiz 1', 44, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (88, N'Bài quiz 2: Xác định tính chất và tính toán phép chiếu trong không gian ba chiều.', N'Làm bài quiz 2', 44, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (89, N'Bài quiz 1: Tính tích vô hướng và tích vector trong không gian đa tuyến tính.', N'Làm bài quiz 1', 45, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (90, N'Bài quiz 2: Xác định ma trận chuyển đổi và tìm ma trận nghịch đảo trong đại số đa ', N'Làm bài quiz 2', 45, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (91, N'Bài quiz 1: Xác định ma trận đồng cấu và tính toán phép nhân ma trận.', N'Làm bài quiz 1', 46, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (92, N'Bài quiz 2: Giải hệ phương trình tuyến tính bằng phương pháp ma trận đồng cấu.', N'Làm bài quiz 2', 46, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (93, N'Bài quiz 1: Xác định một số là số nguyên tố hay không.', N'Làm bài quiz 1', 47, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (94, N'Bài quiz 2: Tìm các số nguyên tố trong một khoảng cho trước.', N'Làm bài quiz 2', 47, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (95, N'Bài quiz 1: Tìm số nguyên dương nhỏ nhất đồng dư với một số cho trước.', N'Làm bài quiz 1', 48, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (96, N'Bài quiz 2: Kiểm tra tính chia hết và tính đồng dư của các số.', N'Làm bài quiz 2', 48, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (97, N'Bài quiz 1: Tìm giá trị riêng và vector riêng tương ứng của một ma trận.', N'Làm bài quiz 1', 49, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (98, N'Bài quiz 2: Áp dụng tính chất của giá trị riêng để giải bài toán liên quan.', N'Làm bài quiz 2', 49, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (99, N'Bài quiz 1: Tính phép biến đổi Fourier của một hàm số.', N'Làm bài quiz 1', 50, 1)
GO
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (100, N'Bài quiz 2: Xác định tính chất và tính toán hàm phổ trong phân tích', N'Làm bài quiz 2', 50, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (101, N'Bài quiz 1: Tính xác suất chuyển trạng thái trong một quá trình Markov.', N'Làm bài quiz 1', 51, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (102, N'Bài quiz 2: Áp dụng ma trận chuyển trạng thái để tính xác suất ổn định trong quá trình Markov.', N'Làm bài quiz 2', 51, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (103, N'Bài quiz 1: Tính xác suất xảy ra một số sự kiện trong một khoảng thời gian dựa trên phân phối Poisson.', N'Làm bài quiz 1', 52, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (104, N'Bài quiz 2: Áp dụng phân phối Poisson để giải quyết các bài toán thực tế.', N'Làm bài quiz 2', 52, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (105, N'Bài quiz 1: Giải phương trình Hamilton-Jacobi-Bellman trong một bài toán tối ưu.', N'Làm bài quiz 1', 53, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (106, N'Bài quiz 2: Tìm hàm giá trị trong phương trình Hamilton-Jacobi-Bellman.', N'Làm bài quiz 2', 53, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (107, N'Bài quiz 1: Thiết kế một hệ thống điều khiển đặt đơn giản.', N'Làm bài quiz 1', 54, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (108, N'Bài quiz 2: Áp dụng phương pháp điều khiển đặt để giải quyết một bài toán cụ thể.', N'Làm bài quiz 2', 54, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (109, N'Bài quiz 1: Tìm cách xếp các đồ vật vào ba lô sao cho tối ưu.', N'Làm bài quiz 1', 55, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (110, N'Bài quiz 2: Xác định giới hạn trọng lượng và kích thước cho việc xếp ba lô.', N'Làm bài quiz 2', 55, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (111, N'Bài quiz 1: Tìm cách ngắt dòng một dãy số thành các đoạn con có tổng nhỏ hơn một giá trị cho trước.', N'Làm bài quiz 1', 56, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (112, N'Bài quiz 2: Áp dụng phương pháp tìm kiếm để giải quyết bài toán ngắt dòng.', N'Làm bài quiz 2', 56, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (113, N'Bài quiz 1: Áp dụng phương pháp moment để xác định phân phối của một biến ngẫu nhiên.', N'Làm bài quiz 1', 57, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (114, N'Bài quiz 2: Tính toán giá trị kỳ vọng và phương sai sử dụng phương pháp moment.', N'Làm bài quiz 2', 57, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (115, N'Bài quiz 1: Kiểm định sự khác biệt giữa hai mẫu dựa trên phân phối t-Student.', N'Làm bài quiz 1', 58, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (116, N'Bài quiz 2: Áp dụng kiểm định t-Student để đưa ra kết luận về sự khác biệt giữa hai nhóm.', N'Làm bài quiz 2', 58, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (117, N'Bài quiz 1: Sắp xếp một mảng số nguyên theo thứ tự tăng dần sử dụng thuật toán Bubble Sort.', N'Làm bài quiz 1', 59, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (118, N'Bài quiz 2: Sắp xếp một mảng số thực theo thứ tự giảm dần sử dụng thuật toán Selection Sort.', N'Làm bài quiz 2', 59, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (119, N'Bài quiz 1: Tính tích hai ma trận vuông cùng kích thước.', N'Làm bài quiz 1', 60, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (120, N'Bài quiz 2: Áp dụng phép nhân ma trận để tính toán hệ phương trình tuyến tính.', N'Làm bài quiz 2', 60, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (121, N'hahahahah', N'', 5, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (122, N'hê hê', N'', 6, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (123, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 5, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (124, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 5, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (125, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 5, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (126, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 62, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (127, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 63, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (128, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 64, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (129, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 65, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (130, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 66, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (131, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 61, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (132, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 67, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (133, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 68, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (134, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 69, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (135, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 70, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (136, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 71, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (137, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 72, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (138, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 72, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (139, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 72, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (140, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 72, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (141, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 72, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (142, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 38, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (143, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 38, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (144, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 38, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (145, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 73, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (146, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 74, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (147, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 75, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (148, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 76, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (149, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 77, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (150, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 78, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (151, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 79, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (152, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 80, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (153, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 85, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (154, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 81, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (155, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 82, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (156, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 83, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (157, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 84, 0)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (158, N'Bài quiz mới được tạo ra, hãy chỉnh sửa và enable', N'', 85, 0)
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz_Result] ON 

INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (1, 2, 11, 0, 0, CAST(N'2023-06-26T13:05:45.647' AS DateTime), CAST(N'2023-06-26T13:05:49.347' AS DateTime), 1)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (2, 2, 11, 0, 0, CAST(N'2023-06-26T13:24:30.603' AS DateTime), CAST(N'2023-06-26T13:25:24.090' AS DateTime), 1)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (3, 2, 11, 0, 0, CAST(N'2023-06-26T13:24:30.603' AS DateTime), CAST(N'2023-06-26T13:29:07.460' AS DateTime), 1)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (4, 2, 11, 1, 10, CAST(N'2023-06-26T13:59:06.047' AS DateTime), CAST(N'2023-06-26T13:59:20.627' AS DateTime), 1)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (5, 2, 32, 0, 0, CAST(N'2023-07-03T00:56:56.323' AS DateTime), CAST(N'2023-07-03T00:58:54.617' AS DateTime), 1)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (6, 1, 32, 0, 0, CAST(N'2023-07-03T01:39:51.757' AS DateTime), CAST(N'2023-07-03T01:39:53.303' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Quiz_Result] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'Student')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'Lecturer')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (4, N'Marketing')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (5, N'Sales')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (1, 1, N'Xác suất và phân phối xác suất', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (2, 1, N'Thống kê mô tả và ước lượng', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (3, 2, N'Tìm hạng và ma trận căn cứ của một ma trận', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (4, 2, N'Giải bài toán về không gian vector', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (5, 3, N'Tính giới hạn của một hàm số', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (6, 3, N'Tìm đạo hàm của một hàm số', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (7, 4, N'Tính tổng các dãy số hữu hạn hoặc vô hạn.', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (8, 4, N'Giải bài toán về chứng minh thông qua phương pháp quy nạp', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (9, 5, N'Tìm độ dài cung', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (10, 5, N'Tìm hệ số góc của đường tiếp tuyến ', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (11, 6, N'Giải bài toán về phân tích số nguyên', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (12, 6, N'Tìm một nhóm con có tính chất đặc biệt', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (13, 7, N'Giải bài toán tính toán số liệu thống kê', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (14, 7, N'Áp dụng thuật toán và phương pháp tính toán để giải quyết bài toán thực tế', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (15, 8, N'Tìm và xác định tính chất của các loại đồ thị', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (16, 8, N'Giải bài toán tìm đường đi ngắn nhất hoặc chu trình Hamilton trên đồ thị', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (17, 9, N'Tìm đạo hàm riêng và vector pháp tuyến của một hàm nhiều biến', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (18, 9, N'Giải bài toán về đường vi phân và bề mặt tiếp xúc trong không gian ba chiều', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (19, 10, N'Tính tích phân xác định', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (20, 10, N'Áp dụng quy tắc tích phân và phương pháp tích phân để tính diện tích ', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (21, 11, N'Áp dụng phân phối xác suất', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (22, 11, N'Thực hiện phân tích hồi quy', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (23, 12, N'Tìm và phân tích các hàm phức', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (24, 12, N'Giải bài toán tìm giá trị riêng', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (25, 13, N'Nghiên cứu về tích phân Riemann ', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (26, 13, N'Áp dụng các phương pháp nâng cao trong giải tích', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (27, 14, N'Định thức ma trận', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (28, 14, N'Không gian con', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (29, 15, N'Đồ thị Euler.', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (30, 15, N'Nguyên lý quy nạp', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (31, 16, N'Đường cong tọa độ.', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (32, 16, N'Bề mặt xoắn', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (33, 17, N'Phân phối chuẩn', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (34, 17, N'Kiểm định giả thuyết.', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (35, 18, N'Nhóm chính qui', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (36, 18, N'Biểu diễn nhóm', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (37, 19, N'Chuỗi Fourier', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (38, 19, N'Phương trình Laplace', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (39, 20, N'Tổ hợp tuyến tính', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (40, 20, N'Phép chiếu', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (41, 21, N'Phương trình vi phân', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (42, 21, N'Đường cong Gauss', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (43, 22, N'Vô hạn hình học', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (44, 22, N'Hình chiếu', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (45, 23, N'Đại số đa tuyến tính', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (46, 23, N'Ma trận đồng cấu', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (47, 24, N'Số nguyên tố', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (48, 24, N'Đồng dư', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (49, 25, N'Giá trị riêng', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (50, 25, N'Hàm phổ', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (51, 26, N'Quá trình Markov', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (52, 26, N'Phân phối Poisson', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (53, 27, N'Phương trình Hamilton-Jacobi-Bellman.', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (54, 27, N'Điều khiển đặt', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (55, 28, N'Bài toán xếp ba lô', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (56, 28, N'Bài toán ngắt dòng', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (57, 29, N'Phương pháp moment', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (58, 29, N'Kiểm định t-Student', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (59, 30, N'Sắp xếp mảng', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (60, 30, N'Tính toán ma trận', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (61, 69, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (62, 33, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (63, 37, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (64, 42, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (65, 51, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (66, 60, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (67, 83, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (68, 89, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (69, 95, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (70, 104, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (71, 113, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (72, 118, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (73, 34, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (74, 117, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (75, 112, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (76, 103, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (77, 93, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (78, 88, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (79, 82, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (80, 70, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (81, 67, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (82, 61, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (83, 53, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (84, 43, N'Please edit this Section', 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [section_status]) VALUES (85, 38, N'Please edit this Section', 1)
SET IDENTITY_INSERT [dbo].[Section] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (2, N'Chỉ để trở thành phiên bản tốt nhất của chính bạn để thích nghi với cơ hội của thế giới1...Chào mừng bạn đến với cuộc hành trình của chúng tôi và chúc bạn may mắn!', N'img/tempAvatar.jpg', N'courselist?subject=3', 1, N'Make out like it never happened and that we were nothing')
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (3, N'Tắt những cuộc gọi tắt cả email Flow anh sẽ dắt tay em đi theo', N'img/tempAvatar.jpg', N'courselist?subject=2', 1, N'And I dont even need your love')
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (4, N'Đến nột nơi chẳng ai biết là nơi nào Nơi mà nỗi buồn trở nên bé tí teo', N'img/tempAvatar.jpg', N'courselist?subject=2', 1, N'But you treat me like a stranger, and that feels so rough')
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (5, N'Nơi mà u sầu mỏng như là cánh ve Nụ cười em nở tròn như là bánh xe', N'img/tempAvatar.jpg', N'courselist?subject=2', 1, N'But you treat me like a stranger, and that feels so rough')
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_desc]) VALUES (1, N'Công nghệ thông tin', N'Trong môn học này, bạn có thể học nhiều ngôn ngữ lập trình khác nhau.')
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_desc]) VALUES (2, N'Toán', N'Trong chủ đề này, bạn có thể tìm hiểu về toán học trong lĩnh vực công nghệ thông tin.')
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_desc]) VALUES (3, N'Nhạc cụ', N'Trong môn học này, bạn có thể tham gia các khóa học cơ bản về cách chơi nhạc cụ.')
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_desc]) VALUES (4, N'Ngôn ngữ', N'Trong môn học này, bạn có thể học nhiều ngôn ngữ khác nhau')
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_desc]) VALUES (5, N'Kinh Doanh', N'Trong chủ đề này, bạn có thể học các khóa học kinh doanh cơ bản.')
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_desc]) VALUES (6, N'Sức khoẻ', N'Ở bộ môn này, bạn có thể học các khóa học về cách chăm sóc sức khỏe đúng cách và khoa học.')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscription] ON 

INSERT [dbo].[Subscription] ([reg_id], [reg_time], [user_id], [package_id], [expireDate]) VALUES (14, CAST(N'2023-07-10' AS Date), 32, 2, CAST(N'2023-10-10' AS Date))
SET IDENTITY_INSERT [dbo].[Subscription] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (1, N'son@gmail.com', N'Q1Op3KjUkkJLYZoF2CnZzw==', N'chu sơn', N'img/tempAvatar.jpg', 1, CAST(N'2003-05-27' AS Date), N'0363938085', N'Hà Nội', N'1000', 2, CAST(N'2003-05-27' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (2, N'chi@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'Minh Chi', N'img/tempAvatar.jpg', 2, CAST(N'2003-05-27' AS Date), N'0363938085', N'Hà Nội', N'1000', 2, CAST(N'2003-05-27' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (3, N'manh@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Phan Tiến Mạnh', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0442511630', N'Hà Nội', N'1000', 1, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (4, N'linh@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Thị Ngọc Linh', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0460429023', N'Hà Nội', N'1000', 1, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (5, N'quocAnh@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Võ Quốc Anh', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0827784536', N'Hà Nội', N'1000', 1, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (6, N'TuAnh@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'Phan Nguyễn Tú Anh', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0197295039', N'Hà Nội', N'1000', 1, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (7, N'dinhvu@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Trịnh Đình Vũ', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0442511630', N'Nam Định', N'1000', 2, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (8, N'haianh@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Hải Anh', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0577951519', N'Hồ Chí Minh', N'1000', 2, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (9, N'nhatlinh@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Chu Nhật Linh', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0783130637', N'Hải Phòng', N'1000', 2, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (10, N'thanhtra@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Phùng Thanh Trà', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0168700393', N'Đà Nẵng', N'1000', 2, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (11, N'minhtam@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'Đinh Ngọc Minh Tâm', N'img/tempAvatar.jpg', 2, CAST(N'2003-05-27' AS Date), N'0556335383', N'Hải Phòng', N'1000', 2, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (12, N'tiendat@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Trần Tiến Đạt', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0836942901', N'Cà Mau', N'1000', 3, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (13, N'quanghuy@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'Đỗ Quang Huy', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0239381909', N'Hà Nội', N'1000', 3, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (14, N'maihuong@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Mai Hương', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0231248582', N'Hà Nội', N'1000', 3, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (15, N'thaoduong@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Vũ Thị Thảo Dương', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0593996287', N'Hà Nội', N'1000', 5, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (16, N'nguyenhongnhung@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Hồng Nhung', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0438875162', N'Nam Định', N'1000', 3, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (17, N'nguyenmanhtrung@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Mạnh Trung', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0437905918', N'Bình Định', N'1000', 2, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (18, N'dangquy@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Đặng Hoàng Quý', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0333842851', N'Bình Định', N'1000', 3, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (20, N'haizz@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'haizz', N'img/tempAvatar.jpg', 1, CAST(N'2003-06-20' AS Date), N'0363938085', N'Hà Nội', N'0', 2, CAST(N'2023-06-04' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (21, N'chuquyson9@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/30.jpg', 1, CAST(N'2003-06-15' AS Date), N'0363938085', N'Hà Nội', N'0', 2, CAST(N'2023-06-05' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (22, N'chuquyson10@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/21.jpg', 1, CAST(N'2023-06-22' AS Date), N'0363938085', N'Hà Nội', N'0', 2, CAST(N'2023-06-05' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (23, N'chuquyson11@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/24.jpg', 1, CAST(N'2023-06-14' AS Date), N'0363938085', N'Hà Nội', N'0', 2, CAST(N'2023-06-05' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (24, N'chuquyson12@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/2.jpg', 1, CAST(N'2023-06-30' AS Date), N'0363938085', N'Hà Nội', N'0', 3, CAST(N'2023-06-05' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (25, N'chuquyson16@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/1.jpg', 1, CAST(N'2023-06-16' AS Date), N'0363938085', N'Hà Nội', N'400000', 2, CAST(N'2023-06-05' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (26, N'chuquyson20@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/Screenshot 2023-06-07 150955.png', 1, CAST(N'2023-06-06' AS Date), N'0363938085', N'Bắc Ninh', N'0', 3, CAST(N'2023-06-22' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (27, N'chuquyson30@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/Screenshot 2023-06-07 150921.png', 1, CAST(N'2023-06-06' AS Date), N'0363938085', N'Hà Nội', N'0', 2, CAST(N'2023-06-25' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (28, N'chuquyson34@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/Screenshot 2023-06-25 094411.png', 1, CAST(N'2023-06-21' AS Date), N'0363938085', N'Hà Nội', N'0', 2, CAST(N'2023-06-25' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (29, N'chuquyson99@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/eee.png', 1, CAST(N'2023-06-28' AS Date), N'0363938085', N'Hà Nội', N'0', 2, CAST(N'2023-06-25' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (30, N'chuquyson77@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/33.png', 1, CAST(N'2023-06-14' AS Date), N'0363938085', N'Hà Nội', N'0', 2, CAST(N'2023-06-25' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (31, N'chuquyson50@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'chu sơn', N'img/tempAvatar.jpg', 1, CAST(N'2023-06-08' AS Date), N'0363938085', N'Lạng Sơn', N'0', 2, CAST(N'2023-06-28' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (32, N'chuquyson4@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/2.jpg', 1, CAST(N'2023-06-03' AS Date), N'0363938085', N'Hà Nội', N'170032000', 2, CAST(N'2023-06-30' AS Date), 1, 10)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (33, N'chuquyson45@gmail.com', N'N10KIOclIFqgrRT1CmSv+g==', N'sơn chu', N'img/tempAvatar.jpg', 1, CAST(N'2003-05-27' AS Date), N'0363938085', N'Hà Nội', N'0', 3, CAST(N'2023-06-30' AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[contact]  WITH CHECK ADD FOREIGN KEY([user1_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[contact]  WITH CHECK ADD FOREIGN KEY([user2_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Level] FOREIGN KEY([level_id])
REFERENCES [dbo].[Level] ([level_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Level]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Subject] FOREIGN KEY([sub_id])
REFERENCES [dbo].[Subject] ([sub_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Subject]
GO
ALTER TABLE [dbo].[choices]  WITH CHECK ADD FOREIGN KEY([ques_id])
REFERENCES [dbo].[Question] ([ques_id])
GO
ALTER TABLE [dbo].[district]  WITH CHECK ADD FOREIGN KEY([province_id])
REFERENCES [dbo].[province] ([province_id])
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD FOREIGN KEY([section_id])
REFERENCES [dbo].[Section] ([section_id])
GO
ALTER TABLE [dbo].[Lesson_Result]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Result_Lesson] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[Lesson_Result] CHECK CONSTRAINT [FK_Lesson_Result_Lesson]
GO
ALTER TABLE [dbo].[Lesson_Result]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Result_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Lesson_Result] CHECK CONSTRAINT [FK_Lesson_Result_User]
GO
ALTER TABLE [dbo].[Manage_Course]  WITH CHECK ADD  CONSTRAINT [FK_Manage_Course_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Manage_Course] CHECK CONSTRAINT [FK_Manage_Course_Course]
GO
ALTER TABLE [dbo].[Manage_Course]  WITH CHECK ADD  CONSTRAINT [FK_Manage_Course_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Manage_Course] CHECK CONSTRAINT [FK_Manage_Course_User]
GO
ALTER TABLE [dbo].[message]  WITH CHECK ADD FOREIGN KEY([contact_id])
REFERENCES [dbo].[contact] ([contact_id])
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Blog] FOREIGN KEY([blog_id])
REFERENCES [dbo].[Post_Category] ([blog_id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Blog]
GO
ALTER TABLE [dbo].[Ques_Result]  WITH CHECK ADD FOREIGN KEY([quiz_result_id])
REFERENCES [dbo].[Quiz_Result] ([quiz_result_id])
GO
ALTER TABLE [dbo].[Ques_Result]  WITH CHECK ADD  CONSTRAINT [FK_Ques_Result_Question] FOREIGN KEY([ques_id])
REFERENCES [dbo].[Question] ([ques_id])
GO
ALTER TABLE [dbo].[Ques_Result] CHECK CONSTRAINT [FK_Ques_Result_Question]
GO
ALTER TABLE [dbo].[Ques_Result]  WITH CHECK ADD  CONSTRAINT [FK_Ques_Result_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Ques_Result] CHECK CONSTRAINT [FK_Ques_Result_User]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Quiz]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD FOREIGN KEY([section_id])
REFERENCES [dbo].[Section] ([section_id])
GO
ALTER TABLE [dbo].[Quiz_Result]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Result_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[Quiz_Result] CHECK CONSTRAINT [FK_Quiz_Result_Quiz]
GO
ALTER TABLE [dbo].[Quiz_Result]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Result_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Quiz_Result] CHECK CONSTRAINT [FK_Quiz_Result_User]
GO
ALTER TABLE [dbo].[Role_Permission]  WITH CHECK ADD  CONSTRAINT [FK_Role_Permission_Permission] FOREIGN KEY([per_id])
REFERENCES [dbo].[Permission] ([per_id])
GO
ALTER TABLE [dbo].[Role_Permission] CHECK CONSTRAINT [FK_Role_Permission_Permission]
GO
ALTER TABLE [dbo].[Role_Permission]  WITH CHECK ADD  CONSTRAINT [FK_Role_Permission_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Role_Permission] CHECK CONSTRAINT [FK_Role_Permission_Role]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Course]
GO
ALTER TABLE [dbo].[Setting]  WITH CHECK ADD  CONSTRAINT [FK_Setting_SettingStatus] FOREIGN KEY([SettingStatusId])
REFERENCES [dbo].[SettingStatus] ([SettingStatusId])
GO
ALTER TABLE [dbo].[Setting] CHECK CONSTRAINT [FK_Setting_SettingStatus]
GO
ALTER TABLE [dbo].[Setting]  WITH CHECK ADD  CONSTRAINT [FK_Setting_SettingType] FOREIGN KEY([SettingTypeId])
REFERENCES [dbo].[SettingType] ([SettingTypeId])
GO
ALTER TABLE [dbo].[Setting] CHECK CONSTRAINT [FK_Setting_SettingType]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Price_Package] FOREIGN KEY([package_id])
REFERENCES [dbo].[Price_Package] ([package_id])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_Registration_Price_Package]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_Registration_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_Registration_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Gender] FOREIGN KEY([gender_id])
REFERENCES [dbo].[Gender] ([gender_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Gender]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  StoredProcedure [dbo].[DeleteExpiredSubscriptions]    Script Date: 7/22/2023 10:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteExpiredSubscriptions]
AS
BEGIN
    SET NOCOUNT ON;
    
    DELETE FROM Subscription
    WHERE expireDate <= GETDATE();
END
GO
USE [master]
GO
ALTER DATABASE [Course_DB] SET  READ_WRITE 
GO
