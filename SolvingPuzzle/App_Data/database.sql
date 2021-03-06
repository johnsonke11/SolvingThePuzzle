USE [master]
GO
/****** Object:  Database [SolvingPuzzle]    Script Date: 3/7/2017 6:39:57 PM ******/
CREATE DATABASE [SolvingPuzzle]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SolvingPuzzle', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\SolvingPuzzle.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SolvingPuzzle_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\SolvingPuzzle_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SolvingPuzzle] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SolvingPuzzle].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SolvingPuzzle] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET ARITHABORT OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SolvingPuzzle] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SolvingPuzzle] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SolvingPuzzle] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SolvingPuzzle] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SolvingPuzzle] SET  MULTI_USER 
GO
ALTER DATABASE [SolvingPuzzle] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SolvingPuzzle] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SolvingPuzzle] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SolvingPuzzle] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SolvingPuzzle] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SolvingPuzzle] SET QUERY_STORE = OFF
GO
USE [SolvingPuzzle]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SolvingPuzzle]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 3/7/2017 6:39:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Message]    Script Date: 3/7/2017 6:39:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Testimonial]    Script Date: 3/7/2017 6:39:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[personsName] [nchar](10) NULL,
	[testimonial] [nvarchar](50) NULL,
 CONSTRAINT [PK_Testimonial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [SolvingPuzzle] SET  READ_WRITE 
GO
