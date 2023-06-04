USE [master]
GO

CREATE DATABASE [Coursere_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Coursere_DB', FILENAME = N'E:\database Swp391\Coursere_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Coursere_DB_log', FILENAME = N'E:\database Swp391\Coursere_DB_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Coursere_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Coursere_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Coursere_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Coursere_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Coursere_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Coursere_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Coursere_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Coursere_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Coursere_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Coursere_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Coursere_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Coursere_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Coursere_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Coursere_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Coursere_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Coursere_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Coursere_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Coursere_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Coursere_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Coursere_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Coursere_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Coursere_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Coursere_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Coursere_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Coursere_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Coursere_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Coursere_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Coursere_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Coursere_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Coursere_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Coursere_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Coursere_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Coursere_DB', N'ON'
GO
ALTER DATABASE [Coursere_DB] SET QUERY_STORE = OFF
GO
USE [Coursere_DB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[blog_name] [varchar](255) NULL,
	[blog_title] [text] NULL,
	[updated_date] [date] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [varchar](50) NOT NULL,
	[course_name] [varchar](50) NULL,
	[course_title] [varchar](255) NULL,
	[course_img] [text] NULL,
	[course_price] [money] NULL,
	[course_desc] [text] NULL,
	[course_start] [date] NULL,
	[course_stop] [date] NULL,
	[course_public] [date] NULL,
	[sub_id] [int] NULL,
	[lecturer_id] [int] NULL,
	[level_id] [int] NULL,
	[course_status] [bit] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[gender_id] [int] IDENTITY(1,1) NOT NULL,
	[gender_name] [varchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[gender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lecturer_id] [int] IDENTITY(1,1) NOT NULL,
	[lecturer_name] [varchar](50) NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lecturer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_name] [varchar](50) NULL,
	[lesson_video] [text] NULL,
	[course_id] [varchar](50) NULL,
	[section_id] [int] NULL,
	[type_id] [int] NULL,
	[lesson_desc] [text] NULL,
	[lesson_status] [bit] NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[level_id] [int] IDENTITY(1,1) NOT NULL,
	[level_name] [varchar](50) NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[level_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manage_Course](
	[course_id] [varchar](50) NOT NULL,
	[user_id] [int] NOT NULL,
	[feature] [varchar](50) NULL,
 CONSTRAINT [PK_Manage_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[per_id] [int] IDENTITY(1,1) NOT NULL,
	[per_name] [varchar](255) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[post_img] [text] NULL,
	[post_title] [text] NULL,
	[post_desc] [text] NULL,
	[post_date] [date] NULL,
	[post_status] [bit] NULL,
	[blog_id] [int] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price_Package](
	[package_id] [int] IDENTITY(1,1) NOT NULL,
	[package_name] [varchar](50) NULL,
	[duration] [int] NULL,
	[pack_status] [bit] NULL,
	[multiple] [float] NULL,
	[description] [varchar](300) NULL,
 CONSTRAINT [PK_Price_Package] PRIMARY KEY CLUSTERED 
(
	[package_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[ques_id] [int] IDENTITY(1,1) NOT NULL,
	[ques_content] [text] NULL,
	[ques_result] [int] NULL,
	[ques_note] [text] NULL,
	[quiz_id] [int] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[ques_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[quiz_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_name] [varchar](50) NULL,
	[quiz_desc] [text] NULL,
	[course_id] [varchar](50) NULL,
	[type_id] [int] NULL,
	[section_id] [int] NULL,
	[quiz_status] [bit] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz_Result](
	[quiz_result_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_id] [int] NULL,
	[user_id] [int] NULL,
	[quiz_status] [bit] NULL,
	[quiz_grade] [float] NULL,
	[quiz_start] [datetime] NULL,
	[quiz_end] [datetime] NULL,
 CONSTRAINT [PK_Quiz_Result] PRIMARY KEY CLUSTERED 
(
	[quiz_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[reg_id] [int] IDENTITY(1,1) NOT NULL,
	[reg_time] [date] NULL,
	[reg_note] [text] NULL,
	[course_id] [varchar](50) NULL,
	[user_id] [int] NULL,
	[reg_status_id] [bit] NULL,
	[package_id] [int] NULL,
	[last_updated_by] [varchar](100) NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration_Status](
	[reg_status_id] [bit] NOT NULL,
	[reg_status_name] [varchar](50) NULL,
 CONSTRAINT [PK_Registration_Status] PRIMARY KEY CLUSTERED 
(
	[reg_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](255) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[section_id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [varchar](50) NOT NULL,
	[section_name] [varchar](255) NULL,
	[type_id] [int] NULL,
	[section_status] [bit] NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[SettingId] [int] IDENTITY(1,1) NOT NULL,
	[SettingTypeId] [int] NOT NULL,
	[SettingValue] [varchar](50) NOT NULL,
	[SettingOrder] [varchar](100) NOT NULL,
	[SettingStatusId] [int] NOT NULL,
	[SettingDescription] [text] NOT NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SettingType](
	[SettingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SettingTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SettingType] PRIMARY KEY CLUSTERED 
(
	[SettingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[slider_id] [int] IDENTITY(1,1) NOT NULL,
	[slider_title] [varchar](max) NULL,
	[slider_img] [text] NULL,
	[slider_link] [varchar](max) NULL,
	[slider_status] [bit] NULL,
	[slider_note] [varchar](max) NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_name] [varchar](50) NULL,
	[sub_img] [text] NULL,
	[sub_desc] [text] NULL,
	[subject_cate_id] [int] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject_Category](
	[subject_cate_id] [int] IDENTITY(1,1) NOT NULL,
	[subject_cate_name] [varchar](255) NULL,
 CONSTRAINT [PK_Subject_Category] PRIMARY KEY CLUSTERED 
(
	[subject_cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time_Course](
	[time_course_id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [varchar](50) NULL,
	[user_id] [int] NOT NULL,
	[course_start] [datetime] NULL,
	[course_stop] [datetime] NULL,
 CONSTRAINT [PK_Time_Course] PRIMARY KEY CLUSTERED 
(
	[time_course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [varchar](50) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_email] [varchar](100) NOT NULL,
	[password] [varchar](255) NULL,
	[full_name] [varchar](50) NOT NULL,
	[user_img] [text] NULL,
	[gender_id] [int] NULL,
	[user_dob] [date] NULL,
	[user_phone] [varchar](50) NULL,
	[user_address] [varchar](50) NULL,
	[user_wallet] [varchar](50) NULL,
	[role_id] [int] NULL,
	[user_time] [date] NULL,
	[user_status] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (1, N'Degrees', N'See how learners are advancing their education and careers with world-class degree programs on Coursere.', CAST(N'2020-05-30' AS Date))
INSERT [dbo].[Blog] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (2, N'For Business', N'Discover how businesses are achieving their goals with job-based skill development programs on Coursere.', CAST(N'2020-05-30' AS Date))
INSERT [dbo].[Blog] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (3, N'For Educators', N'Gain valuable insights and inspiration about teaching world-class courses online.', CAST(N'2020-05-30' AS Date))
INSERT [dbo].[Blog] ([blog_id], [blog_name], [blog_title], [updated_date]) VALUES (4, N'Product News', N'Get the latest news on product launches, updates, and innovations from Coursere.', CAST(N'2020-05-30' AS Date))
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'CP', N'C Programming', N'C for Beginners', N'https://i.ytimg.com/vi/KnvbUiSxvbM/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLD9yi0W4PVqLm4agX4TgHoidHs6bQ', 0.0000, N'Hello World. | C is a general-purpose programming language that is extremely popular, simple, and flexible to use. | <p><a href="https://www.geeksforgeeks.org/c-programming-language/">C</a>&nbsp;is a procedural programming language. It was initially developed by Dennis Ritchie in the year 1972. It was mainly developed as a system programming language to write an operating system. The main features of the C language include low-level memory access, a simple set of keywords, and a clean style, these features make the C language suitable for system programs like an operating system or compiler development.&nbsp;Many later languages have borrowed syntax/features directly or indirectly from the C language. Like syntax of <a href="https://www.geeksforgeeks.org/java/?ref=shm">Java</a>, <a href="https://www.geeksforgeeks.org/php-introduction/?ref=lbp">PHP</a>, <a href="https://www.geeksforgeeks.org/introduction-to-javascript/?ref=lbp">JavaScript</a>, and many other languages are mainly based on the C language. <a href="https://www.geeksforgeeks.org/c-plus-plus/">C++</a> is nearly a superset of C language (Few programs may compile in C, but not in C++).&nbsp;</p>', NULL, NULL, CAST(N'2021-01-01' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'DIGMAR', N'Digital Marketing', N'Digital Marketing for Beginners', N'https://i.ytimg.com/vi/wfOp0lsCXAY/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDZRbhLMQpMEOrUTRTGD0gZTUDbuw', 80.0000, N'Think beyond the wave| Digital marketing is a broad field, including attracting customers via email, content marketing, search platforms, social media, and more. | <p>The term digital marketing refers to the use of digital channels to market products and services in order to reach consumers. This type of&nbsp;<a href="https://www.investopedia.com/terms/m/marketing.asp">marketing</a>&nbsp;involves the use of websites, mobile devices,&nbsp;<a href="https://www.investopedia.com/terms/s/social-media.asp">social media</a>, search engines, and other similar channels. Digital marketing became popular with the advent of the internet in the 1990s. Digital marketing involves some of the same principles as traditional marketing and is often considered a new way for companies to approach consumers and understand their behavior. Companies often combine traditional and digital marketing techniques in their strategies.</p>', NULL, NULL, CAST(N'2021-10-10' AS Date), 5, 2, 2, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'ENG', N'English', N'English for Beginners', N'https://i.ytimg.com/vi/daPOris7VH8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBd9qZfsTJJXX8evr8ZR3BpTJfrEQ', 0.0000, N'Hi!Hello! | English is a language—originally the language of the people of England. | <p>English is the&nbsp;<a href="https://en.wikipedia.org/wiki/List_of_languages_by_total_number_of_speakers" title="List of languages by total number of speakers">most spoken language</a>&nbsp;in the world (if&nbsp;<a href="https://en.wikipedia.org/wiki/Chinese_language" title="Chinese language">Chinese</a>&nbsp;is divided into variants)&nbsp;and the&nbsp;<a href="https://en.wikipedia.org/wiki/List_of_languages_by_number_of_native_speakers" title="List of languages by number of native speakers">third-most spoken native language</a>&nbsp;in the world, after&nbsp;<a href="https://en.wikipedia.org/wiki/Standard_Chinese" title="Standard Chinese">Standard Chinese</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Spanish_language" title="Spanish language">Spanish</a>.&nbsp;It is the most widely learned&nbsp;<a href="https://en.wikipedia.org/wiki/Second_language" title="Second language">second language</a>&nbsp;and is either the official language or one of the official languages in&nbsp;<a href="https://en.wikipedia.org/wiki/List_of_territorial_entities_where_English_is_an_official_language" title="List of territorial entities where English is an official language">59 sovereign states</a>. There are more people who have learned English as a second language than there are native speakers. As of 2005, it was estimated that there were over 2&nbsp;billion speakers of English.&nbsp;English is the majority native language in the United Kingdom, the United States, Canada, Australia,&nbsp;<a href="https://en.wikipedia.org/wiki/New_Zealand" title="New Zealand">New Zealand</a>&nbsp;(see&nbsp;<a href="https://en.wikipedia.org/wiki/Anglosphere" title="Anglosphere">Anglosphere</a>) and the&nbsp;<a href="https://en.wikipedia.org/wiki/Republic_of_Ireland" title="Republic of Ireland">Republic of Ireland</a>, and is widely spoken in some areas of the Caribbean, Africa, South Asia, Southeast Asia and Oceania.</p>', NULL, NULL, CAST(N'2021-08-08' AS Date), 4, 3, 1, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'FINMAR', N'Financial Markets', N'Financial Markets for Beginners', N'https://i.ytimg.com/vi/-ynksNvQghk/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBvW8Vaf7nTdLtCQrXLwwCtdUJsCA', 100.0000, N'Free enterprise with every issue | An overview of the ideas, methods, and institutions that permit human society to manage risks and foster enterprise. | <p>A&nbsp;<strong>financial market</strong>&nbsp;is a&nbsp;<a href="https://en.wikipedia.org/wiki/Market_(economics)" title="Market (economics)">market</a>&nbsp;in which people&nbsp;<a href="https://en.wikipedia.org/wiki/Trade" title="Trade">trade</a>&nbsp;financial&nbsp;<a href="https://en.wikipedia.org/wiki/Security_(finance)" title="Security (finance)">securities</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Derivative_(finance)" title="Derivative (finance)">derivatives</a>&nbsp;at low&nbsp;<a href="https://en.wikipedia.org/wiki/Transaction_cost" title="Transaction cost">transaction costs</a>. Some of the securities include&nbsp;<a href="https://en.wikipedia.org/wiki/Stock" title="Stock">stocks</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Bond_(finance)" title="Bond (finance)">bonds</a>, raw materials, and&nbsp;<a href="https://en.wikipedia.org/wiki/Precious_metals" title="Precious metals">precious metals</a>, which are known in the financial markets as&nbsp;<a href="https://en.wikipedia.org/wiki/Commodity" title="Commodity">commodities</a>.</p>

<p>The term &quot;market&quot; is sometimes used for what are more strictly&nbsp;<em>exchanges</em>, organizations that facilitate the trade in financial securities, e.g., a&nbsp;<a href="https://en.wikipedia.org/wiki/Stock_exchange" title="Stock exchange">stock exchange</a>&nbsp;or&nbsp;<a href="https://en.wikipedia.org/wiki/Commodities_exchange" title="Commodities exchange">commodity exchange</a>. This may be a physical location (such as the&nbsp;<a href="https://en.wikipedia.org/wiki/New_York_Stock_Exchange" title="New York Stock Exchange">New York Stock Exchange</a>&nbsp;(NYSE),&nbsp;<a href="https://en.wikipedia.org/wiki/London_Stock_Exchange" title="London Stock Exchange">London Stock Exchange</a>&nbsp;(LSE),&nbsp;<a href="https://en.wikipedia.org/wiki/JSE_Limited" title="JSE Limited">JSE Limited</a>&nbsp;(JSE),&nbsp;<a href="https://en.wikipedia.org/wiki/Bombay_Stock_Exchange" title="Bombay Stock Exchange">Bombay Stock Exchange</a>&nbsp;(BSE), or an electronic system such as&nbsp;<a href="https://en.wikipedia.org/wiki/NASDAQ" title="NASDAQ">NASDAQ</a>. Much trading of stocks takes place on an exchange; still,&nbsp;<a href="https://en.wikipedia.org/wiki/Corporate_action" title="Corporate action">corporate actions</a>&nbsp;(merger, spinoff) are outside an exchange, while any two companies or people, for whatever reason, may agree to sell the stock from one to the other without using an exchange.</p>', NULL, NULL, CAST(N'2021-09-09' AS Date), 5, 4, 2, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'GUI', N'Guitar', N'Guitar for Beginners', N'https://i.ytimg.com/vi/EDhzQNqo2T0/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBmzfaFRM82XQLbWlGH8i-4Q5TzdQ', 50.0000, N'Magical moments start with music. | The guitar is one of the oldest instruments known to man. It might originate somewhere in the vicinity of China. | <p>The&nbsp;<strong>guitar</strong>&nbsp;is a&nbsp;<a href="https://en.wikipedia.org/wiki/Fret" title="Fret">fretted</a>&nbsp;<a href="https://en.wikipedia.org/wiki/Musical_instrument" title="Musical instrument">musical instrument</a>&nbsp;that typically has six&nbsp;<a href="https://en.wikipedia.org/wiki/String_instrument" title="String instrument">strings</a>. It is usually held flat against the player&#39;s body and played by&nbsp;<a href="https://en.wikipedia.org/wiki/Strumming" title="Strumming">strumming</a>&nbsp;or&nbsp;<a href="https://en.wikipedia.org/wiki/Plucked_string_instrument" title="Plucked string instrument">plucking</a>&nbsp;the strings with the dominant hand, while simultaneously pressing selected strings against&nbsp;<a href="https://en.wikipedia.org/wiki/Frets" title="Frets">frets</a>&nbsp;with the fingers of the opposite hand. A&nbsp;<a href="https://en.wikipedia.org/wiki/Plectrum" title="Plectrum">plectrum</a>&nbsp;or individual finger&nbsp;<a href="https://en.wikipedia.org/wiki/Guitar_picking" title="Guitar picking">picks</a>&nbsp;may also be used to strike the strings. The sound of the guitar is projected either acoustically, by means of a resonant chamber on the instrument, or amplified by an electronic&nbsp;<a href="https://en.wikipedia.org/wiki/Pickup_(music_technology)" title="Pickup (music technology)">pickup</a>&nbsp;and an&nbsp;<a href="https://en.wikipedia.org/wiki/Guitar_amplifier" title="Guitar amplifier">amplifier</a>.</p>', NULL, NULL, CAST(N'2021-06-06' AS Date), 3, 5, 1, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'HTMLCSS', N'HTML & CSS Course', N'HTML & CSS for Beginners', N'https://i.ytimg.com/vi/TKYsuU86-DQ/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAEz5UZlg3_kGIAGYfen48z3AIbcg', 180.0000, N'Learning to code is learning to create and innovate. | If you’re thinking of building a website, then you’ll almost certainly have come across the acronyms HTML and CSS. These two essential tools form some of the foundations of any webpage. | <h2><strong>What is HTML?&nbsp;</strong></h2>
<p>Let&rsquo;s start by breaking down exactly what the acronym &lsquo;HTML&rsquo; stands for. HTML stands for HyperText Markup Language. HyperText is effectively a text within a text, and a markup language is a language understood by computers, designed to essentially describe webpages and make the text you use more interactive.</p>
<p>It was originally invented back in 1989 as the publishing language of the web, and to put it very simply, it is the first building block in creating a webpage. When you first come across the world of HTML, you&rsquo;ll likely encounter a whole ream of terms and phrases that are somewhat baffling too. The three main ones are elements,&nbsp;<a href="https://www.futurelearn.com/info/courses/introduction-to-web-development/0/steps/70493">tags</a>, and&nbsp;<a href="https://www.futurelearn.com/info/courses/introduction-to-web-development/0/steps/70500">attributes</a>.&nbsp;&nbsp;&nbsp;</p>
<p>HTML5 is the latest &lsquo;version&rsquo; of HTML, and knowledge in this area is a&nbsp;<a href="https://www.itjobswatch.co.uk/jobs/uk/html5.do">growing trend</a>&nbsp;in the job market. By and large, it has the same functionality as standard HTML but is much more dynamic and uses much less code to build something fantastic.&nbsp;</p>
<h3><strong>What is HTML used for?&nbsp;</strong></h3>
<p>In essence, HTML is used for creating the primary content of a webpage, giving it structure. You start by writing words, then apply tags or elements to these words. The web browser then reads this and can then understand the heading of a page, any paragraphs, and where the page starts and finishes, thus filling your web page with content.&nbsp;</p>
<p>HTML is supported by every single browser and is established on pretty much every webpage in existence. You don&rsquo;t need any licenses, you don&rsquo;t need to pay for it, and it can be pretty easy to learn and code. If we can compare a webpage to the human body, then HTML is the bones of the body.&nbsp;&nbsp;&nbsp;</p>
<h2><strong>What is CSS?&nbsp;</strong></h2>
<p>CSS is the acronym for Cascade Styling Sheets. In short, it is a sheet-style language, which is a type of language you can use to describe the presentation of a markup language &ndash; in this case, to describe the movements of HTML. It effectively determines how the building blocks, as laid by HTML, are decorated and presented to the user.</p>
<p>CSS was first created around 1996 to make sense of HTML and make the webpage look and feel amazing. Just as with any language, you have to write CSS, and knowing&nbsp;<a href="https://www.futurelearn.com/info/blog/how-we-write-css">how we write CSS</a>&nbsp;is a skill that any webpage developer needs to have. Easy to maintain, CSS is the second part of the two-part tool kit for webpage creation.&nbsp;&nbsp;&nbsp;</p>
<p>Web accessibility is&nbsp;<a href="https://www.toptal.com/designers/ui/importance-web-accessibility">really important</a>&nbsp;to many employers and companies nowadays, and there is fierce competition in creating the most accessible and well-designed webpage. Learning some&nbsp;<a href="https://www.futurelearn.com/courses/software-development-fundamentals-web-accessibility-css">software development fundamentals</a>&nbsp;involving CSS can help you learn how to create accessible web pages.</p>
<h3><strong>What is CSS used for?&nbsp;</strong></h3>
<p>If HTML is the bones of the body, then CSS is the skin that covers it. It&rsquo;s used for background color, styling, layout, borders, and shadowing &ndash; all the essential design bits and bobs that make a webpage look slick and smart. CSS enables you to distinguish between presentation and content by modifying the design and display of HTML elements.</p>
<p>Presentation and ease of use are a couple of the main things that CSS has bought to web design by translating the way content looks on a webpage and what else goes on it to complement that content. While frequently used in conjunction with HTML, it is actually independent of it and can be used with any XML-based markup language.&nbsp;</p>
<h2><strong>The differences between HTML and CSS&nbsp;</strong></h2>
<p>Many people believe that HTML and CSS are the same, but they&rsquo;re actually both quite distinct languages. While they are often used together in coding and Web design, they can both be used separately too, and both have a myriad of different applications. Let&rsquo;s take a look at some of the key differences between HTML and CSS.</p>
<ul>
	<li>HTML defines the content and the structure of a webpage, whereas CSS translates the display and the design of the HTML elements</li>
	<li>As a result, an HTML can incorporate CSS code in its files, but CSS cannot contain HTML in its sheets</li>
	<li>HTML is one set &lsquo;type&rsquo; or &lsquo;method&rsquo;, whereas, depending on the requirement, CSS can either be internal or external</li>
	<li>HTML isn&rsquo;t used for presentation or visualization, whereas CSS is</li>
	<li>When it comes to writing the language, HTML has quite a clear and easy-to-understand syntax, whereas CSS can get a little bit more complicated and confusing</li>
	<li>HTML uses &lsquo;tags&rsquo; on either side of the content, whereas CSS uses &lsquo;selectors&rsquo; that are followed by a declaration block</li>
	<li>The code used by HTML is much larger than the one used by CSS, giving CSS a lesser webpage loading time</li>
	<li>The primary function of HTML is to create web pages, whereas CSS is used to control the layout and the style of these webpage</li>
</ul>', NULL, NULL, CAST(N'2022-06-29' AS Date), 1, 13, 2, 0)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'HUMBRA', N'Human Brain', N'Human Brain for Beginners', N'https://i.ytimg.com/vi/EEmpK-HpUW0/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA4z4452SzWFVGjv-3kwAI0T2nkUQ', 0.0000, N'Our brain is the factory of the emotions. | The brain is one of the largest and most complex organs in the human body.It is made up of more than 100 billion nerves that communicate in trillions of connections called synapses. | <p>The&nbsp;<strong>human brain</strong>&nbsp;is the central&nbsp;<a href="https://en.wikipedia.org/wiki/Organ_(anatomy)" title="Organ (anatomy)">organ</a>&nbsp;of the human&nbsp;<a href="https://en.wikipedia.org/wiki/Nervous_system" title="Nervous system">nervous system</a>, and with the&nbsp;<a href="https://en.wikipedia.org/wiki/Spinal_cord" title="Spinal cord">spinal cord</a>&nbsp;makes up the&nbsp;<a href="https://en.wikipedia.org/wiki/Central_nervous_system" title="Central nervous system">central nervous system</a>. The&nbsp;<a href="https://en.wikipedia.org/wiki/Brain" title="Brain">brain</a>&nbsp;consists of the&nbsp;<a href="https://en.wikipedia.org/wiki/Cerebrum" title="Cerebrum">cerebrum</a>, the&nbsp;<a href="https://en.wikipedia.org/wiki/Brainstem" title="Brainstem">brainstem</a>&nbsp;and the&nbsp;<a href="https://en.wikipedia.org/wiki/Cerebellum" title="Cerebellum">cerebellum</a>. It controls most of the activities of the&nbsp;<a href="https://en.wikipedia.org/wiki/Human_body" title="Human body">body</a>, processing, integrating, and coordinating the information it receives from the&nbsp;<a href="https://en.wikipedia.org/wiki/Sensory_nervous_system" title="Sensory nervous system">sense organs</a>, and making decisions as to the instructions sent to the rest of the body. The brain is contained in, and protected by, the&nbsp;<a href="https://en.wikipedia.org/wiki/Neurocranium" title="Neurocranium">skull bones</a>&nbsp;of the&nbsp;<a href="https://en.wikipedia.org/wiki/Human_head" title="Human head">head</a>.</p>', NULL, NULL, CAST(N'2021-12-12' AS Date), 6, 6, 1, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'JAP', N'Japanese', N'Japanese for Beginners', N'https://i.ytimg.com/vi/ogqeb9TLO8A/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCctxkhy24-IKAmCm__Zq74dR2SeQ', 70.0000, N'Konichiwa! | Japanese (Nihongo) is an East Asian language spoken natively by about 128 million people, primarily by Japanese people and primarily in Japan, the only country where it is the national language. | <p>Japanese belongs to the&nbsp;<a href="https://en.wikipedia.org/wiki/Japonic_languages" title="Japonic languages">Japonic</a>&nbsp;(i.e. Japanese-<a href="https://en.wikipedia.org/wiki/Ryukyuan_languages" title="Ryukyuan languages">Ryukyuan</a>) language family, and its&nbsp;<a href="https://en.wikipedia.org/wiki/Classification_of_the_Japonic_languages" title="Classification of the Japonic languages">classification with other language families</a>&nbsp;is unclear. Linguists have tried grouping the Japonic languages with other families such as the&nbsp;<a href="https://en.wikipedia.org/wiki/Ainu_languages" title="Ainu languages">Ainu</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Austroasiatic_languages" title="Austroasiatic languages">Austroasiatic</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Koreanic_languages" title="Koreanic languages">Koreanic</a>, and now-discredited&nbsp;<a href="https://en.wikipedia.org/wiki/Altaic_languages" title="Altaic languages">Altaic</a>, but none of these proposals have gained widespread acceptance. Japanese has no demonstrable&nbsp;<a href="https://en.wikipedia.org/wiki/Genetic_relationship_(linguistics)" title="Genetic relationship (linguistics)">genealogical relationship</a>&nbsp;with the&nbsp;<a href="https://en.wikipedia.org/wiki/Chinese_language" title="Chinese language">Chinese</a>.&nbsp;However, a large portion of its vocabulary is&nbsp;<a href="https://en.wikipedia.org/wiki/Sino-Japanese_vocabulary" title="Sino-Japanese vocabulary">borrowed from Chinese</a>.&nbsp;<a href="https://en.wikipedia.org/wiki/Gairaigo" title="Gairaigo">Loanwords</a>&nbsp;have become frequent in modern Japanese, and&nbsp;<a href="https://en.wikipedia.org/wiki/Wasei-eigo" title="Wasei-eigo">words from English roots</a>&nbsp;have proliferated.</p>', NULL, NULL, CAST(N'2021-07-07' AS Date), 4, 7, 3, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'JS', N'JavaScript', N'JavaScript for Beginners', N'https://i.ytimg.com/vi/jS4aFq5-91M/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCyZZs-s_Ss0ahCRGI0C6KzVMwPgg', 130.0000, N'a | a | <em>JavaScript</em>&nbsp;is the world&#39;s most popular programming language.&nbsp;<em>JavaScript</em>', NULL, NULL, CAST(N'2022-06-07' AS Date), 1, 13, 3, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'MAD', N'Discrete Mathematics', N'Discrete Mathematics for Beginners', N'https://i.ytimg.com/vi/tyDKR4FG3Yw/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCKv59e7fHh4qlmgAlzZzKlHenkqQ', 65.0000, N'The world is continuous, but the mind is discrete. | Discrete mathematics is the study of mathematical structures that can be considered "discrete" rather than "continuous". | <p>Discrete mathematics is the branch of mathematics dealing with objects that can assume only distinct, separated values. The term &quot;discrete mathematics&quot; is therefore used in contrast with &quot;continuous mathematics,&quot; which is the branch of mathematics dealing with objects that can vary smoothly (and which includes, for example,&nbsp;<a href="https://mathworld.wolfram.com/Calculus.html">calculus</a>). Whereas discrete objects can often be characterized by&nbsp;<a href="https://mathworld.wolfram.com/Integer.html">integers</a>, continuous objects require&nbsp;<a href="https://mathworld.wolfram.com/RealNumber.html">real numbers</a>. The study of how discrete objects combine with one another and the probabilities of various outcomes is known as&nbsp;<a href="https://mathworld.wolfram.com/Combinatorics.html">combinatorics</a>. Other fields of mathematics that are considered to be part of discrete mathematics include&nbsp;<a href="https://mathworld.wolfram.com/GraphTheory.html">graph theory</a>&nbsp;and the&nbsp;<a href="https://mathworld.wolfram.com/TheoryofComputation.html">theory of computation</a>. Topics in&nbsp;<a href="https://mathworld.wolfram.com/NumberTheory.html">number theory</a>&nbsp;such as&nbsp;<a href="https://mathworld.wolfram.com/Congruence.html">congruences</a>&nbsp;and&nbsp;<a href="https://mathworld.wolfram.com/RecurrenceRelation.html">recurrence relations</a>&nbsp;are also considered part of discrete mathematics. The study of topics in discrete mathematics usually includes the study of&nbsp;<a href="https://mathworld.wolfram.com/Algorithm.html">algorithms</a>, their implementations, and efficiencies. Discrete mathematics is the mathematical language of computer science, and as such, its importance has increased dramatically in recent decades.</p>', NULL, NULL, CAST(N'2021-03-03' AS Date), 2, 8, 2, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'MAS', N'Probability And Statistics', N'Probability And Statistics for Beginners', N'https://i.ytimg.com/vi/f26vt5uQ_uI/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCI48U779bvVyZcBGNrfWSZaNf2KA', 75.0000, N'Statistics has been the most successful information science. | Probability and statistics, the branches of mathematics concerned with the laws governing random events, including the collection, analysis, interpretation, and display of numerical data. | <p><strong>Probability and statistics</strong>, are the branches of&nbsp;<a href="https://www.britannica.com/science/mathematics">mathematics</a>&nbsp;concerned with the laws governing random events, including the collection,&nbsp;<a href="https://www.britannica.com/science/analysis-mathematics">analysis</a>, interpretation, and display of numerical data. Probability has its origin in the study of gambling and insurance in the 17th century, and it is now an indispensable tool in both social and natural sciences. Statistics may be said to have its origin in census counts taken thousands of years ago; as a distinct scientific&nbsp;<a href="https://www.merriam-webster.com/dictionary/discipline" id="___id11">discipline</a>, however, it was developed in the early 19th century as the study of populations, economies, and&nbsp;<a href="https://www.merriam-webster.com/dictionary/moral">moral</a>&nbsp;actions, and later in that century as the mathematical tool for analyzing such numbers. For technical information on these subjects,&nbsp;<em>see</em>&nbsp;<a href="https://www.britannica.com/science/probability-theory">probability theory</a>&nbsp;and&nbsp;<a href="https://www.britannica.com/science/statistics">statistics</a>.</p>', NULL, NULL, CAST(N'2021-04-04' AS Date), 2, 9, 3, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'PHY', N'Physiology', N'Physiology for Beginners', N'https://i.ytimg.com/vi/6qk_LTVXZ2w/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBgqKo1TKiYAZvHPg3XOpm1gEl08g', 0.0000, N'I learned a lot more about transgender people. | Physiology is the study of how the human body works. | <p><strong>Physiology</strong>&nbsp;(from&nbsp;<a href="https://en.wikipedia.org/wiki/Ancient_Greek_language" title="">Ancient Greek</a>&nbsp;nature, origin, and&nbsp;study of)<span style="font-size:10.8333px"> </span>is the&nbsp;<a href="https://en.wikipedia.org/wiki/Science" title="Science">scientific</a>&nbsp;study of&nbsp;<a href="https://en.wikipedia.org/wiki/Function_(biology)" title="Function (biology)">functions</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Mechanism_(biology)" title="Mechanism (biology)">mechanisms</a>&nbsp;in a&nbsp;<a href="https://en.wikipedia.org/wiki/Life" title="Life">living system</a>.<span style="font-size:10.8333px"> </span>As a&nbsp;<a href="https://en.wikipedia.org/wiki/Branches_of_science" title="Branches of science">sub-discipline</a>&nbsp;of&nbsp;<a href="https://en.wikipedia.org/wiki/Biology" title="Biology">biology</a>, physiology focuses on how&nbsp;<a href="https://en.wikipedia.org/wiki/Organism" title="Organism">organisms</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Organ_system" title="Organ system">organ systems</a>, individual&nbsp;<a href="https://en.wikipedia.org/wiki/Organ_(biology)" title="Organ (biology)">organs</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Cell_(biology)" title="Cell (biology)">cells</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Biomolecule" title="Biomolecule">biomolecules</a>&nbsp;carry out the&nbsp;<a href="https://en.wikipedia.org/wiki/Chemistry" title="Chemistry">chemical</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Physics" title="Physics">physical</a>&nbsp;functions in a living system.&nbsp;According to the classes of&nbsp;<a href="https://en.wikipedia.org/wiki/Organism" title="Organism">organisms</a>, the field can be divided into&nbsp;<a href="https://en.wikipedia.org/wiki/Clinical_physiology" title="Clinical physiology">medical physiology</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Zoology#Physiological" title="Zoology">animal physiology</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Plant_physiology" title="Plant physiology">plant physiology</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Cell_physiology" title="Cell physiology">cell physiology</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Comparative_physiology" title="Comparative physiology">comparative physiology</a>.</p>', NULL, NULL, CAST(N'2021-11-11' AS Date), 6, 10, 2, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'PIA', N'Piano', N'Piano for Beginners', N'https://i.ytimg.com/vi/ABuewbFpyhg/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCZY2eGImY9dS-z0U4TBXg-YKsv9w', 120.0000, N'The piano is a monster that screams when you touch its teeth. | A piano is a large musical instrument that you play by pressing black and white keys on a keyboard. | <p>The&nbsp;<strong>piano</strong>&nbsp;is a stringed keyboard instrument in which the strings are struck by wooden hammers that are coated with a softer material (modern hammers are covered with dense wool felt; some early pianos used leather). It is played using a&nbsp;<a href="https://en.wikipedia.org/wiki/Musical_keyboard" title="Musical keyboard">keyboard</a>, which is a row of keys (small levers) that the performer presses down or strikes with the fingers and thumbs of both hands to cause the hammers to strike the strings. It was invented in Italy by&nbsp;<a href="https://en.wikipedia.org/wiki/Bartolomeo_Cristofori" title="Bartolomeo Cristofori">Bartolomeo Cristofori</a>&nbsp;around the year 1700.</p>', NULL, NULL, CAST(N'2021-05-05' AS Date), 3, 11, 2, 1)
INSERT [dbo].[Course] ([course_id], [course_name], [course_title], [course_img], [course_price], [course_desc], [course_start], [course_stop], [course_public], [sub_id], [lecturer_id], [level_id], [course_status]) VALUES (N'PY', N'Python', N'Python for Beginners', N'https://i.ytimg.com/vi/B7G5B8P8k9s/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBU4JzK8QWnIe-k3T7M40QCIoDHYA', 0.0000, N'Python: There is exactly one correct way to do it. | Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. | <p><strong>Python</strong>&nbsp;is a&nbsp;<a href="https://en.wikipedia.org/wiki/High-level_programming_language" title="High-level programming language">high-level</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Interpreter_(computing)" title="">interpreted</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/General-purpose_programming_language" title="General-purpose programming language">general-purpose programming language</a>. Its design philosophy emphasizes&nbsp;<a href="https://en.wikipedia.org/wiki/Code_readability" title="Code readability">code readability</a>&nbsp;with the use of&nbsp;<a href="https://en.wikipedia.org/wiki/Off-side_rule" title="Off-side rule">significant indentation</a>.<span style="font-size:10.8333px"> </span>Python is&nbsp;<a href="https://en.wikipedia.org/wiki/Type_system#DYNAMIC" title="Type system">dynamically-typed</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Garbage_collection_(computer_science)" title="Garbage collection (computer science)">garbage-collected</a>. It supports multiple&nbsp;<a href="https://en.wikipedia.org/wiki/Programming_paradigm" title="Programming paradigm">programming paradigms</a>, including&nbsp;<a href="https://en.wikipedia.org/wiki/Structured_programming" title="Structured programming">structured</a>&nbsp;(particularly&nbsp;<a href="https://en.wikipedia.org/wiki/Procedural_programming" title="Procedural programming">procedural</a>),&nbsp;<a href="https://en.wikipedia.org/wiki/Object-oriented_programming" title="Object-oriented programming">object-oriented</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Functional_programming" title="Functional programming">functional programming</a>. It is often described as a &quot;batteries included&quot; language due to its comprehensive&nbsp;<a href="https://en.wikipedia.org/wiki/Standard_library" title="Standard library">standard library</a>.&nbsp;Python is meant to be an easily readable language. Its formatting is visually uncluttered and often uses English keywords whereas other languages use punctuation. Unlike many other languages, it does not use&nbsp;<a href="https://en.wikipedia.org/wiki/Curly_bracket_programming_language" title="Curly bracket programming language">curly brackets</a>&nbsp;to delimit blocks, and semicolons after statements are allowed but rarely used. It has fewer syntactic exceptions and special cases than&nbsp;<a href="https://en.wikipedia.org/wiki/C_(programming_language)" title="C (programming language)">C</a>&nbsp;or&nbsp;<a href="https://en.wikipedia.org/wiki/Pascal_(programming_language)" title="Pascal (programming language)">Pascal</a>.</p>', NULL, NULL, CAST(N'2021-02-02' AS Date), 1, 12, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([gender_id], [gender_name]) VALUES (1, N'Male')
INSERT [dbo].[Gender] ([gender_id], [gender_name]) VALUES (2, N'Female')
INSERT [dbo].[Gender] ([gender_id], [gender_name]) VALUES (3, N'Other')
INSERT [dbo].[Gender] ([gender_id], [gender_name]) VALUES (4, N'I''d rather not say')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Lecturer] ON 

INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (1, N'Padma Manandhar')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (2, N'Ankur Aggarwal')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (3, N'Molly Stone')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (4, N'Robert Shiller')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (5, N'Andy')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (6, N'Nancy Kanwisher')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (7, N'Yamada')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (8, N'TheTrevTutor')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (9, N'Michel van Biezen')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (10, N'Gregory Osterhaus')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (11, N'Bill Hilton')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (12, N'Punit Jajodia')
INSERT [dbo].[Lecturer] ([lecturer_id], [lecturer_name]) VALUES (13, N'Dani Krossing')
SET IDENTITY_INSERT [dbo].[Lecturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Lesson] ON 

INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (1, N'Getting Started with C Programming', N'https://www.youtube.com/embed/KnvbUiSxvbM', N'CP', 1, 1, N'<p>This module introduces a powerful process for solving any programming problem&mdash;the Seven Steps.</p>

<p>You will learn how to approach a programming problem methodically, so you can formulate an algorithm that is specific and correct.</p>

<p>You will work through examples with sequences of numbers and graphical patterns to develop the skill of algorithm development.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (2, N'C Variables and Print Output', N'https://www.youtube.com/embed/h4VBpylsjJc', N'CP', 1, 1, N'<p>In this module, you will learn to read code&mdash;this means you will be able to execute a piece of code by hand, and clearly illustrate what each statement does and what the state of the program is.</p>

<p>Understanding how to read code is the only way to be sure you can write correct code.</p>

<p>By the end of this module, you will be able to read and understand code with functions, conditional statements, iteration, and other fundamental techniques.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (3, N'Data Types in C Programming', N'https://www.youtube.com/embed/sARaqR0hRI4', N'CP', 3, 1, N'<p>Everything is a number to a computer, but types determine the size and interpretation of numbers.</p>

<p>In this module you will learn about types beyond integers, both their conceptual representations, and their hardware representations in binary.</p>

<p>You will learn basic data types, &quot;non-number&quot; types, and complex, custom types, as well as some important caveats, so you will avoid type-related programming mistakes.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (4, N'Get User Input in C Programming', N'https://www.youtube.com/embed/17gp5DJEyiw', N'CP', 1, 1, N'<p>You have learned a lot about designing algorithms and the programming concepts that will help you implement them.</p>

<p>For this project, you will develop and test your own algorithm for sorting data.</p>

<p>This module will reinforce the importance of being specific when you write an algorithm and provide an opportunity for you to do so yourself, for a very common computational task: sorting.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (5, N'Comments in C Programing', N'https://www.youtube.com/embed/L2H2rtCLB-0', N'CP', 2, 1, N'<p>In this module, you will learn to write code and do your first assignment in the Practice Programming Environment.</p>

<p>You have practiced the first four steps of the Seven Steps in the previous course, and you will review them here before learning Step 5: Translating Your Algorithm to Code.</p>

<p>Expert programmers spend most of their time planning before they begin writing code, and you will learn to do the same!</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (6, N'C Operators', N'https://www.youtube.com/embed/_57FcSBtJNU', N'CP', 2, 1, N'<p>Now that you know how to plan an algorithm and translate it to code, you need to learn how to compile and run it!</p>

<p>You will learn about the compiler, which takes the code you wrote and translates it into instructions a machine can execute, which you can then run.</p>

<p>You will also learn about different options you can give the compiler, as well as different ways to run your program that give you debugging information.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (7, N'Type Conversion in C', N'https://www.youtube.com/embed/xi2wf0Zy2Y4', N'CP', 2, 1, N'<p>Two skills that are crucial to good programming are testing&mdash;finding problems with your code, and debugging&mdash;fixing them.</p>

<p>In this module you will learn systematic ways to identify problems in your code, as well as how to apply the scientific method to fix your program when you do find a bug.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (8, N'Boolean and Comparison Operators in C Programming', N'https://www.youtube.com/embed/TybmJxXRV80', N'CP', 2, 1, N'<p>In this module you will begin the project you will complete over the course of the rest of the specialization.</p>

<p>At the end of each course, you will write a piece of a program that will calculate the odds of different poker hands winning with a Monte Carlo simulation&mdash;a way to calculate complicated probabilities by generating random data.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (9, N'If Else Statements in C', N'https://www.youtube.com/embed/K8mntKyBJGc', N'CP', 3, 1, N'<p>Pointers are one of the most important and powerful aspects of the C language. Pointers are critical to understanding arrays, which let you manipulate sequences of data.</p>

<p>They also give a programmer control and flexibility when programming, enabling solutions that are clean and efficient.</p>

<p>Some other languages use pointers implicitly&mdash;or pointer-like constructs&mdash;so understanding their use will make you a better programmer in any language.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (10, N'Ternary Operator in C', N'https://www.youtube.com/embed/05xv2nMj6Ls', N'CP', 3, 1, N'<p>Arrays are sequences of memory of the same type that are guaranteed to be one after another.</p>

<p>This is an incredibly useful data format, enabling you to store many things together under one variable name. In this module, you will learn how to use arrays to solve more complex problems and lay the groundwork for more complex data types.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (11, N'Switch Statement in C ', N'https://www.youtube.com/embed/u6mb8NNwojA', N'CP', 3, 1, N'<p>Now that you have mastered the basics of pointers and arrays, it is time to see some important uses of them.</p>

<p>In this module, you will learn about how to manipulate strings and multi-dimensional arrays.</p>

<p>You will also learn about function pointers, which allow you to pass &quot;which function to call&quot; as the parameter of another function.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (12, N'while Loop in C Programming', N'https://www.youtube.com/embed/WgS_SF1VrEk', N'CP', 3, 1, N'<p>By now you are familiar with iteration, in which repetition is expressed in terms of loops.</p>

<p>Another programming technique to accomplish similar ideas is &quot;recursion&quot; in which a more complex instance of a problem is expressed in terms of solutions to simpler instances of the problem.</p>

<p>In this module, you will learn how to read and write recursive code, giving you another powerful option for how to approach programming problems.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (13, N'for Loop in C Programming', N'https://www.youtube.com/embed/Xtl1oGtcX-8', N'CP', 4, 1, N'<p>So far, our programs have had a rather limited interaction with the user or rest of the system, printing some results to standard output (typically to the terminal).</p>

<p>Now that we have learned about topics such as strings and arrays, we are ready to learn how to write a program that takes input from the user, takes arguments on the command line, accesses files, and does many other things we typically think of real programs as doing.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (14, N'break and continue in C', N'https://www.youtube.com/embed/DpPf9XskST8', N'CP', 4, 1, N'<p>So far, most of the memory we have used has been located on the stack.</p>

<p>Dynamic memory allocation gives a programmer much more flexibility, in that it allows you to request a specific amount memory to be allocated on the heap, so that it will not disappear with the stack frame of the calling function.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (15, N'C Functions', N'https://www.youtube.com/embed/Npo1u37lcg8', N'CP', 4, 1, N'<p>So far, we have focused exclusively on programming in the small&mdash;designing the algorithm for a small-sized task, implementing it, testing it, and debugging it.</p>

<p>This module discusses three main differences that &quot;real&quot; programs exhibit.</p>

<p>1) They tend to be much larger than those we have written.</p>

<p>2) More than one person works on them, sometimes teams of hundreds to thousands.</p>

<p>3) Real software has a long life-span during which it must be maintained.</p>

<p>Now that you have an understanding of the basics of programming in the small, we are ready to begin learning about programming in the large!</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (16, N'C Variable Scope', N'https://www.youtube.com/embed/ej-GOnj7mj0', N'CP', 4, 1, N'<p>In this module, you will complete the Poker Project!</p>

<p>Now that you know about dynamic memory allocation, user input, and how to program in the large, you can write the final parts of the program.</p>

<p>You will write code to read in a file with a hand of cards and code to choose unknown cards from a shuffled deck.</p>

<p>As you program with more sophisticated data structures, the importance of drawing good pictures will increase.</p>

<p>Happy programming!</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (17, N'C Standard Library Functions', N'https://www.youtube.com/embed/OJvwk3pLK34', N'CP', 1, 1, N'<p>Now that you have learned about pointers and arrays, you will build on the code you wrote in Course 2 to build a deck of cards and evaluate a poker hand.</p>

<p>In the next course, you will complete the program to calculate poker odds with a Monte Carlo simulation.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (18, N'What is Python?', N'https://www.youtube.com/embed/B7G5B8P8k9s', N'PY', 5, 1, N'<p>These are the course-wide materials as well as the first part of Chapter One where we explore what it means to write programs.</p>

<p>We finish Chapter One and have the quiz and first assignment in the third week of the class.</p>

<p>Throughout the course you may want to come back and look at these materials.</p>

<p>This section should not take you an entire week.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (19, N'Python Print Values & Variables in Python', N'https://www.youtube.com/embed/i83VkP0LHPI', N'PY', 5, 1, N'<p>In this module you will set things up so you can write Python programs.</p>

<p>Not all activities in this module are required for this class so please read the &quot;Using Python in this Class&quot; material for details.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (20, N'How to Take User Input in Python? ', N'https://www.youtube.com/embed/DRBybZ6hsY0', N'PY', 5, 1, N'<p>In the first chapter we try to cover the &quot;big picture&quot; of programming so you get a &quot;table of contents&quot; of the rest of the book.</p>

<p>Don&#39;t worry if not everything makes perfect sense the first time you hear it.</p>

<p>This chapter is quite broad and you would benefit from reading the chapter in the book in addition to watching the lectures to help it all sink in.</p>

<p>You might want to come back and re-watch these lectures after you have funished a few more chapters.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (21, N'Python Comments (How to Create and Use Comments?) ', N'https://www.youtube.com/embed/rhF1x2lnRQA', N'PY', 5, 1, N'<p>In this chapter we cover how a program uses the computer&#39;s memory to store, retrieve and calculate information.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (22, N'Operators in Python ', N'https://www.youtube.com/embed/xTmEqNRr9T4', N'PY', 6, 1, N'<p>In this class, we pick up where we left off in the previous class, starting in Chapter 6 of the textbook and covering Strings and moving into data structures.</p>

<p>The second week of this class is dedicated to getting Python installed if you want to actually run the applications on your desktop or laptop.</p>

<p>If you choose not to install Python, you can just skip to the third week and get a head start.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (23, N'Python Booleans (Comparison & Logical Operators) ', N'https://www.youtube.com/embed/mrryXQnlYN8', N'PY', 6, 1, N'<p>In this module you will set things up so you can write Python programs.</p>

<p>We do not require installation of Python for this class.</p>

<p>You can write and test Python programs in the browser using the &quot;Python Code Playground&quot; in this lesson. Please read the &quot;Using Python in this Class&quot; material for details.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (24, N'Python if...else Conditionals', N'https://www.youtube.com/embed/497MClrekMY', N'PY', 6, 1, N'<p>Up to now, we have been working with data that is read from the user or data in constants.</p>

<p>But real programs process much larger amounts of data by reading and writing files on the secondary storage on your computer.</p>

<p>In this chapter we start to write our first programs that read, scan, and process real data.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (25, N'While Loop in Python', N'https://www.youtube.com/embed/5AOfDuV6X30', N'PY', 6, 1, N'<p>As we want to solve more complex problems in Python, we need more powerful variables.</p>

<p>Up to now we have been using simple variables to store numbers or strings where we have a single value in a variable.</p>

<p>Starting with lists we will store many values in a single variable using an indexing scheme to store, organize, and retrieve different values from within a single variable.</p>

<p>We call these multi-valued variables &quot;collections&quot; or &quot;data structures&quot;.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (26, N'"break" & "continue" Statements in Python', N'https://www.youtube.com/embed/Mho_1WO-ht4', N'PY', 7, 1, N'<p>In this section you will install Python and a text editor. In previous classes in the specialization this was an optional assignment, but in this class it is the first requirement to get started.</p>

<p>From this point forward we will stop using the browser-based Python grading environment because the browser-based Python environment (Skulpt) is not capable of running the more complex programs we will be developing in this class.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (27, N'For Loop in Python', N'https://www.youtube.com/embed/yaqMSBr_NCU', N'PY', 7, 1, N'<p>Regular expressions are a very specialized language that allow us to succinctly search strings and extract data from strings.</p>

<p>Regular expressions are a language unto themselves.</p>

<p>It is not essential to know how to use regular expressions, but they can be quite useful and powerful.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (28, N'Pass Statement in Python', N'https://www.youtube.com/embed/n4B3zYfk_Pg', N'PY', 7, 1, N'<p>In this section we learn about the protocols that web browsers use to retrieve documents and web applications use to interact with Application Program Interfaces (APIs).</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (29, N'Python Functions', N'https://www.youtube.com/embed/Bkupx9gX0o', N'PY', 7, 1, N'<p>In this section we learn to use Python to retrieve data from web sites and APIs over the Internet.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (30, N'Python Arguments in Functions', N'https://www.youtube.com/embed/Gf-Ws2cXEuA', N'PY', 8, 1, N'<p>To start this class out we cover the basics of Object Oriented Python.</p>

<p>We won&#39;t be writing our own objects, but since many of the things we use like BeautifulSoup, strings, dictionaries, database connections all use Object Oriented (OO) patterns we should at least understand some of its patterns and terminology.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (31, N'Python Global Variables', N'https://www.youtube.com/embed/ngCDTEWVjrQ', N'PY', 8, 1, N'<p>We learn the four core CRUD operations (Create, Read, Update, and Delete) to manage data stored in a database.</p>

', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (32, N'Lists & Tuples in Python', N'https://www.youtube.com/embed/hANUgg72TDc', N'PY', 8, 1, N'<p>In this section we learn about how data is stored across multiple tables in a database and how rows are linked (i.e., we establish relationships) in the database.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (33, N'How to Work with ''Text''?', N'https://www.youtube.com/embed/GQywwPUrsgA', N'PY', 8, 1, N'<p>In this section we explore how to model situations like students enrolling in courses where each course has many students and each student is enrolled in many courses.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (35, N'Introduction to Digital Marketing', N'https://www.youtube.com/embed/wfOp0lsCXAY', N'DIGMAR', 11, 1, N'<p>You&rsquo;ll find out what&rsquo;s in store for Course 1 and the whole certificate program.</p>

<p>You&rsquo;ll also learn about the Coursera platform, procedures, and content types, and meet other learners in the program.</p>

<p>Then, you&rsquo;ll learn about digital marketing and e-commerce basics, the tasks that people who work in these fields do, and the transferable skills you might already have.</p>

<p>Finally, you&rsquo;ll get some tips for embarking on careers in this field.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (36, N'Digital Marketing Modules', N'https://www.youtube.com/embed/DqKFjgGvbnU', N'DIGMAR', 11, 1, N'<p>You will learn what digital marketing and e-commerce roles and departments do within organizations and how they create value.</p>

<p>You&rsquo;ll also be introduced to marketing concepts, like the customer journey and the marketing funnel, that form the basis for much of what these roles do.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (37, N'How to start a blog', N'https://www.youtube.com/embed/FgtB4fWIjRE', N'DIGMAR', 11, 1, N'<p>You will explore the relationship between digital marketing and branding, and how businesses can leverage both to be successful.</p>

<p>You&rsquo;ll investigate the elements of a digital marketing strategy, including goal setting, channel selection, and content planning.</p>

<p>Then you&rsquo;ll learn about commonly used channels and platforms, like search engine optimization (SEO), search engine marketing (SEM), display advertising, social media marketing, and email marketing.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (38, N'Set up your blog like a professional blogger ', N'https://www.youtube.com/embed/ZjVoShBahRg', N'DIGMAR', 12, 1, N'<p>You will continue to learn about the marketing funnel and its stages: awareness, consideration, conversion, and loyalty.</p>

<p>You&rsquo;ll also learn strategies for turning potential customers into paying and repeat customers at each stage of the marketing funnel.</p>

<p>Finally, you&rsquo;ll explore how to use customer personas to understand consumers&rsquo; goals, pain points, and preferred online platforms.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (39, N'What is SEO in 2020?', N'https://www.youtube.com/embed/N8DhIndTi6E', N'DIGMAR', 12, 1, N'<p>You will review the fundamentals of SEO.</p>

<p>Then, you&rsquo;ll gain a basic understanding of how the Google Search engine works and how websites are ranked.</p>

<p>Then, you&rsquo;ll learn how to do keyword research.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (40, N'Off-page SEO – What are Backlinks?', N'https://www.youtube.com/embed/QYrupSGZ3B8', N'DIGMAR', 12, 1, N'<p>You will examine how to optimize a website for search engine optimization, including strategies for content, images, and linking.</p>

<p>You&rsquo;ll also learn how to help search engines better understand your content.</p>

<p>Next, you&rsquo;ll explore how to craft effective website titles and add structured data markups to help users and search engines find what they need.</p>

<p>Then, you&rsquo;ll learn all about how to use SEO tools to analyze search performance and user behavior.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (41, N'Nice To Meet You!', N'https://www.youtube.com/embed/IeaadwctbD4', N'ENG', 13, 1, N'<h2>Get to Know Basic Email Writing Structures</h2>

<p>1) Understand basic professional email structures in English.</p>

<p>2) Identify key things to do and things to avoid.</p>

<p>3) Learn how to do basic editing of punctuation and capitalization.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (42, N'How Are You?', N'https://www.youtube.com/embed/S2lFmQcXsM4', N'ENG', 13, 1, N'<h2>Let&#39;s Start Writing</h2>

<p>1) Write more effective subject lines.</p>

<p>2) Understand the organization of email text.</p>

<p>3) Write better email text.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (43, N'What does she look like?', N'https://www.youtube.com/embed/QTd9Hu-1RH0', N'ENG', 13, 1, N'<h2>Introduction and Announcement Emails</h2>

<p>1) Analyze and identify the traits of introductions and announcement emails.</p>

<p>2) Learn and use key language for these types of emails to revise your first email.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (44, N'Where are you from?', N'https://www.youtube.com/embed/Hbcn940MG6A', N'ENG', 14, 1, N'<h2>Communicate in Person: The Power of Face to Face Connections</h2>

<p>Through the lessons this module, you will be able to work on professional conversational vocabulary and proper word stress and intonation.</p>

<p>After the final lesson you will be able to present a short &quot;Elevator Speech.&quot;</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (45, N'Do you speak English?', N'https://www.youtube.com/embed/sGCS1SoVKqk', N'ENG', 14, 1, N'<h2>Meet and Talk Online</h2>

<p>This module looks at group discussion situations with the focus on video conferencing.</p>

<p>By looking at various scenarios, you will learn key language for group discussion as well as gain some business etiquette.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (46, N'My Family', N'https://www.youtube.com/embed/rX8V9_P84Kk', N'ENG', 14, 1, N'<h2>Powerful Phone Talk</h2>

<p>In this module, you will improve language use and pronunciation for phone conversations.</p>

<p>Trickier pronunciation distinctions in can/can&#39;t and numbers will be the focus for pronunciation.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (48, N'What this Course Will Do for You and Your Purposes', N'https://www.youtube.com/embed/WQui_3Hpmmc', N'FINMAR', 15, 1, N'<h2>This module introduces the Investment and Portfolio Management Specialization, which is made up of four courses.</h2>

<h2>This module discusses how the first course, Global Financial Markets and Instruments, is organized.</h2>

<h2>It outlines the different stages of the investment management process, which guides the focus of the Specialization.</h2>

<h2>It also reviews basic finance concepts and tools such as time value of money, computing returns, discounting and compounding.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (49, N'Risk and Financial Crises', N'https://www.youtube.com/embed/QbosMr2JVrc', N'FINMAR', 15, 1, N'<h2>In this and the next module, we cover the key institutional features of financial markets and instruments.</h2>

<h2>We ask the following questions: Why do financial markets exist? What role do they play?</h2>

<h2>What are financial assets and how are they different than real assets? How does it all come together?</h2>

<h2>Basically, this is where I hope you will get to see the big picture of the entire financial system and how it comes together.</h2>

<h2>Module 2 focuses on fixed-income securities. We&#39;ll get started with a review of basics of bond valuation.</h2>

<h2>You will learn about short-term money market instruments, U.S. Treasury securities as well as corporate bonds.</h2>

<h2>After module 2, you will be able to describe fixed income securities, be familiar with their institutional features, and identify their cash flows.</h2>

<h2>Finally, you will learn how to value fixed income securities such as Treasury bills, zero-coupon or coupon-bonds and compute yields.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (50, N'Technology and Invention in Finance', N'https://www.youtube.com/embed/Iij2mpilSJo', N'FINMAR', 15, 1, N'<h2>We continue our overview of financial markets and instruments.</h2>

<h2>We next focus on two other major asset classes: equity securities and derivative instruments.</h2>

<h2>You will learn about how equity differs from fixed income securities, the cash flows associated with stock and preferred stock and how to find the value of a share.</h2>

<h2>You will also learn about option strategies. After completing module 3, you will be able to describe all major asset classes, including derivative instruments such as options, forwards and futures.</h2>

<h2>You will be able to explain how these differ from each other and their payoffs.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (51, N'Supporting Financial Institutions', N'https://www.youtube.com/embed/_B_24GUWdSM', N'FINMAR', 16, 1, N'<h2>We discuss how financial markets actually work.</h2>

<h2>We will talk about different trading venues and the mechanics of securities trading.</h2>

<h2>I will emphasize a lot of terminology and the latest trends in securities trading to familiarize you with the institutional workings of financial markets.</h2>

<h2>After this module, you will be able to compare different trading venues, trading mechanisms, and be able to explain different types of orders, including transactions like margin buying and short-selling; you will be familiar with the language and terminology you need in order to become an informed practitioner of investments.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (52, N'Archetypal Risk Management Institution', N'https://www.youtube.com/embed/qfK9rCDCicE', N'FINMAR', 16, 1, N'<h2>We build on the tools from the previous module to develop measure of portfolio risk and return.</h2>

<h2>We define and distinguish between the different sources of risk and discuss the concept of diversification:</h2>

<h2>how and why putting risky assets together in a portfolio eliminates risk that yields a portfolio with less risk than its components.</h2>

<h2>Finally, we review the quantitative tools that help us identify the &lsquo;best&rsquo; portfolios with the least risk for a given level of expected return by considering a numerical example using international equity data.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (53, N'Guest Speaker David Swensen', N'https://www.youtube.com/embed/wRdx7kVNQ_E', N'FINMAR', 16, 1, N'<h2>We describe how investors make choices.</h2>

<h2>Specifically, we look at how utility functions are used to express preferences.</h2>

<h2>We review measures to describe investors&rsquo; attitude towards risk.</h2>

<h2>Finally, we discuss how we can summarize investors&rsquo; preferences using a specific utility function: mean-variance preferences.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (54, N'FIRST Chord to learn on guitar ', N'https://www.youtube.com/embed/4EVT2VNMcpA', N'GUI', 17, 1, N'<h2>Welcome to Guitar for Beginners!</h2>

<h2>Before you begin the course, we will cover all the details about the course and what you&#39;ll need to know to get the most out of your Berklee massive online course.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (55, N'SECOND Chord to learn on guitar', N'https://www.youtube.com/embed/0MtCQi-9SAM', N'GUI', 17, 1, N'<h2>In this first lesson, we will take things slow.</h2>

<h2>We will focus on how to choose the right guitar for you and what accessories are essential for any guitar player.</h2>

<h2>We&#39;ll also learn the parts of the guitar and get you comfortable with your instrument.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (56, N'Change Chords FASTER on Guitar', N'https://www.youtube.com/embed/3g06dUrnsn4', N'GUI', 17, 1, N'<h2>In this lesson, you will learn how to tune and you will start playing your instrument from the ground up!</h2>

<h2>Be patient and remember: focus on being accurate and play in consistent time with your metronome.</h2>

<h2>These things are far more important than playing with speed.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (57, N'Bars and Beats', N'https://www.youtube.com/embed/crtW9DkgVxE', N'GUI', 18, 1, N'<h2>In this lesson, we&#39;ll be learning and practicing the pentatonic scale.</h2>

<h2>First we&#39;ll learn the b3 pentatonic scale, then the b7 pentatonic scale, and then we&#39;ll learn how to play the scale on one string. We&#39;ll also work on improvising using a single string.</h2>

<h2>Finally, we&#39;ll practice playing scales in a moveable open position.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (58, N'Fingers hurt from playing guitar?', N'https://www.youtube.com/embed/_l6_PRSYC_A', N'GUI', 18, 1, N'<h2>This lesson, we&#39;ll be working with arpeggios, which means playing the notes in a chord one at a time.</h2>

<h2>We&#39;ll be learning and practicing major, minor, diminished, and augmented arpeggiated chords.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (59, N'Easy Guitar Songs for Beginners', N'https://www.youtube.com/embed/AcdfJA2o0hI', N'GUI', 18, 1, N'<h2>In this final lesson, we will focus on arpeggiated chords and playing them in different rhythms.</h2>

<h2>We will also practice blues scales and finally, put all of these aspects together.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (60, N'Introduction to the Human Brain', N'https://www.youtube.com/embed/ba-HMvDn_vU', N'HUMBRA', 19, 1, N'<h2>Structural Neuroanatomy of the Human Brain</h2>

<p>This week will introduce basic terminology in neuroscience and structural neuroanatomy of the human brain.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (61, N'Neuroanatomy', N'https://www.youtube.com/embed/bAkuNXtgrLA', N'HUMBRA', 19, 1, N'<h2>This week will introduce functional neuroanatomy of the human brain including cognitive domains and neuropsychological assessment of cognition.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (62, N'Cognitive Neuroscience Methods I', N'https://www.youtube.com/embed/vFZY--lgmHs', N'HUMBRA', 19, 1, N'<h2>This week will introduce the principles of neuroimaging and applications in structural and functional neuroimaging.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (63, N'Cognitive Neuroscience Methods II', N'https://www.youtube.com/embed/YD7QG4G7WVg', N'HUMBRA', 20, 1, N'<h2>In this section, we will discuss different formats that brain images come in, as well as some of the commonly done magnetic resonance imaging (MRI) scans.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (64, N'Introduction to the Human Brain', N'https://www.youtube.com/embed/Nk0H3o-hRMA', N'HUMBRA', 20, 1, N'<h2>In this section, we will discuss the steps done to process brain MRI data.</h2>

<h2>We will discuss inhomogeneity correction, brain extraction or skull stripping, and various image registration techniques.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (65, N'Category Selectivity, Controversies, and MVPA', N'https://www.youtube.com/embed/otriwYhNtm0', N'HUMBRA', 20, 1, N'<h2>In this section, we will discuss the different types of registration and how one would go through processing a multi-sequence MRI scan, as well as wrapper functions that make the process much easier.</h2>

<h2>We also cover interactive exploration of brain image data and tissue-level (white/gray matter and cerebrospinal fluid (CSF)) segmentation from a T1-weighted image</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (66, N'Introduction', N'https://www.youtube.com/embed/rGrBHiuPlT0', N'JAP', 21, 1, N'<h2>As an introduction, we will give you a brief overview of the education system in Japanese higher education, and talk about what makes Japan an interesting option for you.</h2>

<h2>There is a variety of schools in Japan, all the way from Hokkaido, down to Okinawa in the South.</h2>

<h2>Students at the University of Tokyo will share their thoughts on what attracted them to come to study in Japan.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (67, N'Counting Numbers 1 - 100 ', N'https://www.youtube.com/embed/bOUqVC4XkOY', N'JAP', 21, 1, N'<h2>In this module, we will talk about the different types of programs and also overview of the application process.</h2>

<h2>There are different types of programs available in Japan, and their application processes and requirements are not the same.</h2>

<h2>To find a good program that suits you, you&rsquo;ll actually have to conduct a research on programs offered by Japanese universities and share your findings with others.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (68, N'Days of the Week and Days of the Month', N'https://www.youtube.com/embed/JnoZE51WZg4', N'JAP', 21, 1, N'<h2>In this module, we will talk about various aspects of student life in Japan.</h2>

<h2>Students at the University of Tokyo will share the experience of their first day in japan, how they settled in, and how they are enjoying campus life.</h2>

<h2>You will have clearer image of how student life is like when you come to study in Japan.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (69, N'Going to a Destination', N'https://www.youtube.com/embed/k74yjmfFb_A', N'JAP', 22, 1, N'<h2>One good way to gauge the distance between literary and visual culture in early modern Japan is to examine the ways in which painters and poets depicted their contemporaries.</h2>

<h2>Portraits of samurai are especially rich in information about how men at the top of the social ladder wished to be &ldquo;viewed&rdquo; as physical entities, and how they expressed themselves as moral actors within society.</h2>

<h2>In the first module, we will learn the basic formal aspects of samurai portraiture, and at the same time begin to interpret poems and prose inscribed onto the images themselves.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (70, N'4 Verbs (Nomimasu, Tabemasu, Mimasu, Kikimasu)', N'https://www.youtube.com/embed/KUIWRsVZZZA', N'JAP', 22, 1, N'<h2>Visual images of women produced in Japan before the introduction of photography can be divided into two types: portraits of women who actually existed in society, and painted or printed images of idealized &ldquo;beauties,&rdquo; whose resemblance to physical reality was subsumed often to an intense interest in mode and situational aspect.</h2>

<h2>Like samurai portraits, images of women, both real and imagined, would often be inscribed with texts which instruct viewers how to understand and appreciate them.</h2>

<h2>In this module, we will overview several painted and printed images, and learn how contemporary viewers used these images and their texts as a tool to understand the world.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (71, N'To do (verb)', N'https://www.youtube.com/embed/ZGGufccTLso', N'JAP', 22, 1, N'<h2>What methods did early modern Japanese artists and writers have at hand to &ldquo;capture the moment,&rdquo; and how did these methods influence the introduction and adaption of western photography in the mid-nineteenth century?</h2>

<h2>In this module we will see how photographic modes of representation were assimilated into the literary tradition of portraiture, which was covered in modules 1 and 2.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (72, N'INTRODUCTION to SET THEORY', N'https://www.youtube.com/embed/tyDKR4FG3Yw', N'MAD', 23, 1, N'<h2>This module gives the learner a first impression of what discrete mathematics is about, and in which ways its &quot;flavor&quot; differs from other fields of mathematics.</h2>

<h2>It introduces basic objects like sets, relations, functions, which form the foundation of discrete mathematics.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (73, N'CARTESIAN PRODUCTS and ORDERED PAIRS', N'https://www.youtube.com/embed/NnEkVooAsxk', N'MAD', 23, 1, N'<h2>Even without knowing, the learner has seen some orderings in the past.</h2>

<h2>Numbers are ordered by &lt;=. Integers can be partially ordered by the &quot;divisible by&quot; relation. In genealogy, people are ordered by the &quot;A is an ancestor of B&quot; relation.</h2>

<h2>This module formally introduces partial orders and proves some fundamental and non-trivial facts about them.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (74, N'SUBSETS AND POWER SETS', N'https://www.youtube.com/embed/H5D6EAezsXQ', N'MAD', 23, 1, N'<h2>A big part of discrete mathematics is about counting things.</h2>

<h2>A classic example asks how many different words can be obtained by re-ordering the letters in the word Mississippi.</h2>

<h2>Counting problems of this flavor abound in discrete mathematics discrete probability and also in the analysis of algorithms.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (75, N'Subsets and Power Sets Examples', N'https://www.youtube.com/embed/4hC8y9rVanw', N'MAD', 24, 1, N'<h2>The binomial coefficient (n choose k) counts the number of ways to select k elements from a set of size n.</h2>

<h2>It appears all the time in enumerative combinatorics.</h2>

<h2>A good understanding of (n choose k) is also extremely helpful for analysis of algorithms.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (76, N'THREE EXERCISES IN SETS AND SUBSETS', N'https://www.youtube.com/embed/v818mV6jgBQ', N'MAD', 24, 1, N'<h2>Graphs are arguably the most important object in discrete mathematics.</h2>

<h2>A huge number of problems from computer science and combinatorics can be modelled in the language of graphs.</h2>

<h2>This module introduces the basic notions of graph theory - graphs, cycles, paths, degree, isomorphism.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (77, N'SET OPERATIONS', N'https://www.youtube.com/embed/4TlCToZZ5gA', N'MAD', 24, 1, N'<h2>We continue with graph theory basics. In this module, we introduce trees, an important class of graphs, and several equivalent characterizations of trees.</h2>

<h2>Finally, we present an efficient algorithm for detecting whether two trees are isomorphic.</h2>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (78, N'Introduction', N'https://www.youtube.com/embed/f26vt5uQ_uI', N'MAS', 25, 1, N'<p>Introduction and Descriptive Statistics for Exploring Data</p>

<p>This module provides an overview of the course and a review of the main tools used in descriptive statistics to visualize information.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (79, N'Definition of Sets and Elements', N'https://www.youtube.com/embed/GY86lxlWWbM', N'MAS', 25, 1, N'<p>In this module, you will look at the main concepts for sampling and designing experiments.</p>

<p>You will learn about curious pitfalls and how to evaluate the effectiveness of such experiments.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (80, N'Definition of Sample Spaces & Factorials', N'https://www.youtube.com/embed/WelPq6Kgf7s', N'MAS', 25, 1, N'<p>In this module, you will learn about the definition of probability and the essential rules of probability that you will need for solving both simple and complex challenges.</p>

<p>You will also learn about examples of how simple rules of probability are used to create solutions for real-life complex situations.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (81, N'Definition of Events', N'https://www.youtube.com/embed/EOk25Tb-1bM', N'MAS', 26, 1, N'<p>This module covers the empirical rule and normal approximation for data, a technique that is used in many statistical procedures.</p>

<p>You will also learn about the binomial distribution and the basics of random variables.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (83, N'Definition of Intersection, Union, Compliment', N'https://www.youtube.com/embed/GU_2eQvVlCg', N'MAS', 26, 1, N'In this module, you will learn about the Law of Large Numbers and the Central Limit Theorem. You will also learn how to differentiate between the different types of histograms present in statistical analysis.', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (84, N'De Morgan''s Law Explained', N'https://www.youtube.com/embed/2qCDKt23jHQ', N'MAS', 26, 1, N'<p>This module covers regression, arguably the most important statistical technique based on its versatility to solve different types of statistical problems.</p>

<p>You will learn about inference, regression, and how to do regression diagnostics.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (85, N'Physiology Intro', N'https://www.youtube.com/embed/euSkfZhS6Dw', N'PHY', 27, 1, N'<p>&nbsp;We begin our study of the human body with an overview of the basic concepts that underlie the functions of cells and organs within the body and their integration to maintain life.</p>

<p>This is an important introduction to how physiologists view the body. We will return to these basic concepts again as we progress through the organs systems and consider how they respond to perturbations incurred in daily functions and in disease.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (86, N'Molecular structure and Bonds', N'https://www.youtube.com/embed/zo-3Z1eBly4', N'PHY', 27, 1, N'<p>We hope you are enjoying the course! Last week&#39;s lectures can be challenging because we introduce many concepts that may be new to you.</p>

<p>This module will allow you to apply some of the concepts that you learned last week and provide you with more concrete examples. In this module we will begin our tour of the various organ systems with the nervous system.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (87, N'Solubility Reactions and pH', N'https://www.youtube.com/embed/oCSzxzsK7v8', N'PHY', 27, 1, N'<p>In this module, we consider two types of cells: one that relays information to the central nervous system (brain) for interpretation and a second set, motor neurons which relay information away from the central nervous system to govern voluntary movement.</p>

<p>The input pathway to the brain is mediated by specific cells called senses.</p>

<p>The senses convert energy (such as light or heat) into an energy form (electrical potentials) recognized by neurons in the brain.</p>

<p>The brain, in turn, interprets this information (as vision or pain) and then sends out a motor response via the motor neurons of the somatic nervous system to effector cells in the body. The motor neurons activate skeletal muscle to control breathing and the movement of the limbs.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (88, N'Biomolecules', N'https://www.youtube.com/embed/ncF9BojChdU', N'PHY', 28, 1, N'<p>In this module, we consider the effectors of the body that govern voluntary and involuntary movement.</p>

<p>These effectors are specialized cells called muscle which are capable of generating force (tension).</p>

<p>Muscle cells are classified as one of three types: skeletal, smooth, and cardiac.</p>

<p>Although all three types generate tension, each is specialized for a given function.</p>

<p>Skeletal muscle governs voluntary movement of the limbs and is critical for expansion of the lung during breathing. Smooth and cardiac muscle are contractile cells found in the walls of blood vessels and the heart, respectively.</p>

<p>We will return to the basic principles that govern these cells types when we consider the respiratory and cardiovascular systems.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (89, N'Cells', N'https://www.youtube.com/embed/iNeO330QBS0', N'PHY', 28, 1, N'<p>Welcome back! In this module we consider how the circulatory system works to deliver oxygen and nutrients to the specific organs.</p>

<p>We start with a discussion of the electrical and mechanical functions of the heart which enable it to generate a pressure gradient.</p>

<p>This pressure gradient propels the blood through the blood vessels, in a unidirectional manner.</p>

<p>The following session considers the factors that govern delivery of gases and nutrients at the tissue level. The last session considers the entire reflex loop, its control, and its response to daily demands (rest and exercise) and how pathology affects these responses.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (90, N'Energy and Metabolism ATP', N'https://www.youtube.com/embed/mg_WAScsv4g', N'PHY', 28, 1, N'<p>We hope that you are enjoying the course!</p>

<p>This module considers the respiratory system. In these lessons, we explore topics such as how we get air into our lungs, the role of airway resistance in ventilation, the transport of oxygen and carbon dioxide between the lungs and tissues, and the regulation of breathing.</p>

<p>There are a couple of demonstrations of lung function in the videos!</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (91, N'The Piano Keyboard', N'https://www.youtube.com/embed/QBH6IpRkVDs', N'PIA', 29, 1, N'<p>Welcome to the course! Here we will cover all the details about the course and what you&#39;ll need to know to get the most out of your experience.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (92, N'Starting to Read Music', N'https://www.youtube.com/embed/3BULT0-joT0', N'PIA', 29, 1, N'<p>This week, you&#39;ll learn about harmony and ear training and why they are important.</p>

<p>You&#39;ll learn how to construct a major scale, how to identify and sing Major 2nd and Major 3rd intervals, and how to find the tonal center of a song.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (93, N'Reading a Melody', N'https://www.youtube.com/embed/NUVQIwO1SEI', N'PIA', 29, 1, N'<p>This week, you&#39;ll learn how to identify Perfect 4th and Perfect 5th intervals and how to build major and minor triads.</p>

<p>You will also learn about one of the most common chord progressions: the I IV V.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (94, N'The Left Hand And The Scale Of C Major', N'https://www.youtube.com/embed/f9JI_5y0K68', N'PIA', 30, 1, N'<p>This week, you will learn how to identify Major 6th and Major 7th intervals.</p>

<p>You will also learn how to build and sing the Minor Pentatonic Scale.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (95, N'Learning a Piece', N'https://www.youtube.com/embed/1JVtPB8VJXE', N'PIA', 30, 1, N'<p>This week, you&#39;ll learn how to build Major and Dominant Seventh chords.</p>

<p>You will also learn another common chord progression: the Blues Progression.</p>
', 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_name], [lesson_video], [course_id], [section_id], [type_id], [lesson_desc], [lesson_status]) VALUES (96, N'A New Piece, A New Scale, And Rests', N'https://www.youtube.com/embed/yeP2qRcHuUM', N'PIA', 30, 1, N'<p>This week, you will learn about 7-3-5 chord voicings and 4/4 and 3/4 time signatures.</p>

<p>You will learn about two different song forms - Blues and AABA - and you will learn how to write and read a chord sheet.</p>
', 1)
SET IDENTITY_INSERT [dbo].[Lesson] OFF
GO
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (1, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (1, 27, 1)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (2, 10, 1)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (2, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (3, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (3, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (4, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (4, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (5, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (5, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (6, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (6, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (7, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (7, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (8, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (8, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (9, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (9, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (10, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (10, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (11, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (11, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (12, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (12, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (13, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (13, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (14, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (14, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (15, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (15, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (16, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (16, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (17, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (17, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (18, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (18, 27, 1)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (19, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (19, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (20, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (20, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (21, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (21, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (22, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (22, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (23, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (23, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (24, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (24, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (25, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (25, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (26, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (26, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (27, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (27, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (28, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (28, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (29, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (29, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (30, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (30, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (31, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (31, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (32, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (32, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (33, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (33, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (35, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (35, 11, 1)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (36, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (36, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (37, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (37, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (38, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (38, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (39, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (39, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (40, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (40, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (48, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (48, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (48, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (48, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (49, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (49, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (49, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (49, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (50, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (50, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (50, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (50, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (51, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (51, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (51, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (51, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (52, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (52, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (52, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (52, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (53, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (53, 9, 0)
GO
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (53, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (53, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (54, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (54, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (55, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (55, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (56, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (56, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (57, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (57, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (58, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (58, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (59, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (59, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (60, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (61, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (62, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (63, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (64, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (65, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (66, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (66, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (66, 27, 1)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (67, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (67, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (67, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (68, 10, 1)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (68, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (68, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (69, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (69, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (69, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (70, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (70, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (70, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (71, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (71, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (71, 27, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (72, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (72, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (72, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (73, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (73, 10, 1)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (73, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (74, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (74, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (74, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (75, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (75, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (75, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (76, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (76, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (76, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (77, 9, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (77, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (77, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (78, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (79, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (80, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (81, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (83, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (84, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (85, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (86, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (87, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (88, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (89, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (90, 8, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (91, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (91, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (91, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (92, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (92, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (92, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (93, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (93, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (93, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (94, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (94, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (94, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (95, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (95, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (95, 12, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (96, 10, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (96, 11, 0)
INSERT [dbo].[Lesson_Result] ([lesson_id], [user_id], [lesson_status]) VALUES (96, 12, 0)
GO
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (1, N'Basic')
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (2, N'Intermediate')
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (3, N'Advanced')
SET IDENTITY_INSERT [dbo].[Level] OFF
GO
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'CP', 7, N'View only')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'DIGMAR', 1, N'Edit')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'ENG', 7, N'View only')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'FINMAR', 1, N'Edit')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'GUI', 1, N'Edit')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'HTMLCSS', 1, N'Edit')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'HUMBRA', 1, N'Edit')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'JAP', 7, N'View only')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'JS', 7, N'View only')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'MAD', 1, N'Edit')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'MAS', 1, N'Edit')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'PHY', 1, N'Edit')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'PIA', 1, N'Edit')
INSERT [dbo].[Manage_Course] ([course_id], [user_id], [feature]) VALUES (N'PY', 7, N'View only')
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (1, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/20491-Social-Paid-Ad-V1.png', N'Maki Villano Is Earning His Master in Data Science While Balancing Work and Family', N'<p>Karim Makisig &ldquo;Maki&rdquo; Villano studied electrical engineering as an undergraduate. He took on various IT roles over the last two decades and is currently a senior solutions architect at an IT services company. He soon became drawn to data science, recognizing that it was a growing field with high demand for skilled practitioners. Maki felt he could compete in the industry, but he needed to better understand data science techniques, tools, and technologies and how they overlapped with his work in IT.</p>

<p>He was interested in earning a master&rsquo;s, but as a single father living in the Philippines, he needed to find a program that would allow him to learn the necessary skills without uprooting his life, work, or family. He was also concerned that he didn&rsquo;t have a great deal of foundational data science knowledge.</p>

<p>When Maki found the&nbsp;<a href="https://www.coursera.org/degrees/master-of-science-data-science-boulder">Master of Science in Data Science</a>&nbsp;(MS-DS) from the University of Colorado Boulder on Coursera, he was immediately attracted to the school&rsquo;s excellent reputation and excited about the performance-based admissions structure. His lack of experience wouldn&rsquo;t be an issue, and he could get started right away.</p>

<p><em>&ldquo;In other programs, I would have waited months to hear back about my admission. With CU Boulder, I could jump right in and not waste any time.&rdquo;</em></p>

<p>Maki enrolled in the Pathway Specialization, a 3-course series focusing on either statistics or computer science. By completing all three courses in one pathway with a cumulative 3.0 GPA or better, you&rsquo;re immediately admitted to the program. This was perfect for Maki.</p>

<p>Once enrolled in the full master&rsquo;s program, Maki was happy to find that the online format and in-course tools allowed him to process and absorb the material on his own time. He could absorb lectures while washing the dishes or folding laundry and rewatch videos until he fully understood each topic. He especially enjoyed his course with Dr. Anne Dougherty, who teaches&nbsp;<a href="https://www.coursera.org/learn/probability-theory-foundation-for-data-science">Probability Theory: Foundation for Data Science</a>:</p>

<p><em>&ldquo;Dr. Anne Dougherty takes the care to explain the material and provides many ways of looking at a concept.&rdquo;</em></p>

<p>Just one year into the program, Maki is already applying his new learnings to his current role;</p>

<p><em>&ldquo;When we have to propose systems at work, my new statistics knowledge helps me calculate the parameters myself and make them more exact, and this allows me to do my work better.&rdquo;</em></p>

<p><em>This fully online&nbsp;</em><a href="https://www.coursera.org/degrees/master-of-science-data-science-boulder"><em>Master of Science in Data Science</em></a><em>&nbsp;(MS-DS) from the University of Colorado Boulder is an ideal choice for career-focused learners eager to benefit from a comprehensive, multi-disciplinary approach. This program leverages unparalleled faculty expertise across statistics, data science, computer science, natural language processing, information science, and more.</em></p>
', CAST(N'2022-05-17' AS Date), 1, 1)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (2, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/Copy-of-Blog-Header-Image-V2.png', N'With Performance-Based Admissions, Mattison Hineline Can Earn a Master’s and Pursue a New Career in Data Science', N'<p>After graduating with her bachelor&rsquo;s in psychology, Mattison Hineline moved to M&aacute;laga, Spain, to teach English. During the pandemic, she started taking programming classes online and became increasingly intrigued by the stats and graphs being used to track COVID-19&rsquo;s impact. As her interest in data and programming grew, Mattison began to think about the possibilities of a career in data science.</p>

<p>She determined that she wanted to earn her master&rsquo;s, but was concerned about cost, her lack of data science experience, and the challenges of relocating back to the US from Spain. So she began to look at online options.&nbsp;</p>

<p>Mattison was familiar with Coursera already, having taken the&nbsp;<a href="https://www.coursera.org/learn/introduction-to-calculus">Introduction to Calculus</a>&nbsp;course. After two months of research, she concluded that the&nbsp;<a href="https://www.coursera.org/degrees/master-of-science-data-science-boulder">Master of Science in Data Science</a>&nbsp;(MS-DS) program from the University of Colorado Boulder on Coursera offered the right opportunity for her.</p>

<p>The program was flexible, affordable, and the&nbsp;<a href="https://www.coursera.org/degrees/master-of-science-data-science-boulder/admissions">performance-based admissions</a>&nbsp;structure meant she didn&rsquo;t have to worry about things like transcripts, GPA, or GRE scores&ndash;she&rsquo;d just need to demonstrate she could do the work, and she&rsquo;d be accepted. Determined to pursue a new career in data science, she successfully enrolled in the&nbsp;<a href="https://www.coursera.org/degrees/master-of-science-data-science-boulder">Master of Science in Data Science</a>&nbsp;(MS-DS) program from the University of Colorado Boulder on Coursera!</p>

<p>&ldquo;I would not have had an opportunity to get my data science master&rsquo;s if I didn&rsquo;t find the MS-DS program on Coursera.&rdquo;</p>

<p>After having had initial reservations about her lack of experience, she found she was able to get the support she needed whenever she ran into obstacles:</p>

<p>&ldquo;I struggled with my second statistics course and went to office hours a lot. The course facilitator really helped explain the material and make sure I wasn&rsquo;t just passing the class but understanding the concepts. The information you learn is important to your future projects, courses, and jobs. Understanding the content is just as important as passing the course.&rdquo;</p>

<p>Mattison has also been able to network with other students. She and her fellow learners connect via a shared Slack channel, and students even organize remote study groups to talk through coursework. Recently, she secured her first data science internship, and she&rsquo;s currently planning to graduate in 2023 and move right into a data science role&mdash;ideally at a startup.</p>

<p>Her biggest tip for new students? Start with a non-credit course first to get used to the course material and online learning format. She also recommends being active on Slack, attending office hours, and reaching out to peers. &ldquo;Being communicative,&rdquo; she says, &ldquo;equals success!&rdquo;</p>

<p>If you&rsquo;re interested in pursuing a data science career and want to follow Mattison&rsquo;s advice and try a course yourself, we recommend the&nbsp;<a href="https://www.coursera.org/specializations/vital-skills-for-data-science#courses">Vital Skills for Data Science Specialization</a>&nbsp;as a great starting point for beginners. It&rsquo;s a great way to master data science fundamentals, and once you&rsquo;ve completed the non-credit version of the course, you can transfer your work into the paid, for-credit version that will count towards your degree.</p>

<p><em>This fully online&nbsp;</em><a href="https://www.coursera.org/degrees/master-of-science-data-science-boulder"><em>Master of Science in Data Science</em></a><em>&nbsp;(MS-DS) from the University of Colorado Boulder is an ideal choice for career-focused learners eager to benefit from a comprehensive, multi-disciplinary approach. This program leverages unparalleled faculty expertise across statistics, data science, computer science, natural language processing, information science, and more.</em></p>
', CAST(N'2022-05-04' AS Date), 1, 1)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (3, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/04/0001-1536x804.jpg', N'Earn admission into CU Boulder’s new Master of Engineering in Engineering Management by completing a 3-course Specialization', N'<p>Today, we&rsquo;re excited to share more about the&nbsp;<a href="https://blog.coursera.org/coursera-announces-3-new-job-relevant-degrees-from-leading-universities/" rel="noreferrer noopener" target="_blank">recently-announced</a>&nbsp;Master of Engineering in Engineering Management (ME-EM) degree from The University of Colorado Boulder &mdash; a leading research university&nbsp;<a href="https://cwur.org/2021-22/University-of-Colorado-Boulder.php" rel="noreferrer noopener" target="_blank">ranked in the top 1% of universities globally</a>.<br />
<br />
The University of Colorado Boulder (CU Boulder) is&nbsp;<a href="https://www.colorado.edu/about/value" rel="noreferrer noopener" target="_blank">recognized for the value and impact</a>&nbsp;of its career-focused programs. This new degree combines engineering and management disciplines to equip students with the skills needed to take on high-impact engineering and technical management roles. Designed by industry leaders, this program prepares students for leadership and management roles in engineering and technology. Students will learn how to translate engineering into business &mdash; from communicating effectively with technical and non-technical stakeholders to leading the development of complex engineering projects.<br />
<br />
As technology transforms industries, the demand for engineers&nbsp;<a href="https://www.bls.gov/careeroutlook/2018/article/engineers.htm" rel="noreferrer noopener" target="_blank">continues to rise,&nbsp;</a>with nearly 140,000 new U.S. jobs created by 2026. Employers are looking for professionals who can synthesize technology expertise with management skills to drive business impact. Since 2016, the&nbsp;<a href="https://www.weforum.org/reports/the-future-of-jobs-report-2020" rel="noreferrer noopener" target="_blank">World Economic Forum&rsquo;s Future of Jobs Report</a>&nbsp;has shown an increased demand for human skills, such as managing, decision-making, and communicating, amid accelerated automation.&nbsp;<br />
<br />
The ME-EM&rsquo;s core curriculum helps students build valuable foundational skills in communication, project management, finance, and leadership while elective courses hone their technical expertise in topics ranging from product development to systems engineering. With a focus on applied, real-world learning, courses involve industry case studies, data sets, and projects. Students can further engage with facilitators through live weekly office hours and collaborate with their peers in group projects and discussion boards.&nbsp;<br />
<br />
&ldquo;We are proud to expand our partnership with Coursera to make engineering management education more accessible and flexible with this new degree modality,&rdquo; said Christy Bozic, Director of the Engineering Management Program at CU Boulder. &ldquo;Our program is uniquely structured to draw applicants from diverse backgrounds. Admissions are entirely application-free, based instead on performance in a series of gateway courses; all students who maintain a B average are automatically admitted. Having the program on Coursera helps us reach working professionals around the world who are looking to translate their learning into career advancement &mdash; often while still working full-time.&rdquo;&nbsp;<br />
<br />
CU Boulder has been an early innovator of performance-based degrees on the Coursera platform, shaping inclusive pathways to a high-quality education. Beginning in August, students can enroll in the &lsquo;performance pathway&rsquo; courses to earn admission into the university&rsquo;s third degree on Coursera.<br />
<br />
We are honored to work with CU Boulder to reimagine the future of degrees, prioritizing accessibility, flexibility, and job-relevant education, to impact students worldwide.&nbsp;<br />
&nbsp;&nbsp;<br />
Enrollment for the ME-EM degree opens in August for the fall 2022 cohort. To learn more, please visit</p>
', CAST(N'2022-04-06' AS Date), 1, 1)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (4, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/UNTBAAS_Jaina.jpg', N'Lifelong Learner Jaina Bellanca Is Earning Her Degree Online So She Can Launch Her New Career', N'<p>Jaina Bellanca describes herself as a self-driven person. She likes to &ldquo;set ambitious goals and achieve them,&rdquo; and it&rsquo;s this mindset that drives her to keep acquiring new skills and knowledge. She&rsquo;s long been an active learner, earning an associate&rsquo;s degree in 2014 and taking courses on Coursera in her free time in more recent years. &ldquo;Lifelong learning has been my goal from the beginning.&rdquo;</p>

<p>When Jaina decided to pursue a career as a strategic project manager, she knew she&rsquo;d need to acquire some new skills. As a lifelong learner, that wasn&rsquo;t a challenge&mdash;but price and timing were. Earning a bachelor&rsquo;s degree made sense for her career plans, but finding a program she could both afford and fit into her busy schedule wasn&rsquo;t proving easy.</p>

<p>She turned to Coursera and discovered the&nbsp;<a href="https://www.coursera.org/degrees/unt-online-bachelor-completion">Bachelor of Applied Arts Sciences (B.A.A.S.)</a>&nbsp;program offered by The University of North Texas (UNT). It was just what she needed.&nbsp; &ldquo;The fact that it was online helped me, and they validated all of my previous classes, which was great, because I had taken a lot.&rdquo;&nbsp;</p>

<p>Jaina is now pursuing her degree and learning the essential business skills necessary for success in her newly chosen field. She&rsquo;s already thinking ahead about her career path, as well as her learning journey. &ldquo;I have expanded my business skill set and am looking forward to my first strategic project management internship,&rdquo; she says, &ldquo;but I also want to pursue higher education through a master&rsquo;s or a doctoral program.&rdquo;</p>

<p>Even as she&rsquo;s closely focused on her project management career goals, she&rsquo;s still finding time to explore other topics as well, and she&rsquo;s enjoying being able to include non-business courses in her studies. &ldquo;I love my history and politics classes,&rdquo; says Jaina. &ldquo;They really expose you to different things. It is a great opportunity to expand my knowledge. This program is a perfect match for me.&rdquo;</p>

<p>&nbsp;</p>

<p><em>The Bachelor of Applied Arts and Sciences (B.A.A.S.) degree accepts and builds on student&rsquo;s past credits, combining them with coursework in eight distinct concentrations so students can meet their individual and career goals.</em></p>
', CAST(N'2022-03-29' AS Date), 1, 1)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (12, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/UNTBAAS_Alberto.jpg', N'UC Chile and Coursera announce three online master’s degrees focused on skills of the future', N'<p>Today, I am proud to announce three new Spanish-language degrees from Pontificia Universidad Cat&oacute;lica de Chile (UC Chile) &ndash; the&nbsp;<a href="https://www.uc.cl/noticias/ranking-qs-situa-a-la-uc-como-la-primera-universidad-en-latinoamerica-por-quinto-ano-consecutivo/" rel="noreferrer noopener" target="_blank">No. 1 university</a>&nbsp;in Latin America. These are the first degree programs from a Chilean university on Coursera.&nbsp;</p>

<p>About&nbsp;<a href="https://www.oecd.org/dev/americas/E-Book_LEO2017.pdf" rel="noreferrer noopener" target="_blank">50% of Latin American</a>&nbsp;firms cannot find candidates with the skills they need to remain competitive, compared to 36% of companies in OECD countries. These new degree programs from UC Chile are designed to help Spanish speakers in the region and across the world develop the skills necessary to succeed amid digital transformation.</p>

<p>These programs will open applications on March 8, 2022:&nbsp;</p>

<ul>
	<li><a href="https://www.coursera.org/degrees/magister-en-ciencia-de-datos-ucchile"><strong>Mag&iacute;ster en Ciencia de Datos (Master of Data Science)</strong></a>&nbsp;&ndash; Using cutting-edge computational tools, this degree trains learners in both the fundamentals and the application of data processing, modeling, and analysis. The curriculum will cover crucial topics such as programming, software engineering, data visualization, and data ethics. Graduates will be prepared to work in academia or as data engineers, data scientists, and data analysts at leading companies.&nbsp;</li>
</ul>

<ul>
	<li><a href="https://www.coursera.org/degrees/magister-inversiones-finanzas-aplicadas-ucchile"><strong>Mag&iacute;ster en Inversiones y Finanzas Aplicadas (Master of Investment and Applied Finance)</strong></a>&nbsp;&ndash; This program will use the latest techniques to provide a foundational education in finance and investing and its application to the business world. The curriculum covers fields such as capital markets, financial analysis, corporate finance, and finance for investing. Graduates will be prepared for executive positions in finance and investing.&nbsp;</li>
</ul>
', CAST(N'2022-03-01' AS Date), 1, 1)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (14, N'https://d1zdxptf8tk3f9.cloudfront.net/articles/1418/large/Screen_Shot_2022-06-21_at_9.53.59_AM.png?1655828124', N'After Ten Years of Self-Employment, Entrepreneur Ana Said Decided To Earn Her Bachelor’s Online to Grow Her Career', N'<p>Meet Ana Said. She&rsquo;s an entrepreneur who built and operated her own business for almost a decade. She achieved her success through hard work and a willingness to learn on the job. This commitment to learning new skills was particularly important, given that she&rsquo;d launched her business before earning a bachelor&rsquo;s degree. Despite her achievements, she eventually reached a point where she felt she couldn&rsquo;t advance her career any further. She began to wonder whether earning a degree might now make sense for her goals. She credits her mom, an e-learning specialist, for her exposure to the possibilities of online learning. Ana&rsquo;s experience of helping her mom in video and design for online classes sparked her curiosity in online learning and would mark the start of her freelance career. Below, Ana shares her story about her decision to enroll in a bachelor&rsquo;s program, how her new community is helping her overcome challenges associated with having an education gap on her resume, and what surprised her most about learning online. I spent ten years working as a self-employed assistant, acquiring many skills and life experiences through organizing and managing tasks related to other people&rsquo;s lives and businesses. The incredible people I encountered along the way inspired me to assess where I am, and where I could go. I realized I had reached a point where I knew I wanted a more specialized career&mdash;one where I wasn&rsquo;t just taking whatever work I could find. But finishing my bachelor&rsquo;s didn&rsquo;t feel realistic. I&rsquo;m in my 30&rsquo;s now. The thought of overhauling my schedule, paying tuition while working less, commuting&mdash;not to mention age differences with my peers and just a general feeling of not knowing where to start&mdash;was too much, and I just kept putting it off. My mom, who is a huge role model for me, works in the online education space. She told me about the Bachelor of Applied Arts Sciences (BAAS) program offered on Coursera. For the first time, finishing my undergraduate degree actually seemed realistic. It was online, with a flexible schedule, and I could chip away at the classes I needed. It felt like this program was made for people in my situation. I thought online learning was just going to be me at my computer. But the counselors are really helpful and quick to respond. And the class has discussion platforms and a chat channel. We can discuss classes, ask and answer questions, and share our relatable experiences. This has sharpened my skills in working with others remotely, which is a big advantage in today&rsquo;s context. I have made connections with people who also inspire me to keep going. They know what it&rsquo;s like to have that gap in their education, but they are willing to put in the work for themselves, for their families, and for their careers. It is challenging, but I&rsquo;m taking on more than I ever thought I could. I&rsquo;ve enrolled in both administration and consumer behavior concentrations. I&rsquo;m understanding how organizations are set up for different aspects of communication and motivation&mdash;what drives motivation, how groups work together, and how to watch out for certain pitfalls. It has helped me to really understand why I am doing the things I am doing professionally and how to grow as a leader. After graduating, I can take my own business further to better serve my clients and maybe hire others one day. I understand how to build that from the ground up now. UNT pairs each Bachelor of Applied Arts and Sciences (B.A.A.S.) student with an advisor to create a customized degree plan focusing on the &ldquo;missing pieces&rdquo; they need for completion. This advising system gives students the flexibility they need determine their fastest route to a degree while ensuring relevance to their career goals.</p>
', CAST(N'2022-06-30' AS Date), 0, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (15, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/UNTBAAS_Cheyney.jpg', N'5 Must-Watch Sessions from Coursera Conference 2022', N'<p>Our 10th annual Coursera Conference recently offered a unique opportunity for Coursera&rsquo;s leadership team, representatives from our partner organizations, and more than 3,000 participants from all over the world to come together through a shared commitment to transforming lives through learning.</p>

<p>The event featured over 40 sessions that explored new opportunities for the future of learning and working in a digital world. Recordings for most of them can be watched on-demand under the session description on the&nbsp;<a href="https://conference.coursera.com/page/2023127/agenda-" rel="noreferrer noopener" target="_blank">agenda page</a>&nbsp;of the event website.</p>

<p>We&rsquo;ve already summarized&nbsp;<a href="https://blog.coursera.org/coursera-conference-2022-highlights/" rel="noreferrer noopener" target="_blank">the highlights</a>. Now, in this article, we&rsquo;d like to draw your attention to five sessions that stood out to us.&nbsp;</p>

<h2><strong>1. Invest in the Best: Creating a Culture of Learning to Drive Competitive Advantage&nbsp;</strong></h2>

<p>A culture of learning can be the difference between accelerating business outcomes and digital transformation or stagnation. However, this culture can often be challenging to build.</p>

<p>In this session, Jennie Drimmer, Senior Regional Sales Director at Coursera, and Bartosz Zieleznik, Head of Online Learning at Prosus, discussed how they&rsquo;ve adapted to the changing role of learning and development, their experiences with building a culture of learning, and how they&rsquo;re investing in their workforce to maintain a competitive edge.</p>

<p>Here are a few of the main takeaways:</p>

<p><strong>Why does establishing a culture of learning matter?</strong></p>

<p>It&rsquo;s an employee value proposition that you can use to attract people into your company. You also need to be able to create enough talent mobility within your workforce by supporting them with the correct learning interventions.</p>

<p>What&rsquo;s important to realize is that a learning culture is not something you need in the distant future. It has to happen now because we&rsquo;re at the core of the war for talent and internal mobility and the reskilling game that we want to launch within each company.</p>

<p><strong>How do you build a culture of learning?</strong></p>

<p>You need to sit down with the executive team and present a business case of why learning matters. If you build an AI department, for example, it doesn&rsquo;t need to be massive to have a significant impact. Having these conversations to get the executive team on board is the easy bit. The hard part is leading by example. The way your executive team learns and uses your learning and development products will define how your learning culture lands within your population.&nbsp;</p>

<p>Inspire the executive team with real stories. Every time you want to make a presentation about learning, come prepared with a first-hand account of someone who completed a course. It enhances your business case. Around 50% of your time should be spent educating the leadership team. Still, middle managers are critical to the success of establishing a learning culture that filters through to the whole organization.</p>

<p><strong>Why is mid-level management so important?</strong></p>

<p>It would be best if you legitimized learning within a person&rsquo;s workday. You can achieve that by educating managers and telling them you&rsquo;re very serious about learning, and asking them what space they want to create for their teams to thrive.&nbsp;</p>

<p>We tend to look at the number of enrollments versus the number of completions, but sometimes the focus on quantity can be detrimental. So we started experimenting by asking our graduates about any tips and tricks they have for someone taking the same course. People come back with all sorts of insights: for example, blocking out the time to study regularly and aligning with their manager was key to their success. By getting managers on their side, you create a bunch of enablers who make this learning culture possible.</p>
', CAST(N'2022-07-19' AS Date), 1, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (16, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/simon-shareka.png', N'Why Change Matters: A Fireside Chat with Simon Sinek', N'<p>In my role as Coursera&rsquo;s Culture and Development Leader, I&rsquo;ve recently had the pleasure to welcome author, visionary, and thought leader Simon Sinek to the 10th annual Coursera Conference. In an exclusive 1:1 fireside chat, we discussed driving workplace change, learning as a vehicle for progress, and the role that diversity and inclusion play in enabling meaningful change for organizations.</p>

<p><a href="https://simonsinek.com/">Simon Sinek</a>&nbsp;is the best-selling author of&nbsp;<em>Start With Why</em>, which started a movement to help people become more inspired at work and in turn inspire their colleagues and customers. His TED talk on the topic has been watched by more than 28 million people, which makes it the third most popular TED video of all time.&nbsp;</p>

<h2>Building a culture of learning</h2>

<p><strong>Why is proactively fostering change a safe business decision?</strong></p>

<p>A lot of industries still haven&rsquo;t quite figured out how to adapt their business model to the internet, even now. As a result, companies from the outside have come in and disrupted entire industries.&nbsp;</p>

<p>Take the movie industry, for example. Every single incumbent movie or television studio could have redefined the future of television with the rise of the internet. But they didn&rsquo;t, they clung to their old business model.&nbsp;</p>

<p>Netflix tried to get Blockbuster to buy them, and Blockbuster&rsquo;s CEO at the time wanted to experiment with streaming. The board, however, wouldn&rsquo;t allow him to change the business model, because the company made 12 percent of its revenues from the fees it charged when customers returned their DVDs late. And now Blockbuster doesn&rsquo;t exist. Just because you got away with something in the past doesn&rsquo;t mean it&rsquo;s going to work in the future.</p>

<p><strong>What are the main barriers to building a culture of learning?</strong></p>

<p>The world has changed, and if you don&rsquo;t have a robust learning program to invest in, you&rsquo;re setting yourself up for a catastrophe later when you realize you have no competitive advantage for why people will want to work for you.&nbsp;</p>

<p>Companies often don&rsquo;t know where to start and say they don&rsquo;t have the budget. But you can start anywhere. You can start with what you understand, and it doesn&rsquo;t always have to cost a lot. Can you do a book club, for example? Make it voluntary, and every week or couple of weeks people get together and talk about the chapters of the book they have read.&nbsp;</p>

<p>The learning program can be homegrown. It doesn&rsquo;t have to be complete straight away. Just ask who&rsquo;s interested in the subject matter at hand, and you&rsquo;ll be amazed at how many of your team members already study it. Invite them to share what they&rsquo;re learning. Start with a little course to get an appetite for it and see how addictive it becomes once you start learning.&nbsp;&nbsp;</p>

<p>The more we learn, the more it benefits not just ourselves but the people around us &ndash; our colleagues and co-workers, our families, and all the people we love and care about. Fundamentally, to embrace a culture of learning is to embrace a life of service.&nbsp;</p>

<h2>Developing diverse and inclusive talent&nbsp;</h2>

<p><strong>What role does diversity and inclusion play in enacting change?</strong></p>

<p>Frankly, we can&rsquo;t have effective change without diversity. How do we solve difficult problems if we surround ourselves with people who grew up like us, look like us, and sound like us? We&rsquo;d end up with one or two points of view, which is only going to work for a short time.&nbsp;</p>

<p>Diverse points of view, on the other hand, lead to innovation and ultimately more profits. The amalgamation of ideas makes for much better solutions than the one-size-fits-all approach. It benefits organizations and also has cultural implications. The teams in these companies probably demonstrate better teamwork and more curiosity about each other&rsquo;s ideas than judgment.&nbsp;</p>
', CAST(N'2022-05-06' AS Date), 1, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (17, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/04/Coursera-AWS-joint-logos-1024x536.png', N'Coursera Partners with AWS to Extend Cloud Computing Training to Businesses ', N'<p>The pace of innovation is accelerating and business leaders are more focused on building a workforce with the high-demand digital skills needed to thrive in the future.</p>

<p>Today, Coursera is excited to announce that it has joined the Amazon Web Services (AWS) Partner Network (APN), a global community of more than 100,000 companies that provide Information Technology (IT) solutions and services for businesses. Through this announcement, Coursera will offer AWS cloud training, along with broader skills training to help companies accelerate digital transformation. In addition, Coursera will now be available to customers in&nbsp;<a href="https://aws.amazon.com/marketplace/pp/prodview-gyjnp7idccuns?sr=0-1&amp;ref_=beagle&amp;applicationId=AWSMPContessa">AWS Marketplace</a>, a digital catalog with thousands of software listings from independent software vendors that make it easy to find, test, buy and deploy software that runs on AWS.&nbsp; This integrated customer experience allows businesses to seamlessly consolidate billing, streamline procurement processes, and negotiate custom contract terms.&nbsp;</p>

<p>Coursera for Business provides companies across the globe with role-based skills development featuring world-class content, hands-on learning, and the ability to track, measure, and benchmark skills through a single, unified platform.</p>

<p>Raising the level of cloud skills proficiency is a major area of need for businesses that are looking to remain competitive in the workforce of the future. Coursera is working with AWS to enable businesses to deliver job-relevant cloud training to employees around the world.</p>

<p>Coursera is offering a variety of courses through the AWS Marketplace including:</p>

<ul>
	<li><a href="https://www.coursera.org/learn/aws-machine-learning">Getting Started with AWS Machine Learning</a>, by Blaine Sundrud, AWS</li>
	<li><a href="https://www.coursera.org/learn/aws-fundamentals-building-serverless-applications">AWS Fundamentals: Building Serverless Applications</a>, by Bobbie Atristain, Adam Becker, Wes Gruver, Jonathan Dion, and Rick Hurst, AWS</li>
	<li><a href="https://www.coursera.org/learn/aws-cloud-technical-essentials">AWS Cloud Technical Essentials</a>, by Alana Layton and Morgan Willis, AWS</li>
</ul>

<p>During this period of rapid change, more businesses are looking to harness the power of cloud technology. Together, Coursera and AWS will help organizations develop essential cloud skills needed to unlock more effective ways to scale their business, reduce costs, and drive stronger innovation.</p>
', CAST(N'2022-04-19' AS Date), 1, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (18, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/02/Blog-Post-QA-w-Anthony-Tattersall-1200x628-1.png', N'Driving Skills Development for a 2030 Workforce: Q&A with Anthony Tattersall ', N'<p>What trends are you seeing around skills from your users?</p>

<p>The core things that drive an organization&rsquo;s capabilities are the skills people have and their ability to exploit technology. Where&nbsp;<strong>businesses</strong>&nbsp;are really switched on to this, they&rsquo;re focused on understanding skill requirements for roles right now and in the immediate future, and finding the best way to address that gap. The challenges are how to make learning happen within their flow of work, and how to use reskilling to create roles internally where hiring is not easy, such as tech, data science, cybersecurity, and so on.</p>

<p>In our work with&nbsp;<strong>governments</strong>, we see lots of countries struggling with graduate unemployment, partly related to the pandemic and partly because businesses want to hire people who already have the skills they need. There are many countries with large numbers of people based in industries at high risk of being automated out, and these are often lower-paid jobs &mdash; if those individuals aren&rsquo;t given access to learning opportunities to develop new skill sets, there simply won&rsquo;t be enough jobs to serve those people.</p>

<p>For&nbsp;<strong>universities</strong>, it&rsquo;s not just about getting someone that first job after graduating, it&rsquo;s also about all the moments of career transition that people will experience over their lifetimes. Most people entering the workforce now will go through four or five major career shifts involving significant upskilling, and universities have an increasingly important role to play. But they are also experiencing challenges &mdash; there is a big focus on employability outcomes, and workplace skills are a fast-moving target, so learning content ages quickly. And how do you work with a higher expectation of blended learning programs?</p>

<p><strong>What is Coursera&rsquo;s approach to skills development?</strong></p>

<p>At our core we&rsquo;re a skills transformation platform, so we&rsquo;re trying to enable people to learn anywhere in the world, at a time of their choosing, with access to the very best content from major universities and industry partners. The goal is to use applied learning to improve skills, whether upskilling (improving current skills in your area of expertise), reskilling (getting you into a completely new area of expertise), or deep skilling (to really develop a level of mastery).</p>

<p>The second thing we do is work with organizations to define the skill sets required for each role, and at what level of capability. Then we can take individuals, look at where they are, and help them understand their skills gaps so they can develop. All of our content is assessed, in some cases multiple times as you&rsquo;re progressing through it, so individuals can see how well they&rsquo;re progressing towards those skills goals and so organizations can build a landscape of their skills, at specific levels of mastery.</p>
', CAST(N'2022-07-18' AS Date), 1, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (20, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/ID11835_EmergeBlogPost_ImageCrop_Post2_OPTION2_1200x628.jpg', N'5 Ways Employers Can Drive Skills Development for the Workforce of the Future', N'<p>Nearly three-fourths of CEOs identified a labor or skills shortage as the most likely external issue to disrupt their business in the next 12 months, according to a 2021&nbsp;<a href="https://www2.deloitte.com/us/en/pages/chief-executive-officer/articles/ceo-survey.html">Deloitte and Fortune</a>&nbsp;survey. This shortage is tied to accelerated digitization &mdash; by 2025,&nbsp;<a href="https://blogs.microsoft.com/blog/2020/06/30/microsoft-launches-initiative-to-help-25-million-people-worldwide-acquire-the-digital-skills-needed-in-a-covid-19-economy/">Microsoft predicts</a>&nbsp;that there will be 149 million new digital jobs focused on cloud computing, cybersecurity, data analysis, and software development alone.</p>

<p>Although prompted by external factors, solving the skills shortage starts from within an organization. Taking the reins on skills development is critical for businesses that want to stay competitive and accelerate business transformation. This was confirmed by 73% of respondents to the&nbsp;<a href="https://www2.deloitte.com/cn/en/pages/human-capital/articles/global-human-capital-trends-2020.html">2020 Deloitte Global Human Capital Trends Report</a>, who identified organizations as the entity most responsible for workforce development.</p>

<p>Prioritizing skills development can also lead to tangible business outcomes. Coursera&rsquo;s&nbsp;<a href="https://www.coursera.org/skills-reports/industry?utm_medium=blog&amp;utm_source=emerge-blog&amp;utm_campaign=isr2021&amp;utm_content=emerge-blog&amp;utm_term=blog-link">2021 Industry Skills Report</a>&nbsp;found that employee skills are related to resilience and a company&rsquo;s ability to adapt in the face of challenges &mdash; benefits that correlate to stock performance. At the end of the day, skills development is an engagement and retention strategy, a performance strategy, and a growth and cost savings play for the business.</p>

<p>In its latest report, &ldquo;<a href="https://ufi.co.uk/latest/future-proofing-skills-development/">Developing Skills and Evaluating Pathways Into Jobs: A Vision for 2030,</a>&rdquo;&nbsp;<a href="https://www.emerge.education/">Emerge Education</a>&nbsp;and Coursera further examine how employers can better connect skills development to their long-term workforce vision.</p>

<p>As featured in the report, here are five things employers can start doing now to embrace skills development and build the workforce of the future:</p>

<p>1.&nbsp;<strong>Stop asking for resum&eacute;s&nbsp;</strong></p>

<p>The state of job descriptions is dismal. A lack of high-quality skills data means organizations don&rsquo;t understand the skills and competencies required to successfully perform a given role. Inadequate job descriptions lead to poorly targeted job ads, a defective interview process, inefficient onboarding, and poor talent mobility. Recruiting on skills, rather than past experience, is necessary to get more diverse people into posts.&nbsp;</p>

<p>Instead of asking for a resum&eacute;, start asking candidates for a portfolio of accomplishments and skills certifications. This will shift the focus away from qualifications and toward competencies. Job descriptions should be compiled in terms of skills, not more general knowledge areas or years of experience.&nbsp;</p>

<p>2.&nbsp;<strong>Commit to a data-driven culture&nbsp;</strong></p>

<p>Most businesses use data to support decision making, but in this year&rsquo;s&nbsp;<a href="https://c6abb8db-514c-4f5b-b5a1-fc710f1e464e.filesusr.com/ugd/e5361a_76709448ddc6490981f0cbea42d51508.pdf">NewVantage Partners executive survey</a>, only 24% said they had &ldquo;created a data-driven organization.&rdquo; The principal challenge cited was not technology (7.8%) but organizational culture, processes, and skills (92.2%).&nbsp;</p>

<p>Continue to invest resources in a well-defined data strategy that is aligned to overall business objectives. Without it, you will struggle to collect, interpret, and leverage data for better outcomes.&nbsp;</p>
', CAST(N'2022-03-26' AS Date), 1, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (21, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/10/Missouri-DHEWD.png', N'Coursera Launches LevelSets to Help Learners Develop Critical Skills Faster', N'<p>Rapid digital transformation is increasing the urgency to acquire in-demand skills. However, lack of time and frustration over not knowing what courses to take are major barriers for learners.&nbsp;</p>

<p>Today, we&rsquo;re excited to launch LevelSets, a new assessment tool designed to help learners determine their current proficiency in key business, technology and data skills.&nbsp;</p>

<p>Offered as part of the company&rsquo;s enterprise platform, LevelSets currently includes over 20 different skill assessments created using machine learning programs. The initial assessments will test proficiency in high-demand data and analytics skills including data analysis, cloud computing, machine learning, Python, and SQL, among others.&nbsp;</p>

<p>LevelSets will help motivate learners to enroll in recommended courses and enable them to develop job-relevant skills faster. These assessments determine where training should begin, and create a clear development path for learners featuring high-quality content that aligns to their skill goals.&nbsp;</p>

<p>The LevelSets offering enables learners to:</p>

<ul>
	<li><strong>Save time and develop skills faster &ndash;&nbsp;</strong>Learners can complete assessments in less than 15 minutes to identify existing skills. This allows them to not waste time on content they have already mastered and focus on courses that can increase skill proficiency faster.&nbsp;</li>
	<li><strong>Experience a unique learning journey with targeted recommendations &ndash;&nbsp;</strong>Once assessments are completed, learners receive targeted content recommendations that match their proficiency level to ensure the right starting point in their skill development journey. This allows learners to avoid taking courses that are too rudimentary or too advanced.&nbsp;</li>
	<li><strong>Develop stronger motivation to learn new skills</strong>&nbsp;&ndash; By providing a deeper understanding of current skill levels and recommending specific content to improve proficiency, LevelSets can increase learners&rsquo; desire to enroll in and complete relevant courses.&nbsp;</li>
	<li><strong>Showcase existing skills knowledge &ndash;&nbsp;</strong>The assessments enable learners to demonstrate their proficiency in high-demand skills needed to unlock new career opportunities.&nbsp;&nbsp;</li>
</ul>

<p>Customers such as Fidelity, Ingka IKEA, Pfizer, and Thermo Fisher<strong>&nbsp;</strong>Scientific<strong>&nbsp;</strong>are early adopters of LevelSets. Initial data suggest that learners within these companies are 3x more likely to enroll in a recommended course within 1 day after taking a LevelSet assessment. In addition, course completion rates have increased 66% among those that have completed assessments.&nbsp;</p>

<p>By completing a LevelSet assessment, learners will gain access to world-class content recommendations from leading university and industry partners. This content is delivered through&nbsp;<a href="https://www.coursera.org/business/products/?utm_medium=press&amp;utm_source=pr&amp;utm_campaign=leadership-academy-pr&amp;utm_content=skillsets&amp;utm_term=skillsets">SkillSets</a>, job-based learning programs that help learners develop specific skills for specific roles. Content recommendations include:</p>

<ul>
	<li><a href="https://www.coursera.org/learn/uol-machine-learning-for-all">Machine Learning for All</a>&nbsp;by Dr. Marco Gillies from University of London</li>
	<li><a href="https://www.coursera.org/learn/aws-fundamentals-cloud-migration?">AWS Fundamentals: Migrating to the Cloud</a>&nbsp;by Seph Robinson and Sean Rinn from Amazon Web Services</li>
	<li><a href="https://www.coursera.org/learn/understanding-visualization-data?">Understanding and Visualizing Data with Python</a>&nbsp;by Professor Kerby Shedden, Brenda Gunderson, and Brady West from University of Michigan</li>
	<li><a href="https://www.coursera.org/learn/sql-for-data-science">SQL for Data Science&nbsp;</a>by Sadie St. Lawrence from University of California, Davis</li>
</ul>

<p>LevelSets is currently available to companies, universities and governments that have implemented Data and Analytics SkillSets. Coursera plans to make LevelSets available across its portfolio of over 300 SkillSets early next year. With LevelSets, we look forward to helping learners around the world identify their skill strengths and develop the high-demand skills needed to thrive in the new economy.&nbsp;</p>
', CAST(N'2022-03-10' AS Date), 1, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (23, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/0001-2-1536x804.jpg', N'What’s Driving Retention in Online Degree Programs? New Insights from our Data-Backed Report', N'<p>The Coursera platform has become a hub for leading universities to build and offer their online degrees to an eager audience of individuals worldwide. From the activities of thousands of students enrolled in our university partners&rsquo; degree programs, we are able to derive new insights on how individuals are engaging with online for-credit courses, what helps them succeed, and which activities most drive their retention. Throughout our new report,&nbsp;<a href="https://about.coursera.org/press/wp-content/uploads/2022/05/Courseras-Drivers-of-Retention-in-Online-Degree-Programs-Report-1.pdf"><strong>Drivers of Retention in Online Degree Programs</strong></a>, we offer data-driven best practices for driving greater retention in online degree programs.&nbsp;</p>

<p>We see a variety of factors driving student retention in degree programs offered on the Coursera platform. The following are actions universities can take to bolster their students&rsquo; likelihood of staying in their programs:</p>

<p><strong><em>Build on open content success</em></strong></p>

<p>Recommend relevant open courses on Coursera. Students who complete an open course are 12% more likely to persist in their degree. Those who take open courses that stack into the degree are 3% more likely to remain in their programs.</p>

<p><strong><em>Set students up for a strong start</em></strong></p>

<p>Provide resources, office hours, and one-on-one question answering to help students submit their first assessment successfully, which increases their retention in the program by 6%. Performance is a strong indicator of students&rsquo; later persistence, with first-term grades emerging as especially critical.</p>

<p><strong><em>Include staff grading</em></strong></p>

<p>Boost motivation through expert grading and feedback. Having at least one staff-graded assessment drives a 6% increase in student retention.</p>

<p><strong><em>Encourage frequent learning</em></strong></p>

<p>Use techniques like short videos and smaller assessments throughout the course to help ensure students return frequently to the degree courses. Having students learn across more days leads to a 5% gain in retention and is a more significant driver than total learning time.</p>

<p><strong><em>Design hands-on projects</em></strong></p>

<p>Keep students progressing with hands-on projects where they can apply their new skills. Across writing, coding, and creative projects, these opportunities drive 3% greater retention. A final project is a great opportunity to provide this type of hands-on project and culminating experience for the course.</p>

<p><strong><em>Use practice opportunities</em></strong></p>

<p>Include ungraded assessments for low-stakes testing and to further students&rsquo; understanding. Having practice assessments drives a 2% increase in student degree retention.&nbsp;</p>

<p>For more specifics and actionable takeaways, please visit our&nbsp;<a href="https://about.coursera.org/press/wp-content/uploads/2022/05/Courseras-Drivers-of-Retention-in-Online-Degree-Programs-Report-1.pdf"><strong>Drivers of Retention in Online Degree Programs</strong></a><strong>&nbsp;</strong>report<strong>&nbsp;</strong>in full. We look forward to our continued partnership with universities to create more efficient and effective designs, elevating faculty&rsquo;s online teaching to new heights.</p>
', CAST(N'2022-05-12' AS Date), 1, 3)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (24, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/UP-1.jpg', N'Coursera Conference 2022 Highlights', N'<p>Nearly three-fourths of CEOs identified a labor or skills shortage as the most likely external issue to disrupt their business in the next 12 months, according to a 2021&nbsp;<a href="https://www2.deloitte.com/us/en/pages/chief-executive-officer/articles/ceo-survey.html">Deloitte and Fortune</a>&nbsp;survey. This shortage is tied to accelerated digitization &mdash; by 2025,&nbsp;<a href="https://blogs.microsoft.com/blog/2020/06/30/microsoft-launches-initiative-to-help-25-million-people-worldwide-acquire-the-digital-skills-needed-in-a-covid-19-economy/">Microsoft predicts</a>&nbsp;that there will be 149 million new digital jobs focused on cloud computing, cybersecurity, data analysis, and software development alone.</p>

<p>Although prompted by external factors, solving the skills shortage starts from within an organization. Taking the reins on skills development is critical for businesses that want to stay competitive and accelerate business transformation. This was confirmed by 73% of respondents to the&nbsp;<a href="https://www2.deloitte.com/cn/en/pages/human-capital/articles/global-human-capital-trends-2020.html">2020 Deloitte Global Human Capital Trends Report</a>, who identified organizations as the entity most responsible for workforce development.</p>

<p>Prioritizing skills development can also lead to tangible business outcomes. Coursera&rsquo;s&nbsp;<a href="https://www.coursera.org/skills-reports/industry?utm_medium=blog&amp;utm_source=emerge-blog&amp;utm_campaign=isr2021&amp;utm_content=emerge-blog&amp;utm_term=blog-link">2021 Industry Skills Report</a>&nbsp;found that employee skills are related to resilience and a company&rsquo;s ability to adapt in the face of challenges &mdash; benefits that correlate to stock performance. At the end of the day, skills development is an engagement and retention strategy, a performance strategy, and a growth and cost savings play for the business.</p>

<p>In its latest report, &ldquo;<a href="https://ufi.co.uk/latest/future-proofing-skills-development/">Developing Skills and Evaluating Pathways Into Jobs: A Vision for 2030,</a>&rdquo;&nbsp;<a href="https://www.emerge.education/">Emerge Education</a>&nbsp;and Coursera further examine how employers can better connect skills development to their long-term workforce vision.</p>

<p>As featured in the report, here are five things employers can start doing now to embrace skills development and build the workforce of the future:</p>

<p>1.&nbsp;<strong>Stop asking for resum&eacute;s&nbsp;</strong></p>

<p>The state of job descriptions is dismal. A lack of high-quality skills data means organizations don&rsquo;t understand the skills and competencies required to successfully perform a given role. Inadequate job descriptions lead to poorly targeted job ads, a defective interview process, inefficient onboarding, and poor talent mobility. Recruiting on skills, rather than past experience, is necessary to get more diverse people into posts.&nbsp;</p>

<p>Instead of asking for a resum&eacute;, start asking candidates for a portfolio of accomplishments and skills certifications. This will shift the focus away from qualifications and toward competencies. Job descriptions should be compiled in terms of skills, not more general knowledge areas or years of experience.&nbsp;</p>

<p>2.&nbsp;<strong>Commit to a data-driven culture&nbsp;</strong></p>

<p>Most businesses use data to support decision making, but in this year&rsquo;s&nbsp;<a href="https://c6abb8db-514c-4f5b-b5a1-fc710f1e464e.filesusr.com/ugd/e5361a_76709448ddc6490981f0cbea42d51508.pdf">NewVantage Partners executive survey</a>, only 24% said they had &ldquo;created a data-driven organization.&rdquo; The principal challenge cited was not technology (7.8%) but organizational culture, processes, and skills (92.2%).&nbsp;</p>

<p>Continue to invest resources in a well-defined data strategy that is aligned to overall business objectives. Without it, you will struggle to collect, interpret, and leverage data for better outcomes.&nbsp;</p>

<p>3.&nbsp;<strong>Define &lsquo;skills&rsquo; for your organization&nbsp;</strong></p>

<p>To identify skills gaps, you need to understand what &lsquo;skills&rsquo; are in your organizational context, and then link skills to jobs and roles. Employers need to get a grip on skills data before mapping their organization<em>.&nbsp;</em>Having a local skills improvement plan will provide a detailed starting point for developing skills.</p>

<p>4.&nbsp;<strong>Prioritize reskilling over upskilling&nbsp;</strong></p>

<p>Organizations have a responsibility to help their employees better understand their transferable skills. Businesses are typically less successful at reskilling than upskilling, because reskilling requires an organization to work multi-functionally. Yet companies&nbsp;<a href="https://www.aboutamazon.com/news/workplace/our-upskilling-2025-programs">such as Amazon</a>&nbsp;are initiating their own programmes aimed at skilling, upskilling, and reskilling their workforces in house.&nbsp;</p>

<p>There is value in building relationships with individuals by supporting them with their own development:&nbsp;<a href="https://www.gv.com/news/multiverse-apprenticeship/">87% of Multiverse apprentices stay with their employers</a>&nbsp;long-term, and 50% are promoted within six months. Rather than assuming skills gaps are deficits to be immediately remedied, look at potential. Look at how to help a person develop into a role, and keep an open mind as to what can be developed easily given the right tools and frameworks.&nbsp;</p>

<p>Use performance reviews to take an organizational view, combining individual career aspirations with future jobs required by your company.</p>

<p>5.&nbsp;<strong>Defy job obsolescence&nbsp;</strong></p>

<p>As automation shrinks the boundaries around jobs, many low-skill, low-paid jobs are effectively being designed to de-skill those working in them. But obsolescence is not inevitable: use skills pathways to redesign entry-level and at-risk roles. Then, using the data and skills infrastructure outlined above, entry-level jobs and those at risk of automation should form a pathway offering opportunities to develop new skills and progress.&nbsp;</p>
', CAST(N'2022-07-18' AS Date), 1, 3)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (26, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/04/barb-Cropped.png', N'Q&A with Dr. Barbara Oakley on teaching and learning tips', N'<p>New course on Uncommon Sense Teaching from Dr. Oakley, the instructor from the blockbuster Learning How to Learn course</p>

<p>As digital transformation rapidly transforms the world, learning has become a fundamental skill &mdash; one&nbsp;<a href="https://www.mckinsey.com/featured-insights/future-of-work/the-most-fundamental-skill-intentional-learning-and-the-career-advantage" rel="noreferrer noopener" target="_blank">McKinsey</a>&nbsp;calls &ldquo;a critical driver of long-term career success.&rdquo;&nbsp;</p>

<p>To help teachers equip the next generation of students with tools to learn better, Dr. Barbara Oakley launched a new course today,&nbsp;<a href="https://www.coursera.org/learn/building-community-habits-of-learning">Uncommon Sense Teaching Part 2: Building Community and Habits of Learning</a>.</p>

<p>The second course, which complements&nbsp;<a href="https://www.coursera.org/learn/uncommon-sense-teaching">the first released last summer</a>, provides neuroscience-backed tools and practical insights to help anyone &mdash; from seasoned educators and instructors to parents &mdash; draw out the best from learners.&nbsp;</p>

<p><strong>We caught up with Dr. Oakley to learn how her new course can help teachers solve classroom challenges.</strong></p>

<p><strong>What is one takeaway educators can learn in your new course?&nbsp;</strong><br />
In increasingly diverse and often online learning environments, teachers are grappling with how to bring out the best in all their students, channel their abilities, and keep students engaged.&nbsp;</p>

<p>I truly believe that teaching online can help match the outcomes possible in a traditional classroom, and indeed, even&nbsp;<a href="https://nautil.us/why-virtual-classes-can-be-better-than-real-ones-3896/" rel="noreferrer noopener" target="_blank">surpass</a>&nbsp;it! Way back in 2014, I started creating online courses about learning because of my own experience. I wasn&rsquo;t a natural at math or science, so I had to rewire my own brain as an adult to learn them!<strong>&nbsp;</strong>At that time, I remember wondering why had no one written a book or taught a course about learning&nbsp;<em>effectively</em>&nbsp;based on what we know from science on how the brain learns. Once I saw how many learners&rsquo; online courses could reach &mdash; over 3.8 million people have taken my course&nbsp;<a href="https://www.coursera.org/learn/learning-how-to-learn">Learning How to Learn</a>&nbsp;&mdash; I knew I needed to share similar tips on how teachers could instill these lessons in their students around the world.</p>

<p>This new course, taught alongside Dr. Terrence Sejnowski and Beth Rogowsky, is based on my latest&nbsp;<a href="https://barbaraoakley.com/books/uncommon-sense-teaching/" rel="noreferrer noopener" target="_blank">book</a>, which was recently&nbsp;<a href="https://www.learningladders.info/news/best-books-for-teachers-and-school-leaders-summer-2021/" rel="noreferrer noopener" target="_blank">named&nbsp;</a>a top ten book for educators. The cognitive psychology and neuroscience-linked insights we teach will enhance your teaching skills and consequently, the way students learn. So&nbsp;<em>every</em>&nbsp;kind of learner develops the ability to master anything &mdash; be it math, science, dance, literature, or art.&nbsp; &nbsp;&nbsp;</p>

<p><strong>Can you share a few tips on how we can teach and learn more effectively?</strong><br />
There are some key elements to incorporate on a daily basis:&nbsp;</p>

<ul>
	<li>Students can be faster (&lsquo;racecar&rsquo;) or slower ( &lsquo;hiker&rsquo;) learners. So, structure the teaching. Give hikers smaller pieces of information. As slower learners, they learn more deeply and often, more creatively. Racers may learn faster but also jump to conclusions more quickly and find it tough to correct themselves when they make errors.&nbsp;</li>
	<li>Understand that the way we learn facts or information is very different from our knowledge of skills, like say, learning to ride a bicycle. The former (declarative pathway) is mostly conscious learning, the latter (procedural pathway) develops through practice and happens subconsciously.&nbsp;</li>
	<li>The more you retrieve what you&rsquo;ve learnt, the more you remember, learn, and understand it. But don&rsquo;t cram all the information at once. Space it out and try explaining it to someone else.&nbsp;</li>
	<li>Try the Pomodoro technique to learn most efficiently. Avoid all distractions (including your phone). Set a time limit to focus fully on the task at hand. Once time is up, relax for five minutes and, no scrolling Instagram Reels!</li>
</ul>

<p><strong>Does this course focus on in-person or online teaching?</strong><br />
Classrooms have changed drastically today and are often blended learning environments. So, you can utilize this course as a primer of sorts if you are new to teaching lessons online. Observe the personalized tone we use throughout. Or how visuals and simple animation convey complex ideas. Note how fun metaphors, puns, and analogies are great tools to keep learners engaged. Besides, every module has quizzes plus additional reading to broaden your knowledge&nbsp;<em>and</em>&nbsp;test your understanding.&nbsp;&nbsp;</p>

<p><strong>How have learners responded to the course?&nbsp;&nbsp;</strong><br />
It has been wonderfully rewarding to know that many have found it tailor-made to hone their teaching&nbsp;<em>and</em>&nbsp;learning skills. As one learner remarked: &ldquo;How can we teach, without knowing how learning works?&rdquo; It&rsquo;s heartening also to find that many have come away with inspiration, guidance, and hope in these uncertain times &mdash; when the teaching experience itself has changed so much. This very evolution in the way we teach has, in fact, led me to start working on another course. Teaching Online, the final course in this series, will launch soon!&nbsp;&nbsp;&nbsp;</p>
', CAST(N'2022-07-18' AS Date), 1, 3)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (28, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/03/IIT-R-reaches-global-audience-on-Coursera-1024x683.jpeg', N'Expanding access and inclusion: IIT Roorkee reaches a global audience with its new online data science program', N'<p>More than&nbsp;<a href="https://www.insidehighered.com/news/survey/college-presidents-confident-finances-upbeat-about-race-relations" rel="noreferrer noopener" target="_blank">three-quarters</a>&nbsp;of university leaders are expanding access to online learning after the pandemic by offering more online learning options, including stackable credentials and degree programs for nontraditional students. In India, this global trend is propelled by the&nbsp;<a href="https://www.pib.gov.in/PressReleasePage.aspx?PRID=1654058" rel="noreferrer noopener" target="_blank">National Education Policy</a>&nbsp;(NEP), which encourages Indian universities to build online programs and expand access.</p>

<p>As a leading education institution in India, the Indian Institute of Technology (IIT) Roorkee partnered with Coursera in August 2020 &mdash; two months after the NEP was approved. Through the partnership, IIT Roorkee aspired to fulfill the goal of inclusive education and reach a global audience of students and professionals.</p>

<p>IIT Roorkee became the first Indian public technical university to offer&nbsp;<a href="https://blog.coursera.org/coursera-announces-6-mastertrack-programs-4-university-certificates-and-a-growing-selection-of-guided-projects-to-prepare-learners-for-in-demand-jobs/" rel="noreferrer noopener" target="_blank">postgraduate certificate programs on Coursera</a>, and the institute is already reaching students around the world. More than half (55%) of the students in IIT Roorkee&rsquo;s&nbsp;<a href="https://www.coursera.org/certificates/data-science-machine-learning-iitr" rel="noreferrer noopener" target="_blank">Post Graduate Certificate in Data Science and Machine Learning</a>&nbsp;are from outside India. Students span 14 countries, including Canada, the United Kingdom, Indonesia, and Saudi Arabia. Over a quarter of the program&rsquo;s students are from the United States. Within India, the program also has a wide reach, drawing learners from 11 states.</p>

<p>Our partnership demonstrates how we can increase equitable access to high-quality, job-relevant education for all learners, regardless of location. As students embrace online learning as the new normal, Coursera data shows that students interested in degrees are most concerned with affordability and accredited programs &ndash; university location is the least important factor. Students are eager to learn the skills needed to succeed in the digital economy from world-leading institutions.</p>

<p>University partnerships such as this can also help address local skill shortages, creating a path to make many more citizens job-ready. IIT Roorkee&rsquo;s program addresses a critical skill gap, as demand for data science professionals&nbsp;<a href="https://www.indiatoday.in/education-today/jobs-and-careers/story/career-outlook-for-data-scientists-in-india-sky-high-pay-and-rising-demand-1825991-2021-07-09" rel="noreferrer noopener" target="_blank">surges</a>&nbsp;in India. When students learn leading digital skills asynchronously, they also learn the soft skills needed to succeed in a remote workforce &mdash; by mastering independent work while simultaneously collaborating with global peers.</p>

<p>Online learning from leading universities such as IIT Roorkee can be a powerful enabler to democratizing opportunity in a post-pandemic era &mdash; by meeting the needs of employers and making citizens career ready. We are at a pivotal point in this journey. Together, we look forward to scaling life-transforming access and opportunities for learners everywhere.</p>
', CAST(N'2022-03-11' AS Date), 1, 3)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (29, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/02/Blog-Post-QA-w-Anthony-Tattersall-1200x628-1.png', N'Driving Skills Development for a 2030 Workforce: Q&A with Anthony Tattersall ', N'<p><em>Anthony Tattersall is vice president of the EMEA sales team at Coursera. His role gives him unique insights on how businesses, governments, and higher education can work together to build our future workforce and how data can be used to support this effort. The&nbsp;</em><a href="https://www.emerge.education/"><em>Emerge Education</em></a><em>&nbsp;team interviewed Tattersall for a joint report with Coursera on &ldquo;</em><a href="https://ufi.co.uk/latest/future-proofing-skills-development/"><em>Developing Skills and Evaluating Pathways Into Jobs: A Vision for 2030</em></a><em>.&rdquo; Here is what Tattersall had to say:</em></p>

<p><strong>What trends are you seeing around skills from your users?</strong></p>

<p>The core things that drive an organization&rsquo;s capabilities are the skills people have and their ability to exploit technology. Where&nbsp;<strong>businesses</strong>&nbsp;are really switched on to this, they&rsquo;re focused on understanding skill requirements for roles right now and in the immediate future, and finding the best way to address that gap. The challenges are how to make learning happen within their flow of work, and how to use reskilling to create roles internally where hiring is not easy, such as tech, data science, cybersecurity, and so on.</p>

<p>In our work with&nbsp;<strong>governments</strong>, we see lots of countries struggling with graduate unemployment, partly related to the pandemic and partly because businesses want to hire people who already have the skills they need. There are many countries with large numbers of people based in industries at high risk of being automated out, and these are often lower-paid jobs &mdash; if those individuals aren&rsquo;t given access to learning opportunities to develop new skill sets, there simply won&rsquo;t be enough jobs to serve those people.</p>

<p>For&nbsp;<strong>universities</strong>, it&rsquo;s not just about getting someone that first job after graduating, it&rsquo;s also about all the moments of career transition that people will experience over their lifetimes. Most people entering the workforce now will go through four or five major career shifts involving significant upskilling, and universities have an increasingly important role to play. But they are also experiencing challenges &mdash; there is a big focus on employability outcomes, and workplace skills are a fast-moving target, so learning content ages quickly. And how do you work with a higher expectation of blended learning programs?</p>

<p><strong>What is Coursera&rsquo;s approach to skills development?</strong></p>

<p>At our core we&rsquo;re a skills transformation platform, so we&rsquo;re trying to enable people to learn anywhere in the world, at a time of their choosing, with access to the very best content from major universities and industry partners. The goal is to use applied learning to improve skills, whether upskilling (improving current skills in your area of expertise), reskilling (getting you into a completely new area of expertise), or deep skilling (to really develop a level of mastery).</p>

<p>The second thing we do is work with organizations to define the skill sets required for each role, and at what level of capability. Then we can take individuals, look at where they are, and help them understand their skills gaps so they can develop. All of our content is assessed, in some cases multiple times as you&rsquo;re progressing through it, so individuals can see how well they&rsquo;re progressing towards those skills goals and so organizations can build a landscape of their skills, at specific levels of mastery.</p>

<p><strong>How does Coursera use data to improve outcomes for learners and organizations?</strong></p>

<p>We have 87 million learners on the platform globally, across all age ranges, personalities, demographics; some people in work, some people out of work, and so on. The size of that dataset makes it very robust. We can see what skills people are working on and what jobs they&rsquo;re doing to understand the underlying skill sets for those roles, and we can also see what their career trajectory is over time, so we understand how those skill sets lead to role changes. Feedback loops ensure all those data aggregation insights resonate with individuals actually taking our courses, who can reflect on the skills they think they are learning.</p>

<p>All this has helped us build a detailed skills taxonomy, with tens of thousands of skills, which we can correlate with third-party data sources, such as the World Economic Forum, to map at a very granular level what we think future skills requirements will be.</p>

<p>We also have a team of skills transformation consultants who work with businesses, governments, and institutions to build programs specific to their goals. Around 10% of the organizations we work with are big enough to invest in this, so if they already know exactly what they want to achieve, we can map our catalog to those specific skills development needs. But the vast majority recognize that the world of skills is rapidly changing and they don&rsquo;t have a clear view of exactly what needs to be done over the next 2-3 years, on a per role basis, so they come to us for that guidance.</p>

<p><strong>What should skills development look like in 2030 to create alternative pathways into jobs?</strong></p>

<p>Someone once said to me that we overestimate the level of change we&rsquo;ll see in 5 years and underestimate the change we&rsquo;ll see in 10. Ten years is long enough for something no one saw coming to totally disrupt the marketplace. Education is one of the last bastions that hasn&rsquo;t been disrupted and while the pandemic has accelerated change, I still think we&rsquo;re at the very, very early stages.</p>

<p>I would love to see the education system become a lifelong learning partner, rather than a discrete point in time at the earliest stage of your career. That will involve more partnerships between governments, businesses, and education organizations &mdash; and I think the focus for universities then becomes more about accrediting programs, contextualizing to local needs, and curating a range of content that creates opportunities for people to develop skills they need. I hope we&rsquo;ll see more democratization of access and ways to evaluate people&rsquo;s capabilities beyond a degree: more professional certifications, more corporate universities, and more professional organizations offering alternative learning paths.</p>

<p>And I hope that by 2030 it&rsquo;s a normal expectation that whatever your job, a percentage of your time is dedicated to learning, so managers are empowered to support it and all company processes are wrapped around that.</p>

<p><em>For more insights on how to prepare 375 million skilled workers by 2030, read the full report &ldquo;<a href="https://ufi.co.uk/latest/future-proofing-skills-development/"><em>Developing Skills and Evaluating Pathways Into Jobs: A Vision for 2030</em></a>&rdquo; from Emerge Education and Coursera. Find out how Coursera powers high-impact skill development and&nbsp;</em><a href="https://www.coursera.org/business/learn-more?utm_medium=blog&amp;utm_source=emerge-blog&amp;utm_campaign=contact-us&amp;utm_content=emerge-blog&amp;utm_term=blog-link"><em>talk to a learning expert today</em></a><em>&nbsp;about the best digital learning solution for your business.&nbsp;&nbsp;</em></p>
', CAST(N'2022-02-07' AS Date), 0, 3)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (30, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/06/Blog-header.png', N'Deliver academic integrity with these new features', N'<p>For leaders in higher education, academic integrity has long been a top priority. But as more universities begin to take their programs online and start to accelerate automation, academic misconduct is becoming an increasingly common challenge.&nbsp;</p>

<p>According to the&nbsp;<a href="https://academicintegrity.org/resources/facts-and-statistics" rel="noreferrer noopener" target="_blank">International Center of Academic Integrity</a>, more than 60% of university students admit to cheating in some form. ProctorU, an online proctoring service, administered 1.3 million exams through their platform from April through June in 2020&mdash;a four-time increase compared to the three months before that. In those 1.3 million exams,&nbsp;<a href="https://hechingerreport.org/another-problem-with-shifting-education-online-cheating/" rel="noreferrer noopener" target="_blank">they saw an eight-time increase in the cheating rate</a>. To uphold confidence in the validity and efficacy of remote instruction, online learning platforms are faced with an urgent need to provide a robust suite of academic integrity features.&nbsp;&nbsp;</p>

<p>In response to this need, Coursera has developed a suite of academic integrity features that&nbsp; will help institutions deliver a high level of academic integrity by 1) deterring and detecting cheating and 2) accurately assessing student mastery of the material they&rsquo;re learning with private assessments.</p>

<p><strong>Stop cheating before it happens and detect it when it does</strong></p>

<p>Plagiarism deterrence features are designed to discourage academic misconduct before it happens by alerting students when their work will be flagged for plagiarism, preventing students from copying each other&rsquo;s work and reminding them of their responsibility to uphold integrity in their work. Inevitably, some students may submit a plagiarized assignment. That&rsquo;s where plagiarism detection comes in&mdash;helping you uncover and track instances of academic dishonesty while giving you the information you need to maintain high standards of academic integrity within your program. Here is a list of our plagiarism deterrence and detection features.</p>

<p><strong>Available in both Institution and Basic plans:&nbsp;</strong></p>

<ul>
	<li><strong><em>Disabling of URL sharing:</em></strong><strong>&nbsp;</strong>Disabling URL sharing means that your students won&rsquo;t be able to send their submission link directly to a friend to grade the submission, making the peer review fairer and more objective.</li>
</ul>

<ul>
	<li><strong><em>Disabling copy of peer reviews:</em></strong><strong>&nbsp;</strong>This feature restricts your students from being able to copy the submissions of others to use for their own submission while they are reviewing their peers.</li>
	<li><strong><em>Anonymization of peer reviews:</em></strong><strong>&nbsp;</strong>This feature anonymizes the names of both the submitter and reviewer for peer review assessments. This is helpful when you&rsquo;re concerned about the objectivity of reviewers who may know the learner who submitted the peer review assessment.&nbsp;</li>
</ul>

<ul>
	<li><strong><em>Online gradebook (coming in August 2021):</em></strong>&nbsp;When available, our&nbsp; online gradebook report will show information on learners who are currently or previously enrolled in a specific course. This will allow you to monitor the progress of the learners and keep track of plagiarism incidents.&nbsp;</li>
</ul>

<p><strong>Available in the Institution plan only:</strong></p>

<ul>
	<li><strong><em>Turnitin similarity score*:</em></strong>&nbsp;Through our integration with Turnitin, your students will know if their assignment is similar to other sources online or existing submissions within your institution before they submit work, providing them a chance to amend their assignments. If your students submit an assignment that meets or exceeds the similarity score threshold, the assignment will be flagged for plagiarism.&nbsp;&nbsp;</li>
</ul>

<ul>
	<li><strong><em>Plagiarism policy reminder:</em>&nbsp;</strong>With our plagiarism policy reminder, you&rsquo;ll be sure that your learners are always aware of Coursera&rsquo;s honor code. Additionally, this feature will require learners to provide their signature acknowledging Coursera&rsquo;s policies and remind them of the high academic standards they need to uphold.&nbsp;&nbsp;</li>
</ul>
', CAST(N'2022-05-22' AS Date), 1, 4)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (31, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/06/Coursera-Plus-evergreen-animated-1-1024x536.gif', N'Unlimited access to learning with Coursera Plus, now available worldwide', N'<p>When we&nbsp;<a href="https://blog.coursera.org/introducing-coursera-plus-a-subscription-plan-for-unlimited-learning/">announced Coursera Plus</a>&nbsp;in February of this year, we were excited to bring you a new subscription plan where you could get unlimited access to 3,000+ courses for one affordable and all-inclusive price.</p>

<p>Today, we&rsquo;re pleased to announce that not only is Coursera Plus available to learners everywhere across the globe, but unlimited Guided Projects are now included!</p>

<p>More than 90% of the Coursera catalog is available through Coursera Plus. With the addition of Guided Projects, you now have more opportunities than ever to achieve your personal and professional learning goals. You can master a specific skill in a Specialization, get job-ready for an in-demand career with a Professional Certificate, or quickly learn a new industry tool in a Guided Project. Better yet, you can complete them all for one simple price.</p>

<p>Coursera Plus subscribers have told us that the plan helps them spend more time learning, and that they feel more motivated to do so. In fact, we see that Coursera Plus learners have a 35% higher completion rate and they triple the amount of time they&rsquo;re active in their courses. They also take advantage of the plan to explore a broader range of topics and skills, enrolling in courses in twice as many domains as do learners enrolled directly into a Specialization.</p>

<p>Yiwen is a Coursera Plus subscriber, and she loves the flexibility, affordability, and breadth of learning:&nbsp;</p>

<p><em>&ldquo;With Coursera Plus, I get access to so many high-quality courses, for topics that I&rsquo;m interested in, for just a one-time annual payment.</em><strong><em>&nbsp;I don&rsquo;t need to rush to finish my courses</em></strong><em>&nbsp;in one month to try to save money. It&rsquo;s so convenient that I can take as many courses as I want at any time during the year.&rdquo;</em>&nbsp;</p>
', CAST(N'2022-05-04' AS Date), 1, 4)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (32, N'https://lh5.googleusercontent.com/Wa4nb407pNEXXW2lK-_zqb7rrWKNGklrZBaLTJSv9i0i8EFBSlUdKz_vuGhWXeRJwH_mAmRnQNoQaebCObntoWyziuX2hw0VdBXv72MhHaPaNpXxw6hiXzQ5sKDOgFT6HlSTHm8h', N'Live2Coursera: Coming Soon as a Zoom App', N'<p>In August, we&nbsp;<a href="https://blog.coursera.org/introducing-live2coursera-scaling-live-online-teaching-to-reach-every-learner/">launched Live2Coursera</a>&nbsp;to help instructors quickly move online by integrating Zoom lectures into their private courses and content libraries on Coursera. While this helped address the initial challenge of transitioning instruction online, internet connectivity and access to devices still impede learning for many students.&nbsp;</p>

<p>&nbsp;</p>


<p>&nbsp;</p>

<p>Today, we&rsquo;re excited to announce that&nbsp;<a href="https://www.youtube.com/watch?v=LmZdDTZRMps&amp;feature=youtu.be">Live2Coursera</a>&nbsp;is coming soon to the Zoom&nbsp;<a href="https://zoom.us/docs/en-us/zapps.html">application marketplace</a>&nbsp;unveiled today at&nbsp;<a href="https://www.zoomtopia.com/">Zoomtopia</a>. The free Live2Coursera Zapp helps reduce the digital divide in higher ed by offering flexible viewing and download options&mdash;instructors will be able to teach remotely with confidence, knowing that all of their students can access their lectures anytime, anywhere.&nbsp;</p>

<p>Instructors can enable the Live2Coursera Zapp to easily record, share, and upload their Zoom lectures to Coursera. Students can view lecture recordings within Zoom or download recorded lectures from Coursera via mobile or PC in the format best suited to their bandwidth&mdash;high resolution video, low data video, or audio-only.&nbsp;</p>

<p><strong>Using the Live2Coursera Zapp:</strong></p>

<p>Instructors can access the Live2Coursera for Zoom application (Zapp) directly in the Zoom environment.</p>


<p>Before recording, instructors should fill out the email and video title fields. Instructors can also check the box next to &ldquo;Email video to everyone invited to this meeting&rdquo; to automatically send an email to students containing a link to the recorded lecture on Coursera.&nbsp;</p>

<p>Once instructors are ready to begin recording their lecture, they can click on &ldquo;Start recording to Coursera.&rdquo; After the lecture is finished, the video link can be shared directly with students via email or within Zoom.</p>


<p>In Zoom, learners can access &ldquo;Recently added&rdquo; videos and watch directly in Zoom.</p>


<p>Through the shareable URL, they can view the video online on Coursera or download it for offline viewing on mobile or PC.&nbsp;</p>

<p>When downloading a lecture video, learners can choose from several download options, including high resolution video, low data video, or audio-only.&nbsp;&nbsp;</p>


<p>We are excited to team up with Zoom to help instructors create inclusive and accessible online learning for all students.</p>
', CAST(N'2022-07-18' AS Date), 1, 4)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (33, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/08/Blog-post-1-1-1536x804.png', N'Introducing Career Learning Paths: Learn the skills to advance your career with confidence', N'<p>Embarking on a new chapter of your career journey can be a powerful emotional experience. You may feel excitement and anticipation, but also anxiety and stress. Whether you&rsquo;re looking for your first job, pursuing a promotion, or contemplating a mid-career switch to a new field, there are always unknowns to manage. At a time when COVID-19 has dramatically impacted the employment landscape, this uncertainty can seem even more challenging.</p>

<p>Today, Coursera is launching&nbsp;<strong>Career Learning Paths</strong>, a free online resource to help you find the learning content you need to reach your career goals. Each path shows you a progression of job roles&mdash;from entry-level to experienced professional&mdash;for an in-demand field, details the skills necessary for career success in that field, and maps these skills to the relevant learning programs on Coursera. With Career Learning Paths, you can learn with confidence, knowing you&rsquo;re on the right track to advance your career.</p>

<p>Career Learning Paths for six high-growth fields are now available:&nbsp;<a href="https://www.coursera.org/learning-paths/digital-marketing?utm_medium=coursera&amp;utm_source=blog&amp;utm_campaign=consumerfall2020">Digital Marketing</a>,&nbsp;<a href="https://www.coursera.org/learning-paths/project-management?utm_medium=coursera&amp;utm_source=blog&amp;utm_campaign=consumerfall2020">Agile Project Management</a>,&nbsp;<a href="https://www.coursera.org/learning-paths/network-engineering?utm_medium=coursera&amp;utm_source=blog&amp;utm_campaign=consumerfall2020">Network Engineering</a>,&nbsp;<a href="https://www.coursera.org/learning-paths/data-engineering?utm_medium=coursera&amp;utm_source=blog&amp;utm_campaign=consumerfall2020">Data Engineering</a>,&nbsp;<a href="https://www.coursera.org/learning-paths/design?utm_medium=coursera&amp;utm_source=blog&amp;utm_campaign=consumerfall2020">Design</a>, and&nbsp;<a href="https://www.coursera.org/learning-paths/data-science?utm_medium=coursera&amp;utm_source=blog&amp;utm_campaign=consumerfall2020">Data Science</a>. Coursera&rsquo;s content strategy experts chose these fields for their&nbsp;<a href="https://www.burning-glass.com/">steady growth and competitive wages</a>, and because the skills required for success in these fields can be learned online.</p>

<p>As an example, consider the field of Agile Project Management. Roles in this field&mdash;such as IT project manager&mdash;are at low risk of automation and have a&nbsp;<a href="https://www.burning-glass.com/">median salary of $88,000</a>&nbsp;for entry-level roles. In programs like Atlassian&rsquo;s&nbsp;<a href="https://www.coursera.org/learn/agile-atlassian-jira">Agile with Atlassian Jira</a>&nbsp;stand-alone course and UC Irvine&rsquo;s&nbsp;<a href="https://www.coursera.org/professional-certificate/applied-project-management">Project Management Professional Certificate</a>, you can learn the skills to launch and advance your project management career.</p>

<p><strong>How can you start using Career Learning Paths?</strong>&nbsp;Let&rsquo;s say you&rsquo;re interested in launching a data science career. You can begin by exploring the&nbsp;<a href="https://www.coursera.org/learning-paths/data-science?utm_medium=coursera&amp;utm_source=blog&amp;utm_campaign=consumerfall2020">Data Science Career Learning Path</a>, where you&rsquo;ll find a general description of the field and expert-curated content for beginner, intermediate, and advanced data science professionals. The curated content provides a range of learning programs, from Guided Projects that can be completed in under two hours to full-fledged certificate and degree programs that offer more in-depth training in the field. Examples include the&nbsp;<a href="https://www.coursera.org/professional-certificates/ibm-data-science">Data Science Professional Certificate</a>&nbsp;from IBM or Imperial College London&rsquo;s&nbsp;<a href="https://www.coursera.org/degrees/msc-machine-learning-imperial">Master of Machine Learning and Data Science</a>. Once you&rsquo;ve identified the right level and type of content for your goals, you can begin learning.&nbsp;</p>

<p>In the coming months, we&rsquo;ll continue to introduce more Career Learning Paths across other growing fields. Our goal is to support you every step of the way as you pursue your goals, by providing the world-class learning resources that are right for your unique career journey.</p>
', CAST(N'2022-04-28' AS Date), 1, 4)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (34, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/02/CourseraPlus_Product_Update-1.png', N'Introducing Coursera Plus: a subscription plan for unlimited learning', N'<p>The pandemic has ignited an unprecedented shift in higher education. This past spring,&nbsp;<a href="https://en.unesco.org/covid19/educationresponse">1.6 billion</a>&nbsp;students worldwide were learning from home, and today more than&nbsp;<a href="https://en.unesco.org/covid19/educationresponse">a billion</a>&nbsp;students are still impacted by campus closures. Colleges and universities continue to grapple with the impact of COVID-19 and what the transition to online and blended learning will look like this fall.&nbsp;</p>

<p>At the Coursera Conference in April, we previewed Live2Coursera, which enables instructors to integrate live meetings into their courses. Today, we&rsquo;re excited to announce that Live2Coursera is available to all authors on Coursera. As we&rsquo;ve seen over the past few months, recorded Zoom lectures have the potential to be valuable, long-term digital assets for both educators and learners.</p>

<p><strong>Impactful tools for educators&nbsp;&nbsp;</strong></p>

<p>To help make the transition to online learning a little easier, we&rsquo;ve designed Live2Coursera to make live teaching as intuitive and efficient as possible. Live2Coursera helps you teach live classes, for example with fully online students or campus students who are learning remotely, in&nbsp;<em>private course offerings</em>. Live2Coursera also enables you to add Zoom recordings to your Coursera content library and leverage them for future classes and MOOCs.&nbsp;</p>

<p>We&rsquo;re excited to share the following new features for educators:</p>

<p><strong>Link your Zoom account:&nbsp;</strong>Now any author can link their Zoom account with Coursera to start offering live meetings within their courses.<em>&nbsp;(Available today for all authors)</em></p>



<p><strong>Schedule meetings:&nbsp;</strong>Authors can schedule Zoom meetings to seamlessly integrate them within their course&rsquo;s learning experience for streamlined access to live meetings.<em>&nbsp;(Available today for private course offerings)</em></p>



<p><strong>Configure recordings:</strong>&nbsp;Meeting recordings are automatically stored in your course&rsquo;s Asset Library for staff, and can also be configured to automatically publish to learners. Asset Library content can be leveraged for future offerings of this or any other course, so you&rsquo;re adding to your content library with every live meeting.&nbsp;<em>(Available today for private course offerings)</em></p>



<p><strong>Import prior recordings:</strong>&nbsp;Do you have recordings from prior classes that weren&rsquo;t on Coursera? We&rsquo;ll soon be adding Zoom to our list of Cloud providers you can directly import videos from without needing to manually download them first. This enables authors to more efficiently import prior recordings, further adding to your reusable content library.&nbsp;<em>(Coming soon for all authors)</em></p>



<p><strong>Start teaching immediately:&nbsp;</strong>Now authors can launch private course offerings completely self-serve, so you can start teaching at any time within minutes without waiting for Coursera approval.&nbsp;<em>(Available today for private course offerings)</em></p>


<p><strong>Adapt on the fly:</strong>&nbsp;For private course offerings, authors can make changes to content and assessments at any time, meaning you can adapt your course on the fly based on student performance. We&rsquo;ll soon be enabling module authoring (add, edit or delete) for private course offerings that have already launched.&nbsp;<em>(Coming soon for private course offerings)</em></p>

<p><strong>A seamless learner experience</strong></p>

<p>Learners see live events and recordings right in their course experience, and receive reminder emails in the lead up to the event &ndash; all tailored to their individual timezone and localized to support learners across the world.&nbsp;<em>(Available today for private course offerings)</em></p>



<p><strong>A glimpse at the future&nbsp;</strong></p>

<p>We&rsquo;re humbled to serve more than 200 university and industry partners and 68 million learners around the world in their online teaching and learning journeys. Looking ahead, we will continue innovating across the platform to create the best experience for educators and learners &ndash; including live and asynchronous teaching.&nbsp;</p>
', CAST(N'2022-07-18' AS Date), 1, 4)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (35, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/04/Coursera_Conference_2020_Product_Announcement_blog_header.png', N'Introducing New Tools and Features as Demand for Online Learning Grows', N'<p>Learners around the world are turning to online learning at this particularly challenging time. Overnight, universities have switched to remote teaching in order to provide academic continuity to their students. In the past month, 5.9 million learners enrolled in courses on Coursera and nearly 2,700 institutions launched Coursera for Campus programs. As the community of online learners and educators grow, we are doubling down on our efforts to serve them with top-quality content, delivered through a high-quality learning experience. Today we&rsquo;re excited to introduce several new tools and features for our learners and educators.&nbsp;</p>

<p><strong>Serving our learners</strong></p>

<p>It&rsquo;s vital that we continue to help learners develop and showcase job-relevant skills. This starts with the right content for specific goals, and support to help learners make progress.&nbsp;</p>

<p><strong>Matching learners with the right content</strong></p>

<p>With a broad range of courses, Specializations, degrees, and certificates, learners have a lot to choose from on our platform. They should be able to easily discover the most relevant content to develop the skills they need. To help, we&rsquo;ve introduced:</p>

<ul>
	<li><strong>PERSONALIZED BROWSING&nbsp;</strong>&ndash; Built on machine learning models, this feature ensures learners receive tailored suggestions for the most relevant learning content based on their learning journey so far.&nbsp;</li>
</ul>

<ul>
	<li><strong>PERSONALIZED HOMEPAGE&nbsp;</strong>&nbsp;&ndash; When logged in, learners can resume a course in one click, see personalized recommendations on courses to pursue next, and view the certificates they&rsquo;ve earned so far.&nbsp;</li>
</ul>

<p><strong>Helping learners make progress</strong></p>

<p>We recognize that learning takes time, commitment, and motivation. We&rsquo;ve continued to improve our in-course help system that provides AI-powered nudges to help learners stay on track. As learners develop skills, it&rsquo;s important for them to understand their own proficiency relative to their career objectives. We&rsquo;re excited to introduce:&nbsp;</p>

<ul>
	<li><strong>GOAL SETTING&nbsp;</strong>&ndash; Once a learner starts a new course, a prompt will appear to create learning goals from the get-go. These goals can be&nbsp;<a href="https://learner.coursera.help/hc/en-us/articles/360030934191-Add-Coursera-Deadlines-To-Your-Calendar">seamlessly synced</a>&nbsp;with Google Calendar and other calendar apps, integrating learning into a daily routine.&nbsp;</li>
</ul>

<ul>
	<li><strong>SMART REVIEW MATERIAL</strong>&nbsp;&ndash; This machine learning tool helps unblock learners when they fail a quiz. It serves targeted review material recommendations based on the specific questions they missed, providing learners with a structured path to succeed on the next quiz attempt.</li>
</ul>

<ul>
	<li><strong>LEARNER SKILL TRACKING</strong>&nbsp;&ndash; This data-driven tool tracks learner skill development, sharing updated competency scores as a learner takes more assessments on Coursera. Through a centralized dashboard, learners can monitor their progress toward career-specific skills and see how their competency scores compare to other professionals on the Coursera platform.&nbsp;</li>
</ul>

<p><strong>Serving our partners</strong><strong>&nbsp;</strong></p>

<p>While universities needed to quickly go online due to the disruption from COVID-19, this is also a catalyst for the digital transformation of higher ed. We&rsquo;re here to support our partners in their efforts to provide online learning at scale with a number of new tools and features.&nbsp;</p>

<p><strong>Helping educators move online faster</strong></p>

<p>The coronavirus pandemic is forcing global experimentation with remote teaching. We&rsquo;ve heard from many partners who are looking for tools and resources to provide academic continuity for their students. With these educators in mind, we&rsquo;ve launched:&nbsp;&nbsp;&nbsp;</p>

<ul>
	<li><strong>Live2Coursera</strong>&nbsp;&ndash; Thousands of instructors are using Zoom to deliver lectures to millions of students worldwide, and this resource should be turned into a long-term digital asset. Live2Coursera allows seamless integration of these live lectures into a private course. Zoom recordings are added automatically to an instructor&rsquo;s course as they teach, so they can build a library of content to reuse in future private or open courses.&nbsp;<em>Launching later in 2020.</em></li>
</ul>

<ul>
	<li><strong>CourseMatch</strong>&nbsp;&ndash; On the heels of our Coronavirus Response Initiative, which provides universities with free access to Coursera for Campus, we&rsquo;ve launched&nbsp;<a href="https://blog.coursera.org/coursera-launches-coursematch/">CourseMatch</a>: a machine learning solution that automatically matches a university&rsquo;s on-campus courses to courses in our catalog, enabling institutions to quickly deliver the most relevant online courses to their students.&nbsp;</li>
</ul>

<p><strong>Easily create and manage content&nbsp;</strong></p>

<p>Our partners are dedicated to creating high-quality courses and Specializations for learners everywhere. We&rsquo;re rolling out a number of new innovations to help partners swiftly create and manage content on our platform:</p>

<ul>
	<li><strong>CLOUD IMPORT</strong>&nbsp;&ndash; Seamlessly import cloud assets directly to the Coursera platform from any publicly available URL and after signing in to a Dropbox or Google Drive account.&nbsp;</li>
</ul>

<ul>
	<li><strong>ASSESSMENT IMPORT</strong><em>&nbsp;&ndash;&nbsp;</em>Efficiently author assessments by importing documents directly to the Coursera platform from Google Docs, Sheets, Microsoft Word, and Excel.<em>&nbsp;Launching later in 2020.</em></li>
</ul>

<ul>
	<li><strong>QUESTION BANKS</strong>&nbsp;&ndash; Create a question bank, tagging questions based on objectives and difficulty to efficiently leverage a core set of questions across several assessments.&nbsp;<em>Launching later in 2020.</em></li>
</ul>

<ul>
	<li><strong>MACHINE-ASSISTED PEER REVIEW</strong>&nbsp;&ndash; This tool enables grading at scale. Learners struggling to get an assignment peer-graded can have their work automatically assessed by a machine learning model trained on previously peer-graded submissions from the course.&nbsp;&nbsp;</li>
</ul>

<ul>
	<li><strong>ITEM LINKING</strong>&nbsp;&ndash; When a partner makes changes to an item in one course, they can apply that change across all linked copies of the item in other courses, increasing content efficiency, consistency, and stackability. Learner quiz grades from an open course will automatically carry over to a degree where that quiz is also used, preventing learners from needing to retake the assessment.</li>
</ul>

<ul>
	<li><strong>CUSTOM ROLES</strong>&nbsp;&ndash; Managing the roles and permissions associated with a course typically requires the combined efforts of teaching assistants, faculty, and university administrators. Custom Roles provides additional control and flexibility, with partners now able to create new staff roles with any combination of permissions and access. Especially with for-credit content, this offers an additional layer of protection for student privacy.&nbsp;</li>
</ul>

<p><strong>Empowering our degree partners with data and APIs</strong></p>

<p>As we work with our partners to bring more top-quality degrees online, we&rsquo;re also focused on helping our degree partners manage their content more efficiently:&nbsp;</p>

<ul>
	<li><strong>DEGREE APIs</strong>&nbsp;&ndash; Partners can integrate with Coursera via APIs, enabling a near real-time exchange using standards-based technology. This will start with key operational data for the degree programs and course enrollments, with more APIs set to launch throughout 2020. It will help identify and resolve errors faster, provide increased flexibility for partners to use their own tech stacks, and enable testing both before and after launching content to proactively monitor any issues.&nbsp;</li>
</ul>

<p>Our learner and educator community represents a wide range of needs, and we&rsquo;re committed to responding to those with rapid innovation. No matter where you are in the world, we&rsquo;re here to help with your teaching and learning goals. Check out our&nbsp;<a href="https://coursera.community/">learner</a>&nbsp;and&nbsp;<a href="https://www.coursera.org/about/partners">partner</a>&nbsp;communities today.&nbsp;</p>
', CAST(N'2022-03-21' AS Date), 1, 4)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (36, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/05/Northeastern-University-MS-in-Management-Digital-Transformation-in-Healthcare-with-Mayo-Clinic-social-blog.png', N'Northeastern University and Mayo Clinic launch first university-industry degree on Coursere', N'<p>Learners around the world are turning to online learning at this particularly challenging time. Overnight, universities have switched to remote teaching in order to provide academic continuity to their students. In the past month, 5.9 million learners enrolled in courses on Coursera and nearly 2,700 institutions launched Coursera for Campus programs. As the community of online learners and educators grow, we are doubling down on our efforts to serve them with top-quality content, delivered through a high-quality learning experience. Today we&rsquo;re excited to introduce several new tools and features for our learners and educators.&nbsp;</p>

<p><strong>Serving our learners</strong></p>

<p>It&rsquo;s vital that we continue to help learners develop and showcase job-relevant skills. This starts with the right content for specific goals, and support to help learners make progress.&nbsp;</p>

<p><strong>Matching learners with the right content</strong></p>

<p>With a broad range of courses, Specializations, degrees, and certificates, learners have a lot to choose from on our platform. They should be able to easily discover the most relevant content to develop the skills they need. To help, we&rsquo;ve introduced:</p>

<ul><br />
	<li>&nbsp;&nbsp; &nbsp;</li>
	<li><strong>PERSONALIZED BROWSING&nbsp;</strong>&ndash; Built on machine learning models, this feature ensures learners receive tailored suggestions for the most relevant learning content based on their learning journey so far.&nbsp;</li>
	<li>
	<ul><br />
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>GOAL SETTING&nbsp;</strong>&ndash; Once a learner starts a new course, a prompt will appear to create learning goals from the get-go. These goals can be&nbsp;<a href="https://learner.coursera.help/hc/en-us/articles/360030934191-Add-Coursera-Deadlines-To-Your-Calendar">seamlessly synced</a>&nbsp;with Google Calendar and other calendar apps, integrating learning into a daily routine.&nbsp;</li>
		<br />
		<br />
		&nbsp;
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>SMART REVIEW MATERIAL</strong>&nbsp;&ndash; This machine learning tool helps unblock learners when they fail a quiz. It serves targeted review material recommendations based on the specific questions they missed, providing learners with a structured path to succeed on the next quiz attempt.</li>
		<br />
		<br />
		&nbsp;
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>LEARNER SKILL TRACKING</strong>&nbsp;&ndash; This data-driven tool tracks learner skill development, sharing updated competency scores as a learner takes more assessments on Coursera. Through a centralized dashboard, learners can monitor their progress toward career-specific skills and see how their competency scores compare to other professionals on the Coursera platform.&nbsp;</li>
		<li>&nbsp;</li>
	</ul>

	<p><strong>Serving our partners</strong><strong>&nbsp;</strong></p>

	<p>While universities needed to quickly go online due to the disruption from COVID-19, this is also a catalyst for the digital transformation of higher ed. We&rsquo;re here to support our partners in their efforts to provide online learning at scale with a number of new tools and features.&nbsp;</p>

	<p><strong>Helping educators move online faster</strong></p>

	<p>The coronavirus pandemic is forcing global experimentation with remote teaching. We&rsquo;ve heard from many partners who are looking for tools and resources to provide academic continuity for their students. With these educators in mind, we&rsquo;ve launched:&nbsp;&nbsp;&nbsp;</p>

	<ul><br />
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>Live2Coursera</strong>&nbsp;&ndash; Thousands of instructors are using Zoom to deliver lectures to millions of students worldwide, and this resource should be turned into a long-term digital asset. Live2Coursera allows seamless integration of these live lectures into a private course. Zoom recordings are added automatically to an instructor&rsquo;s course as they teach, so they can build a library of content to reuse in future private or open courses.&nbsp;<em>Launching later in 2020.</em></li>
		<br />
		<br />
		&nbsp;
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>CourseMatch</strong>&nbsp;&ndash; On the heels of our Coronavirus Response Initiative, which provides universities with free access to Coursera for Campus, we&rsquo;ve launched&nbsp;<a href="https://blog.coursera.org/coursera-launches-coursematch/">CourseMatch</a>: a machine learning solution that automatically matches a university&rsquo;s on-campus courses to courses in our catalog, enabling institutions to quickly deliver the most relevant online courses to their students.&nbsp;</li>
		<br />
		<li>&nbsp;</li>
	</ul>

	<p><strong>Easily create and manage content&nbsp;</strong></p>

	<p>Our partners are dedicated to creating high-quality courses and Specializations for learners everywhere. We&rsquo;re rolling out a number of new innovations to help partners swiftly create and manage content on our platform:</p>

	<ul><br />
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>CLOUD IMPORT</strong>&nbsp;&ndash; Seamlessly import cloud assets directly to the Coursera platform from any publicly available URL and after signing in to a Dropbox or Google Drive account.&nbsp;</li>
		<br />
		<li>&nbsp;</li>
	</ul>

	<p>&nbsp;</p>

	<p>&nbsp;</p>

	<ul><br />
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>ASSESSMENT IMPORT</strong><em>&nbsp;&ndash;&nbsp;</em>Efficiently author assessments by importing documents directly to the Coursera platform from Google Docs, Sheets, Microsoft Word, and Excel.<em>&nbsp;Launching later in 2020.</em></li>
		<br />
		<br />
		<br />
		&nbsp;
		<li>&nbsp;</li>
	</ul>

	<p>&nbsp;</p>

	<p>&nbsp;</p>

	<ul><br />
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>QUESTION BANKS</strong>&nbsp;&ndash; Create a question bank, tagging questions based on objectives and difficulty to efficiently leverage a core set of questions across several assessments.&nbsp;<em>Launching later in 2020.</em></li>
		<br />
		<br />
		<br />
		&nbsp;
		<li>&nbsp;</li>
	</ul>

	<p>&nbsp;</p>

	<p>&nbsp;</p>

	<ul><br />
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>MACHINE-ASSISTED PEER REVIEW</strong>&nbsp;&ndash; This tool enables grading at scale. Learners struggling to get an assignment peer-graded can have their work automatically assessed by a machine learning model trained on previously peer-graded submissions from the course.&nbsp;&nbsp;</li>
		<br />
		<br />
		<br />
		&nbsp;
		<li>&nbsp;</li>
	</ul>

	<p>&nbsp;</p>

	<p>&nbsp;</p>

	<ul><br />
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>ITEM LINKING</strong>&nbsp;&ndash; When a partner makes changes to an item in one course, they can apply that change across all linked copies of the item in other courses, increasing content efficiency, consistency, and stackability. Learner quiz grades from an open course will automatically carry over to a degree where that quiz is also used, preventing learners from needing to retake the assessment.</li>
		<br />
		<br />
		<br />
		&nbsp;
		<li>&nbsp;</li>
	</ul>

	<p>&nbsp;</p>

	<p>&nbsp;</p>

	<ul><br />
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>CUSTOM ROLES</strong>&nbsp;&ndash; Managing the roles and permissions associated with a course typically requires the combined efforts of teaching assistants, faculty, and university administrators. Custom Roles provides additional control and flexibility, with partners now able to create new staff roles with any combination of permissions and access. Especially with for-credit content, this offers an additional layer of protection for student privacy.&nbsp;</li>
		<br />
		<br />
		<br />
		&nbsp;
		<li>&nbsp;</li>
	</ul>

	<p>&nbsp;</p>

	<p>&nbsp;</p>

	<p><strong>Empowering our degree partners with data and APIs</strong></p>

	<p>&nbsp;</p>

	<p>&nbsp;</p>

	<p>As we work with our partners to bring more top-quality degrees online, we&rsquo;re also focused on helping our degree partners manage their content more efficiently:&nbsp;</p>

	<p>&nbsp;</p>

	<p>&nbsp;</p>

	<ul><br />
		<li>&nbsp;&nbsp; &nbsp;</li>
		<li><strong>DEGREE APIs</strong>&nbsp;&ndash; Partners can integrate with Coursera via APIs, enabling a near real-time exchange using standards-based technology. This will start with key operational data for the degree programs and course enrollments, with more APIs set to launch throughout 2020. It will help identify and resolve errors faster, provide increased flexibility for partners to use their own tech stacks, and enable testing both before and after launching content to proactively monitor any issues.&nbsp;</li>
		<br />
		<br />
		<br />
		&nbsp;
		<li>&nbsp;</li>
	</ul>

	<p>&nbsp;</p>

	<p>&nbsp;</p>

	<p>Our learner and educator community represents a wide range of needs, and we&rsquo;re committed to responding to those with rapid innovation. No matter where you are in the world, we&rsquo;re here to help with your teaching and learning goals. Check out our&nbsp;<a href="https://coursera.community/">learner</a>&nbsp;and&nbsp;<a href="https://www.coursera.org/about/partners">partner</a>&nbsp;communities today.&nbsp;</p>

	<p><br />
	&nbsp;</p>

	<p>&nbsp;</p>
	</li>
	<li>&nbsp;&nbsp; &nbsp;</li>
	<li><strong>PERSONALIZED HOMEPAGE&nbsp;</strong>&nbsp;&ndash; When logged in, learners can resume a course in one click, see personalized recommendations on courses to pursue next, and view the certificates they&rsquo;ve earned so far.&nbsp;</li>
	<br />
	<br />
	<br />
	&nbsp;
	<li>&nbsp;</li>
</ul>
', CAST(N'2022-07-18' AS Date), 1, 1)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (37, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/12/sans-titre-%C2%AE-Hec-Paris-2016.jpg', N'Think you’re not creative? Think again…', N'<p>This is the mantra that creativity expert, Professor&nbsp;<a href="https://www.hec.edu/en/faculty-research/faculty-directory/faculty-member/sellier-anne-laure">Anne-Laure Sellier</a>&nbsp;takes into the world of business, and also into the classroom. Her Boosting Creativity course at HEC Paris is among the most popular on the school&rsquo;s online&nbsp;<a href="https://www.coursera.org/degrees/omie">MSc in Entrepreneurship and Innovation</a>&nbsp;program, and helps participants to tap into hidden powers they never knew they had&hellip;</p>

<p><strong>Forget about gifts from the Gods or being struck by &lsquo;the muse&rsquo;, we all have the power to think creatively</strong></p>

<p>&ldquo;One of the reasons that we are only teaching creativity now &ndash; and HEC Paris is one of the few business schools in the world that does so &ndash; is that for the longest time, there was a widely-held belief that it simply can&rsquo;t be taught. For most of history, our species has believed that creativity was God(s)-given, and there was not much that you can do about that. We now know this is at least partly nonsense: research provides enough data to know that you can indeed teach creativity. Can I turn you into Leonardo da Vinci in 18 hours? Of course not, but there is a sweet spot in the middle where I can help someone be more creative &ndash; reliably &ndash; in a relatively small amount of time.&rdquo;</p>

<p><strong>Learning this skill is incredibly attractive in a business setting</strong></p>

<p>&ldquo;Whatever your starting point, what we know about creativity today can make you a better creator &ndash; which is obviously a very precious asset for entrepreneurs and large companies alike, who have to keep innovating all the time in an increasingly competitive environment. Da Vinci did not have that problem &ndash; he could come up with 15 paintings in his lifetime and get away with that for 500 years. In business today, you need to innovate; you need to offer greater value than your competitors all the time using the capabilities you have.&rdquo;</p>

<p><strong>CEOs have rated creativity as their #1 business asset&nbsp;</strong></p>

<p>&ldquo;There was a report in 2010 which is still very up to date and relevant because I&rsquo;m not aware of anything like it since. It was produced by IBM and was called Navigating Complexity. It was a big survey of 1,500 top CEOs and public leaders around the globe, and they were asked what skills are critical to successfully navigate today&rsquo;s business world. By far the most important skill that these leaders highlighted was creativity. They did not detail what creativity meant to them &ndash; but they agreed it was the most important skill to have in business today.&rdquo;</p>

<p><strong>Unravelling the meaning of creativity is critical</strong></p>

<p>&ldquo;I spend a full session at the beginning of my class talking about what creativity actually means because the word itself escapes most participants. What exactly are we talking about? The truth is we&rsquo;re still only beginning to understand how human creativity functions, but one of the few things we can agree on at this point is that a creative output is something that is both novel and useful. Cognitive scientists have gained other reliable insights, which are solid enough to get integrated into our teaching. But let&rsquo;s be clear: it&rsquo;s a bit like we&rsquo;re taking a few steady footsteps on top of a big iceberg, and we have no idea how deep it goes underwater. We&rsquo;re only at the very beginning of understanding how creativity works; it remains one of the few human cognitive functions still escaping artificial intelligence.&rdquo;</p>

<h4><strong>We can learn a lot from deconstructing past creators to understand their creative process</strong></h4>

<p>&ldquo;One thing we sometimes do in class is deconstruct famous creators. Consider Steve Jobs, for example. I greatly admire him, but I encourage participants to question a few myths about him. Not only was he incredibly creative, but he was also incredibly lucky, and trained to get to the insights that he needed. He didn&rsquo;t just go, &lsquo;Hmm, touchscreens are going to be the way forward; he knew touchscreens would work because he had a deep knowledge of anthropology, and he understood that one of the greatest pleasures of mankind, going back as far as the times of cavemen, is to actually apply your hand directly to draw, as they did on cave paintings. He had a different perspective from most people in his industry, and that definitely gave him an edge.&rdquo;</p>

<h4><strong>One way to teach creativity, is through &lsquo;provocation&rsquo;</strong></h4>

<p>&ldquo;Many participants put up their hand when I ask them who isn&rsquo;t creative, which is always fun to watch land on the group&hellip; and we then dig into why that just happened and seek to understand where that way of thinking comes from. There&rsquo;s a lot we can do by making people realize that the thing that is holding their creativity back is themselves, really, and the way they were wired by their education and more generally, the environment they grew up in. My classes are all about experience, and I try to make you feel at least once in the course &ndash; but ideally several times &ndash; that your thinking is being impacted by the things I get you to do differently from what you usually do. Take, for example, brainstorming, which is something that most companies do all the time even though scientists have long known that brainstorming is a suboptimal ideation process on average.&rdquo;</p>

<h4><strong>The idea of taking things away to add value is another eye-opener</strong></h4>

<p>&ldquo;One of the creativity techniques we work on involves thinking about creating something new by removing value from the existing world. Less is more. So, you take a phone, for instance, and you remove a feature instead of adding new ones, which is what every engineer does to differentiate their phone. When you remove a feature, it seems at first that you have a less valuable phone, but then you start thinking about what that seemingly inferior product &ndash; when viewed in the context of a social world &ndash; might do better. So, in the phone example, maybe I remove the ability to call, and suddenly you have the first phone for children where parents can call them, but they can&rsquo;t call out (unknown others or wasting time calling the little friends they just left at school). Of course, it&rsquo;s a niche, but you end up creating superior value for that niche.&rdquo;</p>

<h4><strong>Another way of mixing things up is by getting students to blend unrelated concepts</strong></h4>

<p>&ldquo;A former student reached out to me two days ago because she had created intergenerational daycare for children inside retirement homes in France. She went from understanding that there are not enough places in daycare centers in France, meaning that thousands of families do not have a solution for their young children, while on the other hand, you have two-and-a-half million people who are over 85 and even more who are over 65, who are retired and alone. So, she had the idea to mix the two in a way that created value both for the old and the young &ndash; which is one of the exercises we do in class; to find existing value spaces that do not correlate and consider what happens if we force them to fit together. In the case of my student, she found a solution that allows the older generation to get a few hours a day of interaction with the children, reading to them and so on, while the little ones learn about respect and empathy &ndash; and it helps to address the childcare problem. She has 10 centers opening this year and the ones that have opened are already full. Look them up on Internet, the company is called &ldquo;Tom &amp; Josette&rdquo;. It is a clear example that you needn&rsquo;t reinvent the wheel to create formidable value. A big bulk of creativity stems from taking the existing and rethinking the building blocks.&rdquo;</p>
', CAST(N'2022-03-23' AS Date), 1, 1)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (38, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/11/HSE-blog-header_Georgy-Pashchenko.png', N'Using Data in Financial Decision-Making', N'<p>&lt;p&gt;This is the mantra that creativity expert, Professor&amp;nbsp;&lt;a href=&quot;https://www.hec.edu/en/faculty-research/faculty-directory/faculty-member/sellier-anne-laure&quot;&gt;Anne-Laure Sellier&lt;/a&gt;&amp;nbsp;takes into the world of business, and also into the classroom. Her Boosting Creativity course at HEC Paris is among the most popular on the school&amp;rsquo;s online&amp;nbsp;&lt;a href=&quot;https://www.coursera.org/degrees/omie&quot;&gt;MSc in Entrepreneurship and Innovation&lt;/a&gt;&amp;nbsp;program, and helps participants to tap into hidden powers they never knew they had&amp;hellip;&lt;/p&gt;</p>

<p>&lt;p&gt;&lt;strong&gt;Forget about gifts from the Gods or being struck by &amp;lsquo;the muse&amp;rsquo;, we all have the power to think creatively&lt;/strong&gt;&lt;/p&gt;</p>

<p>&lt;p&gt;&amp;ldquo;One of the reasons that we are only teaching creativity now &amp;ndash; and HEC Paris is one of the few business schools in the world that does so &amp;ndash; is that for the longest time, there was a widely-held belief that it simply can&amp;rsquo;t be taught. For most of history, our species has believed that creativity was God(s)-given, and there was not much that you can do about that. We now know this is at least partly nonsense: research provides enough data to know that you can indeed teach creativity. Can I turn you into Leonardo da Vinci in 18 hours? Of course not, but there is a sweet spot in the middle where I can help someone be more creative &amp;ndash; reliably &amp;ndash; in a relatively small amount of time.&amp;rdquo;&lt;/p&gt;</p>

<p>&lt;p&gt;&lt;strong&gt;Learning this skill is incredibly attractive in a business setting&lt;/strong&gt;&lt;/p&gt;</p>

<p>&lt;p&gt;&amp;ldquo;Whatever your starting point, what we know about creativity today can make you a better creator &amp;ndash; which is obviously a very precious asset for entrepreneurs and large companies alike, who have to keep innovating all the time in an increasingly competitive environment. Da Vinci did not have that problem &amp;ndash; he could come up with 15 paintings in his lifetime and get away with that for 500 years. In business today, you need to innovate; you need to offer greater value than your competitors all the time using the capabilities you have.&amp;rdquo;&lt;/p&gt;</p>

<p>&lt;p&gt;&lt;strong&gt;CEOs have rated creativity as their #1 business asset&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;</p>

<p>&lt;p&gt;&amp;ldquo;There was a report in 2010 which is still very up to date and relevant because I&amp;rsquo;m not aware of anything like it since. It was produced by IBM and was called Navigating Complexity. It was a big survey of 1,500 top CEOs and public leaders around the globe, and they were asked what skills are critical to successfully navigate today&amp;rsquo;s business world. By far the most important skill that these leaders highlighted was creativity. They did not detail what creativity meant to them &amp;ndash; but they agreed it was the most important skill to have in business today.&amp;rdquo;&lt;/p&gt;</p>

<p>&lt;p&gt;&lt;strong&gt;Unravelling the meaning of creativity is critical&lt;/strong&gt;&lt;/p&gt;</p>

<p>&lt;p&gt;&amp;ldquo;I spend a full session at the beginning of my class talking about what creativity actually means because the word itself escapes most participants. What exactly are we talking about? The truth is we&amp;rsquo;re still only beginning to understand how human creativity functions, but one of the few things we can agree on at this point is that a creative output is something that is both novel and useful. Cognitive scientists have gained other reliable insights, which are solid enough to get integrated into our teaching. But let&amp;rsquo;s be clear: it&amp;rsquo;s a bit like we&amp;rsquo;re taking a few steady footsteps on top of a big iceberg, and we have no idea how deep it goes underwater. We&amp;rsquo;re only at the very beginning of understanding how creativity works; it remains one of the few human cognitive functions still escaping artificial intelligence.&amp;rdquo;&lt;/p&gt;</p>

<p>&lt;h4&gt;&lt;strong&gt;We can learn a lot from deconstructing past creators to understand their creative process&lt;/strong&gt;&lt;/h4&gt;</p>

<p>&lt;p&gt;&amp;ldquo;One thing we sometimes do in class is deconstruct famous creators. Consider Steve Jobs, for example. I greatly admire him, but I encourage participants to question a few myths about him. Not only was he incredibly creative, but he was also incredibly lucky, and trained to get to the insights that he needed. He didn&amp;rsquo;t just go, &amp;lsquo;Hmm, touchscreens are going to be the way forward; he knew touchscreens would work because he had a deep knowledge of anthropology, and he understood that one of the greatest pleasures of mankind, going back as far as the times of cavemen, is to actually apply your hand directly to draw, as they did on cave paintings. He had a different perspective from most people in his industry, and that definitely gave him an edge.&amp;rdquo;&lt;/p&gt;</p>

<p>&lt;h4&gt;&lt;strong&gt;One way to teach creativity, is through &amp;lsquo;provocation&amp;rsquo;&lt;/strong&gt;&lt;/h4&gt;</p>

<p>&lt;p&gt;&amp;ldquo;Many participants put up their hand when I ask them who isn&amp;rsquo;t creative, which is always fun to watch land on the group&amp;hellip; and we then dig into why that just happened and seek to understand where that way of thinking comes from. There&amp;rsquo;s a lot we can do by making people realize that the thing that is holding their creativity back is themselves, really, and the way they were wired by their education and more generally, the environment they grew up in. My classes are all about experience, and I try to make you feel at least once in the course &amp;ndash; but ideally several times &amp;ndash; that your thinking is being impacted by the things I get you to do differently from what you usually do. Take, for example, brainstorming, which is something that most companies do all the time even though scientists have long known that brainstorming is a suboptimal ideation process on average.&amp;rdquo;&lt;/p&gt;</p>

<p>&lt;h4&gt;&lt;strong&gt;The idea of taking things away to add value is another eye-opener&lt;/strong&gt;&lt;/h4&gt;</p>

<p>&lt;p&gt;&amp;ldquo;One of the creativity techniques we work on involves thinking about creating something new by removing value from the existing world. Less is more. So, you take a phone, for instance, and you remove a feature instead of adding new ones, which is what every engineer does to differentiate their phone. When you remove a feature, it seems at first that you have a less valuable phone, but then you start thinking about what that seemingly inferior product &amp;ndash; when viewed in the context of a social world &amp;ndash; might do better. So, in the phone example, maybe I remove the ability to call, and suddenly you have the first phone for children where parents can call them, but they can&amp;rsquo;t call out (unknown others or wasting time calling the little friends they just left at school). Of course, it&amp;rsquo;s a niche, but you end up creating superior value for that niche.&amp;rdquo;&lt;/p&gt;</p>

<p>&lt;h4&gt;&lt;strong&gt;Another way of mixing things up is by getting students to blend unrelated concepts&lt;/strong&gt;&lt;/h4&gt;</p>

<p>&lt;p&gt;&amp;ldquo;A former student reached out to me two days ago because she had created intergenerational daycare for children inside retirement homes in France. She went from understanding that there are not enough places in daycare centers in France, meaning that thousands of families do not have a solution for their young children, while on the other hand, you have two-and-a-half million people who are over 85 and even more who are over 65, who are retired and alone. So, she had the idea to mix the two in a way that created value both for the old and the young &amp;ndash; which is one of the exercises we do in class; to find existing value spaces that do not correlate and consider what happens if we force them to fit together. In the case of my student, she found a solution that allows the older generation to get a few hours a day of interaction with the children, reading to them and so on, while the little ones learn about respect and empathy &amp;ndash; and it helps to address the childcare problem. She has 10 centers opening this year and the ones that have opened are already full. Look them up on Internet, the company is called &amp;ldquo;Tom &amp;amp; Josette&amp;rdquo;. It is a clear example that you needn&amp;rsquo;t reinvent the wheel to create formidable value. A big bulk of creativity stems from taking the existing and rethinking the building blocks.&amp;rdquo;&lt;/p&gt;<br />
&nbsp;</p>
', CAST(N'2022-04-18' AS Date), 1, 1)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (39, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/03/MCR-2021-545-QPR-Blog-Post-Header-Image.jpeg', N'Q1 2021 Coursera for Business Quarterly Product Release', N'<p>Automation and the COVID-19 recession have created a &ldquo;double-disruption&rdquo; scenario for workers that will drastically transform tasks, jobs, and skills for the foreseeable future. In fact, according to the&nbsp;<a href="http://www3.weforum.org/docs/WEF_Future_of_Jobs_2020.pdf">World Economic Forum</a>, eighty-five million jobs will be displaced by 2025, and forty-seven percent of core skills will change for workers during this time. To remain competitive and drive innovation, business leaders are realizing the need to close the skills gap and reskill and upskill their teams.&nbsp;</p>

<p>We are in a new world of work where new skills are valuable currency.&nbsp;To help organizations better equip their teams amid this rapid change, we have pioneered a skills-first product experience that empowers organizations to deploy targeted skill development with tools that simplify content matching, drive engagement, and clarify learning ROI. We have launched Academies and SkillSets that identify target skill proficiencies required for specific job roles and provide personalized learning paths to develop those skill proficiencies. We have also updated our<strong>&nbsp;</strong>Skill Development Dashboards in order to deliver tailored learning programs to specific learner groups, measure and track progress in skill development, and benchmark learner skill proficiency.&nbsp;</p>

<p>Last week, our Product Management team hosted a webinar to talk through these new features, as well as our 2021 roadmap, complete with even more exciting updates set to release later this year. You can tune in on the webinar on-demand&nbsp;<a href="https://event.on24.com/eventRegistration/EventLobbyServlet?target=reg20.jsp&amp;referrer=&amp;eventid=3026059&amp;sessionid=1&amp;key=18E2EF5E21B06088BA3E0BA0E1345852&amp;regTag=&amp;V2=false&amp;sourcepage=register">here</a>. Without further ado, let&rsquo;s dive right in.</p>

<p><strong>Skill Development Dashboards</strong></p>

<p>In October 2019, Coursera team launched the&nbsp;<a href="https://business.coursera.help/hc/en-us/articles/360037329514-Skill-Development-Dashboards-Product-Guide-">Skill Development Dashboards</a>&nbsp;(SDDs), which provided an unprecedented view of skills tracking&mdash;the ability to measure actual skills developed to specific proficiency levels. Since then the Coursera team has been improving the way skills are tagged, measured, and represented.</p>

<p>The latest version update to the Skill Development Dashboards involves the introduction of new skills in communication, marketing, finance, HR, technology principles, technology tools, math, and statistics. You will be able to do the following:&nbsp;</p>

<ul>
	<li>Measure skill development across business, technology, and data domains with 66 new skills areas for a total of 101 trackable skills</li>
	<li>Continue to understand the impact of technical upskilling programs through the introduction of specific skills and tool tracking in technology and data science areas, from Computer Science, Security Engineering, and DevOps to Python, AWS, SQL, and HTML/CSS</li>
	<li>Capture organization-wide learning trends with a skill summary page that includes views of skill proficiency distribution and time to mastery&nbsp;</li>
	<li>Analyze specific skill metrics, including what content develops what skills, through our new Skill Breakdown dashboard</li>
	<li>Report on the ROI of soft skill programs with tracking enabled for Leadership, Strategy and Operations, Business Psychology, Communication, and more.</li>
</ul>

<p>The introduction of these trackable skills pave the way for additional skill-first products, including SkillSets &amp; Academies as well as diagnostics and more granular reporting for program management.</p>

<p><strong>SkillSets and Academies&nbsp;</strong></p>

<p>SkillSets are turnkey, job-based learning programs that develop target skill proficiencies with world-class courses and hands-on Guided Projects. SkillSets make it easier to understand the skill development results of your technical upskilling programs and quantify the impact of data and digital literacy programs. With SkillSets, skills come first. Your employees will see content recommendations that help them get to the next level&mdash;and they won&rsquo;t be weighed down by content they don&rsquo;t need to learn. Choose from over 100 SkillSets that encompass high-impact jobs like cloud architects, data scientists, machine learning engineers, and in-demand skills like being data-driven, Python-proficient, and Tensorflow-specialized, and more&mdash;or deploy SkillSets across your entire organization with Academies, our complete skill development solution for in-demand capabilities.&nbsp;</p>

<p><strong>G</strong><strong>et the future skills you need, by job role with SkillSets</strong></p>

<p>Worry less about what the constantly evolving business landscape means for your organization&rsquo;s skill needs. SkillSets surface the most relevant Coursera courses and Guided Projects to develop target skill proficiencies for specific jobs.</p>

<ul>
	<li>Select from over 100 SkillSets that develop critical and evergreen skills for key jobs in your organization</li>
	<li>Deliver skill-first learning for over 40 jobs, including business analysts, data scientists, designers, financial analysts, HR professionals, IT specialists, machine learning engineers, marketers, operations specialists, product managers, and more&nbsp;</li>
	<li>Develop over 50 types of skill proficiencies, from being data-driven and AI-aware to being TensorFlow-proficient and Spark-specialized</li>
</ul>

<p><strong>Deploy targeted learning programs with ease</strong></p>

<p>Each SkillSet features world-class content delivered via AI-powered curations that are already reviewed by experts, so you can spend less time worrying about mapping content to learners and more time on your overall learning strategy and launch plans.</p>

<ul>
	<li>Configure the SkillSets to match the job titles in your organization&nbsp;</li>
	<li>SkillSets that you create or configure will be branded with your organization&rsquo;s logo</li>
</ul>

<p><strong>Track and measure skills developed&nbsp;</strong></p>

<p>SkillSets make it easier to understand the skill development results of your technical upskilling programs&mdash;and even quantify the impact of data and digital literacy programs.&nbsp;</p>

<ul>
	<li>See how many learners are progressing in a SkillSet</li>
	<li>Track collective learner progress toward that SkillSet&nbsp;</li>
	<li>See which learners have attained their skill goals&nbsp;</li>
</ul>

<p><strong>Accelerate skill acquisition with personalized recommendations</strong></p>

<p>With SkillSets, skills come first. With personalized recommendations tailored for their current skill level, your employees will see content recommendations that help them get to the next level&mdash;and they won&rsquo;t be weighed down by content they don&rsquo;t need to learn.&nbsp;</p>

<ul>
	<li>Dynamic content recommendations help learners get from their current skill level to the target skill proficiency.</li>
	<li>Learners only take what they need to achieve those skill targets; course completions are optional to finish a SkillSet</li>
	<li>Learners can track progress toward their skill goals</li>
</ul>

<p><strong>Open the talent floodgates&nbsp;&nbsp;</strong></p>

<p>Feel confident hiring faster and more efficiently from diverse talent pools knowing that with SkillSets, you can develop and retain critical talent in-house.&nbsp;</p>

<ul>
	<li>&ldquo;Hiring data scientists and data engineers can be very difficult. We believed we would [be more successful] if we developed existing top performers into data professionals.&rdquo; &mdash;Pedro Uria-Recio, Head of Axiata Analytics</li>
	<li>Research firm IDC found that Coursera customers realize +38% retention and +20% employee mobility&nbsp;</li>
	<li>Research firm IDC found that Coursera customers can train +94% more learners</li>
</ul>

<p>With these new features, we hope to give you the capabilities you need to enhance your learning programs and deliver stronger learning outcomes. Be sure to watch our&nbsp;<a href="https://event.on24.com/eventRegistration/EventLobbyServlet?target=reg20.jsp&amp;referrer=&amp;eventid=3026059&amp;sessionid=1&amp;key=18E2EF5E21B06088BA3E0BA0E1345852&amp;regTag=&amp;V2=false&amp;sourcepage=register">webinar replay</a>&nbsp;for additional information (and demos) on all these new features. Happy learning!</p>
', CAST(N'2022-07-18' AS Date), 1, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (40, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/09/Leadership-Academy-blog-header.png', N'“Lead Without Limits:” Rethinking Leadership for the Age of Disruption', N'<p>What does it mean to lead in a world where unpredictability, interdependency, and accelerating change are the norms? How can leaders cultivate the resilience, agility, and grit necessary to succeed, both individually and across their organizations, when hard-and-fast rules fail to apply?&nbsp;</p>

<p>In his recent webinar for Coursera, &ldquo;<a href="https://www.coursera.org/business/webcast/lead-without-limits/?utm_medium=blog&amp;utm_source=la-wbn-blog">Lead Without Limits: Navigating through Uncertainty and Disruption</a>,&rdquo; Mike Barger, Assistant Professor at the University of Michigan&rsquo;s Ross School of Business, addresses these critical questions. Timed to the launch of Coursera&rsquo;s&nbsp;<a href="https://www.coursera.org/business/leadership-academy/?utm_medium=blog&amp;utm_source=la-wbn-blog">Leadership Academy</a>, Berger&rsquo;s talk illuminates how leaders can thrive within environments that are&nbsp;<strong>volatile, uncertain, complex, and ambiguous&mdash;VUCA, for short.</strong></p>

<p><strong>Winning in a VUCA Environment</strong></p>

<p>The VUCA framework was developed by the U.S. military in the late 1980s to describe a new reality: one shaped by complex, shifting dynamics that defy linear understandings of cause and effect. Drawing on his 13 years of service in the U.S. Navy and his tenure as a founding executive at JetBlue Airways, Barger reveals how lessons from military strategy can be applied to business contexts. In doing so, he empowers leaders to anticipate potential threats, adapt to unexpected events, and manage crises when they arise.</p>

<p>Until recently, business-world orthodoxy has held that leaders should simply avoid crises. Yet as the coronavirus pandemic has shown, mission-critical disruptions can emerge suddenly and intensify at exponential rates.&nbsp;<strong>In our present-day VUCA world, Barger argues, crisis is not a matter of &ldquo;if&rdquo; but of &ldquo;when.&rdquo;&nbsp;</strong>Rather than naively assume that adverse scenarios can be prevented, today&rsquo;s businesses need to accept the inevitability of crisis. By adopting a preparedness mindset, leaders can develop the essential tools, capacities, and processes that enable them to tackle any crisis as it comes.</p>

<p><strong>Three Universal Truths of Crisis Leadership</strong></p>

<p>Bringing together learnings from his professional experience and academic research, Barger identifies three universal truths of crisis leadership:</p>

<ol>
	<li>In a crisis, people look for tangible evidence of leadership.</li>
	<li>When they look, people want and need leaders to believe in.</li>
	<li>People don&rsquo;t expect their leaders to be perfect or omniscient.</li>
</ol>

<p>Rather than obsess over the perfect decision, Barger asserts, leaders must learn to make continuous, incremental choices in the face of inconclusive data. By proving their ability to respond in a composed yet forceful manner to unfolding situations, leaders can build the confidence and trust of the multiple individuals and groups whom their businesses impact.</p>

<p>Pushing against generalizations, Barger encourages leaders to specify the various stakeholders in their businesses, from employees, customers, and the executive team to investors, community members, and the media.&nbsp;<strong>Each stakeholder, he explains, needs to be understood holistically and on their own terms.&nbsp;</strong>By cultivating a nuanced appreciation of each party&rsquo;s unique needs, expectations, and value propositions, business leaders can more effectively engage them in moments of crisis, trading a one-size-fits-all plan for a spectrum of targeted approaches.</p>

<p><strong>Key Imperatives for Leaders: Be, Know, Do</strong></p>

<p>To clarify his argument, Barger borrows a second framework from the U.S. military, &ldquo;Be, Know, Do&rdquo;:</p>

<ol>
	<li>Be: Visible, Caring, Empathetic, Calm, and Assertive.</li>
	<li>Know: Vision, Values, Guiding principles.</li>
	<li>Do: Communicate, Make decisions with limited information, Take responsibility, and Engage your stakeholders.</li>
</ol>

<p>&ldquo;Be&rdquo; directs leaders to demonstrate determination and urgency to redress unwanted outcomes while remaining attuned to their stakeholders&rsquo; diverse anxieties and concerns. &ldquo;Know&rdquo; foregrounds the need for leaders to internalize their organizations&rsquo; values. In moments of stress, these values serve as North Stars, offering a robust foundation for making decisions, regardless of the specific nature of the crisis at hand. &ldquo;Do&rdquo; prompts leaders to act even as unknowns persist. By claiming responsibility for guiding the organization and all of its stakeholders through challenging periods, higher-ups can lead by example and cement their position as the authoritative source of information in an evolving situation.</p>

<p><strong>Creating an Action Plan</strong></p>

<p>Equipped with these frameworks, what concrete steps can leaders take to ready both themselves and their organizations? Barger encourages them to start with a hypothetical crisis, such as a market shift, data breach, product failure, execution misstep, or leadership change. After defining the threat, leaders can collaborate with their teams to:&nbsp;</p>

<ol>
	<li>Think through how the scenario will impact each of their stakeholders differently.</li>
	<li>Craft a step-by-step action plan for communicating with and engaging their stakeholders, considering the types, modes, and frequencies of messaging that best align with the expectations, needs, and interests of each individual or group.</li>
	<li>Use this plan to evaluate the organizational roles, responsibilities, and procedures that are currently in place and proactively address gaps within them.&nbsp;</li>
</ol>

<p>By conducting trial runs, leaders can operationalize the mindsets and processes needed to not simply weather but grow through crises, no matter how unfamiliar or unprecedented.</p>

<p>&nbsp;</p>

<p>Dive deeper into these insights by&nbsp;<a href="https://www.coursera.org/business/webcast/lead-without-limits/?utm_medium=blog&amp;utm_source=la-wbn-blog">watching the recorded webinar, &ldquo;Lead without Limits: Navigating through Uncertainty and Disruption.&rdquo;</a></p>
', CAST(N'2022-04-03' AS Date), 1, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (41, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2022/01/ID11835_EmergeBlogPost_ImageCrop_Post2_OPTION2_1200x628.jpg', N'5 Ways Employers Can Drive Skills Development for the Workforce of the Future', N'<p>What does it mean to lead in a world where unpredictability, interdependency, and accelerating change are the norms? How can leaders cultivate the resilience, agility, and grit necessary to succeed, both individually and across their organizations, when hard-and-fast rules fail to apply?&nbsp;</p>

<p>In his recent webinar for Coursera, &ldquo;<a href="https://www.coursera.org/business/webcast/lead-without-limits/?utm_medium=blog&amp;utm_source=la-wbn-blog">Lead Without Limits: Navigating through Uncertainty and Disruption</a>,&rdquo; Mike Barger, Assistant Professor at the University of Michigan&rsquo;s Ross School of Business, addresses these critical questions. Timed to the launch of Coursera&rsquo;s&nbsp;<a href="https://www.coursera.org/business/leadership-academy/?utm_medium=blog&amp;utm_source=la-wbn-blog">Leadership Academy</a>, Berger&rsquo;s talk illuminates how leaders can thrive within environments that are&nbsp;<strong>volatile, uncertain, complex, and ambiguous&mdash;VUCA, for short.</strong></p>

<p><strong>Winning in a VUCA Environment</strong></p>

<p>The VUCA framework was developed by the U.S. military in the late 1980s to describe a new reality: one shaped by complex, shifting dynamics that defy linear understandings of cause and effect. Drawing on his 13 years of service in the U.S. Navy and his tenure as a founding executive at JetBlue Airways, Barger reveals how lessons from military strategy can be applied to business contexts. In doing so, he empowers leaders to anticipate potential threats, adapt to unexpected events, and manage crises when they arise.</p>

<p>Until recently, business-world orthodoxy has held that leaders should simply avoid crises. Yet as the coronavirus pandemic has shown, mission-critical disruptions can emerge suddenly and intensify at exponential rates.&nbsp;<strong>In our present-day VUCA world, Barger argues, crisis is not a matter of &ldquo;if&rdquo; but of &ldquo;when.&rdquo;&nbsp;</strong>Rather than naively assume that adverse scenarios can be prevented, today&rsquo;s businesses need to accept the inevitability of crisis. By adopting a preparedness mindset, leaders can develop the essential tools, capacities, and processes that enable them to tackle any crisis as it comes.</p>

<p><strong>Three Universal Truths of Crisis Leadership</strong></p>

<p>Bringing together learnings from his professional experience and academic research, Barger identifies three universal truths of crisis leadership:</p>

<ol>
	<li>In a crisis, people look for tangible evidence of leadership.</li>
	<li>When they look, people want and need leaders to believe in.</li>
	<li>People don&rsquo;t expect their leaders to be perfect or omniscient.</li>
</ol>

<p>Rather than obsess over the perfect decision, Barger asserts, leaders must learn to make continuous, incremental choices in the face of inconclusive data. By proving their ability to respond in a composed yet forceful manner to unfolding situations, leaders can build the confidence and trust of the multiple individuals and groups whom their businesses impact.</p>

<p>Pushing against generalizations, Barger encourages leaders to specify the various stakeholders in their businesses, from employees, customers, and the executive team to investors, community members, and the media.&nbsp;<strong>Each stakeholder, he explains, needs to be understood holistically and on their own terms.&nbsp;</strong>By cultivating a nuanced appreciation of each party&rsquo;s unique needs, expectations, and value propositions, business leaders can more effectively engage them in moments of crisis, trading a one-size-fits-all plan for a spectrum of targeted approaches.</p>

<p><strong>Key Imperatives for Leaders: Be, Know, Do</strong></p>

<p>To clarify his argument, Barger borrows a second framework from the U.S. military, &ldquo;Be, Know, Do&rdquo;:</p>

<ol>
	<li>Be: Visible, Caring, Empathetic, Calm, and Assertive.</li>
	<li>Know: Vision, Values, Guiding principles.</li>
	<li>Do: Communicate, Make decisions with limited information, Take responsibility, and Engage your stakeholders.</li>
</ol>

<p>&ldquo;Be&rdquo; directs leaders to demonstrate determination and urgency to redress unwanted outcomes while remaining attuned to their stakeholders&rsquo; diverse anxieties and concerns. &ldquo;Know&rdquo; foregrounds the need for leaders to internalize their organizations&rsquo; values. In moments of stress, these values serve as North Stars, offering a robust foundation for making decisions, regardless of the specific nature of the crisis at hand. &ldquo;Do&rdquo; prompts leaders to act even as unknowns persist. By claiming responsibility for guiding the organization and all of its stakeholders through challenging periods, higher-ups can lead by example and cement their position as the authoritative source of information in an evolving situation.</p>

<p><strong>Creating an Action Plan</strong></p>

<p>Equipped with these frameworks, what concrete steps can leaders take to ready both themselves and their organizations? Barger encourages them to start with a hypothetical crisis, such as a market shift, data breach, product failure, execution misstep, or leadership change. After defining the threat, leaders can collaborate with their teams to:&nbsp;</p>

<ol>
	<li>Think through how the scenario will impact each of their stakeholders differently.</li>
	<li>Craft a step-by-step action plan for communicating with and engaging their stakeholders, considering the types, modes, and frequencies of messaging that best align with the expectations, needs, and interests of each individual or group.</li>
	<li>Use this plan to evaluate the organizational roles, responsibilities, and procedures that are currently in place and proactively address gaps within them.&nbsp;</li>
</ol>

<p>By conducting trial runs, leaders can operationalize the mindsets and processes needed to not simply weather but grow through crises, no matter how unfamiliar or unprecedented.</p>

<p>&nbsp;</p>

<p>Dive deeper into these insights by&nbsp;<a href="https://www.coursera.org/business/webcast/lead-without-limits/?utm_medium=blog&amp;utm_source=la-wbn-blog">watching the recorded webinar, &ldquo;Lead without Limits: Navigating through Uncertainty and Disruption.&rdquo;</a></p>
', CAST(N'2022-03-26' AS Date), 1, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (42, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/08/skillsets-launch_blog-2-2-1-1536x806.jpg', N'Deliver job-based learning and build a cutting-edge curriculum', N'<p>We&rsquo;re excited to share details with you about some exciting new Q3 launches. In this post, we&rsquo;ll specifically be discussing SkillSets, which are job-based learning programs that can help you bridge skills gaps and boost student job outcomes as well as new curriculum integration features&mdash;including curriculum recommendations, for-credit tagging, limited availability schedules, and the online gradebook.</p>

<p><strong>SkillSets</strong></p>

<p>SkillSets are job-based learning programs that leverage world-class courses from leading universities and companies, hands-on learning, and skills insights derived from Coursera learners at over 2,300 employers. With dozens of SkillSets currently available, you can confidently prepare students with the in-demand skills necessary to secure today&rsquo;s high-growth jobs. Within a given SkillSet, students will take courses and projects tailored to their existing proficiency levels that accelerate their skill mastery.</p>

<p><strong>What are the benefits of SkillSets?</strong><br />
<br />
SkillSets will enable you to confidently deploy tailored, job-based learning programs at scale. SkillSets leverage Coursera&rsquo;s comprehensive skills and role insights to identify the high-growth jobs that companies are hiring for, and the corresponding skills they require. This allows you to:</p>

<ul>
	<li>Choose from dozens of job-based learning programs that develop in-demand skills for entry-level roles.</li>
	<li>Deliver job-based learning with confidence, knowing that you&rsquo;re teaching exactly the in-demand skills necessary to drive stronger student employability outcomes.</li>
	<li>Deliver tailored learning experiences with dynamic course and project recommendations that are optimized for the proficiency level of each student.</li>
	<li>Drive mastery of in-demand tools and technologies using Guided Projects that leverage a side-by-side interface in a virtual cloud workspace.&nbsp;</li>
</ul>

<p>Additionally, with our&nbsp;<strong>Skills Development Dashboards</strong>, you can track student progress and monitor skill acquisition over time. Also, you can compare student skills against industry benchmarks. In addition to optimizing your learning programs, this information will allow you to share actionable insights with prospective employers and match candidates to the right opportunities based on their skills.</p>

<p>Learn more about SkillSets in our announcement&nbsp;<a href="https://blog.coursera.org/launching-skillsets-for-coursera-for-campus/?utm_medium=blog&amp;utm_source=c4cblog&amp;utm_campaign=q3featurereleases&amp;utm_content=ownedmedia">here</a>.</p>

<p><strong>Curriculum Integration&nbsp;</strong></p>

<p>Successful curriculum integration begins with easy and effective navigation&mdash;the ability to quickly find the right courses to supplement your curriculum and fit your students&rsquo; needs. Then, you&rsquo;ll want to seamlessly incorporate that content into your learning programs and workflows. And finally, you need to be able to deploy courses and monitor student progress. To achieve all these goals, we&rsquo;re introducing some great new features. Let&rsquo;s review each one:</p>

<p><strong>Curriculum recommendations</strong>. Our curriculum recommendations feature will help you navigate the Coursera catalog to select the courses that supplement your curriculum and fit your students&rsquo; needs. This feature allows you to:</p>

<ul>
	<li>Browse courses by academic discipline making it easy for you to discover the courses in our catalog that correspond with the core subjects you are teaching in your curriculum.</li>
</ul>

<ul>
	<li>View our recommendations of courses to offer for credit based on our extensive skills expertise and data to leverage the courses in our catalog that are most suitable for your core curriculum.&nbsp;</li>
</ul>

<p><strong>For-Credit Tagging:</strong>&nbsp;In addition to the enhanced navigation functionality described above, this feature allows you to choose and tag which courses you would like to offer for credit. This makes it easier for your learners to see which courses are part of your core curriculum that they need to complete, right from within the Coursera platform.&nbsp;&nbsp;</p>

<p><strong>Limited Availability Schedules:</strong>&nbsp;You can use this feature to offer courses within timeframes that align with your academic term or other timelines that your institution observes. This simplifies program management, as you don&rsquo;t have to worry about multiple, misaligned timelines. For your students, this will help to ensure they&rsquo;re progressing as a cohort in order to comply with the timelines you have set.&nbsp;</p>

<p><strong>Online Gradebook:&nbsp;</strong>Our online gradebook provides you with course progress monitoring abilities, right from within the Coursera platform. Leveraging this functionality, you will be able to:</p>

<ul>
	<li>Track the progress of students taking a course across in order to ensure that your students are moving smoothly throughout the course. You can see this progress at a cohort level for the current academic term or for all students who have taken that course.&nbsp;</li>
	<li>Identify learners who are enrolled, at risk, inactive, or who have completed the course in order to take necessary corrective measures.&nbsp;</li>
	<li>Export data to load into your LMS in order to analyze this information along with the rest of your program information.&nbsp;</li>
</ul>

<p>The online gradebook also provides information at an individual level, allowing you to see how a student is progressing in a course, how they have performed in assignments and quizzes, and where their progress has stalled. Additionally, if you see anything that is a cause for concern (e.g. a student has failed a quiz or has been inactive), you can send them a message from within the online gradebook, providing that proactive nudge they might need.&nbsp;</p>
', CAST(N'2020-04-19' AS Date), 1, 3)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (43, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/08/Blended-Curriculum-Slides-1536x864.jpg', N'Introducing Six Curriculum Maps for Student Employability', N'<p>A new economic infrastructure, built through innovations such as cloud computing, big data, and artificial intelligence, is propelling work into the &ldquo;<a href="https://www.mckinsey.com/featured-insights/the-next-normal">next normal</a>.&rdquo; In this digital era, career success will depend on the ability to continuously adapt alongside technology. This affects not just the way we work, but fundamentally, the skills we learn. As the institutional bridge between education and work, universities must increasingly ensure that students are equipped with job skills necessary to thrive in this digital world.</p>

<p>These are important topics for university leaders to consider as they prepare students for the workforce:</p>

<ul>
	<li>How can higher-educational institutions embrace digital capabilities to keep pace with the accelerating rate of technological change?&nbsp;</li>
	<li>How can educators both identify and anticipate the skills of the future?&nbsp;</li>
	<li>How can existing programs of study be reconfigured to ensure that students are job-ready?</li>
</ul>

<p>Coursera&rsquo;s latest e-book,&nbsp;<em>Curriculum Mapping for Student Employability,</em>&nbsp;addresses these questions head-on. With more than 86 million learners, 4,000 academic institutions, 300 government entities and 2,000 organizations having used the Coursera platform&nbsp; (as of June 2021), Coursera is uniquely positioned to help higher education institutions align with the skill needs of the modern workforce. The curriculum maps presented in this eBook converge these rich insights with expert curations led by Coursera&rsquo;s Skills Transformation team.&nbsp;</p>

<p><strong>The six custom curriculum maps featured in this eBook serve as a proposed guideline for universities looking to integrate online learning. Each map demonstrates how universities can leverage courses on Coursera to close present-day gaps and empower students to develop job-ready skills.&nbsp;</strong></p>
', CAST(N'2020-04-17' AS Date), 1, 3)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (44, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/04/1200x628-Template-12.jpg', N'The Unbounded University: Education at All Ages', N'<p>The World Economic Forum predicts that&nbsp;<a href="https://reports.weforum.org/future-of-jobs-2016/skills-stability/">42%</a>&nbsp;of the core skills within existing jobs on average are expected to change by 2022. Lifelong learning and continuous retraining, delivered through online learning, can help meet these evolving skill demands. Online platforms can be a powerful tool for universities to engage with learners&ndash;from alumni and faculty to part-time students&ndash;throughout their lives to develop the skills they need to participate in a rapidly evolving workforce.&nbsp;</p>

<p>In Part III of our latest report,&nbsp;<a href="https://www.coursera.org/campus/resources/ebooks/unbounded-university?utm_medium=blog&amp;utm_source=enterprise&amp;utm_campaign=c4c-unbounded-university&amp;utm_content=body-link">The Unbounded University: Unlocking Opportunities through Online Learning</a>, we uncover how universities can provide lifelong learning opportunities and find ways to engage learners at every age to ensure their skill set remains relevant. Our analysis shows that skills in the data science and technology domains decay faster than any other field of study, with the median half-life of a data science or technology skill about seven years shorter than the half-life of a skill outside of those domains such as business or social sciences.</p>

<p><strong>Empowering faculty through online learning</strong></p>

<p>Universities are using online learning to empower faculty to continue their education. On Coursera, some of the courses with the most faculty enrollments are McMaster University and University of California San Diego&rsquo;s&nbsp;<a href="https://www.coursera.org/learn/learning-how-to-learn?utm_source=gg&amp;utm_medium=sem&amp;utm_campaign=01-BrandedSearch-US&amp;utm_content=01-BrandedSearch-US&amp;campaignid=380484307&amp;adgroupid=102187343498&amp;device=c&amp;keyword=&amp;matchtype=b&amp;network=g&amp;devicemodel=&amp;adpostion=&amp;creativeid=433079694377&amp;hide_mobile_promo&amp;gclid=Cj0KCQiArvX_BRCyARIsAKsnTxMoPiO4ap1sFNT2siMwJWZ_divfCEc2ecGvDWPRppUz5rJp9qDkbgAaAr5TEALw_wcB">Learning How to Learn: Powerful mental tools to help you master tough subjects</a>&nbsp;and UNSW Sydney&rsquo;s&nbsp;<a href="https://www.coursera.org/learn/teach-online?utm_source=gg&amp;utm_medium=sem&amp;utm_campaign=14-LearntoTeachOnline-UNSW-US&amp;utm_content=14-LearntoTeachOnline-UNSW-US&amp;campaignid=10100433327&amp;adgroupid=103010829242&amp;device=c&amp;keyword=learn%20how%20to%20teach%20online&amp;matchtype=e&amp;network=g&amp;devicemodel=&amp;adpostion=&amp;creativeid=489318265811&amp;hide_mobile_promo&amp;gclid=Cj0KCQiArvX_BRCyARIsAKsnTxOMo5JcQAbO5oef-4ZFscZPxVggq4s0lKS0Z1g6jvlJCfK8UCXxNHsaAmUyEALw_wcB">Learning to Teach Online</a>.&nbsp;</p>

<p>University faculty using the Coursera platform are also engaging with cutting-edge trends and skills within their fields, including business, technology, and data science skills like blockchain, machine learning, and IoT. Gamification has also become a trending skill for faculty on the platform.</p>
', CAST(N'2022-04-14' AS Date), 1, 3)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (45, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2019/10/Product-update-dark-mode.png', N'Learn by day or night: Dark mode now available on the Coursera iOS app', N'<p>The World Economic Forum predicts that&nbsp;<a href="https://reports.weforum.org/future-of-jobs-2016/skills-stability/">42%</a>&nbsp;of the core skills within existing jobs on average are expected to change by 2022. Lifelong learning and continuous retraining, delivered through online learning, can help meet these evolving skill demands. Online platforms can be a powerful tool for universities to engage with learners&ndash;from alumni and faculty to part-time students&ndash;throughout their lives to develop the skills they need to participate in a rapidly evolving workforce.&nbsp;</p>

<p>In Part III of our latest report,&nbsp;<a href="https://www.coursera.org/campus/resources/ebooks/unbounded-university?utm_medium=blog&amp;utm_source=enterprise&amp;utm_campaign=c4c-unbounded-university&amp;utm_content=body-link">The Unbounded University: Unlocking Opportunities through Online Learning</a>, we uncover how universities can provide lifelong learning opportunities and find ways to engage learners at every age to ensure their skill set remains relevant. Our analysis shows that skills in the data science and technology domains decay faster than any other field of study, with the median half-life of a data science or technology skill about seven years shorter than the half-life of a skill outside of those domains such as business or social sciences.</p>

<p><strong>Empowering faculty through online learning</strong></p>

<p>Universities are using online learning to empower faculty to continue their education. On Coursera, some of the courses with the most faculty enrollments are McMaster University and University of California San Diego&rsquo;s&nbsp;<a href="https://www.coursera.org/learn/learning-how-to-learn?utm_source=gg&amp;utm_medium=sem&amp;utm_campaign=01-BrandedSearch-US&amp;utm_content=01-BrandedSearch-US&amp;campaignid=380484307&amp;adgroupid=102187343498&amp;device=c&amp;keyword=&amp;matchtype=b&amp;network=g&amp;devicemodel=&amp;adpostion=&amp;creativeid=433079694377&amp;hide_mobile_promo&amp;gclid=Cj0KCQiArvX_BRCyARIsAKsnTxMoPiO4ap1sFNT2siMwJWZ_divfCEc2ecGvDWPRppUz5rJp9qDkbgAaAr5TEALw_wcB">Learning How to Learn: Powerful mental tools to help you master tough subjects</a>&nbsp;and UNSW Sydney&rsquo;s&nbsp;<a href="https://www.coursera.org/learn/teach-online?utm_source=gg&amp;utm_medium=sem&amp;utm_campaign=14-LearntoTeachOnline-UNSW-US&amp;utm_content=14-LearntoTeachOnline-UNSW-US&amp;campaignid=10100433327&amp;adgroupid=103010829242&amp;device=c&amp;keyword=learn%20how%20to%20teach%20online&amp;matchtype=e&amp;network=g&amp;devicemodel=&amp;adpostion=&amp;creativeid=489318265811&amp;hide_mobile_promo&amp;gclid=Cj0KCQiArvX_BRCyARIsAKsnTxOMo5JcQAbO5oef-4ZFscZPxVggq4s0lKS0Z1g6jvlJCfK8UCXxNHsaAmUyEALw_wcB">Learning to Teach Online</a>.&nbsp;</p>

<p>University faculty using the Coursera platform are also engaging with cutting-edge trends and skills within their fields, including business, technology, and data science skills like blockchain, machine learning, and IoT. Gamification has also become a trending skill for faculty on the platform.</p>
', CAST(N'2022-03-18' AS Date), 1, 4)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (46, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2019/09/AmazonAlexaAnnouncement_Blog.png', N'Coursera Introduces Amazon Alexa Skill to Support Learning Goals', N'<p>Today, we&rsquo;re excited to announce a skill for Amazon Alexa that will help learners keep up in courses and achieve their personal and professional goals. Starting next month, learners can access course assignment and quiz scores, due dates, and progress updates by simply asking Alexa. This is one of the first skills for Amazon Alexa from an online learning platform.</p>

<p>Voice assistants, like Alexa, are being adopted&nbsp;<a href="https://www.kleinerperkins.com/perspectives/internet-trends-report-2018/">faster than almost any other technology to date</a>.&nbsp;<a href="https://voicebot.ai/wp-content/uploads/2019/03/smart_speaker_consumer_adoption_report_2019.pdf">Over a third</a>&nbsp;of American smart speaker owners use their devices to help keep them on track and organized, which includes setting alarms, timers, and scheduling. Recognizing these trends, we designed a skill for Alexa to help learners stay organized with easy-to-access deadlines, grades, and course progress updates. The new tool builds on our current cross-platform compatibilities on desktop, mobile, and tablet.&nbsp;</p>

<p>In the coming weeks, learners will be able to search for the free Coursera skill in the Amazon Alexa Skills store. Once enabled and linked to Coursera, you&rsquo;ll be able to simply ask, &ldquo;Alexa, when is my next assignment due?&rdquo; or, &ldquo;Alexa, ask Coursera, am I making progress?&rdquo; And by the end of the year, &ldquo;Alexa, what did I get on my computer science quiz?&rdquo; Responses will provide updates based on the latest information in the learner&rsquo;s Coursera account.&nbsp;</p>

<p>Our new Coursera skill for Alexa will be available to all learners with a Coursera account and Amazon Alexa-enabled device in October. By introducing a new tool that helps learners fit education into their daily lives, we&rsquo;ve taken another exciting step toward our mission of providing transformational learning experiences to anyone, anywhere.&nbsp;</p>
', CAST(N'2022-03-25' AS Date), 1, 4)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (47, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2019/09/bigger.jpg', N'Ready for retention: Presenting a unified note-taking experience', N'<p>What did you learn in your last course on Coursera? What were the important concepts presented each week? Could you draw one graph the instructor used? If recalling these facts feels tough, you&rsquo;re not alone. Humans tend to&nbsp;<a href="http://ol.scc.spokane.edu/jroth/Courses/English%2094-study%20skills/MASTER%20DOCS%20and%20TESTS/Curve%20of%20Forgetting.htm">lose 40% of information</a>&nbsp;within the first 24 hours after hearing or reading it, with the recall rate dropping significantly as time goes on. To tackle this natural struggle, we&rsquo;ve developed&nbsp; new note-taking functionalities on Coursera.&nbsp;</p>

<p>Actively engaging in the learning process via note-taking is&nbsp;<a href="https://wac.colostate.edu/journal/vol16/boch.pdf">tied to increased retention and comprehension</a>. To help you get the most out of Coursera, we&rsquo;ve fine-tuned the platform&rsquo;s note-taking, highlighting, and centralized note functionalities, combining the seemingly old-school tradition (a.k.a. frantically scribbling down key concepts during a lecture) with 21st century capabilities.&nbsp;</p>

<p><strong>Snagging Important Imagery</strong></p>

<p>Screengrabs are a great way to tuck away graphs, drawings, and other visuals instructors might show during a course. Via our note-taking functionalities, we&rsquo;ve made capturing and organizing images easier than ever.&nbsp;</p>

<p>While watching a lecture, you can click the &ldquo;Save Note&rdquo; button below the video and save a screenshot to your course notes. You&rsquo;re the only one who can view your course notes, where you can add your own commentary, for example what to observe in a given graph, and easily delete any saved lecture screenshots. While watching a lecture, corresponding notes can be accessed in real time via a sidebar on the right side of the screen.&nbsp;&nbsp;&nbsp;&nbsp;</p>

<p><strong>Starting (and Ending) Courses on a High Note</strong></p>

<p>Although retention is a challenge for many of us, it&rsquo;s one we can identify and address. Currently, note-taking is available on both desktop and mobile. Highlighting capabilities and the unified review page are live on desktop and coming soon for mobile.&nbsp;&nbsp;</p>

<p>With the variety of options available, you can find a note-taking method that best fits your learning style. And most importantly, by using our new note-taking tools you will be able to better retain information, ultimately fostering a more engaging and beneficial learning experience for any course.&nbsp;</p>
', CAST(N'2022-03-09' AS Date), 1, 4)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (48, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/11/HEC-MSIE-image-1536x905.jpg', N'If You Want To Be An Entrepreneur, Learn to Expect the Unexpected', N'<p>Entrepreneurship is exciting, but success often requires wrestling with the unknown. While some challenges and opportunities are to be expected, there will inevitably be lots of surprises as well.&nbsp;</p>

<p>Fortunately, programs like HEC Paris&rsquo;&nbsp;<a href="https://www.coursera.org/degrees/omie">MSc in Innovation and Entrepreneurship (MSIE)</a>&nbsp;are there to help you develop the skills to manage both the known and unknown along your entrepreneurial path. It&rsquo;s an ideal way to learn about best practices, test out ideas, and explore different business strategies&mdash;all in a supportive and risk-free environment.&nbsp;</p>

<p>That last point is a crucial one. Entrepreneurial thought leaders regularly emphasize the importance of learning from failure, but that&rsquo;s often easier said than done. How you manage failure can have a significant impact on the trajectory of your business. The project-based approach taken by HEC Paris makes it possible for you to obtain real-world experience and create a vibrant and robust group dynamic. MSIE students come from a range of backgrounds, and by working together, you&rsquo;re able to exchange ideas and improve your teamwork skills, which are essential in any business setting.&nbsp;</p>

<p>Ara Fernezian, an alum of the program, offers some great advice on the kinds of internal conflict that can develop in an entrepreneurial venture. &ldquo;Remember it all starts with you,&rdquo; says Ara. &ldquo;Prioritize what makes you good with people and with yourself, and you will see that magic will happen.&rdquo; Azat Mardan, also an alum and also a successful entrepreneur, echoes this sentiment, noting that &ldquo;having a good track record in management and leadership, and showing empathy, can help create a loyal, happy and productive team.&rdquo;&nbsp;</p>

<p>In the second half of the program, you&rsquo;ll work in teams on an entrepreneurial project of your choice, from the planning stages to final execution. Successful projects can even be submitted to seek seed funding from HEC Paris through HEC&rsquo;s incubator, which is based at Station F, the world&rsquo;s most extensive startup campus. HEC&rsquo;s incubator has supported over 400 projects and helped ambitious entrepreneurs accelerate and amplify their development.</p>

<p>Alumni from the program often go on to launch their own startups with fellow graduates. You can read more about the experience of graduates&nbsp;<a href="https://www.hec.edu/en/news-room/first-cohort-sails-through-pioneering-hec-paris-online-master">here</a>.</p>
', CAST(N'2022-03-09' AS Date), 1, 1)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (49, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2020/07/Blog_Post_Final-1.jpg', N'Two Steps for L&D to Drive Digital Transformation Post-COVID', N'<p>With the COVID-19 pandemic forcing companies to transition to remote work, employees are adapting to new realities. Trying to balance work with life responsibilities during shelter-in-place has led to a decline in productivity for many and uncertainty about the future. Anxiety has risen, days have become longer, and existing operations have been disrupted.</p>

<p>In such a difficult environment, how can organizations best support their employees while keeping an eye on oncoming digital transformation?</p>

<p>Data suggests that companies have a real opportunity to jump on the demand for learning opportunities today to accomplish both of these goals. Individuals are migrating to online learning faster than ever. At Coursera, we have seen a more than 15-fold increase in new enrollments platform-wide and across every industry. Companies can take advantage of this with a simple two-step process: first, they should focus on employee well-being by providing targeted personal development training; second, they should create skill development paths to give people the chance to drive their company&rsquo;s digital agenda.</p>

<p>Currently, five of the top ten skills on the Coursera platform are focused on personal development skills like mindfulness, happiness, and positive psychology&mdash;compared to none before the pandemic hit&mdash;and enrollments in personal development have surged more than 1,500% since March. This demand provides a great opportunity for companies to increase engagement in their learning programs by first providing learners with access to these personal development courses.&nbsp;</p>

<p>Customers like Capgemini and Novartis, which have made courses on well-being and the science behind COVID-19 accessible to all employees, have seen enrollments in their learning programs increase by 270% on average, compared to an average of 44% for other customers that have not added content around these topics. Many of these additional learners have not only engaged with timely support skills but have taken the opportunity to acquire key digital skills, as well.</p>

<p>After helping employees to build personal development skills, organizations should ensure their teams are prepared for digital transformation.</p>

<p><a href="https://www.forbes.com/sites/bernardmarr/2020/03/17/how-the-covid-19-pandemic-is-fast-tracking-digital-transformation-in-companies/#beaa981a8eed">COVID has fast-tracked this transformation in many companies</a>&mdash;supply chains have been disrupted and in-person stores have shut down, forcing companies to migrate to digital products and services. Employees need the skills to be able to drive this agenda. Two skills that were already essential for digital transformation have only become more important during the crisis.</p>

<p>Data science has been critical to almost all of the strategic decisions we&rsquo;ve seen during COVID. From tracking the pandemic to coordinating the production of health supplies, big data and real-time analytics have been core to decision making. It is no longer viable to make decisions by manually combining various data sources in overworked Excel spreadsheets. Employees need the ability to manage large datasets and integrate insights into their decision-making quickly and on an ongoing basis.</p>

<p>Similarly, cloud computing has come to the fore during the pandemic. Companies like Netflix, Zoom, and Microsoft, are at the frontier of cloud technology and were able to seamlessly scale their services to support triple-digit growth in a matter of days, taking advantage of new business opportunities while maintaining the quality of existing services. If businesses want to remain agile in an increasingly volatile environment, cloud computing skills are a must to enable technological adaptability.</p>

<p>On&nbsp;<a href="https://www.coursera.org/">Coursera</a>, learner behavior is matching the external emphasis on cloud computing and data science. Between 2018 and 2019, monthly average enrollments in cloud computing grew by 265% and in data science by 50% (vs. 30% on average in other skills). Since the start of this year, monthly average enrollments in cloud computing have grown 179% and in data science by an additional 166%.</p>
', CAST(N'2022-03-10' AS Date), 1, 2)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (50, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2021/02/1200x628-Template.png', N'3 Ways to Future-Proof Your University', N'<p>When the pandemic led to the initial shutdown of university campuses in early February, Duke Kunshan University in Kunshan, China, was among the first to move all its courses to an online format. By April, at the height of the crisis, up to&nbsp;<a href="https://en.unesco.org/covid19/educationresponse" rel="noreferrer noopener" target="_blank">1.6 billion students</a>&nbsp;worldwide were affected by school closures, including more than 200 million in higher education. Following suit, colleges and universities around the world also began quickly transitioning to emergency remote teaching, moving online to deliver lectures, administer tests and even hold graduation ceremonies.</p>

<p>What started as a short-term response to the COVID-19 crisis will result in an enduring digital transformation of higher education. While the move off campus won&rsquo;t be permanent for all undergraduate students, higher education as we know it will evolve.</p>

<p>The past year has been a catalyst for universities to make online learning core to their student experience, and best practices for this &ldquo;new normal&rdquo; have started to emerge. Here are three steps you might consider taking to future-proof your university for next semester and beyond.</p>

<h3>1) Embrace New Models of Blended Learning</h3>

<p>Several remote teaching models arose amid the pandemic, and nine months after the initial shift online, it has become clear that&nbsp;<a href="https://www.insidehighered.com/news/2020/04/29/synchronous-instruction-hot-right-now-it-sustainable" rel="noreferrer noopener" target="_blank">not all methods</a>&nbsp;are equally engaging. Many institutions defaulted to fully synchronous instruction during the emergency remote teaching phase, in which faculty move their lectures online through videoconference tools. This model can&nbsp;<a href="https://www.cbc.ca/news/canada/british-columbia/online-university-burnout-1.5793757" rel="noreferrer noopener" target="_blank">lead to burnout</a>&nbsp;for both students and instructors, and is often associated with consternation surrounding student attention.</p>

<p>Many institutions are deploying fully asynchronous teaching, and some are supplementing their degree offerings with ready-made, for-credit courses on online learning platforms. Professors can curate courses to fill curriculum gaps and ensure new content is aligned with their department&rsquo;s goals. This supplemental option is student-friendly because it is flexible and self-paced, and it allows them to easily explore new interests outside their major.</p>

<p>Blended learning, parts asynchronous and synchronous, has also emerged as a&nbsp;<a href="http://www.bu.edu/ctl/guides/blended-learning/" rel="noreferrer noopener" target="_blank">popular path</a>&nbsp;for universities. In this &ldquo;flipped classroom&rdquo; model, students gain knowledge and skills from online courses, either ready-made or privately authored by their instructors. The course acts as a textbook, only it&rsquo;s chunked into bite-sized segments and reflects the modern digital experience young people expect. Students then come together with instructors in a virtual classroom to discuss ideas and apply skills with hands-on projects and assessments.</p>

<p>Blended learning marries the best of on-campus and online learning practices, fostering community and ensuring high engagement. Its pioneers include Covenant University in Nigeria, which is using online courses to enrich its degree programs with international knowledge and perspective for over 6,000 students.</p>

<h3>2) Prepare Students for the Jobs of the Future</h3>

<p>The pandemic caused widespread unemployment and accelerated digital transformation and automation, impacting&nbsp;<a href="https://www.ilo.org/wcmsp5/groups/public/---dgreports/---dcomm/documents/briefingnote/wcms_755910.pdf" rel="noreferrer noopener" target="_blank">millions</a>&nbsp;of workers globally. In the United States, already-high unemployment rates for young workers ages 16-24&nbsp;<a href="https://www.epi.org/publication/young-workers-covid-recession/&amp;text=Across%20the%20United%20States%2C%20millions,has%20been%20even%20more%20intense.#:~:text=Young%20workers%20hit%20hard%20by%20the%20COVID%2D19%20economy%20Workers,unemployment%20and%20an%20uncertain%20future" rel="noreferrer noopener" target="_blank">almost tripled</a>&nbsp;from spring 2019 to 2020. Rates are&nbsp;<a href="https://www.epi.org/publication/young-workers-covid-recession/&amp;text=Across%20the%20United%20States%2C%20millions,has%20been%20even%20more%20intense.#:~:text=Young%20workers%20hit%20hard%20by%20the%20COVID%2D19%20economy%20Workers,unemployment%20and%20an%20uncertain%20future" rel="noreferrer noopener" target="_blank">even higher</a>&nbsp;among young Black, Hispanic, and Asian and Pacific Islander workers.</p>

<p>While&nbsp;<a href="https://go.joinhandshake.com/rs/390-ZTF-353/images/Handshake_CampusToCareerReport2020.pdf" rel="noreferrer noopener" target="_blank">four in five</a>&nbsp;students report accelerating or sustaining their job search priority due to the pandemic, only&nbsp;<a href="https://go.joinhandshake.com/rs/390-ZTF-353/images/Handshake_CampusToCareerReport2020.pdf" rel="noreferrer noopener" target="_blank">two in five</a>&nbsp;students feel confident they will find a job or internship by summer 2021. As more jobs&nbsp;<a href="http://www3.weforum.org/docs/WEF_Future_of_Jobs_2020.pdf" rel="noreferrer noopener" target="_blank">require digital skills</a>, we expect students and employers will increasingly look to universities to prepare students for this new competitive labor market. Future jobs are expected to be&nbsp;<a href="https://blogs.microsoft.com/blog/2020/06/30/microsoft-launches-initiative-to-help-25-million-people-worldwide-acquire-the-digital-skills-needed-in-a-covid-19-economy/" rel="noreferrer noopener" target="_blank">highly digital</a>, so universities must build curricula that teach skills across cybersecurity, data science and cloud computing. Universities can also supplement degree programs with courses taught by leading industry educators like Google, Amazon and Facebook, whose tools are often used on-the-job.</p>

<p>In North Carolina, Johnson C. Smith University built a Data Science program to enhance students&rsquo; job-ready technology skills with online courses from Google, IBM, and John Hopkins University. Other universities have integrated&nbsp;<a href="https://www.wsj.com/articles/this-college-degree-is-brought-to-you-by-amazon-11604941263" rel="noreferrer noopener" target="_blank">corporate apprenticeship programs</a>&nbsp;to give students experience solving real-world problems.</p>

<p>Hands-on projects are emerging as an impactful form of vocational training, meant for the digital world. These assignments, which help students apply skills in short-form, real-world scenarios, can drive higher rates of skill development, in addition to gains in satisfaction and career outcomes.</p>

<h3>3) Collaborate with Peer Instructors and Institutions</h3>

<p>One of the most inspiring practices we&rsquo;ve seen during the pandemic is a collaboration among instructors and institutions. Professors and university leaders worldwide are readily sharing tips and resources to help each other teach more effectively and even upskill amid an unprecedented crisis.</p>

<p>At the innovative University of Szeged in Hungary, for example, faculty members and senior-level students reported using online courses taught by international experts to build their expertise and grow their research, whether by accessing a new library, providing new study materials to students, or authoring their own digital content. Meanwhile, Doctoral students are leveraging research and teaching-centric online courses to future-proof their skillsets.</p>

<p>Renowned institutions and long-time online educators like Duke University, Imperial College of London, and University of Michigan offer strategies on&nbsp;<a href="https://flexteaching.li.duke.edu/a-guide-to-course-design/" rel="noreferrer noopener" target="_blank">designing engaging online courses</a>,&nbsp;<a href="https://www.imperial.ac.uk/digital-learning-hub/online-classroom/labs/" rel="noreferrer noopener" target="_blank">delivering labs</a>&nbsp;remotely, and fostering&nbsp;<a href="https://crlt.umich.edu/multicultural-teaching/inclusive-teaching-strategies" rel="noreferrer noopener" target="_blank">inclusive and equitable</a>&nbsp;online learning environments. Continued knowledge-sharing, be it teaching strategies or cutting-edge course content, will be vital to building resilient university teaching models at scale, now and for years to come.</p>

<p>The university experience is no longer limited to the walls of the campus. Around the world, faculty are teaching and students are learning virtually everywhere &mdash; bedrooms, dining tables, backyards, you name it. We expect that while the move off campus won&rsquo;t be permanent, the pandemic&rsquo;s impact on higher education will be. To stay competitive now and in the long-term, universities will likely need to adapt and pave the way for a new normal.</p>
', CAST(N'2022-03-10' AS Date), 1, 3)
INSERT [dbo].[Post] ([post_id], [post_img], [post_title], [post_desc], [post_date], [post_status], [blog_id]) VALUES (51, N'https://149357281.v2.pressablecdn.com/wp-content/uploads/2017/07/Climber-768x436.png', N'Going Offline: Improvements to our most popular mobile feature', N'<p>Are you in a part of the world with unreliable access to WiFI or cellular connection? Do you want to download material to your mobile device while on WiFi to save on data costs? Or are you heading on an adventure where you might be out of signal range?</p>

<p>If any of the above applies to you, you&rsquo;re probably one of the many learners who love having the option to learn offline on mobile. &nbsp;The ability to download material to work offline is one of the most-valued features among our mobile users. Last year, we added the ability to download videos and readings for offline access. Now, we&rsquo;re adding more offline features to help learners complete coursework wherever life takes them.</p>

<p>Learners on both iOS and Android can now:</p>

<p><strong>1. Save a week&rsquo;s worth of content for offline access with one click.</strong></p>

<p>&nbsp;</p>

<p><strong>2. Save and submit quizzes offline.</strong></p>

<p>If you complete a quiz offline, we&rsquo;ll submit your answers and update your progress when you connect again.</p>

<p>3.&nbsp;<strong>Control offline in settings</strong></p>

<p>We&rsquo;ve added more powerful online options and preferences, including the ability to manually switch to offline mode, download on WiFi only, or auto-delete older offline content.</p>

<p><strong>4. View and manage all offline content in one place.</strong></p>

<p>Downloads are now aggregated in one place on the course dashboard, so you can easily see what&rsquo;s available offline.</p>

<p>We hope these new features make learning on mobile even more convenient and productive for you!</p>
', CAST(N'2022-03-12' AS Date), 1, 4)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Price_Package] ON 

INSERT [dbo].[Price_Package] ([package_id], [package_name], [duration], [pack_status], [multiple], [description]) VALUES (1, N'Free', 1200, NULL, 0, NULL)
INSERT [dbo].[Price_Package] ([package_id], [package_name], [duration], [pack_status], [multiple], [description]) VALUES (2, N'Silver', 3, NULL, 0.8, NULL)
INSERT [dbo].[Price_Package] ([package_id], [package_name], [duration], [pack_status], [multiple], [description]) VALUES (3, N'Gold', 6, NULL, 1.2, NULL)
INSERT [dbo].[Price_Package] ([package_id], [package_name], [duration], [pack_status], [multiple], [description]) VALUES (4, N'Diamond', 1200, NULL, 1.6, NULL)
SET IDENTITY_INSERT [dbo].[Price_Package] OFF
GO
SET IDENTITY_INSERT [dbo].[Ques_Result] ON 

INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (1, 21, 8, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (2, 22, 8, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (3, 23, 8, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (4, 24, 8, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (5, 25, 8, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (6, 26, 8, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (7, 27, 8, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (8, 28, 8, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (9, 29, 8, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (10, 30, 8, 1, 0, 3, 1)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (11, 1, 10, 1, 0, 3, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (12, 2, 10, 1, 0, 4, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (13, 3, 10, 1, 0, 1, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (14, 4, 10, 1, 0, 3, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (15, 5, 10, 1, 0, 2, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (16, 6, 10, 1, 0, 1, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (17, 7, 10, 1, 0, 3, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (18, 8, 10, 1, 0, 4, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (19, 9, 10, 1, 0, 1, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (20, 10, 10, 1, 0, 1, 2)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (21, 21, 8, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (22, 22, 8, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (23, 23, 8, 1, 1, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (24, 24, 8, 1, 0, 3, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (25, 25, 8, 1, 0, 3, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (26, 26, 8, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (27, 27, 8, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (28, 28, 8, 1, 0, 4, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (29, 29, 8, 1, 0, 2, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (30, 30, 8, 1, 0, 1, 3)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (31, 31, 8, 1, 0, 3, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (32, 32, 8, 1, 1, 3, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (33, 33, 8, 1, 0, 3, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (34, 34, 8, 1, 0, 2, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (35, 35, 8, 1, 0, 3, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (36, 36, 8, 1, 0, 3, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (37, 37, 8, 1, 0, 1, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (38, 38, 8, 1, 0, 2, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (39, 39, 8, 1, 0, 2, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (40, 40, 8, 0, 0, 0, 4)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (41, 21, 8, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (42, 22, 8, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (43, 23, 8, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (44, 24, 8, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (45, 25, 8, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (46, 26, 8, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (47, 27, 8, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (48, 28, 8, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (49, 29, 8, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (50, 30, 8, 0, 0, 0, 5)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (51, 1, 27, 1, 0, 3, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (52, 2, 27, 0, 0, 0, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (53, 3, 27, 1, 1, 1, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (54, 4, 27, 0, 1, 0, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (55, 5, 27, 1, 0, 4, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (56, 6, 27, 1, 0, 4, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (57, 7, 27, 1, 0, 4, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (58, 8, 27, 1, 0, 1, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (59, 9, 27, 1, 0, 1, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (60, 10, 27, 1, 0, 1, 6)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (61, 141, 27, 1, 0, 1, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (62, 142, 27, 0, 1, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (63, 143, 27, 1, 0, 1, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (64, 144, 27, 0, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (65, 145, 27, 1, 0, 1, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (66, 146, 27, 0, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (67, 147, 27, 0, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (68, 148, 27, 0, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (69, 149, 27, 0, 0, 0, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (70, 150, 27, 1, 0, 4, 7)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (71, 21, 27, 1, 0, 1, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (72, 22, 27, 1, 0, 1, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (73, 23, 27, 1, 0, 2, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (74, 24, 27, 1, 0, 2, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (75, 25, 27, 1, 0, 3, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (76, 26, 27, 0, 0, 0, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (77, 27, 27, 0, 0, 0, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (78, 28, 27, 0, 0, 0, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (79, 29, 27, 0, 0, 0, 8)
INSERT [dbo].[Ques_Result] ([ques_result_id], [ques_id], [user_id], [ques_status], [ques_flag], [ques_answer], [quiz_result_id]) VALUES (80, 30, 27, 0, 0, 0, 8)
SET IDENTITY_INSERT [dbo].[Ques_Result] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (1, N'Who is the father of C language? | Steve Jobs | James Gosling | Dennis Ritchie | Rasmus Lerdorf ', 3, N'<p>Dennis Ritchie is the father of C Programming Language. C programming language was developed in 1972 at American Telephone &amp; Telegraph Bell Laboratories of USA.</p>
', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (2, N'Which of the following is not a valid C variable name?
 | int number
 | float rate
 | int variable_count
 | int $main', 4, N'Since only underscore and no other special character is allowed in a variable name, it results in an error.', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (3, N'All keywords in C are in ____________? | LowerCase letters | UpperCase letters | CamelCase letters | None of the mentioned ', 1, N'<p>None.</p>
', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (4, N'Which of the following is true for variable names in C?
 | They can contain alphanumeric characters as well as special characters
 | It is not an error to declare a variable to be one of the keywords(like goto, static)
 | Variable names cannot start with a digit
 | Variable can be of any length', 3, N'According to the syntax for C variable name, it cannot start with a digit.', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (5, N'Which is valid C expression? | int my_num = 100,000
 | int my_num = 100000 | int my num = 1000; | int $my_num = 10000', 2, N'Space, comma and $ cannot be used in a variable name.', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (6, N'Which of the following cannot be a variable name in C?
 | volatile
 | true
 | friend
 | export', 1, N'volatile is C keyword.', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (7, N'What is short int in C programming?
 | The basic data type of C
 | Qualifier
 | Short is the qualifier and int is the basic data type
| All of the mentioned', 3, N'None.', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (8, N'Which of the following declaration is not supported by C language?
 | String str | char *str
 | float str = 3e2
 | Both String str & float str = 3e2', 1, N'It is legal in Java, but not in C language.', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (9, N'Which keyword is used to prevent any changes in the variable within a C program? | immutable
 | mutable
| const
 | volatile', 3, N'const is a keyword constant in C program.', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (10, N'What is the result of logical or relational expression in C?
 | True or False
 | 0 or 1
 | 0 if an expression is false and any positive number if an expression is true
 | None of the mentioned', 2, N'None.', 1)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (11, N'Which of the following typecasting is accepted by C language? | Widening conversions | Narrowing conversions | Widening & Narrowing conversions | None of the mentioned', 3, N'None.', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (12, N'Where in C the order of precedence of operators do not exist?
 |  Within conditional statements, if, else
 | Within while, do-while
 | Within a macro definition
 | None of the mentioned', 4, N'None.', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (13, N'Which of the following is NOT possible with any 2 operators in C?
 | Different precedence, same associativity
 | Different precedence, different associativity
 | Same precedence, different associativity
 | All of the mentioned', 3, N'None.', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (14, N'What is an example of iteration in C?
 | for
 | while
 | do-while
 | all of the mentioned', 4, N'None.', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (15, N'Functions can return enumeration constants in C?
 | true
 | false
 | depends on the compiler
 | depends on the standard', 1, N'None.', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (16, N'Functions in C Language are always _________? | Internal | External | Both Internal and External | External and Internal are not valid terms for functions ', 2, N'<p>None.</p>
', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (17, N'Which of following is not accepted in C? | static a = 10 //static as
 | static int func (int) //parameter as static | static static int a //a static variable prefixed with static
 | all of the mentioned', 3, N'None.', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (18, N'Property which allows to produce different executable for different platforms in C is called?
 | File inclusion
 | Selective inclusion
 | Conditional compilation
 | Recursive macros', 3, N'Conditional compilation is the preprocessor facility to produce a different executable.', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (19, N'What is #include <stdio.h>?
 | Preprocessor directive
 | Inclusion directive
 | File inclusion directive
 | None of the mentioned', 1, N'None.', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (20, N'C preprocessors can have compiler specific features? | True | False | Depends on the standard | Depends on the platform ', 1, N'<p>#pragma is compiler specific feature.</p>
', 2)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (21, N'Who developed Python Programming Language? | Wick van Rossum | Rasmus Lerdorf | Guido van Rossum | Niene Stom ', 3, N'<p>Python language is designed by a Dutch programmer Guido van Rossum in the Netherlands.</p>
', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (22, N'Which type of Programming does Python support?
 | object-oriented programming
 | structured programming
 | functional programming
 | all of the mentioned', 4, N'Python is an interpreted programming language, which supports object-oriented, structured, and functional programming.', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (23, N'Is Python case sensitive when dealing with identifiers?
 | no
 | yes
 | machine dependent
 | none of the mentioned', 1, N'Case is always significant.', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (24, N'Which of the following is the correct extension of the Python file?
 | python | pl
 | py
 | p', 3, N'‘.py’ is the correct extension of the Python file. Python programs can be written in any text editor. To save these programs we need to save in files with file extension ‘.py’.', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (25, N'Is Python code compiled or interpreted?
 | Python code is both compiled and interpreted
 | Python code is neither compiled nor interpreted
 | Python code is only compiled
 | Python code is only interpreted', 2, N'Many languages have been implemented using both compilers and interpreters, including C, Pascal, and Python.', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (26, N'All keywords in Python are in _________? | Capitalized | lower case | UPPER CASE   | None of the mentioned', 4, N'<p>True, False and None are capitalized while the others are in lower case.</p>
', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (27, N'Which of the following is used to define a block of code in Python language?
 | Indentation
 | Key
 | Brackets
 | All of the mentioned', 1, N'In Python, to define a block of code we use indentation. Indentation refers to whitespaces at the beginning of the line.', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (28, N'Which keyword is used for function in Python language?
 | Function
 | Def
 | Fun
 | Define
', 2, N'None.', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (29, N'Which of the following character is used to give single-line comments in Python?
 | //
 | #
 | !
 | /*', 2, N'To write single-line comments in Python use the Numero sign (#) at the beginning of the line. To write multi-line comments, close the text between triple quotes.', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (30, N'Which of the following functions can help us to find the version of python that we are currently working on?
 | sys-version(1)
 | sys-version(0)
 | sys-version()
 | sys-version', 1, N'The function sys.version can help us to find the version of python that we are currently working on.', 3)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (31, N'Which of these in not a core data type? | Lists | Dictionary | Tuples   | Class', 4, N'<p>Class is a user defined data type.</p>
', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (32, N'Given a function that does not return any value, What value is thrown by default when executed in shell? | int | bool | void  | None', 4, N'<p>Python shell throws a NoneType object back.</p>
', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (33, N'Which of the following will run without errors? | round(45,8) | round(6352,8982) | round() | round(7463,1231)', 1, N'Execute help(round) in the shell to get details of the parameters that are passed into the round function.', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (34, N'What is the return type of function id? | int | float | bool | dict', 1, N'Execute help(id) to find out details in python shell.id returns a integer value that is unique.', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (35, N'In order to store values in terms of key and value we use what core data type? | list | tuple | class  | dictionary', 4, N'<p>Dictionary stores values in terms of keys and values.</p>
', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (36, N'Which of the following results in a SyntaxError? | ‘”Once upon a time”, she said| “He said, ‘Yes!''” | ‘3\’|  ”’That’s okay”’    ', 3, N'<p>Carefully look at the colons.</p>
', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (37, N'What is the return value of trunc()? | int| bool | float | None  ', 1, N'<p>Execute help(math.trunc) to get details.</p>
', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (38, N'Which of the following is not a complex number? | k = 2 + 3j | k = complex(2, 3) | k = 2 + 3l | k = 2 + 3J', 3, N'l (or L) stands for long.', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (39, N'What is the type of inf? | Boolean | Integer | Float | Complex', 3, N'Infinity is a special case of floating point numbers. It can be obtained by float(‘inf’).', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (40, N'What does ~4 evaluate to? | -5 | -4 | -3 | 3', 1, N'~x is equivalent to -(x+1).', 4)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (41, N'An algorithm is a _________ set of precise instructions for performing computation? | Infinite | Finite |  Constant | None of the mentioned', 2, N'By the definition of an algorithm.', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (42, N'Out of the following which property algorithms does not share? | Input | Finiteness | Generality | Constancy', 4, N'All the others are the properties of algorithms.', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (43, N'In ________ search each element is compared with x till not found? | Binary | Sequential | Merge | None of the mentioned', 2, N'In linear or sequential search entire list is searched sequentially for x.', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (44, N'If the entire list is searched sequentially without locating x in linear search, the solution is __________? | 0| -1| 1| 2', 1, N'<p>If the element is not found in the entire list, then the solution is 0.</p>
', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (45, N'To sort a list with n elements, the insertion sort begins with the __________ element? | First | Second | Third | Fourth', 2, N'The insertion sort compares the second element with the first element to start sorting.', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (46, N'__________ comparisons required to sort the list 1, 2, 3…….n using insertion sort? | (n2 + n + 2) / 2 | (n3 + n – 2) / 2 | (n2 – n – 2) / 2 | (n2 + n – 2) / 2 ', 4, N'<p>2+3+4+&hellip;.6n = (n2&nbsp;+ n &ndash; 2) / 2.</p>
', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (47, N'The Worst case occurs in linear search algorithm when ____________? | Item is somewhere in the middle of the array | Item is not in the array at all | Item is the last element in the array | Item is the last element in the array or is not there at all', 4, N'The Worst case occur in linear search algorithm when Item is the last element in the array or is not there at all.', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (48, N'List obtained in third pass of selection sort for list 3, 5, 4, 1, 2 is ___________? | 1, 2, 4, 3, 5 | 1, 2, 3, 4, 5 | 1, 5, 4, 3, 2 | 3, 5, 4, 1, 2', 2, N'The selection sort begins with finding the least element in the list. This element is moved to front and then the least element among the remaining elements. Is found and put into the second position and so on.', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (49, N'The operation of processing each element in the list is known as _________? | Sorting | Merging | Inserting | Traversal', 4, N'The operation of processing each element in the list is known as Traversal.', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (50, N'The complexity of Bubble sort algorithm is _________? | O(n) | O(log n) | O(n2) | O(n log n)', 3, N'The complexity of Bubble sort algorithm is O(n2).', 6)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (51, N'Which of the following case does not exist in complexity theory? | Best case | Worst case | Average case | Null case', 4, N'Null case does not exist in complexity Theory.', 16)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (52, N'The complexity of linear search algorithm is _________? | O(n) | O(log n) | O(n2) | O(n log n)', 1, N'The worst case complexity of linear search is O(n).', 16)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (53, N'The complexity of Binary search algorithm is _________? | O(n) | O(log) | O(n2) | O(n log n)', 2, N'The compexity of binary search is O(logn).', 16)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (54, N'The complexity of merge sort algorithm is _________? | O(n) | O(log n) | O(n2) | O(n log n)', 4, N'The worst case complexity for merge sort is O(nlogn).', 16)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (55, N'The complexity of Bubble sort algorithm is _________? | O(n) | O(log n) | O(n2) | O(n log n)', 3, N'The worst case complexity for Bubble sort is O(n2) and best case is O(n).', 16)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (56, N'The Worst case occur in linear search algorithm when _________? | Item is somewhere in the middle of the array | Item is not in the array at all | Item is the last element in the array | Item is the last element in the array or is not there at all', 4, N'The Worst case occur in linear search algorithm when Item is the last element in the array or is not there at all.', 16)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (57, N'The worst case complexity for insertion sort is _________? | O(n) | O(log n) | O(n2) | O(n log n)', 3, N'In worst case nth comparison are required to insert the nth element into correct position.', 16)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (58, N'The complexity of Fibonacci series is _________? | O(2n) | O(log n) | O(n2) | O(n log n)', 1, N'Fibonacci is f(n) = f(n-1) + f(n-2), f(0) = 0, f(1) = 1. Let g(n) = 2n. Now prove inductively that f(n) > = g(n).', 16)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (59, N'The worst case occurs in quick sort when _________? | Pivot is the median of the array | Pivot is the smallest element | Pivot is the middle element | None of the mentioned', 2, N'This happens when the pivot is the smallest (or the largest) element. Then one of the partitions is empty, and we repeat recursively the procedure for N-1 elements.', 16)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (60, N'The worst case complexity of quick sort is _________? | O(n) | O(log n) | O(n2) | O(n log n)', 3, N'The worst case complexity of quick sort is O(n2).', 16)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (61, N'Which of the following mentioned standard Probability density functions is applicable to discrete Random Variables? | Gaussian Distribution | Poisson Distribution | Rayleigh Distribution | Exponential Distribution', 2, N'None.', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (62, N'What is the area under a conditional Cumulative density function? | 0| Infinity | 1| Changes with CDF ', 3, N'<p>Area under any conditional CDF is 1.</p>
', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (63, N'When do the conditional density functions get converted into the marginally density functions? | Only if random variables exhibit statistical dependency | Only if random variables exhibit statistical independency | Only if random variables exhibit deviation from its mean value | If random variables do not exhibit deviation from its mean value', 2, N'None.', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (64, N'Mutually Exclusive events ___________? | Contain all sample points | Contain all common sample points | Does not contain any sample point | Does not contain any common sample point', 4, N'Events are said to be mutually exclusive if they do not have any common sample point.', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (65, N'What would be the probability of an event ‘G’ if H denotes its complement, according to the axioms of probability? | P (G) = 1 / P (H) | P (G) = 1 – P (H) | P (G) = 1 + P (H) | P (G) = P (H)', 2, N'According to the given statement P(G) + P(H) = 1.', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (66, N'A table with all possible value of a random variable and its corresponding probabilities is called ___________? | Probability Mass Function | Probability Density Function | Cumulative distribution function | Probability Distribution', 4, N'The given statement is the definition of a probability distribution.', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (67, N'A variable that can assume any value between two given points is called ___________? | Continuous random variable | Discrete random variable | Irregular random variable | Uncertain random variable', 1, N'This is the definition of a continuous random variable.', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (68, N'If a variable can certain integer values between two given points is called ___________? | Continuous random variable | Discrete random variable | Irregular random variable | Uncertain random variable', 2, N'This is the definition of a discrete random variable.', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (69, N'The expected value of a discrete random variable ‘x’ is given by ___________? | P(x) | ? P(x) | ? x P(x) | 1.0', 3, N'Expected value refers to mean which is given by http://mathurl.com/zqymzn7 in case of discrete probability distribution.', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (70, N'Out of the following values, which one is not possible in probability? | P(x) = 1 | ? x P(x) = 3 | P(x) = 0,9  | P(x) = -0,5', 4, N'<p>In probability P(x) is always greater than or equal to zero.</p>
', 7)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (71, N'If the probability of hitting the target is 0.4, find mean and variance? | 0,4 - 0,24 | 0,6 - 0,24 | 0,4 - 0,16 | 0,6 - 0,16', 1, N'p = 0.4, q = 1-p = 1-0.4 = 0.6. Therefore, mean = p = 0.4 and Variance = p*q = (0.4) (0.6) = 0.24.', 17)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (72, N'If the probability that a bomb dropped from a place will strike the target is 60% and if 10 bombs are dropped, find mean and variance? | 0,6 - 0,24 | 6 - 2,4 | 0,4 - 0,16 | 4 - 1,6', 2, N'Here, p = 60% = 0.6 and q = 1-p = 40% = 0.4 and n = 10. Therefore, mean = np = 6 Variance = npq = (10)(0.6)(0.4) = 2.4.', 17)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (73, N'What is the mean and variance for standard normal distribution? | Mean is 0 and variance is 1 | Mean is 1 and variance is 0 | Mean is 0 and variance is 8 | Mean is 8 and variance is 0', 1, N'The mean and variance for the standard normal distribution is 0 and 1 respectively.', 17)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (74, N'Find ? in Poisson’s distribution if the probabilities of getting a head in biased coin toss as \frac{3}{4} and 6 coins are tossed? | 3,5 | 4,5 | 5,5 | 6,6*3/4', 2, N'p = 3/4, ? = np = (6) 3/4 = 4.5.', 17)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (75, N'Find the mean of tossing 8 coins? | 2| 4| 8| 1', 2, N'<p>p = 1/2, n = 8, q = 1/2. Therefore, mean = np = 8 * 1/2 = 4.</p>
', 17)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (76, N'Mean and variance of Poisson’s distribution is the same? | It''s same | It''s not same | In specification, it''s doesn''t include both | Not at all', 1, N'The mean and variance of Poisson’s distribution are the same which is equal to ?.', 17)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (77, N'Runs scored by batsman in 5 one day matches are 50, 70, 82, 93, and 20. The standard deviation is ______? | 25,79 | 25,49 | 25,29 | 25,69', 1, N'The mean of 5 innings is (50+70+82+93+20)÷5 = 63, S.D = [1/n (x(n)-mean)2]0.5. S.D = 25.79.', 17)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (78, N'Find median and mode of the messages received on 9 consecutive days 15, 11, 9, 5, 18, 4, 15, 13, 17? | 13, 6 | 13, 18 | 18, 15 | 15, 16', 2, N'Arranging the terms in ascending order 4, 5, 9, 11, 13, 14, 15, 18, 18. Median is \(\frac{(n+1)}{2} \) term as n = 9 (odd) = 13. Mode = 18 which is repeated twice.', 17)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (79, N'If E denotes the expectation the variance of a random variable X is denoted as? | (E(X))2 | E(X)2)-(E(X))2 | E(X)2) | 2E(X)', 2, N'By property of Expectation V (X) = E (X2)-(E(X))2.', 17)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (80, N'X is a variate between 0 and 3. The value of E(X2) is ______? | 8| 27| 7| 9', 4, N'<p>Integrating f(x) = x2&nbsp;from 0 to 3 we get E(X2) = 32 = 9.</p>
', 17)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (81, N'How many strings does bass guitar have? | 4| 5| 8| 7', 1, N'<p>If you&#39;re playing a standard bass guitar, you will notice that your bass has only 4 strings. The standard tuning for a 4 string bass is E, A, D, G (the same as the four lowest strings on the guitar but one octave lower). The bass strings are tuned in fourths.</p>
', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (82, N'What is the name of the second string of a standard guitar? | G | B | A | F', 2, N'The 2nd string is tuned to B, so it''s usually referred to as the B string.', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (83, N'Plectrum is another name for which guitar accessory? | Guitar Head | Guitar Pick | Electric Pick-ups | None of all', 2, N'A plectrum is a small flat tool used to pluck or strum a stringed instrument. For hand-held instruments such as guitars and mandolins, the plectrum is often called a pick and is a separate tool held in the player''s hand.', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (84, N'The guitar is a part of which string instrument family? | Chordophone | Idiophones | Electrophones | None of the Above', 1, N'Chordophones are instruments with strings. The strings may be struck with sticks, plucked with the bare fingers or a plectrum, bowed or (in the Aeolian harp, for instance} sounded by wind. The confusing plentitude of stringed instruments can be reduced to four fundamental type: zithers, lutes, lyres, and harps.', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (85, N'How many strings does a guitar usually have? | 4| 5| 6| 7', 3, N'<p>Guitars typically have six strings. Each string has a different thickness.</p>
', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (86, N'When were electric guitars introduced? | 1920s | 1950s | 1930s | 1940s', 3, N'In 1928, instrument makers Stromberg-Voisinet created the first commercially produced electric guitar, four years after Gibson fitted an electromagnetic device to violas and basses that picked up vibrations from the bridges of the instruments and converted them into electrical signals.', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (87, N'How many types of acoustic guitar exist? | 2| 4| 3| 6', 1, N'<p>There are two types of acoustic guitars: classical and steel-string. Classical guitars use nylon strings (as explained above) and steel-string guitars are self-explanatory.</p>
', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (88, N'What is the name of the fourth string of a standard guitar? | B | D | A | F', 2, N'The 4th string is tuned to D, so it''s usually referred to as the D string.', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (89, N'Which guitarist did not play with slides? | Elmore James | Robert Johnson | B B King | None of the Above', 3, N'Over the years, BB has developed one of the most recognizable guitar styles in the world. He borrowed from Blind Lemon Jefferson, T-Bone Walker and others, integrating his precise and complex vocal cord bends and his left hand vibration, both of which have become integral part of the rock guitarist''s vocabulary.', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (90, N'How many frets are there on a standard classical guitar? | 19| 21| 20| 18', 1, N'<p>Standard classical and flamenco guitars have 19 frets, with the guitar neck meeting the body at the 12th fret (at the heel).</p>
', 8)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (91, N'Electronic guitar was invented by? | Charlie Christian | Sir George Beauchamp | Sir Norman Rolston | both a and b', 1, N'It was around 1936 when a jazz guitarist named Charlie Christian (1916-1942) began using an acoustic guitar with a pickup attached to the body, with the intention of playing guitar solos in his band. This is said to be the birth of the electric guitar.', 18)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (92, N'In which one of the following year, an Electric guitar was invented? | 1940s | 1950s | 1900s | 1930s', 4, N'Invented in 1932, the electric guitar was adopted by jazz guitar players, who wanted to play single-note guitar solos in large big band ensembles.', 18)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (93, N'The electric guitar was invented in which one of the following country? | Canada | United States | Germany | Spain', 4, N'The guitar''s roots are in Spain. Realistically, it cannot be traced back further than the 15th Century. It is thought to have been invented by the people of Malaga. This early instrument was a ''four course'' guitar, from which the ukulele is derived. The first guitars were very small, and were originally strung with four pair of strings.', 18)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (94, N'What are the names of the guitar strings in standard tuning? | DADGAD | DFCFAD | EADGBE | DGDGBD', 3, N'When the strings are tuned properly they have a pitch when picked. From the 6th string up the strings are:  E A D G B E. The strings are also named the same.', 18)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (95, N'On the guitar what is the chord if you hold the B and the E notes, and play all the strings? | E Major chord | B Major chord | E Minor Chord | None of the Above', 3, N'When you hold the 5th and 4th string at the 2nd fret, and strum. The chord that is being played is the Em chord. Spelled E minor.', 18)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (96, N'What is the relative minor of C?  | A | Gm | Am | None of the Above', 3, N'Every Major chord has a relative minor.  Am spelled A minor', 18)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (97, N'Your guitar has 6 strings a common gauge of string is 10. What is the meaning of guage when speaking about strings? | Weight of the string | Thickness of the string | Speed of the string | None of the above', 2, N'Gauge is the thickness of the guitar strings. The string has everything to do with the tone of the guitar. The thickness of the string. ', 18)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (98, N'If h is the symbol for Hammer on in Tablature. What is the symbol for pull off? | P O | Po | P | None of the above', 3, N'P is the symbol used in Tab for Pull off. A Pull off on the guitar is when you pick a note, and play another note by “pulling off” the string. So with one pick you are playing two notes. A Pull off is the opposite of a hammer on.', 18)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (99, N'How many notes are in the Em chord? | 2| 3| 6| 5', 3, N'<p>This is a trick question! The notes that are played are the E B E G B E. Even though your fingers are on the second frets of the 5th&nbsp;and 4thstring. You strum all the strings. So you are playing the notes on every string.</p>
', 18)
GO
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (100, N'How many notes are in the A Major open chord? | 3| 4| 5| 2', 3, N'<p>To make an A Major chord in the open position. You have your 1st, 2nd, and 3rd&nbsp;finger on the second fret of the 4th, 3rd&nbsp;and 2nd&nbsp;strings. You start the strum from the 5th&nbsp;string which is the A string. Then you strum all the way down. The notes are A E A C# E.</p>
', 18)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (101, N'What is the first and most common note that music books begin a new piano-learner on, when they are just starting to learn the instrument? | A | B | C | G', 3, N'"Middle C" is the note that most piano players are first taught. When they are beginning to learn the instrument, it helps the player to master the notes of the different scales before moving onto more complicated pieces higher up and lower down the piano.', 19)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (102, N'Which of the following composers never wrote a piano concerto? | Edvard Grieg | Franz Liszt | Claude Debussy | Camille Saint-Saëns', 3, N'Debussy wrote many piano solos, but never a complete piano concerto. The other three, however, wrote many.', 19)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (103, N'What device is used to hit the strings when you press down a key? | Reed | Plectrum | Hammer | Bow', 3, N'Special hammers are used to hit the string using a simple mechanism so that when a key is depressed, the hammer strikes the corresponding string. The hammer then returns to its original position for the next time its note is needed. A plectrum is used to strum guitars, a bow is used on string instruments (e.g. the violin) and reeds are used on woodwind instruments (e.g. clarinets).', 19)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (104, N'How many black keys are there on a standard grand piano? | 36| 47| 25| 58', 1, N'<p>There are 36 black keys and 52 white keys altogether making a total of 88. The black notes are: A#, C#, D#, F# and G# (or Bb, Db, Eb, Gb and Ab respectively); and the white notes are: A, B, C, D, E, F and G.</p>
', 19)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (105, N'The word piano comes from a shortened version of the word ''pianoforte'', so what is the literal Italian translation of ''pianoforte''? | Brave | Loud-quiet | Quiet-loud | Plan', 3, N'''Piano'' is the Italian word for ''soft'' or ''quiet'' and ''forte'' is Italian for ''strong'' or ''loud''. The instrument was called this because it could create a range of dynamics when being played.', 19)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (106, N'Which of the following has piano as their main instrument? | Caoimhín Ó Raghallaigh | Sam "The Man" Taylor | Lang Lang District | Ulf Håkan Hardenberger', 3, N'Láng Láng is a Chinese concert pianist; Sam "The Man" Taylor was an American tenor saxophonist; Ulf Håkan Hardenberger is a Swedish trumpeter and Caoimhín Ó Raghallaigh is an Irish fiddler.', 19)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (107, N'The piano is commonly placed in which section of the orchestra? | Percussion | Woodwind | String | Brass', 1, N'The piano would be in the percussion section as it has hammers inside of it that need to hit the string before the sound can be heard thus classing it as percussion. Piano soloists would, of course, be seated at the front of the orchestra instead of with the percussion section.', 19)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (108, N'What is the lowest note on most pianos? | B | A | C | D', 2, N'On most pianos, the lowest note is an ''A''. This note was chosen to be the lowest note because the sound becomes too weak for the average human ear to tell the difference between notes lower than it.', 19)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (109, N'Which of these is a famous piano manufacturer? | Steinway & Sons | Wakana & Sons | Dolgoch & Sons | Xavier & Sons', 1, N'Steinway is the only true piano ''brand'' in the list. Dolgoch is simply a Welsh name, Wakana a Japanese name and Xavier a French name.', 19)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (110, N'Which of the following is NOT used in the construction of pianos? | Mahogany | Hard Maple | Sugar Pine | Bamboo', 4, N'Mahogany is used for legs, key-bed mouldings, pedal lyres and cross-banding veneer. Sugar pine is used for soundboard ribs. Hard maple is used for action parts, wrest planks, bridges and rims.', 19)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (111, N'The black keys are used to play? | vibrato | baseball | sustained notes | sharps and flats', 1, N'The key signature will determine how many sharps or flats you will encounter in a piece.', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (112, N'This famous Hungarian composer was a very showy piano player, and is known for being the first to play a concert by memory. Roger Daltry played him in a movie loosely based on his life? | Liszt | Beethoven | Chopin | Stream', 1, N'Born in 1811, he has long been considered the greatest piano player of all time. He was somewhat of an idol among the aristocracy. Towards the end of his life, Liszt became an abbe, devoting his life to the church.', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (113, N'Sound on the piano is produced when ______ hit the strings? | dampers | keys | hammers | fingers', 3, N'When a key is depressed, it activates the hammer, causing it to hit the strings, which vibrate, producing sound. (This, of course, is a very simplified version of the production of sound in the piano.) The piano contains around 7500 parts, each of which plays a role in getting the hammers to hit the strings, and then to pop back up again quickly.', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (114, N'What were the keys of a piano originally made from? | plastic and bone | stone and bone | sugar and spice | ebony and ivory', 4, N'Due to bans on the importation of ivory, and the expense and rarity of ebony, keys now are mostly made from plastic. Plastic has been used since around the 1950s.', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (115, N'His famous piano sonatas include the "Moonlight Sonata" and the "Pathetique"? | Beethoven | Stream | Mozart | Trade', 1, N'These are some of the best loved piano pieces of all time.', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (116, N'We all know that the full name of the piano is the "Pianoforte." What does this name mean? | Loudsoft | Hammerkeys | Hammerstrings | Softloud', 4, N'It was given this name because, unlike the harpsichord and other similar instruments of the time, the pianoforte could play, as the name suggests, both loudly and softly. This name was given to the piano by its inventor, Bartolomeo Cristoforti, who built the first practical piano in the 1700s.', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (117, N'Which of these famous jazz musicians was best known as a pianist? | Benny Goodman | Charlie Parker | Thelonious Monk | Dizzy Gillespie', 3, N'Parker played the saxophone, Gillespie the trumpet and Goodman the clarinet. Monk was an eccentric fellow, and can often be heard humming along to the music on such famous songs as "Tinkle Trinkle" and "Straight No Chaser."', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (118, N'The first song a person learns to play on the piano is usually in this key, which has no sharps or flats in its key signature? | A major | e-flat minor | C major | D major', 3, N'The first song I learned on the piano was called "Stepping Up" and basically featured a five note scale from C to G.', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (119, N'If you''re going to see a piano concerto performed at the symphony, what type of piano is the pianist most likely to play? | Apartment-size | Baby Grand | Concert Grand | Upright', 3, N'The Grand piano is the largest of all pianos and has the richest sound. A Grand Piano is one that is 8''11" or longer. The model D Steinway Grand weighs over 1400 pounds, and the average concert grand contains over thirty tons of total string tension. You''ve got to have a big instrument to handle that!', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (120, N'What famous piano making company did Engleherd Steinweg found? | Yamaha | Roland | Williams and Sons | Steinway', 4, N'He Anglicized the name in 1850. Steinway is perhaps the best known piano manufacturer.', 9)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (121, N'They _____ in the basement for three months? | were made sleeping | were made sleep | were made to sleep | made to sleep', 3, N'We can use the verbs let, make, and help followed by object + infinitive without to. However, when we use the verb make in the passive voice, we say be made + to infinitive.', 20)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (122, N'We''ll never know what might have happened _____ the email earlier. | if he sent | had he sent | if he has sent | did he sent', 2, N'This is a third conditional sentence. In third conditional sentences, we can invert the auxiliary verb had and leave if out. Had we arrived = If we had arrived.', 20)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (123, N'If success _____, we need to prepare ourselves for every possible scenario? | is to be achieved | is achieved | will be achieved | is due to achieve', 1, N'We often use be to + infinitive in a if-clause. In these cases, we say what should be done (main clause) to achieve the desired result (if-clause).', 20)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (124, N'______ gifts to the judges? | It''s not allowed offering | It''s not permitted to offer | It''s not permitted offering | It''s not allowed to offer', 2, N'We can use it + be (not) permitted to +infinitive to express permission or prohibition in formal or official situations, to say what the rules or laws are. We do NOT use it + be able to/be allowed to.', 20)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (125, N'I''m very happy _____ in India. I really miss being there? | to live | to have lived | to be lived | to be living', 2, N'We use the perfect infinitive or the perfect gerund of a verb to talk about a past action or event. In this sentence, we mean that I lived in India in the past, but not anymore. We normally use to + infinitive after adjectives.', 20)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (126, N'_____ forced to do anything. He acted of his own free will? | In no way was he | No way he was | In any way he was | In any way was he', 1, N'In formal English we can place a negative or restrictive adverb at the beginning of a sentence to make the sentence more emphatic or dramatic. When we do this, the adverb is then followed by auxiliary verb + subject. When there is no auxiliary verb, we use do/does (present) or did (past) as auxiliary.', 20)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (127, N'I wish I _____ those words. But now it''s too late? | not having said | have never said | never said | had never said', 4, N'We can use wish + past perfect to talk about things that happened in the past and that we regret (we would have wanted them to be different).', 20)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (128, N'She was working on her computer with her baby next to _____? | herself | her | her own | hers', 2, N'We can use reflexive pronouns after most prepositions, but we don’t use reflexive pronouns after prepositions of place; we use object pronouns instead.', 20)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (129, N'_____ in trying to solve this problem. It''s clearly unsolvable? | There''s no point | It''s no point | There isn''t point | It''s no need', 1, N'We often use there with use, point and need.', 20)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (130, N'He _____ robbed as he was walking out of the bank? | had | did | got | were', 3, N'In informal English, we can use get in passive voice sentences instead of be.', 20)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (131, N'I''m very happy _____ in India. I really miss being there? | to live | to have lived | to be lived | to be living', 2, N'We use the perfect infinitive or the perfect gerund of a verb to talk about a past action or event. In this sentence, we mean that I lived in India in the past, but not anymore. We normally use to + infinitive after adjectives.', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (132, N'They didn''t reach an agreement ______ their differences? | on account of | due | because | owing', 1, N'We can use because of, due to, owing to, or on account of + noun to express reason.', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (133, N'I wish I _____ those words. But now it''s too late? | not having said | have never said | never said | had never said', 4, N'We can use wish + past perfect to talk about things that happened in the past and that we regret (we would have wanted them to be different).', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (134, N'The woman, who has been missing for 10 days, is believed _____? | to be abducted | to be abducting | to have been abducted | to have been abducting', 3, N'After the passive form of a reporting verb, we use the perfect infinitive  when the reported action is previous to the reporting (earlier in the past).', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (135, N'_____ to offend anyone, she said both cakes were equally good? | Not wanting | As not wanting | She didn''t want | Because not wanting', 1, N'We can use –ing participle clauses to refer to the present or the past.', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (136, N'Last year, when I last met her, she told me she _____ a letter every day for the last two months? | had written | has written | had been writing | wrote', 3, N'We use the past perfect continuous with dynamic verbs to talk about repeated actions from earlier in the past.', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (137, N'It _____ the best idea to pay for those tickets by credit card. It was too risky? | may not have been | may not be | might not be | must not have been', 1, N'We use might/may have + past participle or might/may have been + -ing to say that it’s possible that something was true or happened in the past.', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (138, N'He has never wished............any reward although he has served suffering humanity throughout his life? | to | of | at | for', 4, N'None.', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (139, N'Choose the wrong portion in each of the following sentences : She gave (a)/ me a ten (b)/ rupees note.(c)/ No error. (d)? | A | B | C | D', 3, N'Use rupee in place of rupees.', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (140, N'Change the voice : Don’t laugh at me? | Let me be laughed at | Let me be not laughed at | I am laughed at | Let me be not laughed', 2, N'This type of active passive voice comes under imperative sentences. So it would be. Let me be not laughed at.', 10)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (141, N'What do you say when you answer the phone? | madamada | damedame | sorosoro | moshimoshi', 4, N'The phrase “moshi moshi” comes from “moushimasu” (which means “I am speaking”), and is only used when answering the phone. “Moshi moshi” is said to have come from the verb “mousu” being used twice, “mousu mousu”, which eventually changed to “moshi moshi” over time.', 21)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (142, N'Which expression do you use before a meal? | yososhiku | itadaima | gochisousama  | itadakimasu', 4, N'<p>&ldquo;Itadakimasu&rdquo;, literally translates to &ldquo;I am receving this&rdquo;, and is an expression of gratitude used before eating a meal. After eating, the expression &ldquo;gochisousama&rdquo; is used.</p>
', 21)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (143, N'Which greeting is spoken by a samurai? | gokigenikagadegozaruka | gokigenyo | ohayo | yokitano', 1, N'“Gozaru” was widely used in the 14th century, and is the polite form of the currently used “desu”. This form can still be seen within the greeting “ohayou gozaimasu”.', 21)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (144, N'How many types of letters are there in Japanese? | hitotsu | futatsu | mitsu | yotsu ', 3, N'<p>In Japanese, there are three types of letters, Hiragana, Katakana, and Kanji. Originally in Japanese there were no letters, until monks adopted Kanji from Chinese characters. Hiragana and Katakana were then created from Kanji.</p>
', 21)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (145, N'How many hiragana are there? | 40| 46| 50| 56', 2, N'<p>This doesn&rsquo;t include &ldquo;dakuon&rdquo; (such as &ldquo;da&rdquo; ), &ldquo;handakuon&rdquo; (such as &ldquo;pa&rdquo;), or &ldquo;yo-on&rdquo; (such as &ldquo;kya&rdquo;).</p>
', 21)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (146, N'Which number is 8? | hachi | ichi | shichi | jyu', 1, N'The kanji for 8 originally had the meaning “to split”. This is said to be because the number 8 can be split evenly in half from 8 to 4, 4 to 2, and 2 to 1. Nowadays in Japan, the kanji for 8 , due to the fact that it starts off small at the top and becomes larger at the bottom.', 21)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (147, N'There are kanji for countries in Japanese. Which one is Australia? | betonamu | rosia | nihong | furansi', 2, N'In Chinese, the names of foreign countries are all written in kanji (Chinese characters), and these exactv characters were also adopted in the Japanese language. ', 21)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (148, N'What is McDonalds called in Tokyo? | makku | makkazu | makudo | makki', 1, N'In the eastern parts of Japan, McDonalds is called “Makku”, while in the western parts it is called “Makudo”.', 21)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (149, N'What’s inside? | tako | ika | ebi | kaki', 1, N'This food is called because it contains tako, octopus.', 21)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (150, N'What is this dish called? | sashimi | sukiyaki | sushi | teriyaki', 1, N'Sashimi is fresh raw fish eaten after dipping in soy sauce with wasabi. Sushi also usually uses raw fish, but the difference is that the piece of fish is placed on top of vinegared rice.', 21)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (151, N'Which of the following is the correct depiction of Digital Marketing? | E-mail Marketing | Social Media Marketing | Web Marketing | All of the above', 4, N'Digital marketing refers to a process of promoting content, videos, products, services, etc., thru social media marketing, e-mail marketing, web marketing, affiliate marketing, etc.', 22)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (152, N'__________ doesn''t fall under the category of digital marketing? | TV | Billboard | Radio | All of the above', 4, N'All the given options are totally irrelevant to the concept of digital marketing.', 22)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (153, N'Which of the following is incorrect about digital marketing? | Digital marketing can only be done offline | Digital marketing cannot be done offline | Digital marketing requires electronic devices for promoting goods and services | In general, digital marketing can be understood as online marketing, web marketing, and e-mail marketing', 2, N'Digital marketing can be done both online and offline.', 22)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (154, N'How many types of pillars do we have in digital marketing? | 1| 2| 3| 4', 2, N'<p>There are two main pillars in digital marketing such as online marketing and offline marketing.</p>
', 22)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (155, N'Which of the following is involved in the digital marketing process? | RSA | Voice Broadcasting | Podcasting | All of the above', 4, N'Digital marketing includes e-mail marketing, RSS, voice broadcast, fax broadcast, blogging, podcasting, video streams, wireless text messaging, affiliate marketing, social media marketing, and instant messaging.', 22)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (156, N'What is considered while creating a front page of the website or homepage? | References of other websites | A brief elaboration about the company | Logos portraying the number of awards won by the web designer | None of the above', 4, N'All the options explained above are irrelevant in terms of the company''s front or homepage.', 22)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (157, N'What is the name of the process in which marketing is achieved by incorporating tools, techniques, electronic devices, technologies, or systems? | Internet Marketing | Direct Marketing | Electronic Marketing | Interactive Marketing', 3, N'Electronic marketing refers to the application of marketing principles and techniques via electronic media and, more specifically, the Internet.', 22)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (158, N'Which of the following is not specifically required by the search engines? | Poor user experience | Keyword stuffing | Buying links | All of the above', 4, N'The search engine does not necessitate poor user experience, keyword stuffing, and buying links.', 22)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (159, N'Which of the following factors are responsible for leaving an impact on the Google PageRank? | The text depicting inbound links to a page of a website | A total number of inbound links to a website''s page | The subject matter of the site providing the inbound link to a page of a website | The number of outbound links on the page that contains the inbound link to a page of a website', 2, N'The total number of inbound links to a website''s page impacts the Google Page Rank.', 22)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (160, N'The full form of FFA page is __________? | Free for All Links | Free for Alexa | Free for Alternative Links | Free for All Search Engine', 1, N'The correct abbreviation of FFA is Free for All links, where the webpages enable everyone to submit his/her web site''s URL in their own website for free.', 22)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (161, N'The user session can be identified by the __________? | Authenticate users | IP Address | User Agent | All of the above', 4, N'The user session can be identified with the help of authenticating users, IP address, and user agent as well.', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (162, N'What is the need to analyze digital analytics? | For making better decisions related to the business | For generating higher revenue from the website | To define genuine customers for your business | For appealing more users to drive more traffic', 1, N'None.', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (163, N'Google Analytics can never recognize returning users on mobile apps? | True | False | Can be true or false | Not defined', 2, N'Google Analytics is a tool provided by Google for analyzing the client or user behavior on your website.', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (164, N'Which of the following option will correctly give the success rate of the latest Facebook post? | Click-through and pageviews | Impressions and click-through | Likes and Impressions | Reach and engagement', 4, N'In terms of Facebook or any other social media platform, reach refers to the total number of people to which your ad or post has reached. However, engagement is the term that refers to the total number of people who got engaged on your post.', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (165, N'The hyperlink refers to a __________? | Inbound link | Outbound link | IFTTT link | KPI link', 1, N'The hyperlink refers to an inbound link, which is nothing but a hyperlink present on the third-party website points to your website''s webpage.', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (166, N'What is the correct abbreviation of SERP? | Search Engine Result Page | System Engine Random Page | Search Estimate Result Page | System Estimate Random Page', 1, N'None.', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (167, N'The main advantage of online advertisement is __________? | Low-cost promotional strategy | Online advertising is promotional as well as informational | Trackable | All of the above', 4, N'Following are the main advantages of online advertisement: More interactive, Low-risk factor, Increased product and service exposure to the market Easy to collect the data.', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (168, N'Where do we use keywords? | Tags | Title | Description | All of the above', 4, N'Keywords can be used in the title, in the description, and in tags. While ranking your videos, crawlers never view or listen to your video; instead, they depend on the keywords present in the title, description, and tags as they are self-explanatory.', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (169, N'How many lines are essentially required to write in the description box of a channel? | 5| 2| 3| 1', 1, N'<p>The First 5 lines play an essential role while writing the channel&#39;s description as the initial two lines are shown next to the video in the search bar or when it gets posted on social media. However, as a whole, the first 5 lines are included, shown below the video and above the read more tab.</p>
', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (170, N' __________ falls under the A/B testing tools? | Google Content Experiments | Visual Website Optimizer | Both (a) and (b) | None of the above', 3, N'Visual Website optimizer (VWO), Google Content Experiments, and Optimizely are the most commonly used A/B testing tools.', 12)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (171, N'The portfolio theory articulates diversification to reduce which of the following risks? | Market risk  | Financial risk | Unsystematic risk | Business risk', 3, N'The portfolio diversification theory used today was first established by economist Harry Markowitz. Labeled the modern portfolio theory, this particular set of equations and principles helps investors better understand how to create a diversified portfolio that mitigates against volatility and risk.', 23)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (172, N'X Ltd. forfeited 40 shares of Rs. 10 each and on which Rs. 4 per share were paid. If the forfeited shares reissued as Rs. 8 per share paid up, what is the minimum price the company must charge? | Rs 2 per share | Rs 4 per share | Rs 8 per share | Rs 10 per share', 2, N'A company can re-issue these shares at any price but the total amount received on these shares should not be less than the amount in arrears on these shares. Here, the total amount refers to the amount received from the original allottee and the second purchaser.', 23)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (173, N'Political risk management comes in the ambit of which of the following financial decisions? | Non - conventional capital budgeting | International currency arbitrage | Foreign exchange market | Multinational capital budgeting', 4, N'Capital budgeting is the process a business undertakes to evaluate potential major projects or investments. Construction of a new plant or a big investment in an outside venture are examples of projects that would require capital budgeting before they are approved or rejected.', 23)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (174, N'Investment is the _______________? | net additions made to the nation’s capital stocks | person’s commitment to buy a flat or house | employment of funds on assets to earn returns | employment of funds on goods and services that are used in production process', 3, N'Investment is the employment of funds on assets to earn returns. An investment is a monetary asset purchased with the idea that the asset will provide income in the future or will later be sold at a higher price for a profit.', 23)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (175, N'Financial Management is mainly concerned with ______________? | All aspects of acquiring and utilizing financial resources for firms activities | Arrangement of funds | Efficient Management of every business | Profit maximization', 1, N'Financial Management is mainly concerned with all aspects of acquiring and utilizing financial resources for firms activities. Financial Management is the application of general principles of management to the financial possessions of an enterprise.', 23)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (176, N'The primary goal of the financial management is ____________? | to maximize the return | to minimize the risk | to maximize the wealth of owners | to maximize profit', 3, N'The primary goal of the financial management is to maximize the wealth of owners. All businesses aim to maximize their profits, minimize their expenses and maximize their market share.', 23)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (177, N'In his traditional role the finance manager is responsible for ___________? | proper utilisation of funds | arrangement of financial resources | acquiring capital assets of the organization | efficient management of capital', 2, N'In his traditional role the finance manager is responsible for arrangement of financial resources. Financial managers are responsible for the financial health of an organization. They produce financial reports, direct investment activities, and develop strategies and plans for the long-term financial goals of their organization.', 23)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (178, N'Market value of the shares are decided by ____________? | the respective companies | the investment market | the government | shareholders', 2, N'Market value of the shares are decided by the investment market. Market value is the price an asset would fetch in the marketplace.', 23)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (179, N'Which one of the following is not a money market securities? | Treasury bills | National savings certificate | Certificate of deposit | Commercial paper', 2, N'National savings certificate is not a money market securities. The National Savings Certificate is a fixed income investment scheme that you can open with any post office.', 23)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (180, N'Capital budgeting is related to _______? | long terms assets | short term assets | long terms and short terms assets | fixed assets', 1, N'Capital budgeting is related to long terms assets. Capital budgeting is the process a business undertakes to evaluate potential major projects or investments.', 23)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (181, N'As of August 2018, who among the following is the Chairman of SEBI? | Sanjeev Kaushik | U. K. Sinha | C. B. Bhav | Ajay Tyagi', 4, N'Ajay Tyagi was appointed as the chairman of SEBI and took charge on March 1, 2017. He was the 9th chairman of the SEBI. SEBI is the protector of the security market in India. It saves the interests of the investors in the capital market of India.', 13)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (182, N'Taking profit from differences in prices or returns in different markets is called ____? | Two-sided sales  | Take advantage of the situation | Futures for protection against financial loss | Arbitration', 4, N'Taking profit from differences in prices or returns in different markets is called Arbitrage.', 13)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (183, N'As per the Union Budget 2022, how many percent tax will be levied on income from transfer of digital assets (Cryptocurrency) or any virtual asset? | 20 percent | 5 percent | 30 percent | 10 percent', 3, N'Income from the transfer of any virtual assets will be taxed at 30 per cent. No deduction except the cost of acquisition will be allowed and no loss in the transaction will be allowed to be carried forward, announced in Budget 2022.', 13)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (184, N'In economics dictionary, what is the full form of NSDL? | National Securities Depository Limited | National Share Depository Limited | National Securities Development Limited | National Share Development Limited', 1, N'National Securities Depositories Limited (NSDL) is the first and largest depository presently operational in India. The enactment of the Depositories Act in August 1996 paved the way for the establishment of NSDL.', 13)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (185, N'In which year was the Securities Appellate Tribunal (SAT) established in India? | 1990| 1992| 1994| 1997', 2, N'<p>Securities Appellate Tribunal is a statutory body established under the provisions of Section 15K of the Securities and Exchange Board of India Act, 1992.</p>
', 13)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (186, N'As per the Union Budget 2022, how many crore has been made to cover 3.8 crore households in 2022-23 under Har Ghar, Nal Se Jal Scheme? | 100,000 crore | 20,000 crore | 50,000 crore | 60,000 crore', 4, N'An allocation of Rs 60,000 crore has been made to cover 3.8 crore households in 2022-23 under Har Ghar, Nal Se Jal Scheme. Finance Minister said that the current coverage of Har Ghar, Nal Se Jal is 8.7 crores.', 13)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (187, N'In the Union Budget 2022, both Centre and States government employees’ tax deduction limit has been increased from existing 10 percent to ___________ ? | 19 percent | 15 percent | 14 percent | 18 percent', 3, N'A new tax rule for taxpayers was also announced where a taxpayer can file an updated return on payment of taxes within two years from the end of the relevant assessment year.', 13)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (188, N'_______ refers to the funds, which an organisation must possess to finance its day to day operations? | Fixed capital | Working capital | Retained earnings | None of the above', 2, N'There are various categories from where funds can be financed for starting and for running an organization. The financial needs of an organization can be categorized: this is known as the working capital of an enterprise, which is used for holding current assets such as stock of material, bills receivables.', 13)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (189, N'In which year the Securities and Exchange Board of India was established? | 1988| 1990| 1992| 1994', 3, N'<p>The Securities and Exchange Board of India (SEBI) is the regulatory body for the securities and commodity markets in India under the jurisdiction of the Ministry of Finance, Government of India: the Securities and Exchange Board of India was constituted as a non-statutory body on April 12, 1988, through a resolution of the Government of India.</p>
', 13)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (190, N'Which parameter is NOT considered in the cash flow statement?  | Trading activities | Operating activities | Financing activities | Investing activities', 1, N'Cash equivalents are short-term financing activities investment securities with assets; they have a high credit rating and are extremely liquid. Cash equivalents, also known as "cash and equivalents," are one of the three main asset classes in financial investment along with stocks and bonds.', 13)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (211, N'What is Human Anatomy? | Human anatomy is the study of the functions of body parts | Human anatomy is the study of the structure of the human body | Human anatomy is the study of bacteria and viruses | Human anatomy is the study of disease and its causes', 2, N'Human anatomy is the study of internal and external structures of the human body and the relationship between its body parts.', 25)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (212, N'What is Human Physiology? | Human physiology is the scientific study of the mind and behavior | Human physiology is the study of the internal and external structures of the human body | Human physiology is the study of the functions of body parts | Human physiology is the study of microscopic organisms', 2, N'Human physiology is the study of how parts of the body and the whole body function.', 25)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (213, N'Which of the following part of human skeleton forms the helmet for the protection of human brain? | Cranium | Temporal bone | Hyoid | Mandible', 1, N'Cranium (brain box) is the large and hollow part of the human skull that encloses and protects the human brain in the cranial cavity.', 25)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (214, N'Which of the following type of cartilage is present at the joints of long bones in humans? | Fibrous | Hyaline | Elastic | Calcified', 2, N'Hyaline is present at the joints of long bones.', 25)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (215, N'Which of the following human ligament is called y shaped ligament of Bigelow? | The glenoidal labrum | The Ischiocapsular | Illiofemoral ligament | The Pubocapsular', 3, N'Illiofemoral ligament is a band of great strength which lies in front of joint. It is intimately connected with capsule and serves to strengthen it.', 25)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (216, N'Which of the following structures keep blood flowing unidirectionally in humans? | Bronchiole | Neuron | Septum | Valves', 4, N'Valve normally allows blood to flow in only one direction. There are 4 valves in the human heart. A heart valve opens or closes on differential blood pressure on each side.', 25)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (217, N'Which of the following is the vestigial bony part of the human skeleton? | Cranium | Coccyx | Cervical | Clavicle', 2, N'Vestigial structures are body parts that seemingly have no purpose or function. The coccyx is commonly called as tailbone and is the final segment of the vertebral column in humans.', 25)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (218, N'Which of the following clinical sign indicates ischaemia of forearm? | Carpel tunnel syndrome | Hand of benediction | Ulnar claw | Volkmann’s Contracture', 4, N'Volkmann’s Contracture is a permanent flexion contracture of the hand at the wrist resulting in a claw like deformity of the hand and finger. Passive extension of fingers is restricted and painful.', 25)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (219, N'Which of the following is the structural and functional unit of the human nervous system? | Brain | Axon | Dendron | Neuron', 4, N'Neuron is the nerve cell with all its branches. It is the structural and functional unit of the nervous system and is the longest sized (100cm) body cell of human.', 25)
GO
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (220, N'Which of the following is a balancing organ in humans? | Eardrum | Vestibular region | Cochlea | Organ of corti', 2, N'Vestibule is the central art of inner ear and is situated medial to eardrum behind cochlea. It contains organ of hearing (cochlea) and organ of balance (labyrinth).', 25)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (221, N'How many bones does an adult human skeleton have? | 205| 207| 209| 206', 4, N'<p>In the skeleton of the adult human, there are 206 distinct bones, and the bifurcation is given: Vertebral column &ndash; 26, Skull &ndash; 22, Hyoid bone &ndash; 1, Ribs and sternum &ndash; 25, Upper extremities &ndash; 64, Lower extremities &ndash; 62, Auditory ossicles &ndash; 6.</p>
', 15)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (222, N'How many bones does human ankle has? | 7| 6| 9| 8', 1, N'<p>Ankle in humans is also called tarsus has seven bones called tarsal&rsquo;s. It is arranged in three rows having gliding joints.</p>
', 15)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (223, N'What does corpus callosum connects in human brain? | Two optic lobes | Bone and muscle | Two cerebral hemisphere | Two lobes of pituitary gland', 3, N'Corpus callosum is a part of the mind that allows communication between two hemispheres of the brain. It is responsible for transmitting neural messages between both right and left hemisphere.', 15)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (224, N'How many pairs of the spinal nerve are found in human? | 33| 31| 13| 12', 2, N'<p>Spinal nerve arises from spinal cord. In humans, there are 31 pairs. They are 8 cervical, 12 thoracis, 5 lumbar, 5 sacral, and 1 coccygeal. Each pair connects spinal cord with specific region of the body.</p>
', 15)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (225, N'Human placenta is derived from _____________? | amnion | chorion | allantois and chorion | allantois', 2, N'Human placenta is derived from Chorion. The chorion and amnion together forms amniotic sac.', 15)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (226, N'What is a human heart made up of? | Tissues | Muscle | Skin | Bone', 2, N'The heart is made up of muscles. It is an involuntary organ. The heart is made up of muscle called as myocardium.', 15)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (227, N'Which of the following instrument is used to listen to the internal sounds of the human body? | Sphygmomanometer | Suction device | Stethoscope | Reflex hammer', 3, N'Stethoscope is an acoustic medical device for auscultation. It has a small disc shaped resonator that is placed against the chest and two tubes connected to earpieces.', 15)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (228, N'Which of the following human cells produce insulin? | Beta cells | F cells | Alpha cells | Delta cells', 3, N'Alpha cells are present in the Islets of Langerhans. They make up to 20% of human islet cells and synthesize insulin hormone.', 15)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (229, N'Detoxification of lipid drugs and other harmful compounds in ER is carried out by? | Cytochrome D | Cytochrome F | Cytochrome bf | Cytochrome P450', 4, N'Cytochrome P450 enzymes function to metabolize potentially toxic compounds. There are 57 human genes coding for various cytochrome450.', 15)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (230, N'Division of human egg is __________? | Holoblastic and equal | Holoblastic and unequal | Isoblastic | Meroblastic', 2, N'Division of human egg is Holoblastic and unequal. Holoblastic cleavage is seen in the eggs containing moderate to sparse amount of yolk. Holoblastic cleavage is the complete division of an isolecithal or microlecithal egg into blastomeres.', 15)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (231, N'You''re in Tokyo on your way to work. On the early morning train, you see your friend. What do you say? | konbanwa | ohayo | moshimoshi | konnichiha', 2, N'The correct answer is ohayou which means good morning!', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (232, N'Your friend asks: How are you? What''s your reply? | okdesu | desune | godesune | omedetogozaimasu', 3, N'The correct answer is genki desu which means I''m fine (literally: I''m energetic). Benpi = constipated. This answer is considered an old man''s joke in Japan because it sounds a little similar to genki.', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (233, N'You make plans to meet your friend next week but you have to get off the train now. What do you tell your friend? | sayounara | mata | ida | jaane', 4, N'The correct answer is jaa ne which means see you! This one is tricky, many may have answered sayonara. While sayonara also is a parting salutation it''s not often said in a casual setting to a friend who you will meet soon again. It''s more along the lines of ''farewell''.', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (234, N'At work your boss introduces you to a new coworker, what do you say? | tekudasai | yoroshikuoishimasu | memashita | ohamoundeiru', 2, N'The correct answer is yoroshiku onegaishimasu which literally means: please take care of me, an expression we don''t use in English but is used when introducing yourself.', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (235, N'Your new coworker is considered your? | sensei | sensho | soshi | keta', 3, N'The correct answer is: kohai which means junior or lower person at work or at school.', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (236, N'After work you go for food and drinks with your coworkers. What do you say before you start eating? | itadakimasu | bemasho | oredesu | rimasu', 1, N'The correct answer is itadakimasu which is a standard phrase said before a meal like the French bon apetit (enjoy your meal)', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (237, N'Let''s make it a bit more difficult! You want to order (tako) what is it? | squid | eel | shrimp | octopus', 4, N'The correct answer is octopus! squid = ika, eel = unagi, shrimp = ebi', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (238, N'Your coworker is drunk and kind of annoying, what do you say? | shikarishite | mete | woshite | bete', 1, N'The correct answer is shikkari shite: pull yourself together, tomete = stop (stop the car etc.) If you want to tell someone to stop doing something the correct expression would be yamete.', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (239, N'It''s time to go home. How do you ask for the bill ? | owouishimasu | owouishimasu | owouishimasu | ochekkuoishimasu', 1, N'The correct answer is okaike wo onegaishimasu, a correct way to ask the bill especially used a lot in Tokyo. Another correct way would be okanjo wo onegaishimasu.', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (240, N'You''ve missed the last train. Your boss offers to pay for a taxi. How do you tell the taxi driver to take you to Shibuya? | hakuoishimasu | hakudasai | hakitakunaikudasai | madeoishimasu', 4, N'The correct answer is: Shibuya made onegaishimasu which means please take me to (literally: until) Shibuya.', 11)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (241, N'The midbrain is also called as __________? | Medulla | Diencephalon | Mesencephalon | Hypothalamus', 3, N'Mesencephalon is known as midbrain, it is a part of brain stem. It is associated with vision, hearing, motor control, temperature regulation and arousal.', 24)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (242, N'Mid brain is formed of ___________ parts? | 1.0 | 2.0 | 3.0 | 4.0', 2, N'Midbrain is made up of 2 parts. They are optic lobes and cerebral peduncles.', 24)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (243, N'How many pairs of optic lobes are present? | 4.0 | 3.0 | 2.0 | 1.0', 4, N'Optic lobes are present on dorsal side. 1 pair of an optic lobe is present. Each divided transversely into upper and larger superior coliculus and lower and smaller inferior colicus.', 24)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (244, N'Optic lobes control visual reflexes? | Can be true or false | Not defined', 1, N'Optic lobes control visual reflexes. It controls and coordinates the movement of head and eyes. It controls auditory refluxes also.', 24)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (245, N'The optic lobes in human are represented by the corpora ___________? | Bigemina | Arenacea | Striata | Quadrigemina', 4, N'Corpora Quadrigemina are reflex centers involving vision and hearing. Corpora Quadrigemina are the four colliculi- two inferior and two superior.', 24)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (246, N'The 3rd ventricle of brain is situated in ___________? | Roof of diencephalon | Base of telencephalon | Roof of metencephalon | Base of myelencephalon', 1, N'Ventricles are filled with cerebrospinal fluid. It protects the brain from injury and transport nutrients and waste. The third ventricle is a narrow cavity that is located between the two halves of the brain.', 24)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (247, N'Which foramen is paired in mammalian brain? | Foramen of Luschka | Foramen of Monro | Foramen of Magendie | Inter ventricular foramen', 1, N'Foramen of Luschka is two of the foramen in ventricular system and link the fourth ventricle to the cerebellopontine cistern.', 24)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (248, N'Which of the following is the reduced part of the brain? | Fore brain | Mid brain | Hind brain | Cerebral cortex', 2, N'Mid brain is a reduced part of the brain. It is composed of tectum and tegmentum.', 24)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (249, N'Brain is situated in __________? | Benign | Polonium | Meninges | Cranium', 4, N'The skull is composed of 2 part.: The cranium and the mandible. Brain is situated in cranium and it protects the brain.', 24)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (250, N'How much does a normal brain weigh? | 1,4 kg | 85g | 3kg | 3 tons', 1, N'a normal brain weighs1.4 kg. it is about 2% of the total body weight. It is 140mm wide and 167mm long.', 24)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (251, N'The supporting and nutritive cells found in brains are _______? | Oligodendrocytes | Astrocytes | Microglia | Ependymal cells', 2, N'Astrocytes are star shaped glial cells of the central nervous system. They are supporting and nutritive cells found in brains.', 14)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (252, N'Which of the following does not act as a neurotransmitter? | Acetylcholine | Epinephrine | Norepinephrine | Cortisone', 4, N'Cortisone is a pregnane steroid hormone. It is released by the adrenal gland in response to the stress. Cortisone is not a neurotransmitter.', 14)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (253, N'________ is a quick response to the stimuli that passes the brain? | Reflex action | Voluntary action | Knee jerk | Receptors', 1, N'Reflex action is an involuntary and instantaneous movement in response to the stimulus. A reflex is made possible by neural pathways called reflex arcs which can act on an impulse before that impulse reaches the brain.', 14)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (254, N'The cerebellum is located between the cerebrum and the brain stem in the back of the head. It helps in __________? | Breathing and controlling blood pressure | Balance and coordination | Voluntary movement | Speech and hearing', 2, N'Cerebellum receives information from the sensory systems. It helps in balance and coordination.', 14)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (255, N'The outer covering of the brain is covered with __________? | Axons | Nerve cells | Pons | Dendrites', 2, N'The outer covering of the brain is called the cerebral cortex. It is covered with nerve cells.', 14)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (256, N'The brain stem is composed of _________? | Brain buds and flowers | Spinal cord | Axon and vertebra | Medulla pons and middle brain tissue', 4, N'The brainstem is the posterior part of the brain, adjoin and structurally continuous with the spinal cord. It consists of medulla oblongata pons and midbrain.', 14)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (257, N'What connects two hemispheres of the brain? | Pons | Pia matter | Corpus callosum | Diencephalon', 3, N'The Corpus callosum is a thick band of nerve fibers that divides the cerebral cortex lobes into left and right hemisphere. It connects the left and right sides of the brain for communication between both hemispheres.', 14)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (258, N'Fluid filled cavity in the brain is called as ___________? | Matter | Cavity | Meninges | Ventricles', 4, N'Fluid filled cavity in the brain is called as ventricles. It contains cerebrospinal fluid. Within each ventricle is a region of choroid plexus.', 14)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (259, N'Which part of the brain controls higher mental activities like reasoning? | Temporal lobe | Frontal lobe | Medulla oblongata | Cerebellum', 2, N'Frontal lobe is a part of the brain that controls important cognitive skills in humans. It is the largest of four major lobes and is located at the front of the brain.', 14)
INSERT [dbo].[Question] ([ques_id], [ques_content], [ques_result], [ques_note], [quiz_id]) VALUES (260, N'Which part of the brain controls emotion experiences? | Pia matter | Hypothalamus | Limbic system | Medulla oblongata', 3, N'Limbic system includes amygdale, hippocampus, thalamus, hypothalamus, basal ganglia and cingulated gyrus. The amygdale is the emotion center of the brain.', 14)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (1, N'C-Test1', N'<p>Doing exercise test1</p>
', N'CP', 2, 1, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (2, N'C-Test2', N'<p>Doing exercise test2</p>
', N'CP', 2, 4, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (3, N'PY-Test1', N'<p>Doing exercise test1</p>
', N'PY', 2, 5, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (4, N'PY-Test2', N'<p>Doing exercise test2</p>
', N'PY', 2, 8, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (6, N'MAD-Test1', N'<p>Doing exercise test1</p>
', N'MAD', 2, 24, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (7, N'MAS-Test1', N'<p>Doing exercise test1</p>
', N'MAS', 2, 26, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (8, N'GU-Test1', N'<p>Doing exercise test1</p>
', N'GUI', 2, 18, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (9, N'PI-Test1', N'<p>Doing exercise test1</p>
', N'PIA', 2, 30, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (10, N'EN-Test1', N'<p>Doing exercise test1</p>
', N'ENG', 2, 14, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (11, N'JA-Test1', N'<p>Doing exercise test1</p>
', N'JAP', 2, 22, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (12, N'DI-Test1', N'<p>Doing exercise test1</p>
', N'DIGMAR', 2, 12, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (13, N'FI-Test1', N'<p>Doing exercise test1</p>
', N'FINMAR', 2, 16, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (14, N'HU-Test1', N'<p>Doing exercise test1</p>
', N'HUMBRA', 2, 20, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (15, N'PH-Test1', N'<p>Doing exercise test1</p>
', N'PHY', 2, 28, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (16, N'MAD-Test2', N'<p>Doing exercise test2</p>
', N'MAD', 2, 23, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (17, N'MAS-Test2', N'<p>Doing exercise test2</p>
', N'MAS', 2, 25, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (18, N'GU-Test2', N'<p>Doing exercise test2</p>
', N'GUI', 2, 17, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (19, N'PI-Test2', N'<p>Doing exercise test2</p>
', N'PIA', 2, 29, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (20, N'EN-Test2', N'<p>Doing exercise test2</p>
', N'ENG', 2, 13, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (21, N'JA-Test2', N'<p>Doing exercise test2</p>
', N'JAP', 2, 21, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (22, N'DI-Test2', N'<p>Doing exercise test2</p>
', N'DIGMAR', 2, 11, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (23, N'FI-Test2', N'<p>Doing exercise test2</p>
', N'FINMAR', 2, 15, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (24, N'HU-Test2', N'<p>Doing exercise test2</p>
', N'HUMBRA', 2, 19, 1)
INSERT [dbo].[Quiz] ([quiz_id], [quiz_name], [quiz_desc], [course_id], [type_id], [section_id], [quiz_status]) VALUES (25, N'PH-Test2', N'<p>Doing exercise test2</p>
', N'PHY', 2, 27, 1)
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz_Result] ON 

INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end]) VALUES (1, 3, 8, 0, 2, CAST(N'2022-06-29T09:34:53.000' AS DateTime), CAST(N'2022-06-29T09:35:39.000' AS DateTime))
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end]) VALUES (2, 1, 10, 1, 7, CAST(N'2022-06-30T08:55:26.000' AS DateTime), CAST(N'2022-06-30T08:56:14.000' AS DateTime))
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end]) VALUES (3, 3, 8, 0, 3, CAST(N'2022-07-09T11:17:29.000' AS DateTime), CAST(N'2022-07-09T11:18:15.000' AS DateTime))
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end]) VALUES (4, 4, 8, 0, 2, CAST(N'2022-07-14T14:10:35.000' AS DateTime), CAST(N'2022-07-14T14:13:16.000' AS DateTime))
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end]) VALUES (5, 3, 8, 0, 0, CAST(N'2022-07-19T08:29:02.000' AS DateTime), CAST(N'2022-07-19T08:29:11.000' AS DateTime))
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end]) VALUES (6, 1, 27, 0, 3, CAST(N'2022-07-19T11:50:38.000' AS DateTime), CAST(N'2022-07-19T11:51:27.000' AS DateTime))
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end]) VALUES (7, 21, 27, 0, 1, CAST(N'2022-07-19T12:05:03.000' AS DateTime), CAST(N'2022-07-19T12:05:38.000' AS DateTime))
INSERT [dbo].[Quiz_Result] ([quiz_result_id], [quiz_id], [user_id], [quiz_status], [quiz_grade], [quiz_start], [quiz_end]) VALUES (8, 3, 27, 0, 0, CAST(N'2022-07-19T15:48:02.000' AS DateTime), CAST(N'2022-07-19T15:48:28.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Quiz_Result] OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (1, CAST(N'2022-05-22' AS Date), NULL, N'CP', 10, 1, 1, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (2, CAST(N'2022-05-23' AS Date), NULL, N'PIA', 10, 1, 3, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (4, CAST(N'2022-06-19' AS Date), NULL, N'DIGMAR', 11, 1, 3, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (5, CAST(N'2022-06-22' AS Date), NULL, N'JAP', 11, 0, 3, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (6, CAST(N'2022-06-23' AS Date), NULL, N'FINMAR', 9, 1, 3, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (7, CAST(N'2022-06-24' AS Date), NULL, N'MAD', 9, 0, 4, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (8, CAST(N'2022-06-24' AS Date), NULL, N'PHY', 8, 1, 1, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (9, CAST(N'2022-06-25' AS Date), NULL, N'FINMAR', 8, 0, 4, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (10, CAST(N'2022-06-25' AS Date), NULL, N'PY', 8, 1, 1, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (11, CAST(N'2022-06-25' AS Date), NULL, N'DIGMAR', 10, 1, 4, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (12, CAST(N'2022-06-25' AS Date), NULL, N'FINMAR', 10, 1, 3, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (13, CAST(N'2022-06-26' AS Date), NULL, N'HUMBRA', 10, 1, 1, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (15, CAST(N'2022-06-26' AS Date), NULL, N'PIA', 12, 1, 3, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (16, CAST(N'2022-06-27' AS Date), NULL, N'FINMAR', 12, 0, 3, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (17, CAST(N'2022-06-27' AS Date), NULL, N'GUI', 12, 1, 4, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (18, CAST(N'2022-06-28' AS Date), NULL, N'JAP', 12, 0, 3, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (19, CAST(N'2022-06-28' AS Date), NULL, N'MAS', 12, 0, 2, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (21, CAST(N'2022-06-29' AS Date), NULL, N'MAS', 8, 1, 4, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (23, CAST(N'2022-06-30' AS Date), NULL, N'MAS', 11, 0, 4, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (24, CAST(N'2022-06-30' AS Date), NULL, N'ENG', 12, 0, 1, N'None')
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (25, CAST(N'2022-06-30' AS Date), N'<p>Update status</p>
', N'CP', 20, 1, 1, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (26, CAST(N'2022-07-16' AS Date), NULL, N'PIA', 11, 1, 3, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (27, CAST(N'2022-07-16' AS Date), NULL, N'GUI', 11, 1, 2, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (28, CAST(N'2022-07-16' AS Date), NULL, N'MAD', 11, 1, 2, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (31, CAST(N'2022-07-17' AS Date), NULL, N'MAD', 10, 1, 2, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (32, CAST(N'2022-07-17' AS Date), NULL, N'JAP', 10, 1, 2, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (33, CAST(N'2022-07-19' AS Date), NULL, N'CP', 22, 0, 1, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (34, CAST(N'2022-07-19' AS Date), NULL, N'CP', 27, 1, 1, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (35, CAST(N'2022-07-19' AS Date), NULL, N'FINMAR', 27, 1, 3, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (36, CAST(N'2022-07-19' AS Date), NULL, N'JAP', 27, 1, 3, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (37, CAST(N'2022-07-19' AS Date), NULL, N'CP', 7, 0, 1, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (38, CAST(N'2022-07-19' AS Date), NULL, N'HUMBRA', 27, 0, 1, NULL)
INSERT [dbo].[Registration] ([reg_id], [reg_time], [reg_note], [course_id], [user_id], [reg_status_id], [package_id], [last_updated_by]) VALUES (39, CAST(N'2022-07-19' AS Date), NULL, N'PY', 27, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Registration] OFF
GO
INSERT [dbo].[Registration_Status] ([reg_status_id], [reg_status_name]) VALUES (0, N'Submitted')
INSERT [dbo].[Registration_Status] ([reg_status_id], [reg_status_name]) VALUES (1, N'Registered')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'Guest')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'Customer')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'Sale')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (4, N'Marketing')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (5, N'Expert')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (6, N'Admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (1, N'CP', N'
Programming Fundamentals', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (2, N'CP', N'
Writing, Running, and Fixing Code in C', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (3, N'CP', N'
Pointers, Arrays, and Recursion', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (4, N'CP', N'
Interacting with the System and Managing Memory', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (5, N'PY', N'
Programming for Everybody', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (6, N'PY', N'
Python Data Structures', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (7, N'PY', N'
Using Python to Access Web Data', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (8, N'PY', N'
Using Databases with Python', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (11, N'DIGMAR', N'Introduction to Digital Marketing', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (12, N'DIGMAR', N'
Digital Marketing Analytics in Practice', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (13, N'ENG', N'
Word Forms and Simple Present Tense', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (14, N'ENG', N'
Questions, Present Progressive and Future Tenses', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (15, N'FINMAR', N'Global Financial Markets and Instruments', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (16, N'FINMAR', N'
Portfolio Selection and Risk Management', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (17, N'GUI', N'
Guitar for Beginners', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (18, N'GUI', N'
Guitar Scales and Chord Progressions', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (19, N'HUMBRA', N'
Fundamental Neuroscience for Neuroimaging', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (20, N'HUMBRA', N'
Principles of fMRI 1', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (21, N'JAP', N'Your First Step to Study in Japan', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (22, N'JAP', N'Understanding the Process', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (23, N'MAD', N'Basic Objects in Discrete Mathematics', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (24, N'MAD', N'The Binomial Coefficient', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (25, N'MAS', N'
Mathematics for Machine Learning: Linear Algebra', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (26, N'MAS', N'Mathematics for Machine Learning: Multivariate Calculus', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (27, N'PHY', N'Homeostasis and Endocrine System', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (28, N'PHY', N'The Senses and the Somatic Nervous System', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (29, N'PIA', N'
Developing Your Musicianship', 3, 1)
INSERT [dbo].[Section] ([section_id], [course_id], [section_name], [type_id], [section_status]) VALUES (30, N'PIA', N'
Musicianship: Chord Charts, Diatonic Chords, and Minor Keys', 3, 1)
SET IDENTITY_INSERT [dbo].[Section] OFF
GO
SET IDENTITY_INSERT [dbo].[Setting] ON 

INSERT [dbo].[Setting] ([SettingId], [SettingTypeId], [SettingValue], [SettingOrder], [SettingStatusId], [SettingDescription]) VALUES (1, 1, N'4', N'Course site', 1, N'Number of course in 1 page (Course list)')
INSERT [dbo].[Setting] ([SettingId], [SettingTypeId], [SettingValue], [SettingOrder], [SettingStatusId], [SettingDescription]) VALUES (2, 1, N'4', N'Post site', 1, N'Number of post in 1 page (Post list)')
INSERT [dbo].[Setting] ([SettingId], [SettingTypeId], [SettingValue], [SettingOrder], [SettingStatusId], [SettingDescription]) VALUES (3, 1, N'4', N'Blog site', 1, N'Number of blog in 1 page (Blog list)')
INSERT [dbo].[Setting] ([SettingId], [SettingTypeId], [SettingValue], [SettingOrder], [SettingStatusId], [SettingDescription]) VALUES (5, 1, N'4', N'Subject Site', 1, N'Number of subjects in 1 page (subject list)')
INSERT [dbo].[Setting] ([SettingId], [SettingTypeId], [SettingValue], [SettingOrder], [SettingStatusId], [SettingDescription]) VALUES (7, 2, N'Admin', N'Admin role', 1, N'Role of user')
INSERT [dbo].[Setting] ([SettingId], [SettingTypeId], [SettingValue], [SettingOrder], [SettingStatusId], [SettingDescription]) VALUES (8, 2, N'Sale', N'Sale role', 1, N'<p>Update</p>
')
SET IDENTITY_INSERT [dbo].[Setting] OFF
GO
SET IDENTITY_INSERT [dbo].[SettingStatus] ON 

INSERT [dbo].[SettingStatus] ([SettingStatusId], [SettingStatusName]) VALUES (1, N'Active    ')
INSERT [dbo].[SettingStatus] ([SettingStatusId], [SettingStatusName]) VALUES (2, N'Inactive  ')
SET IDENTITY_INSERT [dbo].[SettingStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[SettingType] ON 

INSERT [dbo].[SettingType] ([SettingTypeId], [SettingTypeName]) VALUES (1, N'Page')
INSERT [dbo].[SettingType] ([SettingTypeId], [SettingTypeName]) VALUES (2, N'Role')
SET IDENTITY_INSERT [dbo].[SettingType] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (1, N'<h5>Join with us to open your knowledge about the science in the world...</h5>

<p>Welcome to our journey and good luck to you!</p>
', N'download.jpg', N'courselist?subject=1', 1, N'hello1')
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (2, N'<h5>Just to be the best version of yourself to adapt the chance of the world1...</h5>

<p>Welcome to our journey and good luck to you!</p>
', N'Screenshot 2022-07-16 151235.jpg', N'courselist?subject=3', 0, N'fix status')
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_img], [slider_link], [slider_status], [slider_note]) VALUES (3, N'<h5>Join with us to experience new knowledge about the mathematic in the world...</h5>

<p>Welcome to our journey and good luck to you!</p>
', N'Screenshot 2022-07-16 151438.jpg', N'courselist?subject=2', 1, N'')
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc], [subject_cate_id]) VALUES (1, N'Information Technology', N'https://i.ytimg.com/vi/CJlckNl0KFU/hq720.jpg?sqp=-%E2%80%A6AFwAcABBg==&rs=AOn4CLClq5CDznc_poNMEtAdr-O4xPFA5g', N'In this subject, you can learn many different programming languages.', 1)
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc], [subject_cate_id]) VALUES (2, N'Mathematics', N'https://i.ytimg.com/vi/gSVHaIWIgUE/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLDckRJcwXYnnQtJ2kUYPX6VtIp2KA', N'In this subject, you can learn about maths in the field of information technology.', 1)
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc], [subject_cate_id]) VALUES (3, N'Musical Instrument', N'https://i.ytimg.com/vi/FpTlgWy5UUU/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLBvQfUgiQhsak1KckNc-KkRTHzykg', N'In this subject, you can take basic courses on how to play musical instruments.', 4)
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc], [subject_cate_id]) VALUES (4, N'Language', N'https://i.ytimg.com/vi/wkjSBC-_bDA/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLCSsSNhyijp7aPD2qVbxdDfaI6JHg', N'In this subject, you can learn many different languages.', 2)
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc], [subject_cate_id]) VALUES (5, N'Business', N'https://i.ytimg.com/vi/G7VWp_U-eo8/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLCuDh3B8RKQ-8-dJpQSLhhVvX5D0w', N'In this subject, you can learn basic business courses.', 3)
INSERT [dbo].[Subject] ([sub_id], [sub_name], [sub_img], [sub_desc], [subject_cate_id]) VALUES (6, N'Health', N'https://i.ytimg.com/vi/VJ_s51QGbg8/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLAtzjxsl6Dflrjtv8RLrdDGHnMn1w', N'In this subject, you can learn courses on how to take care of your health properly and scientifically.', 2)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject_Category] ON 

INSERT [dbo].[Subject_Category] ([subject_cate_id], [subject_cate_name]) VALUES (1, N'Science')
INSERT [dbo].[Subject_Category] ([subject_cate_id], [subject_cate_name]) VALUES (2, N'Society')
INSERT [dbo].[Subject_Category] ([subject_cate_id], [subject_cate_name]) VALUES (3, N'Economics')
INSERT [dbo].[Subject_Category] ([subject_cate_id], [subject_cate_name]) VALUES (4, N'Art')
SET IDENTITY_INSERT [dbo].[Subject_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Time_Course] ON 

INSERT [dbo].[Time_Course] ([time_course_id], [course_id], [user_id], [course_start], [course_stop]) VALUES (1, N'CP', 27, CAST(N'2022-07-19T11:50:04.000' AS DateTime), NULL)
INSERT [dbo].[Time_Course] ([time_course_id], [course_id], [user_id], [course_start], [course_stop]) VALUES (2, N'FINMAR', 27, CAST(N'2022-07-19T11:59:22.000' AS DateTime), NULL)
INSERT [dbo].[Time_Course] ([time_course_id], [course_id], [user_id], [course_start], [course_stop]) VALUES (3, N'JAP', 27, CAST(N'2022-07-19T12:04:24.000' AS DateTime), NULL)
INSERT [dbo].[Time_Course] ([time_course_id], [course_id], [user_id], [course_start], [course_stop]) VALUES (4, N'PY', 27, CAST(N'2022-07-19T03:44:56.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Time_Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([type_id], [type_name]) VALUES (1, N'Lesson')
INSERT [dbo].[Type] ([type_id], [type_name]) VALUES (2, N'Quiz')
INSERT [dbo].[Type] ([type_id], [type_name]) VALUES (3, N'Section')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (1, N'chieundhe151294@fpt.edu.vn', N'A8EE4E022344282A8D9BAF5B2090469C', N'Nguyen Danh Chieu', N'default.jpg', 1, CAST(N'2001-12-15' AS Date), N'9214151789', N'Hung Yen', N'1000', 6, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (2, N'daotvhe151293@fpt.edu.vn', N'A8EE4E022344282A8D9BAF5B2090469C', N'Tran Van Dao', N'default.jpg', 1, CAST(N'2001-12-16' AS Date), N'9214171899', N'Nam Dinh', N'1000', 3, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (3, N'namnhhe151296@fpt.edu.vn', N'A8EE4E022344282A8D9BAF5B2090469C', N'Nguyen Hoai Nam', N'default.jpg', 3, CAST(N'2001-12-17' AS Date), N'92141513', N'Ha Noi', N'1000', 4, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (4, N'thanhpnhe151285@fpt.edu.vn', N'A8EE4E022344282A8D9BAF5B2090469C', N'Pham Nhat Thanh', N'default.jpg', 3, CAST(N'2001-12-18' AS Date), N'92141623', N'Hai Phong', N'1000', 4, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (7, N'thuyttthe153005@fpt.edu.vn', N'A8EE4E022344282A8D9BAF5B2090469C', N'Tran Thi Thanh Thuy', N'default.jpg', 2, CAST(N'2001-12-19' AS Date), N'92146754', N'Thai Nguyen', N'1000', 5, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (8, N'kitn0204@gmail.com', N'A8EE4E022344282A8D9BAF5B2090469C', N'Nguyen Danh Chieu', N'default.jpg', 1, CAST(N'2022-04-02' AS Date), N'0969180735', N'Hung Yen', N'1000', 2, CAST(N'2022-06-16' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (9, N'toan@gmail.com', N'A8EE4E022344282A8D9BAF5B2090469C', N'Nguyen Ngoc Toan', N'default.jpg', 1, CAST(N'2001-03-07' AS Date), N'0123456789', N'Bac Ninh', N'836.0', 2, CAST(N'2022-06-17' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (10, N'thanh@gmail.com', N'A8EE4E022344282A8D9BAF5B2090469C', N'Pham Nhat Thanh', N'default.jpg', 1, CAST(N'2001-05-05' AS Date), N'1234567890', N'Hai Phong', N'596.0', 2, CAST(N'2022-06-18' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (11, N'dao@gmail.com', N'A8EE4E022344282A8D9BAF5B2090469C', N'Tran Van Dao', N'default.jpg', 4, CAST(N'2001-06-19' AS Date), N'12345678910', N'Nam Dinh', N'916.0', 2, CAST(N'2022-06-19' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (12, N'dat@gmail.com', N'A8EE4E022344282A8D9BAF5B2090469C', N'Nguyen Duy Dat', N'default.jpg', 4, CAST(N'2001-01-18' AS Date), N'12345678910', N'Quat Lam', N'1000', 2, CAST(N'2022-06-26' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (20, N'thuy@gmail.com', N'A8EE4E022344282A8D9BAF5B2090469C', N'Tran Thuy', N'default.jpg', 2, CAST(N'2001-01-01' AS Date), N'12345678910', N'Thai Nguyen', N'1000', 2, CAST(N'2022-06-29' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (22, N'nnamnguyen1509@gmail.com', N'A8EE4E022344282A8D9BAF5B2090469C', N'Nam Nguyen', N'default.jpg', 1, CAST(N'2001-01-01' AS Date), N'12345678910', N'Thai Nguyen', N'1000', 2, CAST(N'2022-07-19' AS Date), 1)
INSERT [dbo].[User] ([user_id], [user_email], [password], [full_name], [user_img], [gender_id], [user_dob], [user_phone], [user_address], [user_wallet], [role_id], [user_time], [user_status]) VALUES (27, N'dao190601@gmail.com', N'8FA82A54995E86C22A8D4B2EE804C902', N'Dao Tran ', N'default.jpg', 1, CAST(N'2001-01-01' AS Date), N'12345678910', N'Thai Nguyen', N'49916.0', 2, CAST(N'2022-07-19' AS Date), 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Lecturer] FOREIGN KEY([lecturer_id])
REFERENCES [dbo].[Lecturer] ([lecturer_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Lecturer]
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
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Section] FOREIGN KEY([section_id], [course_id])
REFERENCES [dbo].[Section] ([section_id], [course_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Section]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Type] ([type_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Type]
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
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Blog] FOREIGN KEY([blog_id])
REFERENCES [dbo].[Blog] ([blog_id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Blog]
GO
ALTER TABLE [dbo].[Ques_Result]  WITH CHECK ADD  CONSTRAINT [FK_Ques_Result_Question] FOREIGN KEY([ques_id])
REFERENCES [dbo].[Question] ([ques_id])
GO
ALTER TABLE [dbo].[Ques_Result] CHECK CONSTRAINT [FK_Ques_Result_Question]
GO
ALTER TABLE [dbo].[Ques_Result]  WITH CHECK ADD  CONSTRAINT [FK_Ques_Result_Quiz_Result] FOREIGN KEY([quiz_result_id])
REFERENCES [dbo].[Quiz_Result] ([quiz_result_id])
GO
ALTER TABLE [dbo].[Ques_Result] CHECK CONSTRAINT [FK_Ques_Result_Quiz_Result]
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
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Section] FOREIGN KEY([section_id], [course_id])
REFERENCES [dbo].[Section] ([section_id], [course_id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Section]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Type] ([type_id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Type]
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
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Course]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Price_Package] FOREIGN KEY([package_id])
REFERENCES [dbo].[Price_Package] ([package_id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Price_Package]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Registration_Status] FOREIGN KEY([reg_status_id])
REFERENCES [dbo].[Registration_Status] ([reg_status_id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Registration_Status]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_User]
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
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Type] ([type_id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Type]
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
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Subject_Category] FOREIGN KEY([subject_cate_id])
REFERENCES [dbo].[Subject_Category] ([subject_cate_id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Subject_Category]
GO
ALTER TABLE [dbo].[Time_Course]  WITH CHECK ADD  CONSTRAINT [FK_Time_Course_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Time_Course] CHECK CONSTRAINT [FK_Time_Course_Course]
GO
ALTER TABLE [dbo].[Time_Course]  WITH CHECK ADD  CONSTRAINT [FK_Time_Course_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Time_Course] CHECK CONSTRAINT [FK_Time_Course_User]
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
ALTER DATABASE [Coursere_DB] SET  READ_WRITE 
GO
