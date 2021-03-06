USE [master]
GO
/****** Object:  Database [HouseZ]    Script Date: 22-Apr-18 15:40:01 ******/
CREATE DATABASE [HouseZ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HouseZ', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HouseZ.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HouseZ_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HouseZ_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HouseZ] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HouseZ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HouseZ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HouseZ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HouseZ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HouseZ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HouseZ] SET ARITHABORT OFF 
GO
ALTER DATABASE [HouseZ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HouseZ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HouseZ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HouseZ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HouseZ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HouseZ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HouseZ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HouseZ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HouseZ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HouseZ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HouseZ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HouseZ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HouseZ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HouseZ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HouseZ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HouseZ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HouseZ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HouseZ] SET RECOVERY FULL 
GO
ALTER DATABASE [HouseZ] SET  MULTI_USER 
GO
ALTER DATABASE [HouseZ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HouseZ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HouseZ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HouseZ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HouseZ] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HouseZ', N'ON'
GO
ALTER DATABASE [HouseZ] SET QUERY_STORE = OFF
GO
USE [HouseZ]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
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
USE [HouseZ]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 22-Apr-18 15:40:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](4000) NULL,
	[LastName] [nvarchar](4000) NULL,
	[Email] [nvarchar](4000) NULL,
	[Company] [nvarchar](4000) NULL,
	[CountryId] [int] NULL,
	[StateProvinceId] [int] NULL,
	[City] [nvarchar](4000) NULL,
	[Address1] [nvarchar](4000) NULL,
	[Address2] [nvarchar](4000) NULL,
	[ZipPostalCode] [nvarchar](4000) NULL,
	[PhoneNumber] [nvarchar](4000) NULL,
	[FaxNumber] [nvarchar](4000) NULL,
	[Salutation] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BillNumber] [nvarchar](50) NULL,
	[CusomterNumber] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[FullName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[IdentityCard] [nvarchar](50) NULL,
	[Warranty] [int] NULL,
	[FromWarranty] [datetime] NULL,
	[ToWarranty] [datetime] NULL,
	[BrandId] [int] NULL,
	[Branch] [nvarchar](500) NULL,
	[Model] [nvarchar](max) NULL,
	[Imei] [nvarchar](max) NULL,
	[PhoneNumber] [text] NOT NULL,
	[AppleId] [nvarchar](500) NULL,
	[ICloudPassword] [nvarchar](50) NULL,
	[StatusCurrent] [nvarchar](4000) NULL,
	[RepairTypeId] [int] NULL,
	[RepairStatus] [nchar](10) NULL,
	[Status] [int] NULL,
	[StoreId] [int] NULL,
	[Accessories] [nvarchar](50) NULL,
	[OtherLink] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[OrderDisplay] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Assessment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttribureValue]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttribureValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ValueName] [nvarchar](max) NULL,
	[ColorHex] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[OrderDisplay] [int] NULL,
	[AttributeId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.AttribureValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttributeName] [nvarchar](max) NULL,
	[OrderDisplay] [int] NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Attribute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[WebsiteLink] [nvarchar](250) NULL,
	[ImgPath] [nvarchar](max) NULL,
	[Language] [nvarchar](5) NULL,
	[Width] [nvarchar](50) NULL,
	[Height] [nvarchar](50) NULL,
	[Target] [nvarchar](50) NULL,
	[FromDate] [time](7) NULL,
	[ToDate] [time](7) NULL,
	[Status] [int] NOT NULL,
	[OrderDisplay] [int] NOT NULL,
	[PageId] [int] NOT NULL,
	[MenuId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Banner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[OrderDisplay] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Branch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Claim]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claim](
	[ClaimId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](4000) NULL,
	[ClaimValue] [nvarchar](4000) NULL,
 CONSTRAINT [PK_dbo.Claim] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactInformation]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Language] [nvarchar](5) NULL,
	[Title] [nvarchar](max) NULL,
	[Lag] [nvarchar](50) NULL,
	[Lat] [nvarchar](50) NULL,
	[Type] [int] NOT NULL,
	[OrderDisplay] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Hotline] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[MobilePhone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[NumberOfStore] [nvarchar](max) NULL,
	[ProvinceId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ContactInfomation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerGuid] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Password] [nvarchar](500) NULL,
	[PasswordFormatId] [int] NOT NULL,
	[PasswordSalt] [nvarchar](500) NULL,
	[AdminComment] [nvarchar](4000) NULL,
	[IsTaxExempt] [bit] NOT NULL,
	[AffiliateId] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[IsSystemAccount] [bit] NOT NULL,
	[SystemName] [nvarchar](500) NULL,
	[LastIpAddress] [nvarchar](100) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[LastLoginDateUtc] [datetime] NULL,
	[LastActivityDateUtc] [datetime] NOT NULL,
	[BillingAddress_Id] [int] NULL,
	[ShippingAddress_Id] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddresses]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddresses](
	[Customer_Id] [int] NOT NULL,
	[Address_Id] [int] NOT NULL,
 CONSTRAINT [PK_CustomerAddresses] PRIMARY KEY CLUSTERED 
(
	[Customer_Id] ASC,
	[Address_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalLogin]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalLogin](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.ExternalLogin] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlowStep]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowStep](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[OtherLink] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[OrderDisplay] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.FlowStep] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GalleryImage]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GalleryImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[ImageThumbnail] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[OrderDisplay] [int] NOT NULL,
	[PostId] [int] NOT NULL,
	[AttributeValueId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_dbo.GalleryImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenericAttribute]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericAttribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityId] [int] NOT NULL,
	[KeyGroup] [nvarchar](400) NOT NULL,
	[Key] [nvarchar](400) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[StoreId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenericControl]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericControl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[OrderDisplay] [int] NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[MenuId] [int] NULL,
	[ControlTypeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.GenControl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenericControlMenuLink]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericControlMenuLink](
	[GenericControlId] [int] NOT NULL,
	[MenuLinkId] [int] NOT NULL,
 CONSTRAINT [PK__GenericC__91DE8CB0EEE6FC71] PRIMARY KEY CLUSTERED 
(
	[GenericControlId] ASC,
	[MenuLinkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenericControlValue]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericControlValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ValueName] [nvarchar](max) NULL,
	[ColorHex] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[OrderDisplay] [int] NULL,
	[GenericControlId] [int] NOT NULL,
	[EntityId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.GenericControlValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenericControlValueItem]    Script Date: 22-Apr-18 15:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericControlValueItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[ImageThumbnail] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[OrderDisplay] [int] NOT NULL,
	[EntityId] [int] NOT NULL,
	[GenericControlValueId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[Value] [nvarchar](4000) NULL,
 CONSTRAINT [PK_dbo.GenericControlValueItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LandingPage]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LandingPage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[DateOfBith] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[ShopId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.LandingPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [nvarchar](250) NOT NULL,
	[LanguageCode] [nvarchar](50) NOT NULL,
	[Flag] [nvarchar](250) NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocaleStringResource]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocaleStringResource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[ResourceName] [nvarchar](200) NOT NULL,
	[ResourceValue] [nvarchar](max) NULL,
	[IsFromPlugin] [bit] NOT NULL,
	[IsTouched] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalizedProperty]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalizedProperty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
	[LocaleKeyGroup] [nvarchar](400) NOT NULL,
	[LocaleKey] [nvarchar](400) NOT NULL,
	[LocaleValue] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuLink]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuLink](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[CurrentVirtualId] [nvarchar](250) NULL,
	[VirtualId] [nvarchar](250) NULL,
	[MenuName] [nvarchar](250) NULL,
	[Status] [int] NOT NULL,
	[TypeMenu] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[TemplateType] [int] NOT NULL,
	[Language] [nvarchar](5) NULL,
	[OrderDisplay] [int] NOT NULL,
	[SourceLink] [nvarchar](250) NULL,
	[SeoUrl] [nvarchar](250) NULL,
	[VirtualSeoUrl] [nvarchar](250) NULL,
	[ImageUrl] [nvarchar](250) NULL,
	[MetaKeywords] [nvarchar](550) NULL,
	[MetaTitle] [nvarchar](550) NULL,
	[MetaDescription] [nvarchar](550) NULL,
	[DisplayOnHomePage] [bit] NOT NULL,
	[DisplayOnMenu] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[DisplayOnSearch] [bit] NOT NULL,
	[Icon1] [nvarchar](max) NULL,
	[Icon2] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.MenuLink] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NOT NULL,
	[VirtualCategoryId] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Video] [bit] NOT NULL,
	[VideoLink] [nvarchar](max) NULL,
	[OtherLink] [nvarchar](max) NULL,
	[ShortDesc] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[OrderDisplay] [int] NOT NULL,
	[SpecialDisplay] [bit] NOT NULL,
	[HomeDisplay] [bit] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[MetaTitle] [nvarchar](max) NULL,
	[MetaKeywords] [nvarchar](max) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[SeoUrl] [nvarchar](max) NULL,
	[VirtualCatUrl] [nvarchar](max) NULL,
	[ImageBigSize] [nvarchar](max) NULL,
	[ImageMediumSize] [nvarchar](max) NULL,
	[ImageSmallSize] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [nvarchar](4000) NULL,
	[OrderGuid] [uniqueidentifier] NULL,
	[StoreId] [int] NULL,
	[CustomerId] [int] NULL,
	[BillingAddressId] [int] NULL,
	[ShippingAddressId] [int] NULL,
	[OrderStatusId] [int] NULL,
	[ShippingStatusId] [int] NULL,
	[PaymentStatusId] [int] NULL,
	[PaymentMethodSystemName] [nvarchar](4000) NULL,
	[CustomerCurrencyCode] [nvarchar](4000) NULL,
	[CurrencyRate] [decimal](18, 8) NULL,
	[CustomerTaxDisplayTypeId] [int] NULL,
	[VatNumber] [nvarchar](4000) NULL,
	[OrderSubtotalInclTax] [decimal](18, 4) NULL,
	[OrderSubtotalExclTax] [decimal](18, 4) NULL,
	[OrderSubTotalDiscountInclTax] [decimal](18, 4) NULL,
	[OrderSubTotalDiscountExclTax] [decimal](18, 4) NULL,
	[OrderShippingInclTax] [decimal](18, 4) NULL,
	[OrderShippingExclTax] [decimal](18, 4) NULL,
	[PaymentMethodAdditionalFeeInclTax] [decimal](18, 4) NULL,
	[PaymentMethodAdditionalFeeExclTax] [decimal](18, 4) NULL,
	[TaxRates] [nvarchar](4000) NULL,
	[OrderTax] [decimal](18, 4) NULL,
	[OrderDiscount] [decimal](18, 4) NULL,
	[OrderTotal] [decimal](18, 4) NULL,
	[RefundedAmount] [decimal](18, 4) NULL,
	[RewardPointsWereAdded] [bit] NULL,
	[CheckoutAttributeDescription] [nvarchar](4000) NULL,
	[CheckoutAttributesXml] [nvarchar](4000) NULL,
	[CustomerLanguageId] [int] NULL,
	[AffiliateId] [int] NULL,
	[CustomerIp] [nvarchar](4000) NULL,
	[AllowStoringCreditCardNumber] [bit] NULL,
	[CardType] [nvarchar](4000) NULL,
	[CardName] [nvarchar](4000) NULL,
	[CardNumber] [nvarchar](4000) NULL,
	[MaskedCreditCardNumber] [nvarchar](4000) NULL,
	[CardCvv2] [nvarchar](4000) NULL,
	[CardExpirationMonth] [nvarchar](4000) NULL,
	[CardExpirationYear] [nvarchar](4000) NULL,
	[AllowStoringDirectDebit] [bit] NULL,
	[DirectDebitAccountHolder] [nvarchar](4000) NULL,
	[DirectDebitAccountNumber] [nvarchar](4000) NULL,
	[DirectDebitBankCode] [nvarchar](4000) NULL,
	[DirectDebitBankName] [nvarchar](4000) NULL,
	[DirectDebitBIC] [nvarchar](4000) NULL,
	[DirectDebitCountry] [nvarchar](4000) NULL,
	[DirectDebitIban] [nvarchar](4000) NULL,
	[AuthorizationTransactionId] [nvarchar](4000) NULL,
	[AuthorizationTransactionCode] [nvarchar](4000) NULL,
	[AuthorizationTransactionResult] [nvarchar](4000) NULL,
	[CaptureTransactionId] [nvarchar](4000) NULL,
	[CaptureTransactionResult] [nvarchar](4000) NULL,
	[SubscriptionTransactionId] [nvarchar](4000) NULL,
	[PurchaseOrderNumber] [nvarchar](4000) NULL,
	[PaidDateUtc] [datetime] NULL,
	[ShippingMethod] [nvarchar](4000) NULL,
	[ShippingRateComputationMethodSystemName] [nvarchar](4000) NULL,
	[Deleted] [bit] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[RewardPointsRemaining] [int] NULL,
	[CustomerOrderComment] [nvarchar](max) NULL,
	[OrderShippingTaxRate] [decimal](18, 4) NULL,
	[PaymentMethodAdditionalFeeTaxRate] [decimal](18, 4) NULL,
	[HasNewPaymentNotification] [bit] NULL,
	[AcceptThirdPartyEmailHandOver] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderItemGuid] [uniqueidentifier] NOT NULL,
	[OrderId] [int] NOT NULL,
	[PostId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPriceInclTax] [decimal](18, 4) NOT NULL,
	[UnitPriceExclTax] [decimal](18, 4) NOT NULL,
	[PriceInclTax] [decimal](18, 4) NOT NULL,
	[PriceExclTax] [decimal](18, 4) NOT NULL,
	[DiscountAmountInclTax] [decimal](18, 4) NOT NULL,
	[DiscountAmountExclTax] [decimal](18, 4) NOT NULL,
	[AttributeDescription] [nvarchar](4000) NULL,
	[AttributesXml] [nvarchar](max) NULL,
	[DownloadCount] [int] NOT NULL,
	[IsDownloadActivated] [bit] NOT NULL,
	[LicenseDownloadId] [int] NULL,
	[ItemWeight] [decimal](18, 4) NULL,
	[BundleData] [nvarchar](max) NULL,
	[PostCost] [decimal](18, 4) NOT NULL,
	[TaxRate] [decimal](18, 4) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderNote]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderNote](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[DisplayToCustomer] [bit] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.OrderNote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PageBanner]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageBanner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Language] [nvarchar](5) NULL,
	[PageName] [nvarchar](250) NULL,
	[Status] [int] NOT NULL,
	[OrderDisplay] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.PageBanner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMethodSystemName] [nvarchar](4000) NOT NULL,
	[FullDescription] [nvarchar](4000) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NOT NULL,
	[VirtualCategoryId] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ShortDesc] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[OrderDisplay] [int] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[MetaTitle] [nvarchar](max) NULL,
	[MetaKeywords] [nvarchar](max) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[SeoUrl] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[ShowOnHomePage] [bit] NOT NULL,
	[ProductHot] [bit] NOT NULL,
	[OutOfStock] [bit] NOT NULL,
	[ProductNew] [bit] NOT NULL,
	[VirtualCatUrl] [nvarchar](max) NULL,
	[ImageBigSize] [nvarchar](max) NULL,
	[ImageMediumSize] [nvarchar](max) NULL,
	[ImageSmallSize] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[PostType] [int] NOT NULL,
	[ProductCode] [nvarchar](max) NULL,
	[EndDate] [datetime] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[TechInfo] [nvarchar](max) NULL,
	[OldOrNew] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostAttribute]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostAttribute](
	[AttibuteValueId] [int] NOT NULL,
	[PostId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PostAttribute] PRIMARY KEY CLUSTERED 
(
	[AttibuteValueId] ASC,
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostGallery]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostGallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NOT NULL,
	[Title] [nvarchar](500) NULL,
	[OrderDisplay] [int] NOT NULL,
	[ImageBigSize] [nvarchar](max) NULL,
	[ImageSmallSize] [nvarchar](max) NULL,
	[ImageMediumSize] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.PostGallery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[OrderDisplay] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Province] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repair]    Script Date: 22-Apr-18 15:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repair](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Model] [nvarchar](max) NULL,
	[ModelBrand] [nvarchar](max) NULL,
	[SerialNumber] [nvarchar](max) NULL,
	[BrandId] [int] NOT NULL,
	[OrderCode] [nvarchar](max) NULL,
	[CustomerCode] [nvarchar](max) NULL,
	[StoreName] [nvarchar](max) NULL,
	[CustomerName] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[CustomerIdNumber] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Accessories] [nvarchar](max) NULL,
	[PasswordPhone] [nvarchar](max) NULL,
	[AppleId] [nvarchar](max) NULL,
	[IcloudPassword] [nvarchar](max) NULL,
	[FixedTags] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[OldWarranty] [int] NULL,
	[PhoneStatus] [nvarchar](max) NULL,
	[WarrantyFrom] [datetime] NULL,
	[WarrantyTo] [datetime] NULL,
	[FixedFee] [decimal](18, 2) NULL,
	[Status] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Repair] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairGallery]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairGallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[RepairId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RepairGallery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairItem]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WarrantyFrom] [datetime] NULL,
	[WarrantyTo] [datetime] NULL,
	[FixedFee] [decimal](18, 2) NULL,
	[Category] [nvarchar](max) NULL,
	[RepairId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.RepairItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](450) NULL,
 CONSTRAINT [PK_dbo.Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServerMailSetting]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServerMailSetting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromAddress] [nvarchar](250) NULL,
	[SmtpClient] [nvarchar](250) NULL,
	[UserID] [nvarchar](250) NULL,
	[Password] [nvarchar](250) NULL,
	[SMTPPort] [nvarchar](50) NULL,
	[EnableSSL] [bit] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ServerMailSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SettingSeoGlobal]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SettingSeoGlobal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FbAppId] [nvarchar](max) NULL,
	[FbAdminsId] [nvarchar](max) NULL,
	[SnippetGoogleAnalytics] [nvarchar](max) NULL,
	[MetaTagMasterTool] [nvarchar](max) NULL,
	[PublisherGooglePlus] [nvarchar](max) NULL,
	[FacebookRetargetSnippet] [nvarchar](max) NULL,
	[GoogleRetargetSnippet] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[FbLink] [nvarchar](3000) NULL,
	[GooglePlusLink] [nvarchar](3000) NULL,
	[TwitterLink] [nvarchar](3000) NULL,
	[PinterestLink] [nvarchar](3000) NULL,
	[YoutubeLink] [nvarchar](3000) NULL,
 CONSTRAINT [PK_dbo.SettingSeoGlobal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingMethod]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingMethod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IgnoreCharges] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ShippingMethod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartItem]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NULL,
	[ParentItemId] [int] NULL,
	[BundleItemId] [int] NULL,
	[ShoppingCartTypeId] [int] NULL,
	[CustomerId] [int] NULL,
	[PostId] [int] NULL,
	[AttributesXml] [nvarchar](max) NULL,
	[CustomerEnteredPrice] [decimal](18, 4) NULL,
	[Quantity] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ShoppingCartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlideShow]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlideShow](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[WebsiteLink] [nvarchar](max) NULL,
	[ImgPath] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Video] [bit] NOT NULL,
	[Width] [nvarchar](50) NULL,
	[Height] [nvarchar](50) NULL,
	[Target] [nvarchar](50) NULL,
	[FromDate] [time](7) NULL,
	[ToDate] [time](7) NULL,
	[Status] [int] NOT NULL,
	[OrderDisplay] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.SlideShow] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaticContent]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaticContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NOT NULL,
	[VirtualCategoryId] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ShortDesc] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[MetaTitle] [nvarchar](max) NULL,
	[MetaKeywords] [nvarchar](max) NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[SeoUrl] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[ViewCount] [int] NOT NULL,
 CONSTRAINT [PK_dbo.StaticContents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemSetting]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemSetting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Language] [nvarchar](5) NULL,
	[Title] [nvarchar](4000) NULL,
	[FooterContent] [nvarchar](4000) NULL,
	[MetaTitle] [nvarchar](4000) NULL,
	[MetaDescription] [nvarchar](4000) NULL,
	[MetaKeywords] [nvarchar](4000) NULL,
	[Status] [int] NOT NULL,
	[FaviconImage] [nvarchar](500) NULL,
	[LogoImage] [nvarchar](500) NULL,
	[LogoFooterImage] [nvarchar](500) NULL,
	[MaintanceSite] [bit] NOT NULL,
	[Hotline] [nvarchar](4000) NULL,
	[Email] [nvarchar](4000) NULL,
	[Description] [nvarchar](4000) NULL,
	[TimeWork] [nvarchar](4000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[Slogan] [nvarchar](4000) NULL,
 CONSTRAINT [PK_dbo.SystemSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[PasswordHash] [nvarchar](4000) NULL,
	[SecurityStamp] [nvarchar](4000) NULL,
	[FirstName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[IsLockedOut] [bit] NOT NULL,
	[IsSuperAdmin] [bit] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastLogin] [datetime] NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[RoleId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.UserRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'cong', NULL, N'ddemo@gmail.com', NULL, NULL, NULL, NULL, N'cc', NULL, NULL, N'121212', NULL, NULL, NULL, CAST(N'2017-11-03T05:19:05.680' AS DateTime), N'', CAST(N'2017-11-05T15:55:42.487' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1003, N'fdsa', NULL, N'fsdfasdf@gmail.com', NULL, NULL, NULL, NULL, N'132123', NULL, NULL, N'121231312', NULL, NULL, NULL, CAST(N'2017-11-10T16:35:55.280' AS DateTime), N'Administrator', CAST(N'2017-11-11T09:27:32.843' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1004, N'cong', NULL, N'congtt@fpt.com.vn', NULL, NULL, NULL, NULL, N'hcmfdaf', NULL, NULL, N'123456', NULL, NULL, NULL, CAST(N'2017-11-11T09:30:34.953' AS DateTime), N'Administrator', CAST(N'2017-11-11T09:30:34.953' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1005, N'cong', NULL, N'a@gmail.com', NULL, NULL, NULL, NULL, N'hcm', NULL, NULL, N'123213213', NULL, NULL, NULL, CAST(N'2017-11-11T15:15:47.397' AS DateTime), N'Administrator', CAST(N'2017-11-21T16:46:16.160' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-08T15:49:16.143' AS DateTime), N'Administrator', CAST(N'2017-12-08T15:49:16.143' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-08T15:49:16.143' AS DateTime), N'Administrator', CAST(N'2017-12-08T15:49:16.143' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-16T14:16:57.927' AS DateTime), N'Administrator', CAST(N'2017-12-16T14:16:57.927' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-16T14:16:57.927' AS DateTime), N'Administrator', CAST(N'2017-12-16T14:16:57.927' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T12:45:18.723' AS DateTime), N'Administrator', CAST(N'2017-12-21T12:45:18.723' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T12:45:18.723' AS DateTime), N'Administrator', CAST(N'2017-12-21T12:45:18.723' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-22T15:05:30.017' AS DateTime), N'Administrator', CAST(N'2017-12-22T15:05:30.017' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-22T15:05:30.017' AS DateTime), N'Administrator', CAST(N'2017-12-22T15:05:30.017' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T06:50:58.593' AS DateTime), N'Administrator', CAST(N'2017-12-26T06:50:58.593' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T06:50:58.593' AS DateTime), N'Administrator', CAST(N'2017-12-26T06:50:58.593' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T06:51:29.317' AS DateTime), N'Administrator', CAST(N'2017-12-26T06:51:29.317' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T06:51:29.317' AS DateTime), N'Administrator', CAST(N'2017-12-26T06:51:29.317' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T06:55:18.680' AS DateTime), N'Administrator', CAST(N'2017-12-26T06:55:18.680' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T06:55:18.680' AS DateTime), N'Administrator', CAST(N'2017-12-26T06:55:18.680' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T06:57:25.623' AS DateTime), N'Administrator', CAST(N'2017-12-26T06:57:25.623' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T06:57:25.623' AS DateTime), N'Administrator', CAST(N'2017-12-26T06:57:25.623' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:08:34.313' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:08:34.313' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:08:34.317' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:08:34.317' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:11:30.273' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:11:30.273' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:11:30.273' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:11:30.273' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:14:42.560' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:14:42.560' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1027, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:14:42.560' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:14:42.560' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:20:43.840' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:20:43.840' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1029, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:20:43.840' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:20:43.840' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1030, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:27:05.447' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:27:05.447' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1031, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:27:05.447' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:27:05.447' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1032, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:45:26.657' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:45:26.657' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1033, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:45:26.657' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:45:26.657' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:57:21.763' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:57:21.763' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1035, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T07:57:21.763' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:57:21.763' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1036, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T12:12:34.870' AS DateTime), N'', CAST(N'2017-12-26T12:12:34.870' AS DateTime), N'')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T12:12:34.870' AS DateTime), N'', CAST(N'2017-12-26T12:12:34.870' AS DateTime), N'')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T12:44:37.900' AS DateTime), N'', CAST(N'2017-12-26T12:44:37.900' AS DateTime), N'')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1039, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T12:44:37.900' AS DateTime), N'', CAST(N'2017-12-26T12:44:37.900' AS DateTime), N'')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1040, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T16:24:03.587' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:24:03.587' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T16:24:03.587' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:24:03.587' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1042, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T16:30:06.847' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:30:06.847' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T16:30:06.847' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:30:06.847' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1048, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T16:36:46.967' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:36:46.967' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1049, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-26T16:36:46.967' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:36:46.967' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T13:37:36.200' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:37:36.200' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T13:37:36.200' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:37:36.200' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1052, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T13:38:16.987' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:38:16.987' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1053, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T13:38:16.987' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:38:16.987' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1054, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:14:09.077' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:14:09.077' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1055, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:14:09.077' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:14:09.077' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1058, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:21:02.393' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:21:02.393' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1059, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:21:02.393' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:21:02.393' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1060, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:30:21.983' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:21.983' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1061, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:30:21.983' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:21.983' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1062, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:30:45.103' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:45.103' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1063, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:30:45.103' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:45.103' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1064, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:45:37.523' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:45:37.523' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1065, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:45:37.523' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:45:37.523' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1066, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:46:46.990' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:46:46.990' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:46:46.990' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:46:46.990' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1068, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:50:19.513' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:50:19.513' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1069, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:50:19.513' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:50:19.513' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1070, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:50:44.340' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:50:44.340' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1071, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:50:44.340' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:50:44.340' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1072, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:52:49.990' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:52:49.990' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1073, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:52:49.990' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:52:49.990' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1074, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:54:07.087' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:07.087' AS DateTime), N'Administrator')
INSERT [dbo].[Address] ([Id], [FirstName], [LastName], [Email], [Company], [CountryId], [StateProvinceId], [City], [Address1], [Address2], [ZipPostalCode], [PhoneNumber], [FaxNumber], [Salutation], [Title], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1075, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-27T14:54:07.087' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:07.087' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[Address] OFF
SET IDENTITY_INSERT [dbo].[Assessment] ON 

INSERT [dbo].[Assessment] ([Id], [BillNumber], [CusomterNumber], [Address], [FullName], [Password], [IdentityCard], [Warranty], [FromWarranty], [ToWarranty], [BrandId], [Branch], [Model], [Imei], [PhoneNumber], [AppleId], [ICloudPassword], [StatusCurrent], [RepairTypeId], [RepairStatus], [Status], [StoreId], [Accessories], [OtherLink], [Description], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Hd1212', N'Kh1212', N'12', N'abc', NULL, N'1212', 1, CAST(N'2017-05-13T00:00:00.000' AS DateTime), CAST(N'2017-05-10T00:00:00.000' AS DateTime), 2, N'12', N'12', N'12', N'1212', N'12', N'12', NULL, 1, NULL, 1, 2, NULL, NULL, NULL, 1, N'images/post/abc.jpg', CAST(N'2017-05-28T16:08:47.380' AS DateTime), N'Administrator', CAST(N'2017-05-28T16:26:23.660' AS DateTime), N'Administrator')
INSERT [dbo].[Assessment] ([Id], [BillNumber], [CusomterNumber], [Address], [FullName], [Password], [IdentityCard], [Warranty], [FromWarranty], [ToWarranty], [BrandId], [Branch], [Model], [Imei], [PhoneNumber], [AppleId], [ICloudPassword], [StatusCurrent], [RepairTypeId], [RepairStatus], [Status], [StoreId], [Accessories], [OtherLink], [Description], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Hd1', N'Kh1', NULL, N'1', NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, NULL, N'1', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, CAST(N'2017-05-28T16:40:38.507' AS DateTime), N'Administrator', CAST(N'2017-05-28T16:40:38.507' AS DateTime), N'Administrator')
INSERT [dbo].[Assessment] ([Id], [BillNumber], [CusomterNumber], [Address], [FullName], [Password], [IdentityCard], [Warranty], [FromWarranty], [ToWarranty], [BrandId], [Branch], [Model], [Imei], [PhoneNumber], [AppleId], [ICloudPassword], [StatusCurrent], [RepairTypeId], [RepairStatus], [Status], [StoreId], [Accessories], [OtherLink], [Description], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, NULL, NULL, NULL, N'12', NULL, NULL, 0, NULL, NULL, 2, N'12', NULL, N'12', N'121212', NULL, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, N'12', 0, NULL, CAST(N'2017-05-28T16:41:03.900' AS DateTime), N'Administrator', CAST(N'2017-05-28T16:41:03.900' AS DateTime), N'Administrator')
INSERT [dbo].[Assessment] ([Id], [BillNumber], [CusomterNumber], [Address], [FullName], [Password], [IdentityCard], [Warranty], [FromWarranty], [ToWarranty], [BrandId], [Branch], [Model], [Imei], [PhoneNumber], [AppleId], [ICloudPassword], [StatusCurrent], [RepairTypeId], [RepairStatus], [Status], [StoreId], [Accessories], [OtherLink], [Description], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Hd1212121', N'Kh1212121', NULL, N'1', NULL, NULL, 0, NULL, NULL, 2, N'1', NULL, N'1', N'1212121', NULL, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, N'1', 0, NULL, CAST(N'2017-05-28T17:06:02.060' AS DateTime), N'Administrator', CAST(N'2017-05-28T17:06:02.060' AS DateTime), N'Administrator')
INSERT [dbo].[Assessment] ([Id], [BillNumber], [CusomterNumber], [Address], [FullName], [Password], [IdentityCard], [Warranty], [FromWarranty], [ToWarranty], [BrandId], [Branch], [Model], [Imei], [PhoneNumber], [AppleId], [ICloudPassword], [StatusCurrent], [RepairTypeId], [RepairStatus], [Status], [StoreId], [Accessories], [OtherLink], [Description], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Hd4', N'Kh4', NULL, N'3', NULL, NULL, 0, NULL, NULL, 1, N'1', NULL, N'2', N'4', NULL, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, N'4', 0, NULL, CAST(N'2017-05-28T17:06:49.413' AS DateTime), N'Administrator', CAST(N'2017-05-28T17:06:49.413' AS DateTime), N'Administrator')
INSERT [dbo].[Assessment] ([Id], [BillNumber], [CusomterNumber], [Address], [FullName], [Password], [IdentityCard], [Warranty], [FromWarranty], [ToWarranty], [BrandId], [Branch], [Model], [Imei], [PhoneNumber], [AppleId], [ICloudPassword], [StatusCurrent], [RepairTypeId], [RepairStatus], [Status], [StoreId], [Accessories], [OtherLink], [Description], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Hd12', N'Kh12', NULL, N'1', NULL, NULL, 0, NULL, NULL, 1, N'12', NULL, N'1', N'12', NULL, NULL, NULL, 2, N'1         ', 0, 0, NULL, NULL, NULL, 0, NULL, CAST(N'2017-05-28T17:11:48.973' AS DateTime), N'Administrator', CAST(N'2017-05-28T17:11:48.973' AS DateTime), N'Administrator')
INSERT [dbo].[Assessment] ([Id], [BillNumber], [CusomterNumber], [Address], [FullName], [Password], [IdentityCard], [Warranty], [FromWarranty], [ToWarranty], [BrandId], [Branch], [Model], [Imei], [PhoneNumber], [AppleId], [ICloudPassword], [StatusCurrent], [RepairTypeId], [RepairStatus], [Status], [StoreId], [Accessories], [OtherLink], [Description], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Hd12', N'Kh12', NULL, N'12', NULL, NULL, 0, NULL, NULL, 1, N'12', NULL, N'12', N'12', NULL, NULL, NULL, 2, N'12        ', 0, 0, NULL, NULL, NULL, 0, NULL, CAST(N'2017-05-29T01:41:12.013' AS DateTime), N'Administrator', CAST(N'2017-05-29T01:41:12.013' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[Assessment] OFF
SET IDENTITY_INSERT [dbo].[AttribureValue] ON 

INSERT [dbo].[AttribureValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [AttributeId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Gold', N'#ede9be', NULL, 1, 1, 1, CAST(N'2017-02-20T05:39:48.157' AS DateTime), N'Administrator', CAST(N'2017-03-23T07:05:58.880' AS DateTime), N'Administrator')
INSERT [dbo].[AttribureValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [AttributeId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Black', N'#000000', NULL, 1, 2, 1, CAST(N'2017-02-26T10:00:49.053' AS DateTime), N'Administrator', CAST(N'2017-03-23T07:09:19.473' AS DateTime), N'Administrator')
INSERT [dbo].[AttribureValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [AttributeId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Rose Gold', N'#f0cccc', NULL, 1, 3, 1, CAST(N'2017-03-23T07:06:36.943' AS DateTime), N'Administrator', CAST(N'2017-03-23T07:06:36.943' AS DateTime), N'Administrator')
INSERT [dbo].[AttribureValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [AttributeId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Silver', N'#d4d4d4', NULL, 1, 4, 1, CAST(N'2017-03-23T07:07:07.693' AS DateTime), N'Administrator', CAST(N'2017-03-23T07:07:24.647' AS DateTime), N'Administrator')
INSERT [dbo].[AttribureValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [AttributeId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Jet Black', N'#3b3b3b', NULL, 1, 5, 1, CAST(N'2017-03-23T07:09:00.457' AS DateTime), N'Administrator', CAST(N'2017-03-23T07:09:11.223' AS DateTime), N'Administrator')
INSERT [dbo].[AttribureValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [AttributeId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Red', N'#e33232', NULL, 1, 6, 1, CAST(N'2017-03-23T07:10:06.347' AS DateTime), N'Administrator', CAST(N'2017-04-13T21:44:39.413' AS DateTime), N'Administrator')
INSERT [dbo].[AttribureValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [AttributeId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Test', N'#1b5cd4', N'1', 1, 1, 1, CAST(N'2017-05-27T03:51:42.323' AS DateTime), N'Administrator', CAST(N'2017-05-27T03:51:42.323' AS DateTime), N'Administrator')
INSERT [dbo].[AttribureValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [AttributeId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, N'size M', NULL, N'12', 1, 12, 2, CAST(N'2017-05-27T03:56:27.213' AS DateTime), N'Administrator', CAST(N'2017-05-27T03:56:27.213' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[AttribureValue] OFF
SET IDENTITY_INSERT [dbo].[Attribute] ON 

INSERT [dbo].[Attribute] ([Id], [AttributeName], [OrderDisplay], [Status], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Màu', 1, 1, N'Màu điện thoại', CAST(N'2017-02-20T05:39:20.593' AS DateTime), N'Administrator', CAST(N'2017-02-20T05:39:20.593' AS DateTime), N'Administrator')
INSERT [dbo].[Attribute] ([Id], [AttributeName], [OrderDisplay], [Status], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Size', 1, 1, N'121212', CAST(N'2017-05-27T03:52:20.183' AS DateTime), N'Administrator', CAST(N'2017-09-20T15:47:42.723' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[Attribute] OFF
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([Id], [Title], [WebsiteLink], [ImgPath], [Language], [Width], [Height], [Target], [FromDate], [ToDate], [Status], [OrderDisplay], [PageId], [MenuId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Banner top quy hoạch', NULL, N'images/Ads/f4378a6a823a86e12d65577110516176_1280_470_CA.jpg', NULL, NULL, NULL, N'_blank', NULL, NULL, 1, 1, 1, 5, CAST(N'2017-02-20T06:53:33.420' AS DateTime), N'Administrator', CAST(N'2017-10-13T16:28:05.177' AS DateTime), N'Administrator')
INSERT [dbo].[Banner] ([Id], [Title], [WebsiteLink], [ImgPath], [Language], [Width], [Height], [Target], [FromDate], [ToDate], [Status], [OrderDisplay], [PageId], [MenuId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Banner top - liên hệ', NULL, N'images/Ads/chicago.jpg', NULL, NULL, NULL, N'_blank', NULL, NULL, 1, 1, 1, 2120, CAST(N'2017-02-20T07:20:15.093' AS DateTime), N'Administrator', CAST(N'2017-12-26T11:29:53.737' AS DateTime), N'Administrator')
INSERT [dbo].[Banner] ([Id], [Title], [WebsiteLink], [ImgPath], [Language], [Width], [Height], [Target], [FromDate], [ToDate], [Status], [OrderDisplay], [PageId], [MenuId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Banner top truyền thông', NULL, N'images/Ads/contact (2) (1).jpg', NULL, NULL, NULL, N'_blank', NULL, NULL, 1, 3, 1, 110, CAST(N'2017-03-20T12:15:15.163' AS DateTime), N'Administrator', CAST(N'2017-12-26T12:43:00.460' AS DateTime), N'Administrator')
INSERT [dbo].[Banner] ([Id], [Title], [WebsiteLink], [ImgPath], [Language], [Width], [Height], [Target], [FromDate], [ToDate], [Status], [OrderDisplay], [PageId], [MenuId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, N'Slide dau trang', NULL, N'images/Ads/blog-nha-dep-3.jpg', NULL, NULL, NULL, N'_blank', NULL, NULL, 1, 4, 7, NULL, CAST(N'2017-03-23T09:47:41.567' AS DateTime), N'Administrator', CAST(N'2017-10-12T14:27:45.027' AS DateTime), N'Administrator')
INSERT [dbo].[Banner] ([Id], [Title], [WebsiteLink], [ImgPath], [Language], [Width], [Height], [Target], [FromDate], [ToDate], [Status], [OrderDisplay], [PageId], [MenuId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, N'Banner công trình', NULL, N'images/Ads/Rendering_-Semi-Aerial-View-Night-View-Rev-A.jpg', NULL, NULL, NULL, N'_blank', NULL, NULL, 1, 1, 1, 6, CAST(N'2017-05-14T05:10:32.647' AS DateTime), N'Administrator', CAST(N'2017-10-11T14:37:58.487' AS DateTime), N'Administrator')
INSERT [dbo].[Banner] ([Id], [Title], [WebsiteLink], [ImgPath], [Language], [Width], [Height], [Target], [FromDate], [ToDate], [Status], [OrderDisplay], [PageId], [MenuId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, N'Banner top - gioi thieu', NULL, N'images/Ads/miami-beach.jpg', NULL, NULL, NULL, N'_blank', NULL, NULL, 1, 1, 1, 45, CAST(N'2017-06-18T08:16:04.423' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:28:27.073' AS DateTime), N'Administrator')
INSERT [dbo].[Banner] ([Id], [Title], [WebsiteLink], [ImgPath], [Language], [Width], [Height], [Target], [FromDate], [ToDate], [Status], [OrderDisplay], [PageId], [MenuId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, N'side dau trang', NULL, N'images/Ads/phong ngu 2.jpg', NULL, NULL, NULL, N'_blank', NULL, NULL, 1, 2, 7, NULL, CAST(N'2017-10-12T14:32:58.213' AS DateTime), N'Administrator', CAST(N'2017-10-12T14:32:58.213' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Description], [OrderDisplay], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'SamSung', NULL, 1, 1, CAST(N'2017-05-27T05:39:20.183' AS DateTime), N'Administrator', CAST(N'2017-05-27T06:47:57.173' AS DateTime), N'Administrator')
INSERT [dbo].[Brand] ([Id], [Name], [Description], [OrderDisplay], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Apple', NULL, 2, 1, CAST(N'2017-05-27T05:39:27.437' AS DateTime), N'Administrator', CAST(N'2017-05-27T05:39:27.437' AS DateTime), N'Administrator')
INSERT [dbo].[Brand] ([Id], [Name], [Description], [OrderDisplay], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Nokia', NULL, 1, 1, CAST(N'2017-05-27T06:25:25.383' AS DateTime), N'Administrator', CAST(N'2017-05-27T06:25:25.383' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[ContactInformation] ON 

INSERT [dbo].[ContactInformation] ([Id], [Language], [Title], [Lag], [Lat], [Type], [OrderDisplay], [Status], [Email], [Hotline], [Address], [MobilePhone], [Fax], [NumberOfStore], [ProvinceId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, NULL, N'Liên hệ', N'105.80942804655763', N'21.00882386928425', 1, 73, 1, N'info@gmail.com', N'121233335', N'Nguyễn Văn Linh', N' 0901 801 268', NULL, NULL, 1, CAST(N'2017-06-28T16:21:18.527' AS DateTime), N'Administrator', CAST(N'2017-12-27T15:04:20.277' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[ContactInformation] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, N'dce302cf-df7e-4d3d-990e-321aaa4216fa', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-10-23T16:39:06.763' AS DateTime), CAST(N'2017-10-23T16:39:06.763' AS DateTime), CAST(N'2017-10-23T16:39:06.767' AS DateTime), 0, 0, CAST(N'2017-10-23T16:39:13.417' AS DateTime), N'', CAST(N'2017-10-23T16:39:13.417' AS DateTime), N'')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, N'2366325a-0815-4733-9708-35da38f6cff3', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-10-23T16:44:14.733' AS DateTime), CAST(N'2017-10-23T16:44:14.733' AS DateTime), CAST(N'2017-10-23T16:44:14.733' AS DateTime), 0, 0, CAST(N'2017-10-23T16:44:14.757' AS DateTime), N'', CAST(N'2017-10-23T16:44:14.757' AS DateTime), N'')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, N'9feb689e-7566-4204-bab1-ba4c377a864b', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-10-24T15:29:40.803' AS DateTime), CAST(N'2017-10-24T15:29:40.803' AS DateTime), CAST(N'2017-10-24T15:29:40.803' AS DateTime), 0, 0, CAST(N'2017-10-24T15:29:40.807' AS DateTime), N'', CAST(N'2017-10-24T15:29:40.807' AS DateTime), N'')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (13, N'8edd84fa-285a-4096-934c-cab025ef9f30', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-10-24T16:36:54.183' AS DateTime), CAST(N'2017-10-24T16:36:54.183' AS DateTime), CAST(N'2017-10-24T16:36:54.183' AS DateTime), 0, 0, CAST(N'2017-10-24T16:36:54.273' AS DateTime), N'', CAST(N'2017-10-24T16:36:54.273' AS DateTime), N'')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (14, N'1265c853-5f2c-4fbc-ab4e-4010c864bd9c', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-10-27T15:42:23.707' AS DateTime), CAST(N'2017-10-27T15:42:23.707' AS DateTime), CAST(N'2017-10-27T15:42:23.707' AS DateTime), 0, 0, CAST(N'2017-10-27T15:42:23.717' AS DateTime), N'', CAST(N'2017-10-27T15:42:23.717' AS DateTime), N'')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1010, N'0b6ea41b-423c-410c-b16d-8877432b313c', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-11-01T10:58:36.063' AS DateTime), CAST(N'2017-11-01T10:58:36.063' AS DateTime), CAST(N'2017-11-01T10:58:36.063' AS DateTime), 0, 0, CAST(N'2017-11-01T10:58:36.080' AS DateTime), N'Administrator', CAST(N'2017-11-01T10:58:36.080' AS DateTime), N'Administrator')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1011, N'bc1569af-cb15-47d7-9b01-1c78193e8be4', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-11-03T02:59:18.723' AS DateTime), CAST(N'2017-11-03T02:59:18.723' AS DateTime), CAST(N'2017-11-03T02:59:18.723' AS DateTime), 1008, 1009, CAST(N'2017-11-03T02:59:18.877' AS DateTime), N'', CAST(N'2017-11-20T16:44:51.383' AS DateTime), N'Administrator')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1012, N'5d8169c5-52ce-4817-8dc7-a5c4d28ae112', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-11-06T07:33:32.817' AS DateTime), CAST(N'2017-11-06T07:33:32.817' AS DateTime), CAST(N'2017-11-06T07:33:32.817' AS DateTime), NULL, NULL, CAST(N'2017-11-06T07:33:32.880' AS DateTime), N'', CAST(N'2017-11-06T07:33:32.880' AS DateTime), N'')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2010, N'b122b3f4-a483-4490-9013-fc53fe39d5c6', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-11-10T12:41:03.617' AS DateTime), CAST(N'2017-11-10T12:41:03.617' AS DateTime), CAST(N'2017-11-10T12:41:03.617' AS DateTime), 1004, NULL, CAST(N'2017-11-10T12:41:03.663' AS DateTime), N'Administrator', CAST(N'2017-11-11T09:30:56.910' AS DateTime), N'Administrator')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2011, N'00000000-0000-0000-0000-000000000000', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-12-21T12:45:18.620' AS DateTime), CAST(N'2017-12-21T12:45:18.620' AS DateTime), CAST(N'2017-12-21T12:45:18.620' AS DateTime), 1010, 1011, CAST(N'2017-12-21T12:45:18.723' AS DateTime), N'Administrator', CAST(N'2017-12-21T12:45:18.723' AS DateTime), N'Administrator')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2012, N'75ecdf91-3d1a-443f-a5e5-82dcd61cdd28', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-12-22T15:05:29.910' AS DateTime), CAST(N'2017-12-22T15:05:29.910' AS DateTime), CAST(N'2017-12-22T15:05:29.910' AS DateTime), 1074, 1075, CAST(N'2017-12-22T15:05:30.017' AS DateTime), N'Administrator', CAST(N'2017-12-22T15:05:30.017' AS DateTime), N'Administrator')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2013, N'a6555433-ac68-4a6f-b30f-8b6aad343c4b', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-12-26T12:12:34.740' AS DateTime), CAST(N'2017-12-26T12:12:34.740' AS DateTime), CAST(N'2017-12-26T12:12:34.740' AS DateTime), 1036, 1037, CAST(N'2017-12-26T12:12:34.870' AS DateTime), N'', CAST(N'2017-12-26T12:12:34.870' AS DateTime), N'')
INSERT [dbo].[Customer] ([Id], [CustomerGuid], [Username], [Email], [Password], [PasswordFormatId], [PasswordSalt], [AdminComment], [IsTaxExempt], [AffiliateId], [Active], [Deleted], [IsSystemAccount], [SystemName], [LastIpAddress], [CreatedOnUtc], [LastLoginDateUtc], [LastActivityDateUtc], [BillingAddress_Id], [ShippingAddress_Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2014, N'1a2eac34-e76b-4277-9823-d8fa72392891', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, CAST(N'2017-12-26T12:44:37.870' AS DateTime), CAST(N'2017-12-26T12:44:37.870' AS DateTime), CAST(N'2017-12-26T12:44:37.870' AS DateTime), 1038, 1039, CAST(N'2017-12-26T12:44:37.900' AS DateTime), N'', CAST(N'2017-12-26T12:44:37.900' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[Customer] OFF
INSERT [dbo].[CustomerAddresses] ([Customer_Id], [Address_Id]) VALUES (1011, 1005)
INSERT [dbo].[CustomerAddresses] ([Customer_Id], [Address_Id]) VALUES (2010, 1004)
SET IDENTITY_INSERT [dbo].[FlowStep] ON 

INSERT [dbo].[FlowStep] ([Id], [Title], [OtherLink], [Description], [Status], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Michelle Ramirez', NULL, N'<p><span style="color:rgb(0, 0, 0); font-family:roboto; font-size:14px">Company Agent , Realtory Inc.</span></p>
', 1, 1, N'images/flowstep/tiep-nhan-thong-tin-876573e7-c776-495f-8dc6-b41f058617e8.jpg', CAST(N'2017-04-25T11:37:56.760' AS DateTime), N'Administrator', CAST(N'2017-12-26T15:51:00.097' AS DateTime), N'Administrator')
INSERT [dbo].[FlowStep] ([Id], [Title], [OtherLink], [Description], [Status], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Brittany Watkins', NULL, N'<p><span style="color:rgb(0, 0, 0); font-family:roboto; font-size:14px">Company Agent , All Real Estate</span></p>
', 1, 2, N'images/flowstep/thong-bao-tinh-trang-cdff399b-d4cf-4e04-b5f6-32219db0c624.jpg', CAST(N'2017-04-25T11:38:53.667' AS DateTime), N'Administrator', CAST(N'2017-12-26T15:50:48.647' AS DateTime), N'Administrator')
INSERT [dbo].[FlowStep] ([Id], [Title], [OtherLink], [Description], [Status], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Vincent Fuller', NULL, N'<p><span style="color:rgb(0, 0, 0); font-family:roboto; font-size:14px">Company Agent , Cool Houses Inc.</span></p>
', 1, 3, N'images/flowstep/tien-hanh-sua-chua-79f2fe0a-2039-47da-bcce-144f3e81e13d.jpg', CAST(N'2017-04-25T11:39:19.673' AS DateTime), N'Administrator', CAST(N'2017-12-26T15:50:37.430' AS DateTime), N'Administrator')
INSERT [dbo].[FlowStep] ([Id], [Title], [OtherLink], [Description], [Status], [OrderDisplay], [ImageUrl], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, N'Samuel Palmer', NULL, N'<p><span style="color:rgb(0, 0, 0); font-family:roboto; font-size:14px">Founder &amp; CEO , Realty Properties Inc.</span></p>
', 1, 4, N'images/flowstep/tra-san-pham-a33339ad-412d-4d4f-939d-f6c18652a6f8.jpg', CAST(N'2017-04-25T11:46:58.460' AS DateTime), N'Administrator', CAST(N'2017-12-26T15:50:22.607' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[FlowStep] OFF
SET IDENTITY_INSERT [dbo].[GalleryImage] ON 

INSERT [dbo].[GalleryImage] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [PostId], [AttributeValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Price]) VALUES (1, N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', N'images/post/17102017/nha-anh-son-khu-dan-cu-6b-intresco-025ec016-fef1-41cc-91d6-e1f82525944f.jpg', N'images/post/17102017/nha-anh-son-khu-dan-cu-6b-intresco-795d4db6-4a58-4fc9-92a1-e899b41e76f9.jpg', 1, 1, 40, 1, CAST(N'2017-10-17T15:58:55.387' AS DateTime), N'Administrator', CAST(N'2017-10-17T17:35:13.607' AS DateTime), N'Administrator', 2)
INSERT [dbo].[GalleryImage] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [PostId], [AttributeValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Price]) VALUES (2, N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', N'images/post/17102017/nha-anh-son-khu-dan-cu-6b-intresco-5104d409-801b-429f-92b2-7c9c3d2a3205.jpg', N'images/post/17102017/nha-anh-son-khu-dan-cu-6b-intresco-e23dd8d5-f85c-47c7-943b-8b1e56eded7e.jpg', 1, 1, 40, 2, CAST(N'2017-10-17T16:21:00.587' AS DateTime), N'Administrator', CAST(N'2017-10-17T17:35:13.623' AS DateTime), N'Administrator', 3)
INSERT [dbo].[GalleryImage] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [PostId], [AttributeValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Price]) VALUES (3, N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', N'images/post/17102017/nha-anh-son-khu-dan-cu-6b-intresco-1b12d166-1f86-4ac3-b08c-de56428ca0ab.jpg', N'images/post/17102017/nha-anh-son-khu-dan-cu-6b-intresco-66bbb24d-6bc4-4f20-97c0-441a566ca470.jpg', 1, 1, 40, 3, CAST(N'2017-10-17T16:36:24.370' AS DateTime), N'Administrator', CAST(N'2017-10-17T17:35:13.637' AS DateTime), N'Administrator', 4)
INSERT [dbo].[GalleryImage] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [PostId], [AttributeValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Price]) VALUES (25, N'KHU DU LỊCH LÀNG CHÀI', N'images/post/16112017/khu-du-lich-lang-chai-ae939c7a-4e2b-4abd-ac39-b5ffbe37c518.jpg', N'images/post/16112017/khu-du-lich-lang-chai-5bf12a3b-f735-4035-bf30-d53b703fe656.jpg', 1, 1, 46, 1, CAST(N'2017-11-16T15:55:51.513' AS DateTime), N'Administrator', CAST(N'2017-11-16T15:57:29.780' AS DateTime), N'Administrator', 4666666)
INSERT [dbo].[GalleryImage] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [PostId], [AttributeValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Price]) VALUES (26, N'KHU DU LỊCH LÀNG CHÀI', N'images/post/16112017/khu-du-lich-lang-chai-12782b4a-ad5a-4690-ad7e-b7d25c3b269c.jpg', N'images/post/16112017/khu-du-lich-lang-chai-b0777ffc-0a03-42e9-b850-8eabee9d8d36.jpg', 1, 1, 46, 2, CAST(N'2017-11-16T15:57:22.180' AS DateTime), N'Administrator', CAST(N'2017-11-16T15:57:32.980' AS DateTime), N'Administrator', 50000)
INSERT [dbo].[GalleryImage] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [PostId], [AttributeValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Price]) VALUES (27, N'Khu du lịch Cát Vân', N'images/post/16112017/khu-du-lich-cat-van-abc1225b-7e83-497b-bdc6-664adeb51bb0.jpg', N'images/post/16112017/khu-du-lich-cat-van-b683687e-e02b-4d23-a6d8-95780e3c65aa.jpg', 1, 1, 42, 1, CAST(N'2017-11-16T16:01:54.513' AS DateTime), N'Administrator', CAST(N'2017-12-13T16:56:07.110' AS DateTime), N'Administrator', 70001)
INSERT [dbo].[GalleryImage] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [PostId], [AttributeValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Price]) VALUES (28, N'Khu du lịch Cát Vân', N'images/post/16112017/khu-du-lich-cat-van-b97ee516-2f1e-402a-b4c6-449f953f40bc.jpg', N'images/post/16112017/khu-du-lich-cat-van-1f2f1dab-bf86-448e-b97b-7785d394aa46.jpg', 1, 2, 42, 2, CAST(N'2017-11-16T16:01:54.513' AS DateTime), N'Administrator', CAST(N'2017-12-13T16:56:07.197' AS DateTime), N'Administrator', 8000)
SET IDENTITY_INSERT [dbo].[GalleryImage] OFF
SET IDENTITY_INSERT [dbo].[GenericAttribute] ON 

INSERT [dbo].[GenericAttribute] ([Id], [EntityId], [KeyGroup], [Key], [Value], [StoreId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, 1, N'Customer', N'LanguageId', N'1', 1, CAST(N'2017-08-18T00:00:00.000' AS DateTime), N'Admin', CAST(N'2017-09-16T12:16:58.497' AS DateTime), N'Administrator')
INSERT [dbo].[GenericAttribute] ([Id], [EntityId], [KeyGroup], [Key], [Value], [StoreId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (16, 1011, N'Customer', N'SelectedPaymentMethod', N'Thanh toán khi giao hàng (COD)', 0, CAST(N'2017-11-21T16:21:10.263' AS DateTime), N'Administrator', CAST(N'2017-11-21T16:21:10.263' AS DateTime), N'Administrator')
INSERT [dbo].[GenericAttribute] ([Id], [EntityId], [KeyGroup], [Key], [Value], [StoreId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (17, 1011, N'Customer', N'SelectedShippingOption', N'In-Store Pickup', 0, CAST(N'2017-11-21T16:21:10.313' AS DateTime), N'Administrator', CAST(N'2017-11-21T16:21:10.313' AS DateTime), N'Administrator')
INSERT [dbo].[GenericAttribute] ([Id], [EntityId], [KeyGroup], [Key], [Value], [StoreId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1008, 1011, N'Customer', N'LanguageId', N'1', 1, CAST(N'2017-12-08T15:49:16.143' AS DateTime), N'Administrator', CAST(N'2017-12-08T15:49:16.143' AS DateTime), N'Administrator')
INSERT [dbo].[GenericAttribute] ([Id], [EntityId], [KeyGroup], [Key], [Value], [StoreId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1009, 2011, N'Customer', N'LanguageId', N'1', 1, CAST(N'2017-12-21T12:45:19.017' AS DateTime), N'Administrator', CAST(N'2017-12-21T12:45:19.017' AS DateTime), N'Administrator')
INSERT [dbo].[GenericAttribute] ([Id], [EntityId], [KeyGroup], [Key], [Value], [StoreId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1010, 2012, N'Customer', N'LanguageId', N'1', 1, CAST(N'2017-12-22T15:05:30.303' AS DateTime), N'Administrator', CAST(N'2017-12-22T15:05:30.303' AS DateTime), N'Administrator')
INSERT [dbo].[GenericAttribute] ([Id], [EntityId], [KeyGroup], [Key], [Value], [StoreId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1011, 2013, N'Customer', N'LanguageId', N'1', 1, CAST(N'2017-12-26T12:12:35.637' AS DateTime), N'', CAST(N'2017-12-26T12:12:35.637' AS DateTime), N'')
INSERT [dbo].[GenericAttribute] ([Id], [EntityId], [KeyGroup], [Key], [Value], [StoreId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1012, 2014, N'Customer', N'LanguageId', N'1', 1, CAST(N'2017-12-26T12:44:37.997' AS DateTime), N'', CAST(N'2017-12-26T12:44:37.997' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[GenericAttribute] OFF
SET IDENTITY_INSERT [dbo].[GenericControl] ON 

INSERT [dbo].[GenericControl] ([Id], [Name], [OrderDisplay], [Status], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MenuId], [ControlTypeId]) VALUES (1, N'Thuộc tính post chi tiết', 0, 1, NULL, CAST(N'2017-08-20T11:04:33.387' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:29:49.820' AS DateTime), N'Administrator', 3, 4)
SET IDENTITY_INSERT [dbo].[GenericControl] OFF
INSERT [dbo].[GenericControlMenuLink] ([GenericControlId], [MenuLinkId]) VALUES (1, 3)
INSERT [dbo].[GenericControlMenuLink] ([GenericControlId], [MenuLinkId]) VALUES (1, 5)
INSERT [dbo].[GenericControlMenuLink] ([GenericControlId], [MenuLinkId]) VALUES (1, 41)
INSERT [dbo].[GenericControlMenuLink] ([GenericControlId], [MenuLinkId]) VALUES (1, 2121)
INSERT [dbo].[GenericControlMenuLink] ([GenericControlId], [MenuLinkId]) VALUES (1, 2122)
INSERT [dbo].[GenericControlMenuLink] ([GenericControlId], [MenuLinkId]) VALUES (1, 2126)
INSERT [dbo].[GenericControlMenuLink] ([GenericControlId], [MenuLinkId]) VALUES (1, 2127)
INSERT [dbo].[GenericControlMenuLink] ([GenericControlId], [MenuLinkId]) VALUES (1, 2129)
SET IDENTITY_INSERT [dbo].[GenericControlValue] ON 

INSERT [dbo].[GenericControlValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [GenericControlId], [EntityId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, N'Địa điểm', N'39 Trần Quốc Thảo, phường 6, quận 3, Tp Hồ Chí Minh1 12323', NULL, 1, NULL, 1, 51, CAST(N'2017-05-27T03:56:27.213' AS DateTime), N'Administrator', CAST(N'2017-10-15T13:48:49.490' AS DateTime), N'Administrator')
INSERT [dbo].[GenericControlValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [GenericControlId], [EntityId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, N'Giá', NULL, NULL, 1, NULL, 1, 0, CAST(N'2017-10-05T16:28:29.253' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:31:06.197' AS DateTime), N'Administrator')
INSERT [dbo].[GenericControlValue] ([Id], [ValueName], [ColorHex], [Description], [Status], [OrderDisplay], [GenericControlId], [EntityId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (25, N'Diện tích', NULL, NULL, 1, NULL, 1, 0, CAST(N'2017-12-10T13:24:31.700' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:31:17.223' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[GenericControlValue] OFF
SET IDENTITY_INSERT [dbo].[GenericControlValueItem] ON 

INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (1, N'Địa điểm', NULL, NULL, 1, 1, 42, 8, CAST(N'2017-05-27T03:56:27.213' AS DateTime), N'Administator', CAST(N'2017-12-14T15:43:00.157' AS DateTime), N'Administrator', N'a1212')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (2, N'Thông tin chủ đầu tư', NULL, NULL, 1, 1, 42, 9, CAST(N'2017-12-10T12:35:22.257' AS DateTime), N'Administrator', CAST(N'2017-12-14T15:43:00.183' AS DateTime), N'Administrator', N'b')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (16, N'Địa điểm', NULL, NULL, 1, 1, 46, 8, CAST(N'2017-12-10T13:22:06.223' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:31:57.283' AS DateTime), N'Administrator', N'81 Lê Thánh Tôn, Bến Nghé, Quận 1, Hồ Chí Minh,')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (17, N'Thông tin chủ đầu tư', NULL, NULL, 1, 1, 46, 9, CAST(N'2017-12-10T13:22:06.270' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:31:57.297' AS DateTime), N'Administrator', N'80 m²')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (31, N'Quy mô', NULL, NULL, 1, 1, 42, 25, CAST(N'2017-12-10T13:24:42.137' AS DateTime), N'Administrator', CAST(N'2017-12-14T15:43:00.187' AS DateTime), N'Administrator', N'4000')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (32, N'Quy mô', NULL, NULL, 1, 1, 46, 25, CAST(N'2017-12-10T13:25:01.880' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:31:57.300' AS DateTime), N'Administrator', N'35 Triệu/m2')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (33, N'Địa điểm', NULL, NULL, 1, 1, 54, 8, CAST(N'2017-12-15T16:12:07.267' AS DateTime), N'Administrator', CAST(N'2017-12-15T16:12:14.453' AS DateTime), N'Administrator', N'14')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (34, N'Thông tin chủ đầu tư', NULL, NULL, 1, 1, 54, 9, CAST(N'2017-12-15T16:12:07.510' AS DateTime), N'Administrator', CAST(N'2017-12-15T16:12:14.510' AS DateTime), N'Administrator', N'2')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (35, N'Quy mô', NULL, NULL, 1, 1, 54, 25, CAST(N'2017-12-15T16:12:07.513' AS DateTime), N'Administrator', CAST(N'2017-12-15T16:12:14.517' AS DateTime), N'Administrator', N'3')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (36, N'Địa điểm', NULL, NULL, 1, 1, 53, 8, CAST(N'2017-12-15T16:12:29.187' AS DateTime), N'Administrator', CAST(N'2017-12-15T16:12:29.187' AS DateTime), N'Administrator', N'3')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (37, N'Thông tin chủ đầu tư', NULL, NULL, 1, 1, 53, 9, CAST(N'2017-12-15T16:12:29.197' AS DateTime), N'Administrator', CAST(N'2017-12-15T16:12:29.197' AS DateTime), N'Administrator', N'3')
INSERT [dbo].[GenericControlValueItem] ([Id], [Title], [ImagePath], [ImageThumbnail], [Status], [OrderDisplay], [EntityId], [GenericControlValueId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Value]) VALUES (38, N'Quy mô', NULL, NULL, 1, 1, 53, 25, CAST(N'2017-12-15T16:12:29.200' AS DateTime), N'Administrator', CAST(N'2017-12-15T16:12:29.200' AS DateTime), N'Administrator', N'3')
SET IDENTITY_INSERT [dbo].[GenericControlValueItem] OFF
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([Id], [LanguageName], [LanguageCode], [Flag], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Viet nam', N'vi-VN', N'images/language/vn.png', 1, CAST(N'2017-05-30T16:31:44.337' AS DateTime), N'Administrator', CAST(N'2017-12-13T16:53:30.030' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[Language] OFF
SET IDENTITY_INSERT [dbo].[LocaleStringResource] ON 

INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, 1, N'AboutUs', N'About', 0, 1, CAST(N'2017-01-01T00:00:00.000' AS DateTime), N'Administrator', CAST(N'2017-07-25T03:43:10.530' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (17, 1, N'XemThem', N'Xem thêm', 0, 1, CAST(N'2017-07-20T00:42:46.653' AS DateTime), N'Administrator', CAST(N'2017-07-25T03:46:44.253' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (18, 1, N'LienHeDatHang', N'Liên hệ đặt hàng', 0, 1, CAST(N'2017-07-20T00:44:30.590' AS DateTime), N'Administrator', CAST(N'2017-07-24T09:38:52.790' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (19, 1, N'XemChiTiet', N'Xem chi tiết', 0, 1, CAST(N'2017-07-20T00:52:20.307' AS DateTime), N'Administrator', CAST(N'2017-07-25T03:41:55.533' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (20, 1, N'XemSanPham', N'Xem sản phẩm', 0, 1, CAST(N'2017-07-20T00:52:49.703' AS DateTime), N'Administrator', CAST(N'2017-07-25T03:48:02.260' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (21, 1, N'ThongTinTruyenThong', N'thông tin truyền thông', 0, 1, CAST(N'2017-07-20T00:55:03.130' AS DateTime), N'Administrator', CAST(N'2017-07-25T03:51:10.550' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (25, 1, N'ThanhVien', N'Thành viên', 0, 1, CAST(N'2017-07-20T03:29:32.940' AS DateTime), N'Administrator', CAST(N'2017-12-25T16:06:09.830' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (28, 1, N'DienThoai.Lable', N'Điện thoại', 0, 1, CAST(N'2017-07-20T03:49:00.200' AS DateTime), N'Administrator', CAST(N'2017-10-08T18:17:45.207' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (45, 1, N'DiaChi.Lable', N'Địa chỉ', 0, 1, CAST(N'2017-07-25T03:58:21.767' AS DateTime), N'Administrator', CAST(N'2017-07-25T08:19:12.833' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (55, 1, N'HoTen.Lable', N'Họ tên', 0, 0, CAST(N'2017-07-25T09:22:02.913' AS DateTime), N'Administrator', CAST(N'2017-07-25T09:22:02.913' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (58, 1, N'NoiDungLienLac', N'Nội dung liên lạc', 0, 0, CAST(N'2017-07-25T15:48:34.867' AS DateTime), N'Administrator', CAST(N'2017-07-25T15:48:34.867' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (61, 1, N'btnSend', N'Gửi', 0, 0, CAST(N'2017-07-25T15:50:04.307' AS DateTime), N'Administrator', CAST(N'2017-07-25T15:50:04.307' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (70, 1, N'Email.Lable', N'Email', 0, 0, CAST(N'2017-07-26T06:26:24.550' AS DateTime), N'Administrator', CAST(N'2017-07-26T06:26:24.550' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (73, 1, N'ProductReleate.Lable', N'sản phẩm khác', 0, 0, CAST(N'2017-07-26T09:32:29.697' AS DateTime), N'Administrator', CAST(N'2017-07-26T09:32:29.697' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (76, 1, N'Tax.Lable', N'Mã số thuế', 0, 0, CAST(N'2017-08-11T15:59:54.813' AS DateTime), N'Administrator', CAST(N'2017-08-11T15:59:54.813' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (81, 1, N'Continus.Lable', N'Tiếp tục', 0, 0, CAST(N'2017-10-08T16:36:57.207' AS DateTime), N'Administrator', CAST(N'2017-10-08T16:36:57.207' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (82, 1, N'Social.Lable', N'Mạng xã hội', 0, 0, CAST(N'2017-10-08T17:17:40.547' AS DateTime), N'Administrator', CAST(N'2017-10-08T17:17:40.547' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (83, 1, N'Address.Lable', N'Địa chỉ', 0, 0, CAST(N'2017-10-08T18:01:47.623' AS DateTime), N'Administrator', CAST(N'2017-10-08T18:01:47.623' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (84, 1, N'TrangChu', N'Trang chủ', 0, 0, CAST(N'2017-12-26T02:50:59.690' AS DateTime), N'Administrator', CAST(N'2017-12-26T02:50:59.690' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (85, 1, N'DanhMuc', N'Danh mục', 0, 0, CAST(N'2017-12-26T04:08:09.600' AS DateTime), N'Administrator', CAST(N'2017-12-26T04:08:09.600' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (86, 1, N'ChiTiet', N'Chi tiết', 0, 1, CAST(N'2017-12-26T06:54:35.007' AS DateTime), N'Administrator', CAST(N'2017-12-26T06:59:11.593' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (87, 1, N'MoTa', N'Mô tả', 0, 0, CAST(N'2017-12-26T07:28:48.730' AS DateTime), N'Administrator', CAST(N'2017-12-26T07:28:48.730' AS DateTime), N'Administrator')
INSERT [dbo].[LocaleStringResource] ([Id], [LanguageId], [ResourceName], [ResourceValue], [IsFromPlugin], [IsTouched], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (89, 1, N'NewsReleate.Lable', N'Tin liên quan', 0, 0, CAST(N'2017-12-26T12:58:44.333' AS DateTime), N'Administrator', CAST(N'2017-12-26T12:58:44.333' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[LocaleStringResource] OFF
SET IDENTITY_INSERT [dbo].[LocalizedProperty] ON 

INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (18, 2123, 1, N'MenuLink', N'MenuName', N'Trang chủ', CAST(N'2017-07-06T16:58:04.527' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:13.540' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (19, 2123, 1, N'MenuLink', N'MetaTitle', N'Trang chủ', CAST(N'2017-07-06T16:58:04.553' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:13.547' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (20, 2123, 1, N'MenuLink', N'MetaKeywords', N'Trang chủ', CAST(N'2017-07-06T16:58:04.557' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:13.553' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (21, 2123, 1, N'MenuLink', N'MetaDescription', N'Trang chủ', CAST(N'2017-07-06T16:58:04.560' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:13.557' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (30, 110, 1, N'MenuLink', N'MenuName', N'Tin tức', CAST(N'2017-07-06T17:22:38.677' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:24:38.897' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (31, 110, 1, N'MenuLink', N'MetaTitle', N'Tin tức', CAST(N'2017-07-06T17:22:38.707' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:24:38.923' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (32, 110, 1, N'MenuLink', N'MetaKeywords', N'Tin tức', CAST(N'2017-07-06T17:22:38.710' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:24:38.930' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (33, 110, 1, N'MenuLink', N'MetaDescription', N'Tin tức', CAST(N'2017-07-06T17:22:38.713' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:24:38.943' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (44, 2138, 1, N'MenuLink', N'MenuName', N'1', CAST(N'2017-07-10T14:35:33.247' AS DateTime), N'Administrator', CAST(N'2017-07-10T14:35:33.247' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (45, 2138, 1, N'MenuLink', N'MetaTitle', N'12', CAST(N'2017-07-10T14:35:33.257' AS DateTime), N'Administrator', CAST(N'2017-07-10T14:35:33.257' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (46, 2138, 1, N'MenuLink', N'MetaKeywords', N'1', CAST(N'2017-07-10T14:35:33.260' AS DateTime), N'Administrator', CAST(N'2017-07-10T14:35:33.260' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (47, 2138, 1, N'MenuLink', N'MetaDescription', N'1', CAST(N'2017-07-10T14:35:33.263' AS DateTime), N'Administrator', CAST(N'2017-07-10T14:35:33.263' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (59, 2140, 1, N'MenuLink', N'MenuName', N'1', CAST(N'2017-07-10T15:28:40.887' AS DateTime), N'Administrator', CAST(N'2017-07-10T15:28:40.887' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (110, 14, 1, N'StaticContent', N'Title', N'Giới thiệu', CAST(N'2017-07-22T02:20:41.997' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:23:37.467' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (111, 14, 1, N'StaticContent', N'MetaTitle', N'Giới thiệu', CAST(N'2017-07-22T02:20:42.470' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:23:37.490' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (112, 14, 1, N'StaticContent', N'MetaKeywords', N'Giới thiệu', CAST(N'2017-07-22T02:20:42.530' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:23:37.493' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (113, 14, 1, N'StaticContent', N'MetaDescription', N'Giới thiệu', CAST(N'2017-07-22T02:20:42.570' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:23:37.497' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (116, 2119, 1, N'MenuLink', N'MenuName', N'Hồ sơ năng lực', CAST(N'2017-07-22T02:32:02.743' AS DateTime), N'Administrator', CAST(N'2017-10-14T06:12:44.147' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (117, 2119, 1, N'MenuLink', N'MetaTitle', N'Hồ sơ năng lực', CAST(N'2017-07-22T02:32:02.777' AS DateTime), N'Administrator', CAST(N'2017-10-14T06:12:44.167' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (118, 2119, 1, N'MenuLink', N'MetaKeywords', N'Hồ sơ năng lực', CAST(N'2017-07-22T02:32:02.780' AS DateTime), N'Administrator', CAST(N'2017-10-14T06:12:44.173' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (119, 2119, 1, N'MenuLink', N'MetaDescription', N'Hồ sơ năng lực', CAST(N'2017-07-22T02:32:02.787' AS DateTime), N'Administrator', CAST(N'2017-10-14T06:12:44.180' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (125, 14, 1, N'StaticContent', N'SeoUrl', N'gioi-thieu', CAST(N'2017-07-22T05:26:28.990' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:23:37.487' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (131, 16, 1, N'StaticContent', N'Title', N'Chính sách giao hàng trang chủ', CAST(N'2017-07-23T07:28:23.157' AS DateTime), N'Administrator', CAST(N'2017-12-15T15:43:34.220' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (132, 16, 1, N'StaticContent', N'ShortDesc', N'<div class="policies nobottommargin">
<div class="container clearfix">
<div class="row">
<div class="col-xs-12 col-sm-3">
<div class="feature-box fbox-plain fbox-dark fbox-small">
<div class="fbox-icon"><img alt="Công ty TNHH SionSanVat" src="/assets/lib/policies_icon_1677f.png?v=226" /></div>

<h3>GIAO H&Agrave;NG TO&Agrave;N QUỐC</h3>

<p>Miễn ph&iacute; khi mua nhiều</p>
</div>
</div>

<div class="col-xs-12 col-sm-3">
<div class="feature-box fbox-plain fbox-dark fbox-small">
<div class="fbox-icon"><img alt="Công ty TNHH SionSanVat" src="/assets/lib/policies_icon_2677f.png?v=226" /></div>

<h3>QU&Agrave; TẶNG</h3>

<p>Nhiều qu&agrave; tặng v&agrave; ưu đ&atilde;i hấp dẫn</p>
</div>
</div>

<div class="col-xs-12 col-sm-3">
<div class="feature-box fbox-plain fbox-dark fbox-small">
<div class="fbox-icon"><img alt="Công ty TNHH SionSanVat" src="/assets/lib/policies_icon_3677f.png?v=226" /></div>

<h3>CHẤT LƯỢNG</h3>

<p>Sản phẩm đẹp, bền - G&iacute;a tốt nhất</p>
</div>
</div>

<div class="col-xs-12 col-sm-3">
<div class="feature-box fbox-plain fbox-dark fbox-small">
<div class="fbox-icon"><img alt="Công ty TNHH SionSanVat" src="/assets/lib/policies_icon_4677f.png?v=226" /></div>

<h3>ĐẶT H&Agrave;NG NHANH</h3>

<p>0937 996 063</p>
</div>
</div>
</div>
</div>
</div>
', CAST(N'2017-07-23T07:28:23.187' AS DateTime), N'Administrator', CAST(N'2017-12-15T15:43:34.223' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (133, 16, 1, N'StaticContent', N'Description', NULL, CAST(N'2017-07-23T07:28:23.190' AS DateTime), N'Administrator', CAST(N'2017-12-15T15:43:34.227' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (134, 16, 1, N'StaticContent', N'SeoUrl', N'chinh-sach-giao-hang-trang-chu', CAST(N'2017-07-23T07:28:23.193' AS DateTime), N'Administrator', CAST(N'2017-12-15T15:43:34.233' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (135, 16, 1, N'StaticContent', N'MetaTitle', N'Chính sách giao hàng trang chủ', CAST(N'2017-07-23T07:28:23.197' AS DateTime), N'Administrator', CAST(N'2017-12-15T15:43:34.237' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (136, 16, 1, N'StaticContent', N'MetaKeywords', N'Chính sách giao hàng trang chủ', CAST(N'2017-07-23T07:28:23.200' AS DateTime), N'Administrator', CAST(N'2017-12-15T15:43:34.240' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (137, 16, 1, N'StaticContent', N'MetaDescription', N'Chính sách giao hàng trang chủ', CAST(N'2017-07-23T07:28:23.203' AS DateTime), N'Administrator', CAST(N'2017-12-15T15:43:34.243' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (181, 14, 1, N'StaticContent', N'ShortDesc', N'<p><span style="color:#FFFFFF"><span style="font-family:utmcaviar,sans-serif; font-size:16px">Dự &aacute;n căn hộ Vĩnh Lộc D&rsquo;Gold được ra mắt đầu năm 2015 nhằm mục đ&iacute;ch giải quyết nhu cầu mua nh&agrave; cho người thu nhập thấp bởi những căn hộ với mức gi&aacute; thấp v&agrave; trung b&igrave;nh ng&agrave;y c&agrave;ng khan hiếm tr&ecirc;n thị trường nh&agrave; ở chung cư hay nh&agrave; ở x&atilde; hội hiện nay.</span></span></p>
', CAST(N'2017-07-24T02:20:28.490' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:23:37.470' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (182, 14, 1, N'StaticContent', N'Description', N'<div class="row">
<div class="col-md-12">
<p><span style="color:rgb(29, 33, 41); font-family:helvetica,arial,sans-serif; font-size:14px">Dự &aacute;n Căn Hộ Madison sở hữu vị tr&iacute; &ldquo;v&agrave;ng&rdquo; ngay giữa trung t&acirc;m quận 1, với 2 mặt tiền đường Thi S&aacute;ch v&agrave; Cao B&aacute; Qu&aacute;t, đ&acirc;y l&agrave; dự &aacute;n hiếm hoi c&oacute; căn hộ sở hữu l&acirc;u d&agrave;i giữa l&ograve;ng c&aacute;c Trung t&acirc;m thương mại &ndash; Văn ph&ograve;ng &ndash; Kh&aacute;ch sạn &ndash; Dịch vụ cao cấp bậc nhất TP. Hồ h&iacute; Minh. Từ đ&acirc;y chỉ mất v&agrave;i ph&uacute;t để đi đến khu h&agrave;ng ch&iacute;nh Quận 1 v&agrave; c&aacute;c địa điểm biểu tượng của Th&agrave;nh phố như: Chợ Bến Th&agrave;nh, nh&agrave; h&aacute;t Th&agrave;nh Phố hay Bến Nh&agrave; Rồng.</span><br />
<span style="color:rgb(29, 33, 41); font-family:helvetica,arial,sans-serif; font-size:14px">C&ugrave;ng với thiết kế hiện đại, sang trọng, Căn Hộ Madison hứa hẹn sẽ l&agrave; khu phức hợp mang đến một m&ocirc;i trường sống an to&agrave;n v&agrave; tiện nghi, đ&aacute;p ứng trọn vẹn cho nhu cầu an cư v&agrave; đầu tư l&acirc;u d&agrave;i.</span></p>
</div>
</div>

<p style="margin-left:40px">&nbsp;</p>
', CAST(N'2017-07-24T02:20:28.520' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:23:37.483' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (223, 1115, 1, N'MenuLink', N'MenuName', N'Phân tích thị trường', CAST(N'2017-07-24T08:39:25.307' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:47.667' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (224, 1115, 1, N'MenuLink', N'SeoUrl', N'phan-tich-thi-truong', CAST(N'2017-07-24T08:39:25.333' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:47.677' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (225, 1115, 1, N'MenuLink', N'MetaTitle', N'Phân tích thị trường', CAST(N'2017-07-24T08:39:25.337' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:47.680' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (226, 1115, 1, N'MenuLink', N'MetaKeywords', N'Phân tích thị trường', CAST(N'2017-07-24T08:39:25.340' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:47.683' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (227, 1115, 1, N'MenuLink', N'MetaDescription', N'Phân tích thị trường', CAST(N'2017-07-24T08:39:25.350' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:47.690' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (235, 110, 1, N'MenuLink', N'SeoUrl', N'tin-tuc', CAST(N'2017-07-24T08:42:57.950' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:24:38.913' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (238, 42, 1, N'Post', N'Title', N'Khu du lịch Cát Vân', CAST(N'2017-07-24T09:08:27.937' AS DateTime), N'Administrator', CAST(N'2017-12-23T17:07:44.533' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (239, 42, 1, N'Post', N'ProductCode', N'Khu du lịch Cát Vân1', CAST(N'2017-07-24T09:08:27.963' AS DateTime), N'Administrator', CAST(N'2017-12-23T17:07:44.553' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (240, 42, 1, N'Post', N'MetaTitle', N'Khu du lịch Cát Vân', CAST(N'2017-07-24T09:08:27.973' AS DateTime), N'Administrator', CAST(N'2017-12-23T17:07:44.590' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (241, 42, 1, N'Post', N'MetaKeywords', N'Khu du lịch Cát Vân', CAST(N'2017-07-24T09:08:27.977' AS DateTime), N'Administrator', CAST(N'2017-12-23T17:07:44.600' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (242, 42, 1, N'Post', N'MetaDescription', N'Khu du lịch Cát Vân', CAST(N'2017-07-24T09:08:27.980' AS DateTime), N'Administrator', CAST(N'2017-12-23T17:07:44.607' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (278, 1, 1, N'ContactInformation', N'Title', N'Công ty TNHH Sản Xuất Thương Mại Thiên Phát ', CAST(N'2017-07-25T08:18:08.160' AS DateTime), N'Administrator', CAST(N'2017-07-25T08:18:08.160' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (279, 1, 1, N'ContactInformation', N'Address', N'Ấp Tân Thuận, Xã Bình Đức, Huyện Châu Thành, Tỉnh   Tiền Giang, Việt Nam', CAST(N'2017-07-25T08:18:08.170' AS DateTime), N'Administrator', CAST(N'2017-07-25T08:18:08.170' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (288, 1, 1, N'SystemSetting', N'Title', N'Công ty TNHH SionSanVat', CAST(N'2017-07-25T15:58:52.127' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:51:34.340' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (289, 1, 1, N'SystemSetting', N'FooterContent', N'<p>Copyright &copy; 2017 C&ocirc;ng ty TNHH SionSanVat</p>
', CAST(N'2017-07-25T15:58:52.153' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:51:34.343' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (290, 1, 1, N'SystemSetting', N'MetaTitle', N'Công ty TNHH SionSanVat', CAST(N'2017-07-25T15:58:52.157' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:51:34.350' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (291, 1, 1, N'SystemSetting', N'MetaKeywords', N'Công ty TNHH SionSanVat', CAST(N'2017-07-25T15:58:52.160' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:51:34.357' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (292, 1, 1, N'SystemSetting', N'MetaDescription', N'Công ty TNHH SionSanVat', CAST(N'2017-07-25T15:58:52.163' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:51:34.360' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (303, 2123, 1, N'MenuLink', N'SeoUrl', N'trang-chu', CAST(N'2017-07-25T16:46:15.690' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:13.543' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (321, 2120, 1, N'MenuLink', N'MenuName', N'Liên hệ', CAST(N'2017-07-25T16:48:08.277' AS DateTime), N'Administrator', CAST(N'2017-07-25T16:48:08.277' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (322, 2120, 1, N'MenuLink', N'SeoUrl', N'lien-he', CAST(N'2017-07-25T16:48:08.283' AS DateTime), N'Administrator', CAST(N'2017-07-25T16:48:08.283' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (323, 2120, 1, N'MenuLink', N'MetaTitle', N'Liên hệ', CAST(N'2017-07-25T16:48:08.287' AS DateTime), N'Administrator', CAST(N'2017-07-25T16:48:08.287' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (324, 2120, 1, N'MenuLink', N'MetaKeywords', N'Liên hệ', CAST(N'2017-07-25T16:48:08.293' AS DateTime), N'Administrator', CAST(N'2017-07-25T16:48:08.293' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (325, 2120, 1, N'MenuLink', N'MetaDescription', N'Liên hệ', CAST(N'2017-07-25T16:48:08.297' AS DateTime), N'Administrator', CAST(N'2017-07-25T16:48:08.297' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (377, 42, 1, N'Post', N'ShortDesc', N'<p><span style="background-color:rgba(255, 255, 255, 0.85); font-family:myriadpro; font-size:16px">Sản Phẩm Mỡ C&aacute; Basa được chế biến trong m&ocirc;i trường vệ sinh, an to&agrave;n thực phẩm với hệ thống nh&agrave; m&aacute;y sản xuất ...</span></p>
', CAST(N'2017-07-26T02:46:53.220' AS DateTime), N'Administrator', CAST(N'2017-12-23T17:07:44.567' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (378, 42, 1, N'Post', N'TechInfo', N'<p>Sản Phẩm Mỡ C&aacute; Basa được chế biến trong m&ocirc;i trường vệ sinh, an to&agrave;n thực phẩm với hệ thống nh&agrave; m&aacute;y sản xuất được &aacute;p dụng c&aacute;c c&ocirc;ng nghệ ti&ecirc;n tiến hiện đại.</p>

<p>Xuất xứ: Việt Nam</p>

<p>Loại c&aacute;: C&aacute; Tra</p>

<p>Qui c&aacute;ch đ&oacute;ng g&oacute;i: 193kg/th&ugrave;ng phi hoặc 20 tấn/flexitank</p>

<p>Số lượng cung ứng: 1000-1200 tấn/th&aacute;ng</p>

<table border="1" cellpadding="5" cellspacing="1" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; font-family:myriadpro; font-size:16px; outline:0px; width:500px">
	<tbody>
		<tr>
			<td style="text-align:center"><span style="color:rgb(0, 128, 0)"><strong>Ti&ecirc;u chuẩn chất lượng</strong></span></td>
			<td style="text-align:center"><span style="color:rgb(0, 128, 0)"><strong>Ti&ecirc;u chuẩn Việt Nam</strong></span></td>
		</tr>
		<tr>
			<td style="text-align:center">Chỉ số Acid (mgKOH/g)</td>
			<td style="text-align:center">3% max</td>
		</tr>
		<tr>
			<td style="text-align:center">Chỉ số Iodine (gI&shy;2/100g)</td>
			<td style="text-align:center">80 max</td>
		</tr>
	</tbody>
</table>
', CAST(N'2017-07-26T02:47:07.180' AS DateTime), N'Administrator', CAST(N'2017-12-23T17:07:44.580' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (398, 2119, 1, N'MenuLink', N'SeoUrl', N'ho-so-nang-luc', CAST(N'2017-07-26T06:12:59.213' AS DateTime), N'Administrator', CAST(N'2017-10-14T06:12:44.160' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (406, 2121, 1, N'MenuLink', N'MenuName', N'Resort', CAST(N'2017-07-26T06:40:02.690' AS DateTime), N'Administrator', CAST(N'2017-10-09T16:44:56.723' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (407, 2121, 1, N'MenuLink', N'SeoUrl', N'resort', CAST(N'2017-07-26T06:40:02.703' AS DateTime), N'Administrator', CAST(N'2017-10-09T16:44:56.740' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (408, 2121, 1, N'MenuLink', N'MetaTitle', N'Resort', CAST(N'2017-07-26T06:40:02.707' AS DateTime), N'Administrator', CAST(N'2017-10-09T16:44:56.747' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (409, 2121, 1, N'MenuLink', N'MetaKeywords', N'Resort', CAST(N'2017-07-26T06:40:02.713' AS DateTime), N'Administrator', CAST(N'2017-10-09T16:44:56.757' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (410, 2121, 1, N'MenuLink', N'MetaDescription', N'Resort', CAST(N'2017-07-26T06:40:02.717' AS DateTime), N'Administrator', CAST(N'2017-10-09T16:44:56.770' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (420, 2122, 1, N'MenuLink', N'MenuName', N'Khách sạn', CAST(N'2017-07-26T06:40:39.813' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:55.473' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (421, 2122, 1, N'MenuLink', N'SeoUrl', N'khach-san', CAST(N'2017-07-26T06:40:39.820' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:55.493' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (422, 2122, 1, N'MenuLink', N'MetaTitle', N'Khách sạn', CAST(N'2017-07-26T06:40:39.823' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:55.500' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (423, 2122, 1, N'MenuLink', N'MetaKeywords', N'Khách sạn', CAST(N'2017-07-26T06:40:39.827' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:55.507' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (424, 2122, 1, N'MenuLink', N'MetaDescription', N'Khách sạn', CAST(N'2017-07-26T06:40:39.833' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:55.510' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (446, 2115, 1, N'MenuLink', N'MenuName', N'Danh sách công nghiệp', CAST(N'2017-07-26T09:09:51.357' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:03.290' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (447, 2115, 1, N'MenuLink', N'SeoUrl', N'danh-sach-cong-nghiep', CAST(N'2017-07-26T09:09:51.363' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:03.293' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (448, 2115, 1, N'MenuLink', N'MetaTitle', N'Danh sách công nghiệp', CAST(N'2017-07-26T09:09:51.367' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:03.300' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (449, 2115, 1, N'MenuLink', N'MetaKeywords', N'Danh sách công nghiệp', CAST(N'2017-07-26T09:09:51.373' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:03.303' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (450, 2115, 1, N'MenuLink', N'MetaDescription', N'Danh sách công nghiệp', CAST(N'2017-07-26T09:09:51.377' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:03.310' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (460, 9, 1, N'News', N'Title', N'CHẤT BÉO CÓ THỰC SỰ LÀ KẺ THÙ CỦA CƠ THỂ?', CAST(N'2017-07-26T09:35:23.897' AS DateTime), N'Administrator', CAST(N'2017-12-24T16:00:16.717' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (461, 9, 1, N'News', N'ShortDesc', N'<p>L&agrave; một trong bốn nh&oacute;m dinh dưỡng quan trọng kh&ocirc;ng thể thiếu trong bữa ăn hằng ng&agrave;y nhưng chất b&eacute;o cũng thường xuy&ecirc;n bị &ldquo;tố c&aacute;o&rdquo; l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave;m tăng c&acirc;n v&agrave; nhiều vấn đề sức khỏe kh&aacute;c. Vậy thực sự, chất b&eacute;o l&agrave; &ldquo;bạn hay th&ugrave;&rdquo;? Chất b&eacute;o l&agrave;nh mạnh tốt cho sức khỏe</p>
', CAST(N'2017-07-26T09:35:23.907' AS DateTime), N'Administrator', CAST(N'2017-12-24T16:00:16.733' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (462, 9, 1, N'News', N'Description', N'<p><strong><span style="font-family:arial; font-size:14px">L&agrave; một trong bốn nh&oacute;m dinh dưỡng quan trọng kh&ocirc;ng thể thiếu trong bữa ăn hằng ng&agrave;y nhưng chất b&eacute;o cũng thường xuy&ecirc;n bị &ldquo;tố c&aacute;o&rdquo; l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave;m tăng c&acirc;n v&agrave; nhiều vấn đề sức khỏe kh&aacute;c. Vậy thực sự, chất b&eacute;o l&agrave; &ldquo;bạn hay th&ugrave;&rdquo;?&nbsp;</span></strong></p>

<p style="text-align:justify"><strong>Chất b&eacute;o l&agrave;nh mạnh tốt cho sức khỏe</strong></p>

<p style="text-align:justify">Cơ thể lu&ocirc;n cần một lượng chất b&eacute;o nhất định để hoạt động. C&aacute;c loại chất b&eacute;o c&oacute; lợi c&oacute; nhiệm vụ chuyển h&oacute;a v&agrave; dự trữ năng lượng, bảo vệ c&aacute;c cơ quan. Khi được bổ sung đủ chất b&eacute;o l&agrave;nh mạnh, cơ thể sẽ vừa vui vừa khỏe -&nbsp;l&acirc;u đ&oacute;i hơn, cơ săn chắc, &iacute;t đau mỏi, da dẻ mịn m&agrave;ng v&agrave; tinh thần phấn chấn. Chưa kể, chất b&eacute;o c&ograve;n c&oacute; t&aacute;c dụng trong việc cải thiện hương vị v&agrave; kết cấu của m&oacute;n ăn.&nbsp;</p>

<p style="text-align:justify">Viện Dinh dưỡng quốc gia kết luận cơ thể nếu chỉ bổ sung nguồn chất b&eacute;o từ thực vật sẽ thiếu dinh dưỡng, cần phải bổ sung chất b&eacute;o từ động vật để ph&aacute;t huy tối đa lợi &iacute;ch. Mỡ động vật l&agrave; mỡ lấy từ gia s&uacute;c, gia cầm, hải sản như mỡ g&agrave;, mỡ lợn, mỡ b&ograve;&hellip;,&nbsp;c&ograve;n dầu thực vật l&agrave; nguồn chất b&eacute;o từ c&aacute;c loại dầu thực vật như dầu n&agrave;nh, dầu cọ&hellip;&nbsp;</p>

<p style="text-align:justify">Theo nhu cầu khuyến nghị dinh dưỡng cho người Việt Nam giai đoạn từ năm 2016-2020, người trưởng th&agrave;nh cần 5 muỗng c&agrave; ph&ecirc; dầu, mỡ mỗi ng&agrave;y.&nbsp;</p>

<p style="text-align:justify">Đặc biệt, trẻ c&agrave;ng nhỏ, nhu cầu chất b&eacute;o lại c&agrave;ng cao, c&oacute; thể l&ecirc;n đến 50% tổng nhu cầu năng lượng khẩu phần. Trong những năm đầu đời, b&eacute; cần đầy đủ v&agrave; đa dạng chất b&eacute;o từ 2 nguồn động vật v&agrave; thực vật xen kẽ để đ&aacute;p ứng nhu cầu tăng trưởng thể chất lẫn tr&iacute; tuệ.&nbsp;</p>

<p style="text-align:justify">Mỡ động vật c&oacute; khả năng cung cấp cholesterol tốt, cần thiết cho cấu tr&uacute;c tế b&agrave;o, đặc biệt l&agrave; tế b&agrave;o thần kinh, l&agrave;m bền th&agrave;nh mao mạch, gi&uacute;p ph&ograve;ng ngừa xuất huyết n&atilde;o.</p>

<table align="center" border="0" cellpadding="0" cellspacing="0" class="desc_image slide_content" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(102, 102, 102); font-family:arial; font-size:14px; line-height:18px; margin:0px auto 14px; max-width:100%; outline:0px; padding:0px; position:relative; text-align:justify">
	<tbody>
		<tr>
			<td><img alt="​Chất béo có thực sự là kẻ thù của cơ thể? " src="http://static.new.tuoitre.vn/tto/r/2016/10/11/ranee-1-1476183992.jpg" style="background:transparent; border:0px; box-sizing:border-box; cursor:url(&quot;../images/zoom_cursor.png&quot;), auto; display:block; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:490px" /></td>
		</tr>
		<tr>
			<td>Kh&ocirc;ng n&ecirc;n l&atilde;ng qu&ecirc;n chất b&eacute;o trong chế độ ăn hằng ng&agrave;y</td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><strong>Kh&ocirc;ng n&ecirc;n l&atilde;ng qu&ecirc;n chất b&eacute;o&nbsp;</strong></p>

<p style="text-align:justify">Để nạp chất b&eacute;o hợp l&yacute;, cần tăng cường bổ sung c&aacute;c axit b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a, giảm chất b&eacute;o b&atilde;o h&ograve;a v&agrave; chất b&eacute;o chuyển h&oacute;a. Kh&ocirc;ng n&ecirc;n ăn qu&aacute; nhiều trứng, thịt đỏ, hải sản v&igrave; c&aacute;c loại thực phẩm n&agrave;y chứa nhiều chất b&eacute;o b&atilde;o h&ograve;a.&nbsp;</p>

<p style="text-align:justify">Thay v&agrave;o đ&oacute;, tăng cường c&aacute;c loại c&aacute; b&eacute;o, thịt nạc, sữa &iacute;t b&eacute;o v&agrave; c&aacute;c loại hạt vốn gi&agrave;u c&aacute;c axit b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a. Đặc biệt, c&aacute; b&eacute;o ch&iacute;nh l&agrave; nguồn cung cấp DHA, Omega-3-6-9 phong ph&uacute;, vốn l&agrave; những dưỡng chất quan trọng, đặc biệt cần thiết cho người gi&agrave; v&agrave; trẻ nhỏ.&nbsp;</p>

<p style="text-align:justify">Chiết xuất từ c&aacute; b&eacute;o, mỡ c&aacute; kh&ocirc;ng chỉ l&agrave; loại mỡ động vật dễ ti&ecirc;u h&agrave;ng đầu m&agrave; c&ograve;n l&agrave; nguồn cung cấp c&aacute;c axit b&eacute;o Omega-3-6-9 v&agrave; vitamin dồi d&agrave;o. &ldquo;Đối với trẻ em, c&aacute;c axit b&eacute;o gi&uacute;p trẻ th&ocirc;ng minh hơn. Đối với người cao tuổi, c&aacute;c axit b&eacute;o c&oacute; t&aacute;c dụng l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a v&agrave; suy giảm tr&iacute; tuệ&rdquo; -&nbsp;ThS-BS CK2 Đỗ Thị Ngọc Diệp, gi&aacute;m đốc Trung t&acirc;m Dinh dưỡng TP.HCM, cho biết.</p>

<table align="center" border="0" cellpadding="0" cellspacing="0" class="desc_image slide_content" style="border-collapse:collapse; border-spacing:0px; box-sizing:border-box; color:rgb(102, 102, 102); font-family:arial; font-size:14px; line-height:18px; margin:0px auto 14px; max-width:100%; outline:0px; padding:0px; position:relative; text-align:justify">
	<tbody>
		<tr>
			<td style="text-align:center"><img alt="​Chất béo có thực sự là kẻ thù của cơ thể? " src="http://static.new.tuoitre.vn/tto/r/2016/10/11/ranee-2-1476183991.jpg" style="background:transparent; border:0px; box-sizing:border-box; cursor:url(&quot;../images/zoom_cursor.png&quot;), auto; display:block; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:490px" /></td>
		</tr>
		<tr>
			<td>Với dầu ăn dinh dưỡng Ranee từ tinh dầu c&aacute; da trơn, b&agrave;i to&aacute;n c&acirc;n bằng giữa sức khỏe lẫn vị ngon đ&atilde; được giải quyết</td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><strong>Dầu ăn bổ sung th&ecirc;m chất b&eacute;o tốt v&agrave; vitamin&nbsp;</strong></p>

<p style="text-align:justify">L&agrave; sản phẩm dầu ăn đầu ti&ecirc;n c&oacute; nguồn gốc từ động vật, dầu ăn dinh dưỡng Ranee chiết xuất từ 100% tinh dầu c&aacute; da trơn rất gi&agrave;u c&aacute;c axit b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a, bổ sung th&ecirc;m chất b&eacute;o tốt v&agrave; vitamin v&agrave;o chế độ ăn hằng ng&agrave;y của c&aacute;c gia đ&igrave;nh Việt.&nbsp;</p>

<p style="text-align:justify">PGS.TS Trương Tuyết Mai, ph&oacute; viện trưởng Viện Dinh dưỡng quốc gia, cho biết th&agrave;nh phần dinh dưỡng của dầu c&aacute; cao cấp Ranee c&oacute; t&aacute;c dụng b&igrave;nh ổn cholesterol m&aacute;u, hỗ trợ ph&ograve;ng ngừa c&aacute;c bệnh tim mạch v&agrave; c&aacute;c bệnh li&ecirc;n quan đến sa s&uacute;t tr&iacute; tuệ, hỗ trợ ph&ograve;ng chống thiếu vitamin A.&nbsp;</p>

<p style="text-align:justify">Ngo&agrave;i t&aacute;c dụng dinh dưỡng, dầu c&aacute; Ranee c&ograve;n ph&aacute;t huy c&aacute;c ưu điểm của truyền thống chi&ecirc;n r&aacute;n bằng mỡ động vật, gi&uacute;p m&oacute;n ăn b&eacute;o ngậy, gi&ograve;n rụm, v&agrave;ng đều v&agrave; dậy m&ugrave;i thơm kh&oacute; cưỡng.&nbsp;</p>

<p style="text-align:justify">Một điểm đặc biệt nữa khiến Ranee được l&ograve;ng c&aacute;c chị em nội trợ đ&oacute; l&agrave; kh&ocirc;ng c&oacute; m&ugrave;i tanh kh&oacute; chịu, v&igrave; thế rất dễ ứng dụng v&agrave;o c&aacute;c m&oacute;n chi&ecirc;n x&agrave;o, trộn hoặc canh, ch&aacute;o, bột. Nhiều b&agrave; nội trợ chia sẻ sử dụng dầu ăn cao cấp Ranee họ vừa thoải m&aacute;i s&aacute;ng tạo th&ecirc;m nhiều m&oacute;n mới trong thực đơn, vừa y&ecirc;n t&acirc;m rằng những bữa ăn gia đ&igrave;nh lu&ocirc;n đủ đầy dinh dưỡng tốt cho sức khỏe.</p>
', CAST(N'2017-07-26T09:35:23.910' AS DateTime), N'Administrator', CAST(N'2017-12-24T16:00:16.737' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (463, 9, 1, N'News', N'SeoUrl', N'chat-beo-co-thuc-su-la-ke-thu-cua-co-the', CAST(N'2017-07-26T09:35:23.917' AS DateTime), N'Administrator', CAST(N'2017-12-24T16:00:16.743' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (464, 9, 1, N'News', N'MetaTitle', N'CHẤT BÉO CÓ THỰC SỰ LÀ KẺ THÙ CỦA CƠ THỂ?', CAST(N'2017-07-26T09:35:23.920' AS DateTime), N'Administrator', CAST(N'2017-12-24T16:00:16.750' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (465, 9, 1, N'News', N'MetaKeywords', N'CHẤT BÉO CÓ THỰC SỰ LÀ KẺ THÙ CỦA CƠ THỂ?', CAST(N'2017-07-26T09:35:23.927' AS DateTime), N'Administrator', CAST(N'2017-12-24T16:00:16.760' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (466, 9, 1, N'News', N'MetaDescription', N'CHẤT BÉO CÓ THỰC SỰ LÀ KẺ THÙ CỦA CƠ THỂ?', CAST(N'2017-07-26T09:35:23.930' AS DateTime), N'Administrator', CAST(N'2017-12-24T16:00:16.763' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (496, 9, 1, N'GenericControl', N'Name', N'aaa', CAST(N'2017-08-20T10:19:20.347' AS DateTime), N'Administrator', CAST(N'2017-08-20T10:19:20.347' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (497, 9, 1, N'GenericControl', N'Description', N'aa', CAST(N'2017-08-20T10:19:20.350' AS DateTime), N'Administrator', CAST(N'2017-08-20T10:19:20.350' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (500, 1, 1, N'GenericControl', N'Name', N'Thuộc tính post chi tiết', CAST(N'2017-08-20T11:04:33.637' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:29:49.873' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (501, 1, 1, N'GenericControl', N'Description', N'Thuộc tính post chi tiết', CAST(N'2017-08-20T11:04:33.647' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:29:49.887' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (506, 6, 1, N'MenuLink', N'MenuName', N'BĐS cho thuê', CAST(N'2017-08-20T14:06:44.333' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:32:31.243' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (507, 6, 1, N'MenuLink', N'SeoUrl', N'bds-cho-thue', CAST(N'2017-08-20T14:06:44.360' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:32:31.253' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (508, 6, 1, N'MenuLink', N'MetaTitle', N'BĐS cho thuê', CAST(N'2017-08-20T14:06:44.363' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:32:31.267' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (509, 6, 1, N'MenuLink', N'MetaKeywords', N'BĐS cho thuê', CAST(N'2017-08-20T14:06:44.367' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:32:31.273' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (510, 6, 1, N'MenuLink', N'MetaDescription', N'BĐS cho thuê', CAST(N'2017-08-20T14:06:44.370' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:32:31.277' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (511, 5, 1, N'MenuLink', N'MenuName', N'BĐS Quốc tế', CAST(N'2017-08-20T14:07:07.827' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:09.683' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (512, 5, 1, N'MenuLink', N'SeoUrl', N'bds-quoc-te', CAST(N'2017-08-20T14:07:07.843' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:09.690' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (513, 5, 1, N'MenuLink', N'MetaTitle', N'BĐS Quốc tế', CAST(N'2017-08-20T14:07:07.847' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:09.693' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (514, 5, 1, N'MenuLink', N'MetaKeywords', N'BĐS Quốc tế', CAST(N'2017-08-20T14:07:07.853' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:09.697' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (515, 5, 1, N'MenuLink', N'MetaDescription', N'BĐS Quốc tế', CAST(N'2017-08-20T14:07:07.863' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:09.707' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (523, 41, 1, N'Post', N'Title', N'Biệt thự phố, mr Duy (0983 83 45 69)', CAST(N'2017-09-20T15:34:48.820' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:52:48.097' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (524, 41, 1, N'Post', N'ProductCode', N'Biệt thự phố, mr Duy (0983 83 45 69)', CAST(N'2017-09-20T15:34:48.873' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:52:48.113' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (525, 41, 1, N'Post', N'MetaTitle', N'Biệt thự phố, mr Duy (0983 83 45 69)', CAST(N'2017-09-20T15:34:48.887' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:52:48.143' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (526, 41, 1, N'Post', N'MetaKeywords', N'Biệt thự phố, mr Duy (0983 83 45 69)', CAST(N'2017-09-20T15:34:48.893' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:52:48.150' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (527, 41, 1, N'Post', N'MetaDescription', N'Biệt thự phố, mr Duy (0983 83 45 69)', CAST(N'2017-09-20T15:34:48.900' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:52:48.157' AS DateTime), N'Administrator')
GO
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (532, 40, 1, N'Post', N'Title', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', CAST(N'2017-09-20T15:35:45.743' AS DateTime), N'Administrator', CAST(N'2017-12-26T01:55:36.777' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (533, 40, 1, N'Post', N'ProductCode', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', CAST(N'2017-09-20T15:35:45.753' AS DateTime), N'Administrator', CAST(N'2017-12-26T01:55:36.783' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (534, 40, 1, N'Post', N'MetaTitle', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', CAST(N'2017-09-20T15:35:45.773' AS DateTime), N'Administrator', CAST(N'2017-12-26T01:55:36.807' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (535, 40, 1, N'Post', N'MetaKeywords', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', CAST(N'2017-09-20T15:35:45.780' AS DateTime), N'Administrator', CAST(N'2017-12-26T01:55:36.817' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (536, 40, 1, N'Post', N'MetaDescription', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', CAST(N'2017-09-20T15:35:45.787' AS DateTime), N'Administrator', CAST(N'2017-12-26T01:55:36.820' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (550, 40, 1, N'Post', N'TechInfo', N'<p style="text-align:center"><strong>QUI ĐỊNH ĐỔI H&Agrave;NG &ndash; MAZZOLA</strong></p>

<ul>
	<li><strong>Thời gian</strong>&nbsp;: Sản phẩm được đổi trong v&ograve;ng 7 ng&agrave;y . Kh&aacute;ch h&agrave;ng đổi từ 11h đến 21h30 trong ng&agrave;y.</li>
	<li><strong>C&aacute;ch thức</strong>&nbsp;: Kh&aacute;ch h&agrave;ng c&oacute; thể đổi h&agrave;ng tr&ecirc;n to&agrave;n hệ thống của Mazzola</li>
	<li><strong>Ch&iacute;nh s&aacute;ch đổi h&agrave;ng</strong>&nbsp;:</li>
</ul>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Kh&aacute;ch h&agrave;ng vui l&ograve;ng c&ograve;n giữ h&oacute;a đơn .</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Sản phẩm được đổi phải c&ograve;n đầy đủ tem , nh&atilde;n m&aacute;c của cửa h&agrave;ng Mazzola.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Sản phẩm phải c&ograve;n mới chưa qua sử dụng, kh&ocirc;ng bị hư hỏng hoặc c&oacute; m&ugrave;i lạ .</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Kh&aacute;ch h&agrave;ng c&oacute; thể đổi sang sản phẩm kh&aacute;c c&oacute; gi&aacute; trị tương đương hoặc lớn hơn (1 đổi 1).</p>

<p>&nbsp; &nbsp;&nbsp;<strong>***&nbsp;<em><u>LƯU &Yacute;</u></em>&nbsp;:</strong></p>

<ul>
	<li>Sản phẩm đ&atilde; mua tại cửa h&agrave;ng sẽ kh&ocirc;ng được ho&agrave;n trả lại. Xin Q&uacute;y kh&aacute;ch vui l&ograve;ng chọn lựa kỹ trước khi mua.</li>
	<li>Kh&ocirc;ng &aacute;p dụng đổi cho sản phẩm đ&atilde; giảm gi&aacute;.</li>
	<li>Sản phẩm được đổi kh&ocirc;ng điều kiện khi sản phẩm đ&oacute; được xem l&agrave; lỗi kỹ thuật.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>
</ul>
', CAST(N'2017-10-04T15:53:55.023' AS DateTime), N'Administrator', CAST(N'2017-12-26T01:55:36.797' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1550, 41, 1, N'Post', N'ShortDesc', N'<p>C&ocirc;ng tr&igrave;nh thuộc quy hoạch v&agrave; bắt buộc x&acirc;y dựng theo mẫu<br />
BBa đ&atilde; thực hiện thiết kế tu&acirc;n thủ theo những quy định ch&iacute;nh v&agrave; đ&atilde; hiệu chỉnh chi tiết một c&aacute;ch tốt nhất</p>
', CAST(N'2017-10-08T16:27:07.107' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:52:48.120' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1551, 41, 1, N'Post', N'Description', N'<p>GIỚI THIỆU</p>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif">Khu căn hộ 5 sao Tnr&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-4-the-gold-view-ben-van-don-view-song-sai-gon.htm" name="the gold view quan 4" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(0, 0, 205)">The Gold View Quận 4</span></a>&nbsp;đang b&agrave;n giao nh&agrave; trước Tết 2018 tại vị tr&iacute; v&agrave;ng Đường Bến V&acirc;n Đồn Quận 4 Tphcm mua trực tiếp Chủ đầu tư gi&aacute; hấp dẫn chỉ 2.6 tỷ/căn 2PN. Cam kết gi&aacute; thấp nhất thị trường Quận trung t&acirc;m v&agrave; Đạt&nbsp;chuẩn căn hộ cao cấp.</span></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif"><strong><span style="color:rgb(139, 69, 19)"><img alt="" src="http://can-ho.vn/uploads/noidung/images/phoi-canh-2.jpg" style="border-spacing:0px; border:0px; height:733px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:1600px" /></span></strong></span></div>

<p><span style="font-family:tahoma,geneva,sans-serif">The GoldView ,&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-4.htm" name="chung cư quận 4" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(0, 0, 205)">Chung cư quận 4</span></a>&nbsp;được&nbsp;tạo bởi những tập đo&agrave;n lớn ở Việt Nam như :</span></p>

<ul>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Chủ đầu tư C&ocirc;ng ty cổ phần May - Di&ecirc;m S&agrave;i G&ograve;n</span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Quản l&yacute; v&agrave; ph&aacute;t triển bởi TNR Holdings Việt Nam</span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Tổng thầu x&acirc;y dựng Coteccons</span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif">Đối t&aacute;c t&agrave;i ch&iacute;nh chiến lược Maritime Bank</span></li>
</ul>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>VỊ TR&Iacute; DỰ &Aacute;N</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-4-the-gold-view-ben-van-don-view-song-sai-gon.htm" name="the gold view" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152); background-color: rgb(255, 255, 255); font-family: tahoma, geneva, sans-serif;"><span style="color:rgb(0, 0, 205)">GoldView</span></a><span style="color:rgb(0, 0, 205); font-family:tahoma,geneva,sans-serif">&nbsp;</span><span style="font-family:tahoma,geneva,sans-serif">c&oacute; địa chi tại 346 Đường Bến V&acirc;n Đồn, Phường 1, Quận 4, TPHCM. View trực diện S&ocirc;ng v&agrave; quận 1.&nbsp;</span><span style="font-family:tahoma,geneva,sans-serif">C&oacute; mặt tiền rộng nhất trong tất cả c&aacute;c dự &aacute;n đ&atilde; v&agrave; đang h&igrave;nh th&agrave;nh tr&ecirc;n đường Bến V&acirc;n Đồn.</span></div>

<h5><img alt="vi-tri0the-gold-view-quan-4" longdesc="http://can-ho.vn/vi-tri0the-gold-view-quan-4" src="http://can-ho.vn/uploads/noidung/images/baiviet/Ban-do-vi-tri-gold-view.jpg" style="border-spacing:0px; border:0px; font-size:13px; height:860px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; text-align:center; vertical-align:middle; width:850px" /></h5>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif">C&aacute;ch chợ Bến Th&agrave;nh&nbsp;3 ph&uacute;t, C&aacute;ch trung t&acirc;m t&agrave;i ch&iacute;nh TP.Hồ Ch&iacute; Minh&nbsp;3 ph&uacute;t, C&aacute;ch phố đi bộ Nguyễn Huệ 5 ph&uacute;t, C&aacute;ch khu đ&ocirc; thị Thủ Thi&ecirc;m 5 ph&uacute;t</span></div>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>TIỆN &Iacute;CH XUNG QUANH</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif"><img alt="sanh lobby" src="http://can-ho.vn/uploads/noidung/images/baiviet/sanh-can-ho-gold-view-quan-4.jpg" style="border-spacing:0px; border:0px; height:530px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" /></span></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif">Sảnh Lobby sang trọng v&agrave; cao cấp,&nbsp;Bảo vệ an ninh thẻ từ 3 lớp&nbsp;24/24 tại&nbsp;<a href="http://can-ho.vn/" name="chung cư cao cấp Tphcm" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);" target="_blank"><span style="color:rgb(0, 0, 0)">chung cư cao cấp&nbsp;Tphcm</span></a></span></div>

<h3><br />
<img alt="" src="http://can-ho.vn/uploads/noidung/images/baiviet/02-b2_vuon-treo.jpg" style="border-spacing:0px; border:0px; height:560px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" /></h3>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif">Vườn treo tr&ecirc;n m&acirc;y v&agrave; đ&agrave;i phun nước&nbsp;750 m2, Khu tiểu cảnh chỉ phục vụ cư d&acirc;n The Gold View</span><br />
<br />
<img alt="" src="http://can-ho.vn/uploads/noidung/images/baiviet/tien-ich-noi-khu-saigon-intela(1).jpg" style="border-spacing:0px; border:0px; height:350px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" /><br />
Hồ bơi tr&agrave;n view trung t&acirc;m Tphcm tại Tầng 5 th&aacute;p A 450m2 v&agrave; Tầng 27 th&aacute;p B 180m2</div>
&nbsp;

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif"><img alt="" src="http://can-ho.vn/uploads/noidung/images/nha-tre-can-ho-the-goldview-870x417.jpg" style="border-spacing:0px; border:0px; height:280px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><img alt="" src="http://can-ho.vn/uploads/noidung/images/baiviet/Gym-can-ho-the-goldview-870x489.jpg" style="border-spacing:0px; border:0px; font-size:13px; height:280px; margin:0px; max-width:100%; opacity:0.9; outline:0px; padding:5px 0px; text-align:center; vertical-align:middle; width:425px" /><br />
Nh&agrave; trẻ, ph&ograve;ng GYM, Ph&ograve;ng đọc s&aacute;ch, Nh&agrave; sinh hoạt cộng đồng The gold view&nbsp;tại tầng 5<br />
<br />
<img alt="thuong mai the gold view" longdesc="http://can-ho.vn/thuong%20mai%20the%20gold%20view" src="http://can-ho.vn/uploads/noidung/images/baiviet/GoldView-thuong-mai.jpg" style="border-spacing:0px; border:0px; height:560px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" /><br />
Trung t&acirc;m thương mai 5 tầng hơn 40.000m2 do Tập đo&agrave;n Lotte đầu tư v&agrave; ph&aacute;t triển thương mại + Rạp chiếu phim.</span></div>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>THIẾT KẾ CĂN HỘ</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;"><img alt="" src="http://can-ho.vn/uploads/noidung/images/baiviet/mat-bang.jpg" style="border-spacing:0px; border:0px; height:500px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" />
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif">Thiết kế dự &aacute;n The Gold View gồm 2 th&aacute;p A v&agrave; B. Th&aacute;p A c&oacute; 5 tầng thương mại v&agrave; view trực diện s&ocirc;ng nh&igrave;n qua quận 1, Cả 2 th&aacute;p đều đang trong giai đoạn b&agrave;n giao nh&agrave;.</span></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%; text-align: center;"><br />
<span style="font-family:tahoma,geneva,sans-serif"><img alt="mat bang can ho the gold view quan 4" longdesc="http://can-ho.vn/mat%20bang%20can%20ho%20the%20gold%20view%20quan%204" src="http://can-ho.vn/uploads/noidung/images/tindang/cac-tang-can-ho-de-Ban-plan-thap-A-compressed.jpg" style="border-spacing:0px; border:0px; height:830px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" /></span></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif">Diện t&iacute;ch căn hộ 2 ph&ograve;ng ngủ từ 70m2 gi&aacute; 2.8 tỷ, Căn hộ văn ph&ograve;ng 80m2 gi&aacute; 2.6 tỷ, Căn hộ điển h&igrave;nh 2 PN 80m2 , 92m2, Căn hộ 3 Ph&ograve;ng ngủ 100m2, 116m2 v&agrave; 134m2.</span></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">&nbsp;</div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%; text-align: center;"><span style="font-family:tahoma,geneva,sans-serif"><img alt="" src="http://can-ho.vn/uploads/noidung/images/baiviet/2%20phong%20ngu%2070m2.jpg" style="border-spacing:0px; border:0px; height:350px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><img alt="" src="http://can-ho.vn/uploads/noidung/images/2pn.jpg" style="border-spacing:0px; border:0px; height:350px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><br />
Thiết kế điển h&igrave;nh loại căn hộ 2 Ph&ograve;ng ngủ 1WC 70m2 v&agrave;&nbsp;&nbsp;2 ph&ograve;ng ngủ 2 WC&nbsp;80m2 v&agrave; 92m2<br />
<br />
<img alt="" src="http://can-ho.vn/uploads/noidung/images/3pn.jpg" style="border-spacing:0px; border:0px; height:350px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><img alt="" src="http://can-ho.vn/uploads/noidung/images/baiviet/3%20phong%20ngu%20132m2.jpg" style="border-spacing:0px; border:0px; height:350px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><br />
Thiết kế điển h&igrave;nh loại căn hộ 3 ph&ograve;ng ngủ 116m2(3PN 2WC) v&agrave; 134m2 (3PN 3WC)</span></div>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>GI&Aacute; B&Aacute;N &amp; THANH TO&Aacute;N</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="color:rgb(0, 0, 0)">Gi&aacute; Căn hộ đang b&agrave;n giao The Gold View&nbsp;Gi&aacute; chỉ từ 2.6&nbsp;tỷ 80m2 2PN, Loại Căn hộ điển h&igrave;nh 3 ph&ograve;ng ngủ gi&aacute; 4 tỷ 116m2.&nbsp;Một mức gi&aacute; rất hấp dẫn tại khu vực Quận 4, kề trung t&acirc;m Quận 1.</span><br />
<br />
<span style="color:rgb(0, 0, 0)">Nhận bảng gi&aacute; trong 5 ph&uacute;t v&agrave; bảo mật th&ocirc;ng tin, Kh&aacute;ch h&agrave;ng vui l&ograve;ng click ph&iacute;a dưới:</span><br />
<br />
<span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)"><a href="https://docs.google.com/forms/d/e/1FAIpQLSclr8wtxyl08qVwOxV2Rw754GF35wYP2HbQsV2Yo5k-2HA2wQ/viewform" name="báo giá gold view" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);" target="_blank"><img alt="Nhan-bao-gia" longdesc="http://can-ho.vn/Nhan-bao-gia" src="http://can-ho.vn/uploads/noidung/images/tindang/1462510169_bao-gia-icon.png" style="border-spacing:0px; border-style:initial; border-width:0px; height:225px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:600px" /></a></span></span></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">
<p><br />
<img alt="tien-do-tra-tien-the-gold-view" longdesc="http://can-ho.vn/@dmin/tindang_c/61/tien-do-tra-tien-the-gold-view" src="http://can-ho.vn/uploads/noidung/images/tindang/ptttbt-the-gold-view.png" style="border-spacing:0px; border:0px; color:rgb(0, 0, 0); font-family:tahoma,geneva,sans-serif; height:470px; margin:0px; max-width:100%; opacity:0.9; outline:0px; padding:5px 0px; text-align:center; vertical-align:middle; width:1543px" /></p>
</div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><img alt="phuong-thuc-thanh-toan-gold-view" longdesc="http://can-ho.vn/@dmin/tindang_c/61/phuong-thuc-thanh-toan-gold-view" src="http://can-ho.vn/uploads/noidung/images/tindang/ptttu%20the%20gold%20view.png" style="border-spacing:0px; border:0px; font-size:13px; height:760px; margin:0px; max-width:100%; opacity:0.9; outline:0px; padding:5px 0px; vertical-align:middle; width:1543px" /></div>

<h5>&nbsp;</h5>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="color:rgb(255, 0, 0)"><span style="font-family:verdana,geneva,sans-serif">Kh&aacute;ch h&agrave;ng mua trưc tiếp Chủ đầu tư ưu đ&atilde;i chiết khấu đến 17% gi&aacute; b&aacute;n căn hộ Gold View.</span></span></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">&nbsp;</div>
</div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">
<h4><span style="color:rgb(0, 0, 205)">CH&Iacute;NH S&Aacute;CH ƯU Đ&Atilde;I CỦA MARITIME BANK</span></h4>

<ul>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Hỗ trợ g&oacute;i vay ưu đ&atilde;i 15 năm với l&atilde;i suất 7.7%/năm, Bao vay 100% hồ sơ kh&oacute;.</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Maritime Bank&nbsp;c&ograve;n cung cấp những sản phẩm t&agrave;i ch&iacute;nh hấp dẫn v&agrave; linh hoạt nhất như sau: L&atilde;i suất vay l&agrave; 0% cho đến th&aacute;ng 08/2018.</span></span></li>
</ul>
</div>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>ƯU ĐIỂM NỔI BẬT</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;"><img alt="" src="http://can-ho.vn/uploads/noidung/images/baiviet/View%20nhin%20quan%201.jpg" style="border-spacing:0px; border:0px; height:560px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" /><br />
<span style="font-family:tahoma,geneva,sans-serif">Một g&oacute;c view nh&igrave;n về Quận 1 của dự &aacute;n The Gold View Bến V&acirc;n Đồn&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-4.htm" name="chung cư quận 4" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);" target="_blank"><span style="color:rgb(0, 0, 205)">chung cư Quận 4</span></a></span><br />
<br />
<img alt="the-gold-view-ve-dem" longdesc="http://can-ho.vn/the-gold-view-ve-dem" src="http://can-ho.vn/uploads/noidung/images/baiviet/view%20dem%20the%20gold%20view.jpg" style="border-spacing:0px; border:0px; height:800px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" /><br />
<span style="font-family:tahoma,geneva,sans-serif">Căn hộ The Gold View về đem thời điểm đang ho&agrave;n thiện (Th&aacute;ng 12/2017)</span></div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>NH&Agrave; MẪU &amp; TIẾN ĐỘ</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;"><span style="font-family:tahoma,geneva,sans-serif"><img alt="nha-mau-gold-view" longdesc="http://can-ho.vn/nha-mau-gold-view" src="http://can-ho.vn/uploads/noidung/images/tindang/gold%20view-nha-mau-3.jpg" style="border-spacing:0px; border:0px; height:310px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><img alt="nha-mau-gold-view" longdesc="http://can-ho.vn/nha-mau-gold-view" src="http://can-ho.vn/uploads/noidung/images/tindang/gold%20view%20nha%20mau.jpg" style="border-spacing:0px; border:0px; height:310px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /></span>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif">B&agrave;n giao cửa gỗ cao cấp chống ch&aacute;y, Hệ thống thẻ từ thang m&aacute;y, Intercom li&ecirc;n lạc nội bộ. Gạch b&oacute;ng kiếng 60x60 ph&ograve;ng kh&aacute;ch.</span></div>
<br />
<span style="font-family:tahoma,geneva,sans-serif"><img alt="nha-mau-gold-view" longdesc="http://can-ho.vn/nha-mau-gold-view" src="http://can-ho.vn/uploads/noidung/images/tindang/gol%20view%20nha%20mau.jpg" style="border-spacing:0px; border:0px; height:330px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><img alt="nha-mau-gold-view" longdesc="http://can-ho.vn/nha-mau-gold-view" src="http://can-ho.vn/uploads/noidung/images/tindang/gold%20view%20nha%20mau%20phong%20ngu.jpg" style="border-spacing:0px; border:0px; height:330px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><br />
Hệ thống cửa k&iacute;nh lớn, mở rộng tầm nh&igrave;n ra b&ecirc;n ngo&agrave;i, mang lại sự th&ocirc;ng tho&aacute;ng v&agrave; tiết kiệm tối đa năng lượng.<br />
<br />
<img alt="nha-mau-gold-view" longdesc="http://can-ho.vn/nha-mau-gold-view" src="http://can-ho.vn/uploads/noidung/images/tindang/gold%20view%20nha%20maua.jpg" style="border-spacing:0px; border:0px; height:330px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><img alt="nha-mau-gold-view" longdesc="http://can-ho.vn/nha-mau-gold-view" src="http://can-ho.vn/uploads/noidung/images/tindang/nha%20mau%20gold%20view%20quan%204.jpg" style="border-spacing:0px; border:0px; height:330px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><br />
Thiết kế phần bếp căn hộ 3PN bếp mở. Căn 2 ph&ograve;ng th&igrave; bếp khuất.&nbsp;B&agrave;n giao c&oacute; hệ thống tủ bếp tr&ecirc;n, tủ bếp dưới, Kệ bếp bằng mặt đ&aacute; cao cấp. Thiết bị vệ sinh chuẩn TOTO cao cấp.</span></div>
</div>

<p><img alt="" src="/Resource/UpLoad/Products/view%203.jpg" style="height:2079px; width:1995px" /></p>

<p><img alt="" src="/Resource/UpLoad/Products/phong%20ngu%201.jpg" style="height:1334px; width:2048px" /></p>

<p><img alt="" src="/Resource/UpLoad/Products/phong%20ngu%202.jpg" style="height:1149px; width:2048px" /></p>

<p><img alt="" src="/Resource/UpLoad/Products/Bep.jpg" style="height:1426px; width:2048px" /></p>

<p>&nbsp;</p>
', CAST(N'2017-10-08T16:27:07.117' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:52:48.127' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1581, 46, 1, N'Post', N'Title', N'KHU DU LỊCH LÀNG CHÀI', CAST(N'2017-10-10T18:17:02.763' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:20.140' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1582, 46, 1, N'Post', N'ProductCode', N'1212', CAST(N'2017-10-10T18:17:02.777' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:20.147' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1583, 46, 1, N'Post', N'MetaTitle', N'KHU DU LỊCH LÀNG CHÀI', CAST(N'2017-10-10T18:17:02.790' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:20.177' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1584, 46, 1, N'Post', N'MetaKeywords', N'KHU DU LỊCH LÀNG CHÀI', CAST(N'2017-10-10T18:17:02.793' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:20.187' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1585, 46, 1, N'Post', N'MetaDescription', N'KHU DU LỊCH LÀNG CHÀI', CAST(N'2017-10-10T18:17:02.800' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:20.193' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1590, 40, 1, N'Post', N'Description', N'<div class="prose" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Source Sans Pro&quot;, Helvetica, Arial, sans-serif, sans-serif; font-size: 17px; vertical-align: baseline; outline: 0px; background: transparent; color: rgba(0, 0, 0, 0.7);">
<p><span style="color:black; font-family:verdana,sans-serif; font-size:10.5pt">11- Chất liệu mỏng ,nhẹ thấm h&uacute;t mồ h&ocirc;i tốt rất th&iacute;ch hợp cho ch&agrave;ng trong ng&agrave;y nắng.</span></p>

<p><span style="color:black; font-family:verdana,sans-serif; font-size:10.5pt">- Cổ &aacute;o bẻ, t&uacute;i ngực v&agrave; phần th&acirc;n lượn eo , form &ocirc;m s&aacute;t hoặc &ocirc;m su&ocirc;n .</span></p>

<p><span style="color:black; font-family:verdana,sans-serif; font-size:10.5pt">- &Aacute;o vẫn giữ được n&eacute;t cứng c&aacute;p nhờ đường g&acirc;n &aacute;o, đường viền gấu may bằng&nbsp;chỉ b&ograve; .</span></p>

<p><span style="color:black; font-family:verdana,sans-serif; font-size:10.5pt">- C&oacute; gam m&agrave;u ti&ecirc;u biểu v&agrave; chưa bao giờ hạ nhiệt : trắng bạc, xanh sậm, xanh đen , xanh</span></p>
</div>
', CAST(N'2017-10-12T16:21:40.333' AS DateTime), N'Administrator', CAST(N'2017-12-26T01:55:36.787' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1591, 2126, 1, N'MenuLink', N'MenuName', N'Căn hộ', CAST(N'2017-10-14T12:23:17.283' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:12.880' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1592, 2126, 1, N'MenuLink', N'SeoUrl', N'can-ho', CAST(N'2017-10-14T12:23:17.293' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:12.887' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1593, 2126, 1, N'MenuLink', N'MetaTitle', N'Căn hộ', CAST(N'2017-10-14T12:23:17.297' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:12.890' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1594, 2126, 1, N'MenuLink', N'MetaKeywords', N'Căn hộ', CAST(N'2017-10-14T12:23:17.300' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:12.893' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1595, 2126, 1, N'MenuLink', N'MetaDescription', N'Căn hộ', CAST(N'2017-10-14T12:23:17.303' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:12.900' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1596, 2127, 1, N'MenuLink', N'MenuName', N'Dự án khác', CAST(N'2017-10-14T12:24:02.017' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:30:29.203' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1597, 2127, 1, N'MenuLink', N'SeoUrl', N'du-an-khac', CAST(N'2017-10-14T12:24:02.053' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:30:29.217' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1598, 2127, 1, N'MenuLink', N'MetaTitle', N'Dự án khác', CAST(N'2017-10-14T12:24:02.060' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:30:29.220' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1599, 2127, 1, N'MenuLink', N'MetaKeywords', N'Dự án khác', CAST(N'2017-10-14T12:24:02.077' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:30:29.227' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1600, 2127, 1, N'MenuLink', N'MetaDescription', N'Dự án khác', CAST(N'2017-10-14T12:24:02.100' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:30:29.233' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1601, 2128, 1, N'MenuLink', N'MenuName', N'Biệt thự', CAST(N'2017-10-14T12:24:33.653' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:24:33.653' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1602, 2128, 1, N'MenuLink', N'SeoUrl', N'biet-thu', CAST(N'2017-10-14T12:24:33.657' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:24:33.657' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1603, 2128, 1, N'MenuLink', N'MetaTitle', N'Biệt thự', CAST(N'2017-10-14T12:24:33.663' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:24:33.663' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1604, 2128, 1, N'MenuLink', N'MetaKeywords', N'Biệt thự', CAST(N'2017-10-14T12:24:33.667' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:24:33.667' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1605, 2128, 1, N'MenuLink', N'MetaDescription', N'Biệt thự', CAST(N'2017-10-14T12:24:33.673' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:24:33.673' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1606, 2129, 1, N'MenuLink', N'MenuName', N'Văn phòng', CAST(N'2017-10-14T12:31:05.573' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:38.400' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1607, 2129, 1, N'MenuLink', N'SeoUrl', N'van-phong', CAST(N'2017-10-14T12:31:05.580' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:38.403' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1608, 2129, 1, N'MenuLink', N'MetaTitle', N'Văn phòng', CAST(N'2017-10-14T12:31:05.593' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:38.407' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1609, 2129, 1, N'MenuLink', N'MetaKeywords', N'Văn phòng', CAST(N'2017-10-14T12:31:05.600' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:38.413' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1610, 2129, 1, N'MenuLink', N'MetaDescription', N'Văn phòng', CAST(N'2017-10-14T12:31:05.607' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:38.417' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1611, 2130, 1, N'MenuLink', N'MenuName', N'Quy hoạch khác', CAST(N'2017-10-14T12:32:15.200' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:32:15.200' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1612, 2130, 1, N'MenuLink', N'SeoUrl', N'quy-hoach-khac', CAST(N'2017-10-14T12:32:15.207' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:32:15.207' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1613, 2130, 1, N'MenuLink', N'MetaTitle', N'Quy hoạch khác', CAST(N'2017-10-14T12:32:15.213' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:32:15.213' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1614, 2130, 1, N'MenuLink', N'MetaKeywords', N'Quy hoạch khác', CAST(N'2017-10-14T12:32:15.223' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:32:15.223' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1615, 2130, 1, N'MenuLink', N'MetaDescription', N'Quy hoạch khác', CAST(N'2017-10-14T12:32:15.230' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:32:15.230' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1616, 2125, 1, N'MenuLink', N'MenuName', N'Đang thực hiện', CAST(N'2017-10-14T14:56:06.013' AS DateTime), N'Administrator', CAST(N'2017-10-14T14:57:37.647' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1617, 2125, 1, N'MenuLink', N'SeoUrl', N'dang-thuc-hien', CAST(N'2017-10-14T14:56:06.030' AS DateTime), N'Administrator', CAST(N'2017-10-14T14:57:37.650' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1618, 2125, 1, N'MenuLink', N'MetaTitle', N'Đang thực hiện', CAST(N'2017-10-14T14:56:06.033' AS DateTime), N'Administrator', CAST(N'2017-10-14T14:57:37.653' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1619, 2125, 1, N'MenuLink', N'MetaKeywords', N'Đang thực hiện', CAST(N'2017-10-14T14:56:06.037' AS DateTime), N'Administrator', CAST(N'2017-10-14T14:57:37.667' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1620, 2125, 1, N'MenuLink', N'MetaDescription', N'Đang thực hiện', CAST(N'2017-10-14T14:56:06.040' AS DateTime), N'Administrator', CAST(N'2017-10-14T14:57:37.673' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1629, 45, 1, N'MenuLink', N'MenuName', N'Giới thiệu', CAST(N'2017-10-15T14:22:22.330' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:19:27.387' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1630, 45, 1, N'MenuLink', N'SeoUrl', N'gioi-thieu', CAST(N'2017-10-15T14:22:22.357' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:19:27.400' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1631, 45, 1, N'MenuLink', N'MetaTitle', N'Giới thiệu', CAST(N'2017-10-15T14:22:22.363' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:19:27.417' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1632, 45, 1, N'MenuLink', N'MetaKeywords', N'Giới thiệu', CAST(N'2017-10-15T14:22:22.367' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:19:27.423' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1633, 45, 1, N'MenuLink', N'MetaDescription', N'Giới thiệu', CAST(N'2017-10-15T14:22:22.370' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:19:27.427' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1634, 2131, 1, N'MenuLink', N'MenuName', N'tét', CAST(N'2017-10-15T15:39:42.023' AS DateTime), N'Administrator', CAST(N'2017-12-14T16:03:53.483' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1635, 2131, 1, N'MenuLink', N'SeoUrl', N'tet', CAST(N'2017-10-15T15:39:42.033' AS DateTime), N'Administrator', CAST(N'2017-12-14T16:03:53.537' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1636, 2131, 1, N'MenuLink', N'MetaTitle', N'tét', CAST(N'2017-10-15T15:39:42.037' AS DateTime), N'Administrator', CAST(N'2017-12-14T16:03:53.540' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1637, 2131, 1, N'MenuLink', N'MetaKeywords', N'tét', CAST(N'2017-10-15T15:39:42.040' AS DateTime), N'Administrator', CAST(N'2017-12-14T16:03:53.547' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1638, 2131, 1, N'MenuLink', N'MetaDescription', N'tét', CAST(N'2017-10-15T15:39:42.043' AS DateTime), N'Administrator', CAST(N'2017-12-14T16:03:53.553' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1639, 2132, 1, N'MenuLink', N'MenuName', N'12', CAST(N'2017-10-15T15:43:36.717' AS DateTime), N'Administrator', CAST(N'2017-10-15T15:43:36.717' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1640, 2132, 1, N'MenuLink', N'SeoUrl', N'12', CAST(N'2017-10-15T15:43:36.727' AS DateTime), N'Administrator', CAST(N'2017-10-15T15:43:36.727' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1641, 2132, 1, N'MenuLink', N'MetaTitle', N'12121', CAST(N'2017-10-15T15:43:36.730' AS DateTime), N'Administrator', CAST(N'2017-10-15T15:43:36.730' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1642, 2132, 1, N'MenuLink', N'MetaKeywords', N'12', CAST(N'2017-10-15T15:43:36.733' AS DateTime), N'Administrator', CAST(N'2017-10-15T15:43:36.733' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1643, 2132, 1, N'MenuLink', N'MetaDescription', N'12', CAST(N'2017-10-15T15:43:36.737' AS DateTime), N'Administrator', CAST(N'2017-10-15T15:43:36.737' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1655, 6, 1, N'SlideShow', N'Title', N'CĂN HỘ QUÂN 7 THE GOLDEN STAR', CAST(N'2017-10-16T15:54:41.050' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:40:02.937' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1656, 17, 1, N'StaticContent', N'Title', N'Chính sách đổi trả', CAST(N'2017-10-17T17:52:25.957' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:42.720' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1657, 17, 1, N'StaticContent', N'SeoUrl', N'chinh-sach-doi-tra', CAST(N'2017-10-17T17:52:25.973' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:42.740' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1658, 17, 1, N'StaticContent', N'MetaTitle', N'Chính sách đổi trả', CAST(N'2017-10-17T17:52:25.987' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:42.757' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1659, 17, 1, N'StaticContent', N'MetaKeywords', N'Chính sách đổi trả', CAST(N'2017-10-17T17:52:26.003' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:42.760' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1660, 17, 1, N'StaticContent', N'MetaDescription', N'Chính sách đổi trả', CAST(N'2017-10-17T17:52:26.017' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:42.767' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1678, 17, 1, N'StaticContent', N'ShortDesc', N'<p>fgsfdgsfdgfasdfafas</p>
', CAST(N'2017-12-14T16:34:46.410' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:42.723' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1733, 17, 1, N'StaticContent', N'Description', N'<p>fgsfdgsfdgfasdfafasf&aacute;df&agrave;ds&agrave;&agrave;</p>
', CAST(N'2017-12-15T17:30:07.150' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:42.730' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1736, 3, 1, N'MenuLink', N'MenuName', N'Nhà phố', CAST(N'2017-12-23T15:53:06.850' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:03.547' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1737, 3, 1, N'MenuLink', N'SeoUrl', N'nha-pho', CAST(N'2017-12-23T15:53:06.887' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:03.557' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1738, 3, 1, N'MenuLink', N'MetaTitle', N'Nhà phố', CAST(N'2017-12-23T15:53:06.890' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:03.560' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1739, 3, 1, N'MenuLink', N'MetaKeywords', N'Nhà phố', CAST(N'2017-12-23T15:53:06.893' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:03.567' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1740, 3, 1, N'MenuLink', N'MetaDescription', N'Nhà phố', CAST(N'2017-12-23T15:53:06.897' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:03.573' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1741, 6, 1, N'SlideShow', N'Description', N'<p><strong>B&agrave;n giao 80% nội thất Ngoại nhập</strong></p>

<p><span style="color:rgb(0, 128, 0); font-family:verdana,geneva,sans-serif; font-size:14px"><strong>Ng&acirc;n h&agrave;ng Vietcombank v&agrave; VIB</strong></span><span style="font-family:verdana,geneva,sans-serif; font-size:14px">&nbsp;</span></p>
', CAST(N'2017-12-23T16:22:00.383' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:40:02.963' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1742, 21, 1, N'MenuLink', N'MenuName', N'Tư vấn BDS', CAST(N'2017-12-24T15:29:47.050' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:19.853' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1743, 21, 1, N'MenuLink', N'SeoUrl', N'tu-van-bds', CAST(N'2017-12-24T15:29:47.100' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:19.853' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1744, 21, 1, N'MenuLink', N'MetaTitle', N'Tư vấn BDS', CAST(N'2017-12-24T15:29:47.107' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:19.857' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1745, 21, 1, N'MenuLink', N'MetaKeywords', N'Tư vấn BDS', CAST(N'2017-12-24T15:29:47.117' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:19.863' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1746, 21, 1, N'MenuLink', N'MetaDescription', N'Tư vấn BDS', CAST(N'2017-12-24T15:29:47.133' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:19.867' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1747, 6, 1, N'News', N'Title', N'Nữ nhà văn Gào: "Giữ chồng bằng món chiên giòn thơm phức"', CAST(N'2017-12-24T16:06:04.603' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:41:40.920' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1748, 6, 1, N'News', N'SeoUrl', N'nu-nha-van-gao-giu-chong-bang-mon-chien-gion-thom-phuc', CAST(N'2017-12-24T16:06:04.633' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:41:41.017' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1749, 6, 1, N'News', N'MetaTitle', N'Nữ nhà văn Gào: "Giữ chồng bằng món chiên giòn thơm phức"', CAST(N'2017-12-24T16:06:04.637' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:41:41.040' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1750, 6, 1, N'News', N'MetaKeywords', N'Nữ nhà văn Gào: "Giữ chồng bằng món chiên giòn thơm phức"', CAST(N'2017-12-24T16:06:04.640' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:41:41.047' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1751, 6, 1, N'News', N'MetaDescription', N'Nữ nhà văn Gào: "Giữ chồng bằng món chiên giòn thơm phức"', CAST(N'2017-12-24T16:06:04.643' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:41:41.057' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1752, 5, 1, N'News', N'Title', N'Những câu chuyện thú vị từ gian bếp của người nổi tiếng Việt.', CAST(N'2017-12-25T15:19:44.550' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:46:58.420' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1753, 5, 1, N'News', N'ShortDesc', N'<p><a class="highlight0" href="http://localhost:9358/admin/news/edit/5?ReturnUrl=%2Fadmin%2Fnews" style="box-sizing: border-box; background-color: rgb(251, 252, 253); color: rgb(35, 82, 124); text-shadow: none; outline: 0px; font-family: utm_fb, sans-serif; font-size: 14px; border-radius: 0px !important;">Những c&acirc;u chuyện th&uacute; vị từ gian bếp của người nổi tiếng Việt.Những c&acirc;u chuyện th&uacute; vị từ gian bếp của người nổi tiếng Việt.Những c&acirc;u chuyện th&uacute; vị từ gian bếp của người nổi tiếng Việt.</a></p>
', CAST(N'2017-12-25T15:19:44.587' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:46:58.447' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1754, 5, 1, N'News', N'Description', N'<p><a class="highlight0" href="http://localhost:9358/admin/news/edit/5?ReturnUrl=%2Fadmin%2Fnews" style="box-sizing: border-box; background-color: rgb(251, 252, 253); color: rgb(35, 82, 124); text-shadow: none; outline: 0px; font-family: utm_fb, sans-serif; font-size: 14px; border-radius: 0px !important;">Những c&acirc;u chuyện th&uacute; vị từ gian bếp của người nổi tiếng Việt.Những c&acirc;u chuyện th&uacute; vị từ gian bếp của người nổi tiếng Việt.</a></p>
', CAST(N'2017-12-25T15:19:44.593' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:46:58.457' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1755, 5, 1, N'News', N'SeoUrl', N'nhung-cau-chuyen-thu-vi-tu-gian-bep-cua-nguoi-noi-tieng-viet', CAST(N'2017-12-25T15:19:44.600' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:46:58.470' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1756, 5, 1, N'News', N'MetaTitle', N'Những câu chuyện thú vị từ gian bếp của người nổi tiếng Việt.', CAST(N'2017-12-25T15:19:44.607' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:46:58.473' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1757, 5, 1, N'News', N'MetaKeywords', N'Những câu chuyện thú vị từ gian bếp của người nổi tiếng Việt.', CAST(N'2017-12-25T15:19:44.613' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:46:58.480' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1758, 5, 1, N'News', N'MetaDescription', N'Những câu chuyện thú vị từ gian bếp của người nổi tiếng Việt.', CAST(N'2017-12-25T15:19:44.620' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:46:58.487' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1759, 4, 1, N'News', N'Title', N'Hành trình xuyên Việt của dầu ăn cao ...', CAST(N'2017-12-25T15:19:53.833' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:19:53.833' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1760, 4, 1, N'News', N'SeoUrl', N'hanh-trinh-xuyen-viet-cua-dau-an-cao', CAST(N'2017-12-25T15:19:53.853' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:19:53.853' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1761, 4, 1, N'News', N'MetaTitle', N'Hành trình xuyên Việt của dầu ăn cao ...', CAST(N'2017-12-25T15:19:53.863' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:19:53.863' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1762, 4, 1, N'News', N'MetaKeywords', N'Hành trình xuyên Việt của dầu ăn cao ...', CAST(N'2017-12-25T15:19:53.870' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:19:53.870' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1763, 4, 1, N'News', N'MetaDescription', N'Hành trình xuyên Việt của dầu ăn cao ...', CAST(N'2017-12-25T15:19:53.877' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:19:53.877' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1771, 49, 1, N'Post', N'Title', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', CAST(N'2017-12-26T01:54:48.940' AS DateTime), N'Administrator', CAST(N'2017-12-26T02:14:48.180' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1772, 49, 1, N'Post', N'MetaTitle', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', CAST(N'2017-12-26T01:54:49.003' AS DateTime), N'Administrator', CAST(N'2017-12-26T02:14:48.233' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1773, 49, 1, N'Post', N'MetaKeywords', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', CAST(N'2017-12-26T01:54:49.010' AS DateTime), N'Administrator', CAST(N'2017-12-26T02:14:48.237' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1774, 49, 1, N'Post', N'MetaDescription', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', CAST(N'2017-12-26T01:54:49.023' AS DateTime), N'Administrator', CAST(N'2017-12-26T02:14:48.240' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1775, 49, 1, N'Post', N'ShortDesc', N'<p>fadfầđ</p>
', CAST(N'2017-12-26T02:14:48.203' AS DateTime), N'Administrator', CAST(N'2017-12-26T02:14:48.203' AS DateTime), N'Administrator')
GO
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1776, 49, 1, N'Post', N'Description', N'<p>fsd&agrave;&agrave;dsf&agrave;</p>
', CAST(N'2017-12-26T02:14:48.227' AS DateTime), N'Administrator', CAST(N'2017-12-26T02:14:48.227' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1777, 49, 1, N'Post', N'TechInfo', N'<p>fsđầ</p>
', CAST(N'2017-12-26T02:14:48.230' AS DateTime), N'Administrator', CAST(N'2017-12-26T02:14:48.230' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1778, 54, 1, N'Post', N'Title', N'Căn hộ The Golden Star', CAST(N'2017-12-26T02:35:42.677' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:02.290' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1779, 54, 1, N'Post', N'ShortDesc', N'<p><span style="font-family:tahoma; font-size:14px"><span style="font-family:verdana,geneva,sans-serif"><span style="color:rgb(0, 0, 205)">▄</span>&nbsp;&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="The Golden Star" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(0, 100, 0)"><strong>The Golden Star</strong></span></a><span style="color:rgb(0, 128, 0)"><strong>&nbsp;</strong></span>l&agrave; Dự &aacute;n nằm ngay mặt tiền đường Nguyễn Thị Thập Quận 7, Đối diện trung t&acirc;m thương mại BigC, Bệnh viện Quận 7, Trường quốc tế cấp 1,2,3, đại học...<br />
<br />
<span style="color:rgb(0, 0, 205)">▄ &nbsp;</span><span style="color:rgb(255, 0, 0)"><strong>B&agrave;n giao 80% nội thất Ngoại nhập</strong></span>&nbsp;so với nh&agrave; mẫu thực tế, Nhận nh&agrave; v&agrave;o th&aacute;ng 5/2018 (Hiện tại đ&atilde; x&acirc;y đến tầng 12 - Cập nhật 10/7/2017) .</span></span><br />
<br />
<span style="color:rgb(0, 0, 205); font-family:verdana,geneva,sans-serif; font-size:14px">▄</span><span style="color:rgb(0, 128, 0); font-family:verdana,geneva,sans-serif; font-size:14px">&nbsp;</span><span style="font-family:verdana,geneva,sans-serif; font-size:14px">&nbsp;<span style="color:rgb(0, 128, 0)"><strong>Ng&acirc;n h&agrave;ng Vietcombank v&agrave; VIB</strong></span>&nbsp;t&agrave;i trợ dự &aacute;n với l&atilde;i suất hấp dẫn từ 7.5%/năm, G&oacute;p 10-20 năm, Bao hồ sơ vay từ A-Z.</span><br />
<br />
<span style="font-family:tahoma; font-size:14px"><span style="font-family:verdana,geneva,sans-serif"><span style="color:rgb(0, 0, 205)">▄ &nbsp;</span><strong><a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="Giá bán Golden Star" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(255, 0, 0)">Gi&aacute; b&aacute;n Golden Star</span></a></strong><span style="color:rgb(255, 0, 0)"><strong>&nbsp;từ 1.7 tỷ/căn 2PN</strong></span>&nbsp;Diện t&iacute;ch từ 56-83m2 tương đương&nbsp;Đơn gi&aacute; từ 28 triệu/m2. THANH TO&Aacute;N 2%/th&aacute;ng cho đến nhận nh&agrave;!!</span></span></p>
', CAST(N'2017-12-26T02:35:42.687' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:02.317' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1780, 54, 1, N'Post', N'TechInfo', NULL, CAST(N'2017-12-26T02:35:42.693' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:02.333' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1781, 54, 1, N'Post', N'MetaTitle', N'Căn hộ The Golden Star', CAST(N'2017-12-26T02:35:42.697' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:02.350' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1782, 54, 1, N'Post', N'MetaKeywords', N'Căn hộ The Golden Star', CAST(N'2017-12-26T02:35:42.700' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:02.357' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1783, 54, 1, N'Post', N'MetaDescription', N'Căn hộ The Golden Star', CAST(N'2017-12-26T02:35:42.703' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:02.367' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1784, 54, 1, N'Post', N'ProductCode', N'Căn hộ The Golden Star', CAST(N'2017-12-26T02:56:06.200' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:02.307' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1785, 37, 1, N'MenuLink', N'MenuName', N'Chính sách', CAST(N'2017-12-26T03:32:24.857' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:24.857' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1786, 37, 1, N'MenuLink', N'SeoUrl', N'chinh-sach', CAST(N'2017-12-26T03:32:24.890' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:24.890' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1787, 37, 1, N'MenuLink', N'MetaTitle', N'Chính sách', CAST(N'2017-12-26T03:32:24.897' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:24.897' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1788, 37, 1, N'MenuLink', N'MetaKeywords', N'Chính sách', CAST(N'2017-12-26T03:32:24.900' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:24.900' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1789, 37, 1, N'MenuLink', N'MetaDescription', N'Chính sách', CAST(N'2017-12-26T03:32:24.903' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:24.903' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1790, 43, 1, N'MenuLink', N'MenuName', N'Chính sách đổi trả', CAST(N'2017-12-26T03:32:45.097' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:45.097' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1791, 43, 1, N'MenuLink', N'SeoUrl', N'chinh-sach-doi-tra', CAST(N'2017-12-26T03:32:45.110' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:45.110' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1792, 43, 1, N'MenuLink', N'MetaTitle', N'Chính sách đổi trả', CAST(N'2017-12-26T03:32:45.120' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:45.120' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1793, 43, 1, N'MenuLink', N'MetaKeywords', N'Chính sách đổi trả', CAST(N'2017-12-26T03:32:45.123' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:45.123' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1794, 43, 1, N'MenuLink', N'MetaDescription', N'Chính sách đổi trả', CAST(N'2017-12-26T03:32:45.133' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:45.133' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1795, 54, 1, N'Post', N'Description', N'<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<h2><strong>CĂN HỘ QU&Acirc;N 7 THE GOLDEN STAR&nbsp;CĐT&nbsp;HƯNG LỘC PH&Aacute;T ĐƯỜNG&nbsp;NGUYỄN THỊ THẬP</strong></h2>
<br />
<span style="font-family:verdana,geneva,sans-serif"><span style="color:rgb(0, 0, 205)">▄</span>&nbsp;&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="The Golden Star" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(0, 100, 0)"><strong>The Golden Star</strong></span></a><span style="color:rgb(0, 128, 0)"><strong>&nbsp;</strong></span>l&agrave; Dự &aacute;n nằm ngay mặt tiền đường Nguyễn Thị Thập Quận 7, Đối diện trung t&acirc;m thương mại BigC, Bệnh viện Quận 7, Trường quốc tế cấp 1,2,3, đại học...<br />
<br />
<span style="color:rgb(0, 0, 205)">▄ &nbsp;</span><span style="color:rgb(255, 0, 0)"><strong>B&agrave;n giao 80% nội thất Ngoại nhập</strong></span>&nbsp;so với nh&agrave; mẫu thực tế, Nhận nh&agrave; v&agrave;o th&aacute;ng 5/2018 (Hiện tại đ&atilde; x&acirc;y đến tầng 12 - Cập nhật 10/7/2017) .</span><br />
<br />
<span style="color:rgb(0, 0, 205); font-family:verdana,geneva,sans-serif">▄</span><span style="color:rgb(0, 128, 0); font-family:verdana,geneva,sans-serif">&nbsp;</span><span style="font-family:verdana,geneva,sans-serif">&nbsp;<span style="color:rgb(0, 128, 0)"><strong>Ng&acirc;n h&agrave;ng Vietcombank v&agrave; VIB</strong></span>&nbsp;t&agrave;i trợ dự &aacute;n với l&atilde;i suất hấp dẫn từ 7.5%/năm, G&oacute;p 10-20 năm, Bao hồ sơ vay từ A-Z.</span><br />
<br />
<span style="font-family:verdana,geneva,sans-serif"><span style="color:rgb(0, 0, 205)">▄ &nbsp;</span><strong><a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="Giá bán Golden Star" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(255, 0, 0)">Gi&aacute; b&aacute;n Golden Star</span></a></strong><span style="color:rgb(255, 0, 0)"><strong>&nbsp;từ 1.7 tỷ/căn 2PN</strong></span>&nbsp;Diện t&iacute;ch từ 56-83m2 tương đương&nbsp;Đơn gi&aacute; từ 28 triệu/m2. THANH TO&Aacute;N 2%/th&aacute;ng cho đến nhận nh&agrave;!!</span><br />
&nbsp;
<table border="0" cellpadding="1" cellspacing="1" style="border-collapse:collapse; border-spacing:0px; margin:0px; max-width:100%; outline:0px; padding:0px">
	<tbody>
		<tr>
			<td rowspan="2"><img alt="logo the golden star" longdesc="http://can-ho.vn/logo%20the%20golden%20star" src="http://can-ho.vn/uploads/noidung/images/tindang/logo.png" style="border-spacing:0px; border:0px; height:87px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:150px" /></td>
			<td><br />
			<span style="font-size:16px"><span style="font-family:verdana,geneva,sans-serif"><strong><span style="color:rgb(51, 153, 255)">Hotline:&nbsp;</span><a href="tel: 0933002299" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(51, 153, 255)">0933002299</span></a></strong></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:16px"><span style="font-family:verdana,geneva,sans-serif"><strong><span style="color:rgb(51, 153, 255)">Hotline:&nbsp;</span><a href="tel: 0971712299" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(51, 153, 255)">0971712299</span></a></strong></span></span><br />
			&nbsp;</td>
		</tr>
	</tbody>
</table>

<p><br />
<strong><span style="font-size:16px"><span style="color:rgb(178, 34, 34)"><em>Link web Chủ đầu tư Hưng Lộc Ph&aacute;t:</em></span><span style="color:rgb(255, 0, 0)"><em>&nbsp;</em></span><a href="http://the-goldenstar.com/" name="The golden Star Hưng lộc phát" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152); background-color: rgb(255, 255, 255); font-family: verdana, geneva, sans-serif; font-size: 13px;" target="_blank"><span style="color:rgb(128, 0, 0)"><em>www.thegoldenstar.com</em></span></a></span></strong></p>

<h3><span style="font-size:12px"><span style="font-family:verdana,geneva,sans-serif"><span style="color:rgb(0, 0, 205)"><strong>&nbsp;CH&Iacute;NH S&Aacute;CH ƯU Đ&Atilde;I KH&Aacute;CH H&Agrave;NG MUA DỰ &Aacute;N THE GOLDEN STAR</strong></span></span></span></h3>

<ul>
	<li><span style="font-family:verdana,geneva,sans-serif"><em>Kh&aacute;ch h&agrave;ng mua mới được nhận ngay 2-5 chỉ v&agrave;ng SJC.</em></span></li>
	<li><span style="font-family:verdana,geneva,sans-serif"><em>Kh&aacute;ch h&agrave;ng cũ giới thiệu kh&aacute;ch h&agrave;ng mới ck 5 triệu/sp<em>.</em></em></span></li>
	<li><span style="font-family:verdana,geneva,sans-serif"><em>Thanh to&aacute;n chỉ 2%/th&aacute;ng , K&yacute; HĐ TT 30%, Đ&atilde; x&acirc;y đến tầng 12.</em></span></li>
</ul>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">
<div class="note_ghichu3" style="margin: 0px; padding: 10px; outline: 0px; border: 1px solid rgb(215, 215, 0); background-color: rgb(255, 255, 230); display: inline-block; max-width: 100%;"><span style="font-family:verdana,geneva,sans-serif"><em><strong>THE&nbsp;<span style="color:rgb(0, 0, 0)">GOLDEN STAR</span></strong>&nbsp;c&oacute; &yacute; nghĩa như một ng&ocirc;i sao s&aacute;ng, Mọi thứ li&ecirc;n quan đến căn hộ như tiện &iacute;ch dự &aacute;n, chất lượng b&agrave;n giao, Vị tr&iacute; hay chủ đầu tư, Tất cả đều c&oacute; gi&aacute; trị như ch&iacute;nh c&aacute;i t&ecirc;n The Golden Star của n&oacute;, Được so s&aacute;nh bằng V&Agrave;NG v&agrave; đẳng cấp s&aacute;nh ngang NG&Ocirc;I SAO.</em></span></div>
</div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%; text-align: center;"><img alt="phoi-canh-tong-quan-the-golden-star" longdesc="http://can-ho.vn/phoi-canh-tong-quan-the-golden-star" src="http://can-ho.vn/uploads/noidung/images/tindang/phoi%20canh%20-%20buoi%20toi%20the%20golden.jpg" style="border-spacing:0px; border:0px; height:600px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" /></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">&nbsp;
<div class="note_ghichu" style="margin: 0px; padding: 10px; outline: 0px; border: 1px solid rgb(94, 156, 69); background-color: rgb(220, 236, 213); display: inline-block; max-width: 100%;"><strong>&nbsp;<span style="font-family:verdana,geneva,sans-serif"><em>T&ecirc;n dự &aacute;n: THE GOLDEN STAR<br />
&nbsp;Chủ đầu tư:&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="Hưng Lộc Phát" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(51, 51, 51)">Hưng Lộc Ph&aacute;t</span></a><br />
&nbsp;Đơn vị thiết kế: Ong &amp; Ong<br />
&nbsp;Nh&agrave; thầu x&acirc;y dựng uy t&iacute;n: H&Ograve;A B&Igrave;NH<br />
&nbsp;Qui m&ocirc;: 9.229 m2 +&nbsp;Mật độ x&acirc;y dựng: 32.39%<br />
&nbsp;Tổng số căn hộ: 2 Block A v&agrave; B cao 26 tầng&nbsp;gồm 500 căn hộ (2PN, 3PN, Penhouse).&nbsp;</em></span></strong></div>
<br />
<br />
<iframe allowfullscreen="" frameborder="0" height="500" src="https://www.youtube.com/embed/tKuNfc8ZNNw" style="margin: 0px; padding: 0px; outline: 0px;" width="100%"></iframe></div>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>VỊ TR&Iacute; DỰ &Aacute;N</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<p><span style="font-family:verdana,geneva,sans-serif"><span style="color:rgb(0, 0, 205)"><strong>DỰ &Aacute;N THE GOLDEN STAR&nbsp;</strong></span><strong><span style="color:rgb(0, 0, 205)">CĂN HỘ QUẬN 7</span></strong><br />
➜ &nbsp;Đối diện Trung t&acirc;m thương mại Big C, Bệnh viện Quận 7 Trường RISS, Hệ thống c&aacute;c si&ecirc;u thị điện m&aacute;y lớn, Khu đ&ocirc; thị cao cấp Tp Hồ Ch&iacute; Minh&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="phú mỹ hưng" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(0, 0, 128)"><strong>PH&Uacute; MỸ HƯNG</strong></span></a>, Kết nối c&aacute;c quận trong Trung t&acirc;m nhanh ch&oacute;ng.<br />
<br />
<span style="color:rgb(0, 0, 205)"><strong>5</strong>&nbsp;<strong>PH&Uacute;T</strong></span><br />
➜&nbsp;Đến trung t&acirc;m quận 4, Quận 8, Quận 2, Khu Đ&ocirc; Thị Ph&uacute; Mỹ Hưng, trường Nhật Bản, đại học T&agrave;i ch&iacute;nh -&nbsp;Marketing,&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="Đại học" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(51, 51, 51)"><strong>Đại học</strong></span></a>&nbsp;T&ocirc;n Đức Thắng, Đại học RMIT, triển l&atilde;m SECC, The Crescent Mall, bệnh viện FV, bệnh viện T&acirc;m Đức, Chợ T&acirc;n Mỹ.<br />
<br />
<span style="color:rgb(0, 0, 205)"><strong>12</strong>&nbsp;<strong>PH&Uacute;T</strong></span><br />
➜&nbsp;Đến&nbsp;<strong>trung t&acirc;m quận 1</strong>, trung t&acirc;m t&agrave;i ch&iacute;nh quốc tế, trường Nam S&agrave;i G&ograve;n, trường H&agrave;n Quốc, SC Vivo City, Co.op Mart, C&ocirc;ng vi&ecirc;n Mũi Đ&egrave;n Đỏ, hồ B&aacute;n Nguyệt.</span></p>

<p style="text-align:center"><img alt="vi tri du an the golden star quan 7" longdesc="http://can-ho.vn/vi%20tri%20du%20an%20the%20golden%20star%20quan%207" src="http://can-ho.vn/uploads/noidung/images/tindang/vi-tri-can-ho-the-golden-star-quan-7-chuan.jpg" style="border-spacing:0px; border:0px; height:600px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" /><br />
<span style="font-family:verdana,geneva,sans-serif">Vị tr&iacute; Dự &aacute;n TheGoldenStar Thuận tiện di chuyển mọi nơi trong Tphcm</span></p>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>TIỆN &Iacute;CH XUNG QUANH</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<p><span style="font-family:verdana,geneva,sans-serif">Với sự ph&aacute;t triển l&acirc;u đời của&nbsp;<strong>Quận 7</strong>&nbsp;v&agrave; khu&nbsp;<strong>Ph&uacute; Mỹ Hưng</strong>, Cư d&acirc;n trong&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="Chung cư The Golden Star" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(68, 68, 68)"><strong>Chung cư The Golden Star&nbsp;</strong></span></a>c&oacute; thể sở hữu c&aacute;c tiện &iacute;ch cao cấp tại&nbsp;quận 7&nbsp;chỉ 5&nbsp;ph&uacute;t di chuyển như&nbsp;si&ecirc;u thị Coop mart, BigC, si&ecirc;u thị Lotte Mart, chợ T&acirc;n Mỹ,&nbsp;C&aacute;c trường Đại học nổi tiếng, Bệnh viện, Trường học cấp 1 2 3, S&acirc;n g&ocirc;n...</span></p>

<p style="text-align:center"><img alt="canh-quan-du-an-golden-star" longdesc="http://can-ho.vn/@dmin/tindang_c/179/canh-quan-du-an-golden-star" src="http://can-ho.vn/uploads/noidung/images/tindang/mat%20bang%20tang%2021.png" style="border-spacing:0px; border:0px; font-family:verdana,geneva,sans-serif; height:563px; margin:0px; max-width:100%; opacity:0.9; outline:0px; padding:5px 0px; vertical-align:middle; width:1000px" /><br />
<span style="font-family:verdana,geneva,sans-serif">Hơi bơi Skyview, Trung t&acirc;m&nbsp;Thương mại, Khu c&agrave; ph&ecirc; ngo&agrave;i trời, Ph&ograve;ng Sinh hoạt cộng đồng tập trung tầng trệt v&agrave; tầng&nbsp;21.</span></p>

<p style="text-align:center"><img alt="ho-boi-du-an-the-golden-star" longdesc="http://can-ho.vn/@dmin/tindang_c/179/ho-boi-du-an-the-golden-star" src="http://can-ho.vn/uploads/noidung/images/tindang/phoi%20canh%20-%20buoi%20toi%20the%20golden%20star%20q7.jpg" style="border-spacing:0px; border:0px; font-family:verdana,geneva,sans-serif; height:661px; margin:0px; max-width:100%; opacity:0.9; outline:0px; padding:5px 0px; vertical-align:middle; width:1000px" /><br />
<span style="font-family:verdana,geneva,sans-serif">Hồ bơi điều tiết theo nhiệt độ hơn 500m2 tại tầng 21 gi&uacute;p cư d&acirc;n lu&ocirc;n hứng th&uacute; bơi m&agrave;&nbsp;kh&ocirc;ng ngại thời tiết.<br />
<br />
<img alt="nha-tre-the-golden star" longdesc="http://can-ho.vn/nha-tre-the-golden%20star" src="http://can-ho.vn/uploads/noidung/images/tindang/nha-tre-the-golden-star-q7.jpg" style="border-spacing:0px; border:0px; height:230px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><img alt="gym-golden-star" longdesc="http://can-ho.vn/gym-golden-star" src="http://can-ho.vn/uploads/noidung/images/tindang/can-ho-the-golden-star-q7.jpg" style="border-spacing:0px; border:0px; height:230px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><br />
Mật độ x&acirc;y dựng thấp, Khu&ocirc;n vi&ecirc;n rộng, Vườn treo bao quanh&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="Căn hộ Golden Star" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(51, 51, 51)"><strong>Căn hộ Golden Star</strong></span></a>.</span><br />
<br />
<img alt="he thong loc nuoc tai voi" src="http://can-ho.vn/uploads/noidung/images/tindang/may%20nuoc%20nong%20su%20dung%20tai%20voi.jpg" style="border-spacing:0px; border:0px; height:745px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:800px" /><br />
<span style="font-family:verdana,geneva,sans-serif">Hệ thống lọc nước theo ti&ecirc;u chuẩn Singapo duy nhất c&oacute; tại TPHCM, Nghĩa l&agrave; cư d&acirc;n c&oacute; thể sử dụng nước để uống v&agrave; nấu ăn ngay tại v&ograve;i m&agrave; kh&ocirc;ng cần d&ugrave;ng b&igrave;nh lọc nước.</span><br />
<br />
&nbsp;</p>

<p style="text-align:center"><br />
<span style="font-family:verdana,geneva,sans-serif"><img alt="an ninh 3 lop the golden star" longdesc="http://can-ho.vn/an%20ninh%203%20lop%20the%20golden%20star" src="http://can-ho.vn/uploads/noidung/images/tindang/an%20ninh%20the%20golden%20star.png" style="border-spacing:0px; border:0px; height:186px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:1000px" /></span></p>

<p style="text-align:center"><span style="font-family:verdana,geneva,sans-serif">Hệ thống kh&oacute;a cửa&nbsp;Combo gồm Thẻ từ + V&acirc;n tay + Mật m&atilde;, Camera mọi nơi,&nbsp;An ninh 3 lớp từ ngo&agrave;i v&agrave;o trong kết hợp Video call sẽ mang lại cho bạn cảm gi&aacute;c an t&acirc;m Tuyệt đối.</span></p>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>THIẾT KẾ CĂN HỘ</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<p style="text-align:center"><span style="font-family:verdana,geneva,sans-serif"><img alt="mat bang tang tret golden star" longdesc="http://can-ho.vn/mat%20bang%20tang%20tret%20golden%20star" src="http://can-ho.vn/uploads/noidung/images/tindang/mat%20bang%20tang%201(1).jpg" style="border-spacing:0px; border:0px; height:684px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:1000px" /><br />
<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="Dự án The Golden Star" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(51, 51, 51)"><strong>Dự &aacute;n The Golden Star</strong></span></a>&nbsp;c&oacute; 2 th&aacute;p căn hộ &nbsp;c&oacute; lối đi ri&ecirc;ng&nbsp;A v&agrave; B, cao 26 tầng, 2 tầng hầm v&agrave; 3 tầng dưới để xe, Tầng trệt l&agrave;&nbsp;<strong>SHOPHOUSE kinh doanh</strong>,&nbsp;&nbsp;Từ tầng 2 trở l&ecirc;n l&agrave; tầng căn hộ, Tầng 21 l&agrave; tầng tiện &iacute;ch của Dự &aacute;n<br />
<br />
<img alt="Mặt bằng tầng 6 đến 19 the golden star" longdesc="http://can-ho.vn/M%E1%BA%B7t%20b%E1%BA%B1ng%20t%E1%BA%A7ng%206%20%C4%91%E1%BA%BFn%2019%20the%20golden%20star" src="http://can-ho.vn/uploads/noidung/images/tindang/Mat%20bang%20tang%206%20-%2019.png" style="border-spacing:0px; border:0px; height:622px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:1000px" /></span></p>

<p style="text-align:center"><span style="font-family:verdana,geneva,sans-serif">Diện t&iacute;ch&nbsp;căn hộ 2 ph&ograve;ng ngủ&nbsp;từ 68m2 2PN, 79m2 2PN + 1, v&agrave; c&aacute;c căn g&oacute;c 3 Ph&ograve;ng ngủ 84m2. Mối th&aacute;p c&oacute; 3 thang m&aacute;y v&agrave; 2 thang bộ tho&aacute;t hiểm.<br />
<br />
<br />
<img alt="thiet ke golden star" longdesc="http://can-ho.vn/thiet%20ke%20golden%20star" src="http://can-ho.vn/uploads/noidung/images/baiviet/UNIT%20A6-68m2.jpg" style="border-spacing:0px; border:0px; height:380px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><img alt="thiet ke golden star" longdesc="http://can-ho.vn/thiet%20ke%20golden%20star" src="http://can-ho.vn/uploads/noidung/images/tindang/UNIT%20B6%2085_33m2.jpg" style="border-spacing:0px; border:0px; height:380px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><br />
Tất cả c&aacute;c ph&ograve;ng ngủ đều đ&oacute;n gi&oacute; đ&oacute;n &aacute;nh s&aacute;ng tự nhi&ecirc;n, khu vực giặt phơi tho&aacute;ng m&aacute;t l&agrave; điểm mạnh của thiết kế căn hộ&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="Golden Star Quận 7" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(51, 51, 51)"><strong>Golden Star Quận 7</strong></span></a></span><br />
&nbsp;</p>

<div class="note_ghichu3" style="margin: 0px; padding: 10px; outline: 0px; border: 1px solid rgb(215, 215, 0); background-color: rgb(255, 255, 230); display: inline-block; max-width: 100%;"><span style="font-family:verdana,geneva,sans-serif"><a href="http://the-goldenstar.com/so-do-can-ho.htm" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);" target="_blank"><span style="color:rgb(0, 0, 0)"><strong>XEM CHI TIẾT THIẾT KẾ C&Aacute;C TẦNG TẠI Đ&Acirc;Y</strong></span></a></span></div>

<p>&nbsp;</p>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>GI&Aacute; B&Aacute;N &amp; THANH TO&Aacute;N</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<p><strong><span style="font-family:verdana,geneva,sans-serif"><span style="color:rgb(0, 0, 205)">Gi&aacute; mua chung cư The Golden Star từ&nbsp;&nbsp;1.7 tỷ/căn 2PN&nbsp;Diện t&iacute;ch căn hộ&nbsp;từ 56m2 -68m2 - 85m2</span><br />
<br />
<span style="color:rgb(0, 128, 0)">Đơn gi&aacute; Hấp dẫn&nbsp;B&igrave;nh qu&acirc;n từ 28 triệu/m2 , Cơ hội đầu tư sinh lời cao.</span><br />
<br />
<span style="color:rgb(0, 0, 255)">Đặt mua căn hộ nhận ngay Lộc v&agrave;ng trị gi&aacute; 2 - 5 chỉ v&agrave;ng SJC.&nbsp;</span><br />
<br />
<span style="color:rgb(255, 0, 0)">Lưu &yacute;: Hiện tại c&oacute; 10 suất nội bộ c&ocirc;ng ty, Được nhận ưu đ&atilde;i chiết khấu thanh to&aacute;n v&agrave;&nbsp;</span><a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="giá bán Golden Star" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(255, 0, 0)">gi&aacute; b&aacute;n Golden Star</span></a><span style="color:rgb(255, 0, 0)">.&nbsp;&nbsp;Vui l&ograve;ng li&ecirc;n hệ Ph&ograve;ng kinh doanh để lựa chọn căn ưng &yacute;.</span></span></strong></p>

<p style="text-align:center"><img alt="lich thanh toan 2% the golden star" longdesc="http://can-ho.vn/lich%20thanh%20toan%202%%20the%20golden%20star" src="http://can-ho.vn/uploads/noidung/images/baiviet/PTTT%20thang%207.jpg" style="border-spacing:0px; border:0px; height:571px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:940px" /></p>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">
<p>&nbsp;</p>

<div class="note_ghichu" style="margin: 0px; padding: 10px; outline: 0px; border: 1px solid rgb(94, 156, 69); background-color: rgb(220, 236, 213); display: inline-block; max-width: 100%;">
<p>&nbsp;</p>

<h3><strong>TIẾN ĐỘ MUA CĂN HỘ THE GOLDEN STAR NGUYỄN THỊ THẬP</strong></h3>

<ul>
	<li style="text-align:justify"><em><span style="font-family:verdana,geneva,sans-serif">Đặt cọc lấy căn hộ 50.000.000 VND</span></em></li>
	<li style="text-align:justify"><em><span style="font-family:verdana,geneva,sans-serif">Trong v&ograve;ng 10 ng&agrave;y sau đ&oacute;ng đủ 30% gi&aacute; trị căn hộ v&agrave; k&yacute; HĐMB (Đ&atilde; bao gồm cọc).</span></em></li>
	<li style="text-align:justify"><em><span style="font-family:verdana,geneva,sans-serif">Về sau đ&oacute; cứ 1 th&aacute;ng 1 đợt 2% tr&ecirc;n&nbsp;gi&aacute; trị căn hộ.</span></em></li>
	<li style="text-align:justify"><em><span style="font-family:verdana,geneva,sans-serif">Nhận sổ hồng Thanh to&aacute;n 5% c&ograve;n lại. (Khoảng 1 năm sau khi nhận nh&agrave;).</span></em></li>
</ul>

<p><span style="font-family:verdana,geneva,sans-serif"><strong>Thanh to&aacute;n nhanh 95% nhận Chiết khấu từ 6% tr&ecirc;n gi&aacute; trị căn hộ.</strong>&nbsp;&nbsp;</span></p>
</div>

<p>&nbsp;</p>
</div>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>ƯU ĐIỂM NỔI BẬT</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<p><span style="font-family:verdana,geneva,sans-serif"><span style="color:rgb(255, 0, 0)">►</span><strong>&nbsp;<span style="color:rgb(0, 128, 0)">L&agrave;m việc trực&nbsp;tiếp chủ đầu tư lu&ocirc;n lu&ocirc;n l&agrave; TỐT NHẤT:&nbsp;</span></strong>Kh&aacute;ch h&agrave;ng sẽ nhận được mức chiết khấu cao nhất, Hỗ trợ trước v&agrave; sau b&aacute;n h&agrave;ng tốt nhất m&agrave; kh&ocirc;ng phải th&ocirc;ng qua trung gian n&agrave;o.<br />
<br />
<span style="color:rgb(255, 0, 0)">►</span><strong>&nbsp;<span style="color:rgb(0, 128, 0)">Vị tr&iacute; đắc địa:</span></strong>&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm" name="The Golden Star Nguyễn Thị Thập" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(51, 51, 51)"><strong>The Golden Star&nbsp;Nguyễn Thị Thập</strong></span></a>, Đối diện trung t&acirc;m thương mại BigC, Kết nối trung t&acirc;m&nbsp;TPHCM, thừa hưởng to&agrave;n bộ&nbsp;c&aacute;c tiện &iacute;ch khu đ&ocirc; thị&nbsp;<span style="color:rgb(34, 34, 34)"><strong>Ph&uacute; Mỹ Hưng</strong></span>&nbsp;Quận 7.<br />
<br />
<span style="color:rgb(255, 0, 0)">►</span>&nbsp;<span style="color:rgb(0, 128, 0)"><strong>An ninh tuyệt đối: &nbsp;</strong></span>Camera, Thẻ từ thang m&aacute;y 3 lớp,&nbsp;Hệ thống li&ecirc;n lạc nội bộ intercom tạo n&ecirc;n hệ thống kh&eacute;p k&iacute;n an to&agrave;n bảo mật, Người lạ kh&ocirc;ng v&agrave;o được chung cư.<br />
<br />
<span style="color:rgb(255, 0, 0)">►</span>&nbsp;<strong><span style="color:rgb(0, 128, 0)">Tiện &iacute;ch đẳng cấp của&nbsp;</span></strong><strong><span style="color:rgb(0, 128, 0)">Căn hộ</span></strong><strong><span style="color:rgb(0, 128, 0)">&nbsp;đạt chuẩn 5 SAO</span>:</strong>&nbsp;Khối tiện &iacute;ch nỗi bật như Hồ bơi tự động điều tiết, Hệ thống lọc nước tại v&ograve;i, B&agrave;n giao full 80% như nh&agrave; mẫu nội thất Ngoại nhập&nbsp;(Golden Star l&agrave; Một trong số rất &iacute;t dự &aacute;n b&agrave;n giao full nội thất cao cấp).<br />
<br />
<span style="color:rgb(255, 0, 0)">►</span><strong>&nbsp;</strong><span style="color:rgb(0, 128, 0)"><strong>Cơ hội an cư:</strong></span><strong>&nbsp;</strong>Nhận nh&agrave; v&agrave;o th&aacute;ng 5/2018, Ng&acirc;n h&agrave;ng Vietcombank hỗ trợ g&oacute;p tối đa 70% gi&aacute; trị căn hộ, Chỉ cần c&oacute; 600 triệu l&agrave; c&oacute; cơ hội sở hữu căn hộ The Golden Star Hưng Lộc Ph&aacute;t.<br />
<br />
<span style="color:rgb(255, 0, 0)">►</span>&nbsp;<span style="color:rgb(0, 128, 0)"><strong>Cơ hội đầu tư sinh lời cao</strong></span><strong>:</strong>&nbsp;Khu vực quận 7 liền kề Ph&uacute; Mỹ Hưng cho thu&ecirc; rất dễ, gi&aacute; trị cao từ 11 -13 triệu nh&agrave; cơ bản, 14-16 triệu nh&agrave; Full nội thất&nbsp;.<br />
<br />
<span style="color:rgb(255, 0, 0)">►</span><span style="color:rgb(0, 128, 0)"><strong>&nbsp;</strong></span><strong><span style="color:rgb(0, 128, 0)">Gi&aacute;</span></strong><span style="color:rgb(0, 128, 0)"><strong>&nbsp;trị gia tăng:&nbsp;</strong></span>Th&ocirc;ng tin quy hoạch&nbsp;<strong>Cầu Thủ Thi&ecirc;m 4&nbsp;</strong>nối qua s&ocirc;ng S&agrave;i G&ograve;n, Cầu K&ecirc;nh Tẻ 2 bắc qua quận 4,&nbsp;cộng hưởng với&nbsp;Quận 7&nbsp;l&agrave; nơi được&nbsp;quy hoạch v&agrave; ph&aacute;t triển th&agrave;nh khu đ&ocirc; thị kiểu mẫu, đạt chuẩn ch&acirc;u &acirc;u, m&ocirc;i trường sống xanh-sạch-đẹp, văn minh, hiện đại.</span><br />
&nbsp;</p>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">
<div class="note_ghichu3" style="margin: 0px; padding: 10px; outline: 0px; border: 1px solid rgb(215, 215, 0); background-color: rgb(255, 255, 230); display: inline-block; max-width: 100%;">&nbsp;
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><em><span style="font-family:verdana,geneva,sans-serif"><strong>Một số th&ocirc;ng tin quy hoạch tại Quận 7</strong></span></em></div>

<ul>
	<li style="text-align:justify"><em><span style="font-family:verdana,geneva,sans-serif">Cầu Thủ Thi&ecirc;m 4 d&agrave;i 2km sẽ ho&agrave;n th&agrave;nh 2019 (Vồn đầu tư 5200 tỷ)</span></em>,&nbsp;<em><span style="font-family:verdana,geneva,sans-serif">Tuyến METRO số 4 kết nối Quận 1 - Quận 7 - Nh&agrave; B&egrave; (97.000 tỷ)</span></em></li>
	<li style="text-align:justify"><em><span style="font-family:verdana,geneva,sans-serif">Huyện Nh&agrave;&nbsp;B&egrave; sẽ ch&iacute;nh thức l&ecirc;n Quận trong&nbsp;2017-2018.</span></em>&nbsp;<em><span style="font-family:verdana,geneva,sans-serif">Cầu K&ecirc;nh tẻ 2 kết nối Quận 4 v&agrave; Quận 1&nbsp;bắt đầu khởi c&ocirc;ng v&agrave;o cuối năm 2017.</span></em></li>
</ul>
</div>
</div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%; text-align: center;"><img alt="tien-do-the-golden-star" longdesc="http://can-ho.vn/tien-do-the-golden-star" src="http://can-ho.vn/uploads/noidung/images/tindang/tien%20do%20xay%20dung%20the%20golden%20star.jpg" style="border-spacing:0px; border:0px; height:560px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:850px" /><br />
<span style="font-family:verdana,geneva,sans-serif">Tiến độ dự &aacute;n The Golden Star th&aacute;ng 10 năm 2017</span></div>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>NH&Agrave; MẪU &amp; TIẾN ĐỘ</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<p style="text-align:center"><span style="font-family:verdana,geneva,sans-serif"><img alt="can-ho-mau-the-golden-star" longdesc="http://can-ho.vn/can-ho-mau-the-golden-star" src="http://can-ho.vn/uploads/noidung/images/tindang/can-ho-mau-the-golden-star%204.jpg" style="border-spacing:0px; border:0px; height:330px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><img alt="can-ho-mau-the-golden-star" longdesc="http://can-ho.vn/can-ho-mau-the-golden-star" src="http://can-ho.vn/uploads/noidung/images/tindang/can-ho-mau-the-golden-star%203.jpg" style="border-spacing:0px; border:0px; height:330px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><br />
B&agrave;n giao cửa gỗ cao cấp chống ch&aacute;y 72 ph&uacute;t (Malaysia), Hệ thống thẻ từ thang m&aacute;y + Kh&oacute;a mật m&atilde; + V&acirc;n tay,&nbsp;Intercom li&ecirc;n lạc nội bộ. Gạch b&oacute;ng kiếng Cẩm thạch&nbsp;60x60 ph&ograve;ng kh&aacute;ch, S&agrave;n gỗ (Đức), Tặng trần Thạch cao + Đ&egrave;n, Gi&agrave;n phơi th&ocirc;ng minh<br />
<br />
<img alt="can-ho-mau-the-golden-star" longdesc="http://can-ho.vn/can-ho-mau-the-golden-star" src="http://can-ho.vn/uploads/noidung/images/tindang/can-ho-mau-the-golden-star%207.jpg" style="border-spacing:0px; border:0px; height:330px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><img alt="can-ho-mau-the-golden-star" longdesc="http://can-ho.vn/can-ho-mau-the-golden-star" src="http://can-ho.vn/uploads/noidung/images/tindang/can-ho-mau-the-golden-star%202.jpg" style="border-spacing:0px; border:0px; height:330px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:425px" /><br />
B&agrave;n giao full Bếp gồm Bếp Malorca + M&aacute;y h&uacute;t m&ugrave;i, Hệ thống lọc nước tại v&ograve;i, Tủ kệ bếp tr&ecirc;n dưới. Ph&ograve;ng vệ sinh b&agrave;n giao full như h&igrave;nh mẫu (Thiết bị TOTO nhập từ Nhật Bản), Gương lớn nhập từ Th&aacute;i Lan</span></p>
</div>
</div>
', CAST(N'2017-12-26T04:11:04.517' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:02.323' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1796, 1110, 1, N'MenuLink', N'MenuName', N'Hỗ trợ', CAST(N'2017-12-26T10:24:17.397' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:24:17.397' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1797, 1110, 1, N'MenuLink', N'SeoUrl', N'ho-tro', CAST(N'2017-12-26T10:24:17.417' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:24:17.417' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1798, 1110, 1, N'MenuLink', N'MetaTitle', N'Hỗ trợ', CAST(N'2017-12-26T10:24:17.423' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:24:17.423' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1799, 1110, 1, N'MenuLink', N'MetaKeywords', N'Hỗ trợ', CAST(N'2017-12-26T10:24:17.427' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:24:17.427' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1800, 1110, 1, N'MenuLink', N'MetaDescription', N'Hỗ trợ', CAST(N'2017-12-26T10:24:17.433' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:24:17.433' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1801, 54, 1, N'MenuLink', N'MenuName', N'Khuyến mãi', CAST(N'2017-12-26T10:24:37.047' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:24:37.047' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1802, 54, 1, N'MenuLink', N'SeoUrl', N'khuyen-mai', CAST(N'2017-12-26T10:24:37.053' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:24:37.053' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1803, 54, 1, N'MenuLink', N'MetaTitle', N'Khuyến mãi', CAST(N'2017-12-26T10:24:37.063' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:24:37.063' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1804, 54, 1, N'MenuLink', N'MetaKeywords', N'Khuyến mãi', CAST(N'2017-12-26T10:24:37.080' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:24:37.080' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1805, 54, 1, N'MenuLink', N'MetaDescription', N'Khuyến mãi', CAST(N'2017-12-26T10:24:37.083' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:24:37.083' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1806, 49, 1, N'MenuLink', N'MenuName', N'Giờ làm việc', CAST(N'2017-12-26T10:25:16.267' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:25:16.267' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1807, 49, 1, N'MenuLink', N'SeoUrl', N'gio-lam-viec', CAST(N'2017-12-26T10:25:16.293' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:25:16.293' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1808, 49, 1, N'MenuLink', N'MetaTitle', N'Giờ làm việc', CAST(N'2017-12-26T10:25:16.320' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:25:16.320' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1809, 49, 1, N'MenuLink', N'MetaKeywords', N'Giờ làm việc', CAST(N'2017-12-26T10:25:16.347' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:25:16.347' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1810, 49, 1, N'MenuLink', N'MetaDescription', N'Giờ làm việc', CAST(N'2017-12-26T10:25:16.370' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:25:16.370' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1811, 2124, 1, N'MenuLink', N'MenuName', N'Tuyển dụng', CAST(N'2017-12-27T14:04:37.373' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:37.373' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1812, 2124, 1, N'MenuLink', N'SeoUrl', N'tuyen-dung', CAST(N'2017-12-27T14:04:37.397' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:37.397' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1813, 2124, 1, N'MenuLink', N'MetaTitle', N'Tuyển dụng', CAST(N'2017-12-27T14:04:37.400' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:37.400' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1814, 2124, 1, N'MenuLink', N'MetaKeywords', N'Tuyển dụng', CAST(N'2017-12-27T14:04:37.410' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:37.410' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1815, 2124, 1, N'MenuLink', N'MetaDescription', N'Tuyển dụng', CAST(N'2017-12-27T14:04:37.417' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:37.417' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1816, 46, 1, N'Post', N'ShortDesc', N'<p><span style="font-family:arial,sans-serif,helvetica; font-size:12px">Dự &aacute;n tọa lạc ngay Số 258 Bến Chương Dương</span></p>

<p><span style="font-family:arial,sans-serif,helvetica; font-size:12px">, phường C&ocirc; Giang, quận 1 l&agrave; nơi Căn hộ BMC tọa lạc</span></p>

<p><span style="font-family:arial,sans-serif,helvetica; font-size:12px">,b&ecirc;n cạnh đại lộ Đ&ocirc;ng T&acirc;y tho&aacute;ng m&aacute;t v&agrave; l&agrave; khu quy hoạch</span></p>

<p><span style="font-family:arial,sans-serif,helvetica; font-size:12px">c&aacute;c dự &aacute;n trọng điểm của th&agrave;nh phố. Từ dự &aacute;n c&oacute; thể tản</span></p>

<p><span style="font-family:arial,sans-serif,helvetica; font-size:12px">bộ đến c&ocirc;ng vi&ecirc;n 23-9 v&agrave; chợ Bến Th&agrave;nh hoặc chỉ m</span></p>
', CAST(N'2017-12-27T14:25:57.740' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:20.160' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1817, 46, 1, N'Post', N'Description', N'<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>GIỚI THIỆU</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Diện t&iacute;ch đất quy hoạch: 1.824m2<br />
Quy m&ocirc; x&acirc;y dựng: 2 tầng hầm + 20 tầng cao</span></span>

<ul>
	<li><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Tầng trệt + lửng: trung t&acirc;m thương mại, ph&ograve;ng game, cửa h&agrave;ng thức ăn nhanh, caf&eacute;, khu giặt ủi, ph&ograve;ng Gym&hellip;</span></span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Tầng 2 &ndash; 3: Văn ph&ograve;ng cho thu&ecirc; với nhiều diện t&iacute;ch đa dạng</span></span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Tầng 4 &ndash; 19: Tầng căn hộ với nhiều diện t&iacute;ch đa dạng từ 80.5m2 -134m2</span></span></li>
	<li><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Tầng 20: c&oacute; 4 căn Penthhouse</span></span></li>
</ul>
<span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">​</span><span style="color:rgb(0, 0, 0)">Diện t&iacute;ch&nbsp;</span><a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-1-cmc-ben-chuong.htm" name="căn hộ bmc" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(0, 0, 205)">căn hộ BMC</span></a><span style="color:rgb(0, 0, 0)">: 80.5m2 &ndash; 81.8m2 &ndash; 90.4m2 &ndash; 96m2 &ndash; 99.2m2 &ndash; 110m2 &ndash; 134m2</span></span><br />
&nbsp;
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%; text-align: center;"><span style="font-family:tahoma,geneva,sans-serif"><img alt="" src="http://can-ho.vn/uploads/noidung/images/cmc%20ben%20chuong%20duong.jpg" style="border-spacing:0px; border:0px; height:486px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:1000px" /></span></div>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>VỊ TR&Iacute; DỰ &Aacute;N</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Số 258 Bến Chương Dương, phường C&ocirc; Giang, Dự &aacute;n quận 1 l&agrave; nơi Căn hộ BMC&nbsp;tọa lạc,b&ecirc;n cạnh đại lộ Đ&ocirc;ng T&acirc;y tho&aacute;ng m&aacute;t v&agrave; l&agrave; khu quy hoạch c&aacute;c dự &aacute;n trọng điểm của th&agrave;nh phố. Từ dự &aacute;n c&oacute; thể tản bộ đến c&ocirc;ng vi&ecirc;n 23-9 v&agrave; chợ Bến Th&agrave;nh hoặc chỉ mất &iacute;t ph&uacute;t để đến khu vực Chợ Lớn, Nam S&agrave;i G&ograve;n c&ugrave;ng c&aacute;c quận l&acirc;n cận.</span></span></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%; text-align: center;"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)"><img alt="" src="http://can-ho.vn/uploads/noidung/images/vi%20tri%20CMC.jpg" style="border-spacing:0px; border:0px; height:391px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:800px" /></span></span></div>

<ul>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Nằm trong khu vực vừa s&ocirc;i động vừa c&oacute; kh&ocirc;ng gian sống tho&aacute;ng đ&atilde;ng.</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Nhiều tiện &iacute;ch hiện hữu xung quanh.</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Đặc biệt,&nbsp;Cao ốc BMC c&oacute; mặt tiền theo hướng Đ&ocirc;ng Nam, c&oacute; d&ograve;ng s&ocirc;ng chảy qua n&ecirc;n x&eacute;t theo phong thủy l&agrave; vị tr&iacute; đắc địa.</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Cao ốc căn hộ BMC&nbsp;được nằm trong khu vực trung t&acirc;m thương mại, t&agrave;i ch&iacute;nh của Th&agrave;nh phố:</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Mất 10 ph&uacute;t để đến Chợ Lớn, t&ograve;a nh&agrave; cao ốc BITEXCO, Bến Bạch Đằng;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Chỉ mất 4 ph&uacute;t để đến nh&agrave; thờ Đức B&agrave;;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Cầu &Aacute;nh Sao Quận 7 chỉ 18 ph&uacute;t ( điểm đến v&ocirc; c&ugrave;ng hấp dẫn v&agrave; l&atilde;ng mạn);</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Thoải m&aacute;i giải tr&iacute; với s&acirc;n tập golf&nbsp; Him Lam 9 ph&uacute;t;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">H&agrave;ng loạt c&aacute;c tiện &iacute;ch xung quanh như trường học, bệnh viện, trung t&acirc;m thương mại hiện đại v&agrave; rất nhiều điểm vui chơi giải tr&iacute; hấp dẫn kh&aacute;c.</span></span></li>
</ul>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>TIỆN &Iacute;CH XUNG QUANH</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 205)"><strong>TIỆN &Iacute;CH NỘI KHU:</strong></span></span></div>

<ul>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Cao ốc BMC l&agrave; một block nh&agrave; cao 22 tầng với tổng diện t&iacute;ch s&agrave;n l&agrave; 18.499,2m2, trong khu&ocirc;n vi&ecirc;n đất rộng 1.824m2.&nbsp;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Cao ốc c&oacute; hai tầng hầm d&ugrave;ng l&agrave;m b&atilde;i đậu xe. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Tầng trệt c&oacute; diện t&iacute;ch 828m2 d&agrave;nh cho si&ecirc;u thị, tiếp t&acirc;n, sảnh chờ, khu vực y tế&hellip;&nbsp;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Tầng lửng diện t&iacute;ch 450m2 được bố tr&iacute; ph&ograve;ng chơi game, cửa h&agrave;ng thức ăn nhanh, trung t&acirc;m thương mại. ​​</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Lầu 1 c&oacute; c&agrave; ph&ecirc; Internet, sảnh sinh hoạt cộng đồng, khu giặt ủi, ph&ograve;ng tập thể dục thể thao&hellip;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Lầu 2 v&agrave; 3 l&agrave; 8 văn ph&ograve;ng cho thu&ecirc;, diện t&iacute;ch từ 80,3 - 98,8m2/văn ph&ograve;ng.</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Từ lầu 4 đến lầu 7, mỗi lầu l&agrave; 8 căn hộ, lầu 8-19 c&oacute; 7 căn hộ/lầu, lầu tr&ecirc;n c&ugrave;ng c&oacute; diện t&iacute;ch 676m2 được bố tr&iacute; 4 căn hộ penthouse.</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Cao ốc c&oacute; 9 loại căn hộ từ A1 - A9.</span></span></li>
</ul>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 205)"><strong>HẠ TẦNG KĨ THUẬT</strong>:</span></span></div>

<ul>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Trang thiết bị b&ecirc;n trong căn hộ l&agrave; c&aacute;c thương hiệu gạch Đồng T&acirc;m, cửa H&ograve;a B&igrave;nh, s&agrave;n gỗ Picenza, thiết bị vệ sinh Inax v&agrave; American Standard&hellip;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Căn hộ x&acirc;y dựng ho&agrave;n thiện, trang bị sẵn m&aacute;y lạnh, kệ bếp v&agrave; m&aacute;y h&uacute;t kh&oacute;i. &nbsp;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Nguồn điện, nước ch&iacute;nh v&agrave; dự ph&ograve;ng trang bị đầy đủ.&nbsp;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Hệ thống ph&ograve;ng ch&aacute;y chữa ch&aacute;y tự động, kết nối với trung t&acirc;m ph&ograve;ng ch&aacute;y chữa ch&aacute;y của th&agrave;nh phố.​</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">C&ocirc;ng t&aacute;c an ninh được ch&uacute; trọng, đảm bảo 24/24 giờ.&nbsp;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">Trong mỗi căn hộ đều c&oacute; hệ thống chu&ocirc;ng b&aacute;o k&egrave;m h&igrave;nh ảnh, điện thoại lắp đặt ở tất cả c&aacute;c ph&ograve;ng sinh hoạt&hellip;</span></span></li>
	<li style="text-align:justify"><span style="font-family:tahoma,geneva,sans-serif"><span style="color:rgb(0, 0, 0)">C&ocirc;ng t&aacute;c quản l&yacute; do c&aacute;c c&ocirc;ng ty nước ngo&agrave;i đảm tr&aacute;ch.&nbsp;</span></span></li>
</ul>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>THIẾT KẾ CĂN HỘ</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%; text-align: center;"><span style="font-family:tahoma,geneva,sans-serif"><img alt="" src="http://can-ho.vn/uploads/noidung/images/CMC.gif" style="border-spacing:0px; border:0px; height:222px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:450px" /></span></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%; text-align: center;"><span style="font-family:tahoma,geneva,sans-serif"><img alt="" src="http://can-ho.vn/uploads/noidung/images/CMC%202.jpg" style="border-spacing:0px; border:0px; height:242px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:400px" /></span></div>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>GI&Aacute; B&Aacute;N &amp; THANH TO&Aacute;N</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">
<div id="listProperty" style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif">Gi&aacute; b&aacute;n&nbsp;<a href="http://can-ho.vn/ban-can-ho-chung-cu-quan-1.htm" name="căn hộ quận 1" style="margin: 0px; padding: 0px; outline: 0px; text-decoration-line: none; color: rgb(59, 89, 152);"><span style="color:rgb(0, 0, 205)">căn hộ quận 1</span></a><span style="color:rgb(0, 0, 205)">&nbsp;</span>BMC&nbsp;hiện dao động&nbsp;từ 32 &ndash; 36 triệu/m2 tương đương từ 2,8 tỷ/căn.Gi&aacute; thu&ecirc; căn hộ từ 650 &ndash; 850 USD/th&aacute;ng<br />
cho nh&agrave; trống chưa c&oacute; nội thất v&agrave; từ mức 750 &ndash; 1.100 USD/căn cho căn hộ đ&atilde; được trang bị đầy đủ nội thất</span></div>
</div>
</div>
</div>
</div>
</div>

<div class="jumpto-block" style="margin: 0px; padding: 20px 0px; outline: 0px; border-top: 1px solid rgb(238, 238, 238); font-family: Arial, sans-serif, Helvetica; font-size: 12px;">
<h2>NH&Agrave; MẪU &amp; TIẾN ĐỘ</h2>

<div class="f-detail clearfix sty_prod_D" style="margin: 0px; padding: 0px 0px 20px; outline: 0px; text-align: justify; font-size: 14px; line-height: 22px; font-family: tahoma;">
<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%; text-align: center;"><span style="font-family:tahoma,geneva,sans-serif"><img alt="" src="http://can-ho.vn/uploads/noidung/images/can%20ho%20mau.jpg" style="border-spacing:0px; border:0px; height:572px; margin:0px; max-width:100%; outline:0px; padding:5px 0px; vertical-align:middle; width:800px" /></span></div>

<div style="margin: 0px; padding: 0px; outline: 0px; max-width: 100%;"><span style="font-family:tahoma,geneva,sans-serif"><span style="font-size:13px"><span style="font-size:14px">T&igrave;m hiểu th&ecirc;m về&nbsp;</span></span></span></div>
</div>
</div>
', CAST(N'2017-12-27T14:28:07.713' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:30:20.167' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1818, 7, 1, N'SlideShow', N'Title', N'Bán căn hộ chung cư tại Quận 4', CAST(N'2017-12-27T14:42:24.977' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:43:24.620' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1819, 7, 1, N'SlideShow', N'Description', N'<p><strong><span style="color:#00FF00"><span style="font-family:arial,sans-serif,helvetica; font-size:12px">346 Bến V&acirc;n Đồn, phường 1, Quận 4, Hồ Ch&iacute; Minh</span></span></strong></p>

<p><span style="color:#FF0000"><strong><span style="font-family:tahoma,geneva,sans-serif; font-size:14px">View trực diện S&ocirc;ng v&agrave; quận 1</span></strong></span></p>
', CAST(N'2017-12-27T14:43:24.653' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:43:24.653' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1820, 2, 1, N'ContactInformation', N'Title', N'Liên hệ', CAST(N'2017-12-27T15:03:54.027' AS DateTime), N'Administrator', CAST(N'2017-12-27T15:04:20.297' AS DateTime), N'Administrator')
INSERT [dbo].[LocalizedProperty] ([Id], [EntityId], [LanguageId], [LocaleKeyGroup], [LocaleKey], [LocaleValue], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1821, 2, 1, N'ContactInformation', N'Address', N'Nguyễn Văn Linh', CAST(N'2017-12-27T15:03:54.057' AS DateTime), N'Administrator', CAST(N'2017-12-27T15:04:20.303' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[LocalizedProperty] OFF
SET IDENTITY_INSERT [dbo].[MenuLink] ON 

INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (3, 6, N'c52e52e6-e13f-4830-9347-550ee86fbf7d', N'ca19fb4a-10a1-4515-bdb2-0c091b4107d5/c52e52e6-e13f-4830-9347-550ee86fbf7d', N'Nhà phố', 1, 0, 1, 2, NULL, 2, NULL, N'nha-pho', N'bds-cho-thue/nha-pho', N'images/iphone.png', N'Nhà phố', N'Nhà phố', N'Nhà phố', 0, 1, CAST(N'2017-02-20T05:44:41.357' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:03.527' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (5, NULL, N'5c845240-517d-4592-acd4-15773d9344a0', N'5c845240-517d-4592-acd4-15773d9344a0', N'BĐS Quốc tế', 1, 0, 1, 2, NULL, 4, NULL, N'bds-quoc-te', NULL, N'images/phu-kien.png', N'BĐS Quốc tế', N'BĐS Quốc tế', N'BĐS Quốc tế', 1, 1, CAST(N'2017-02-20T06:55:59.577' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:09.653' AS DateTime), N'Administrator', 0, N'images/phu-kien-icon.png', NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (6, NULL, N'ca19fb4a-10a1-4515-bdb2-0c091b4107d5', N'ca19fb4a-10a1-4515-bdb2-0c091b4107d5', N'BĐS cho thuê', 1, 0, 1, 2, NULL, 997, NULL, N'bds-cho-thue', NULL, N'images/sua-dien-thoai.png', N'BĐS cho thuê', N'BĐS cho thuê', N'BĐS cho thuê', 1, 1, CAST(N'2017-02-20T06:56:52.533' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:32:31.210' AS DateTime), N'Administrator', 1, N'images/sua-dien-thoai-icon.png', N'images/sua-dien-thoai-iconbar.png')
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (21, 37, N'ab6eefb0-c074-4799-8637-64a6aa57dd9f', N'8d49acae-84c0-44e4-8da5-96b550cbc90a/ab6eefb0-c074-4799-8637-64a6aa57dd9f', N'Tư vấn BDS', 1, 0, 2, 5, NULL, 35, NULL, N'tu-van-bds', N'chinh-sach/tu-van-bds', N'images/sua-iphone.png', N'Tư vấn BDS', N'Tư vấn BDS', N'Tư vấn BDS', 0, 0, CAST(N'2017-02-20T09:24:24.193' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:09:19.843' AS DateTime), N'Administrator', 0, N'images/sua-iphone-icon.png', N'images/sua-iphone-iconbar.png')
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (37, NULL, N'8d49acae-84c0-44e4-8da5-96b550cbc90a', N'8d49acae-84c0-44e4-8da5-96b550cbc90a', N'Chính sách', 1, 0, 2, 5, NULL, 65, NULL, N'chinh-sach', NULL, N'images/thong-tin-chung.png', N'Chính sách', N'Chính sách', N'Chính sách', 0, 1, CAST(N'2017-02-20T09:42:32.303' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:24.517' AS DateTime), N'Administrator', 1, N'images/thong-tin-chung-icon.png', N'images/thong-tin-chung-iconbar.png')
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (41, 37, N'4f5b93c2-4ab0-4bd5-9c61-16a9c9fc5d5d', N'8d49acae-84c0-44e4-8da5-96b550cbc90a/4f5b93c2-4ab0-4bd5-9c61-16a9c9fc5d5d', N'Chính sách bảo hành', 1, 0, 2, 5, NULL, 14, NULL, N'chinh-sach-bao-hanh', N'chinh-sach/chinh-sach-bao-hanh', NULL, N'Chính sách bảo hành', N'Chính sách bảo hành', N'Chính sách bảo hành', 0, 1, CAST(N'2017-02-20T09:49:04.943' AS DateTime), N'Administrator', CAST(N'2017-05-05T10:42:32.297' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (43, 37, N'55aabaf4-b1bc-4269-a2fe-6b8981abe207', N'8d49acae-84c0-44e4-8da5-96b550cbc90a/55aabaf4-b1bc-4269-a2fe-6b8981abe207', N'Chính sách đổi trả', 1, 0, 2, 5, NULL, 25, NULL, N'chinh-sach-doi-tra', N'chinh-sach/chinh-sach-doi-tra', NULL, N'Chính sách đổi trả', N'Chính sách đổi trả', N'Chính sách đổi trả', 0, 1, CAST(N'2017-02-20T09:50:13.287' AS DateTime), N'Administrator', CAST(N'2017-12-26T03:32:45.057' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (45, NULL, N'5ff97ccf-29d4-47d2-82d9-9d217119a68d', N'5ff97ccf-29d4-47d2-82d9-9d217119a68d', N'Giới thiệu', 1, 0, 1, 6, NULL, 998, NULL, N'gioi-thieu', N'gioi-thieu/gioi-thieu', N'images/gioi-thieu.png', N'Giới thiệu', N'Giới thiệu', N'Giới thiệu', 0, 1, CAST(N'2017-02-20T09:52:17.147' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:19:27.350' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (49, NULL, N'3fe8605a-3044-42ca-8755-73f565403ef4', N'3fe8605a-3044-42ca-8755-73f565403ef4', N'Giờ làm việc', 1, 0, 4, 5, NULL, 32, NULL, N'gio-lam-viec', NULL, NULL, N'Giờ làm việc', N'Giờ làm việc', N'Giờ làm việc', 0, 1, CAST(N'2017-02-20T10:05:21.600' AS DateTime), N'Administrator', CAST(N'2017-12-26T10:25:16.227' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (110, NULL, N'34c7a8cc-5b53-4c8c-ab6c-22f2e2f5f57d', N'34c7a8cc-5b53-4c8c-ab6c-22f2e2f5f57d', N'Tin tức', 1, 0, 1, 1, NULL, 3, NULL, N'tin-tuc', NULL, N'images/truyen-thong.jpg', N'Tin tức', N'Tin tức', N'Tin tức', 0, 1, CAST(N'2017-04-18T11:32:54.657' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:24:38.837' AS DateTime), N'Administrator', 1, N'images/tin-tuc-icon.png', N'images/tin-tuc-iconbar.png')
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (1111, 1110, N'84910c68-7cd6-49f6-b13f-ac223447de1c', N'f9b39a11-c9b9-4cba-a58e-54713a9f53c2/84910c68-7cd6-49f6-b13f-ac223447de1c', N'Định giá sản phẩm', 1, 0, 2, 1, NULL, 1, NULL, N'dinh-gia-san-pham', N'ho-tro/dinh-gia-san-pham', NULL, N'Định giá sản phẩm', N'Định giá sản phẩm', N'Định giá sản phẩm', 0, 1, CAST(N'2017-05-05T11:17:53.790' AS DateTime), N'Administrator', CAST(N'2017-05-05T11:17:53.790' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (1112, 1110, N'53c656d8-91ee-4f52-baf6-13f63471dd01', N'f9b39a11-c9b9-4cba-a58e-54713a9f53c2/53c656d8-91ee-4f52-baf6-13f63471dd01', N'Định giá trình trạng', 1, 0, 2, 1, NULL, 2, NULL, N'dinh-gia-trinh-trang', N'ho-tro/dinh-gia-trinh-trang', NULL, N'Định giá trình trạng', N'Định giá trình trạng', N'Định giá trình trạng', 0, 1, CAST(N'2017-05-05T11:18:18.407' AS DateTime), N'Administrator', CAST(N'2017-05-05T11:18:49.913' AS DateTime), N'Administrator', 0, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (1115, 110, N'c806af4b-3f03-4f97-9f45-3a1e82fdb89d', N'34c7a8cc-5b53-4c8c-ab6c-22f2e2f5f57d/c806af4b-3f03-4f97-9f45-3a1e82fdb89d', N'Phân tích thị trường', 1, 0, 1, 1, NULL, 1, NULL, N'phan-tich-thi-truong', N'tin-tuc/phan-tich-thi-truong', NULL, N'Phân tích thị trường', N'Phân tích thị trường', N'Phân tích thị trường', 0, 1, CAST(N'2017-06-17T10:30:41.413' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:47.643' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (2115, 110, N'1454749a-6eef-42da-9787-57de166f8099', N'34c7a8cc-5b53-4c8c-ab6c-22f2e2f5f57d/1454749a-6eef-42da-9787-57de166f8099', N'Danh sách công nghiệp', 1, 0, 1, 1, NULL, 1, N'1', N'danh-sach-cong-nghiep', N'tin-tuc/danh-sach-cong-nghiep', NULL, N'Danh sách công nghiệp', N'Danh sách công nghiệp', N'Danh sách công nghiệp', 1, 1, CAST(N'2017-06-17T14:08:38.077' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:03.270' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (2120, NULL, N'f9dd567c-5916-470f-a1ba-09dc3347c81b', N'f9dd567c-5916-470f-a1ba-09dc3347c81b', N'Liên hệ', 1, 0, 1, 3, NULL, 1, NULL, N'lien-he', NULL, NULL, N'Liên hệ', N'Liên hệ', N'Liên hệ', 0, 1, CAST(N'2017-06-18T12:06:46.767' AS DateTime), N'Administrator', CAST(N'2017-07-25T16:48:08.273' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (2121, 5, N'8bf654a9-edcd-47ac-8d86-3d95fb58752c', N'5c845240-517d-4592-acd4-15773d9344a0/8bf654a9-edcd-47ac-8d86-3d95fb58752c', N'Resort', 1, 0, 1, 2, NULL, 1, NULL, N'resort', N'quy-hoach/resort', NULL, N'Resort', N'Resort', N'Resort', 0, 1, CAST(N'2017-06-18T14:44:47.297' AS DateTime), N'Administrator', CAST(N'2017-10-09T16:44:56.680' AS DateTime), N'Administrator', 0, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (2122, 5, N'6c64d3e8-dd86-4dcc-a4ea-2b340e86051c', N'5c845240-517d-4592-acd4-15773d9344a0/6c64d3e8-dd86-4dcc-a4ea-2b340e86051c', N'Khách sạn', 1, 0, 1, 1, NULL, 1, NULL, N'khach-san', N'bds-quoc-te/khach-san', NULL, N'Khách sạn', N'Khách sạn', N'Khách sạn', 1, 0, CAST(N'2017-06-18T14:52:32.527' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:59:55.453' AS DateTime), N'Administrator', 0, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (2123, NULL, N'02daa37c-7c68-46e0-ba22-929126ba4b48', N'02daa37c-7c68-46e0-ba22-929126ba4b48', N'Trang chủ', 1, 0, 1, 2, NULL, 999, N'/', N'trang-chu', N'trang-chu/trang-chu', NULL, N'Trang chủ', N'Trang chủ', N'Trang chủ', 0, 1, CAST(N'2017-06-18T15:05:37.040' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:03:13.527' AS DateTime), N'Administrator', 0, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (2124, NULL, N'e5ef43e2-4004-4390-b3bc-12e3f1937e97', N'e5ef43e2-4004-4390-b3bc-12e3f1937e97', N'Tuyển dụng', 0, 0, 2, 6, NULL, 2, NULL, N'tuyen-dung', NULL, NULL, N'Tuyển dụng', N'Tuyển dụng', N'Tuyển dụng', 0, 1, CAST(N'2017-06-18T15:10:13.177' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:04:37.337' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (2126, 6, N'7f1600ec-deec-426c-a926-95178701ae42', N'ca19fb4a-10a1-4515-bdb2-0c091b4107d5/7f1600ec-deec-426c-a926-95178701ae42', N'Căn hộ', 1, 0, 1, 2, NULL, 0, NULL, N'can-ho', N'bds-cho-thue/can-ho', NULL, N'Căn hộ', N'Căn hộ', N'Căn hộ', 0, 1, CAST(N'2017-10-14T12:23:17.060' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:12.840' AS DateTime), N'Administrator', 0, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (2127, 6, N'9e77cd8f-b733-4fbb-9f7c-27384b46fd4b', N'ca19fb4a-10a1-4515-bdb2-0c091b4107d5/9e77cd8f-b733-4fbb-9f7c-27384b46fd4b', N'Dự án khác', 1, 0, 1, 2, NULL, 0, NULL, N'du-an-khac', N'cong-trinh/du-an-khac', NULL, N'Dự án khác', N'Dự án khác', N'Dự án khác', 0, 1, CAST(N'2017-10-14T12:24:01.997' AS DateTime), N'Administrator', CAST(N'2017-10-14T12:30:29.187' AS DateTime), N'Administrator', 1, NULL, NULL)
INSERT [dbo].[MenuLink] ([Id], [ParentId], [CurrentVirtualId], [VirtualId], [MenuName], [Status], [TypeMenu], [Position], [TemplateType], [Language], [OrderDisplay], [SourceLink], [SeoUrl], [VirtualSeoUrl], [ImageUrl], [MetaKeywords], [MetaTitle], [MetaDescription], [DisplayOnHomePage], [DisplayOnMenu], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DisplayOnSearch], [Icon1], [Icon2]) VALUES (2129, 6, N'a4b261d6-2be8-49c5-889f-5f7b8dadf2d9', N'ca19fb4a-10a1-4515-bdb2-0c091b4107d5/a4b261d6-2be8-49c5-889f-5f7b8dadf2d9', N'Văn phòng', 1, 0, 1, 2, NULL, 4, NULL, N'van-phong', N'bds-cho-thue/van-phong', NULL, N'Văn phòng', N'Văn phòng', N'Văn phòng', 0, 1, CAST(N'2017-10-14T12:31:05.560' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:58:38.397' AS DateTime), N'Administrator', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[MenuLink] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [Video], [VideoLink], [OtherLink], [ShortDesc], [Description], [Status], [OrderDisplay], [SpecialDisplay], [HomeDisplay], [ViewCount], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [VirtualCatUrl], [ImageBigSize], [ImageMediumSize], [ImageSmallSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, 2115, N'34c7a8cc-5b53-4c8c-ab6c-22f2e2f5f57d/1454749a-6eef-42da-9787-57de166f8099', NULL, N'Hành trình xuyên Việt của dầu ăn cao ...', 0, NULL, NULL, NULL, NULL, 1, 5, 1, 1, 0, N'Hành trình xuyên Việt của dầu ăn cao ...', N'Hành trình xuyên Việt của dầu ăn cao ...', N'Hành trình xuyên Việt của dầu ăn cao ...', N'hanh-trinh-xuyen-viet-cua-dau-an-cao', N'tin-tuc/khong-gian-xanh', N'images/news/25122017/hanh-trinh-xuyen-viet-cua-dau-an-cao.jpg', N'images/news/25122017/hanh-trinh-xuyen-viet-cua-dau-an-cao-400d4ebb-62aa-4d39-85be-b247e06d22d3.jpg', N'images/news/25122017/hanh-trinh-xuyen-viet-cua-dau-an-cao-6d7e6590-773f-4604-b5d2-ca2e2c68f85d.jpg', CAST(N'2017-04-04T09:41:18.013' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:19:53.797' AS DateTime), N'Administrator')
INSERT [dbo].[News] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [Video], [VideoLink], [OtherLink], [ShortDesc], [Description], [Status], [OrderDisplay], [SpecialDisplay], [HomeDisplay], [ViewCount], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [VirtualCatUrl], [ImageBigSize], [ImageMediumSize], [ImageSmallSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, 2122, N'5c845240-517d-4592-acd4-15773d9344a0/6c64d3e8-dd86-4dcc-a4ea-2b340e86051c', NULL, N'Những câu chuyện thú vị từ gian bếp của người nổi tiếng Việt.', 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, N'Những câu chuyện thú vị từ gian bếp của người nổi tiếng Việt.', N'Những câu chuyện thú vị từ gian bếp của người nổi tiếng Việt.', N'Những câu chuyện thú vị từ gian bếp của người nổi tiếng Việt.', N'nhung-cau-chuyen-thu-vi-tu-gian-bep-cua-nguoi-noi-tieng-viet', N'ao-so-mi/quy-hoach-do-thi', N'images/news/25122017/nhung-cau-chuyen-thu-vi-tu-gian-bep-cua-nguoi-noi-tieng-viet.jpg', N'images/news/25122017/nhung-cau-chuyen-thu-vi-tu-gian-bep-cua-nguoi-noi-tieng-viet-1d9a5274-b8a2-4759-b4e5-17c18d5a9816.jpg', N'images/news/25122017/nhung-cau-chuyen-thu-vi-tu-gian-bep-cua-nguoi-noi-tieng-viet-e35f8013-4530-475d-8781-813c0e95d84f.jpg', CAST(N'2017-06-18T14:41:08.403' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:46:58.400' AS DateTime), N'Administrator')
INSERT [dbo].[News] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [Video], [VideoLink], [OtherLink], [ShortDesc], [Description], [Status], [OrderDisplay], [SpecialDisplay], [HomeDisplay], [ViewCount], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [VirtualCatUrl], [ImageBigSize], [ImageMediumSize], [ImageSmallSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, 2115, N'34c7a8cc-5b53-4c8c-ab6c-22f2e2f5f57d/1454749a-6eef-42da-9787-57de166f8099', NULL, N'Nữ nhà văn Gào: "Giữ chồng bằng món chiên giòn thơm phức"', 0, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, N'Nữ nhà văn Gào: "Giữ chồng bằng món chiên giòn thơm phức"', N'Nữ nhà văn Gào: "Giữ chồng bằng món chiên giòn thơm phức"', N'Nữ nhà văn Gào: "Giữ chồng bằng món chiên giòn thơm phức"', N'nu-nha-van-gao-giu-chong-bang-mon-chien-gion-thom-phuc', N'tin-tuc/khong-gian-xanh', N'images/news/24122017/nu-nha-van-gao-giu-chong-bang-mon-chien-gion-thom-phuc.jpg', N'images/news/24122017/nu-nha-van-gao-giu-chong-bang-mon-chien-gion-thom-phuc-ae03d622-010a-4d03-9ef2-77f562d58c07.jpg', N'images/news/24122017/nu-nha-van-gao-giu-chong-bang-mon-chien-gion-thom-phuc-3ed8c8e8-cb08-4344-82cc-b97c34221aad.jpg', CAST(N'2017-06-19T13:36:27.530' AS DateTime), N'Administrator', CAST(N'2017-12-25T15:41:40.883' AS DateTime), N'Administrator')
INSERT [dbo].[News] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [Video], [VideoLink], [OtherLink], [ShortDesc], [Description], [Status], [OrderDisplay], [SpecialDisplay], [HomeDisplay], [ViewCount], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [VirtualCatUrl], [ImageBigSize], [ImageMediumSize], [ImageSmallSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, 2115, N'34c7a8cc-5b53-4c8c-ab6c-22f2e2f5f57d/1454749a-6eef-42da-9787-57de166f8099', NULL, N'CHẤT BÉO CÓ THỰC SỰ LÀ KẺ THÙ CỦA CƠ THỂ?', 0, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, N'CHẤT BÉO CÓ THỰC SỰ LÀ KẺ THÙ CỦA CƠ THỂ?', N'CHẤT BÉO CÓ THỰC SỰ LÀ KẺ THÙ CỦA CƠ THỂ?', N'CHẤT BÉO CÓ THỰC SỰ LÀ KẺ THÙ CỦA CƠ THỂ?', N'chat-beo-co-thuc-su-la-ke-thu-cua-co-the', N'tin-tuc-1/khong-gian-xanh', N'images/news/24122017/chat-beo-co-thuc-su-la-ke-thu-cua-co-the.jpg', N'images/news/24122017/chat-beo-co-thuc-su-la-ke-thu-cua-co-the-de8a5c92-4964-4b82-9423-0fb6af438a5d.jpg', N'images/news/24122017/chat-beo-co-thuc-su-la-ke-thu-cua-co-the-f487e50d-15c6-4d86-a9ab-0940daecf59b.jpg', CAST(N'2017-07-26T09:35:23.860' AS DateTime), N'Administrator', CAST(N'2017-12-24T16:00:16.700' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, NULL, N'e4b0c4aa-c794-4537-a2ef-96e5b573c5fb', 0, 2010, 1003, NULL, 10, 0, 10, NULL, NULL, CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-11T06:24:32.257' AS DateTime), NULL, NULL, 0, CAST(N'2017-11-11T06:24:32.257' AS DateTime), CAST(N'2017-11-11T06:24:32.257' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-11T06:24:41.583' AS DateTime), N'Administrator', CAST(N'2017-11-11T06:24:41.583' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, NULL, N'e4b0c4aa-c794-4537-a2ef-96e5b573c5fb', 0, 2010, 1003, NULL, 10, 0, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-11T07:40:16.357' AS DateTime), NULL, NULL, 0, CAST(N'2017-11-11T07:40:16.357' AS DateTime), CAST(N'2017-11-11T07:40:16.357' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-11T07:40:23.880' AS DateTime), N'Administrator', CAST(N'2017-11-11T07:40:23.880' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, NULL, N'e4b0c4aa-c794-4537-a2ef-96e5b573c5fb', 0, 2010, 1003, NULL, 10, 0, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-11T08:40:08.053' AS DateTime), NULL, NULL, 0, CAST(N'2017-11-11T08:40:08.053' AS DateTime), CAST(N'2017-11-11T08:40:08.053' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-11T08:40:11.923' AS DateTime), N'Administrator', CAST(N'2017-11-11T08:40:11.923' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, NULL, N'e4b0c4aa-c794-4537-a2ef-96e5b573c5fb', 0, 2010, 1003, NULL, 10, 0, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-11T08:46:14.850' AS DateTime), NULL, NULL, 0, CAST(N'2017-11-11T08:46:14.850' AS DateTime), CAST(N'2017-11-11T08:46:14.850' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-11T08:46:16.750' AS DateTime), N'Administrator', CAST(N'2017-11-11T08:46:16.750' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, NULL, N'e4b0c4aa-c794-4537-a2ef-96e5b573c5fb', 0, 2010, 1003, NULL, 10, 0, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(4.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-11T09:23:13.663' AS DateTime), NULL, NULL, 0, CAST(N'2017-11-11T09:23:13.663' AS DateTime), CAST(N'2017-11-11T09:23:13.663' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-11T09:23:16.677' AS DateTime), N'Administrator', CAST(N'2017-11-11T09:23:16.677' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, NULL, N'e4b0c4aa-c794-4537-a2ef-96e5b573c5fb', 0, 2010, 1003, NULL, 10, 0, 10, N'Chuyển khoản qua ngân hàng', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(3.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-11T09:27:55.110' AS DateTime), NULL, NULL, 0, CAST(N'2017-11-11T09:27:55.110' AS DateTime), CAST(N'2017-11-11T09:27:55.110' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-11T09:27:55.120' AS DateTime), N'Administrator', CAST(N'2017-11-11T09:27:55.120' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, NULL, N'e4b0c4aa-c794-4537-a2ef-96e5b573c5fb', 0, 2010, 1004, NULL, 10, 0, 10, N'Chuyển khoản qua ngân hàng', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(9.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-11T09:30:56.863' AS DateTime), NULL, NULL, 0, CAST(N'2017-11-11T09:30:56.863' AS DateTime), CAST(N'2017-11-11T09:30:56.863' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-11T09:30:56.873' AS DateTime), N'Administrator', CAST(N'2017-11-11T09:30:56.873' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, NULL, N'74396f86-1207-4662-a943-f0727cffafd5', 0, 1011, 1005, NULL, 10, 10, 10, N'Chuyển khoản qua ngân hàng', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(3.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-12T15:48:08.457' AS DateTime), N'By Ground', NULL, 0, CAST(N'2017-11-12T15:48:08.457' AS DateTime), CAST(N'2017-11-12T15:48:08.457' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-12T15:48:08.513' AS DateTime), N'Administrator', CAST(N'2017-11-12T15:48:08.513' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (12, NULL, N'1bc6c6b1-8f27-4d72-8ddb-d5e721925673', 0, 1011, 1005, NULL, 10, 10, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-13T16:44:48.193' AS DateTime), N'In-Store Pickup', NULL, 0, CAST(N'2017-11-13T16:44:48.193' AS DateTime), CAST(N'2017-11-13T16:44:48.193' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-13T16:44:48.247' AS DateTime), N'Administrator', CAST(N'2017-11-13T16:44:48.247' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (13, NULL, N'8d9ead32-66c1-484f-84b8-1f703d4e7dc5', 0, 1011, 1005, NULL, 10, 10, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-13T17:00:50.360' AS DateTime), N'In-Store Pickup', NULL, 0, CAST(N'2017-11-13T17:00:50.360' AS DateTime), CAST(N'2017-11-13T17:00:50.360' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-13T17:00:50.647' AS DateTime), N'Administrator', CAST(N'2017-11-13T17:00:50.647' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (14, NULL, N'7a434a79-0384-42cb-8dac-99b3c65edd68', 0, 1011, 1005, NULL, 10, 10, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(6.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-13T17:07:21.907' AS DateTime), N'In-Store Pickup', NULL, 0, CAST(N'2017-11-13T17:07:21.907' AS DateTime), CAST(N'2017-11-13T17:07:21.907' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-13T17:07:22.023' AS DateTime), N'Administrator', CAST(N'2017-11-13T17:08:10.713' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (15, NULL, N'a7832c1b-e9e4-4f19-90d1-fcb2f988d250', 0, 1011, 1005, NULL, 10, 10, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(3.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-13T17:26:36.783' AS DateTime), N'In-Store Pickup', NULL, 0, CAST(N'2017-11-13T17:26:36.783' AS DateTime), CAST(N'2017-11-13T17:26:36.783' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-13T17:26:36.867' AS DateTime), N'Administrator', CAST(N'2017-11-13T17:26:42.280' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (16, NULL, N'15fc1f15-72ad-41ed-a907-49e148c0926f', 0, 1011, 1005, NULL, 10, 10, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(7.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-13T17:28:33.477' AS DateTime), N'In-Store Pickup', NULL, 0, CAST(N'2017-11-13T17:28:33.477' AS DateTime), CAST(N'2017-11-13T17:28:33.477' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-13T17:28:33.487' AS DateTime), N'Administrator', CAST(N'2017-11-13T17:28:41.213' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (17, NULL, N'1a40bf38-fd19-4dfb-b620-e6c6d06b80d6', 0, 1011, 1005, NULL, 10, 10, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(3.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-15T14:28:13.033' AS DateTime), N'In-Store Pickup', NULL, 0, CAST(N'2017-11-15T14:28:13.033' AS DateTime), CAST(N'2017-11-15T14:28:13.033' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-15T14:28:13.120' AS DateTime), N'Administrator', CAST(N'2017-11-15T14:29:05.063' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (18, NULL, N'c4262b9b-9439-4dc1-958d-1cec3e3fa2ef', 0, 1011, 1005, NULL, 10, 10, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(9.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-15T14:54:38.573' AS DateTime), N'In-Store Pickup', NULL, 0, CAST(N'2017-11-15T14:54:38.573' AS DateTime), CAST(N'2017-11-15T14:54:38.573' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-15T14:54:42.750' AS DateTime), N'Administrator', CAST(N'2017-11-15T14:54:44.327' AS DateTime), N'Administrator')
INSERT [dbo].[Order] ([Id], [OrderNumber], [OrderGuid], [StoreId], [CustomerId], [BillingAddressId], [ShippingAddressId], [OrderStatusId], [ShippingStatusId], [PaymentStatusId], [PaymentMethodSystemName], [CustomerCurrencyCode], [CurrencyRate], [CustomerTaxDisplayTypeId], [VatNumber], [OrderSubtotalInclTax], [OrderSubtotalExclTax], [OrderSubTotalDiscountInclTax], [OrderSubTotalDiscountExclTax], [OrderShippingInclTax], [OrderShippingExclTax], [PaymentMethodAdditionalFeeInclTax], [PaymentMethodAdditionalFeeExclTax], [TaxRates], [OrderTax], [OrderDiscount], [OrderTotal], [RefundedAmount], [RewardPointsWereAdded], [CheckoutAttributeDescription], [CheckoutAttributesXml], [CustomerLanguageId], [AffiliateId], [CustomerIp], [AllowStoringCreditCardNumber], [CardType], [CardName], [CardNumber], [MaskedCreditCardNumber], [CardCvv2], [CardExpirationMonth], [CardExpirationYear], [AllowStoringDirectDebit], [DirectDebitAccountHolder], [DirectDebitAccountNumber], [DirectDebitBankCode], [DirectDebitBankName], [DirectDebitBIC], [DirectDebitCountry], [DirectDebitIban], [AuthorizationTransactionId], [AuthorizationTransactionCode], [AuthorizationTransactionResult], [CaptureTransactionId], [CaptureTransactionResult], [SubscriptionTransactionId], [PurchaseOrderNumber], [PaidDateUtc], [ShippingMethod], [ShippingRateComputationMethodSystemName], [Deleted], [CreatedOnUtc], [UpdatedOnUtc], [RewardPointsRemaining], [CustomerOrderComment], [OrderShippingTaxRate], [PaymentMethodAdditionalFeeTaxRate], [HasNewPaymentNotification], [AcceptThirdPartyEmailHandOver], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (19, NULL, N'a9e86174-756b-4f0a-a813-f6dade9229f6', 0, 1011, 1005, NULL, 10, 10, 10, N'Thanh toán khi giao hàng (COD)', N'VNĐ', CAST(0.00000000 AS Decimal(18, 8)), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(70000.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, NULL, NULL, 1, 0, N'172.0.0.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-20T16:44:51.153' AS DateTime), N'In-Store Pickup', NULL, 0, CAST(N'2017-11-20T16:44:51.153' AS DateTime), CAST(N'2017-11-20T16:44:51.153' AS DateTime), 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 0, CAST(N'2017-11-20T16:44:51.193' AS DateTime), N'Administrator', CAST(N'2017-11-20T16:44:51.290' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON 

INSERT [dbo].[OrderItem] ([Id], [OrderItemGuid], [OrderId], [PostId], [Quantity], [UnitPriceInclTax], [UnitPriceExclTax], [PriceInclTax], [PriceExclTax], [DiscountAmountInclTax], [DiscountAmountExclTax], [AttributeDescription], [AttributesXml], [DownloadCount], [IsDownloadActivated], [LicenseDownloadId], [ItemWeight], [BundleData], [PostCost], [TaxRate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'432ecdec-07a1-4b46-9d2b-54906e411d32', 15, 42, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), NULL, NULL, 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)), NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(N'2017-11-13T17:26:42.280' AS DateTime), N'Administrator', CAST(N'2017-11-13T17:26:42.280' AS DateTime), N'Administrator')
INSERT [dbo].[OrderItem] ([Id], [OrderItemGuid], [OrderId], [PostId], [Quantity], [UnitPriceInclTax], [UnitPriceExclTax], [PriceInclTax], [PriceExclTax], [DiscountAmountInclTax], [DiscountAmountExclTax], [AttributeDescription], [AttributesXml], [DownloadCount], [IsDownloadActivated], [LicenseDownloadId], [ItemWeight], [BundleData], [PostCost], [TaxRate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'7e3775a2-aaac-4073-9d73-dbc58382987a', 16, 51, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), NULL, NULL, 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)), NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(N'2017-11-13T17:28:38.720' AS DateTime), N'Administrator', CAST(N'2017-11-13T17:28:38.720' AS DateTime), N'Administrator')
INSERT [dbo].[OrderItem] ([Id], [OrderItemGuid], [OrderId], [PostId], [Quantity], [UnitPriceInclTax], [UnitPriceExclTax], [PriceInclTax], [PriceExclTax], [DiscountAmountInclTax], [DiscountAmountExclTax], [AttributeDescription], [AttributesXml], [DownloadCount], [IsDownloadActivated], [LicenseDownloadId], [ItemWeight], [BundleData], [PostCost], [TaxRate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'8bc63cb1-9bf1-4577-9cfe-e6d98de5bfc9', 16, 42, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), NULL, NULL, 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)), NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(N'2017-11-13T17:28:41.213' AS DateTime), N'Administrator', CAST(N'2017-11-13T17:28:41.213' AS DateTime), N'Administrator')
INSERT [dbo].[OrderItem] ([Id], [OrderItemGuid], [OrderId], [PostId], [Quantity], [UnitPriceInclTax], [UnitPriceExclTax], [PriceInclTax], [PriceExclTax], [DiscountAmountInclTax], [DiscountAmountExclTax], [AttributeDescription], [AttributesXml], [DownloadCount], [IsDownloadActivated], [LicenseDownloadId], [ItemWeight], [BundleData], [PostCost], [TaxRate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'a82ce35b-f972-4ac1-8b71-d214791f3b99', 17, 42, 1, CAST(3.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), NULL, NULL, 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)), NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(N'2017-11-15T14:29:05.063' AS DateTime), N'Administrator', CAST(N'2017-11-15T14:29:05.063' AS DateTime), N'Administrator')
INSERT [dbo].[OrderItem] ([Id], [OrderItemGuid], [OrderId], [PostId], [Quantity], [UnitPriceInclTax], [UnitPriceExclTax], [PriceInclTax], [PriceExclTax], [DiscountAmountInclTax], [DiscountAmountExclTax], [AttributeDescription], [AttributesXml], [DownloadCount], [IsDownloadActivated], [LicenseDownloadId], [ItemWeight], [BundleData], [PostCost], [TaxRate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'82cc4ac4-9a1d-404c-a014-e0fa90100c48', 18, 42, 3, CAST(3.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(9.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), NULL, NULL, 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)), NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(N'2017-11-15T14:54:44.327' AS DateTime), N'Administrator', CAST(N'2017-11-15T14:54:44.327' AS DateTime), N'Administrator')
INSERT [dbo].[OrderItem] ([Id], [OrderItemGuid], [OrderId], [PostId], [Quantity], [UnitPriceInclTax], [UnitPriceExclTax], [PriceInclTax], [PriceExclTax], [DiscountAmountInclTax], [DiscountAmountExclTax], [AttributeDescription], [AttributesXml], [DownloadCount], [IsDownloadActivated], [LicenseDownloadId], [ItemWeight], [BundleData], [PostCost], [TaxRate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'5ac12f32-c419-42b0-8d90-fcbdfd5adb9b', 19, 42, 1, CAST(70000.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(70000.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), NULL, NULL, 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)), NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(N'2017-11-20T16:44:51.290' AS DateTime), N'Administrator', CAST(N'2017-11-20T16:44:51.290' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[PageBanner] ON 

INSERT [dbo].[PageBanner] ([Id], [Language], [PageName], [Status], [OrderDisplay], [Position], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, NULL, N'Đầu trang', 1, 1, 1, CAST(N'2017-02-20T06:52:32.000' AS DateTime), N'Administrator', CAST(N'2017-02-20T06:52:32.000' AS DateTime), N'Administrator')
INSERT [dbo].[PageBanner] ([Id], [Language], [PageName], [Status], [OrderDisplay], [Position], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, NULL, N'Giữa trang', 1, 2, 6, CAST(N'2017-02-20T06:52:40.987' AS DateTime), N'Administrator', CAST(N'2017-02-20T06:52:40.987' AS DateTime), N'Administrator')
INSERT [dbo].[PageBanner] ([Id], [Language], [PageName], [Status], [OrderDisplay], [Position], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, NULL, N'Cuối trang', 1, 4, 9, CAST(N'2017-02-20T06:52:54.053' AS DateTime), N'Administrator', CAST(N'2017-06-28T16:28:16.853' AS DateTime), N'Administrator')
INSERT [dbo].[PageBanner] ([Id], [Language], [PageName], [Status], [OrderDisplay], [Position], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, NULL, N'Cạnh tranh (Side Bar)', 1, 1, 5, CAST(N'2017-03-15T20:40:21.883' AS DateTime), N'Administrator', CAST(N'2017-03-15T20:40:21.883' AS DateTime), N'Administrator')
INSERT [dbo].[PageBanner] ([Id], [Language], [PageName], [Status], [OrderDisplay], [Position], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, NULL, N'Quy trình', 1, 5, 6, CAST(N'2017-03-23T18:07:57.647' AS DateTime), N'Administrator', CAST(N'2017-06-28T16:28:58.740' AS DateTime), N'Administrator')
INSERT [dbo].[PageBanner] ([Id], [Language], [PageName], [Status], [OrderDisplay], [Position], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, NULL, N'Home product', 1, 1, 5, CAST(N'2017-06-05T17:35:36.347' AS DateTime), N'Administrator', CAST(N'2017-06-05T17:37:04.583' AS DateTime), N'Administrator')
INSERT [dbo].[PageBanner] ([Id], [Language], [PageName], [Status], [OrderDisplay], [Position], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, NULL, N'Slide dau trang', 1, 1, 5, CAST(N'2017-10-12T14:27:14.703' AS DateTime), N'Administrator', CAST(N'2017-12-14T15:32:39.080' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[PageBanner] OFF
SET IDENTITY_INSERT [dbo].[PaymentMethod] ON 

INSERT [dbo].[PaymentMethod] ([Id], [PaymentMethodSystemName], [FullDescription], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Thanh toán khi giao hàng (COD)', NULL, CAST(N'2017-01-01T00:00:00.000' AS DateTime), NULL, CAST(N'2017-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[PaymentMethod] ([Id], [PaymentMethodSystemName], [FullDescription], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Chuyển khoản qua ngân hàng', NULL, CAST(N'2017-01-01T00:00:00.000' AS DateTime), NULL, CAST(N'2017-01-01T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[PaymentMethod] OFF
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [ShortDesc], [Description], [Status], [OrderDisplay], [ViewCount], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [Price], [Discount], [ShowOnHomePage], [ProductHot], [OutOfStock], [ProductNew], [VirtualCatUrl], [ImageBigSize], [ImageMediumSize], [ImageSmallSize], [StartDate], [PostType], [ProductCode], [EndDate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [TechInfo], [OldOrNew]) VALUES (40, 6, N'ca19fb4a-10a1-4515-bdb2-0c091b4107d5', NULL, N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', NULL, NULL, 1, 0, 12, N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', N'nha-anh-son-khu-dan-cu-6b-intresco', 5000000, 10, 0, 1, 0, 1, N'quy-hoach/quy-hoach-do-thi', N'images/post/26122017/nha-anh-son-khu-dan-cu-6b-intresco-74ae8a15-d3b4-4bfb-b72e-13b88da252c1.jpg', N'images/post/26122017/nha-anh-son-khu-dan-cu-6b-intresco-4175ce56-0ecc-4603-bed1-19f92fe792d3.jpg', N'images/post/26122017/nha-anh-son-khu-dan-cu-6b-intresco-7a25d216-229d-4345-8d6e-71fe2dca8c43.jpg', NULL, 0, N'Nhà Anh Sơn, Khu dân cư 6B INTRESCO', NULL, CAST(N'2017-06-05T16:57:52.073' AS DateTime), N'Administrator', CAST(N'2017-12-26T16:37:00.577' AS DateTime), N'Administrator', NULL, 1)
INSERT [dbo].[Post] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [ShortDesc], [Description], [Status], [OrderDisplay], [ViewCount], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [Price], [Discount], [ShowOnHomePage], [ProductHot], [OutOfStock], [ProductNew], [VirtualCatUrl], [ImageBigSize], [ImageMediumSize], [ImageSmallSize], [StartDate], [PostType], [ProductCode], [EndDate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [TechInfo], [OldOrNew]) VALUES (41, 5, N'5c845240-517d-4592-acd4-15773d9344a0', NULL, N'Biệt thự phố, mr Duy (0983 83 45 69)', NULL, NULL, 1, 0, 3, N'Biệt thự phố, mr Duy (0983 83 45 69)', N'Biệt thự phố, mr Duy (0983 83 45 69)', N'Biệt thự phố, mr Duy (0983 83 45 69)', N'biet-thu-pho-mr-duy-0983-83-45-69', NULL, NULL, 1, 1, 1, 1, N'cong-trinh/noi-that', N'images/post/25122017/biet-thu-pho-mr-duy-0983-83-45-69-def916d0-1d75-41a3-9f0c-9bc41be1e6b4.jpg', N'images/post/25122017/biet-thu-pho-mr-duy-0983-83-45-69-de24bb01-643a-4aba-aef3-0894f4ac80be.jpg', N'images/post/25122017/biet-thu-pho-mr-duy-0983-83-45-69-41774df5-1aaa-45bf-a142-f3fc674335a4.jpg', NULL, 0, N'Biệt thự phố, mr Duy (0983 83 45 69)', NULL, CAST(N'2017-06-18T09:58:47.027' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:07.087' AS DateTime), N'Administrator', NULL, 1)
INSERT [dbo].[Post] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [ShortDesc], [Description], [Status], [OrderDisplay], [ViewCount], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [Price], [Discount], [ShowOnHomePage], [ProductHot], [OutOfStock], [ProductNew], [VirtualCatUrl], [ImageBigSize], [ImageMediumSize], [ImageSmallSize], [StartDate], [PostType], [ProductCode], [EndDate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [TechInfo], [OldOrNew]) VALUES (42, 5, N'5c845240-517d-4592-acd4-15773d9344a0', NULL, N'Khu du lịch Cát Vân', NULL, NULL, 1, 0, 0, N'Khu du lịch Cát Vân', N'Khu du lịch Cát Vân', N'Khu du lịch Cát Vân', N'khu-du-lich-cat-van', 5000000, 40, 1, 1, 0, 1, N'quy-hoach/quy-hoach-do-thi', N'images/post/23122017/khu-du-lich-cat-van-1541de59-d99d-4b99-b6cc-411439522e4d.jpg', N'images/post/23122017/khu-du-lich-cat-van-a1487e9a-443b-4ced-a191-4915d04da893.jpg', N'images/post/23122017/khu-du-lich-cat-van-10322921-2679-463a-aa34-6fc07db35494.jpg', NULL, 0, N'Khu du lịch Cát Vân1', NULL, CAST(N'2017-06-18T11:48:03.243' AS DateTime), N'Administrator', CAST(N'2017-12-23T17:07:44.050' AS DateTime), N'Administrator', NULL, 1)
INSERT [dbo].[Post] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [ShortDesc], [Description], [Status], [OrderDisplay], [ViewCount], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [Price], [Discount], [ShowOnHomePage], [ProductHot], [OutOfStock], [ProductNew], [VirtualCatUrl], [ImageBigSize], [ImageMediumSize], [ImageSmallSize], [StartDate], [PostType], [ProductCode], [EndDate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [TechInfo], [OldOrNew]) VALUES (46, 3, N'ca19fb4a-10a1-4515-bdb2-0c091b4107d5/c52e52e6-e13f-4830-9347-550ee86fbf7d', NULL, N'KHU DU LỊCH LÀNG CHÀI', NULL, NULL, 1, 0, 10, N'KHU DU LỊCH LÀNG CHÀI', N'KHU DU LỊCH LÀNG CHÀI', N'KHU DU LỊCH LÀNG CHÀI', N'khu-du-lich-lang-chai', 77899, NULL, 1, 1, 1, 1, N'bds-cho-thue/nha-pho', N'images/post/27122017/khu-du-lich-lang-chai-fd57cc84-f456-4113-9d0c-703dbbe78461.jpg', N'images/post/27122017/khu-du-lich-lang-chai-590d9735-c6a9-4115-86fe-573961a282f7.jpg', N'images/post/27122017/khu-du-lich-lang-chai-8c3b34fa-2808-439e-a818-3b6307b47511.jpg', NULL, 0, N'1212', NULL, CAST(N'2017-10-10T18:17:02.697' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:32:00.217' AS DateTime), N'Administrator', NULL, 1)
INSERT [dbo].[Post] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [ShortDesc], [Description], [Status], [OrderDisplay], [ViewCount], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [Price], [Discount], [ShowOnHomePage], [ProductHot], [OutOfStock], [ProductNew], [VirtualCatUrl], [ImageBigSize], [ImageMediumSize], [ImageSmallSize], [StartDate], [PostType], [ProductCode], [EndDate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [TechInfo], [OldOrNew]) VALUES (54, 5, N'5c845240-517d-4592-acd4-15773d9344a0', NULL, N'Căn hộ The Golden Star', NULL, NULL, 1, 0, 0, N'Căn hộ The Golden Star', N'Căn hộ The Golden Star', N'Căn hộ The Golden Star', N'can-ho-the-golden-star', NULL, NULL, 0, 1, 0, 1, NULL, N'images/post/26122017/ample-apartment-at-last-floor-82592eac-36e8-4ffc-b1f8-87db7d0de3aa.jpg', N'images/post/26122017/ample-apartment-at-last-floor-25e1cac2-a1c9-40d1-b3b8-ba77cfa2363b.jpg', N'images/post/26122017/ample-apartment-at-last-floor-1da074d1-c830-4ee0-8228-94b9471233eb.jpg', NULL, 0, N'Căn hộ The Golden Star', NULL, CAST(N'2017-12-26T02:35:42.447' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:54:02.250' AS DateTime), N'Administrator', NULL, 0)
SET IDENTITY_INSERT [dbo].[Post] OFF
SET IDENTITY_INSERT [dbo].[PostGallery] ON 

INSERT [dbo].[PostGallery] ([Id], [PostId], [Title], [OrderDisplay], [ImageBigSize], [ImageSmallSize], [ImageMediumSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, 42, NULL, 0, N'images/post/13122017/intro-jpg.jpg', N'images/post/13122017/intro-jpg-67ba8797-4f60-410c-82cf-77f6c5095f62.jpg', N'images/post/13122017/intro-jpg-f165d9a5-367f-4348-a011-24648c3f3f52.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[PostGallery] ([Id], [PostId], [Title], [OrderDisplay], [ImageBigSize], [ImageSmallSize], [ImageMediumSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, 42, NULL, 0, N'images/post/13122017/us-png.jpg', N'images/post/13122017/us-png-ab926439-248d-4509-9ae2-f2969ab7323e.jpg', N'images/post/13122017/us-png-80eeb913-13a1-4a89-86f0-6e2e2cd9e7a7.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[PostGallery] ([Id], [PostId], [Title], [OrderDisplay], [ImageBigSize], [ImageSmallSize], [ImageMediumSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, 42, NULL, 0, N'images/post/13122017/jp-png.jpg', N'images/post/13122017/jp-png-12834628-e49a-402f-abb4-d17453bcfe95.jpg', N'images/post/13122017/jp-png-a2c8eb37-6502-4d44-ac4f-5a7d127ae339.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[PostGallery] ([Id], [PostId], [Title], [OrderDisplay], [ImageBigSize], [ImageSmallSize], [ImageMediumSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, 42, N'null121212', 0, N'images/post/13122017/vn-png.jpg', N'images/post/13122017/vn-png-9accf623-9c95-4796-aeb8-577d32376b35.jpg', N'images/post/13122017/vn-png-7080f448-b4c2-4366-8e82-9f04f52b4246.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[PostGallery] ([Id], [PostId], [Title], [OrderDisplay], [ImageBigSize], [ImageSmallSize], [ImageMediumSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, 54, NULL, 0, N'images/post/26122017/los-angeles-01-1170x600-jpg-c555f75b-94b3-46e3-9ce6-9b716bc18931.jpg', N'images/post/26122017/los-angeles-01-1170x600-jpg-da10b58b-27b7-4546-a325-993be22cc145.jpg', N'images/post/26122017/los-angeles-01-1170x600-jpg-3ae15bf0-f705-4600-adad-7a2fe06ab6b6.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[PostGallery] ([Id], [PostId], [Title], [OrderDisplay], [ImageBigSize], [ImageSmallSize], [ImageMediumSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, 54, NULL, 0, N'images/post/26122017/los-angeles-03-1170x600-jpg-bc12e7c8-a6ab-4b3b-91fe-e410a95009f3.jpg', N'images/post/26122017/los-angeles-03-1170x600-jpg-7d71aad5-db54-4dc2-80bc-34d7f53326d2.jpg', N'images/post/26122017/los-angeles-03-1170x600-jpg-6106729f-9fdc-4673-a820-940f20701321.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[PostGallery] ([Id], [PostId], [Title], [OrderDisplay], [ImageBigSize], [ImageSmallSize], [ImageMediumSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, 41, NULL, 0, N'images/post/27122017/inner-living-room-3-1170x600-jpg-408efca7-a931-42de-8970-11034f3eb45e.jpg', N'images/post/27122017/inner-living-room-3-1170x600-jpg-66896f0d-b462-4aa7-875a-bc342d167d25.jpg', N'images/post/27122017/inner-living-room-3-1170x600-jpg-e705ce63-313d-445c-96f6-16977d6067c8.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[PostGallery] ([Id], [PostId], [Title], [OrderDisplay], [ImageBigSize], [ImageSmallSize], [ImageMediumSize], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, 41, NULL, 0, N'images/post/27122017/new-york-08-1170x600-jpg-186d6f98-e93c-44ec-8e50-483580c16b20.jpg', N'images/post/27122017/new-york-08-1170x600-jpg-92b3b92d-918c-4a3f-b66a-72f09137a15e.jpg', N'images/post/27122017/new-york-08-1170x600-jpg-b1811d99-79cf-4c4f-b843-83b9feff84d6.jpg', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PostGallery] OFF
SET IDENTITY_INSERT [dbo].[Province] ON 

INSERT [dbo].[Province] ([Id], [Name], [Description], [OrderDisplay], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Thành Phố Hồ Chí Minh', NULL, 5, 1, CAST(N'2016-12-03T07:32:55.723' AS DateTime), N'Administrator', CAST(N'2016-12-16T20:21:18.510' AS DateTime), N'Administrator')
INSERT [dbo].[Province] ([Id], [Name], [Description], [OrderDisplay], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Bình Dương', NULL, 3, 1, CAST(N'2016-12-03T07:33:06.427' AS DateTime), N'Administrator', CAST(N'2016-12-03T10:25:33.657' AS DateTime), N'Administrator')
INSERT [dbo].[Province] ([Id], [Name], [Description], [OrderDisplay], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Đồng Nai', NULL, 3, 1, CAST(N'2016-12-03T07:33:16.583' AS DateTime), N'Administrator', CAST(N'2016-12-03T07:33:16.583' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[Province] OFF
SET IDENTITY_INSERT [dbo].[Repair] ON 

INSERT [dbo].[Repair] ([Id], [Model], [ModelBrand], [SerialNumber], [BrandId], [OrderCode], [CustomerCode], [StoreName], [CustomerName], [PhoneNumber], [CustomerIdNumber], [Address], [Accessories], [PasswordPhone], [AppleId], [IcloudPassword], [FixedTags], [Category], [OldWarranty], [PhoneStatus], [WarrantyFrom], [WarrantyTo], [FixedFee], [Status], [Note], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'1', N'1', N'1', 2, N'DH1', N'KH1', N'12', N'12', N'1212121', N'1', N'1', NULL, N'1', N'1', NULL, NULL, NULL, 1, N'1', NULL, NULL, NULL, 2, NULL, CAST(N'2017-06-08T14:39:50.903' AS DateTime), N'Administrator', CAST(N'2017-09-22T14:59:09.933' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[Repair] OFF
SET IDENTITY_INSERT [dbo].[RepairGallery] ON 

INSERT [dbo].[RepairGallery] ([Id], [ImagePath], [RepairId]) VALUES (1, N'images/DH1/DH1-d368aea0-f64e-42bf-a306-595ab6db7e4b.jpg', 2)
INSERT [dbo].[RepairGallery] ([Id], [ImagePath], [RepairId]) VALUES (2, N'images/DH1/DH1-5211a8d9-8567-4923-bb42-b902b1462a41.jpg', 2)
INSERT [dbo].[RepairGallery] ([Id], [ImagePath], [RepairId]) VALUES (3, N'images/DH1/DH1-412b90c9-088e-41d9-ac36-d477b886a375.jpg', 2)
INSERT [dbo].[RepairGallery] ([Id], [ImagePath], [RepairId]) VALUES (4, N'images/DH1/DH1-89945288-447d-4fc1-ad97-4135a5378cc7.jpg', 2)
INSERT [dbo].[RepairGallery] ([Id], [ImagePath], [RepairId]) VALUES (5, N'images/DH1/DH1-c0dab435-ea84-43f3-b964-38cc6d370936.jpg', 2)
INSERT [dbo].[RepairGallery] ([Id], [ImagePath], [RepairId]) VALUES (6, N'images/DH1/DH1-81e010db-1009-4032-915d-0811970ebce3.jpg', 2)
INSERT [dbo].[RepairGallery] ([Id], [ImagePath], [RepairId]) VALUES (7, N'images/DH1/DH1-f8cd7732-8c7c-4a29-bb30-2771a30fba7e.jpg', 2)
SET IDENTITY_INSERT [dbo].[RepairGallery] OFF
SET IDENTITY_INSERT [dbo].[RepairItem] ON 

INSERT [dbo].[RepairItem] ([Id], [WarrantyFrom], [WarrantyTo], [FixedFee], [Category], [RepairId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (14, CAST(N'2017-05-30T00:00:00.000' AS DateTime), CAST(N'2017-06-08T00:00:00.000' AS DateTime), CAST(1.00 AS Decimal(18, 2)), N'12', 2, CAST(N'2017-09-22T14:59:09.897' AS DateTime), N'Administrator', CAST(N'2017-09-22T14:59:09.897' AS DateTime), N'Administrator')
INSERT [dbo].[RepairItem] ([Id], [WarrantyFrom], [WarrantyTo], [FixedFee], [Category], [RepairId], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (15, CAST(N'2017-05-30T00:00:00.000' AS DateTime), CAST(N'2017-05-30T00:00:00.000' AS DateTime), CAST(5.00 AS Decimal(18, 2)), N'232', 2, CAST(N'2017-09-22T14:59:09.897' AS DateTime), N'Administrator', CAST(N'2017-09-22T14:59:09.897' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[RepairItem] OFF
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'79a41b18-2edb-49cb-b1e3-02decc11f901', N'DeleteEditBanner', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'e64f1379-7ea0-4ec0-b393-03f0ec6ef679', N'ExportLandingPage', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'7dedab84-7294-4e36-986c-074e4fed6ba0', N'DeleteNews', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'0fbf721a-0839-4221-811d-0ea7c4a2879f', N'DeleteLandingPage', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'725051d0-b3bb-460b-a105-0ec050640f32', N'CreateEditFlowStep', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'e75241a2-3dda-4ead-ad77-120950ec74a9', N'DeleteEditRole', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'7e64b27f-148c-415e-aff7-14e92ee8cc1f', N'CreateEditAttribute', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'a8a17534-9195-4cf6-a30e-20a9639d1a74', N'DeleteSeoSetting', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'a8677efa-3994-4449-a3c4-2236aa164b74', N'CreateEditNews', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'4efaf033-0bde-4c89-b5c2-255781ef8567', N'ViewFlowStep', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'cb1b5092-fd6a-4848-ba71-2b6036dfc169', N'ViewRole', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'0f9229ee-4e0c-48f2-b62f-2cb134019d7d', N'ViewProvince', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'7d502e60-693d-4a30-8f0d-31d6f2833722', N'CreateEditAccount', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'0ccdc741-8494-4acd-9cb4-32b7360481d9', N'CreateEditBanner', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'be09502c-d8ea-49cf-bbb2-3320ab3b2130', N'ViewSeoSetting', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'241e44f1-25cb-49dd-a729-3696b3e3a42e', N'CreateEditPageBanner', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'ad98c76b-ff39-4b38-aefa-3b4da2295bd1', N'ViewMailSetting', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'549dd095-2e66-41f9-b512-3ba2d9068a88', N'CreateEditSeoSetting', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'0aa9f8c3-24f8-47ee-890a-3c55b1e07967', N'ViewPageBanner', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'878b7905-dcb2-4faf-802f-42ccae5ad058', N'CreateEditFlowStep', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'1d622e2b-bdf1-40e4-9b9b-4e1cfa4b841f', N'CreateEditDistrict', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'1418c22b-0d1b-483f-b5bf-502c2e342904', N'ViewAttribute', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'76d2112a-72d0-4b41-8e90-6213b5fd91d4', N'CreatePost', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'c3d47655-95f0-4017-a1f7-62f4dd16fc04', N'ViewPost', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'419f99ed-38c7-44a1-9adb-68139526a3ea', N'DeletePost', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'5c8e0d30-9b6b-4c62-ba7e-69ae98779a6c', N'ViewBanner', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'2f667961-bfdf-418b-acd2-6a2e55117bf7', N'ViewContactInfomation', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'e2e66b84-2ea6-49b7-aec3-6a32744edb47', N'CreateEditStaticContent', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'7ba3b301-7ff3-4a12-aedc-748ec95afe7e', N'ViewAccount', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'4711d4cd-2e94-4e81-98fe-793055739a8c', N'DeleteAttribute', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'a241cfff-40a6-48ec-a8c0-7c7391821d61', N'DeleteDistrict', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'67c6ac61-ab44-4fe5-923b-80f178c7d9d3', N'DeleteSystemSetting', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'd33f849b-4b83-4a17-8355-871e11df0a8c', N'ViewStaticContent', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'1b1ec09a-90a6-4543-a09e-892d43b58f04', N'CreateEditContactInfomation', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'f022a253-85a4-4fc1-adb3-95aee321af9d', N'CreateProvince', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'ed128890-a3c7-4755-974e-a5bc1ef1a042', N'ViewSystemSetting', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'8f92cb14-b3ad-40a2-b240-a7fb4800af1d', N'CreateEditMenu', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'e6289f84-74d2-49bf-a3bc-ae1d7ed2793e', N'CreateEditMailSetting', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'92b7a7a7-19da-46cf-9f24-bb8d69ff5be2', N'DeleteContactInfomation', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'36c2ed35-12a3-446e-ba43-bda851fbf3e7', N'CreateEditSystemSetting', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'5b3912d9-0545-4f1b-b286-c53168d97ad9', N'ViewLandingPage', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'e07a1fe5-a924-47df-96bc-caa5d69e2ac6', N'DeleteMenu', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'009b8286-ba0e-4657-85d7-cac9f484b95d', N'ViewDistrict', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'310aec48-ae13-4f57-aa67-cb07f8e5cd1e', N'CreateEditAccount', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'9e01f66c-bd19-4e9a-afd4-d6b6bec39a97', N'ViewMenu', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'6534cb27-ff13-4e1c-a645-d96532ab612c', N'CreateEditRole', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'22992600-c0cf-4e34-a430-e2f72d5e799c', N'ViewNews', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'b12fe51e-05dc-4404-88db-e63dab730d76', N'DeleteMailSetting', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'cb5c5f97-4154-4f36-9adf-ef14a36ac546', N'DeletePageBanner', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'cf5a8f17-62ed-4e26-8300-f6fb2b91fb21', N'DeleteProvince', NULL)
INSERT [dbo].[Role] ([RoleId], [Name], [Description]) VALUES (N'cd3a1632-5fa7-4b46-a13e-fcbb1a43780c', N'DeleteStaticContent', NULL)
SET IDENTITY_INSERT [dbo].[ServerMailSetting] ON 

INSERT [dbo].[ServerMailSetting] ([Id], [FromAddress], [SmtpClient], [UserID], [Password], [SMTPPort], [EnableSSL], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'thienphat.tiengiang@gmail.com', N'smtp.gmail.com', N'thienphat.tiengiang@gmail.com', N'rvwcnezzttbixmzs', N'587', 0, 1, CAST(N'2017-05-05T09:28:43.473' AS DateTime), N'Administrator', CAST(N'2017-06-28T16:25:54.033' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[ServerMailSetting] OFF
SET IDENTITY_INSERT [dbo].[SettingSeoGlobal] ON 

INSERT [dbo].[SettingSeoGlobal] ([Id], [FbAppId], [FbAdminsId], [SnippetGoogleAnalytics], [MetaTagMasterTool], [PublisherGooglePlus], [FacebookRetargetSnippet], [GoogleRetargetSnippet], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [FbLink], [GooglePlusLink], [TwitterLink], [PinterestLink], [YoutubeLink]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2017-06-05T17:20:13.810' AS DateTime), N'Administrator', CAST(N'2017-12-27T13:38:09.163' AS DateTime), N'Administrator', N'https://www.facebook.com/C%C4%83n-H%E1%BB%99-Qu%E1%BA%ADn-7-Sionsanvatcom-146439199342237/?hc_ref=ARTuXifU-PFyQVU4x7RcC5fRST9bhiue0zNQFKp1nVcU38iuxUdXb9DAqG2kZoIubys&fref=gs&dti=159568444654560&hc_location=group', N'https://plus.google.com/u/1/107297564061909337921', N'twitter', NULL, N'youtube.com')
SET IDENTITY_INSERT [dbo].[SettingSeoGlobal] OFF
SET IDENTITY_INSERT [dbo].[ShippingMethod] ON 

INSERT [dbo].[ShippingMethod] ([Id], [Name], [Description], [DisplayOrder], [IgnoreCharges], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'In-Store Pickup', N'Pick up your items at the store', 0, 0, CAST(N'2017-11-04T21:05:51.303' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ShippingMethod] ([Id], [Name], [Description], [DisplayOrder], [IgnoreCharges], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'By Ground', N'Compared to other shipping methods, like by flight or over seas, ground shipping is carried out closer to the earth', 1, 0, CAST(N'2017-11-04T21:05:51.303' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ShippingMethod] OFF
SET IDENTITY_INSERT [dbo].[ShoppingCartItem] ON 

INSERT [dbo].[ShoppingCartItem] ([Id], [StoreId], [ParentItemId], [BundleItemId], [ShoppingCartTypeId], [CustomerId], [PostId], [AttributesXml], [CustomerEnteredPrice], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, 1, 0, 0, 0, 1011, 42, NULL, CAST(70000.0000 AS Decimal(18, 4)), 2, CAST(N'2017-11-20T16:49:40.580' AS DateTime), N'Administrator', CAST(N'2017-11-20T16:49:40.580' AS DateTime), N'Administrator')
INSERT [dbo].[ShoppingCartItem] ([Id], [StoreId], [ParentItemId], [BundleItemId], [ShoppingCartTypeId], [CustomerId], [PostId], [AttributesXml], [CustomerEnteredPrice], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, 1, 0, 0, 0, 1011, 42, NULL, CAST(70000.0000 AS Decimal(18, 4)), 3, CAST(N'2017-11-20T16:49:43.680' AS DateTime), N'Administrator', CAST(N'2017-11-20T16:49:43.680' AS DateTime), N'Administrator')
INSERT [dbo].[ShoppingCartItem] ([Id], [StoreId], [ParentItemId], [BundleItemId], [ShoppingCartTypeId], [CustomerId], [PostId], [AttributesXml], [CustomerEnteredPrice], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, 1, 0, 0, 0, 1011, 42, NULL, CAST(70000.0000 AS Decimal(18, 4)), 1, CAST(N'2017-11-20T16:50:06.630' AS DateTime), N'Administrator', CAST(N'2017-11-20T16:50:06.630' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[ShoppingCartItem] OFF
SET IDENTITY_INSERT [dbo].[SlideShow] ON 

INSERT [dbo].[SlideShow] ([Id], [Title], [WebsiteLink], [ImgPath], [Description], [Video], [Width], [Height], [Target], [FromDate], [ToDate], [Status], [OrderDisplay], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'CĂN HỘ QUÂN 7 THE GOLDEN STAR', N'http://can-ho.vn/ban-can-ho-chung-cu-quan-7-the-golden-star-nguyen-thi-thap-hung-loc-phat.htm', N'images/Ads/slide-1.jpg', NULL, 0, NULL, NULL, N'_blank', NULL, NULL, 1, 1, CAST(N'2017-05-10T09:44:23.133' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:40:02.917' AS DateTime), N'Administrator')
INSERT [dbo].[SlideShow] ([Id], [Title], [WebsiteLink], [ImgPath], [Description], [Video], [Width], [Height], [Target], [FromDate], [ToDate], [Status], [OrderDisplay], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Bán căn hộ chung cư tại Quận 4', NULL, N'images/Ads/ban-can-ho-chung-cu-tai-quan-4.jpg', NULL, 0, NULL, NULL, N'_blank', NULL, NULL, 1, 1, CAST(N'2017-12-27T14:42:24.927' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:43:24.610' AS DateTime), N'Administrator')
SET IDENTITY_INSERT [dbo].[SlideShow] OFF
SET IDENTITY_INSERT [dbo].[StaticContent] ON 

INSERT [dbo].[StaticContent] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [ShortDesc], [Description], [Status], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [ImagePath], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [ViewCount]) VALUES (14, 45, N'5ff97ccf-29d4-47d2-82d9-9d217119a68d', NULL, N'Giới thiệu', N'<p><span style="color:#FFFFFF"><span style="font-family:utmcaviar,sans-serif; font-size:16px">Dự &aacute;n căn hộ Vĩnh Lộc D&rsquo;Gold được ra mắt đầu năm 2015 nhằm mục đ&iacute;ch giải quyết nhu cầu mua nh&agrave; cho người thu nhập thấp bởi những căn hộ với mức gi&aacute; thấp v&agrave; trung b&igrave;nh ng&agrave;y c&agrave;ng khan hiếm tr&ecirc;n thị trường nh&agrave; ở chung cư hay nh&agrave; ở x&atilde; hội hiện nay.</span></span></p>
', N'<div class="row">
<div class="col-md-12">
<p><span style="color:rgb(29, 33, 41); font-family:helvetica,arial,sans-serif; font-size:14px">Dự &aacute;n Căn Hộ Madison sở hữu vị tr&iacute; &ldquo;v&agrave;ng&rdquo; ngay giữa trung t&acirc;m quận 1, với 2 mặt tiền đường Thi S&aacute;ch v&agrave; Cao B&aacute; Qu&aacute;t, đ&acirc;y l&agrave; dự &aacute;n hiếm hoi c&oacute; căn hộ sở hữu l&acirc;u d&agrave;i giữa l&ograve;ng c&aacute;c Trung t&acirc;m thương mại &ndash; Văn ph&ograve;ng &ndash; Kh&aacute;ch sạn &ndash; Dịch vụ cao cấp bậc nhất TP. Hồ h&iacute; Minh. Từ đ&acirc;y chỉ mất v&agrave;i ph&uacute;t để đi đến khu h&agrave;ng ch&iacute;nh Quận 1 v&agrave; c&aacute;c địa điểm biểu tượng của Th&agrave;nh phố như: Chợ Bến Th&agrave;nh, nh&agrave; h&aacute;t Th&agrave;nh Phố hay Bến Nh&agrave; Rồng.</span><br />
<span style="color:rgb(29, 33, 41); font-family:helvetica,arial,sans-serif; font-size:14px">C&ugrave;ng với thiết kế hiện đại, sang trọng, Căn Hộ Madison hứa hẹn sẽ l&agrave; khu phức hợp mang đến một m&ocirc;i trường sống an to&agrave;n v&agrave; tiện nghi, đ&aacute;p ứng trọn vẹn cho nhu cầu an cư v&agrave; đầu tư l&acirc;u d&agrave;i.</span></p>
</div>
</div>

<p style="margin-left:40px">&nbsp;</p>
', 1, N'Giới thiệu', N'Giới thiệu', N'Giới thiệu', N'gioi-thieu-1', N'images/staticcontent/gioi-thieu-24452e1c-c4b2-44ae-b2d1-33f1f4a3754b.png', CAST(N'2017-06-17T09:32:37.010' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:23:40.583' AS DateTime), N'Administrator', 1)
INSERT [dbo].[StaticContent] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [ShortDesc], [Description], [Status], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [ImagePath], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [ViewCount]) VALUES (16, 21, N'ab6eefb0-c074-4799-8637-64a6aa57dd9f', NULL, N'Chính sách giao hàng trang chủ', N'<div class="policies nobottommargin">
<div class="container clearfix">
<div class="row">
<div class="col-xs-12 col-sm-3">
<div class="feature-box fbox-plain fbox-dark fbox-small">
<div class="fbox-icon"><img alt="Công ty TNHH SionSanVat" src="/assets/lib/policies_icon_1677f.png?v=226" /></div>

<h3>GIAO H&Agrave;NG TO&Agrave;N QUỐC</h3>

<p>Miễn ph&iacute; khi mua nhiều</p>
</div>
</div>

<div class="col-xs-12 col-sm-3">
<div class="feature-box fbox-plain fbox-dark fbox-small">
<div class="fbox-icon"><img alt="Công ty TNHH SionSanVat" src="/assets/lib/policies_icon_2677f.png?v=226" /></div>

<h3>QU&Agrave; TẶNG</h3>

<p>Nhiều qu&agrave; tặng v&agrave; ưu đ&atilde;i hấp dẫn</p>
</div>
</div>

<div class="col-xs-12 col-sm-3">
<div class="feature-box fbox-plain fbox-dark fbox-small">
<div class="fbox-icon"><img alt="Công ty TNHH SionSanVat" src="/assets/lib/policies_icon_3677f.png?v=226" /></div>

<h3>CHẤT LƯỢNG</h3>

<p>Sản phẩm đẹp, bền - G&iacute;a tốt nhất</p>
</div>
</div>

<div class="col-xs-12 col-sm-3">
<div class="feature-box fbox-plain fbox-dark fbox-small">
<div class="fbox-icon"><img alt="Công ty TNHH SionSanVat" src="/assets/lib/policies_icon_4677f.png?v=226" /></div>

<h3>ĐẶT H&Agrave;NG NHANH</h3>

<p>0937 996 063</p>
</div>
</div>
</div>
</div>
</div>
', NULL, 1, N'Chính sách giao hàng trang chủ', N'Chính sách giao hàng trang chủ', N'Chính sách giao hàng trang chủ', N'chinh-sach-giao-hang-trang-chu', N'images/staticcontent/chinh-sach-giao-hang-trang-chu-f6a66e57-21c2-4689-a313-e35cca84c95b.jpg', CAST(N'2017-06-18T06:09:36.230' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:21:31.887' AS DateTime), N'Administrator', 1)
INSERT [dbo].[StaticContent] ([Id], [MenuId], [VirtualCategoryId], [Language], [Title], [ShortDesc], [Description], [Status], [MetaTitle], [MetaKeywords], [MetaDescription], [SeoUrl], [ImagePath], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [ViewCount]) VALUES (17, 43, N'8d49acae-84c0-44e4-8da5-96b550cbc90a/55aabaf4-b1bc-4269-a2fe-6b8981abe207', NULL, N'Chính sách đổi trả', N'<p>fgsfdgsfdgfasdfafas</p>
', N'<p>fgsfdgsfdgfasdfafasf&aacute;df&agrave;ds&agrave;&agrave;</p>
', 1, N'Chính sách đổi trả', N'Chính sách đổi trả', N'Chính sách đổi trả', N'chinh-sach-doi-tra-1', N'images/staticcontent/y-kien-khach-hang-8eb22db5-1ff8-4ab8-8a34-0e9f6e02da33.png', CAST(N'2017-10-17T17:52:25.913' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:21:12.147' AS DateTime), N'Administrator', 1)
SET IDENTITY_INSERT [dbo].[StaticContent] OFF
SET IDENTITY_INSERT [dbo].[SystemSetting] ON 

INSERT [dbo].[SystemSetting] ([Id], [Language], [Title], [FooterContent], [MetaTitle], [MetaDescription], [MetaKeywords], [Status], [FaviconImage], [LogoImage], [LogoFooterImage], [MaintanceSite], [Hotline], [Email], [Description], [TimeWork], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Slogan]) VALUES (1, NULL, N'Công ty TNHH SionSanVat', NULL, N'Công ty TNHH SionSanVat', N'Công ty TNHH SionSanVat', N'Công ty TNHH SionSanVat', 1, N'images/favicon.ico', N'images/logo.png', NULL, 1, N'02733.622888', NULL, NULL, NULL, CAST(N'2017-02-20T05:31:19.807' AS DateTime), N'Administrator', CAST(N'2017-12-27T14:51:34.300' AS DateTime), N'Administrator', NULL)
SET IDENTITY_INSERT [dbo].[SystemSetting] OFF
INSERT [dbo].[User] ([UserId], [UserName], [Email], [PasswordHash], [SecurityStamp], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [Phone], [IsLockedOut], [IsSuperAdmin], [Created], [LastLogin]) VALUES (N'90dc7ff0-ea2a-401e-a2d5-6b9737c76bbd', N'Administrator', N'ddemo9698@gmail.com', N'AEgZor3mVztRKy4Fy7cMAWDEpzvoi4xuY2gj6LbGC7B8z02IfO3lul4IZHMPnuS5Kg==', N'e0404700-a1e7-4fe2-bf4f-bfa627da1c57', N'Truong', N'Thanh', N'Cong', N'HCM', NULL, NULL, N'123456789', 0, 1, CAST(N'2016-10-15T19:31:59.147' AS DateTime), NULL)
INSERT [dbo].[User] ([UserId], [UserName], [Email], [PasswordHash], [SecurityStamp], [FirstName], [MiddleName], [LastName], [Address], [City], [State], [Phone], [IsLockedOut], [IsSuperAdmin], [Created], [LastLogin]) VALUES (N'd4069960-2e7a-420d-8581-c71ab694db05', N'user1', N'user1@gmail.com', N'ADcRh5C3KBCngj0iMqo6Dja7P8tC+FBZBv3UW1G3lYhAv4pjZySAlW1b4rqFscjXaA==', N'06b5aab3-4f96-442e-8f37-f4ae0fc1ccf1', N'cong', N'truong', N'thanh', NULL, NULL, NULL, NULL, 0, 0, CAST(N'2017-12-10T14:02:03.457' AS DateTime), NULL)
INSERT [dbo].[UserRole] ([RoleId], [UserId]) VALUES (N'22992600-c0cf-4e34-a430-e2f72d5e799c', N'd4069960-2e7a-420d-8581-c71ab694db05')
/****** Object:  Index [IX_AttributeId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_AttributeId] ON [dbo].[AttribureValue]
(
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_MenuId] ON [dbo].[Banner]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PageId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_PageId] ON [dbo].[Banner]
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[Claim]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProvinceId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_ProvinceId] ON [dbo].[ContactInformation]
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[ExternalLogin]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AttributeValueId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_AttributeValueId] ON [dbo].[GalleryImage]
(
	[AttributeValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_PostId] ON [dbo].[GalleryImage]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShopId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_ShopId] ON [dbo].[LandingPage]
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_MenuLink_CurrentVirtualId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_CurrentVirtualId] ON [dbo].[MenuLink]
(
	[CurrentVirtualId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_MenuLink_DisplayOnHomePage]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_DisplayOnHomePage] ON [dbo].[MenuLink]
(
	[DisplayOnHomePage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_MenuLink_DisplayOnMenu]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_DisplayOnMenu] ON [dbo].[MenuLink]
(
	[DisplayOnMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_MenuLink_Id]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_Id] ON [dbo].[MenuLink]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_MenuLink_MenuName]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_MenuName] ON [dbo].[MenuLink]
(
	[MenuName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_MenuLink_OrderDisplay]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_OrderDisplay] ON [dbo].[MenuLink]
(
	[OrderDisplay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_MenuLink_ParentId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_ParentId] ON [dbo].[MenuLink]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_MenuLink_Position]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_Position] ON [dbo].[MenuLink]
(
	[Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_MenuLink_SeoUrl]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_SeoUrl] ON [dbo].[MenuLink]
(
	[SeoUrl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_MenuLink_Status]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_Status] ON [dbo].[MenuLink]
(
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_MenuLink_TemplateType]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_TemplateType] ON [dbo].[MenuLink]
(
	[TemplateType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_MenuLink_TypeMenu]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_TypeMenu] ON [dbo].[MenuLink]
(
	[TypeMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_MenuLink_VirtualId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_VirtualId] ON [dbo].[MenuLink]
(
	[VirtualId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_MenuLink_VirtualSeoUrl]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [idx_MenuLink_VirtualSeoUrl] ON [dbo].[MenuLink]
(
	[VirtualSeoUrl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_ParentId] ON [dbo].[MenuLink]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_MenuId] ON [dbo].[News]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_MenuId] ON [dbo].[Post]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AttibuteValueId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_AttibuteValueId] ON [dbo].[PostAttribute]
(
	[AttibuteValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_PostId] ON [dbo].[PostAttribute]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_MenuId] ON [dbo].[StaticContent]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[UserRole]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 22-Apr-18 15:40:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UserRole]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Assessment] ADD  CONSTRAINT [DF_Assessment_Warranty]  DEFAULT ((0)) FOR [Warranty]
GO
ALTER TABLE [dbo].[MenuLink] ADD  DEFAULT ((0)) FOR [DisplayOnSearch]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__Order__UpdatedOn__2B0A656D]  DEFAULT ('2017-06-18T16:30:29.726Z') FOR [UpdatedOnUtc]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__Order__OrderShip__2BFE89A6]  DEFAULT ((0)) FOR [OrderShippingTaxRate]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__Order__PaymentMe__2CF2ADDF]  DEFAULT ((0)) FOR [PaymentMethodAdditionalFeeTaxRate]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__Order__HasNewPay__2DE6D218]  DEFAULT ((0)) FOR [HasNewPaymentNotification]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__Order__AcceptThi__2EDAF651]  DEFAULT ((0)) FOR [AcceptThirdPartyEmailHandOver]
GO
ALTER TABLE [dbo].[OrderItem] ADD  CONSTRAINT [DF__OrderItem__TaxRa__42E1EEFE]  DEFAULT ((0)) FOR [TaxRate]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF__Post__OldOrNew__5441852A]  DEFAULT ((0)) FOR [OldOrNew]
GO
ALTER TABLE [dbo].[StaticContent] ADD  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[AttribureValue]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AttribureValue_dbo.Attribute_AttributeId] FOREIGN KEY([AttributeId])
REFERENCES [dbo].[Attribute] ([Id])
GO
ALTER TABLE [dbo].[AttribureValue] CHECK CONSTRAINT [FK_dbo.AttribureValue_dbo.Attribute_AttributeId]
GO
ALTER TABLE [dbo].[Banner]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Banner_dbo.MenuLink_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[MenuLink] ([Id])
GO
ALTER TABLE [dbo].[Banner] CHECK CONSTRAINT [FK_dbo.Banner_dbo.MenuLink_MenuId]
GO
ALTER TABLE [dbo].[Banner]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Banner_dbo.PageBanner_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[PageBanner] ([Id])
GO
ALTER TABLE [dbo].[Banner] CHECK CONSTRAINT [FK_dbo.Banner_dbo.PageBanner_PageId]
GO
ALTER TABLE [dbo].[Claim]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Claim_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Claim] CHECK CONSTRAINT [FK_dbo.Claim_dbo.User_UserId]
GO
ALTER TABLE [dbo].[ContactInformation]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ContactInfomation_dbo.Province_ProvinceId] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([Id])
GO
ALTER TABLE [dbo].[ContactInformation] CHECK CONSTRAINT [FK_dbo.ContactInfomation_dbo.Province_ProvinceId]
GO
ALTER TABLE [dbo].[ExternalLogin]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExternalLogin_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ExternalLogin] CHECK CONSTRAINT [FK_dbo.ExternalLogin_dbo.User_UserId]
GO
ALTER TABLE [dbo].[GalleryImage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GalleryImage_dbo.AttribureValue_AttributeValueId] FOREIGN KEY([AttributeValueId])
REFERENCES [dbo].[AttribureValue] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GalleryImage] CHECK CONSTRAINT [FK_dbo.GalleryImage_dbo.AttribureValue_AttributeValueId]
GO
ALTER TABLE [dbo].[GalleryImage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GalleryImage_dbo.Post_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GalleryImage] CHECK CONSTRAINT [FK_dbo.GalleryImage_dbo.Post_PostId]
GO
ALTER TABLE [dbo].[GenericControlMenuLink]  WITH CHECK ADD  CONSTRAINT [FK_GenericControlMenuLink_GenericControl] FOREIGN KEY([GenericControlId])
REFERENCES [dbo].[GenericControl] ([Id])
GO
ALTER TABLE [dbo].[GenericControlMenuLink] CHECK CONSTRAINT [FK_GenericControlMenuLink_GenericControl]
GO
ALTER TABLE [dbo].[GenericControlMenuLink]  WITH CHECK ADD  CONSTRAINT [FK_GenericControlMenuLink_MenuLink] FOREIGN KEY([MenuLinkId])
REFERENCES [dbo].[MenuLink] ([Id])
GO
ALTER TABLE [dbo].[GenericControlMenuLink] CHECK CONSTRAINT [FK_GenericControlMenuLink_MenuLink]
GO
ALTER TABLE [dbo].[GenericControlValue]  WITH CHECK ADD  CONSTRAINT [FK_GenericControlValue_GenericControl] FOREIGN KEY([GenericControlId])
REFERENCES [dbo].[GenericControl] ([Id])
GO
ALTER TABLE [dbo].[GenericControlValue] CHECK CONSTRAINT [FK_GenericControlValue_GenericControl]
GO
ALTER TABLE [dbo].[GenericControlValueItem]  WITH CHECK ADD  CONSTRAINT [FK_GenericControlValueItem_GenericControlValue] FOREIGN KEY([GenericControlValueId])
REFERENCES [dbo].[GenericControlValue] ([Id])
GO
ALTER TABLE [dbo].[GenericControlValueItem] CHECK CONSTRAINT [FK_GenericControlValueItem_GenericControlValue]
GO
ALTER TABLE [dbo].[LandingPage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LandingPage_dbo.ContactInfomation_ShopId] FOREIGN KEY([ShopId])
REFERENCES [dbo].[ContactInformation] ([Id])
GO
ALTER TABLE [dbo].[LandingPage] CHECK CONSTRAINT [FK_dbo.LandingPage_dbo.ContactInfomation_ShopId]
GO
ALTER TABLE [dbo].[LocaleStringResource]  WITH CHECK ADD FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LocalizedProperty]  WITH CHECK ADD FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_dbo.News_dbo.MenuLink_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[MenuLink] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_dbo.News_dbo.MenuLink_MenuId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Address_BillingAddressId] FOREIGN KEY([BillingAddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Address_BillingAddressId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Address_ShippingAddressId] FOREIGN KEY([ShippingAddressId])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Address_ShippingAddressId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderItem_dbo.Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_dbo.OrderItem_dbo.Order_OrderId]
GO
ALTER TABLE [dbo].[OrderNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderNote_dbo.Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderNote] CHECK CONSTRAINT [FK_dbo.OrderNote_dbo.Order_OrderId]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Post_dbo.MenuLink_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[MenuLink] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_dbo.Post_dbo.MenuLink_MenuId]
GO
ALTER TABLE [dbo].[PostAttribute]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostAttribute_dbo.AttribureValue_AttibuteValueId] FOREIGN KEY([AttibuteValueId])
REFERENCES [dbo].[AttribureValue] ([Id])
GO
ALTER TABLE [dbo].[PostAttribute] CHECK CONSTRAINT [FK_dbo.PostAttribute_dbo.AttribureValue_AttibuteValueId]
GO
ALTER TABLE [dbo].[PostAttribute]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostAttribute_dbo.Post_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[PostAttribute] CHECK CONSTRAINT [FK_dbo.PostAttribute_dbo.Post_PostId]
GO
ALTER TABLE [dbo].[Repair]  WITH CHECK ADD  CONSTRAINT [FK_Repair_Brand] FOREIGN KEY([Id])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[Repair] CHECK CONSTRAINT [FK_Repair_Brand]
GO
ALTER TABLE [dbo].[RepairGallery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RepairGallery_dbo.Repair_RepairId] FOREIGN KEY([RepairId])
REFERENCES [dbo].[Repair] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RepairGallery] CHECK CONSTRAINT [FK_dbo.RepairGallery_dbo.Repair_RepairId]
GO
ALTER TABLE [dbo].[RepairItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RepairItem_dbo.Repair_RepairId] FOREIGN KEY([RepairId])
REFERENCES [dbo].[Repair] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RepairItem] CHECK CONSTRAINT [FK_dbo.RepairItem_dbo.Repair_RepairId]
GO
ALTER TABLE [dbo].[StaticContent]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StaticContents_dbo.MenuLink_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[MenuLink] ([Id])
GO
ALTER TABLE [dbo].[StaticContent] CHECK CONSTRAINT [FK_dbo.StaticContents_dbo.MenuLink_MenuId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRole_dbo.Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_dbo.UserRole_dbo.Role_RoleId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRole_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_dbo.UserRole_dbo.User_UserId]
GO
/****** Object:  StoredProcedure [dbo].[Post_Insert]    Script Date: 22-Apr-18 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Post_Insert] @VirtualCatUrl VARCHAR(500)
AS
BEGIN
	INSERT Post
	SELECT 3 AS MenuId
		, mn.VirtualId AS 'VirtaulCategoryId'
		, NULL AS LANGUAGE
		, pr.title
		, pr.brief AS 'ShortDesc'
		, pr.detail AS 'Description'
		, 1 AS [Status]
		, 0 AS 'OrderDispaly'
		, 0 AS 'ViewCount'
		, pr.metatitle
		, pr.metakeyword
		, pr.metadescription
		, titleurl AS 'SeoUrl'
		, 0 AS 'Price'
		, 0 AS 'Discount'
		, 1 AS 'ProductHot'
		, 1 AS 'OutOfStock'
		, 1 AS 'ProductNew'
		, 'cong-trinh/nha-pho' AS VirtualCatUrl
		, pr.IMAGE AS ImageBigSize
		, pr.IMAGE AS ImageMediumSize
		, pr.IMAGE AS ImageSmallSize
		, NULL AS StartDate
		, 0 AS PostType
		, RAND() AS ProductCode
		, NULL AS EndDate
		, GETDATE() AS CreatedDate
		, 'Administrator' AS CreateBy
		, GetDate() AS UpdateDate
		, 'Administrator' AS UpdateBy
		, NULL AS TechInfo
		, 1 AS 'OldOrNew'
	FROM MenuLink mn
	LEFT JOIN Kientrucboba.dbo.Product_Tmp pr
		ON pr.categorynamedesc = mn.MenuName
	WHERE pr.CategoryId = 74
END


GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sửa chữa/kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Assessment'
GO
USE [master]
GO
ALTER DATABASE [HouseZ] SET  READ_WRITE 
GO
