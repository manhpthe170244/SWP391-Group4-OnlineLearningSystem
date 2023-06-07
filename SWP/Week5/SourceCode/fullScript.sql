USE [master]
GO
/****** Object:  Database [Course_DB]    Script Date: 6/6/2023 4:04:39 PM ******/
CREATE DATABASE [Course_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Course_DB', FILENAME = N'E:\database Swp391\Course_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Course_DB_log', FILENAME = N'E:\database Swp391\Course_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[choices]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[contact]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[district]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Gender]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Lesson]    Script Date: 6/6/2023 4:04:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_name] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[Lesson_Result]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Level]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Manage_Course]    Script Date: 6/6/2023 4:04:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manage_Course](
	[course_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[course_Start] [datetime] NULL,
	[course_end] [datetime] NULL,
 CONSTRAINT [PK_Manage_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[message]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Permission]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Post]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Post_Category]    Script Date: 6/6/2023 4:04:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Category](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[blog_name] [nvarchar](255) NULL,
	[blog_title] [nvarchar](max) NULL,
	[updated_date] [date] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price_Package]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[province]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Ques_Result]    Script Date: 6/6/2023 4:04:39 PM ******/
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
	[ques_answer] [int] NULL,
	[quiz_result_id] [int] NULL,
 CONSTRAINT [PK_Ques_Result] PRIMARY KEY CLUSTERED 
(
	[ques_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Quiz]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Quiz_Result]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Role_Permission]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Section]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Setting]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[SettingStatus]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[SettingType]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Slider]    Script Date: 6/6/2023 4:04:39 PM ******/
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
/****** Object:  Table [dbo].[Subject]    Script Date: 6/6/2023 4:04:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_name] [nvarchar](50) NULL,
	[sub_img] [nvarchar](max) NULL,
	[sub_desc] [nvarchar](max) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 6/6/2023 4:04:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[reg_id] [int] IDENTITY(1,1) NOT NULL,
	[reg_time] [date] NULL,
	[user_id] [int] NULL,
	[package_id] [int] NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/6/2023 4:04:39 PM ******/
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
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (321, N'24', 1, 81)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (322, N'91', 0, 81)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (323, N'85', 0, 81)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (324, N'27', 0, 81)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (325, N'14', 1, 82)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (326, N'91', 0, 82)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (327, N'85', 0, 82)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (328, N'27', 0, 82)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (329, N'3', 1, 83)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (330, N'91', 0, 83)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (331, N'85', 0, 83)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (332, N'27', 0, 83)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (333, N'4', 1, 84)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (334, N'91', 0, 84)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (335, N'85', 0, 84)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (336, N'27', 0, 84)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (337, N'0', 1, 85)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (338, N'91', 0, 85)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (339, N'85', 0, 85)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (340, N'27', 0, 85)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (341, N'3', 1, 86)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (342, N'91', 0, 86)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (343, N'85', 0, 86)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (344, N'27', 0, 86)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (345, N'10', 1, 87)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (346, N'91', 0, 87)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (347, N'85', 0, 87)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (348, N'27', 0, 87)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (349, N'15', 1, 88)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (350, N'91', 0, 88)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (351, N'85', 0, 88)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (352, N'27', 0, 88)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (353, N'15', 1, 89)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (354, N'91', 0, 89)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (355, N'85', 0, 89)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (356, N'27', 0, 89)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (357, N'-3', 1, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (358, N'91', 0, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (359, N'85', 0, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (360, N'27', 0, 90)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (361, N'9', 1, 91)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (362, N'91', 0, 91)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (363, N'85', 0, 91)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (364, N'27', 0, 91)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (365, N'22', 1, 92)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (366, N'91', 0, 92)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (367, N'85', 0, 92)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (368, N'27', 0, 92)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (369, N'15', 1, 93)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (370, N'91', 0, 93)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (371, N'85', 0, 93)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (372, N'27', 0, 93)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (373, N'15', 1, 94)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (374, N'91', 0, 94)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (375, N'85', 0, 94)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (376, N'27', 0, 94)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (377, N'10', 1, 95)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (378, N'91', 0, 95)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (379, N'85', 0, 95)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (380, N'27', 0, 95)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (381, N'4', 1, 96)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (382, N'91', 0, 96)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (383, N'85', 0, 96)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (384, N'27', 0, 96)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (385, N'6', 1, 97)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (386, N'91', 0, 97)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (387, N'85', 0, 97)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (388, N'27', 0, 97)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (389, N'0', 1, 98)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (390, N'91', 0, 98)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (391, N'85', 0, 98)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (392, N'27', 0, 98)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (393, N'-3', 1, 99)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (394, N'91', 0, 99)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (395, N'85', 0, 99)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (396, N'27', 0, 99)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (397, N'19', 1, 100)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (398, N'91', 0, 100)
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (399, N'85', 0, 100)
GO
INSERT [dbo].[choices] ([choice_id], [choice_content], [is_true], [ques_id]) VALUES (400, N'27', 0, 100)
SET IDENTITY_INSERT [dbo].[choices] OFF
GO
INSERT [dbo].[Course] ([course_id], [course_name], [course_img], [course_price], [course_desc], [last_update], [sub_id], [level_id], [course_status], [durationDAY], [course_Title]) VALUES (1, N'Xác suất thống kê I', N'img/tempAvatar.jpg', 75000.0000, N'Khóa học xác suất và thống kê là một khóa học cơ bản giúp người học hiểu về cách tính toán và áp dụng các khái niệm cơ bản của hai lĩnh vực này. Nó được thiết kế để giúp người mới bắt đầu có được kiến thức và kỹ năng căn bản trong xác suất và thống kê.

Trong khóa học này, bạn sẽ được giới thiệu với các khái niệm cơ bản như biến số, phân phối, chuỗi thời gian và mô hình hồi quy tuyến tính. Bạn sẽ học cách tính toán trung bình, phương sai, độ lệch chuẩn và các đại lượng thống kê khác.

Bên cạnh đó, khóa học cũng sẽ giúp bạn hiểu rõ hơn về các phương pháp thống kê cơ bản để xác định mối quan hệ giữa các biến số trong tập dữ liệu. Bạn sẽ học cách xây dựng mô hình cho các dữ liệu liên tục và rời rạc.

Khóa học sử dụng các ví dụ và bài tập giúp người học áp dụng những kiến thức đã học vào thực tế và nắm vững các kỹ năng thống kê cơ bản. Với khóa học này, bạn sẽ có được nền tảng vững chắc để tiếp tục học tập và phát triển kiến thức thực tế trong lĩnh vực xác suất và thống kê."', CAST(N'2022-03-04' AS Date), 2, 1, 1, 30, N'Xác suất thống kê cho người mới bắt đầu')
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
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([gender_id], [gender_name]) VALUES (1, N'Nam')
INSERT [dbo].[Gender] ([gender_id], [gender_name]) VALUES (2, N'Nữ')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (1, N'Basic')
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (2, N'Intermediate')
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (3, N'Advanced')
SET IDENTITY_INSERT [dbo].[Level] OFF
GO
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end]) VALUES (1, 1, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end]) VALUES (1, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end]) VALUES (100, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-07-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end]) VALUES (101, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-07-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end]) VALUES (102, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-08-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end]) VALUES (103, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-08-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [course_Start], [course_end]) VALUES (104, 11, CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(N'2023-06-25T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (1, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/20491-Social-Paid-Ad-V1.png', N'Maki Villano dang ki?m du?c b?ng th?c si v? khoa h?c d? li?u trong khi cân b?ng gi?a công vi?c và gia dình', N'<br>Karim Makisig Maki Villano h?c k? thu?t di?n khi còn là sinh viên d?i h?c. Ông dã d?m nh?n nhi?u vai trò CNTT khác nhau trong hai th?p k? qua và hi?n là ki?n trúc su gi?i pháp c?p cao t?i m?t công ty d?ch v? CNTT. Anh nhanh chóng b? cu?n hút vào khoa h?c d? li?u, nh?n ra r?ng dây là m?t linh v?c dang phát tri?n v?i nhu c?u cao d?i v?i nh?ng ngu?i hành ngh? lành ngh?. Maki c?m th?y mình có th? c?nh tranh trong ngành, nhung anh ?y c?n hi?u rõ hon v? các k? thu?t, công c? và công ngh? khoa h?c d? li?u cung nhu cách chúng tuong tác v?i công vi?c c?a anh ?y trong linh v?c CNTT.</br>
<br>Anh ?y quan tâm d?n vi?c l?y b?ng th?c si, nhung là m?t ngu?i cha don thân s?ng ? Philippines, anh ?y c?n tìm m?t chuong trình cho phép anh ?y h?c các k? nang c?n thi?t mà không ?nh hu?ng d?n cu?c s?ng, công vi?c ho?c gia dình c?a anh ?y. Anh ?y cung lo ng?i r?ng mình không có nhi?u ki?n th?c co b?n v? khoa h?c d? li?u.</br>

<br>Khi Maki tìm th?y Th?c si Khoa h?c v? Khoa h?c D? li?u (MS-DS) t? Ð?i h?c Colorado Boulder trên Coursera, anh ?y ngay l?p t?c b? thu hút b?i danh ti?ng xu?t s?c c?a tru?ng và r?t hào h?ng v? c?u trúc tuy?n sinh d?a trên thành tích. Vi?c thi?u kinh nghi?m c?a anh ?y s? không thành v?n d? và anh ?y có th? b?t d?u ngay l?p t?c.</br>

<br>Trong các chuong trình khác, tôi ph?i d?i hàng tháng m?i nh?n du?c thông tin v? vi?c nh?p h?c c?a mình. V?i CU Boulder, tôi có th? tham gia ngay và không lãng phí th?i gian.</br>

<br>Maki dã dang ký vào Chuyên ngành Pathway, m?t chu?i 3 khóa h?c t?p trung vào th?ng kê ho?c khoa h?c máy tính. B?ng cách hoàn thành c? ba khóa h?c trong m?t l? trình v?i di?m trung bình tích luy t? 3.0 tr? lên, b?n s? ngay l?p t?c du?c nh?n vào chuong trình. Ði?u này th?t hoàn h?o d?i v?i Maki.</br>

<br>Sau khi dang ký toàn b? chuong trình th?c si, Maki r?t vui khi th?y r?ng d?nh d?ng tr?c tuy?n và các công c? trong khóa h?c cho phép anh ?y x? lý và ti?p thu tài li?u theo th?i gian c?a riêng mình. Anh ?y có th? ti?p thu các bài gi?ng trong khi r?a bát dia ho?c g?p qu?n áo và xem l?i các video cho d?n khi hi?u rõ t?ng ch? d?. Anh ?y d?c bi?t thích khóa h?c c?a mình v?i Ti?n si Anne Dougherty, ngu?i d?y Lý thuy?t xác su?t: N?n t?ng cho d? li?u Khoa h?c. Dr. Anne Dougherty quan tâm d?n vi?c gi?i thích tài li?u và cung c?p nhi?u cách nhìn v? m?t khái ni?m.</br>

<br>Ch? sau m?t nam tham gia chuong trình, Maki dã áp d?ng nh?ng ki?n th?c m?i vào vai trò hi?n t?i c?a mình</br>

<br>Khi chúng tôi ph?i d? xu?t các h? th?ng t?i noi làm vi?c, ki?n th?c th?ng kê m?i c?a tôi giúp tôi t? tính toán các tham s? và làm cho chúng chính xác hon, d?ng th?i di?u này cho phép tôi th?c hi?n công vi?c c?a mình t?t hon.</br>

<br>Ði?u này hoàn toàn tr?c tuy?n Th?c si Khoa h?c v? Khoa h?c D? li?u (MS-DS) c?a Ð?i h?c Colorado Boulder là l?a ch?n lý tu?ng cho nh?ng ngu?i h?c t?p trung vào s? nghi?p mong mu?n du?c hu?ng l?i t? m?t chuong trình toàn di?n , phuong pháp ti?p c?n da ngành. Chuong trình này t?n d?ng chuyên môn vô song c?a gi?ng viên v? th?ng kê, khoa h?c d? li?u, khoa h?c máy tính, x? lý ngôn ng? t? nhiên, khoa h?c thông tin, v.v.</br>', CAST(N'2022-05-17' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (2, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/Copy-of-Blog-Header-Image-V2.png', N'V?i tuy?n sinh d?a trên hi?u su?t, Mattison Hineline có th? ki?m du?c b?ng th?c si và theo du?i s? nghi?p m?i trong khoa h?c d? li?u', N'<br>Sau khi t?t nghi?p c? nhân tâm lý h?c, Mattison Hineline chuy?n d?n Tây Ban Nha d? d?y ti?ng Anh. Trong th?i gian x?y ra d?i d?ch, cô b?t d?u tham gia các l?p l?p trình tr?c tuy?n và ngày càng b? thu hút b?i các s? li?u th?ng kê và bi?u d? du?c s? d?ng d? theo dõi tác d?ng c?a COVID-19. Khi m?i quan tâm c?a cô d?i v?i d? li?u và l?p trình ngày càng tang, Mattison b?t d?u nghi v? kh? nang phát tri?n s? nghi?p trong linh v?c khoa h?c d? li?u.</br>

<br>Cô xác d?nh r?ng mình mu?n l?y b?ng th?c si nhung l?i lo ng?i v? chi phí, s? thi?u th?n c?a mình. v? kinh nghi?m khoa h?c d? li?u và nh?ng thách th?c khi chuy?n t? Tây Ban Nha tr? l?i Hoa K?. Vì v?y, cô ?y b?t d?u xem xét các l?a ch?n tr?c tuy?n.</br>

<br>Mattison dã quen thu?c v?i Coursera, sau khi tham gia khóa h?c Gi?i thi?u v? Gi?i tích khóa h?c. Sau hai tháng nghiên c?u, cô k?t lu?n r?ng Th?c si Khoa h?c v? Khoa h?c d? li?u chuong trình (MS-DS) c?a Ð?i h?c Colorado Boulder trên Coursera dã mang d?n co h?i phù h?p cho cô ?y.</br>

<br>Chuong trình linh ho?t, giá c? ph?i chang và co c?u tuy?n sinh d?a trên thành tích; có nghia là cô ?y không ph?i lo l?ng v? nh?ng th? nhu b?ng di?m, di?m trung bình ho?c Ði?m GRE; cô ?y ch? c?n ch?ng minh r?ng cô ?y có th? làm du?c công vi?c và cô ?y s? du?c ch?p nh?n. Quy?t tâm theo du?i s? nghi?p m?i trong khoa h?c d? li?u, cô dã dang ký thành công vào Th?c si Khoa h?c v? Khoa h?c d? li?u (MS-DS) c?a Ð?i h?c Colorado Boulder trên Coursera</br>

<br>Tôi s? không có co h?i l?y b?ng th?c si khoa h?c d? li?u n?u tôi không không tìm th?y chuong trình MS-DS trên Coursera.</br>

<br>Sau khi có nh?ng e ng?i ban d?u v? vi?c thi?u kinh nghi?m c?a mình, cô nh?n th?y mình có th? nh?n du?c s? h? tr? c?n thi?t m?i khi g?p tr? ng?i: "Tôi dã v?t l?n v?i khóa h?c th?ng kê th? hai c?a mình và ph?i d?n gi? hành chính r?t nhi?u. Ngu?i hu?ng d?n khóa h?c dã th?c s? giúp gi?i thích tài li?u và d?m b?o r?ng tôi không ch? vu?t qua l?p h?c mà còn hi?u các khái ni?m. Thông tin b?n h?c du?c r?t quan tr?ng d?i v?i các d? án, khóa h?c và công vi?c trong tuong lai c?a b?n. Vi?c hi?u n?i dung cung quan tr?ng nhu vi?c vu?t qua khóa h?c."</br>

<br>Mattison cung dã có th? k?t n?i v?i các sinh viên khác. Cô ?y và nh?ng ngu?i b?n h?c c?a mình k?t n?i thông qua kênh Slack du?c chia s? và sinh viên th?m chí còn t? ch?c các nhóm h?c t?p t? xa d? nói chuy?n trong su?t khóa h?c. G?n dây, cô ?y dã có du?c k? th?c t?p khoa h?c d? li?u d?u tiên c?a mình và cô ?y hi?n dang có k? ho?ch t?t nghi?p vào nam 2023 và chuy?n ngay sang vai trò khoa h?c d? li?u&mdash;lý tu?ng nh?t là t?i m?t công ty kh?i nghi?p.</br>

<br>M?o l?n nh?t c?a cô ?y dành cho sinh viên m?i? Tru?c tiên hãy b?t d?u v?i m?t khóa h?c không tín ch? d? làm quen v?i tài li?u khóa h?c và hình th?c h?c tr?c tuy?n. Cô ?y cung khuyên b?n nên tích c?c trên Slack, tham d? gi? hành chính và ti?p c?n v?i các d?ng nghi?p. " Có tính giao ti?p"; cô ?y nói, "d?ng nghia v?i thành công!"N?u b?n quan tâm d?n vi?c theo du?i s? nghi?p khoa h?c d? li?u và mu?n làm theo l?i khuyên c?a Mattison và t? mình th? m?t khóa h?c, chúng tôi khuyên b?n nên Các k? nang quan tr?ng cho chuyên môn khoa h?c d? li?u là di?m kh?i d?u tuy?t v?i cho ngu?i m?i b?t d?u. Ðó là m?t cách tuy?t v?i d? n?m v?ng các nguyên t?c co b?n v? khoa h?c d? li?u và sau khi b?n dã hoàn thành phiên b?n không c?p tín ch? c?a khóa h?c, b?n có th? chuy?n công vi?c c?a mình sang phiên b?n tr? phí, l?y tín ch? và phiên b?n này s? du?c tính vào b?ng c?p c?a b?n.</br>

<br>Ði?u này hoàn toàn tr?c tuy?n Th?c si Khoa h?c trong Khoa h?c d? li?u (MS-DS) c?a Ð?i h?c Colorado Boulder là l?a ch?n lý tu?ng cho nh?ng ngu?i h?c t?p trung vào ngh? nghi?p mong mu?n du?c hu?ng l?i t? cách ti?p c?n da ngành, toàn di?n. Chuong trình này thúc d?y chuyên môn vô song c?a gi?ng viên v? th?ng kê, khoa h?c d? li?u, khoa h?c máy tính, x? lý ngôn ng? t? nhiên, khoa h?c thông tin, v.v.</br>', CAST(N'2022-05-04' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (3, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/04/0001-1536x804.jpg', N'Ðu?c nh?n vào chuong trình Th?c si K? thu?t m?i c?a CU Boulder v? Qu?n lý K? thu?t b?ng cách hoàn thành Chuyên ngành 3 khóa', N'<br>Hôm nay, chúng tôi r?t vui du?c chia s? thêm v? b?ng Th?c si K? thu?t v? Qu?n lý K? thu?t (ME-EM) c?a Ð?i h?c Colorado Boulder m?t tru?ng d?i h?c nghiên c?u hàng d?u du?c x?p h?ng trong 1% hàng d?u trong s? các tru?ng d?i h?c trên toàn c?u.</br>

<br>Ð?i h?c Colorado Boulder (CU Boulder) du?c công nh?n v? giá tr? và tác d?ng c?a các chuong trình t?p trung vào ngh? nghi?p. B?ng c?p m?i này k?t h?p các ngành k? thu?t và qu?n lý d? trang b? cho sinh viên nh?ng k? nang c?n thi?t d? d?m nh?n các vai trò qu?n lý k? thu?t và k? thu?t có tác d?ng cao. Ðu?c thi?t k? b?i các nhà lãnh d?o ngành công nghi?p, chuong trình này chu?n b? cho sinh viên vai trò lãnh d?o và qu?n lý trong k? thu?t và công ngh?. H?c sinh s? h?c cách bi?n k? thu?t thành kinh doanh t? vi?c giao ti?p hi?u qu? v?i các bên liên quan k? thu?t và phi k? thu?t d?n d?n d?t s? phát tri?n c?a các d? án k? thu?t ph?c t?p.</br>

<br>Khi công ngh? bi?n d?i các ngành, nhu c?u v? k? su ti?p t?c tang v?i g?n 140.000 vi?c làm m?i t?i Hoa K? du?c t?o ra vào nam 2026. Các nhà tuy?n d?ng dang tìm ki?m nh?ng chuyên gia có th? t?ng h?p chuyên môn công ngh? v?i k? nang qu?n lý d? thúc d?y tác d?ng kinh doanh. K? t? nam 2016, Di?n dàn kinh t? th? gi?i; Báo cáo Tuong lai c?a Vi?c làm dã cho th?y nhu c?u ngày càng tang d?i v?i các k? nang c?a con ngu?i, ch?ng h?n nhu qu?n lý, ra quy?t d?nh và giao ti?p, trong b?i c?nh t? d?ng hóa tang t?c.</br>

<br>ME-EM, chuong trình gi?ng d?y c?t lõi giúp sinh viên xây d?ng các k? nang co b?n có giá tr? v? giao ti?p, qu?n lý d? án, tài chính và lãnh d?o trong khi các khóa h?c t? ch?n trau d?i chuyên môn k? thu?t c?a h? trong các ch? d? t? phát tri?n s?n ph?m d?n k? thu?t h? th?ng. V?i tr?ng tâm là h?c t?p ?ng d?ng trong th? gi?i th?c, các khóa h?c liên quan d?n các nghiên c?u tình hu?ng trong ngành, b? d? li?u và d? án. Sinh viên có th? tuong tác nhi?u hon v?i ngu?i hu?ng d?n thông qua gi? làm vi?c tr?c ti?p hàng tu?n và c?ng tác v?i các d?ng nghi?p c?a mình trong các d? án nhóm và di?n dàn th?o lu?n.</br>

<br>Chúng tôi t? hào m? r?ng quan h? d?i tác v?i Coursera d? làm cho giáo d?c qu?n lý k? thu?t tr? nên hi?u qu? hon d? ti?p c?n và linh ho?t v?i phuong th?c c?p b?ng m?i này Christy Bozic, Giám d?c Chuong trình Qu?n lý K? thu?t t?i CU Boulder cho bi?t. Chuong trình c?a chúng tôi du?c c?u trúc d?c dáo d? thu hút các ?ng viên t? nhi?u ngu?n g?c khác nhau. Tuy?n sinh hoàn toàn không c?n n?p don, thay vào dó d?a trên hi?u su?t trong m?t lo?t các khóa h?c d?u vào; t?t c? các sinh viên duy trì di?m trung bình B s? t? d?ng du?c nh?n. Vi?c có chuong trình trên Coursera giúp chúng tôi ti?p c?n các chuyên gia dang làm vi?c trên kh?p th? gi?i, nh?ng ngu?i dang mu?n bi?n vi?c h?c c?a h? thành s? thang ti?n trong s? nghi?p; thu?ng xuyên trong khi v?n làm vi?c toàn th?i gian.</br>

<br>CU Boulder dã s?m d?i m?i các chuong trình c?p b?ng d?a trên hi?u su?t trên n?n t?ng Coursera, d?nh hình các l? trình hòa nh?p hu?ng t?i m?t n?n giáo d?c ch?t lu?ng cao. B?t d?u t? tháng 8, h?c sinh có th? dang ký tham gia l? trình thành tích các khóa h?c d? du?c nh?n vào van b?ng th? ba c?a tru?ng d?i h?c trên Coursera.</br>

<br>Chúng tôi r?t vinh d? du?c h?p tác v?i CU Boulder d? d?nh hình l?i tuong lai c?a b?ng c?p, uu tiên kh? nang ti?p c?n, tính linh ho?t và giáo d?c phù h?p v?i công vi?c, d? tác d?ng sinh viên trên toàn th? gi?i.</br>

<br>Ðang ký c?p d? ME-EM s? m? vào tháng 8 cho nhóm thu?n t?p mùa thu nam 2022.</br>', CAST(N'2022-04-06' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (4, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/UNTBAAS_Jaina.jpg', N'Ngu?i h?c t?p su?t d?i Jaina Bellanca dang l?y b?ng tr?c tuy?n d? cô ?y có th? b?t d?u s? nghi?p m?i c?a mình', N'<br>Jaina Bellanca mô t? mình là m?t ngu?i t? ch?. Cô ?y thích d?t ra nh?ng m?c tiêu d?y tham v?ng và d?t du?c chúng&rdquo; và chính suy nghi này dã thúc d?y cô ?y ti?p t?c h?c h?i nh?ng k? nang và ki?n th?c m?i. Cô ?y t? lâu dã là m?t ngu?i h?c tích c?c, ki?m du?c b?ng cao d?ng vào nam 2014 và tham gia các khóa h?c trên Coursera trong th?i gian r?nh r?i trong nh?ng nam g?n dây. H?c t?p su?t d?i là m?c tiêu c?a tôi ngay t? d?u.</br>

<br>Khi Jaina quy?t d?nh theo du?i s? nghi?p v?i tu cách là ngu?i qu?n lý d? án chi?n lu?c, cô ?y bi?t mình c?n ph?i h?c m?t s? k? nang m?i. Là m?t ngu?i h?c h?i su?t d?i, dó không ph?i là m?t thách th?c nhung giá c? và th?i gian thì có. Ki?m du?c b?ng c? nhân có ý nghia d?i v?i các k? ho?ch ngh? nghi?p c?a cô ?y, nhung vi?c tìm ki?m m?t chuong trình mà cô ?y có d? kh? nang chi tr? và phù h?p v?i l?ch trình b?n r?n c?a mình không h? d? dàng.</br>

<br>Cô ?y dã chuy?n sang Coursera và khám phá ra C? nhân Khoa h?c Ngh? thu?t ?ng d?ng (B.A.A.S.) chuong trình do Ð?i h?c B?c Texas (UNT) cung c?p. Ðó chính là th? cô ?y c?n. Th?c t? là nó tr?c tuy?n dã giúp ích cho tôi và h? xác nh?n t?t c? các l?p h?c tru?c dây c?a tôi, di?u dó th?t tuy?t vì tôi dã h?c r?t nhi?u.</br>

<br>Jaina hi?n dang theo du?i b?ng c?p và vi?c h?c c?a mình các k? nang kinh doanh thi?t y?u c?n thi?t d? thành công trong linh v?c m?i du?c ch?n c?a cô ?y. Cô ?y dã suy nghi tru?c v? con du?ng s? nghi?p cung nhu hành trình h?c t?p c?a mình. Tôi dã m? r?ng b? k? nang kinh doanh c?a mình và dang mong d?i l?n th?c t?p qu?n lý d? án chi?n lu?c d?u tiên c?a mình&rdquo; cô ?y nói, nhung tôi cung mu?n theo du?i h?c v?n cao hon thông qua chuong trình th?c si ho?c ti?n si.</br>

<br>Ngay c? khi cô ?y t?p trung cao d? vào các m?c tiêu ngh? nghi?p qu?n lý d? án c?a mình, cô ?y v?n tìm th?i gian d? khám phá các ch? d? khác và cô ?y r?t thích có th? dua các khóa h?c phi kinh doanh vào nghiên c?u c?a mình. Tôi yêu thích các l?p h?c l?ch s? và chính tr? c?a mình, Jaina nói. H? th?c s? dua b?n d?n nh?ng di?u khác nhau. Ðó là m?t co h?i tuy?t v?i d? m? r?ng ki?n th?c c?a tôi. Chuong trình này hoàn toàn phù h?p v?i tôi.</br>

<br>B?ng C? nhân Khoa h?c và Ngh? thu?t ?ng d?ng (B.A.A.S.) ch?p nh?n và xây d?ng d?a trên các tín ch? tru?c dây c?a sinh viên, k?t h?p chúng v?i các môn h?c ? tám m?c d? khác nhau d? sinh viên có th? d?t du?c các m?c tiêu cá nhân và ngh? nghi?p c?a h?.</br>', CAST(N'2022-03-29' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (5, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/UNTBAAS_Alberto.jpg', N'UC Chile và Coursera công b? ba b?ng th?c si tr?c tuy?n t?p trung vào các k? nang c?a tuong lai', N'Hôm nay, tôi là t? hào công b? ba van b?ng ti?ng Tây Ban Nha m?i t? Ð?i h?c Pontificia Cat de Chile (UC Chile) Tru?ng d?i h?c s? 1 ? M? Latinh. Ðây là nh?ng chuong trình c?p b?ng d?u tiên c?a m?t tru?ng d?i h?c Chile trên Coursera. M? Latinh không tìm du?c ?ng viên có k? nang h? c?n d? duy trì tính c?nh tranh, so v?i 36% công ty ? các nu?c OECD. Các chuong trình c?p b?ng m?i này c?a UC Chile du?c thi?t k? d? giúp nh?ng ngu?i nói ti?ng Tây Ban Nha trong khu v?c và trên toàn th? gi?i phát tri?n các k? nang c?n thi?t d? thành công trong quá trình chuy?n d?i k? thu?t s?.</br>

Các chuong trình này s? m? don dang ký vào ngày 8 tháng 3 nam 2022</br>

Ciencia de Datos (Th?c si Khoa h?c d? li?u), b?ng cách s? d?ng các công c? tính toán tiên ti?n, b?ng c?p này dào t?o ngu?i h?c v? c? nguyên t?c co b?n và ?ng d?ng x? lý, mô hình hóa và phân tích d? li?u. Chuong trình gi?ng d?y s? bao g?m các ch? d? quan tr?ng nhu l?p trình, công ngh? ph?n m?m, tr?c quan hóa d? li?u và d?o d?c d? li?u. Sinh viên t?t nghi?p s? s?n sàng làm vi?c trong môi tru?ng h?c thu?t ho?c v?i tu cách là k? su d? li?u, nhà khoa h?c d? li?u và nhà phân tích d? li?u t?i các công ty hàng d?u. Finanzas Aplicadas (Th?c si Ð?u tu và Tài chính ?ng d?ng). Chuong trình này s? s? d?ng các k? thu?t m?i nh?t d? cung c?p m?t n?n giáo d?c co b?n v? tài chính và d?u tu cung nhu ?ng d?ng c?a nó vào th? gi?i kinh doanh. Chuong trình gi?ng d?y bao g?m các linh v?c nhu th? tru?ng v?n, phân tích tài chính, tài chính doanh nghi?p và tài chính d? d?u tu. Sinh viên t?t nghi?p s? du?c chu?n b? cho các v? trí di?u hành trong linh v?c tài chính và d?u tu.</br>', CAST(N'2022-03-01' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (6, N'https://d1zdxptf8tk3f9.cloudfront.net/articles/1418/large/Screen_Shot_2022-06-21_at_9.53.59_AM.png?1655828124', N'Sau mu?i nam t? kinh doanh, doanh nhân Ana Said dã quy?t d?nh l?y b?ng c? nhân tr?c tuy?n d? phát tri?n s? nghi?p c?a mình', N'<br>Ana Said là m?t doanh nhân dã xây d?ng và di?u hành công vi?c kinh doanh c?a riêng mình trong g?n m?t th?p k?. Cô d?t du?c thành công nh? làm vi?c cham ch? và s?n sàng h?c h?i trong công vi?c. Cam k?t h?c các k? nang m?i này d?c bi?t quan tr?ng vì cô ?y dã thành l?p doanh nghi?p c?a mình tru?c khi l?y b?ng c? nhân. B?t ch?p nh?ng thành tích c?a mình, cu?i cùng cô ?y dã d?t d?n di?m mà cô ?y c?m th?y mình không th? ti?n xa hon n?a trong s? nghi?p. Cô b?t d?u t? h?i li?u ki?m du?c b?ng c?p bây gi? có ý nghia gì d?i v?i m?c tiêu c?a mình hay không. Cô ghi công m? mình, m?t chuyên gia v? h?c tr?c tuy?n, vì cô dã ti?p xúc v?i các kh? nang h?c tr?c tuy?n. Kinh nghi?m giúp m? làm video và thi?t k? cho các l?p h?c tr?c tuy?n c?a Ana dã khoi d?y s? tò mò c?a cô d?i v?i vi?c h?c tr?c tuy?n và s? dánh d?u bu?c kh?i d?u cho s? nghi?p làm vi?c t? do c?a cô. Du?i dây, Ana chia s? câu chuy?n c?a mình v? quy?t d?nh ghi danh vào chuong trình c? nhân, cách c?ng d?ng m?i giúp cô vu?t qua nh?ng thách th?c liên quan d?n vi?c có kho?ng cách h?c v?n trong h? so xin vi?c và di?u khi?n cô ng?c nhiên nh?t khi h?c tr?c tuy?n. Tôi dã tr?i qua mu?i nam làm tr? lý t? kinh doanh, thu du?c nhi?u k? nang và kinh nghi?m s?ng thông qua vi?c t? ch?c và qu?n lý các công vi?c liên quan d?n cu?c s?ng và công vi?c kinh doanh c?a ngu?i khác. Nh?ng ngu?i tuy?t v?i mà tôi g?p trên du?ng dã truy?n c?m h?ng cho tôi dánh giá xem tôi dang ? dâu và tôi có th? di dâu. Tôi nh?n ra r?ng mình dã d?t d?n di?m mà tôi bi?t mình mu?n có m?t s? nghi?p chuyên bi?t hon&mdash;m?t ngh? mà tôi không ch? nh?n b?t c? công vi?c nào mà tôi có th? tìm du?c. Nhung vi?c hoàn thành chuong trình c? nhân c?a tôi không h? th?c t? chút nào. Bây gi? tôi dang ? d? tu?i 30. Ý nghi v? vi?c di?u ch?nh l?i l?ch trình c?a mình, tr? h?c phí trong khi làm vi?c ít hon, di l?i nhi?u hon&mdash;chua k? d?n s? khác bi?t v? tu?i tác v?i b?n bè d?ng trang l?a và c?m giác chung là không bi?t b?t d?u t? dâu&mdash;là quá nhi?u và tôi c? trì hoãn nó. M? tôi, m?t hình m?u to l?n d?i v?i tôi, làm vi?c trong linh v?c giáo d?c tr?c tuy?n. Cô ?y nói v?i tôi v? chuong trình C? nhân Khoa h?c Ngh? thu?t ?ng d?ng (BAAS) du?c cung c?p trên Coursera. L?n d?u tiên, vi?c hoàn thành chuong trình d?i h?c c?a tôi th?c s? có v? th?c t?. Nó tr?c tuy?n, v?i m?t l?ch trình linh ho?t và tôi có th? tham gia các l?p h?c mà tôi c?n. Có v? nhu chuong trình này du?c t?o ra cho nh?ng ngu?i trong hoàn c?nh c?a tôi. Tôi dã nghi r?ng vi?c h?c tr?c tuy?n s? ch? dành cho tôi trên máy tính c?a mình. Nhung các nhân viên tu v?n th?c s? h?u ích và nhanh chóng tr? l?i. Và l?p h?c có n?n t?ng th?o lu?n và kênh trò chuy?n. Chúng ta có th? th?o lu?n v? các l?p h?c, d?t và tr? l?i các câu h?i cung nhu chia s? nh?ng kinh nghi?m có liên quan c?a mình. Ði?u này dã nâng cao k? nang làm vi?c v?i nh?ng ngu?i khác t? xa c?a tôi, dó là m?t l?i th? l?n trong b?i c?nh ngày nay. Tôi dã k?t n?i v?i nh?ng ngu?i cung truy?n c?m h?ng cho tôi d? ti?p t?c. H? bi?t có kho?ng cách dó trong giáo d?c là nhu th? nào, nhung h? s?n sàng n? l?c vì b?n thân, vì gia dình và vì s? nghi?p c?a h?. Ðó là m?t th? thách, nhung tôi dang d?m nh?n nhi?u hon nh?ng gì tôi t?ng nghi mình có th?. Tôi dã dang ký h?c c? v? qu?n tr? và hành vi ngu?i tiêu dùng. Tôi dang hi?u cách các t? ch?c du?c thi?t l?p cho các khía c?nh khác nhau c?a giao ti?p và d?ng l?c&mdash;di?u gì thúc d?y d?ng l?c, cách các nhóm làm vi?c cùng nhau và cách d? phòng nh?ng c?m b?y nh?t d?nh. Nó dã giúp tôi th?c s? hi?u t?i sao tôi dang làm nh?ng vi?c mà tôi dang làm m?t cách chuyên nghi?p và làm th? nào d? phát tri?n v?i tu cách là m?t nhà lãnh d?o. Sau khi t?t nghi?p, tôi có th? phát tri?n công vi?c kinh doanh c?a riêng mình hon n?a d? ph?c v? khách hàng t?t hon và có th? thuê ngu?i khác vào m?t ngày nào dó. Tôi hi?u làm th? nào d? xây d?ng nó t? d?u. UNT ghép t?ng sinh viên C? nhân Khoa h?c và Ngh? thu?t ?ng d?ng (B.A.A.S.) v?i m?t c? v?n d? t?o m?t k? ho?ch c?p b?ng tùy ch?nh t?p trung vào &ldquo;nh?ng m?nh còn thi?u&rdquo; h? c?n d? hoàn thành. H? th?ng tu v?n này mang d?n cho sinh viên s? linh ho?t c?n thi?t d? xác d?nh con du?ng nhanh nh?t d?t du?c b?ng c?p trong khi v?n d?m b?o tính phù h?p v?i m?c tiêu ngh? nghi?p c?a h?.</br>', CAST(N'2022-06-30' AS Date), 0, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (7, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/UNTBAAS_Cheyney.jpg', N'5 Phiên ph?i xem t? H?i ngh? Coursera 2022', N'<br>H?i ngh? Coursera thu?ng niên l?n th? 10 c?a chúng tôi g?n dây dã mang d?n co h?i duy nh?t cho d?i ngu lãnh d?o Coursera, d?i di?n t? các t? ch?c d?i tác c?a chúng tôi và hon 3.000 ngu?i tham gia t? kh?p noi trên th? gi?i cùng nhau thông qua cam k?t chung nh?m thay d?i cu?c s?ng thông qua h?c t?p.</br>

<br>S? ki?n có hon 40 phiên th?o lu?n khám phá nh?ng co h?i m?i cho tuong lai h?c t?p và làm vi?c trong th? gi?i k? thu?t s?. B?n có th? xem b?n ghi c?a h?u h?t các s? ki?n theo yêu c?u trong ph?n mô t? phiên trên trang chuong trình làm vi?c c?a trang web s? ki?n.</br>

<br>Chúng tôi dã tóm t?t nh?ng di?m n?i b?t. Bây gi?, trong bài vi?t này, chúng tôi mu?n thu hút s? chú ý c?a b?n d?n nam phiên n?i b?t d?i v?i chúng tôi.</br>

<br>Ð?u tu vào di?u t?t nh?t: T?o ra van hóa h?c t?p d? thúc d?y l?i th? c?nh tranh</br>

<br>Van hóa h?c t?p có th? là s? khác bi?t gi?a vi?c thúc d?y k?t qu? kinh doanh và chuy?n d?i k? thu?t s? hay trì tr?. Tuy nhiên, van hóa này thu?ng khó xây d?ng.</br>

<br>Trong ph?n này, Jennie Drimmer, Giám d?c bán hàng khu v?c c?p cao t?i Coursera và Bartosz Zieleznik, Tru?ng b? ph?n h?c t?p tr?c tuy?n t?i Prosus, dã th?o lu?n v? cách h? thích nghi v?i s? thay d?i vai trò c?a h?c t?p và phát tri?n, kinh nghi?m c?a h? trong vi?c xây d?ng van hóa h?c h?i và cách h? d?u tu vào l?c lu?ng lao d?ng c?a mình d? duy trì l?i th? c?nh tranh.</br>

<br>Du?i dây là m?t s? di?m chính:</br>

<br>T?i sao vi?c thi?t l?p van hóa h?c t?p l?i quan tr?ng?</br>

<br>Ðó là m?t d? xu?t giá tr? cho nhân viên mà b?n có th? s? d?ng d? thu hút m?i ngu?i vào công ty c?a mình. B?n cung c?n có kh? nang t?o d? s? di chuy?n c?a nhân tài trong l?c lu?ng lao d?ng c?a mình b?ng cách h? tr? h? b?ng các bi?n pháp can thi?p h?c t?p phù h?p.</br>

<br>Ði?u quan tr?ng c?n nh?n ra là van hóa h?c t?p không ph?i là th? b?n c?n trong tuong lai xa. Ði?u dó ph?i di?n ra ngay bây gi? vì chúng tôi là c?t lõi c?a cu?c chi?n giành nhân tài và s? di chuy?n n?i b? cung nhu trò choi dào t?o l?i k? nang mà chúng tôi mu?n tri?n khai trong m?i công ty.</br>

<br>B?n xây d?ng van hóa h?c t?p nhu th? nào ?</br>

<br>B?n c?n ng?i xu?ng v?i nhóm di?u hành và trình bày m?t tru?ng h?p kinh doanh v? lý do t?i sao vi?c h?c l?i quan tr?ng. Ví d?, n?u b?n xây d?ng m?t b? ph?n AI, nó không c?n ph?i quá l?n m?i có tác d?ng dáng k?. Có nh?ng cu?c trò chuy?n này d? thu hút nhóm di?u hành lên tàu là di?u d? dàng. Ph?n khó khan là d?n d?u b?ng ví d?. Cách nhóm di?u hành c?a b?n h?c h?i và s? d?ng các s?n ph?m h?c t?p và phát tri?n c?a b?n s? xác d?nh cách van hóa h?c t?p c?a b?n lan t?a trong c?ng d?ng c?a b?n.</br>

<br>Truy?n c?m h?ng cho nhóm di?u hành b?ng nh?ng câu chuy?n th?c t?. M?i khi b?n mu?n thuy?t trình v? vi?c h?c, hãy chu?n b? s?n tài kho?n tr?c ti?p c?a m?t ngu?i dã hoàn thành khóa h?c. Nó tang cu?ng tru?ng h?p kinh doanh c?a b?n. Kho?ng 50% th?i gian c?a b?n nên dành cho vi?c giáo d?c d?i ngu lãnh d?o. Tuy nhiên, các nhà qu?n lý c?p trung r?t quan tr?ng d?i v?i s? thành công c?a vi?c thi?t l?p van hóa h?c h?i xuyên su?t toàn b? t? ch?c.</br>

<br>T?i sao qu?n lý c?p trung l?i quan tr?ng d?n v?y?

<br>S? là t?t nh?t n?u b?n h?p pháp hóa vi?c h?c trong ngày làm vi?c c?a m?t ngu?i. B?n có th? d?t du?c di?u dó b?ng cách giáo d?c các nhà qu?n lý và nói v?i h? r?ng b?n r?t nghiêm túc trong vi?c h?c h?i, d?ng th?i h?i h? mu?n t?o không gian nào d? nhóm c?a h? phát tri?n.

<br>Chúng tôi có xu hu?ng xem xét s? lu?ng dang ký so v?i s? l?n hoàn thành, nhung dôi khi vi?c t?p trung vào s? lu?ng có th? gây b?t l?i. Vì v?y, chúng tôi b?t d?u th? nghi?m b?ng cách h?i các sinh viên t?t nghi?p c?a chúng tôi v? b?t k? m?o và th? thu?t nào mà h? có d?i v?i nh?ng ngu?i tham gia cùng khóa h?c. M?i ngu?i tr? l?i v?i d? lo?i thông tin chi ti?t: ví d?: dành th?i gian d? h?c thu?ng xuyên và phù h?p v?i ngu?i qu?n lý c?a h? là chìa khóa thành công c?a h?. B?ng cách thu hút s? ?ng h? c?a các nhà qu?n lý, b?n s? t?o ra m?t nhóm nh?ng ngu?i h? tr? giúp van hóa h?c t?p này tr? nên kh? thi.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (8, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/simon-shareka.png', N'T?i sao thay d?i l?i quan tr?ng: Trò chuy?n bên lò su?i v?i Simon Sinek', N'<br>V?i vai trò là Lãnh d?o Phát tri?n và Van hóa Coursera, g?n dây tôi r?t hân h?nh du?c chào dón tác gi?, nhà lãnh d?o có t?m nhìn và tu tu?ng Simon Sinek d?n tham d? H?i ngh? Coursera thu?ng niên l?n th? 10. Trong cu?c trò chuy?n bên l? 1:1 d?c quy?n, chúng tôi dã th?o lu?n v? vi?c thúc d?y thay d?i t?i noi làm vi?c, h?c h?i nhu m?t phuong ti?n d? ti?n b? cung nhu vai trò c?a s? da d?ng và hòa nh?p trong vi?c t?o ra s? thay d?i có ý nghia cho các t? ch?c.</br>

<br>Simon Sinek là tác gi? c?a cu?n sách bán ch?y nh?t Start With Why, b?t d?u m?t phong trào giúp m?i ngu?i có nhi?u c?m h?ng hon trong công vi?c và t? dó truy?n c?m h?ng cho d?ng nghi?p và khách hàng c?a h?. Bài nói chuy?n trên TED c?a anh ?y v? ch? d? này dã du?c hon 28 tri?u ngu?i theo dõi, tr? thành video TED ph? bi?n th? ba m?i th?i d?i.</br>

<br>Xây d?ng van hóa h?c t?p</br>

<br>T?i sao ph?i ch? d?ng thúc d?y s? thay d?i thành m?t quy?t d?nh kinh doanh an toàn?</br>

<br>Ngay c? bây gi?, r?t nhi?u ngành v?n chua tìm ra cách di?u ch?nh mô hình kinh doanh c?a h? v?i internet. K?t qu? là, các công ty t? bên ngoài dã d?n và phá v? toàn b? ngành công nghi?p.</br>

<br>L?y ngành công nghi?p di?n ?nh làm ví d?. M?i hãng phim ho?c hãng phim truy?n hình duong nhi?m có th? dã xác d?nh l?i tuong lai c?a truy?n hình v?i s? phát tri?n c?a internet. Nhung h? dã không làm th?, h? bám vào mô hình kinh doanh cu c?a mình.</br>

<br>Netflix dã c? g?ng thuy?t ph?c Blockbuster mua l?i h? và Giám d?c di?u hành c?a Blockbuster vào th?i di?m dó mu?n th? nghi?m phát tr?c tuy?n. Tuy nhiên, h?i d?ng qu?n tr? không cho phép anh ta thay d?i mô hình kinh doanh, b?i vì công ty ki?m du?c 12% doanh thu t? các kho?n phí mà h? tính khi khách hàng tr? l?i dia DVD mu?n. Và bây gi? Blockbuster không t?n t?i. Ch? vì b?n dã b? qua di?u gì dó trong quá kh? không có nghia là di?u dó s? hi?u qu? trong tuong lai.</br>

<br>Ðâu là rào c?n chính d? xây d?ng van hóa h?c h?i?</br>

<br>Th? gi?i dã thay d?i, và n?u b?n không d?u tu vào m?t chuong trình h?c t?p m?nh m?, b?n s? t? d?t mình vào m?t th?m h?a sau này khi b?n nh?n ra mình không có l?i th? c?nh tranh d? gi?i thích t?i sao m?i ngu?i s? mu?n làm vi?c cho b?n.</br>

<br>Các công ty thu?ng làm vi?c d? bi?t b?t d?u t? dâu và nói r?ng h? không có ngân sách. Nhung b?n có th? b?t d?u ? b?t c? dâu. B?n có th? b?t d?u v?i nh?ng gì b?n hi?u và không ph?i lúc nào cung ph?i tr? giá d?t. B?n có th? làm m?t câu l?c b? sách ch?ng h?n? Hãy bi?n nó thành t? nguy?n và c? m?i tu?n ho?c vài tu?n, m?i ngu?i l?i g?p nhau và trò chuy?n v? các chuong c?a cu?n sách mà h? dã d?c.</br>

<br>Chuong trình h?c t?p có th? du?c phát tri?n t?i nhà. Nó không c?n ph?i du?c hoàn thành ngay l?p t?c. Ch? c?n h?i ai quan tâm d?n ch? d? hi?n t?i, và b?n s? ng?c nhiên v? s? lu?ng thành viên trong nhóm c?a b?n dã nghiên c?u v? ch? d? dó. M?i h? chia s? di?u h? dang h?c. B?t d?u v?i m?t khóa h?c nh? d? t?o h?ng thú v?i khóa h?c dó và xem nó tr? nên gây nghi?n nhu th? nào khi b?n b?t d?u h?c.</br>

<br>Chúng ta càng h?c nhi?u, di?u dó càng mang l?i l?i ích không ch? cho b?n thân mà còn cho nh?ng ngu?i xung quanh chúng ta &ndash; d?ng nghi?p và d?ng nghi?p c?a chúng tôi, gia dình c?a chúng tôi, và t?t c? nh?ng ngu?i chúng tôi yêu thuong và quan tâm. V? co b?n, ch?p nh?n van hóa h?c h?i là ch?p nh?n m?t cu?c s?ng ph?c v?.</br>

<br>Phát tri?n tài nang da d?ng và hòa nh?p</br>

<br>Ða d?ng và hòa nh?p dóng vai trò gì trong vi?c th?c hi?n thay d?i</br>

<br>Thành th?t mà nói, chúng ta không th? có s? thay d?i hi?u qu? n?u không có s? da d?ng. Làm th? nào d? chúng ta gi?i quy?t nh?ng v?n d? khó khan n?u xung quanh chúng ta toàn nh?ng ngu?i l?n lên gi?ng chúng ta, trông gi?ng chúng ta và phát âm gi?ng chúng ta? Chúng tôi k?t thúc v?i m?t ho?c hai quan di?m, nh?ng quan di?m này s? ch? có tác d?ng trong m?t th?i gian ng?n.</br>

<br>M?t khác, các quan di?m da d?ng s? d?n d?n s? d?i m?i và cu?i cùng là nhi?u l?i nhu?n hon. S? h?p nh?t các ý tu?ng t?o ra các gi?i pháp t?t hon nhi?u so v?i cách ti?p c?n m?t kích c? phù h?p v?i t?t c?. Nó mang l?i l?i ích cho các t? ch?c và cung có ý nghia van hóa. Các nhóm trong các công ty này có th? th? hi?n tinh th?n d?ng d?i t?t hon và tò mò v? ý tu?ng c?a nhau hon là phán xét.</br>', CAST(N'2022-05-06' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (9, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/04/Coursera-AWS-joint-logos-1024x536.png', N'Coursera h?p tác v?i AWS d? m? r?ng dào t?o v? di?n toán dám mây cho các doanh nghi?p', N'<br>T?c d? d?i m?i dang tang nhanh và các nhà lãnh d?o doanh nghi?p t?p trung hon vào vi?c xây d?ng l?c lu?ng lao d?ng v?i các k? nang k? thu?t s? du?c yêu c?u cao d? phát tri?n trong tuong lai.</br>

<br>Hôm nay, Coursera vui m?ng thông báo r?ng h? dã gia nh?p Amazon M?ng Ð?i tác D?ch v? Web (AWS) (APN), m?t c?ng d?ng toàn c?u g?m hon 100.000 công ty cung c?p các gi?i pháp và d?ch v? Công ngh? Thông tin (CNTT) cho các doanh nghi?p. Thông qua thông báo này, Coursera s? cung c?p khóa dào t?o v? dám mây AWS, cùng v?i khóa dào t?o k? nang r?ng hon d? giúp các công ty d?y nhanh quá trình chuy?n d?i k? thu?t s?. Ngoài ra, Coursera hi?n s? có s?n cho khách hàng trong AWS Marketplace, m?t danh m?c k? thu?t s? v?i hàng nghìn danh sách ph?n m?m t? các nhà cung c?p ph?n m?m d?c l?p giúp b?n d? dàng tìm ki?m, th? nghi?m, mua và tri?n khai ph?n m?m ch?y trên AWS. Tr?i nghi?m khách hàng tích h?p này cho phép các doanh nghi?p h?p nh?t li?n m?ch vi?c thanh toán, h?p lý hóa quy trình mua s?m và thuong lu?ng các di?u kho?n h?p d?ng tùy ch?nh.</br>

<br>Coursera for Business cung c?p cho các công ty trên toàn c?u s? phát tri?n k? nang d?a trên vai trò v?i n?i dung d?ng c?p th? gi?i, h?c t?p th?c hành và kh? nang theo dõi, do lu?ng và dánh giá các k? nang thông qua m?t n?n t?ng th?ng nh?t, duy nh?t.</br>

<br>Nâng cao m?c d? thành th?o k? nang dám mây là m?t linh v?c c?n thi?t chính d?i v?i các doanh nghi?p dang tìm cách duy trì c?nh tranh trong l?c lu?ng lao d?ng c?a tuong lai. Coursera dang h?p tác v?i AWS d? cho phép các doanh nghi?p cung c?p chuong trình dào t?o trên dám mây phù h?p v?i công vi?c cho nhân viên trên kh?p th? gi?i.</br>

<br>Coursera dang cung c?p nhi?u khóa h?c khác nhau thông qua AWS Marketplace, bao g?m: B?t d?u v?i AWS Machine Learning, c?a Blaine Sundrud; Nguyên t?c co b?n c?a AWS: Xây d?ng ?ng d?ng Serverless, c?a Bobbie Atristain, Adam Becker, Wes Gruver, Jonathan Dion, và Rick Hurst; AWS Cloud Technical Essentials, c?a Alana Layton và Morgan Willis; Trong giai do?n thay d?i nhanh chóng này, ngày càng có nhi?u doanh nghi?p tìm cách khai thác s?c m?nh c?a công ngh? dám mây. Coursera và AWS s? cùng nhau giúp các t? ch?c phát tri?n các k? nang dám mây thi?t y?u c?n thi?t d? m? ra nh?ng cách th?c hi?u qu? hon nh?m m? r?ng quy mô kinh doanh, gi?m chi phí và thúc d?y d?i m?i m?nh m? hon.</br>', CAST(N'2022-04-19' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (10, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/02/Blog-Post-QA-w-Anthony-Tattersall-1200x628-1.png', N'Phát tri?n k? nang lái xe cho l?c lu?ng lao d?ng nam 2030: H?i và dáp v?i Anthony Tattersall. B?n dang th?y nh?ng xu hu?ng nào xung quanh các k? nang t? ngu?i dùng c?a mình?', N'<br>Nh?ng di?u c?t lõi thúc d?y kh? nang c?a m?t t? ch?c là nh?ng k? nang mà m?i ngu?i có và kh? nang khai thác công ngh? c?a h?. Khi các doanh nghi?p th?c s? chuy?n sang di?u này, h? t?p trung vào vi?c tìm hi?u các yêu c?u v? k? nang cho các vai trò ngay bây gi? và trong tuong lai g?n, d?ng th?i tìm ra cách t?t nh?t d? gi?i quy?t kho?ng cách dó. Nh?ng thách th?c là làm th? nào d? vi?c h?c di?n ra trong quy trình làm vi?c c?a h? và cách s? d?ng vi?c dào t?o l?i k? nang d? t?o ra các vai trò trong n?i b? noi vi?c tuy?n d?ng không d? dàng, ch?ng h?n nhu công ngh?, khoa h?c d? li?u, an ninh m?ng, v.v.</br>

<br>Trong Khi làm vi?c v?i các chính ph?, chúng tôi th?y nhi?u qu?c gia dang ph?i v?t l?n v?i tình tr?ng th?t nghi?p sau d?i h?c, m?t ph?n liên quan d?n d?i d?ch và m?t ph?n vì các doanh nghi?p mu?n thuê nh?ng ngu?i dã có k? nang h? c?n. Có nhi?u qu?c gia có s? lu?ng l?n ngu?i làm vi?c trong các ngành có nguy co b? t? d?ng hóa cao và dây thu?ng là nh?ng công vi?c du?c tr? luong th?p hon n?u nh?ng cá nhân dó không du?c ti?p c?n v?i các co h?i h?c t?p d? phát tri?n các b? k? nang m?i, thì don gi?n là s? không có d? vi?c làm d? ph?c v? nh?ng ngu?i dó.</br>

<br>Ð?i v?i các tru?ng d?i h?c, v?n d? không ch? là ki?m cho ai dó công vi?c d?u tiên sau dó t?t nghi?p, dó cung là t?t c? nh?ng kho?nh kh?c chuy?n giao ngh? nghi?p mà m?i ngu?i s? tr?i qua trong cu?c d?i c?a h?. H?u h?t nh?ng ngu?i tham gia l?c lu?ng lao d?ng bây gi? s? tr?i qua b?n ho?c nam s? thay d?i ngh? nghi?p l?n liên quan d?n vi?c nâng cao k? nang dáng k? và các tru?ng d?i h?c có vai trò ngày càng quan tr?ng. Nhung h? cung dang tr?i qua nh?ng thách th?c &mdash; có s? t?p trung l?n vào k?t qu? kh? nang có vi?c làm và các k? nang t?i noi làm vi?c là m?c tiêu thay d?i nhanh chóng, vì v?y n?i dung h?c t?p cu di nhanh chóng. Và làm th? nào d? b?n làm vi?c v?i k? v?ng cao hon v? các chuong trình h?c t?p k?t h?p?</br>

<br>Phuong pháp phát tri?n k? nang c?a Coursera là gì?</br>

<br>C?t lõi c?a chúng tôi là phát tri?n k? nang n?n t?ng chuy?n d?i, vì v?y chúng tôi dang c? g?ng cho phép m?i ngu?i h?c ? m?i noi trên th? gi?i, vào th?i di?m h? ch?n, v?i quy?n truy c?p vào n?i dung t?t nh?t t? các tru?ng d?i h?c l?n và các d?i tác trong ngành. M?c tiêu là s? d?ng phuong pháp h?c ?ng d?ng d? c?i thi?n k? nang, dù là nâng cao k? nang (c?i thi?n các k? nang hi?n t?i trong linh v?c chuyên môn c?a b?n), dào t?o l?i k? nang (dua b?n vào m?t linh v?c chuyên môn hoàn toàn m?i) hay k? nang chuyên sâu (d? th?c s? phát tri?n m?c d? thành th?o).</br>

<br>Ði?u th? hai chúng tôi làm là làm vi?c v?i các t? ch?c d? xác d?nh các b? k? nang c?n thi?t cho t?ng vai trò và ? c?p d? nang l?c nào. Sau dó, chúng tôi có th? ch?n t?ng cá nhân, xem h? dang ? dâu và giúp h? hi?u du?c nh?ng l? h?ng k? nang c?a mình d? h? có th? phát tri?n. T?t c? n?i dung c?a chúng tôi d?u du?c dánh giá, trong m?t s? tru?ng h?p, nhi?u l?n khi b?n ti?n b? qua n?i dung dó, vì v?y, các cá nhân có th? bi?t h? dang ti?n b? nhu th? nào d?i v?i các m?c tiêu k? nang dó và d? các t? ch?c có th? xây d?ng b?i c?nh các k? nang c?a h?, ? các c?p d? thành th?o c? th?.</br>', CAST(N'2022-07-18' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (11, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/ID11835_EmergeBlogPost_ImageCrop_Post2_OPTION2_1200x628.jpg', N'5 cách nhà tuy?n d?ng có th? thúc d?y phát tri?n k? nang cho l?c lu?ng lao d?ng c?a tuong lai', N'<br>G?n 3/4 CEO xác d?nh tình tr?ng thi?u lao d?ng ho?c thi?u k? nang là v?n d? bên ngoài có kh? nang làm gián do?n ho?t d?ng kinh doanh c?a h? nh?t trong 12 tháng t?i, theo m?t báo cáo nam 2021; Kh?o sát c?a Deloitte và Fortune. S? thi?u h?t này g?n li?n v?i quá trình s? hóa tang t?c vào nam 2025. Microsoft d? doán r?ng s? có 149 tri?u vi?c làm k? thu?t s? m?i ch? t?p trung vào di?n toán dám mây, an ninh m?ng, phân tích d? li?u và phát tri?n ph?n m?m.</br>

<br>M?c dù du?c thúc d?y b?i các y?u t? bên ngoài, vi?c gi?i quy?t s? thi?u h?t k? nang b?t d?u t? bên trong m?t t? ch?c. Ki?m soát phát tri?n k? nang là r?t quan tr?ng d?i v?i các doanh nghi?p mu?n duy trì tính c?nh tranh và d?y nhanh quá trình chuy?n d?i kinh doanh. Ði?u này dã du?c xác nh?n b?i 73% s? ngu?i du?c h?i trong Báo cáo xu hu?ng ngu?n nhân l?c toàn c?u nam 2020 c?a Deloitte, ngu?i dã xác d?nh các t? ch?c là th?c th? ch?u trách nhi?m cao nh?t v? phát tri?n l?c lu?ng lao d?ng.</br>

<br>Vi?c uu tiên phát tri?n k? nang cung có th? d?n d?n ho?t d?ng kinh doanh h?u hình k?t qu?. Báo cáo K? nang Ngành c?a Coursera 2021; nh?n th?y r?ng các k? nang c?a nhân viên có liên quan d?n kh? nang ph?c h?i và m?t công ty; kh? nang thích ?ng khi d?i m?t v?i nh?ng thách th?c l?i ích tuong quan v?i hi?u su?t ch?ng khoán. Xét cho cùng, phát tri?n k? nang là m?t chi?n lu?c thu hút và duy trì, m?t chi?n lu?c v? hi?u su?t cung nhu tang tru?ng và ti?t ki?m chi phí dóng vai trò quan tr?ng d?i v?i doanh nghi?p.</br>

<br>Trong báo cáo m?i nh?t c?a mình, Phát tri?n k? nang và dánh giá các con du?ng d?n d?n vi?c làm : T?m nhìn cho nam 2030, Emerge Education và Coursera ki?m tra thêm cách ngu?i s? d?ng lao d?ng có th? k?t n?i t?t hon vi?c phát tri?n các k? nang v?i t?m nhìn dài h?n v? l?c lu?ng lao d?ng c?a h?.</br>

<br>Nhu dã trình bày trong báo cáo, dây là nam di?u mà ngu?i s? d?ng lao d?ng có th? b?t d?u th?c hi?n ngay bây gi? d? t?n d?ng s? phát tri?n k? nang và xây d?ng l?c lu?ng lao d?ng c?a tuong lai:</br>

<br>Ng?ng yêu c?u so y?u lý l?ch. Tình tr?ng mô t? công vi?c r?t ?m d?m. Vi?c thi?u d? li?u k? nang ch?t lu?ng cao có nghia là các t? ch?c hi?u các k? nang và nang l?c c?n thi?t d? th?c hi?n thành công m?t vai trò nh?t d?nh. Mô t? công vi?c không d?y d? d?n d?n qu?ng cáo vi?c làm du?c nh?m m?c tiêu kém, quy trình ph?ng v?n b? l?i, gi?i thi?u không hi?u qu? và kh? nang di chuy?n nhân tài kém. Vi?c tuy?n d?ng d?a trên k? nang, thay vì kinh nghi?m trong quá kh?, là c?n thi?t d? thu hút nhi?u ngu?i da d?ng hon vào các v? trí dang tuy?n.</br>

<br>Thay vì yêu c?u so y?u lý l?ch, hãy b?t d?u yêu c?u ?ng viên cung c?p danh m?c thành tích và ch?ng ch? k? nang. Ði?u này s? chuy?n tr?ng tâm t? trình d? sang nang l?c. B?n mô t? công vi?c nên du?c biên so?n d?a trên các k? nang, ch? không ph?i các linh v?c ki?n th?c chung hon ho?c s? nam kinh nghi?m.</br>

<br>Cam k?t v? van hóa d?a trên d? li?u. H?u h?t các doanh nghi?p s? d?ng d? li?u d? h? tr? vi?c ra quy?t d?nh, nhung trong cu?c kh?o sát di?u hành c?a NewVantage Partners nam nay, ch? 24% cho bi?t h? dã t?o ra m?t t? ch?c d?a trên d? li?u. Thách th?c chính du?c nêu ra không ph?i là công ngh? (7,8%) mà là van hóa, quy trình và k? nang c?a t? ch?c (92,2%)</br>

<br>Ti?p t?c d?u tu ngu?n l?c vào m?t chi?n lu?c d? li?u du?c xác d?nh rõ ràng, phù h?p v?i các m?c tiêu kinh doanh t?ng th?. N?u không có nó, b?n s? g?p khó khan trong vi?c thu th?p, di?n gi?i và t?n d?ng d? li?u d? d?t du?c k?t qu? t?t hon.</br>', CAST(N'2022-03-26' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (12, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/10/Missouri-DHEWD.png', N'Coursera ra m?t B? c?p d? d? giúp ngu?i h?c phát tri?n các k? nang quan tr?ng nhanh hon', N'<br>Chuy?n d?i k? thu?t s? nhanh chóng dang làm tang tính c?p bách d? có du?c các k? nang theo yêu c?u. Tuy nhiên, thi?u th?i gian và th?t v?ng vì không bi?t nên tham gia khóa h?c nào là nh?ng rào c?n l?n d?i v?i ngu?i h?c.</br>

<br>Hôm nay, chúng tôi r?t vui m?ng ra m?t LevelSets, m?t công c? dánh giá m?i du?c thi?t k? d? giúp ngu?i h?c xác d?nh trình d? hi?n t?i c?a h? trong các k? nang kinh doanh, công ngh? và d? li?u chính.</br>

<br>Ðu?c cung c?p nhu m?t ph?n c?a n?n t?ng doanh nghi?p c?a công ty, LevelSets hi?n bao g?m hon 20 bài dánh giá k? nang khác nhau du?c t?o b?ng các chuong trình máy h?c. Các bài dánh giá ban d?u s? ki?m tra m?c d? thành th?o v? các k? nang phân tích và d? li?u có nhu c?u cao, bao g?m phân tích d? li?u, di?n toán dám mây, máy h?c, Python và SQL, cùng các k? nang khác.</br>

<br>LevelSets s? giúp thúc d?y ngu?i h?c dang ký tham gia d? xu?t các khóa h?c và cho phép h? phát tri?n các k? nang liên quan d?n công vi?c nhanh hon. Nh?ng dánh giá này xác d?nh noi nên b?t d?u dào t?o và t?o l? trình phát tri?n rõ ràng cho ngu?i h?c có n?i dung ch?t lu?ng cao phù h?p v?i m?c tiêu k? nang c?a h?.</br>

<br>Vi?c cung c?p LevelSets cho phép ngu?i h?c:</br>

<br>Ti?t ki?m th?i gian và phát tri?n các k? nang nhanh hon. Ngu?i h?c có th? hoàn thành bài dánh giá trong vòng chua d?y 15 phút d? xác d?nh các k? nang hi?n có. Ði?u này cho phép h? không lãng phí th?i gian vào n?i dung mà h? dã n?m v?ng và t?p trung vào các khóa h?c có th? nâng cao trình d? k? nang nhanh hon. Tr?i nghi?m m?t hành trình h?c t?p d?c dáo v?i các d? xu?t du?c nh?m m?c tiêu. Sau khi hoàn thành các bài dánh giá, ngu?i h?c s? nh?n du?c các d? xu?t n?i dung du?c nh?m m?c tiêu phù h?p v?i trình d? thành th?o c?a h? d? d?m b?o di?m kh?i d?u phù h?p trong hành trình phát tri?n k? nang c?a h?. Ði?u này cho phép ngu?i h?c tránh tham gia các khóa h?c quá thô so ho?c quá nâng cao. T?o d?ng l?c m?nh m? hon d? h?c các k? nang m?i. B?ng cách cung c?p hi?u bi?t sâu hon v? các c?p d? k? nang hi?n t?i và d? xu?t n?i dung c? th? d? c?i thi?n trình d?, LevelSets có th? tang s? lu?ng ngu?i h?c; mong mu?n dang ký và hoàn thành các khóa h?c có liên quan. Gi?i thi?u ki?n th?c k? nang hi?n có. Các bài dánh giá cho phép ngu?i h?c th? hi?n trình d? thành th?o c?a h? trong các k? nang có yêu c?u cao c?n thi?t d? m? khóa các k? nang m?i co h?i ngh? nghi?p.</br>

<br>Các khách hàng nhu Fidelity, Ingka IKEA, Pfizer và Thermo Fisher Scientific là nh?ng ngu?i s?m s? d?ng LevelSets. D? li?u ban d?u cho th?y r?ng ngu?i h?c trong các công ty này có nhi?u kh? nang dang ký khóa h?c du?c d? xu?t hon g?p 3 l?n trong vòng 1 ngày sau khi th?c hi?n bài dánh giá LevelSet. Ngoài ra, t? l? hoàn thành khóa h?c dã tang 66% trong s? nh?ng ngu?i dã hoàn thành bài dánh giá.</br>

<br>B?ng cách hoàn thành bài dánh giá LevelSet, ngu?i h?c s? có quy?n truy c?p vào các d? xu?t n?i dung d?ng c?p th? gi?i t? các d?i tác trong ngành và tru?ng d?i h?c hàng d?u. N?i dung này du?c cung c?p thông qua SkillSets, các chuong trình h?c t?p d?a trên công vi?c giúp ngu?i h?c phát tri?n các k? nang c? th? cho các vai trò c? th?. N?i dung d? xu?t bao g?m: Machine Learning for All c?a Ti?n si Marco Gillies t? Ð?i h?c London; Ki?n th?c co b?n v? AWS: Di chuy?n lên dám mây c?a Seph Robinson và Sean Rinn t? Amazon Web Services; Hi?u và tr?c quan hóa d? li?u b?ng Python  c?a Giáo su Kerby Shedden, Brenda Gunderson và Brady West t? Ð?i h?c c?a Michigan, SQL cho Khoa h?c d? li?u c?a Sadie St. Lawrence t? Ð?i h?c California, Davis</br>

<br>LevelSets hi?n có s?n cho các công ty, tru?ng d?i h?c và chính ph? dã tri?n khai B? k? nang phân tích và d? li?u. Coursera có k? ho?ch cung c?p B? c?p d? trong danh m?c hon 300 B? k? nang vào d?u nam t?i. V?i LevelSets, chúng tôi mong mu?n giúp ngu?i h?c trên kh?p th? gi?i xác d?nh di?m m?nh k? nang c?a h? và phát tri?n các k? nang có nhu c?u cao c?n thi?t d? phát tri?n trong n?n kinh t? m?i.</br><br>', CAST(N'2022-03-10' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (13, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/0001-2-1536x804.jpg', N'Ði?u gì thúc d?y s? duy trì trong các chuong trình c?p b?ng tr?c tuy?n? Thông tin chi ti?t m?i t? Báo cáo d?a trên d? li?u c?a chúng tôi', N'<br>N?n t?ng Coursera dã tr? thành m?t trung tâm d? các tru?ng d?i h?c hàng d?u xây d?ng và cung c?p b?ng c?p tr?c tuy?n c?a h? cho khán gi? háo h?c là các cá nhân trên toàn th? gi?i. T? các ho?t d?ng c?a hàng nghìn sinh viên theo h?c t?i các tru?ng d?i h?c d?i tác c?a chúng tôi&rsquo; các chuong trình c?p b?ng, chúng tôi có th? rút ra nh?ng hi?u bi?t m?i v? cách các cá nhân tham gia vào các khóa h?c l?y tín ch? tr?c tuy?n, di?u gì giúp h? thành công và ho?t d?ng nào thúc d?y vi?c gi? chân h? nhi?u nh?t. Xuyên su?t báo cáo m?i c?a chúng tôi, Các y?u t? thúc d?y t? l? gi? chân trong các chuong trình c?p b?ng tr?c tuy?n, chúng tôi dua ra các phuong pháp hay nh?t d?a trên d? li?u d? thúc d?y t? l? gi? chân nhi?u hon trong các chuong trình c?p b?ng tr?c tuy?n.</br>

<br>Chúng tôi th?y có nhi?u y?u t? khác nhau thúc d?y vi?c gi? chân sinh viên trong các chuong trình c?p b?ng du?c cung c?p trên n?n t?ng Coursera. Sau dây là nh?ng hành d?ng mà các tru?ng d?i h?c có th? th?c hi?n d? h? tr? sinh viên c?a h? kh? nang ? l?i trong các chuong trình c?a h?: Xây d?ng d?a trên thành công c?a n?i dung m?. Ð? xu?t các khóa h?c m? có liên quan trên Coursera. Nh?ng sinh viên hoàn thành m?t khóa h?c m? có nhi?u kh? nang ti?p t?c h?c lên cao hon 12%. Nh?ng ngu?i tham gia các khóa h?c m? có kh? nang ti?p t?c theo h?c các chuong trình c?a h? cao hon 3%.</br>

<br>Chu?n b? cho sinh viên m?t kh?i d?u thu?n l?i. Cung c?p tài nguyên, gi? hành chính và tr? l?i câu h?i tr?c ti?p d? giúp sinh viên n?p bài dánh giá d?u tiên thành công, giúp tang kh? nang duy trì c?a h? trong chuong trình thêm 6%. Hi?u su?t là m?t ch? s? m?nh m? c?a sinh viên, kiên trì sau này, v?i di?m s? trong h?c k? d?u tiên tr? nên d?c bi?t quan tr?ng.</br>

<br>Bao g?m c? vi?c ch?m di?m nhân viên. Tang cu?ng d?ng l?c thông qua vi?c ch?m di?m c?a chuyên gia và nh?n xét. Có ít nh?t m?t bài dánh giá do nhân viên ch?m di?m giúp t? l? gi? chân sinh viên tang 6%. Khuy?n khích h?c t?p thu?ng xuyên. S? d?ng các k? thu?t nhu các video ng?n và các bài dánh giá nh? hon trong su?t khóa h?c d? giúp d?m b?o sinh viên thu?ng xuyên quay l?i các khóa h?c l?y b?ng. Ð? h?c sinh h?c trong nhi?u ngày hon d?n d?n t? l? duy trì tang 5% và là d?ng l?c quan tr?ng hon so v?i t?ng th?i gian h?c. Thi?t k? các d? án th?c hành. Giúp h?c sinh ti?n b? v?i các d? án th?c hành noi h? có th? áp d?ng các k? nang m?i c?a mình. Trong các d? án vi?t lách, mã hóa và sáng t?o, nh?ng co h?i này giúp tang t? l? gi? chân ngu?i dùng cao hon 3%. D? án cu?i khóa là co h?i tuy?t v?i d? cung c?p lo?i d? án th?c hành này và tr?i nghi?m d?nh cao cho khóa h?c. S? d?ng các co h?i th?c hành. Bao g?m các bài dánh giá không du?c ch?m di?m cho bài ki?m tra có m?c d? r?i ro th?p và cho các h?c sinh nâng cao&rsquo; hi?u bi?t. Vi?c có các bài dánh giá th?c hành giúp t? l? duy trì b?ng c?p c?a sinh viên tang 2%. Ð? bi?t thêm chi ti?t c? th? và các bài h?c rút ra có th? th?c hi?n du?c, vui lòng truy c?p d?y d? Ð?ng l?c duy trì b?ng c?p trong các Chuong trình c?p b?ng tr?c tuy?n c?a chúng tôi. Chúng tôi mong mu?n du?c ti?p t?c h?p tác v?i các tru?ng d?i h?c d? t?o ra nh?ng thi?t k? hi?u qu? và hi?u qu? hon, nâng vi?c gi?ng d?y tr?c tuy?n c?a gi?ng viên lên m?t t?m cao m?i.</br>', NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (14, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/UP-1.jpg', N'Ði?m n?i b?t c?a H?i ngh? Coursera 2022', N'<br>G?n ba ph?n tu CEO xác d?nh tình tr?ng thi?u lao d?ng ho?c k? nang là v?n d? bên ngoài có kh? nang làm gián do?n ho?t d?ng kinh doanh c?a h? nh?t trong 12 tháng t?i, theo m?t báo cáo nam 2021; Kh?o sát c?a Deloitte và Fortune. S? thi?u h?t này g?n li?n v?i quá trình s? hóa tang t?c. Microsoft d? doán r?ng s? có 149 tri?u vi?c làm k? thu?t s? m?i ch? t?p trung vào di?n toán dám mây, an ninh m?ng, phân tích d? li?u và phát tri?n ph?n m?m.</br>

<br>M?c dù du?c thúc d?y b?i các y?u t? bên ngoài, nhung vi?c gi?i quy?t tình tr?ng thi?u h?t k? nang b?t d?u t? bên trong m?t t? ch?c. Ki?m soát phát tri?n k? nang là r?t quan tr?ng d?i v?i các doanh nghi?p mu?n duy trì tính c?nh tranh và d?y nhanh quá trình chuy?n d?i kinh doanh. Ði?u này dã du?c xác nh?n b?i 73% s? ngu?i du?c h?i trong Báo cáo xu hu?ng ngu?n nhân l?c toàn c?u nam 2020 c?a Deloitte, ngu?i dã xác d?nh các t? ch?c là th?c th? ch?u trách nhi?m cao nh?t v? phát tri?n l?c lu?ng lao d?ng.</br>

<br>Vi?c uu tiên phát tri?n k? nang cung có th? d?n d?n ho?t d?ng kinh doanh h?u hình k?t qu?. Báo cáo K? nang Ngành c?a Coursera 2021, nh?n th?y r?ng các k? nang c?a nhân viên có liên quan d?n kh? nang ph?c h?i và kh? nang thích ?ng c?a công ty khi d?i m?t v?i thách th?c l?i ích tuong quan v?i hi?u su?t ch?ng khoán. Xét cho cùng, phát tri?n k? nang là m?t chi?n lu?c thu hút và duy trì, m?t chi?n lu?c v? hi?u su?t cung nhu tang tru?ng và ti?t ki?m chi phí dóng vai trò quan tr?ng d?i v?i doanh nghi?p.</br>

<br>Trong báo cáo m?i nh?t c?a mình v? Phát tri?n k? nang và dánh giá các con du?ng d?n d?n vi?c làm: T?m nhìn cho nam 2030, Giáo d?c m?i n?i và Coursera ki?m tra thêm cách ngu?i s? d?ng lao d?ng có th? k?t n?i t?t hon vi?c phát tri?n k? nang v?i t?m nhìn dài h?n v? l?c lu?ng lao d?ng c?a h?.</br>

<br>Nhu dã trình bày trong báo cáo, dây là nam di?u mà ngu?i s? d?ng lao d?ng có th? b?t d?u làm ngay bây gi? d? n?m l?y s? phát tri?n k? nang và xây d?ng l?c lu?ng lao d?ng trong tuong lai:</br>

<br>1. Ng?ng yêu c?u t?o so y?u lý l?ch. Tình tr?ng mô t? công vi?c r?t ?m d?m. Vi?c thi?u d? li?u k? nang ch?t lu?ng cao có nghia là các t? ch?c không hi?u các k? nang và nang l?c c?n thi?t d? th?c hi?n thành công m?t vai trò nh?t d?nh. Mô t? công vi?c không d?y d? d?n d?n qu?ng cáo vi?c làm du?c nh?m m?c tiêu kém, quy trình ph?ng v?n b? l?i, gi?i thi?u không hi?u qu? và kh? nang di chuy?n nhân tài kém. Vi?c tuy?n d?ng d?a trên k? nang, thay vì kinh nghi?m tru?c dây, là c?n thi?t d? thu hút nhi?u ngu?i da d?ng hon vào các v? trí dang tuy?n. Thay vì yêu c?u so y?u lý l?ch, hãy b?t d?u yêu c?u ?ng viên cung c?p danh m?c thành tích và ch?ng ch? k? nang. Ði?u này s? chuy?n tr?ng tâm t? trình d? sang nang l?c. B?n mô t? công vi?c nên du?c biên so?n d?a trên các k? nang, ch? không ph?i v? linh v?c ki?n th?c chung hon ho?c s? nam kinh nghi?m.</br>

<br>2. Cam k?t v?i van hóa d?a trên d? li?u. H?u h?t các doanh nghi?p s? d?ng d? li?u d? h? tr? ra quy?t d?nh nhung trong cu?c kh?o sát di?u hành c?a NewVantage Partners nam nay, ch? 24% cho bi?t h? dã t?o ra m?t t? ch?c d?a trên d? li?u. Thách th?c chính du?c nêu ra không ph?i là công ngh? (7,8%) mà là van hóa, quy trình và k? nang c?a t? ch?c (92,2%). Hãy ti?p t?c d?u tu ngu?n l?c vào m?t chi?n lu?c d? li?u du?c xác d?nh rõ ràng, phù h?p v?i các m?c tiêu kinh doanh t?ng th?. N?u không có nó, b?n s? g?p khó khan trong vi?c thu th?p, di?n gi?i và t?n d?ng d? li?u d? d?t du?c k?t qu? t?t hon.</br>

<br>3.Xác d?nh k? nang cho t? ch?c c?a b?n. Ð? xác d?nh kho?ng cách k? nang, b?n c?n hi?u k? nang là gì trong b?i c?nh t? ch?c c?a b?n, sau dó liên k?t k? nang v?i công vi?c và vai trò. Nhà tuy?n d?ng c?n n?m b?t d? li?u k? nang tru?c khi l?p b?n d? t? ch?c c?a h?. Có m?t k? ho?ch c?i thi?n k? nang t?i d?a phuong s? cung c?p m?t di?m kh?i d?u chi ti?t d? phát tri?n các k? nang.</br>

<br>4. Uu tiên h?c l?i k? nang hon là nâng cao k? nang. Các t? ch?c có trách nhi?m giúp nhân viên c?a h? hi?u rõ hon k? nang chuy?n nhu?ng c?a h?. Các doanh nghi?p thu?ng kém thành công hon trong vi?c dào t?o l?i k? nang so v?i nâng cao k? nang, b?i vì dào t?o l?i dòi h?i m?t t? ch?c ph?i ho?t d?ng da ch?c nang. Tuy nhiên, các công ty nhu Amazon dang kh?i xu?ng các chuong trình c?a riêng h? nh?m dào t?o k? nang, nâng cao k? nang và dào t?o l?i k? nang cho l?c lu?ng lao d?ng c?a h? ngay t?i công ty. Vi?c xây d?ng m?i quan h? v?i các cá nhân b?ng cách h? tr? h? phát tri?n b?n thân có giá tr?: 87% ngu?i h?c vi?c ? Ða vu tr? g?n bó v?i công ty c?a h? ngu?i s? d?ng lao d?ng lâu dài, và 50% du?c thang ch?c trong vòng sáu tháng. Thay vì cho r?ng kho?ng cách k? nang là nh?ng thi?u sót c?n du?c kh?c ph?c ngay l?p t?c, hãy nhìn vào ti?m nang. Xem xét cách giúp m?t ngu?i phát tri?n thành m?t vai trò và luôn c?i m? v? nh?ng gì có th? du?c phát tri?n m?t cách d? dàng v?i các công c? và khuôn kh? phù h?p. S? d?ng dánh giá hi?u su?t d? có cái nhìn v? t? ch?c, k?t h?p nguy?n v?ng ngh? nghi?p c?a cá nhân v?i công vi?c trong tuong lai theo yêu c?u c?a công ty b?n.</br>

<br>5.Ch?ng l?i s? l?i th?i c?a công vi?c. Khi t? d?ng hóa thu h?p ranh gi?i xung quanh công vi?c, nhi?u công vi?c dòi h?i k? nang th?p, du?c tr? luong th?p dang du?c thi?t k? m?t cách hi?u qu? d? lo?i b? k? nang nh?ng ngu?i làm vi?c trong dó. Nhung s? l?i th?i không ph?i là không th? tránh kh?i: s? d?ng các l? trình k? nang d? thi?t k? l?i các vai trò c?p d? d?u vào và r?i ro. Sau dó, b?ng cách s? d?ng co s? h? t?ng d? li?u và k? nang nêu trên, các công vi?c m?i b?t d?u và nh?ng công vi?c có nguy co t? d?ng hóa s? t?o thành m?t l? trình mang d?n co h?i phát tri?n các k? nang và ti?n b? m?i.</br>', CAST(N'2022-07-18' AS Date), 1, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (15, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/04/barb-Cropped.png', N'H?i dáp v?i Ti?n si Barbara Oakley v? các m?o d?y và h?c', N'<br>Khóa h?c m?i v? Gi?ng d?y Ý th?c B?t thu?ng t? Ti?n si Oakley, ngu?i hu?ng d?n t? khóa h?c n?i ti?ng Learning How to Learn</br>

<br>Khi quá trình chuy?n d?i k? thu?t s? nhanh chóng bi?n d?i th? gi?i, h?c t?p dã tr? thành m?t k? nang co b?n mà McKinsey coi là m?t d?ng l?c quan tr?ng c?a s? thành công trong s? nghi?p lâu dài. Ð? giúp giáo viên trang b? cho th? h? h?c sinh ti?p theo các công c? d? h?c t?p t?t hon, Ti?n si Barbara Oakley dã gi?i thi?u m?t khóa h?c m?i hôm nay, D?y v? Ý th?c Khác thu?ng Ph?n 2: Xây d?ng C?ng d?ng và Thói quen h?c t?p. Khóa h?c th? hai, b? sung cho khóa h?c d?u tiên du?c phát hành vào mùa hè nam ngoái, cung c?p các công c? d?a trên khoa h?c th?n kinh và hi?u bi?t th?c t? d? giúp b?t k? ai, t? các nhà giáo d?c và ngu?i hu?ng d?n dày d?n kinh nghi?m d?n các b?c cha m?, khai thác nh?ng di?u t?t nh?t t? ngu?i h?c. Chúng tôi dã liên h? v?i Ti?n si Oakley d? tìm hi?u xem khóa h?c m?i c?a cô ?y có th? giúp giáo viên gi?i quy?t nh?ng thách th?c trong l?p h?c nhu th? nào. M?t bài h?c rút ra cho các nhà giáo d?c là gì có th? h?c trong khóa h?c m?i c?a b?n</br>

<br>Trong môi tru?ng h?c t?p tr?c tuy?n ngày càng da d?ng và thu?ng xuyên, giáo viên dang v?t l?n v?i vi?c làm th? nào d? phát huy h?t kh? nang c?a t?t c? h?c sinh, phát huy kh? nang c?a h? và thu hút h?c sinh tham gia. Tôi th?c s? tin r?ng vi?c gi?ng d?y tr?c tuy?n có th? giúp d?t du?c k?t qu? phù h?p v?i k?t qu? có th? d?t du?c trong m?t l?p h?c truy?n th?ng, và th?c s?, th?m chí còn vu?t qua nó! Quay tr? l?i nam 2014, tôi b?t d?u t?o các khóa h?c tr?c tuy?n v? h?c t?p vì kinh nghi?m c?a b?n thân. Tôi r?t gi?i toán ho?c khoa h?c, vì v?y khi tru?ng thành, tôi dã ph?i di?u ch?nh l?i b? não c?a chính mình d? h?c chúng! Vào th?i di?m dó, tôi nh? mình dã t? h?i t?i sao không ai vi?t sách hay d?y m?t khóa h?c v? cách h?c t?p hi?u qu? d?a trên nh?ng gì chúng ta bi?t t? khoa h?c v? cách th?c b? não h?c h?i. Khi tôi th?y các khóa h?c tr?c tuy?n có th? ti?p c?n du?c bao nhiêu ngu?i h?c; hon 3,8 tri?u ngu?i dã tham gia khóa h?c c?a tôi H?c cách h?c. Tôi bi?t r?ng mình c?n chia s? nh?ng m?o tuong t? v? cách giáo viên có th? truy?n d?t nh?ng bài h?c này cho h?c sinh c?a h? trên kh?p th? gi?i. Khóa h?c m?i này du?c d?y cùng v?i Ti?n si Terrence Sejnowski và Beth Rogowsky, d?a trên cu?n sách m?i nh?t c?a tôi, cu?n sách g?n dây dã du?c vinh danh là m?t trong mu?i cu?n sách hàng d?u dành cho các nhà giáo d?c. Tâm lý h?c nh?n th?c và nh?ng hi?u bi?t sâu s?c liên quan d?n khoa h?c th?n kinh mà chúng tôi gi?ng d?y s? nâng cao k? nang gi?ng d?y c?a b?n và do dó, cách h?c sinh h?c. Vì v?y, m?i d?i tu?ng h?c sinh d?u phát tri?n kh? nang thành th?o b?t c? th? gì, có th? là toán h?c, khoa h?c, khiêu vu, van h?c ho?c ngh? thu?t. B?n có th? chia s? m?t s? m?o v? cách chúng ta có th? d?y và h?c hi?u qu? hon không? Có m?t s? y?u t? chính c?n k?t h?p hàng ngày</br>

<br>H?c sinh có th? h?c nhanh hon ho?c h?c ch?m hon. Vì v?y, c?u trúc gi?ng d?y. Cung c?p cho ngu?i di b? nh?ng m?u thông tin nh? hon. Là nh?ng ngu?i h?c ch?m hon, h? h?c sâu hon và thu?ng xuyên hon, sáng t?o hon. Các tay dua có th? h?c nhanh hon nhung cung dua ra k?t lu?n nhanh hon và th?y khó t? s?a l?i khi m?c l?i. Hi?u r?ng cách chúng ta tìm hi?u s? ki?n ho?c thông tin r?t khác so v?i ki?n th?c v? k? nang c?a chúng ta, ch?ng h?n nhu h?c lái xe m?t chi?c xe d?p. Cái tru?c (l? trình khai báo) ch? y?u là h?c t?p có ý th?c, cái sau (l? trình th? t?c) phát tri?n thông qua th?c hành và di?n ra trong ti?m th?c. B?n càng nh? l?i nh?ng gì dã h?c, b?n càng nh?, h?c và hi?u nhi?u hon Nó. Nhung hãy nh?i nhét t?t c? thông tin cùng m?t lúc. Không gian nó ra và c? g?ng gi?i thích nó cho ngu?i khác. Hãy th? k? thu?t Pomodoro d? h?c hi?u qu? nh?t. Tránh m?i phi?n nhi?u (bao g?m c? di?n tho?i c?a b?n). Ð?t gi?i h?n th?i gian d? t?p trung hoàn toàn vào nhi?m v? hi?n t?i. Sau khi h?t th?i gian, hãy thu giãn trong 5 phút và không cu?n Instagram Reels! Khóa h?c này t?p trung vào gi?ng d?y tr?c ti?p hay tr?c tuy?n?</br>

<br>Các l?p h?c ngày nay dã thay d?i m?nh m? và thu?ng là môi tru?ng h?c t?p pha tr?n. Vì v?y, b?n có th? s? d?ng khóa h?c này nhu m?t tài li?u co b?n n?u b?n chua quen v?i vi?c d?y các bài h?c tr?c tuy?n. Quan sát gi?ng di?u du?c cá nhân hóa mà chúng tôi s? d?ng xuyên su?t. Ho?c cách hình ?nh và ho?t ?nh don gi?n truy?n d?t nh?ng ý tu?ng ph?c t?p. Luu ý cách ?n d? thú v?, cách choi ch? và phép lo?i suy là nh?ng công c? tuy?t v?i d? thu hút ngu?i h?c.Bên c?nh dó, m?i h?c ph?n d?u có các câu d? c?ng v?i bài d?c b? sung d? m? r?ng ki?n th?c c?a b?n;<em>và</em>&nbsp;ki?m tra s? hi?u bi?t c?a b?n.</br>

<br>Ngu?i h?c ph?n h?i th? nào v? khóa h?c?
Th?t là m?t ph?n thu?ng tuy?t v?i khi bi?t r?ng nhi?u ngu?i dã tìm th?y nó du?c thi?t k? phù h?p d? trau d?i vi?c gi?ng d?y c?a h?; k? nang h?c t?p. Nhu m?t h?c viên dã nh?n xét: Làm sao chúng ta có th? d?y mà không bi?t cách h?c di?n ra nhu th? nào? Cung th?t ph?n kh?i khi th?y r?ng nhi?u ngu?i dã ra di v?i ngu?n c?m h?ng, s? hu?ng d?n và hy v?ng trong nh?ng th?i di?m b?p bênh này; khi b?n thân kinh nghi?m gi?ng d?y dã thay d?i r?t nhi?u. Trên th?c t?, chính s? phát tri?n này trong cách chúng tôi gi?ng d?y dã khi?n tôi b?t d?u th?c hi?n m?t khóa h?c khác. D?y tr?c tuy?n, khóa h?c cu?i cùng trong lo?t bài này, s? s?m ra m?t!</br>', NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (16, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/03/IIT-R-reaches-global-audience-on-Coursera-1024x683.jpeg', N'M? r?ng quy?n truy c?p và bao g?m: IIT Roorkee ti?p c?n khán gi? toàn c?u v?i chuong trình khoa h?c d? li?u tr?c tuy?n m?i', N'<br>Hon 3/4 lãnh d?o các tru?ng d?i h?c dang m? r?ng kh? nang ti?p c?n h?c t?p tr?c tuy?n sau d?i d?ch b?ng cách cung c?p nhi?u tùy ch?n h?c t?p tr?c tuy?n hon, bao g?m các ch?ng ch? có th? x?p ch?ng lên nhau và các chuong trình c?p b?ng cho sinh viên phi truy?n th?ng. ? ?n Ð?, xu hu?ng toàn c?u này du?c thúc d?y b?i Chính sách Giáo d?c Qu?c gia (NEP), khuy?n khích các tru?ng d?i h?c ?n Ð? xây d?ng các chuong trình tr?c tuy?n và m? r?ng kh? nang ti?p c?n.</br>

<br>Là m?t t? ch?c giáo d?c hàng d?u ? ?n Ð?, Vi?n Công ngh? ?n Ð? ( IIT) Roorkee h?p tác v?i Coursera vào tháng 8 nam 2020, hai tháng sau khi NEP du?c phê duy?t. Thông qua quan h? d?i tác, IIT Roorkee mong mu?n hoàn thành m?c tiêu giáo d?c hòa nh?p và ti?p c?n d?i tu?ng toàn c?u là sinh viên và các chuyên gia.</br>

<br>IIT Roorkee tr? thành tru?ng d?i h?c k? thu?t công l?p d?u tiên c?a ?n Ð? cung c?p các chuong trình c?p ch?ng ch? sau d?i h?c trên Coursera, và h?c vi?n dã ti?p c?n sinh viên trên kh?p th? gi?i. Hon m?t n?a (55%) sinh viên theo h?c Ch?ng ch? sau d?i h?c v? Khoa h?c d? li?u và Máy h?c c?a IIT Roorkee d?n t? bên ngoài ?n Ð?. H?c sinh tr?i r?ng trên 14 qu?c gia, bao g?m Canada, Vuong qu?c Anh, Indonesia và ? R?p Saudi. Hon m?t ph?n tu s? sinh viên c?a chuong trình d?n t? Hoa K?. T?i ?n Ð?, chuong trình này cung có ph?m vi ti?p c?n r?ng rãi, thu hút ngu?i h?c t? 11 ti?u bang.</br>

<br>M?i quan h? d?i tác c?a chúng tôi cho th?y cách chúng tôi có th? tang kh? nang ti?p c?n công b?ng v?i n?n giáo d?c ch?t lu?ng cao, phù h?p v?i công vi?c cho t?t c? ngu?i h?c, b?t k? ? dâu. Khi sinh viên dón nh?n vi?c h?c tr?c tuy?n nhu m?t di?u bình thu?ng m?i, d? li?u c?a Coursera cho th?y r?ng nh?ng sinh viên quan tâm d?n b?ng c?p quan tâm nh?t d?n kh? nang chi tr? và các chuong trình du?c công nh?n &ndash; v? trí tru?ng d?i h?c là y?u t? ít quan tr?ng nh?t. Sinh viên háo h?c h?c các k? nang c?n thi?t d? thành công trong n?n kinh t? k? thu?t s? t? các t? ch?c hàng d?u th? gi?i.</br>

<br>Các quan h? d?i tác v?i tru?ng d?i h?c nhu th? này cung có th? giúp gi?i quy?t tình tr?ng thi?u k? nang t?i d?a phuong, t?o ra con du?ng giúp nhi?u công dân có vi?c làm hon- s?n sàng. Chuong trình IIT Roorkee gi?i quy?t kho?ng cách k? nang quan tr?ng khi nhu c?u v? các chuyên gia khoa h?c d? li?u tang cao ? ?n Ð?. Khi h?c sinh h?c các k? nang k? thu?t s? hàng d?u m?t cách không d?ng b?, h? cung h?c các k? nang m?m c?n thi?t d? thành công trong l?c lu?ng lao d?ng t? xa &mdash; b?ng cách làm ch? công vi?c d?c l?p d?ng th?i c?ng tác v?i các d?ng nghi?p toàn c?u.</br>

<br>H?c t?p tr?c tuy?n t? các tru?ng d?i h?c hàng d?u nhu IIT Roorkee có th? là m?t nhân t? h? tr? d?c l?c cho co h?i dân ch? hóa trong th?i k? h?u d?i d?ch b?ng cách dáp ?ng nhu c?u c?a ngu?i s? d?ng lao d?ng và giúp công dân s?n sàng cho s? nghi?p. Chúng ta dang ? m?t di?m then ch?t trong cu?c hành trình này. Cùng nhau, chúng tôi mong mu?n m? r?ng quy mô ti?p c?n và co h?i thay d?i cu?c s?ng cho ngu?i h?c ? kh?p m?i noi.</br>', CAST(N'2022-07-18' AS Date), 1, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (17, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/02/Blog-Post-QA-w-Anthony-Tattersall-1200x628-1.png', N'Thúc d?y Phát tri?n K? nang cho L?c lu?ng lao d?ng nam 2030: H?i & Ðáp v?i Anthony Tattersall', N'<br>Anthony Tattersall là phó ch? t?ch nhóm bán hàng EMEA t?i Coursera. Vai trò c?a anh ?y mang l?i cho anh ?y nh?ng hi?u bi?t d?c dáo v? cách các doanh nghi?p, chính ph? và giáo d?c d?i h?c có th? h?p tác cùng nhau d? xây d?ng l?c lu?ng lao d?ng trong tuong lai c?a chúng ta và cách d? li?u có th? du?c s? d?ng d? h? tr? n? l?c này. Nhóm Emerge Education dã ph?ng v?n Tattersall cho m?t báo cáo chung v?i Coursera v? Phát tri?n k? nang và dánh giá các con du?ng d?n d?n vi?c làm: T?m nhìn cho nam 2030. Sau dây là nh?ng gì Tattersall dã nói</br>

<br>Nh?ng xu hu?ng nào b?n có dang nhìn th?y các k? nang t? ngu?i dùng c?a mình không?</br>

<br>Nh?ng di?u c?t lõi thúc d?y kh? nang c?a m?t t? ch?c là nh?ng k? nang mà m?i ngu?i có và kh? nang khai thác công ngh? c?a h?. Khi các doanh nghi?p th?c s? chuy?n sang di?u này, h? t?p trung vào vi?c tìm hi?u các yêu c?u v? k? nang cho các vai trò ngay bây gi? và trong tuong lai g?n, d?ng th?i tìm ra cách t?t nh?t d? gi?i quy?t kho?ng cách dó. Nh?ng thách th?c là làm th? nào d? vi?c h?c di?n ra trong quy trình làm vi?c c?a h? và cách s? d?ng vi?c dào t?o l?i k? nang d? t?o ra các vai trò trong n?i b? noi vi?c tuy?n d?ng không d? dàng, ch?ng h?n nhu công ngh?, khoa h?c d? li?u, an ninh m?ng, v.v.</br>

<br>Trong khi làm vi?c v?i các chính ph?, chúng tôi th?y nhi?u qu?c gia dang ph?i v?t l?n v?i tình tr?ng th?t nghi?p sau d?i h?c, m?t ph?n liên quan d?n d?i d?ch và m?t ph?n vì các doanh nghi?p mu?n thuê nh?ng ngu?i dã có k? nang h? c?n. Có nhi?u qu?c gia có s? lu?ng l?n ngu?i làm vi?c trong các ngành có nguy co b? t? d?ng hóa cao và dây thu?ng là nh?ng công vi?c du?c tr? luong th?p hon n?u nh?ng cá nhân dó du?c ti?p c?n v?i các co h?i h?c t?p d? phát tri?n các b? k? nang m?i, don gi?n là s? không có d? vi?c làm d? ph?c v? nh?ng ngu?i dó.</br>

<br>Ð?i v?i các tru?ng d?i h?c, v?n d? không ch? là ki?m du?c công vi?c d?u tiên sau khi t?t nghi?p, nó cung nói v? t?t c? nh?ng kho?nh kh?c chuy?n giao ngh? nghi?p mà m?i ngu?i s? tr?i qua trong su?t cu?c d?i c?a h?. H?u h?t nh?ng ngu?i tham gia l?c lu?ng lao d?ng bây gi? s? tr?i qua b?n ho?c nam s? thay d?i ngh? nghi?p l?n liên quan d?n vi?c nâng cao k? nang dáng k? và các tru?ng d?i h?c có vai trò ngày càng quan tr?ng. Nhung h? cung dang tr?i qua nh?ng thách th?c, có s? t?p trung l?n vào k?t qu? kh? nang có vi?c làm và các k? nang t?i noi làm vi?c là m?c tiêu thay d?i nhanh chóng, vì v?y n?i dung h?c t?p cu di nhanh chóng. Và làm th? nào d? b?n làm vi?c v?i k? v?ng cao hon v? các chuong trình h?c t?p k?t h?p?</br>

<br>Phuong pháp phát tri?n k? nang c?a Coursera là gì?</br>

<br>V? c?t lõi, chúng tôi là m?t n?n t?ng chuy?n d?i k? nang, vì v?y chúng tôi dang c? g?ng cho phép m?i ngu?i h?c ? m?i noi trên th? gi?i, t?i th?i di?m do h? l?a ch?n, v?i kh? nang ti?p c?n n?i dung t?t nh?t t? các tru?ng d?i h?c l?n và các d?i tác trong ngành. M?c tiêu là s? d?ng phuong pháp h?c ?ng d?ng d? c?i thi?n k? nang, dù là nâng cao k? nang (c?i thi?n các k? nang hi?n t?i trong linh v?c chuyên môn c?a b?n), dào t?o l?i k? nang (dua b?n vào m?t linh v?c chuyên môn hoàn toàn m?i) hay k? nang chuyên sâu (d? th?c s? phát tri?n m?c d? thành th?o).</br>

<br>Ði?u th? hai chúng tôi làm là làm vi?c v?i các t? ch?c d? xác d?nh các b? k? nang c?n thi?t cho t?ng vai trò và ? c?p d? nang l?c nào. Sau dó, chúng tôi có th? ch?n t?ng cá nhân, xem h? dang ? dâu và giúp h? hi?u du?c nh?ng l? h?ng k? nang c?a mình d? h? có th? phát tri?n. T?t c? n?i dung c?a chúng tôi d?u du?c dánh giá, trong m?t s? tru?ng h?p, nhi?u l?n khi b?n ti?n b? qua n?i dung dó, vì v?y các cá nhân có th? th?y m?c d? ti?n b? c?a h? d?i v?i các m?c tiêu k? nang dó và d? các t? ch?c có th? xây d?ng b?i c?nh các k? nang c?a h?, ? các c?p d? thành th?o c? th?.</br>

<br>Coursera s? d?ng d? li?u nhu th? nào d? c?i thi?n k?t qu? cho ngu?i h?c và t? ch?c?</br>

<br>Chúng tôi có 87 tri?u ngu?i h?c trên n?n t?ng này trên toàn c?u, thu?c m?i d? tu?i, tính cách, nhân kh?u h?c ; m?t s? ngu?i di làm, m?t s? ngu?i th?t nghi?p, v.v. Kích thu?c c?a t?p d? li?u dó làm cho nó r?t m?nh m?. Chúng tôi có th? bi?t nh?ng k? nang mà m?i ngu?i dang làm và công vi?c h? dang làm d? hi?u các b? k? nang co b?n cho nh?ng vai trò dó, d?ng th?i chúng tôi cung có th? bi?t qu? d?o ngh? nghi?p c?a h? theo th?i gian, vì v?y chúng tôi hi?u nh?ng b? k? nang dó d?n d?n s? thay d?i vai trò nhu th? nào. Các vòng ph?n h?i d?m b?o r?ng t?t c? nh?ng thông tin chi ti?t v? t?ng h?p d? li?u dó d?u phù h?p v?i nh?ng cá nhân th?c s? tham gia các khóa h?c c?a chúng tôi, nh?ng ngu?i có th? ph?n ánh v? các k? nang mà h? nghi r?ng h? dang h?c.</br>

<br>T?t c? di?u này dã giúp chúng tôi xây d?ng m?t h? th?ng phân lo?i k? nang chi ti?t, v?i hàng ch?c nghìn k? nang mà chúng tôi có th? tuong quan v?i các ngu?n d? li?u c?a bên th? ba, ch?ng h?n nhu Di?n dàn Kinh t? Th? gi?i, d? l?p b?n d? ? c?p d? r?t chi ti?t v? nh?ng gì chúng tôi nghi s? yêu c?u v? k? nang trong tuong lai.</br>

<br>Chúng tôi cung có m?t nhóm bao g?m chuyên gia tu v?n chuy?n d?i k? nang làm vi?c v?i các doanh nghi?p, chính ph? và t? ch?c d? xây d?ng các chuong trình c? th? cho m?c tiêu c?a h?. Kho?ng 10% t? ch?c mà chúng tôi h?p tác d? l?n d? d?u tu vào linh v?c này, vì v?y n?u h? dã bi?t chính xác nh?ng gì h? mu?n d?t du?c, chúng tôi có th? l?p danh m?c c?a mình theo nh?ng nhu c?u phát tri?n k? nang c? th? dó. Nhung d?i da s? nh?n ra r?ng th? gi?i k? nang dang thay d?i nhanh chóng và h? không có cái nhìn rõ ràng v? chính xác nh?ng gì c?n ph?i làm trong 2-3 nam t?i, trên co s? t?ng vai trò, vì v?y h? tìm d?n chúng tôi d? làm di?u dó hu?ng d?n.</br>

<br>Vi?c phát tri?n k? nang s? nhu th? nào vào nam 2030 d? t?o ra các con du?ng thay th? cho công vi?c?</br>

<br>Có ngu?i t?ng nói v?i tôi r?ng chúng ta dánh giá quá cao m?c d? thay d?i chúng ta nhìn th?y trong 5 nam và dánh giá th?p s? thay d?i mà chúng ta th?y trong 10 nam. Mu?i nam là kho?ng th?i gian d? dài d? m?t di?u gì dó mà không ai lu?ng tru?c du?c s? phá v? hoàn toàn th? tru?ng. Giáo d?c là m?t trong nh?ng pháo dài cu?i cùng b? phá v? và trong khi d?i d?ch dã d?y nhanh t?c d? thay d?i, tôi v?n nghi r?ng chúng ta dang ? giai do?n r?t, r?t s?m.</br>

<br>Tôi r?t mu?n th?y h? th?ng giáo d?c tr? thành m?t h? th?ng lâu dài d?i tác h?c t?p, ch? không ph?i là m?t th?i di?m riêng bi?t ? giai do?n s?m nh?t trong s? nghi?p c?a b?n. Ði?u dó s? liên quan d?n nhi?u quan h? d?i tác hon gi?a các chính ph?, doanh nghi?p và t? ch?c giáo d?c và tôi nghi r?ng tr?ng tâm c?a các tru?ng d?i h?c khi dó s? t?p trung nhi?u hon vào vi?c ki?m d?nh các chuong trình, di?u ch?nh b?i c?nh cho phù h?p v?i nhu c?u d?a phuong và qu?n lý m?t lo?t n?i dung nh?m t?o co h?i cho m?i ngu?i phát tri?n các k? nang h? c?n. Tôi hy v?ng chúng ta s? ch?ng ki?n s? dân ch? hóa nhi?u hon v? quy?n truy c?p và cách dánh giá nang l?c c?a m?i ngu?i ngoài b?ng c?p: nhi?u ch?ng ch? chuyên môn hon, nhi?u tru?ng d?i h?c doanh nghi?p hon và nhi?u t? ch?c chuyên nghi?p hon cung c?p các l? trình h?c t?p thay th?.</br>

<br>Và tôi hy v?ng r?ng d?n nam 2030 nó là m?t k? v?ng bình thu?ng r?ng b?t k? công vi?c c?a b?n là gì, m?t t? l? ph?n tram th?i gian c?a b?n du?c dành cho vi?c h?c, vì v?y các nhà qu?n lý du?c trao quy?n d? h? tr? công vi?c dó và t?t c? các quy trình c?a công ty d?u xoay quanh v?n d? dó. Ð? bi?t thêm thông tin chi ti?t v? cách h?c chu?n b? cho 375 tri?u công nhân lành ngh? vào nam 2030, hãy d?c toàn b? báo cáo Phát tri?n K? nang và Ðánh giá Con du?ng D?n d?n Vi?c làm: T?m nhìn cho Nam 2030 t? Emerge Education và Coursera. Tìm hi?u cách Coursera h? tr? phát tri?n k? nang có tác d?ng cao và nói chuy?n v?i m?t chuyên gia h?c t?p ngay hôm nay v? gi?i pháp h?c t?p k? thu?t s? t?t nh?t cho doanh nghi?p c?a b?n.</br>', CAST(N'2022-02-07' AS Date), 0, 3, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (18, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/06/Blog-header.png', N'Cung c?p tính toàn v?n trong h?c thu?t v?i các tính nang m?i này', N'<br>Ð?i v?i các nhà lãnh d?o trong giáo d?c d?i h?c, liêm chính trong h?c thu?t t? lâu dã là uu tiên hàng d?u. Nhung khi nhi?u tru?ng d?i h?c b?t d?u dua các chuong trình c?a h? lên m?ng và b?t d?u tang t?c t? d?ng hóa, hành vi sai trái trong h?c t?p ngày càng tr? thành m?t thách th?c ph? bi?n.</br>

<br>Theo Trung tâm Liêm chính H?c thu?t Qu?c t?, hon 60% sinh viên d?i h?c th?a nh?n gian l?n du?i m?t s? hình th?c . ProctorU, m?t d?ch v? ch?m thi tr?c tuy?n, dã th?c hi?n 1,3 tri?u bài thi thông qua n?n t?ng c?a h? t? tháng 4 d?n tháng 6 nam 2020, tang g?p b?n l?n so v?i ba tháng tru?c dó. Trong 1,3 tri?u bài thi dó, h? th?y t? l? gian l?n tang g?p 8 l?n. Ð? c?ng c? ni?m tin vào tính h?p l? và hi?u qu? c?a vi?c gi?ng d?y t? xa, các n?n t?ng h?c t?p tr?c tuy?n dang ph?i d?i m?t v?i nhu c?u c?p thi?t là cung c?p m?t b? tính nang liêm chính trong h?c thu?t m?nh m?.</br>

<br>Ð? dáp ?ng nhu c?u này, Coursera dã phát tri?n m?t b? các tính nang v? liêm chính trong h?c thu?t. s? giúp các t? ch?c mang l?i tính chính tr?c trong h?c thu?t ? m?c d? cao b?ng cách 1) ngan ch?n và phát hi?n gian l?n và 2) dánh giá chính xác m?c d? n?m v?ng ki?n th?c mà h?c sinh dang h?c b?ng các bài dánh giá riêng.</br>

<br>Ng?ng gian l?n tru?c khi nó x?y ra và phát hi?n nó khi nó x?y ra. Các tính nang ngan ch?n d?o van du?c thi?t k? d? ngan ch?n hành vi sai trái trong h?c t?p tru?c khi nó x?y ra b?ng cách c?nh báo cho sinh viên khi bài làm c?a h? s? b? g?n c? vì d?o van, ngan sinh viên sao chép bài làm c?a nhau và nh?c nh? h? v? trách nhi?m duy trì tính chính tr?c trong công vi?c c?a h?. Ch?c ch?n, m?t s? sinh viên có th? g?i m?t bài t?p d?o van. Ðó là lúc phát hi?n d?o van, giúp b?n phát hi?n và theo dõi các tru?ng h?p không trung th?c trong h?c thu?t d?ng th?i cung c?p cho b?n thông tin b?n c?n d? duy trì các tiêu chu?n cao v? tính liêm chính trong h?c thu?t trong chuong trình c?a b?n. Du?i dây là danh sách các tính nang phát hi?n và ngan ch?n d?o van c?a chúng tôi.</br>

<br>Có s?n trong c? gói Co s? và Gói co b?n: T?t chia s? URL: T?t chia s? URL có nghia là sinh viên c?a b?n s? không th? g?i tr?c ti?p liên k?t bài n?p c?a h? cho b?n bè d? ch?m di?m bài n?p, giúp vi?c bình duy?t c?a d?ng nghi?p công b?ng và khách quan hon. T?t b?n sao bài bình duy?t: Tính nang này h?n ch? h?c viên c?a b?n không th? sao chép bài n?p c?a ngu?i khác d? s? d?ng cho bài n?p c?a chính h? trong khi h? dang dánh giá d?ng nghi?p c?a mình. ?n danh dánh giá ngang hàng: Tính nang này ?n danh tên c?a c? ngu?i g?i và ngu?i dánh giá d? dánh giá bình duy?t. Ði?u này h?u ích khi b?n lo l?ng v? tính khách quan c?a nh?ng ngu?i dánh giá, nh?ng ngu?i có th? bi?t ngu?i h?c dã g?i bài dánh giá qua bình duy?t. S? di?m tr?c tuy?n (ra m?t vào tháng 8 nam 2021): Khi kh? d?ng, báo cáo s? di?m tr?c tuy?n c?a chúng tôi s? hi?n th? thông tin v? nh?ng ngu?i h?c hi?n dang ho?c tru?c dây dã dang ký m?t khóa h?c c? th?. Ði?u này s? cho phép b?n theo dõi s? ti?n b? c?a ngu?i h?c và theo dõi các s? c? d?o van. Ch? có trong k? ho?ch c?a T? ch?c: Ði?m tuong d?ng c?a Turnitin: Thông qua s? tích h?p c?a chúng tôi v?i Turnitin, sinh viên c?a b?n s? bi?t li?u bài t?p c?a h? có gi?ng v?i các ngu?n tr?c tuy?n khác ho?c các bài n?p hi?n có trong t? ch?c c?a b?n hay không tru?c khi h? n?p bài t?p, giúp h? có co h?i s?a d?i bài t?p c?a mình. N?u h?c sinh c?a b?n n?p bài t?p dáp ?ng ho?c vu?t quá ngu?ng di?m tuong d?ng, thì bài t?p dó s? b? g?n c? vì d?o van. Nh?c nh? v? chính sách d?o van: V?i l?i nh?c v? chính sách d?o van c?a chúng tôi, b?n hãy d?m b?o r?ng h?c viên c?a mình luôn bi?t v? quy t?c danh d? c?a Coursera. Ngoài ra, tính nang này s? yêu c?u ngu?i h?c cung c?p ch? ký xác nh?n các chính sách c?a Coursera và nh?c nh? h? v? các tiêu chu?n h?c t?p cao mà h? c?n duy trì.</br>', CAST(N'2022-05-22' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (19, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/06/Coursera-Plus-evergreen-animated-1-1024x536.gif', N'Truy c?p h?c t?p không gi?i h?n v?i Coursera Plus, hi?n dã có trên toàn th? gi?i', N'<br>Khi chúng tôi công b? Coursera Plus vào tháng 2 nam nay, chúng tôi r?t vui m?ng du?c mang d?n cho b?n m?t gói dang ký m?i, noi b?n có th? truy c?p không gi?i h?n vào hon 3.000 khóa h?c v?i m?t m?c giá h?p lý và tr?n gói.</br>

<br>Hôm nay, chúng tôi vui m?ng thông báo r?ng Coursera Plus không ch? có s?n cho ngu?i h?c ? m?i noi trên toàn c?u mà còn bao g?m các D? án có hu?ng d?n không gi?i h?n!</br>

<br>Hon 90% danh m?c Coursera có s?n thông qua Coursera Plus. V?i vi?c b? sung các D? án có hu?ng d?n, gi? dây b?n có nhi?u co h?i hon bao gi? h?t d? d?t du?c các m?c tiêu h?c t?p cá nhân và ngh? nghi?p c?a mình. B?n có th? thành th?o m?t k? nang c? th? trong Chuyên môn, s?n sàng cho công vi?c theo yêu c?u ngh? nghi?p v?i Ch?ng ch? Chuyên nghi?p ho?c nhanh chóng tìm hi?u m?t công c? ngành m?i trong D? án có hu?ng d?n. T?t hon n?a, b?n có th? hoàn thành t?t c? ch? v?i m?t m?c giá don gi?n.</br>

<br>Nh?ng ngu?i dang ký Coursera Plus dã cho chúng tôi bi?t r?ng gói này giúp h? dành nhi?u th?i gian hon cho vi?c h?c và h? c?m th?y có d?ng l?c hon d? làm nhu v?y. Trên th?c t?, chúng tôi th?y r?ng nh?ng ngu?i h?c trên Coursera Plus có t? l? hoàn thành cao hon 35% và h? tang g?p ba th?i gian tích c?c trong các khóa h?c c?a mình. H? cung t?n d?ng k? ho?ch d? khám phá nhi?u ch? d? và k? nang hon, dang ký các khóa h?c trong nhi?u linh v?c g?p dôi so v?i nh?ng ngu?i h?c dang ký tr?c ti?p vào m?t Chuyên ngành.</br>

<br>Yiwen là ngu?i dang ký Coursera Plus và cô ?y yêu thích s? linh ho?t, giá c? ph?i chang và ph?m vi h?c t?p: V?i Coursera Plus, tôi có quy?n truy c?p vào r?t nhi?u khóa h?c ch?t lu?ng cao, cho các ch? d? mà tôi quan tâm, ch? trong m?t khóa h?c -thanh toán hàng nam theo th?i gian. Tôi không c?n ph?i v?i vàng hoàn thành các khóa h?c c?a mình trong m?t tháng d? c? g?ng ti?t ki?m ti?n. Th?t ti?n l?i khi tôi có th? tham gia bao nhiêu khóa h?c tùy thích vào b?t k? th?i di?m nào trong nam</br>', CAST(N'2022-05-04' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (20, N'https://lh5.googleusercontent.com/Wa4nb407pNEXXW2lK-_zqb7rrWKNGklrZBaLTJSv9i0i8EFBSlUdKz_vuGhWXeRJwH_mAmRnQNoQaebCObntoWyziuX2hw0VdBXv72MhHaPaNpXxw6hiXzQ5sKDOgFT6HlSTHm8h', N'Live2 Coursera: S?p ra m?t du?i d?ng ?ng d?ng Zoom', N'Vào tháng 8, chúng tôi dã ra m?t Live2 Coursera d? giúp nh?ng ngu?i hu?ng d?n nhanh chóng chuy?n sang tr?c tuy?n b?ng cách tích h?p các bài gi?ng Zoom vào các khóa h?c riêng tu và thu vi?n n?i dung c?a h? trên Coursera. M?c dù di?u này dã giúp gi?i quy?t thách th?c ban d?u trong vi?c chuy?n d?i hu?ng d?n tr?c tuy?n, k?t n?i internet và quy?n truy c?p vào các thi?t b? v?n c?n tr? vi?c h?c t?p c?a nhi?u sinh viên.<p>Hôm nay, chúng tôi r?t vui m?ng du?c thông báo r?ng Live Coursera s?p ra m?t trên th? tru?ng ?ng d?ng Zoom Zoomtopia. ?ng d?ng Live Coursera mi?n phí giúp gi?m kho?ng cách k? thu?t s? trong phiên b?n cao hon b?ng cách cung c?p các tùy ch?n xem và t?i xu?ng linh ho?t, ngu?i hu?ng d?n s? có th? d?y t? xa m?t cách t? tin, bi?t r?ng t?t c? sinh viên c?a h? có th? truy c?p bài gi?ng c?a h? m?i lúc, m?i noi.<p>Ngu?i hu?ng d?n có th? kích ho?t ?ng d?ng Live Coursera d? d? dàng ghi l?i, chia s? và t?i các bài gi?ng Zoom c?a h? lên Coursera. H?c viên có th? xem các b?n ghi bài gi?ng trong Zoom ho?c t?i xu?ng các bài gi?ng dã ghi t? Coursera qua thi?t b? di d?ng ho?c PC ? d?nh d?ng phù h?p nh?t v?i video có d? phân gi?i cao bang thông, video d? li?u th?p ho?c ch? có âm thanh b?ng cách s? d?ng Live2 Coursera Zapp<p>Gi?ng viên có th? truy c?p ?ng d?ng Coursera tr?c ti?p cho Zoom (Zapp) tr?c ti?p trong môi tru?ng Zoom.</p><p>Tru?c khi ghi, ngu?i hu?ng d?n nên di?n vào tru?ng tiêu d? email và video. Ngu?i hu?ng d?n cung có th? ch?n h?p bên c?nh &ldquo;G?i video qua email cho m?i ngu?i du?c m?i tham d? cu?c h?p này d? t? d?ng g?i email cho sinh viên ch?a liên k?t d?n bài gi?ng du?c ghi l?i trên Coursera.&nbsp;</p><p>Khi ngu?i hu?ng d?n dã s?n sàng b?t d?u ghi l?i bài gi?ng c?a mình, h? có th? nh?p vào &ldquo;B?t d?u ghi vào Coursera. Sau khi bài gi?ng k?t thúc, liên k?t video có th? du?c chia s? tr?c ti?p v?i h?c viên qua email ho?c trong Zoom.</p><p>Trong Zoom, h?c viên có th? truy c?p các video du?c thêm g?n dây và xem tr?c ti?p trong Zoom.</p><p> Thông qua URL có th? chia s?, h? có th? xem video tr?c tuy?n trên Coursera ho?c t?i xu?ng d? xem ngo?i tuy?n trên thi?t b? di d?ng ho?c PC.<p>Khi t?i xu?ng video bài gi?ng, ngu?i h?c có th? ch?n t? m?t s? tùy ch?n t?i xu?ng, bao g?m video có d? phân gi?i cao, video d? li?u th?p, ho?c ch? có âm thanh.</p><p>Chúng tôi r?t vui m?ng du?c h?p tác v?i Zoom d? giúp ngu?i hu?ng d?n t?o ra chuong trình h?c tr?c tuy?n toàn di?n và d? ti?p c?n cho t?t c? h?c sinh.</p>', CAST(N'2022-07-18' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (21, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/08/Blog-post-1-1-1536x804.png', N'Gi?i thi?u L? trình h?c t?p ngh? nghi?p: H?c các k? nang d? thang ti?n ngh? nghi?p c?a b?n m?t cách t? tin', N'B?t tay vào m?t chuong m?i trong hành trình s? nghi?p c?a b?n có th? là m?t tr?i nghi?m c?m xúc m?nh m?. B?n có th? c?m th?y ph?n khích và mong d?i, nhung cung lo l?ng và cang th?ng. Cho dù b?n dang tìm ki?m công vi?c d?u tiên, theo du?i s? thang ti?n hay d? tính chuy?n d?i gi?a s? nghi?p sang m?t linh v?c m?i, luôn có nh?ng di?u chua bi?t d? qu?n lý. Vào th?i di?m mà COVID-19 dã tác d?ng dáng k? d?n b?i c?nh vi?c làm, s? không ch?c ch?n này có v? còn khó khan hon.</p><p>Hôm nay, Coursera s? ra m?t L? trình h?c t?p ngh? nghi?p, m?t tài nguyên tr?c tuy?n mi?n phí d? giúp b?n tìm th?y n?i dung h?c t?p mà mình mong mu?n. c?n ph?i d?t du?c m?c tiêu ngh? nghi?p c?a b?n. M?i l? trình cho b?n th?y s? phát tri?n c?a các vai trò công vi?c&mdash;t? c?p d? m?i b?t d?u d?n chuyên gia có kinh nghi?m&mdash;d?i v?i m?t linh v?c dang có nhu c?u, trình bày chi ti?t các k? nang c?n thi?t d? thành công trong s? nghi?p trong linh v?c dó và ánh x? các k? nang này t?i các chuong trình h?c t?p có liên quan trên Coursera. V?i L? trình h?c t?p ngh? nghi?p, b?n có th? t? tin h?c h?i khi bi?t r?ng mình dang di dúng hu?ng d? thang ti?n trong s? nghi?p.</p><p>L? trình h?c t?p ngh? nghi?p cho sáu linh v?c tang tru?ng cao hi?n dã có D? li?u k? thu?t m?ng qu?n lý d? án linh ho?t Ti?p th? k? thu?t s? Khoa h?c d? li?u thi?t k? k? thu?t. Các chuyên gia chi?n lu?c n?i dung c?a Coursera dã ch?n nh?ng linh v?c này vì m?c tang tru?ng ?n d?nh và m?c luong c?nh tranh c?a chúng</a> và vì các k? nang c?n thi?t d? thành công trong nh?ng linh v?c này có th? du?c h?c tr?c tuy?n.</p><p>Ví d?: hãy xem xét linh v?c Agile Qu?n lý d? án. Các vai trò trong linh v?c này ch?ng h?n nhu ngu?i qu?n lý d? án CNTT có nguy co t? d?ng hóa th?p và có m?c luong trung bình cho các vai trò m?i b?t d?u. Trong các chuong trình nhu khóa h?c d?c l?p Atlassian Agile with Atlassian Jira và Ch?ng ch? Chuyên gia Qu?n lý D? án c?a UC Irvine</a>, b?n có th? h?c các k? nang d? b?t d?u và thang ti?n trong s? nghi?p qu?n lý d? án c?a mình.</p><p><strong>Làm th? nào d? có th? b?n b?t d?u s? d?ng L? trình H?c t?p Ngh? nghi?p? Gi? s? b?n quan tâm d?n vi?c b?t d?u s? nghi?p khoa h?c d? li?u. B?n có th? b?t d?u b?ng cách khám phá L? trình h?c t?p ngh? nghi?p khoa h?c d? li?u</a>, noi b?n tìm th?y mô t? chung v? linh v?c này và n?i dung do chuyên gia tuy?n ch?n dành cho các chuyên gia khoa h?c d? li?u m?i b?t d?u, trung c?p và nâng cao. N?i dung du?c tuy?n ch?n cung c?p nhi?u chuong trình h?c t?p, t? D? án có hu?ng d?n có th? hoàn thành trong vòng chua d?y hai gi? d?n các chuong trình c?p b?ng và ch?ng ch? chính th?c cung c?p dào t?o chuyên sâu hon trong linh v?c này. Các ví d? bao g?m Ch?ng ch? Chuyên gia Khoa h?c D? li?u c?a IBM ho?c Th?c si Khoa h?c D? li?u và Máy h?c c?a Ð?i h?c Hoàng gia Luân Ðôn</a>. Sau khi xác d?nh du?c c?p d? và lo?i n?i dung phù h?p v?i m?c tiêu c?a mình, b?n có th? b?t d?u h?c.<p>Trong nh?ng tháng t?i, chúng tôi ti?p t?c gi?i thi?u thêm L? trình h?c t?p ngh? nghi?p trên các linh v?c dang phát tri?n khác. M?c tiêu c?a chúng tôi là h? tr? b?n t?ng bu?c khi b?n theo du?i m?c tiêu c?a mình, b?ng cách cung c?p các tài nguyên h?c t?p d?ng c?p th? gi?i phù h?p v?i hành trình s? nghi?p d?c dáo c?a b?n.</p>', CAST(N'2022-04-28' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (22, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/02/CourseraPlus_Product_Update-1.png', N'Gi?i thi?u Coursera Plus: gói thuê bao d? h?c không gi?i h?n', N', N''<p>Ð?i d?ch dã gây ra m?t s? thay d?i chua t?ng có trong giáo d?c d?i h?c. Mùa xuân v?a qua, h?c sinh trên toàn th? gi?i dã h?c ? nhà và ngày nay, nhi?u h?c sinh v?n b? ?nh hu?ng b?i vi?c dóng c?a khuôn viên tru?ng. Các tru?ng cao d?ng và d?i h?c ti?p t?c v?t l?n v?i tác d?ng c?a COVID-19 và quá trình chuy?n d?i sang h?c t?p k?t h?p và tr?c tuy?n s? nhu th? nào vào mùa thu này.&nbsp;</p><p>T?i H?i ngh? Coursera vào tháng 4, chúng tôi dã xem tru?c Live Coursera, chuong trình này cho phép ngu?i hu?ng d?n tích h?p các cu?c h?p tr?c ti?p vào các khóa h?c c?a h?. Hôm nay, chúng tôi r?t vui m?ng thông báo r?ng Live Coursera có s?n cho t?t c? các tác gi? trên Coursera. Nhu chúng ta dã th?y trong vài tháng qua, các bài gi?ng Zoom du?c ghi l?i có ti?m nang tr? thành tài s?n k? thu?t s? lâu dài, có giá tr? cho c? nhà giáo d?c và ngu?i h?c.</p><p><strong>Các công c? có tác d?ng dành cho nhà giáo d?c<p>Ð? tr? giúp giúp quá trình chuy?n d?i sang h?c tr?c tuy?n d? dàng hon m?t chút, chúng tôi dã thi?t k? Live2 Coursera d? giúp vi?c gi?ng d?y tr?c ti?p tr? nên tr?c quan và hi?u qu? nh?t có th?. Live2 Coursera giúp b?n d?y các l?p h?c tr?c ti?p, ch?ng h?n nhu v?i sinh viên hoàn toàn tr?c tuy?n ho?c sinh viên trong tru?ng dang h?c t? xa, trong các khóa h?c riêng. Live2 Coursera cung cho phép b?n thêm các b?n ghi Thu phóng vào thu vi?n n?i dung Coursera c?a mình và t?n d?ng chúng cho các l?p h?c và MOOC trong tuong lai.<p>Chúng tôi r?t vui du?c chia s? các tính nang m?i sau dây dành cho các nhà giáo d?c:</p>p><strong>Liên k?t tài kho?n Zoom c?a b?n : Gi? dây, b?t k? tác gi? nào cung có th? liên k?t tài kho?n Zoom c?a h? v?i Coursera d? b?t d?u cung c?p các cu?c h?p tr?c ti?p trong các khóa h?c c?a h? (Kh? d?ng ngay hôm nay cho t?t c? các tác gi?)</em></p><p><strong>Lên l?ch các cu?c h?p: Các tác gi? có th? lên l?ch các cu?c h?p Zoom m?t cách li?n m?ch tích h?p chúng trong tr?i nghi?m h?c t?p khóa h?c c?a h? d? có quy?n truy c?p h?p lý vào các cu?c h?p tr?c ti?p (Hi?n có s?n cho các d?ch v? khóa h?c riêng)</em></p><p><strong>Ð?nh c?u hình b?n ghi: B?n ghi cu?c h?p du?c t? d?ng luu tr? trong Thu vi?n n?i dung khóa h?c c?a b?n dành cho nhân viên và cung có th? du?c d?nh c?u hình d? t? d?ng xu?t b?n cho ngu?i h?c. N?i dung Thu vi?n n?i dung có th? du?c t?n d?ng cho các d?ch v? trong tuong lai c?a khóa h?c này ho?c b?t k? khóa h?c nào khác, vì v?y, b?n thêm vào thu vi?n n?i dung c?a mình v?i m?i cu?c h?p tr?c ti?p (Hi?n có s?n cho các d?ch v? khóa h?c riêng)</em></p><p><strong>Nh?p b?n ghi tru?c: B?n có b?n ghi t? các l?p tru?c trên Coursera không? Chúng tôi s? s?m thêm Zoom vào danh sách các nhà cung c?p Ðám mây mà b?n có th? nh?p tr?c ti?p video t? dó mà không c?n ph?i t?i xu?ng th? công tru?c. Ði?u này cho phép tác gi? nh?p các b?n ghi tru?c hi?u qu? hon, b? sung thêm vào thu vi?n n?i dung có th? tái s? d?ng c?a b?n. (S?p có cho t?t c? các tác gi?)</em></p><p><strong>B?t d?u gi?ng d?y ngay l?p t?c: Gi? dây, các tác gi? có th? kh?i ch?y các d?ch v? khóa h?c riêng hoàn toàn t? ph?c v?, vì v?y b?n có th? b?t d?u gi?ng d?y b?t c? lúc nào trong vòng vài phút mà không c?n d?i Phê duy?t c?a Coursera (Hi?n có s?n cho các khóa h?c riêng)</em></p><p><strong>Ði?u ch?nh nhanh chóng: Ð?i v?i các khóa h?c riêng, tác gi? có th? thay d?i n?i dung và dánh giá b?t k? lúc nào, nghia là b?n có th? di?u ch?nh khóa h?c c?a b?n m?t cách nhanh chóng d?a trên hi?u su?t c?a sinh viên. Chúng tôi s? s?m cho phép t?o mô-dun (thêm, ch?nh s?a ho?c xóa) cho các d?ch v? khóa h?c riêng dã ra m?t (S?p có cho các d?ch v? khóa h?c riêng)</em></p><p><strong>Tr?i nghi?m ngu?i h?c li?n m?ch</strong </p><p>H?c viên xem các s? ki?n và b?n ghi tr?c ti?p ngay trong tr?i nghi?m khóa h?c c?a h? và nh?n du?c email nh?c nh? tru?c s? ki?n &ndash; t?t c? du?c di?u ch?nh theo múi gi? c?a t?ng cá nhân và du?c b?n d?a hóa d? h? tr? ngu?i h?c trên kh?p th? gi?i.&nbsp;<em>(Hi?n có s?n cho các khóa h?c riêng)</em></p><p><strong>M?t cái nhìn thoáng qua v? tuong lai<p> Chúng tôi r?t vinh d? du?c ph?c v? hon 200 tru?ng d?i h?c và d?i tác trong ngành cung nhu 68 tri?u ngu?i h?c trên kh?p th? gi?i trong hành trình d?y và h?c tr?c tuy?n c?a h?. S?p t?i, chúng tôi s? ti?p t?c d?i m?i trên n?n t?ng này d? t?o ra tr?i nghi?m t?t nh?t cho các nhà giáo d?c và ngu?i h?c &ndash; bao g?m c? gi?ng d?y tr?c ti?p và không d?ng b?.&nbsp;</p>', CAST(N'2022-07-18' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (23, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/04/Coursera_Conference_2020_Product_Announcement_blog_header.png', N'Gi?i thi?u các công c? và tính nang m?i khi nhu c?u h?c tr?c tuy?n tang lên', N'Ngu?i h?c trên kh?p th? gi?i dang chuy?n sang h?c tr?c tuy?n vào th?i di?m d?c bi?t khó khan này. Ch? sau m?t dêm, các tru?ng d?i h?c dã chuy?n sang hình th?c gi?ng d?y t? xa d? mang l?i s? liên t?c trong h?c t?p cho sinh viên c?a h?. Trong tháng v?a qua, 5,9 tri?u ngu?i h?c dã dang ký các khóa h?c trên Coursera và g?n 2.700 t? ch?c dã tri?n khai các chuong trình Coursera for Campus. Khi c?ng d?ng ngu?i h?c và nhà giáo d?c tr?c tuy?n phát tri?n, chúng tôi s? n? l?c g?p dôi d? cung c?p cho h? n?i dung ch?t lu?ng hàng d?u, du?c cung c?p thông qua tr?i nghi?m h?c t?p ch?t lu?ng cao. Hôm nay, chúng tôi r?t vui m?ng du?c gi?i thi?u m?t s? công c? và tính nang m?i dành cho ngu?i h?c và nhà giáo d?c c?a chúng tôi.&nbsp;</p><p><strong>Ph?c v? ngu?i h?c</strong></p><p>Ði?u quan tr?ng là chúng tôi ti?p t?c giúp ngu?i h?c phát tri?n và th? hi?n các k? nang liên quan d?n công vi?c. Ði?u này b?t d?u v?i n?i dung phù h?p cho các m?c tiêu c? th? và h? tr? d? giúp ngu?i h?c ti?n b?.</p><p><strong>K?t h?p ngu?i h?c v?i n?i dung phù h?p</strong></p><p>V?i nhi?u lo?i n?i dung các khóa h?c, Chuyên ngành, b?ng c?p và ch?ng ch?, ngu?i h?c có r?t nhi?u l?a ch?n trên n?n t?ng c?a chúng tôi. H? s? có th? d? dàng khám phá n?i dung phù h?p nh?t d? phát tri?n các k? nang h? c?n. Ð? tr? giúp, chúng tôi dã gi?i thi?u:</p><strong>DUY?T DUY?T ÐU?C CÁ NHÂN HÓA </strong>&ndash; Ðu?c xây d?ng trên các mô hình máy h?c, tính nang này d?m b?o ngu?i h?c nh?n du?c d? xu?t phù h?p cho n?i dung h?c t?p phù h?p nh?t d?a trên hành trình h?c t?p c?a h? cho d?n nay.</li><li><strong>TRANG CH? ÐU?C CÁ NHÂN HÓA</strong> Khi dang nh?p, ngu?i h?c có th? ti?p t?c m?t khóa h?c ch? b?ng m?t cú nh?p chu?t, xem các d? xu?t du?c cá nhân hóa v? các khóa h?c d? theo du?i ti?p theo và xem các ch?ng ch? mà h? dã d?t du?c cho d?n nay.</ul><p><strong>Giúp ngu?i h?c ti?n b?</strong></p><p>Chúng tôi nh?n ra r?ng vi?c h?c c?n có th?i gian, cam k?t và d?ng l?c. Chúng tôi ti?p t?c c?i thi?n h? th?ng tr? giúp trong khóa h?c c?a mình, cung c?p các thông tin h? tr? do AI cung c?p d? giúp ngu?i h?c di dúng hu?ng. Khi ngu?i h?c phát tri?n các k? nang, di?u quan tr?ng là h? ph?i hi?u du?c trình d? c?a mình so v?i m?c tiêu ngh? nghi?p c?a h?. Chúng tôi r?t vui du?c gi?i thi?u:</p>Ð?T M?C TIÊU</strong> Sau khi ngu?i h?c b?t d?u m?t khóa h?c m?i, m?t l?i nh?c s? xu?t hi?n d? t?o m?c tiêu h?c t?p ngay t? d?u. Nh?ng m?c tiêu này có th? du?c d?ng b? hóa li?n m?ch v?i L?ch Google và các ?ng d?ng l?ch khác, tích h?p vi?c h?c vào thói quen hàng ngày.</ul><li><strong>TÀI LI?U ÐÁNH GIÁ THÔNG MINH. Công c? h?c máy này giúp b? ch?n ngu?i h?c khi h? tru?t bài ki?m tra. Nó cung c?p các d? xu?t tài li?u ôn t?p có m?c tiêu d?a trên các câu h?i c? th? mà h? dã b? l?, cung c?p cho ngu?i h?c m?t l? trình có c?u trúc d? thành công trong l?n th? làm bài ki?m tra ti?p theo.</li><strong>THEO DÕI K? NANG C?A NGU?I H?C. Công c? d?a trên d? li?u này theo dõi s? phát tri?n k? nang c?a ngu?i h?c, chia s? di?m nang l?c du?c c?p nh?t khi ngu?i h?c th?c hi?n nhi?u bài dánh giá hon trên Coursera. Thông qua b?ng di?u khi?n t?p trung, ngu?i h?c có th? theo dõi s? ti?n b? c?a h? d?i v?i các k? nang ngh? nghi?p c? th? và xem di?m nang l?c c?a h? nhu th? nào so v?i các chuyên gia khác trên n?n t?ng Coursera.</ul><p><strong>Ph?c v? các d?i tác c?a chúng tôi<p>Trong khi các tru?ng d?i h?c c?n nhanh chóng lên m?ng do s? gián do?n t? COVID-19, dây cung là ch?t xúc tác cho quá trình chuy?n d?i k? thu?t s? c?a phiên b?n cao hon. Chúng tôi ? dây d? h? tr? các d?i tác c?a mình trong n? l?c cung c?p d?ch v? h?c t?p tr?c tuy?n trên quy mô l?n v?i m?t s? công c? và tính nang m?i.<p><strong>Giúp các nhà giáo d?c chuy?n sang tr?c tuy?n nhanh hon</strong></p><p>Ð?i d?ch vi-rút corona dang bu?c th? nghi?m toàn c?u v?i vi?c gi?ng d?y t? xa. Chúng tôi dã nghe t? nhi?u d?i tác dang tìm ki?m các công c? và ngu?n l?c d? cung c?p tính liên t?c trong h?c t?p cho h?c sinh c?a h?. Luu tâm d?n nh?ng nhà giáo d?c này, chúng tôi dã ra m?t:<strong>Live2Coursera</strong>. Hàng nghìn ngu?i hu?ng d?n dang s? d?ng Zoom d? gi?ng bài cho hàng tri?u sinh viên trên toàn th? gi?i và tài nguyên này s? du?c chuy?n thành tài s?n k? thu?t s? dài h?n. Live2 Coursera cho phép tích h?p li?n m?ch các bài gi?ng tr?c ti?p này vào m?t khóa h?c riêng. Các b?n ghi thu phóng du?c t? d?ng thêm vào khóa h?c c?a ngu?i hu?ng d?n khi h? gi?ng d?y, vì v?y h? có th? xây d?ng m?t thu vi?n n?i dung d? s? d?ng l?i trong các khóa h?c m? ho?c riêng tu trong tuong lai. Ra m?t vào cu?i nam 2020.</em><strong>CourseMatch. Ti?p n?i Sáng ki?n ?ng phó v?i vi-rút corona, v?n cung c?p cho các tru?ng d?i h?c quy?n truy c?p mi?n phí vào Coursera for Campus, chúng tôi dã ra m?t CourseMatch</a>: m?t gi?i pháp máy h?c t? d?ng kh?p các khóa h?c trong khuôn viên tru?ng d?i h?c v?i các khóa h?c trong danh m?c c?a chúng tôi, cho phép các t? ch?c nhanh chóng cung c?p các khóa h?c tr?c tuy?n phù h?p nh?t cho sinh viên c?a h?.</ul><p><strong>D? dàng t?o và qu?n lý n?i dung<p>Các d?i tác c?a chúng tôi t?n tâm t?o ra các khóa h?c và chuyên ngành ch?t lu?ng cao cho ngu?i h?c ? kh?p m?i noi. Chúng tôi tri?n khai m?t s? c?i ti?n m?i d? giúp các d?i tác nhanh chóng t?o và qu?n lý n?i dung trên n?n t?ng c?a chúng tôi:</p><strong>Nh?p trên n?n t?ng dám mây. Nh?p li?n m?ch n?i dung dám mây tr?c ti?p vào n?n t?ng Coursera t? b?t k? URL có s?n công khai nào và sau khi dang nh?p vào tài kho?n Dropbox ho?c Google Drive.</ul>m?nh>NH?P KH?U ÐÁNH GIÁ. Ðánh giá tác gi? m?t cách hi?u qu? b?ng cách nh?p tài li?u tr?c ti?p vào n?n t?ng Coursera t? Google Docs, Sheets, Microsoft Word và Excel. Ra m?t vào cu?i nam 2020.</em></li><strong>NGÂN HÀNG CÂU H?I. T?o ngân hàng câu h?i, g?n th? câu h?i d?a trên m?c tiêu và d? khó d? t?n d?ng hi?u qu? b? câu h?i c?t lõi trong m?t s? bài dánh giá. Ra m?t vào cu?i nam 2020.</em></li><strong>ÐÁNH GIÁ NGÀNH NGH? CÓ S? TR? GIÚP C?A MÁY. Công c? này cho phép ch?m di?m theo t? l?. Nh?ng ngu?i h?c dang g?p khó khan trong vi?c hoàn thành bài t?p du?c x?p lo?i ngang hàng có th? t? d?ng dánh giá công vi?c c?a h? b?ng mô hình máy h?c du?c dào t?o d?a trên các bài n?p du?c x?p lo?i ngang hàng tru?c dó t? khóa h?c<strong>ITEM LINKING. Khi m?t d?i tác th?c hi?n các thay d?i d?i v?i m?t m?c trong m?t khóa h?c, h? có th? áp d?ng thay d?i dó trên t?t c? các b?n sao du?c liên k?t c?a m?c dó trong các khóa h?c khác, tang hi?u qu?, tính nh?t quán và kh? nang x?p ch?ng c?a n?i dung. Ði?m bài ki?m tra c?a ngu?i h?c t? m?t khóa h?c m? s? t? d?ng chuy?n sang c?p d? mà bài ki?m tra dó cung du?c s? d?ng, giúp ngu?i h?c không c?n th?c hi?n l?i bài dánh giá.</li><strong>VAI TRÒ TÙY CH?NH. Vi?c qu?n lý các vai trò và quy?n liên quan d?n m?t khóa h?c thu?ng dòi h?i n? l?c k?t h?p c?a tr? lý gi?ng d?y, gi?ng viên và qu?n tr? viên tru?ng d?i h?c. Vai trò tùy ch?nh cung c?p kh? nang ki?m soát và tính linh ho?t b? sung, gi? dây các d?i tác có th? t?o vai trò nhân viên m?i v?i b?t k? s? k?t h?p quy?n và quy?n truy c?p nào. Ð?c bi?t v?i n?i dung l?y tín ch?, di?u này mang l?i m?t l?p b?o v? b? sung cho quy?n riêng tu c?a sinh viên.<p><strong>Trao quy?n cho các d?i tác c?p b?ng c?a chúng tôi b?ng d? li?u và API</strong></p><p>Khi chúng tôi làm vi?c v?i các d?i tác c?a mình d? mang l?i nhi?u b?ng c?p ch?t lu?ng hàng d?u tr?c tuy?n hon, chúng tôi cung t?p trung vào vi?c giúp các d?i tác c?p b?ng c?a chúng tôi qu?n lý n?i dung c?a h? hi?u qu? hon:</p><strong>API DEGREE. Các d?i tác có th? tích h?p v?i Coursera thông qua API, cho phép trao d?i g?n th?i gian th?c b?ng công ngh? d?a trên tiêu chu?n. Ði?u này s? b?t d?u v?i d? li?u v?n hành chính cho các chuong trình c?p b?ng và dang ký khóa h?c, v?i nhi?u API hon s? ra m?t trong su?t nam 2020. Nó s? giúp xác d?nh và gi?i quy?t l?i nhanh hon, tang tính linh ho?t cho các d?i tác s? d?ng kho công ngh? c?a riêng h? và cho phép th? nghi?m c? tru?c và sau và sau khi tung ra n?i dung d? ch? d?ng giám sát m?i v?n d?.<p>C?ng d?ng ngu?i h?c và nhà giáo d?c c?a chúng tôi d?i di?n cho nhi?u nhu c?u khác nhau và chúng tôi cam k?t dáp ?ng nh?ng nhu c?u dó b?ng s? d?i m?i nhanh chóng. B?t k? b?n ? dâu trên th? gi?i, chúng tôi luôn s?n sàng tr? giúp b?n d?t du?c m?c tiêu gi?ng d?y và h?c t?p. Ki?m tra ngu?i h?c và c?ng d?ng c?a chúng tôi ngày hôm nay.', CAST(N'2022-03-21' AS Date), 1, 4, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (24, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/Northeastern-University-MS-in-Management-Digital-Transformation-in-Healthcare-with-Mayo-Clinic-social-blog.png', N'Ð?i h?c Northeastern và Mayo Clinic ra m?t van b?ng d?i h?c d?u tiên trên Coursera', N'<p>Ngu?i h?c trên kh?p th? gi?i dang chuy?n sang h?c tr?c tuy?n vào th?i di?m d?c bi?t khó khan này. Ch? sau m?t dêm, các tru?ng d?i h?c dã chuy?n sang hình th?c gi?ng d?y t? xa d? mang l?i s? liên t?c trong h?c t?p cho sinh viên c?a h?. Trong tháng v?a qua, 5,9 tri?u ngu?i h?c dã dang ký các khóa h?c trên Coursera và g?n 2.700 t? ch?c dã tri?n khai các chuong trình Coursera for Campus. Khi c?ng d?ng ngu?i h?c và nhà giáo d?c tr?c tuy?n phát tri?n, chúng tôi s? n? l?c g?p dôi d? cung c?p cho h? n?i dung ch?t lu?ng hàng d?u, du?c cung c?p thông qua tr?i nghi?m h?c t?p ch?t lu?ng cao. Hôm nay, chúng tôi r?t vui m?ng du?c gi?i thi?u m?t s? công c? và tính nang m?i dành cho ngu?i h?c và nhà giáo d?c c?a mình.<p><strong>Ph?c v? ngu?i h?c</strong></p><p>Ði?u quan tr?ng là chúng tôi ph?i ti?p t?c giúp ngu?i h?c phát tri?n và gi?i thi?u vi?c làm -k? nang liên quan. Ði?u này b?t d?u v?i n?i dung phù h?p cho các m?c tiêu c? th? và h? tr? d? giúp ngu?i h?c ti?n b?.<p><strong>K?t h?p ngu?i h?c v?i n?i dung phù h?p</strong></p><p>V?i nhi?u lo?i khóa h?c, Chuyên ngành, b?ng c?p và ch?ng ch?, ngu?i h?c có r?t nhi?u l?a ch?n trên n?n t?ng c?a chúng tôi. H? s? có th? d? dàng khám phá n?i dung phù h?p nh?t d? phát tri?n các k? nang h? c?n. Ð? tr? giúp, chúng tôi dã gi?i thi?u:</p><li><strong>DUY?T DUY?T ÐU?C CÁ NHÂN HÓA Ðu?c xây d?ng trên các mô hình máy h?c, tính nang này d?m b?o ngu?i h?c nh?n du?c các d? xu?t phù h?p cho n?i dung h?c t?p phù h?p nh?t d?a trên hành trình h?c t?p c?a h? cho d?n nay<li><strong> THI?T L?P M?C TIÊU Sau khi ngu?i h?c b?t d?u m?t khóa h?c m?i, m?t l?i nh?c s? xu?t hi?n d? t?o m?c tiêu h?c t?p ngay t? d?u. Các m?c tiêu này có th? du?c d?ng b? hóa li?n m?ch v?i L?ch Google và các ?ng d?ng l?ch khác, tích h?p vi?c h?c vào thói quen hàng ngày<li<strong>TÀI LI?U XEM XÉT THÔNG MINH</strong>Công c? máy h?c này giúp b? ch?n ngu?i h?c khi h? tru?t bài ki?m tra. Nó cung c?p các d? xu?t tài li?u ôn t?p có m?c tiêu d?a trên các câu h?i c? th? mà h? dã b? l?, cung c?p cho ngu?i h?c l? trình có c?u trúc d? thành công trong l?n th? làm bài ki?m tra ti?p theo.<strong>THEO DÕI K? NANG C?A NGU?I H?C</strong> Công c? d?a trên d? li?u này theo dõi quá trình phát tri?n k? nang c?a ngu?i h?c, chia s? thông tin c?p nh?t di?m nang l?c khi ngu?i h?c th?c hi?n nhi?u bài dánh giá hon trên Coursera. Thông qua b?ng di?u khi?n t?p trung, ngu?i h?c có th? theo dõi s? ti?n b? c?a h? d?i v?i các k? nang ngh? nghi?p c? th? và xem di?m nang l?c c?a h? so v?i các chuyên gia khác trên n?n t?ng Coursera nhu th? nào.<strong>Ph?c v? các d?i tác c?a chúng tôi</strong><p>Trong khi các tru?ng d?i h?c c?n nhanh chóng chuy?n sang tr?c tuy?n do s? gián do?n t? COVID-19, dây cung là ch?t xúc tác cho quá trình chuy?n d?i k? thu?t s? c?a phiên b?n cao hon. Chúng tôi ? dây d? h? tr? các d?i tác c?a mình trong n? l?c cung c?p d?ch v? h?c t?p tr?c tuy?n trên quy mô l?n v?i m?t s? công c? và tính nang m?i.<p><strong>Giúp các nhà giáo d?c chuy?n sang tr?c tuy?n nhanh hon</strong></p><p>Ð?i d?ch vi-rút corona dang bu?c toàn c?u ph?i th? nghi?m hình th?c d?y h?c t? xa. Chúng tôi dã nghe t? nhi?u d?i tác dang tìm ki?m các công c? và tài nguyên d? cung c?p Live Coursera. Hàng nghìn ngu?i hu?ng d?n dang s? d?ng Zoom d? gi?ng bài cho hàng tri?u sinh viên trên toàn th? gi?i và tài nguyên này s? du?c chuy?n thành tài s?n k? thu?t s? dài h?n. Live2 Coursera cho phép tích h?p li?n m?ch các bài gi?ng tr?c ti?p này vào m?t khóa h?c riêng. Các b?n ghi thu phóng du?c t? d?ng thêm vào khóa h?c c?a ngu?i hu?ng d?n khi h? gi?ng d?y, vì v?y h? có th? xây d?ng thu vi?n n?i dung d? s? d?ng l?i trong các khóa h?c m? ho?c riêng tu trong tuong lai.<strong>CourseMatch</strong> Theo sát Sáng ki?n ?ng phó v?i vi-rút corona c?a chúng tôi, t? ch?c cung c?p cho các tru?ng d?i h?c v?i quy?n truy c?p mi?n phí vào Coursera for Campus, chúng tôi dã ra m?t CourseMatch</a>: m?t gi?i pháp máy h?c t? d?ng kh?p các khóa h?c trong khuôn viên tru?ng d?i h?c v?i các khóa h?c trong danh m?c c?a chúng tôi, cho phép các t? ch?c nhanh chóng cung c?p các khóa h?c tr?c tuy?n phù h?p nh?t cho sinh viên c?a h?.< p><strong>D? dàng t?o và qu?n lý n?i dung<p>Các d?i tác c?a chúng tôi t?n tâm t?o ra các khóa h?c và Chuyên ngành ch?t lu?ng cao cho ngu?i h?c ? kh?p m?i noi. Chúng tôi tri?n khai m?t s? c?i ti?n m?i d? giúp các d?i tác nhanh chóng t?o và qu?n lý n?i dung trên n?n t?ng c?a chúng tôi:</p><strong>Nh?p trên n?n t?ng dám mây</strong> Nh?p li?n m?ch n?i dung trên n?n t?ng dám mây tr?c ti?p vào n?n t?ng Coursera t? b?t k? URL có s?n công khai nào và sau khi ký vào tài kho?n Dropbox ho?c Google Drive.<strong>NH?P ÐÁNH GIÁ</strong> Ðánh giá tác gi? m?t cách hi?u qu? b?ng cách nh?p tài li?u tr?c ti?p vào n?n t?ng Coursera t? Google Tài li?u, Trang tính, Microsoft Word và Excel.<em>Ra m?t sau nam 2020.< /em<strong>NGÂN HÀNG CÂU H?I T?o ngân hàng câu h?i, g?n th? các câu h?i d?a trên m?c tiêu và d? khó d? t?n d?ng hi?u qu? b? câu h?i c?t lõi trong m?t s? bài dánh giá.&nbsp;<em>Ra m?t vào cu?i nam 2020.<li><strong> CÓ S? TR? GIÚP C?A MÁY ÐÁNH GIÁ NGÀNH HÀNG</strong>&nbsp;&ndash; Công c? này cho phép ch?m di?m theo t? l?. Nh?ng ngu?i h?c dang g?p khó khan trong vi?c hoàn thành bài t?p du?c x?p lo?i ngang hàng có th? t? d?ng dánh giá công vi?c c?a h? b?ng mô hình máy h?c du?c dào t?o d?a trên các bài n?p du?c x?p lo?i ngang hàng tru?c dó t? khóa h?c.<strong>LIÊN K?T M?C</strong>&nbsp;&ndash; Khi m?t d?i tác th?c hi?n các thay d?i d?i v?i m?t m?c trong m?t khóa h?c, h? có th? áp d?ng thay d?i dó trên t?t c? các b?n sao du?c liên k?t c?a m?c dó trong các khóa h?c khác, tang hi?u qu?, tính nh?t quán và kh? nang x?p ch?ng c?a n?i dung. Ði?m bài ki?m tra c?a ngu?i h?c t? m?t khóa h?c m? s? t? d?ng chuy?n sang c?p d? mà bài ki?m tra dó cung du?c s? d?ng, giúp ngu?i h?c không c?n th?c hi?n l?i bài dánh giá.<li><strong>VAI TRÒ TÙY CH?NH</strong>&nbsp;&ndash; Vi?c qu?n lý các vai trò và quy?n liên quan d?n m?t khóa h?c thu?ng dòi h?i n? l?c k?t h?p c?a tr? lý gi?ng d?y, gi?ng viên và qu?n tr? viên tru?ng d?i h?c. Vai trò tùy ch?nh cung c?p kh? nang ki?m soát và tính linh ho?t b? sung, gi? dây các d?i tác có th? t?o vai trò nhân viên m?i v?i b?t k? s? k?t h?p quy?n và quy?n truy c?p nào. Ð?c bi?t v?i n?i dung l?y tín ch?, di?u này cung c?p m?t l?p b?o v? b? sung cho quy?n riêng tu c?a sinh viên. Trao quy?n cho các d?i tác c?p b?ng c?a chúng tôi b?ng d? li?u và API</strong><p>Khi chúng tôi làm vi?c v?i các d?i tác c?a mình d? mang d?n nhi?u b?ng c?p ch?t lu?ng hàng d?u tr?c tuy?n hon, chúng tôi cung t?p trung vào vi?c giúp các d?i tác c?p b?ng c?a chúng tôi qu?n lý n?i dung c?a h? hi?u qu? hon: <strong>API DEGREE</strong> Ð?i tác có th? tích h?p v?i Coursera thông qua API, cho phép trao d?i g?n th?i gian th?c b?ng công ngh? d?a trên tiêu chu?n. Ði?u này s? b?t d?u v?i d? li?u v?n hành chính cho các chuong trình c?p b?ng và dang ký khóa h?c, v?i nhi?u API hon s? ra m?t trong su?t nam 2020. Nó s? giúp xác d?nh và gi?i quy?t l?i nhanh hon, tang tính linh ho?t cho các d?i tác s? d?ng kho công ngh? c?a riêng h? và cho phép th? nghi?m c? tru?c và sau và sau khi tung ra n?i dung d? ch? d?ng giám sát m?i v?n d?.</li><p>C?ng d?ng ngu?i h?c và nhà giáo d?c c?a chúng tôi d?i di?n cho nhi?u nhu c?u khác nhau và chúng tôi cam k?t dáp ?ng nh?ng nhu c?u dó b?ng s? d?i m?i nhanh chóng. B?t k? b?n ? dâu trên th? gi?i, chúng tôi luôn s?n sàng tr? giúp b?n d?t du?c m?c tiêu gi?ng d?y và h?c t?p. Ki?m tra c?ng d?ng ngu?i h?c và d?i tác c?a chúng tôi ngày hôm nay. <strong>TRANG CH? ÐU?C CÁ NHÂN HÓA </strong. Khi dang nh?p, ngu?i h?c có th? ti?p t?c khóa h?c ch? b?ng m?t cú nh?p chu?t, xem các d? xu?t du?c cá nhân hóa v? các khóa h?c d? theo du?i ti?p theo và xem các ch?ng ch? h? dã d?t du?c cho d?n nay.', CAST(N'2022-07-18' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (25, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/12/sans-titre-%C2%AE-Hec-Paris-2016.jpg', N'Nghi r?ng b?n không sáng t?o? Nghi l?i', N'Ðây là câu th?n chú mà chuyên gia sáng t?o, Giáo su Anne-Laure Sellier dua vào th? gi?i kinh doanh và c? trong l?p h?c. Khóa h?c Tang cu?ng Sáng t?o c?a cô t?i HEC Paris là m?t trong nh?ng khóa h?c n?i ti?ng nh?t trong chuong trình Th?c si Kh?i nghi?p và Ð?i m?i c?a tru?ng, d?ng th?i giúp nh?ng ngu?i tham gia khai thác nh?ng s?c m?nh ti?m ?n mà h? chua t?ng bi?t d?n &hellip;</p><p><strong>Quên di nh?ng món quà t? các v? th?n ho?c b? t?n công b?i nàng tho, t?t c? chúng ta d?u có kh? nang suy nghi sáng t?o</strong></p>M?t trong nh?ng lý do mà hi?n t?i chúng tôi ch? d?y v? sáng t?o &ndash; và HEC Paris là m?t trong s? ít tru?ng kinh doanh trên th? gi?i làm nhu v?y vì trong th?i gian dài nh?t, ngu?i ta tin r?ng nó ch? don gi?n là có th? d?y du?c. Trong ph?n l?n l?ch s?, loài ngu?i chúng ta tin r?ng s? sáng t?o là do (các) Chúa ban t?ng, và b?n không th? làm gì nhi?u v? di?u dó. Bây gi? chúng tôi bi?t di?u này ít nh?t là m?t ph?n vô nghia: nghiên c?u cung c?p d? d? li?u d? bi?t r?ng b?n th?c s? có th? d?y s? sáng t?o. Tôi có th? bi?n b?n thành Leonardo da Vinci sau 18 gi? không? T?t nhiên là không, nhung có m?t di?m h?p d?n ? gi?a noi tôi có th? giúp ai dó tr? nên sáng t?o hon m?t cách dáng tin c?y trong m?t kho?ng th?i gian tuong d?i ng?n.<p><strong>H?c k? nang này c?c k? h?p d?n trong môi tru?ng kinh doanh</strong> </p><p>B?t k? xu?t phát di?m c?a b?n là gì, nh?ng gì chúng ta bi?t v? s? sáng t?o ngày nay có th? giúp b?n tr? thành m?t ngu?i sáng t?o t?t hon &ndash; dó rõ ràng là m?t tài s?n r?t quý giá d?i v?i các doanh nhân cung nhu các công ty l?n, nh?ng ngu?i ph?i liên t?c d?i m?i trong m?t môi tru?ng c?nh tranh ngày càng gay g?t. Da Vinci không g?p v?n d? dó &ndash; anh ?y có th? nghi ra 15 b?c tranh trong d?i và b? qua nó trong 500 nam. Trong kinh doanh ngày nay, b?n c?n d?i m?i; b?n c?n luôn mang l?i giá tr? l?n hon so v?i d?i th? c?nh tranh b?ng cách s? d?ng các kh? nang mà b?n có.</p><p><strong>Các CEO dã dánh giá tính sáng t?o là tài s?n kinh doanh s? 1 c?a h?<p>Có m?t báo cáo vào nam 2010 v?n r?t c?p nh?t và có liên quan b?i vì tôi không bi?t b?t c? di?u gì gi?ng nhu v?y k? t? dó. Nó du?c s?n xu?t b?i IBM và du?c g?i là Ð? ph?c t?p di?u hu?ng. Ðó là m?t cu?c kh?o sát l?n v?i 1.500 CEO và lãnh d?o công hàng d?u trên toàn c?u, và h? du?c h?i nh?ng k? nang nào là quan tr?ng d? d?nh hu?ng thành công trong th? gi?i kinh doanh ngày nay. Cho d?n nay, k? nang quan tr?ng nh?t mà các nhà lãnh d?o này nh?n m?nh là s? sáng t?o. H? không trình bày chi ti?t ý nghia c?a s? sáng t?o d?i v?i h? nhung h? d?ng ý r?ng dó là k? nang quan tr?ng nh?t c?n có trong kinh doanh ngày nay<p><strong>Làm sáng t? ý nghia c?a s? sáng t?o là r?t quan tr?ng</strong></p><p>&ldquo;I dành tr?n m?t bu?i vào d?u bu?i h?c c?a tôi d? nói v? ý nghia th?c s? c?a sáng t?o b?i vì h?u h?t nh?ng ngu?i tham gia d?u không hi?u du?c t? này. Chính xác thì chúng ta dang nói v? cái gì? S? th?t là chúng ta v?n ch? m?i b?t d?u hi?u cách th?c ho?t d?ng c?a kh? nang sáng t?o c?a con ngu?i, nhung m?t trong s? ít di?u chúng ta có th? d?ng ý vào th?i di?m này là s?n ph?m sáng t?o là m?t th? gì dó v?a m?i l? v?a h?u ích. Các nhà khoa h?c nh?n th?c dã d?t du?c nh?ng hi?u bi?t dáng tin c?y khác, d? v?ng ch?c d? tích h?p vào vi?c gi?ng d?y c?a chúng tôi. Nhung hãy nói rõ ràng: có ph?n gi?ng nhu chúng ta dang bu?c vài bu?c chân v?ng ch?c trên d?nh m?t t?ng bang trôi l?n và chúng ta không bi?t nó chìm sâu bao nhiêu du?i nu?c. Chúng tôi ch? m?i b?t d?u hi?u cách th?c ho?t d?ng c?a s? sáng t?o; nó v?n là m?t trong s? ít các ch?c nang nh?n th?c c?a con ngu?i v?n thoát kh?i trí tu? nhân t?o.</p><h4><strong>Chúng ta có th? h?c du?c nhi?u di?u t? vi?c phân tích c?u trúc c?a nh?ng ngu?i sáng t?o trong quá kh? d? hi?u quy trình sáng t?o c?a h?</strong></h4><p> M?t di?u dôi khi chúng ta làm trong l?p là phân tích c?u trúc c?a nh?ng ngu?i sáng t?o n?i ti?ng. Hãy xem tru?ng h?p c?a Steve Jobs ch?ng h?n. Tôi vô cùng ngu?ng m? anh ?y, nhung tôi khuy?n khích nh?ng ngu?i tham gia d?t câu h?i v? m?t s? huy?n tho?i v? anh ?y. Anh ?y không ch? c?c k? sáng t?o mà còn c?c k? may m?n và du?c dào t?o d? có du?c nh?ng hi?u bi?t sâu s?c mà anh ?y c?n. Anh ?y v?a di, Hmm, màn hình c?m ?ng s? là con du?ng phía tru?c; anh ?y bi?t màn hình c?m ?ng s? ho?t d?ng vì anh ?y có ki?n th?c sâu r?ng v? nhân ch?ng h?c, và anh ?y hi?u r?ng m?t trong nh?ng thú vui l?n nh?t c?a loài ngu?i, t? th?i xa xua c?a nh?ng ngu?i thu?ng c?, là th?c s? dùng tay tr?c ti?p d? v?, nhu h? dã làm. trên các b?c tranh hang d?ng. Anh ?y có quan di?m khác v?i h?u h?t nh?ng ngu?i trong ngành c?a anh ?y và di?u dó ch?c ch?n mang l?i l?i th? cho anh ?y.<h4><strong>M?t cách d? d?y tính sáng t?o là thông qua s? khiêu khích</strong></h4>p>Nhi?u ngu?i tham gia dua ra quan di?m c?a mình tay khi tôi h?i h? ai là ngu?i quá sáng t?o, di?u dó luôn thú v? khi xem h? cánh trên nhóm&hellip; và sau dó chúng tôi tìm hi?u lý do t?i sao di?u dó l?i x?y ra và tìm cách hi?u cách suy nghi dó b?t ngu?n t? dâu. Có r?t nhi?u di?u chúng ta có th? làm b?ng cách khi?n m?i ngu?i nh?n ra r?ng di?u dang kìm hãm s? sáng t?o c?a h? th?c s? là chính h? và cách h? b? ?nh hu?ng b?i n?n giáo d?c và nói chung là môi tru?ng mà h? l?n lên. tr?i nghi?m và tôi c? g?ng khi?n b?n c?m th?y ít nh?t m?t l?n trong khóa h?c &ndash; nhung lý tu?ng nh?t là nhi?u l?n suy nghi c?a b?n dang b? ?nh hu?ng b?i nh?ng di?u tôi yêu c?u b?n làm khác v?i nh?ng gì b?n thu?ng làm. L?y ví d?, d?ng não, dây là di?u mà h?u h?t các công ty luôn làm m?c dù các nhà khoa h?c t? lâu dã bi?t r?ng d?ng não là m?t quá trình dua ra ý tu?ng ? m?c trung bình du?i m?c t?i uu.</p>h4><strong>Ý tu?ng l?y b?t m?i th? d? thêm vào giá tr? là m?t th? khác giúp m? r?ng t?m m?t</strong></h4><p>M?t trong nh?ng k? thu?t sáng t?o mà chúng tôi th?c hi?n liên quan d?n vi?c nghi d?n vi?c t?o ra th? gì dó m?i b?ng cách lo?i b? giá tr? kh?i th? gi?i hi?n có. Càng don gi?n càng d?p. Vì v?y, b?n l?y m?t chi?c di?n tho?i ch?ng h?n, và b?n lo?i b? m?t tính nang thay vì thêm tính nang m?i, dó là di?u mà m?i k? su làm d? t?o s? khác bi?t cho di?n tho?i c?a h?. Khi b?n xóa m?t tính nang, ban d?u có v? nhu b?n có m?t chi?c di?n tho?i kém giá tr? hon, nhung sau dó b?n b?t d?u nghi xem s?n ph?m có v? kém hon dó là gì &ndash; khi du?c xem trong b?i c?nh c?a m?t th? gi?i xã h?i &ndash; có th? làm t?t hon Vì v?y, trong ví d? v? di?n tho?i, có th? tôi lo?i b? kh? nang g?i di?n, và d?t nhiên b?n có chi?c di?n tho?i d?u tiên dành cho tr? em mà cha m? có th? g?i cho chúng, nhung chúng có th? g?i ra ngoài (không bi?t nh?ng ngu?i khác ho?c lãng phí th?i gian d? g?i cho nh?ng ngu?i b?n nh? mà chúng v?a r?i kh?i tru?ng). ). T?t nhiên, dó là m?t th? tru?ng ngách, nhung cu?i cùng b?n l?i t?o ra giá tr? vu?t tr?i cho th? tru?ng ngách dó.</p><h4><strong>M?t cách khác d? k?t h?p m?i th? là yêu c?u sinh viên k?t h?p các khái ni?m không liên quan</strong></h4 <p>Hai ngày tru?c, m?t c?u sinh viên dã liên h? v?i tôi vì cô ?y dã thành l?p m?t nhà tr? dành cho nhi?u th? h? trong các vi?n du?ng lão ? Pháp. Cô ?y hi?u r?ng không có d? ch? trong các trung tâm cham sóc ban ngày ? Pháp, nghia là hàng nghìn gia dình không có gi?i pháp cho con nh? c?a h?, trong khi m?t khác, b?n có hai tri?u ru?i ngu?i dang trên 85 và th?m chí nhi?u hon nh?ng ngu?i dã qua 65 tu?i, dã ngh? huu và ? m?t mình. Vì v?y, cô ?y có ý tu?ng k?t h?p c? hai theo cách t?o ra giá tr? cho c? ngu?i già và ngu?i tr? &ndash; dó là m?t trong nh?ng bài t?p chúng tôi làm trong l?p; d? tìm các không gian giá tr? hi?n có không tuong quan và xem xét di?u gì s? x?y ra n?u chúng ta bu?c chúng kh?p v?i nhau. Trong tru?ng h?p h?c sinh c?a tôi, cô ?y dã tìm ra gi?i pháp cho phép th? h? l?n tu?i có du?c vài gi? m?i ngày tuong tác v?i tr? em, d?c sách cho chúng nghe, v.v., trong khi nh?ng d?a tr? h?c v? s? tôn tr?ng và d?ng c?m &ndash; và nó giúp gi?i quy?t v?n d? cham sóc tr? em. Cô ?y có 10 trung tâm m? trong nam nay và nh?ng trung tâm dã m? dã d?y. Tra c?u chúng trên Internet, công ty tên là Tom Josette. Ðó là m?t ví d? rõ ràng r?ng b?n c?n ph?i phát minh l?i bánh xe d? t?o ra giá tr? ghê g?m. Ph?n l?n s? sáng t?o b?t ngu?n t? vi?c l?y nh?ng th? hi?n có và suy nghi l?i v? các kh?i xây d?ng.', CAST(N'2022-03-23' AS Date), 1, 1, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (26, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/11/HSE-blog-header_Georgy-Pashchenko.png', N'S? d?ng d? li?u trong vi?c ra quy?t d?nh tài chính', N'Ðây là câu th?n chú mà chuyên gia sáng t?o, Giáo su Anne-Laure Sellier dua vào th? gi?i kinh doanh và c? trong l?p h?c. Khóa h?c Thúc d?y Sáng t?o c?a cô ?y t?i HEC Paris là m?t trong nh?ng khóa h?c ph? bi?n nh?t trên chuong trình Th?c si Kh?i nghi?p và Ð?i m?i tr?c tuy?n c?a tru?ng, d?ng th?i giúp nh?ng ngu?i tham gia khai thác nh?ng s?c m?nh ti?m ?n mà h? chua t?ng bi?t d?n. Hãy quên di nh?ng món quà t? các v? th?n hay b? &amp;lsquo;nàng tho&amp;rsquo; t?n công, t?t c? chúng ta d?u có kh? nang suy nghi sáng t?o<p> M?t trong nh?ng lý do mà hi?n t?i chúng tôi ch? d?y sáng t?o và HEC Paris là m?t trong s? ít các tru?ng kinh doanh trên th? gi?i làm nhu v?y là trong th?i gian dài nh?t, có m?t ni?m tin r?ng rãi r?ng nó có th? du?c d?y m?t cách don gi?n. Trong ph?n l?n l?ch s?, loài ngu?i chúng ta tin r?ng s? sáng t?o là do (các) Chúa ban t?ng, và b?n không th? làm gì nhi?u v? di?u dó. Bây gi? chúng tôi bi?t di?u này ít nh?t là m?t ph?n vô nghia: nghiên c?u cung c?p d? d? li?u d? bi?t r?ng b?n th?c s? có th? d?y s? sáng t?o. Tôi có th? bi?n b?n thành Leonardo da Vinci sau 18 gi? không? T?t nhiên là không, nhung có m?t di?m h?p d?n ? gi?a noi tôi có th? giúp ai dó sáng t?o hon &amp;ndash; dáng tin c?y &amp;ndash; trong m?t kho?ng th?i gian tuong d?i nh?. H?c k? nang này c?c k? h?p d?n trong môi tru?ng kinh doanh. Dù xu?t phát di?m c?a b?n là gì, nh?ng gì chúng ta bi?t v? s? sáng t?o ngày nay có th? giúp b?n tr? thành m?t ngu?i sáng t?o t?t hon, dây rõ ràng là m?t tài s?n vô cùng quý giá d?i v?i các doanh nhân cung nhu các công ty l?n, nh?ng ngu?i ph?i liên t?c d?i m?i trong m?t môi tru?ng ngày càng c?nh tranh. Da Vinci không g?p v?n d? dó; anh ?y có th? nghi ra 15 b?c tranh trong d?i và b? qua nó trong 500 nam. Trong kinh doanh ngày nay, b?n c?n d?i m?i; b?n c?n luôn cung c?p giá tr? l?n hon d?i th? c?nh tranh b?ng cách s? d?ng các kh? nang b?n có. Các CEO dã dánh giá s? sáng t?o là tài s?n kinh doanh s? 1 c?a h?. Có m?t báo cáo vào nam 2010 v?n còn r?t c?p nh?t và phù h?p vì tôi không bi?t v? b?t k? di?u gì tuong t? k? t? dó. Nó du?c s?n xu?t b?i IBM và du?c g?i là Ð? ph?c t?p di?u hu?ng. Ðó là m?t cu?c kh?o sát l?n v?i 1.500 CEO và lãnh d?o công hàng d?u trên toàn c?u, và h? du?c h?i nh?ng k? nang nào là quan tr?ng d? d?nh hu?ng thành công trong th? gi?i kinh doanh ngày nay. Cho d?n nay, k? nang quan tr?ng nh?t mà các nhà lãnh d?o này nh?n m?nh là s? sáng t?o. H? không nêu chi ti?t sáng t?o có ý nghia gì d?i v?i h? nhung h? d?ng ý r?ng dó là k? nang quan tr?ng nh?t c?n có trong kinh doanh ngày nay. Làm sáng t? ý nghia c?a s? sáng t?o là r?t quan tr?ng. Tôi dành toàn b? th?i gian vào d?u bu?i h?c d? nói v? ý nghia th?c s? c?a sáng t?o b?i vì b?n thân t? này khi?n h?u h?t nh?ng ngu?i tham gia không th? hi?u du?c. Chính xác thì chúng ta dang nói v? cái gì? S? th?t là chúng ta v?n ch? m?i b?t d?u hi?u cách th?c ho?t d?ng c?a kh? nang sáng t?o c?a con ngu?i, nhung m?t trong s? ít di?u chúng ta có th? d?ng ý vào th?i di?m này là s?n ph?m sáng t?o là m?t th? gì dó v?a m?i l? v?a h?u ích. Các nhà khoa h?c nh?n th?c dã d?t du?c nh?ng hi?u bi?t dáng tin c?y khác, d? v?ng ch?c d? tích h?p vào vi?c gi?ng d?y c?a chúng tôi. Nhung hãy nói rõ: nó gi?ng nhu chúng ta dang bu?c vài bu?c chân v?ng ch?c trên d?nh m?t t?ng bang trôi l?n và chúng ta không bi?t nó chìm sâu bao nhiêu du?i nu?c. Chúng tôi ch? m?i b?t d?u hi?u cách th?c ho?t d?ng c?a s? sáng t?o; nó v?n là m?t trong s? ít các ch?c nang nh?n th?c c?a con ngu?i v?n thoát kh?i trí tu? nhân t?o. Chúng ta có th? h?c du?c nhi?u di?u t? vi?c phân tích c?u trúc c?a nh?ng ngu?i sáng t?o trong quá kh? d? hi?u quá trình sáng t?o c?a h?. M?t di?u dôi khi chúng tôi làm trong l?p là phân tích c?u trúc c?a nh?ng ngu?i sáng t?o n?i ti?ng. Hãy xem tru?ng h?p c?a Steve Jobs ch?ng h?n. Tôi vô cùng ngu?ng m? anh ?y, nhung tôi khuy?n khích nh?ng ngu?i tham gia d?t câu h?i v? m?t s? huy?n tho?i v? anh ?y. Anh ?y không ch? c?c k? sáng t?o mà còn c?c k? may m?n và du?c dào t?o d? có du?c nh?ng hi?u bi?t sâu s?c mà anh ?y c?n. Anh ?y v?a di, Hmm, màn hình c?m ?ng s? là con du?ng phía tru?c; anh ?y bi?t màn hình c?m ?ng s? ho?t d?ng vì anh ?y có ki?n th?c sâu r?ng v? nhân ch?ng h?c, và anh ?y hi?u r?ng m?t trong nh?ng thú vui l?n nh?t c?a loài ngu?i, t? th?i xa xua c?a nh?ng ngu?i thu?ng c?, là th?c s? dùng tay tr?c ti?p d? v?, nhu h? dã làm. trên các b?c tranh hang d?ng. Anh ?y có m?t quan di?m khác v?i h?u h?t nh?ng ngu?i trong ngành c?a anh ?y, và di?u dó ch?c ch?n mang l?i cho anh ?y m?t l?i th?. M?t cách d? d?y s? sáng t?o là thông qua. Nhi?u ngu?i tham gia dã gio tay khi tôi h?i h? ai là ngu?i sáng t?o, di?u luôn thú v? khi theo dõi nhóm và sau dó chúng tôi tìm hi?u lý do t?i sao di?u dó l?i x?y ra và tìm cách hi?u l?i suy nghi dó b?t ngu?n t? dâu. Có r?t nhi?u di?u chúng ta có th? làm b?ng cách khi?n m?i ngu?i nh?n ra r?ng di?u dang kìm hãm s? sáng t?o c?a h? th?c s? là chính h? và cách h? b? ?nh hu?ng b?i n?n giáo d?c và nói chung là môi tru?ng mà h? l?n lên. và tôi c? g?ng làm cho b?n c?m th?y ít nh?t m?t l?n trong khóa h?c nhung lý tu?ng nh?t là vài l?n r?ng suy nghi c?a b?n dang b? ?nh hu?ng b?i nh?ng di?u tôi khi?n b?n làm khác v?i nh?ng gì b?n thu?ng làm. L?y ví d?, d?ng não, dó là di?u mà h?u h?t các công ty luôn làm m?c dù các nhà khoa h?c t? lâu dã bi?t r?ng d?ng não là m?t quá trình dua ra ý tu?ng ? m?c trung bình. Ý tu?ng l?y di m?i th? d? tang thêm giá tr? là m?t di?u thú v? khác. M?t trong nh?ng k? thu?t sáng t?o mà chúng tôi th?c hi?n liên quan d?n vi?c suy nghi v? vi?c t?o ra th? gì dó m?i b?ng cách lo?i b? giá tr? kh?i th? gi?i hi?n có. Càng don gi?n càng d?p. Vì v?y, b?n l?y m?t chi?c di?n tho?i ch?ng h?n, và b?n lo?i b? m?t tính nang thay vì thêm tính nang m?i, dó là di?u mà m?i k? su làm d? t?o s? khác bi?t cho di?n tho?i c?a h?. Khi b?n lo?i b? m?t tính nang, tho?t d?u có v? nhu b?n dang s? h?u m?t chi?c di?n tho?i kém giá tr? hon, nhung sau dó b?n b?t d?u nghi xem s?n ph?m có v? kém ch?t lu?ng dó khi nhìn trong b?i c?nh c?a m?t th? gi?i xã h?i có th? làm t?t hon di?u gì. Vì v?y, trong ví d? v? di?n tho?i, có th? tôi lo?i b? kh? nang g?i di?n, và d?t nhiên b?n có chi?c di?n tho?i d?u tiên dành cho tr? em mà cha m? có th? g?i cho chúng, nhung chúng có th? g?i ra ngoài (không bi?t nh?ng ngu?i khác ho?c lãng phí th?i gian d? g?i cho nh?ng ngu?i b?n nh? mà chúng v?a r?i kh?i tru?ng). ). T?t nhiên là m?t th? tru?ng ngách, nhung cu?i cùng b?n l?i t?o ra giá tr? vu?t tr?i cho th? tru?ng ngách dó. M?t cách khác d? tr?n l?n m?i th? là khi?n h?c sinh tr?n l?n các khái ni?m không liên quan. Hai ngày tru?c, m?t c?u sinh viên dã liên h? v?i tôi vì cô ?y dã thành l?p m?t nhà gi? tr? liên th? h? cho tr? em trong các vi?n du?ng lão ? Pháp. Cô ?y hi?u r?ng không có d? ch? trong các trung tâm cham sóc ban ngày ? Pháp, nghia là hàng nghìn gia dình không có gi?i pháp cho con nh? c?a h?, trong khi m?t khác, b?n có hai tri?u ru?i ngu?i dang trên 85 tu?i và hon n?a là trên 65 tu?i, dã ngh? huu và ? m?t mình. Vì v?y, cô ?y có ý tu?ng k?t h?p c? hai theo cách t?o ra giá tr? cho c? ngu?i già và ngu?i tr?, dó là m?t trong nh?ng bài t?p chúng tôi làm trong l?p; d? tìm các không gian giá tr? hi?n có không tuong quan và xem xét di?u gì s? x?y ra n?u chúng ta bu?c chúng kh?p v?i nhau. Trong tru?ng h?p h?c sinh c?a tôi, cô ?y dã tìm ra gi?i pháp cho phép th? h? l?n tu?i có du?c vài gi? m?i ngày tuong tác v?i tr? em, d?c sách cho chúng nghe, v.v., trong khi nh?ng d?a tr? h?c v? s? tôn tr?ng và d?ng c?m &amp;ndash; và nó giúp gi?i quy?t v?n d? cham sóc tr? em. Cô ?y có 10 trung tâm m? trong nam nay và nh?ng trung tâm dã m? dã d?y. Tìm ki?m chúng trên Internet, công ty du?c g?i là Ðó là m?t ví d? rõ ràng r?ng b?n không c?n ph?i phát minh l?i bánh xe d? t?o ra giá tr? ghê g?m. Ph?n l?n s? sáng t?o b?t ngu?n t? vi?c l?y nh?ng th? hi?n có và suy nghi l?i v? các kh?i xây d?ng', NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (27, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/03/MCR-2021-545-QPR-Blog-Post-Header-Image.jpeg', N'Q1 2021 Phát hành s?n ph?m hàng quý c?a Coursera dành cho doanh nghi?p''', N'T? d?ng hóa và suy thoái do COVID-19 dã t?o ra m?t k?ch b?n gián do?n kép cho ngu?i lao d?ng, k?ch b?n này s? bi?n d?i m?nh m? các nhi?m v?, công vi?c và k? nang trong tuong lai g?n. Trên th?c t?, theo Di?n dàn Kinh t? Th? gi?i</a>, 85 tri?u vi?c làm s? b? thay th? vào nam 2025 và 47% k? nang c?t lõi c?a ngu?i lao d?ng s? thay d?i trong th?i gian này. Ð? duy trì tính c?nh tranh và thúc d?y d?i m?i, các nhà lãnh d?o doanh nghi?p dang nh?n ra nhu c?u thu h?p kho?ng cách v? k? nang, d?ng th?i dào t?o l?i k? nang và nâng cao k? nang cho d?i ngu c?a h?.<p>Chúng ta dang ? trong m?t th? gi?i vi?c làm m?i, noi các k? nang m?i là ti?n t? quý giá. Ð? giúp các t? ch?c trang b? t?t hon cho d?i ngu c?a h? trong b?i c?nh thay d?i nhanh chóng này, chúng tôi dã di tiên phong trong tr?i nghi?m s?n ph?m uu tiên k? nang, cho phép các t? ch?c tri?n khai phát tri?n k? nang có m?c tiêu b?ng các công c? giúp don gi?n hóa vi?c so kh?p n?i dung, thúc d?y m?c d? tuong tác và làm rõ ROI khi h?c. Chúng tôi dã ra m?t H?c vi?n và B? k? nang xác d?nh m?c d? thành th?o k? nang m?c tiêu c?n thi?t cho các vai trò công vi?c c? th? và cung c?p các l? trình h?c t?p du?c cá nhân hóa d? phát tri?n các m?c d? thành th?o k? nang dó. Chúng tôi cung dã c?p nh?t B?ng di?u khi?n phát tri?n k? nang c?a mình d? cung c?p các chuong trình h?c phù h?p v?i các nhóm ngu?i h?c c? th?, do lu?ng và theo dõi ti?n d? phát tri?n k? nang cung nhu dánh giá m?c d? thành th?o k? nang c?a ngu?i h?c.<p>Tu?n tru?c, nhóm Qu?n lý s?n ph?m c?a chúng tôi dã t? ch?c m?t h?i th?o trên web d? th?o lu?n v? các v?n d? nh?ng tính nang m?i này, cung nhu l? trình nam 2021 c?a chúng tôi, hoàn ch?nh v?i các b?n c?p nh?t th?m chí còn thú v? hon s? du?c phát hành vào cu?i nam nay. B?n có th? theo dõi h?i th?o trên web theo yêu c?u t?i dây. Không ch?n ch? gì n?a, hãy b?t d?u ngay.</p><p><strong>B?ng thông tin phát tri?n k? nang</strong></p><p>Vào tháng 10 nam 2019, nhóm Coursera dã ra m?t B?ng thông tin phát tri?n k? nang (SDD), cung c?p m?t cái nhìn chua t?ng có v? các k? nang theo dõi kh? nang do lu?ng các k? nang th?c t? dã phát tri?n d?n các m?c d? thành th?o c? th?. K? t? dó, nhóm Coursera dã c?i thi?n cách các k? nang du?c g?n th?, do lu?ng và th? hi?n.</p><p>B?n c?p nh?t phiên b?n m?i nh?t cho B?ng di?u khi?n phát tri?n k? nang liên quan d?n vi?c gi?i thi?u các k? nang m?i v? giao ti?p, ti?p th?, tài chính, nhân s?, nguyên t?c công ngh?, công c? công ngh?, toán h?c và th?ng kê. B?n s? có th? th?c hi?n nh?ng vi?c sau:<li>Ðo lu?ng s? phát tri?n k? nang trên các linh v?c kinh doanh, công ngh? và d? li?u v?i 66 linh v?c k? nang m?i cho t?ng s? 101 k? nang có th? theo dõi</li><li>Ti?p t?c tìm hi?u tác d?ng c?a vi?c nâng cao k? nang k? thu?t các chuong trình thông qua vi?c gi?i thi?u các k? nang c? th? và theo dõi công c? trong các linh v?c khoa h?c d? li?u và công ngh?, t? Khoa h?c máy tính, K? thu?t b?o m?t và DevOps d?n Python, AWS, SQL và HTML/CSS</li><li>N?m b?t xu hu?ng h?c t?p trong toàn t? ch?c v?i trang tóm t?t k? nang bao g?m các ch? d? xem phân b? m?c d? thông th?o k? nang và th?i gian d? thành th?o<li>Phân tích các ch? s? k? nang c? th?, bao g?m n?i dung nào phát tri?n k? nang nào, thông qua b?ng di?u khi?n Phân tích k? nang m?i c?a chúng tôi</li><li>Báo cáo v? ROI c?a ph?n m?m các chuong trình k? nang có b?t tính nang theo dõi dành cho Lãnh d?o, Chi?n lu?c và Ho?t d?ng, Tâm lý Kinh doanh, Giao ti?p, v.v.</li>

<p>Vi?c gi?i thi?u các k? nang có th? theo dõi này m? du?ng cho các s?n ph?m uu tiên k? nang b? sung, bao g?m H?c vi?n SkillSets cung nhu ch?n doán và báo cáo chi ti?t hon d? qu?n lý chuong trình.</p><p><strong>SkillSets và H?c vi?n</strong </p><p>SkillSets là chìa khóa trao tay, các chuong trình h?c t?p d?a trên công vi?c giúp phát tri?n m?c d? thành th?o k? nang m?c tiêu v?i các khóa h?c d?ng c?p th? gi?i và D? án có hu?ng d?n th?c hành. SkillSets giúp b?n d? dàng hi?u du?c k?t qu? phát tri?n k? nang c?a các chuong trình nâng cao k? nang k? thu?t và d?nh lu?ng tác d?ng c?a các chuong trình ki?n th?c k? thu?t s? và d? li?u. V?i SkillSets, k? nang là uu tiên hàng d?u. Nhân viên c?a b?n s? th?y các d? xu?t n?i dung giúp h? lên c?p d? ti?p theo và h? s? không b? dè n?ng b?i n?i dung h? c?n h?c. Ch?n t? hon 100 B? k? nang bao g?m các công vi?c có tác d?ng cao nhu ki?n trúc su dám mây, nhà khoa h?c d? li?u, k? su máy h?c và các k? nang theo yêu c?u nhu di?u khi?n d? li?u, thành th?o Python và chuyên môn v? Tensorflow, v.v. ho?c tri?n khai B? k? nang trên toàn b? công vi?c c?a b?n t? ch?c v?i H?c vi?n, gi?i pháp phát tri?n k? nang hoàn ch?nh c?a chúng tôi cho các kh? nang theo yêu c?u. Có du?c các k? nang b?n c?n trong tuong lai, theo vai trò công vi?c v?i SkillSets</strong></p><p>B?t lo l?ng v? b?i c?nh kinh doanh không ng?ng phát tri?n có ý nghia nhu th? nào d?i v?i nhu c?u k? nang t? ch?c c?a b?n. B? k? nang hi?n th? các khóa h?c Coursera và D? án có hu?ng d?n phù h?p nh?t d? phát tri?n m?c d? thành th?o k? nang m?c tiêu cho các công vi?c c? th?.</p><li>Ch?n t? hon 100 B? k? nang giúp phát tri?n các k? nang quan tr?ng và thu?ng xuyên cho các công vi?c quan tr?ng trong t? ch?c c?a b?n</li><li> Cung c?p k? nang h?c t?p d?u tiên cho hon 40 công vi?c, bao g?m nhà phân tích kinh doanh, nhà khoa h?c d? li?u, nhà thi?t k?, nhà phân tích tài chính, chuyên gia nhân s?, chuyên gia CNTT, k? su máy h?c, nhà ti?p th?, chuyên gia v?n hành, qu?n lý s?n ph?m, v.v.</li><li>Phát tri?n hon 50 lo?i k? nang thành th?o, t? s? d?ng d? li?u và nh?n bi?t AI d?n thành th?o TensorFlow và chuyên v? Spark</li><p><strong>Tri?n khai các chuong trình h?c t?p du?c nh?m m?c tiêu m?t cách d? dàng</strong<p>M?i tính nang c?a B? k? nang n?i dung d?ng c?p th? gi?i du?c phân ph?i thông qua các quy trình tuy?n ch?n do AI cung c?p dã du?c các chuyên gia dánh giá, vì v?y, b?n có th? dành ít th?i gian hon d? lo l?ng v? vi?c ánh x? n?i dung t?i ngu?i h?c và có nhi?u th?i gian hon cho chi?n lu?c h?c t?p t?ng th? cung nhu k? ho?ch tri?n khai.</p><li>Ð?nh c?u hình B? k? nang d? phù h?p v?i ch?c danh công vi?c trong t? ch?c c?a b?n</li><li>B? k? nang mà b?n t?o ho?c d?nh c?u hình s? du?c g?n thuong hi?u b?ng bi?u trung c?a t? ch?c b?n</li><p><strong>Theo dõi và do lu?ng các k? nang du?c phát tri?n </strong></ p><p>SkillSets giúp b?n d? dàng hi?u du?c k?t qu? phát tri?n k? nang c?a các chuong trình nâng cao k? nang k? thu?t và th?m chí d?nh lu?ng tác d?ng c?a d? li?u và các chuong trình ki?n th?c k? thu?t s?.</p><li>Xem có bao nhiêu ngu?i h?c dang ti?n b? trong SkillSet</p><li> li><li>Theo dõi ti?n trình t?p th? c?a ngu?i h?c d?i v?i B? k? nang dó&nbsp<li>Xem ngu?i h?c nào dã d?t du?c m?c tiêu k? nang c?a h?</li><p><strong>Ð?y nhanh quá trình ti?p thu k? nang b?ng các d? xu?t du?c cá nhân hóa</strong></p><p> V?i SkillSets, k? nang là uu tiên hàng d?u. V?i các d? xu?t du?c cá nhân hóa phù h?p v?i c?p d? k? nang hi?n t?i c?a h?, nhân viên c?a b?n s? th?y các d? xu?t n?i dung giúp h? d?t du?c c?p d? ti?p theo và h? s? không b? dè n?ng b?i n?i dung mà h? không c?n ph?i h?c. <li>Các d? xu?t n?i dung d?ng giúp ngu?i h?c di t? c?p d? k? nang hi?n t?i d?n m?c d? thông th?o k? nang m?c tiêu.</li><li>Ngu?i h?c ch? th?c hi?n nh?ng gì h? c?n d? d?t du?c các m?c tiêu k? nang dó; không b?t bu?c ph?i hoàn thành khóa h?c d? hoàn thành B? k? nang</li><li>Ngu?i h?c có th? theo dõi ti?n trình hu?ng t?i các m?c tiêu k? nang c?a h?</li><p><strong>M? c?a dón nhân tài</strong></p><p>C?m th?y t? tin tuy?n d?ng nhanh hon và hi?u qu? hon t? các nhóm nhân tài da d?ng khi bi?t r?ng v?i SkillSets, b?n có th? phát tri?n và gi? chân nhân tài quan tr?ng trong n?i b?.</p><li>Vi?c tuy?n d?ng các nhà khoa h?c d? li?u và k? su d? li?u có th? r?t khó khan. Chúng tôi tin r?ng mình s? [thành công hon] n?u phát tri?n nh?ng ngu?i ho?t d?ng hi?u qu? hàng d?u hi?n có thành các chuyên gia d? li?u. Pedro Uria-Recio, Tru?ng b? ph?n Phân tích Axiata</li><li>Công ty nghiên c?u IDC nh?n th?y r?ng khách hàng c?a Coursera nh?n th?y t? l? gi? chân +38% và kh? nang di chuy?n c?a nhân viên +20%</li><li>Công ty nghiên c?u IDC nh?n th?y r?ng khách hàng c?a Coursera có th? dào t?o +94% ngu?i h?c nhi?u hon</li><p>V?i nh?ng tính nang m?i này, chúng tôi hy v?ng s? cung c?p cho b?n nh?ng kh? nang c?n thi?t d? nâng cao chuong trình h?c t?p c?a b?n và mang l?i k?t qu? h?c t?p t?t hon. Hãy ch?c ch?n xem phát l?i h?i th?o trên web c?a chúng tôi d? bi?t thêm thông tin (và b?n trình di?n) v? t?t c? các tính nang m?i này. Chúc b?n h?c t?p vui v?!</p>', CAST(N'2022-07-18' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (28, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/09/Leadership-Academy-blog-header.png', N'Lãnh d?o không gi?i h?n: Suy nghi l?i v? kh? nang lãnh d?o trong th?i d?i d?t phá''', N'N''<p>Lãnh d?o trong m?t th? gi?i không th? doán tru?c, ph? thu?c l?n nhau và thay d?i nhanh chóng có ý nghia gì? Làm cách nào d? các nhà lãnh d?o có th? trau d?i kh? nang ph?c h?i, s? nhanh nh?n và s? gan d? c?n thi?t d? thành công, c? v? m?t cá nhân và trong toàn t? ch?c c?a h?, khi các quy t?c c?ng r?n và nhanh chóng không du?c áp d?ng<p>Trong h?i th?o tr?c tuy?n g?n dây c?a anh ?y cho Coursera, Lãnh d?o không có gi?i h?n: Ði?u hu?ng qua s? không ch?c ch?n và S? gián do?n Mike Barger, Tr? lý Giáo su t?i Tru?ng Kinh doanh Ross c?a Ð?i h?c Michigan, gi?i quy?t nh?ng câu h?i quan tr?ng này. Cùng th?i di?m ra m?t H?c vi?n Lãnh d?o Coursera</a>, bài nói chuy?n c?a Berger làm sáng t? cách các nhà lãnh d?o có th? phát tri?n trong môi tru?ng VUCA hay thay d?i, không ch?c ch?n, ph?c t?p và không rõ ràng.</strong></p><p><strong.</strong></p><p><strong >Chi?n th?ng trong môi tru?ng VUCA</strong></p><p>Khuôn kh? VUCA du?c quân d?i Hoa K? phát tri?n vào cu?i nh?ng nam 1980 d? mô t? m?t th?c t? m?i: m?t th?c t? du?c d?nh hình b?i các d?ng l?c ph?c t?p, luôn thay d?i, thách th?c nh?ng hi?u bi?t tuy?n tính v? nguyên nhân và tác d?ng. D?a trên 13 nam ph?c v? trong H?i quân Hoa K? và nhi?m k? c?a ông v?i tu cách là giám d?c di?u hành sáng l?p t?i JetBlue Airways, Barger ti?t l? cách áp d?ng các bài h?c t? chi?n lu?c quân s? vào b?i c?nh kinh doanh. Khi làm nhu v?y, ông trao quy?n cho các nhà lãnh d?o d? doán các m?i de d?a ti?m tàng, thích ?ng v?i các s? ki?n b?t ng? và qu?n lý kh?ng ho?ng khi chúng phát sinh.</p><p>Cho d?n g?n dây, gi?i kinh doanh chính th?ng v?n cho r?ng các nhà lãnh d?o ch? nên tránh kh?ng ho?ng. Tuy nhiên, nhu d?i d?ch vi-rút corona dã cho th?y, nh?ng gián do?n quan tr?ng trong nhi?m v? có th? xu?t hi?n d?t ng?t và gia tang v?i t?c d? c?p s? nhân. Barger l?p lu?n r?ng trong th? gi?i VUCA ngày nay c?a chúng ta, kh?ng ho?ng không ph?i là v?n d? khi nào mà là v?n d?. Thay vì ngây tho cho r?ng có th? ngan ch?n du?c các k?ch b?n b?t l?i, ngày nay các doanh nghi?p c?n ch?p nh?n tính t?t y?u c?a kh?ng ho?ng. B?ng cách áp d?ng tu duy chu?n b? s?n sàng, các nhà lãnh d?o có th? phát tri?n các công c?, nang l?c và quy trình thi?t y?u giúp h? gi?i quy?t m?i kh?ng ho?ng khi nó x?y ra.</p><p><strong>Ba s? th?t ph? quát v? kh? nang lãnh d?o trong kh?ng ho?ng</strong></ p><p>T?p h?p nh?ng bài h?c t? kinh nghi?m chuyên môn và nghiên c?u h?c thu?t c?a mình, Barger xác d?nh ba chân lý ph? quát v? kh? nang lãnh d?o trong kh?ng ho?ng:</p><ol><li>Trong kh?ng ho?ng, m?i ngu?i tìm ki?m b?ng ch?ng h?u hình v? kh? nang lãnh d?o.</li> ><li>Khi h? nhìn vào, m?i ngu?i mu?n và c?n các nhà lãnh d?o tin tu?ng<li>M?i ngu?i không mong d?i các nhà lãnh d?o c?a h? ph?i hoàn h?o hay toàn trí<p>Thay vì b? ám ?nh b?i quy?t d?nh hoàn h?o, Barger kh?ng d?nh, các nhà lãnh d?o ph?i h?c cách dua ra l?a ch?n liên t?c, gia tang khi d?i m?t v?i d? li?u không thuy?t ph?c. B?ng cách ch?ng t? kh? nang ph?n ?ng m?t cách di?m tinh nhung m?nh m? tru?c các tình hu?ng dang di?n ra, các nhà lãnh d?o có th? t?o d?ng ni?m tin và s? tin c?y c?a nhi?u cá nhân và nhóm mà doanh nghi?p c?a h? tác d?ng d?n.</p>

<p>Ch?ng l?i s? chung chung, Barger khuy?n khích các nhà lãnh d?o nêu rõ các bên liên quan khác nhau trong doanh nghi?p c?a h?, t? nhân viên, khách hàng và nhóm di?u hành d?n các nhà d?u tu, thành viên c?ng d?ng và gi?i truy?n thông.&nbsp;<strong>Ông gi?i thích, m?i bên liên quan d?u c?n du?c hi?u m?t cách toàn di?n và theo cách hi?u riêng c?a h?.&nbsp;</strong>B?ng cách nuôi du?ng s? dánh giá sâu s?c v? nhu c?u, k? v?ng và d? xu?t giá tr? riêng c?a m?i bên, các nhà lãnh d?o doanh nghi?p có th? tuong tác v?i h? hi?u qu? hon trong nh?ng th?i di?m kh?ng ho?ng, giao d?ch v?i nhau k? ho?ch -size-fits-all cho m?t lo?t các phuong pháp ti?p c?n du?c nh?m m?c tiêu.</p><p<strong>Các yêu c?u chính d?i v?i các nhà lãnh d?o: Hãy, bi?t, làm</strong></p><p>Ð? làm rõ l?p lu?n c?a mình, Barger mu?n khuôn kh? th? hai t? quân d?i Hoa K?, &ldquo;Be, Know, Do:</p><ol><li>Be: Hi?n th?, Quan tâm, Ð?ng c?m, Bình tinh và Quy?t doán.</li><li>Bi?t: T?m nhìn , Giá tr?, Nguyên t?c hu?ng d?n.</li><li>Làm: Giao ti?p, Ðua ra quy?t d?nh v?i lu?ng thông tin h?n ch?, Ch?u trách nhi?m và Thu hút các bên liên quan c?a b?n.</li></ol><p>Hãy ch? d?o các nhà lãnh d?o th? hi?n quy?t tâm và tính c?p bách d? kh?c ph?c nh?ng k?t qu? không mong mu?n trong khi v?n hài hòa v?i các bên liên quan c?a h?&rsquo; lo l?ng và quan tâm khác nhau. Bi?t tru?c s? c?n thi?t c?a các nhà lãnh d?o d? ti?p thu các giá tr? c?a t? ch?c c?a h?. Trong nh?ng th?i di?m cang th?ng, nh?ng giá tr? này dóng vai trò là Ngôi sao phuong B?c, cung c?p n?n t?ng v?ng ch?c d? dua ra quy?t d?nh, b?t k? b?n ch?t c? th? c?a cu?c kh?ng ho?ng hi?n t?i. Làm nh?c nh? các nhà lãnh d?o hành d?ng ngay c? khi nh?ng ?n s? v?n t?n t?i. B?ng cách nh?n trách nhi?m hu?ng d?n t? ch?c và t?t c? các bên liên quan c?a t? ch?c vu?t qua các giai do?n th? thách, nh?ng ngu?i c?p cao hon có th? d?n d?t b?ng t?m guong và c?ng c? v? trí c?a h? nhu là ngu?n thông tin có th?m quy?n trong m?t tình hu?ng phát tri?n.</p><p><strong>T?o m?t K? ho?ch hành d?ng</strong></p><p>Ðu?c trang b? các khuôn kh? này, các nhà lãnh d?o có th? th?c hi?n các bu?c c? th? nào d? s?n sàng cho c? b?n thân và t? ch?c c?a h?? Barger khuy?n khích h? b?t d?u v?i m?t cu?c kh?ng ho?ng gi? d?nh, ch?ng h?n nhu thay d?i th? tru?ng, vi ph?m d? li?u, l?i s?n ph?m, sai l?m trong th?c thi ho?c thay d?i lãnh d?o. Sau khi xác d?nh m?i de d?a, các nhà lãnh d?o có th? c?ng tác v?i các nhóm c?a h? d?:p><li>Suy nghi v? cách k?ch b?n s? tác d?ng khác nhau d?n t?ng bên liên quan c?a h?.</li><li>L?p m?t k? ho?ch hành d?ng t?ng bu?c d? giao ti?p v?i và thu hút các bên liên quan c?a h?, xem xét các lo?i, phuong th?c và t?n su?t g?i thông di?p phù h?p nh?t v?i mong d?i, nhu c?u và l?i ích c?a t?ng cá nhân ho?c nhóm.</li><li>S? d?ng k? ho?ch này d? dánh giá vai trò, trách nhi?m c?a t? ch?c, và các th? t?c hi?n có và ch? d?ng gi?i quy?t các l? h?ng trong dó.&nbsp</li></ol><p>B?ng cách ti?n hành ch?y th?, các nhà lãnh d?o có th? v?n hành các tu duy và quy trình c?n thi?t d? không ch? vu?t qua th?i ti?t mà còn phát tri?n vu?t qua kh?ng ho?ng, b?t k? không quen thu?c ho?c chua t?ng có.</p><p>Tìm hi?u sâu hon v? nh?ng thông tin chi ti?t này b?ng cách xem h?i th?o trên web du?c ghi l?i, &ldquo;Lãnh d?o không gi?i h?n: Ði?u hu?ng qua s? không ch?c ch?n và gián do?n.&rdquo;</a></p>', CAST(N'2022-04-03' AS Date), 1, 2, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (29, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/ID11835_EmergeBlogPost_ImageCrop_Post2_OPTION2_1200x628.jpg', N'5 cách nhà tuy?n d?ng có th? thúc d?y phát tri?n k? nang cho l?c lu?ng lao d?ng c?a tuong lai''', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (30, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (31, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (32, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (33, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (34, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (35, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (36, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (37, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (38, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (39, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id], [postContent]) VALUES (40, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Post_Category] ON 

INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (1, N'Programming Basics', N'Introduction to Python Programming', CAST(N'2023-05-15' AS Date))
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (2, N'Web Development', N'Building Responsive Websites with HTML and CSS', CAST(N'2023-04-28' AS Date))
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (3, N'Data Science', N'Exploratory Data Analysis using Python', CAST(N'2023-05-10' AS Date))
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (4, N'Business and Finance', N'Financial Planning for Small Businesses', CAST(N'2023-05-20' AS Date))
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (5, N'Graphic Design', N'Introduction to Adobe Photoshop for Beginners', CAST(N'2023-05-03' AS Date))
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (6, N'Marketing', N'Social Media Marketing Strategies for E-commerce', CAST(N'2023-05-12' AS Date))
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (7, N'Personal Development', N'Mastering Time Management Skills', CAST(N'2023-05-25' AS Date))
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (8, N'Language Learning', N'Conversational Spanish for Travelers', CAST(N'2023-05-18' AS Date))
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (9, N'Health and Fitness', N'Effective Workout Routines for Weight Loss', CAST(N'2023-05-07' AS Date))
INSERT [dbo].[Post_Category] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (10, N' Photography', N'Introduction to Landscape Photography Techniques', CAST(N'2023-05-22' AS Date))
SET IDENTITY_INSERT [dbo].[Post_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Price_Package] ON 

INSERT [dbo].[Price_Package] ([package_id], [package_name], [duration], [pack_status], [price], [description]) VALUES (1, N'gói miễn phí', 100000, 1, 0, N'Bạn có thể học các khoá học của chúng tôi nhưng tính năng làm quiz, và theo dõi tiến độ của bản thân trên từng khoá học sẽ bị khoá')
INSERT [dbo].[Price_Package] ([package_id], [package_name], [duration], [pack_status], [price], [description]) VALUES (2, N'Gói bậc 1', 3, 1, 150000, N'Mở khoá các tính năng làm quiz, theo dõi tiến độ của bản thân trong vòng 3 tháng')
INSERT [dbo].[Price_Package] ([package_id], [package_name], [duration], [pack_status], [price], [description]) VALUES (3, N'Gói bậc 2', 6, 1, 250000, N'Mở khoá các tính năng làm quiz, theo dõi tiến độ của bản thân trong vòng 6 tháng')
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

INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (1, 1, 1, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (2, 2, 1, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (3, 3, 1, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (4, 4, 1, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (5, 5, 1, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (6, 6, 1, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (7, 7, 1, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (8, 8, 1, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (9, 9, 1, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (10, 10, 1, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (11, 51, 2, 0, 0, 3, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (12, 52, 2, 0, 0, 4, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (13, 53, 2, 0, 0, 1, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (14, 54, 2, 0, 0, 3, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (15, 55, 2, 0, 0, 2, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (16, 56, 2, 0, 0, 1, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (17, 57, 2, 0, 0, 3, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (18, 58, 2, 0, 0, 4, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (19, 59, 2, 0, 0, 1, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (20, 60, 2, 0, 0, 1, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (21, 61, 3, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (22, 62, 3, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (23, 63, 3, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (24, 64, 3, 1, 0, 3, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (25, 65, 3, 1, 0, 3, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (26, 66, 3, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (27, 67, 3, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (28, 68, 3, 1, 0, 4, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (29, 69, 3, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (30, 70, 3, 1, 0, 1, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (31, 41, 4, 1, 0, 3, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (32, 42, 4, 1, 0, 3, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (33, 43, 4, 1, 0, 3, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (34, 44, 4, 1, 0, 2, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (35, 45, 4, 1, 0, 3, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (36, 46, 4, 1, 0, 3, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (37, 47, 4, 1, 0, 1, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (38, 48, 4, 1, 0, 2, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (39, 49, 4, 1, 0, 2, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (40, 50, 4, 1, 0, 0, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (41, 81, 5, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (42, 82, 5, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (43, 83, 5, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (44, 84, 5, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (45, 85, 5, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (46, 86, 5, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (47, 87, 5, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (48, 88, 5, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (49, 89, 5, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (50, 90, 5, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (51, 71, 6, 1, 0, 3, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (52, 72, 6, 1, 0, 0, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (53, 73, 6, 1, 0, 1, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (54, 74, 6, 1, 0, 0, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (55, 75, 6, 1, 0, 4, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (56, 76, 6, 1, 0, 4, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (57, 77, 6, 1, 0, 4, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (58, 78, 6, 1, 0, 1, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (59, 79, 6, 1, 0, 1, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (60, 80, 6, 1, 0, 1, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (61, 61, 7, 1, 0, 1, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (62, 62, 7, 1, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (63, 63, 7, 1, 0, 1, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (64, 64, 7, 1, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (65, 65, 7, 1, 0, 1, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (66, 66, 7, 1, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (67, 67, 7, 1, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (68, 68, 7, 1, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (69, 69, 7, 1, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (70, 70, 7, 1, 0, 4, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (71, 51, 8, 1, 0, 1, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (72, 52, 8, 1, 0, 1, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (73, 53, 8, 1, 0, 2, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (74, 54, 8, 1, 0, 2, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (75, 55, 8, 1, 0, 3, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (76, 56, 8, 1, 0, 0, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (77, 57, 8, 1, 0, 0, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (78, 58, 8, 1, 0, 0, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (79, 59, 8, 1, 0, 0, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (80, 60, 8, 1, 0, 0, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (81, 41, 9, 0, 0, 2, 9)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (82, 42, 9, 0, 0, 4, 9)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (83, 43, 9, 0, 0, 2, 9)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (84, 44, 9, 0, 0, 1, 9)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (85, 45, 9, 0, 0, 3, 9)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (86, 46, 9, 0, 0, 3, 9)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (87, 47, 9, 0, 0, 3, 9)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (88, 48, 9, 0, 0, 2, 9)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (89, 49, 9, 0, 0, 3, 9)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (90, 50, 9, 0, 0, 3, 9)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (91, 31, 10, 1, 0, 1, 10)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (92, 32, 10, 1, 0, 2, 10)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (93, 33, 10, 1, 0, 2, 10)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (94, 34, 10, 1, 0, 0, 10)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (95, 35, 10, 1, 0, 0, 10)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (96, 36, 10, 1, 0, 0, 10)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (97, 37, 10, 1, 0, 0, 10)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (98, 38, 10, 1, 0, 0, 10)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (99, 39, 10, 1, 0, 0, 10)
GO
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (100, 40, 10, 1, 0, 0, 10)
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
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (81, N'Hãy chọn đáp án đúng: 7 x 3 + 4 / 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (82, N'Hãy chọn đáp án đúng: 2 - 4 + 6 x 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (83, N'Hãy chọn đáp án đúng: 10 / 5 + 2 - 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (84, N'Hãy chọn đáp án đúng: 3 + 5 - 1 x 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (85, N'Hãy chọn đáp án đúng: 8 - (2 + 3 x 2) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (86, N'Hãy chọn đáp án đúng: 4 x 2 - (3 + 1) = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (87, N'Hãy chọn đáp án đúng: 9 + 6 / 3 - 2 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (88, N'Hãy chọn đáp án đúng: 5 - 2 + 3 x 4 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (89, N'Hãy chọn đáp án đúng: 7 x 2 + 5 / 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (90, N'Hãy chọn đáp án đúng: 1 + 3 - 2 x 5 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_note], [quiz_id]) VALUES (91, N'Hãy chọn đáp án đúng: 4 + 2 x 3 - 1 = ?', N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện', 10)
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
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (9, N'Bài quiz 1: Tính giới hạn xác định và giới hạn vô hướng', N'Làm bài quiz 1', 5, 1)
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
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [section_id], [quiz_status]) VALUES (21, N'Bài quiz 1: Phân tích số thành các thừa số nguyên tố.', N'Làm bài quiz 1', 11, 1)
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
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz_Result] ON 

INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (1, 1, 1, 1, 2, CAST(N'2023-01-29T09:34:53.000' AS DateTime), CAST(N'2023-01-29T09:35:39.000' AS DateTime), 1)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (2, 6, 2, 0, 3, CAST(N'2023-01-30T10:15:27.000' AS DateTime), CAST(N'2023-01-30T10:16:13.000' AS DateTime), 3)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (3, 7, 3, 0, 7, CAST(N'2023-01-31T15:42:08.000' AS DateTime), CAST(N'2023-01-31T15:42:54.000' AS DateTime), 8)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (4, 5, 4, 0, 0, CAST(N'2023-02-01T18:20:12.000' AS DateTime), CAST(N'2023-02-01T18:20:58.000' AS DateTime), 2)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (5, 9, 5, 0, 9, CAST(N'2023-02-02T21:08:45.000' AS DateTime), CAST(N'2023-02-02T21:09:31.000' AS DateTime), 3)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (6, 8, 6, 0, 1, CAST(N'2023-02-03T08:55:59.000' AS DateTime), CAST(N'2023-02-03T08:56:45.000' AS DateTime), 4)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (7, 7, 7, 0, 7, CAST(N'2023-02-04T12:10:34.000' AS DateTime), CAST(N'2023-02-04T12:11:20.000' AS DateTime), 2)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (8, 6, 8, 0, 0, CAST(N'2023-02-05T16:45:22.000' AS DateTime), CAST(N'2023-02-05T16:46:08.000' AS DateTime), 7)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (9, 5, 9, 0, 5, CAST(N'2023-02-06T19:27:53.000' AS DateTime), CAST(N'2023-02-06T19:28:39.000' AS DateTime), 3)
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end], [attempt]) VALUES (10, 4, 10, 0, 4, CAST(N'2023-02-07T22:05:37.000' AS DateTime), CAST(N'2023-02-07T22:06:23.000' AS DateTime), 5)
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
SET IDENTITY_INSERT [dbo].[Section] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (1, N'Tham gia với chúng tôi để mở mang kiến ​​thức của bạn về khoa học trên thế giới...Chào mừng bạn đến với cuộc hành trình của chúng tôi và chúc bạn may mắn!', N'img/tempAvatar.jpg', N'courselist?subject=1', 1, N'but you didnt have to cut me off')
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (2, N'Chỉ để trở thành phiên bản tốt nhất của chính bạn để thích nghi với cơ hội của thế giới1...Chào mừng bạn đến với cuộc hành trình của chúng tôi và chúc bạn may mắn!', N'img/tempAvatar.jpg', N'courselist?subject=3', 1, N'Make out like it never happened and that we were nothing')
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (3, N'Tắt những cuộc gọi tắt cả email Flow anh sẽ dắt tay em đi theo', N'img/tempAvatar.jpg', N'courselist?subject=2', 1, N'And I dont even need your love')
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (4, N'Đến nột nơi chẳng ai biết là nơi nào Nơi mà nỗi buồn trở nên bé tí teo', N'img/tempAvatar.jpg', N'courselist?subject=2', 1, N'But you treat me like a stranger, and that feels so rough')
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (5, N'Nơi mà u sầu mỏng như là cánh ve Nụ cười em nở tròn như là bánh xe', N'img/tempAvatar.jpg', N'courselist?subject=2', 1, N'But you treat me like a stranger, and that feels so rough')
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc]) VALUES (1, N'Công nghệ thông tin', N'https://i.ytimg.com/vi/CJlckNl0KFU/hq720.jpg?sqp=-%E2%80%A6AFwAcABBg==&rs=AOn4CLClq5CDznc_poNMEtAdr-O4xPFA5g', N'Trong môn học này, bạn có thể học nhiều ngôn ngữ lập trình khác nhau.')
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc]) VALUES (2, N'Toán', N'https://i.ytimg.com/vi/gSVHaIWIgUE/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLDckRJcwXYnnQtJ2kUYPX6VtIp2KA', N'Trong chủ đề này, bạn có thể tìm hiểu về toán học trong lĩnh vực công nghệ thông tin.')
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc]) VALUES (3, N'Nhạc cụ', N'https://i.ytimg.com/vi/FpTlgWy5UUU/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLBvQfUgiQhsak1KckNc-KkRTHzykg', N'Trong môn học này, bạn có thể tham gia các khóa học cơ bản về cách chơi nhạc cụ.')
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc]) VALUES (4, N'Ngôn ngữ', N'https://i.ytimg.com/vi/wkjSBC-_bDA/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLCSsSNhyijp7aPD2qVbxdDfaI6JHg', N'Trong môn học này, bạn có thể học nhiều ngôn ngữ khác nhau')
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc]) VALUES (5, N'Kinh Doanh', N'https://i.ytimg.com/vi/G7VWp_U-eo8/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLCuDh3B8RKQ-8-dJpQSLhhVvX5D0w', N'Trong chủ đề này, bạn có thể học các khóa học kinh doanh cơ bản.')
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc]) VALUES (6, N'Sức khoẻ', N'https://i.ytimg.com/vi/VJ_s51QGbg8/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLAtzjxsl6Dflrjtv8RLrdDGHnMn1w', N'Ở bộ môn này, bạn có thể học các khóa học về cách chăm sóc sức khỏe đúng cách và khoa học.')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (1, N'son@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'chu sơn', N'img/tempAvatar.jpg', 1, CAST(N'2003-05-27' AS Date), N'0363938085', N'Hà Nội', N'1000', 2, CAST(N'2003-05-27' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (2, N'chi@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'Minh Chi', N'img/tempAvatar.jpg', 2, CAST(N'2003-05-27' AS Date), N'0363938085', N'Hà Nội', N'1000', 2, CAST(N'2003-05-27' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (3, N'manh@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Phan Tiến Mạnh', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0442511630', N'Hà Nội', N'1000', 1, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (4, N'linh@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Thị Ngọc Linh', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0460429023', N'Hà Nội', N'1000', 1, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (5, N'quocAnh@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Võ Quốc Anh', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0827784536', N'Hà Nội', N'1000', 1, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (6, N'TuAnh@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'Phan Nguyễn Tú Anh', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0197295039', N'Hà Nội', N'1000', 1, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (7, N'dinhvu@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Trịnh Đình Vũ', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0442511630', N'Nam Định', N'1000', 2, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (8, N'haianh@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Hải Anh', N'img/tempAvatar.jpg', 1, CAST(N'2003-01-01' AS Date), N'0577951519', N'Hồ Chí Minh', N'1000', 2, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (9, N'nhatlinh@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Chu Nhật Linh', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0783130637', N'Hải Phòng', N'1000', 2, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (10, N'thanhtra@gmai.coml', N'YvzV1AkiYao7bz5c9EHeow==', N'Phùng Thanh Trà', N'img/tempAvatar.jpg', 2, CAST(N'2003-01-01' AS Date), N'0168700393', N'Đà Nẵng', N'1000', 2, CAST(N'2023-05-26' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (11, N'minhtam@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'Đinh Ngọc Minh Tâm', N'img/tempAvatar.jpg', 2, CAST(N'2003-05-27' AS Date), N'0556335383', N'Hải Phòng', N'1000', 4, CAST(N'2023-05-26' AS Date), 1, 0)
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
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (24, N'chuquyson12@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/25.jpg', 1, CAST(N'2023-06-30' AS Date), N'0363938085', N'Hà Nội', N'0', 3, CAST(N'2023-06-05' AS Date), 1, 0)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status], [Score]) VALUES (25, N'chuquyson16@gmail.com', N'YvzV1AkiYao7bz5c9EHeow==', N'sơn chu', N'img/1.jpg', 1, CAST(N'2023-06-16' AS Date), N'0363938085', N'Hà Nội', N'0', 2, CAST(N'2023-06-05' AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[choices]  WITH CHECK ADD FOREIGN KEY([ques_id])
REFERENCES [dbo].[Question] ([ques_id])
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
USE [master]
GO
ALTER DATABASE [Course_DB] SET  READ_WRITE 
GO
