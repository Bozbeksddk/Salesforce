USE [master]
GO
/****** Object:  Database [AyvansarayBitirmeProjem]    Script Date: 28.04.2019 14:28:32 ******/
CREATE DATABASE [AyvansarayBitirmeProjem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AyvansarayBitirmeProjem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AyvansarayBitirmeProjem.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AyvansarayBitirmeProjem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AyvansarayBitirmeProjem_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AyvansarayBitirmeProjem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET ARITHABORT OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET  MULTI_USER 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AyvansarayBitirmeProjem]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Adminler]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adminler](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Adminler] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Baglanti]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baglanti](
	[BaglantiID] [int] IDENTITY(1,1) NOT NULL,
	[BaglantiAd] [nvarchar](50) NULL,
	[BaglantiSoyadi] [nvarchar](50) NULL,
	[BaglantiEmail] [nvarchar](50) NULL,
	[BaglantiTelefon] [nvarchar](50) NULL,
 CONSTRAINT [PK_Baglanti] PRIMARY KEY CLUSTERED 
(
	[BaglantiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] NOT NULL,
	[CountryName] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriAd] [nvarchar](50) NULL,
	[MusteriSoyad] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MusteriSirketiAdi] [nvarchar](50) NULL,
	[RefBaglantiID] [int] NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Not]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Not](
	[NotId] [int] NOT NULL,
	[Notlar] [nvarchar](500) NULL,
 CONSTRAINT [PK_Not] PRIMARY KEY CLUSTERED 
(
	[NotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Satıs]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satıs](
	[SatisID] [int] IDENTITY(1,1) NOT NULL,
	[RefYapilacakGorevID] [int] NULL,
	[RefTeklifGorevID] [int] NULL,
 CONSTRAINT [PK_Satıs] PRIMARY KEY CLUSTERED 
(
	[SatisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SatisElemani]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatisElemani](
	[SatisElemanID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[AcikAdres] [nvarchar](50) NULL,
	[RefKategoriID] [int] NULL,
 CONSTRAINT [PK_SatisElemani] PRIMARY KEY CLUSTERED 
(
	[SatisElemanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sirket]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sirket](
	[SirketID] [int] IDENTITY(1,1) NOT NULL,
	[SirketAdi] [nvarchar](50) NULL,
	[SirketAdresi] [nvarchar](500) NULL,
	[RefKategoriID] [int] NOT NULL,
	[RefCountryID] [int] NULL,
	[RefAdminID] [int] NULL,
	[RefSatisElemaniID] [int] NULL,
	[RefMusteriID] [int] NULL,
 CONSTRAINT [PK_Sirket] PRIMARY KEY CLUSTERED 
(
	[SirketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Urun]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [nvarchar](50) NULL,
	[RefKategoriID] [int] NULL,
	[RefUrunMiktarID] [int] NULL,
	[Fiyat] [money] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrunMiktar]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunMiktar](
	[UrunMiktarID] [int] IDENTITY(1,1) NOT NULL,
	[Cesit] [nvarchar](50) NULL,
 CONSTRAINT [PK_UrunMiktar] PRIMARY KEY CLUSTERED 
(
	[UrunMiktarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UyelikBilgileri]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UyelikBilgileri](
	[UyeID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[RefCountryID] [int] NULL,
	[RerAspNetUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_UyelikBilgileri] PRIMARY KEY CLUSTERED 
(
	[UyeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YapilacakGorevler]    Script Date: 28.04.2019 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YapilacakGorevler](
	[YapilacakGorevID] [int] IDENTITY(1,1) NOT NULL,
	[RefKategoriID] [int] NULL,
	[RefSatisElemaniId] [int] NULL,
	[RefMusteriID] [int] NULL,
	[GorevBitirmeTarihi] [smalldatetime] NULL CONSTRAINT [DF_YapilacakGorevler_GorevBitirmeTarihi]  DEFAULT (getdate()),
	[Notlar] [nvarchar](500) NULL,
	[RefSirketID] [int] NULL,
 CONSTRAINT [PK_YapilacakGorevler] PRIMARY KEY CLUSTERED 
(
	[YapilacakGorevID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201904071316471_InitialCreate', N'SalesForce.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC5DA44EDC06DD5CB0CE167D5BD012ED082B51AA44651314FDB23EF493FA0B1D4AD48D175D6CC5768A051611393C331C0EC9E170E87FFFFE67FCEED1F78C071CC56E4026E6D1E8D03430B103C725AB8999D0E5F76FCC776FBFFE6A7CE1F88FC66F39DD09A38396249E98F79486A79615DBF7D847F1C877ED288883251DD9816F2127B08E0F0F7FB48E8E2C0C10266019C6F84342A8EBE3F4033EA701B1714813E45D050EF6625E0E35F314D5B8463E8E4364E38939471E8E674164E351466C1A679E8B409039F696A681080928A220E6E9C718CF691490D53C8402E4DD3D8518E896C88B3117FFB424EFDA93C363D613AB6C9843D9494C03BF27E0D109578D25365F4BC166A13A50DE0528993EB15EA70A9C98970E4E8B3E041E284064783AF522463C31AF0A166771788DE9286F38CA206711C07D09A2CFA32AE281D1B9DD41614AC7A343F6EFC098261E4D223C2138A111F20E8CDB64E1B9F6AFF8E92EF88CC9E4E468B13C79F3EA35724E5EFF804F5E557B0A7D05BA5A0114DD46418823900D2F8BFE9B86556F67890D8B6695369956C096605698C6157A7C8FC98ADEC37C397E631A33F7113B790937AE8FC48549048D6894C0E775E27968E1E1A2DE6AE4C9FE6FE07AFCEAF5205CAFD183BB4A875EE00F13278279F5017B696D7CEF86D9F4AA8DF7274E368B029F7DD7ED2BABFD340F1298AAD099404B7287A215A675E9C65669BC9D4C9A410D6FD639EAFE9B369354366F2529EBD03A332167B1EDD990CBFBBC7C3B5BDC5918C2E0A5A6C534D26470D25E35121A1F1825496938475D0D874087FECFEBE0858F5C6F8085B003177041966EE4E3A2973F05607688F496F916C531AC03CE2F28BE6F101DFE1C40F439B69308CC734E911F3E3BB7DBFB80E0EBC45F30ABDF1EAFC186E6EE4B3043360DA20BC25A6D8CF73EB03F0709BD20CE39A2F823B57340F679E7FADD010611E7CCB6711CCFC098B1330DC0C3CE012F093D39EE0DC7D6A75D3B22530FB9BEDA131156D24F3969E98DA829248F4443A6F24A9A447D1FAC5CD24DD49C542F6A46D12A2A27EB2B2A03EB2629A7D40B9A12B4CA99510DE6E7A52334BCA397C2EEBFA7B7D9E6AD5B0B2A6A9CC30A897FC60447B08C39B788521C917204BAAC1BBB7016D2E1634C9F7D6F4A39FD86BC6468566BCD867411187E36A4B0FB3F1B5231A1F8C1759857D2E1F89313037C277AF5C9AA7DCE09926D7B3AD4BAB96DE6DB590374D3E52C8E03DB4D678122F0C5C31675F9C18733DA6318596FC43808740C0CDD655B1E9440DF4CD1A86EC839F630C5C6999D0506A728B69123AB113AE4F4102CDF51158295F190BA70DF493CC1D271C41A2176088A61A6BA84CAD3C225B61B22AF554B42CB8E5B18EB7BC143AC39C721268C61AB26BA3057873F9800051F6150DA3434B62A16D76C881AAF5537E66D2E6C39EE5254622B36D9E23B6BEC92FB6FCF6298CD1ADB827136ABA48B00DA50DE2E0C949F55BA1A807870D93703154E4C1A03E52ED5560CB4AEB11D18685D252FCE40B3236AD7F117CEABFB669EF583F2F6B7F54675EDC0366BFAD833D3CC7C4F6843A1058E64F33C5FB04AFC4815873390939FCF62EEEA8A26C2C0E798D64336A5BFABF443AD6610D1889A004B436B01E59780129034A17A0897C7F21AA5E35E440FD83CEED608CBD77E01B662033276F532B442A8BF32158DB3D3E9A3E859610D9291773A2C54701406212E5EF58E77508A2E2E2B2BA68B2FDCC71BAE748C0F4683825A3C578D92F2CE0CAEA5DC34DBB5A472C8FAB8641B6949709F345ACA3B33B896B88DB62B49E114F4700B3652517D0B1F68B2E5918E62B729EAC6569622C50BC69626976A7C85C2D025AB4A6E152F31E65962D5F4FB79FF94233FC3B0EC58917954485B70A241845658A805D620E9CC8D627A8E285A2016E7993ABE44A6DC5B35CB7FCEB2BA7DCA8398EF033935FB9BDFAC4A57F7B5AD56F64538C40C3AE83387268DA22B865FDDDC60A96EC8439122703F0DBCC4277AFF4ADF3ABBBEABB6CF4A6484B125C82FF94F92B2242FB7AEF94EE322CF8961C6A8F05ED61F273D844EDBB9EF59D5B7CE1FD5A3E4E1A92A8A2E64B5B371D3B9317DC64A7410FB0F552BC2F3CC2A9E955205E0453D312A890D1258A5AE3B6A3DF7A48A59AFE98E282498542185AA1E5256D3486A42562BD6C2D368544DD19D839C385245976BBB232B5248AAD08AEA35B015328B75DD511559265560457577EC32E5445C43F778DFD21E5BD6DDB8B283ED663B9706E37916C46136BECAFD7D15A852DC138BDFD04B60BC7C2F8D497BBA5BD798B270C666C6A4C1D0AF3BB58BEFFAB2D3785BAFC7ACDD66D796F6A6DB7C3D5E3F937D56C390CE762249C1BD38E30967B9313F57B53F9E910E5A198969E46A04737A8A29F6478C6034FFC39B7A2E668B784E708588BBC431CD3238CCE3C3A363E101CEFE3C86B1E2D8F114E752DD8B98FA986D21198B3CA0C8BE47919C1AB1C1839112548A3A5F12073F4ECC3FD356A7690083FD95161F1897F147E2FE9140C55D9460E32F39D5739804FAE613D69E3E77E8AED5CBDF3F654D0F8C9B0866CCA97128E8729D11AE3F82E8254DD6740369D67E1AF1722754EDE58112559810EB3F3458B874904706B994DFF8E8F1DBBEA2291F126C84A8782C3014DE202AD43D0658074BFB10C0814F9A3E04E8D759F5C3807544D33E0A70497F30F14940F765286FB9C3AD467124DAC69294EAB935A57AA3FCCA5DEF4D52E6F546135DCEAEEE01B74106F51A96F1C2928F07DB1D15B9C58361EFD2B49F3DA1785F7288CBEC8EDDA60E6F335BB8E14EE87F9524BC07696D8A349DDDA7026FDBD67461DC3DCFA7EC97F0BB67C6C693B7769FD6BB6D63D38579F7DCD87A25EFEE99ADED6AFFDCB1A575DE42779E8A2B671569AE6354B1E0B654DB2C700E27FC450046907994D90B49756E57535E6A0BC39244CF549F54263296268EC457A26866DBAFAF7CC36FEC2CA76966AB49C56CE2CDD7FF46DE9CA699B726C1711749C2CA144355E276CB3AD69401F59292826B3D69C9416FF3591BEFD65F520EF0204AA9CD1ECD1DF1CB49F91D4425434E9D1E29BEF2752FEC9D955F5484FD3B76572504FB7D4582EDDAAE59D05C9265906FDE8244398910A1B9C21439B0A59E45D45D229B42358B31A74FBCD3B81DBBE95860E792DC24344C287419FB0BAF16F0624E4013FF348FB92EF3F8264C7FAD64882E80982E8BCDDF909F12D7730AB9678A9890068279173CA2CBC692B2C8EEEAA940BA0E484720AEBEC229BAC37EE801587C43E6E801AF231B98DF7BBC42F6531901D481B40F445DEDE37317AD22E4C71CA36C0F9F60C38EFFF8F63FFF7FF05358540000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Adminler] ON 

INSERT [dbo].[Adminler] ([AdminID], [KullaniciAdi], [Sifre], [Ad], [Soyad], [Adres], [Email]) VALUES (1, N'okan', N'12345', N'okan ', N'günerhan', N'kars', N'okan@gmail.com')
INSERT [dbo].[Adminler] ([AdminID], [KullaniciAdi], [Sifre], [Ad], [Soyad], [Adres], [Email]) VALUES (2, N'ali günerhan', N'54321', N'ali', N'deneme', N'KOCAELİ', N'ali@gmail.com')
INSERT [dbo].[Adminler] ([AdminID], [KullaniciAdi], [Sifre], [Ad], [Soyad], [Adres], [Email]) VALUES (3, N'SıddıkBozbek', N'12345', N'sıddık', N'bozbek', N'balat', N'bozh@gmail.com')
INSERT [dbo].[Adminler] ([AdminID], [KullaniciAdi], [Sifre], [Ad], [Soyad], [Adres], [Email]) VALUES (4, N'havva Günerhan', N'54321', N'hava', N'günerhan', N'KOCAELİ', N'havagunerhan@gmail.com')
SET IDENTITY_INSERT [dbo].[Adminler] OFF
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a4f34dfd-c90e-4496-966a-88b4038d985b', N'okanfun@gmail.com', 0, N'AIQilUx4W2eisqVlidG5bAWcuZ2lKEohZ2r61WSBmS5zVXJYuewVjiIog100gT16wQ==', N'29385243-e32f-4de3-b306-62d813caaa6e', NULL, 0, 0, NULL, 1, 0, N'okanfun@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b38e1ed4-7367-4af9-9880-86a021bb7e54', N'okangunerhann@gmail.com', 0, N'AMMUD/nNkNAQSd59IFjU9lodZatGiR1xqkfsZBKAxb+vR/tF9ND+foSKiCGjs9QMKg==', N'a8e0794c-9df7-4297-a143-5a792de3bc48', NULL, 0, 0, NULL, 1, 0, N'okangunerhann@gmail.com')
SET IDENTITY_INSERT [dbo].[Baglanti] ON 

INSERT [dbo].[Baglanti] ([BaglantiID], [BaglantiAd], [BaglantiSoyadi], [BaglantiEmail], [BaglantiTelefon]) VALUES (1, N'Vali', N'Ayçiçek', N'aycicek@gmail.com', N'212 6066')
SET IDENTITY_INSERT [dbo].[Baglanti] OFF
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (1, N'Afghanistan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (2, N'Aland Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (3, N'Albania')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (4, N'Algeria')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (5, N'American Samoa')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (6, N'Andorra')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (7, N'Angola')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (8, N'Anguilla')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (9, N'Antarctica')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (10, N'Antigua and Barbuda')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (11, N'Argentina')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (12, N'Armenia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (13, N'Aruba')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (14, N'Australia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (15, N'Austria')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (16, N'Azerbaijan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (17, N'Bahamas')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (18, N'Bahrain')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (19, N'Bangladesh')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (20, N'Barbados')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (21, N'Belarus')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (22, N'Belgium')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (23, N'Belize')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (24, N'Benin')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (25, N'Bermuda')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (26, N'Bhutan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (27, N'Bolivia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (28, N'Bonaire, Sint Eustatius and Saba')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (29, N'Bosnia and Herzegovina')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (30, N'Botswana')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (31, N'Bouvet Island')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (32, N'Brazil')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (33, N'British Indian Ocean Territory')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (34, N'Brunei')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (35, N'Bulgaria')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (36, N'Burkina Faso')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (37, N'Burundi')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (38, N'Cambodia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (39, N'Cameroon')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (40, N'Canada')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (41, N'Cape Verde')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (42, N'Cayman Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (43, N'Central African Republic')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (44, N'Chad')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (45, N'Chile')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (46, N'China')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (47, N'Christmas Island')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (48, N'Cocos (Keeling) Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (49, N'Colombia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (50, N'Comoros')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (51, N'Congo')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (52, N'Cook Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (53, N'Costa Rica')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (54, N'Cote d''ivoire (Ivory Coast)')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (55, N'Croatia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (56, N'Cuba')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (57, N'Curacao')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (58, N'Cyprus')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (59, N'Czech Republic')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (60, N'Democratic Republic of the Congo')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (61, N'Denmark')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (62, N'Djibouti')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (63, N'Dominica')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (64, N'Dominican Republic')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (65, N'Ecuador')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (66, N'Egypt')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (67, N'El Salvador')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (68, N'Equatorial Guinea')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (69, N'Eritrea')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (70, N'Estonia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (71, N'Ethiopia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (72, N'Falkland Islands (Malvinas)')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (73, N'Faroe Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (74, N'Fiji')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (75, N'Finland')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (76, N'France')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (77, N'French Guiana')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (78, N'French Polynesia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (79, N'French Southern Territories')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (80, N'Gabon')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (81, N'Gambia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (82, N'Georgia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (83, N'Germany')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (84, N'Ghana')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (85, N'Gibraltar')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (86, N'Greece')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (87, N'Greenland')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (88, N'Grenada')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (89, N'Guadaloupe')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (90, N'Guam')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (91, N'Guatemala')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (92, N'Guernsey')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (93, N'Guinea')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (94, N'Guinea-Bissau')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (95, N'Guyana')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (96, N'Haiti')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (97, N'Heard Island and McDonald Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (98, N'Honduras')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (99, N'Hong Kong')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (100, N'Hungary')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (101, N'Iceland')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (102, N'India')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (103, N'Indonesia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (104, N'Iran')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (105, N'Iraq')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (106, N'Ireland')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (107, N'Isle of Man')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (108, N'Israel')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (109, N'Italy')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (110, N'Jamaica')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (111, N'Japan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (112, N'Jersey')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (113, N'Jordan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (114, N'Kazakhstan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (115, N'Kenya')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (116, N'Kiribati')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (117, N'Kosovo')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (118, N'Kuwait')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (119, N'Kyrgyzstan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (120, N'Laos')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (121, N'Latvia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (122, N'Lebanon')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (123, N'Lesotho')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (124, N'Liberia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (125, N'Libya')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (126, N'Liechtenstein')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (127, N'Lithuania')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (128, N'Luxembourg')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (129, N'Macao')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (130, N'Macedonia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (131, N'Madagascar')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (132, N'Malawi')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (133, N'Malaysia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (134, N'Maldives')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (135, N'Mali')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (136, N'Malta')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (137, N'Marshall Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (138, N'Martinique')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (139, N'Mauritania')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (140, N'Mauritius')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (141, N'Mayotte')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (142, N'Mexico')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (143, N'Micronesia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (144, N'Moldava')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (145, N'Monaco')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (146, N'Mongolia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (147, N'Montenegro')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (148, N'Montserrat')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (149, N'Morocco')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (150, N'Mozambique')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (151, N'Myanmar (Burma)')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (152, N'Namibia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (153, N'Nauru')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (154, N'Nepal')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (155, N'Netherlands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (156, N'New Caledonia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (157, N'New Zealand')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (158, N'Nicaragua')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (159, N'Niger')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (160, N'Nigeria')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (161, N'Niue')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (162, N'Norfolk Island')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (163, N'North Korea')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (164, N'Northern Mariana Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (165, N'Norway')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (166, N'Oman')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (167, N'Pakistan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (168, N'Palau')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (169, N'Palestine')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (170, N'Panama')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (171, N'Papua New Guinea')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (172, N'Paraguay')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (173, N'Peru')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (174, N'Phillipines')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (175, N'Pitcairn')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (176, N'Poland')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (177, N'Portugal')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (178, N'Puerto Rico')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (179, N'Qatar')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (180, N'Reunion')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (181, N'Romania')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (182, N'Russia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (183, N'Rwanda')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (184, N'Saint Barthelemy')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (185, N'Saint Helena')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (186, N'Saint Kitts and Nevis')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (187, N'Saint Lucia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (188, N'Saint Martin')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (189, N'Saint Pierre and Miquelon')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (190, N'Saint Vincent and the Grenadines')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (191, N'Samoa')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (192, N'San Marino')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (193, N'Sao Tome and Principe')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (194, N'Saudi Arabia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (195, N'Senegal')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (196, N'Serbia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (197, N'Seychelles')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (198, N'Sierra Leone')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (199, N'Singapore')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (200, N'Sint Maarten')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (201, N'Slovakia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (202, N'Slovenia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (203, N'Solomon Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (204, N'Somalia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (205, N'South Africa')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (206, N'South Georgia and the South Sandwich Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (207, N'South Korea')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (208, N'South Sudan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (209, N'Spain')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (210, N'Sri Lanka')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (211, N'Sudan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (212, N'Suriname')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (213, N'Svalbard and Jan Mayen')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (214, N'Swaziland')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (215, N'Sweden')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (216, N'Switzerland')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (217, N'Syria')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (218, N'Taiwan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (219, N'Tajikistan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (220, N'Tanzania')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (221, N'Thailand')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (222, N'Timor-Leste (East Timor)')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (223, N'Togo')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (224, N'Tokelau')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (225, N'Tonga')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (226, N'Trinidad and Tobago')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (227, N'Tunisia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (228, N'Turkey')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (229, N'Turkmenistan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (230, N'Turks and Caicos Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (231, N'Tuvalu')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (232, N'Uganda')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (233, N'Ukraine')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (234, N'United Arab Emirates')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (235, N'United Kingdom')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (236, N'United States')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (237, N'United States Minor Outlying Islands')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (238, N'Uruguay')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (239, N'Uzbekistan')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (240, N'Vanuatu')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (241, N'Vatican City')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (242, N'Venezuela')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (243, N'Vietnam')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (244, N'Virgin Islands, British')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (245, N'Virgin Islands, US')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (246, N'Wallis and Futuna')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (247, N'Western Sahara')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (248, N'Yemen')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (249, N'Zambia')
INSERT [dbo].[Countries] ([CountryID], [CountryName]) VALUES (250, N'Zimbabwe')
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi]) VALUES (1, N'Teknoloji')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi]) VALUES (2, N'Mobil')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi]) VALUES (3, N'Gıda')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAdi]) VALUES (4, N'Akıllı Telefon')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
SET IDENTITY_INSERT [dbo].[Musteri] ON 

INSERT [dbo].[Musteri] ([MusteriID], [MusteriAd], [MusteriSoyad], [Email], [MusteriSirketiAdi], [RefBaglantiID]) VALUES (1, N'OKAN', N'GÜNERHAN', N'okangunerhann@gmail.com', N'Günerhann AŞ', 1)
SET IDENTITY_INSERT [dbo].[Musteri] OFF
SET IDENTITY_INSERT [dbo].[Satıs] ON 

INSERT [dbo].[Satıs] ([SatisID], [RefYapilacakGorevID], [RefTeklifGorevID]) VALUES (1, 2, 2)
SET IDENTITY_INSERT [dbo].[Satıs] OFF
SET IDENTITY_INSERT [dbo].[SatisElemani] ON 

INSERT [dbo].[SatisElemani] ([SatisElemanID], [AdSoyad], [Email], [AcikAdres], [RefKategoriID]) VALUES (1, N'elif', N'elif@gmail.com', N'çanakkale', 1)
INSERT [dbo].[SatisElemani] ([SatisElemanID], [AdSoyad], [Email], [AcikAdres], [RefKategoriID]) VALUES (2, N'sıddık', N'sıddık@gmail.com', N'istanbul', 2)
INSERT [dbo].[SatisElemani] ([SatisElemanID], [AdSoyad], [Email], [AcikAdres], [RefKategoriID]) VALUES (3, N'Deneme', N'okanfun@gmail.com', N'kocaeli', 2)
INSERT [dbo].[SatisElemani] ([SatisElemanID], [AdSoyad], [Email], [AcikAdres], [RefKategoriID]) VALUES (4, N'Elif Günerhan', N'elif@gmail.com', N'kocaeli', 1)
SET IDENTITY_INSERT [dbo].[SatisElemani] OFF
SET IDENTITY_INSERT [dbo].[Sirket] ON 

INSERT [dbo].[Sirket] ([SirketID], [SirketAdi], [SirketAdresi], [RefKategoriID], [RefCountryID], [RefAdminID], [RefSatisElemaniID], [RefMusteriID]) VALUES (1, N'Günerhan A.Ş', N'Kocaeli', 1, 14, 2, 1, 1)
INSERT [dbo].[Sirket] ([SirketID], [SirketAdi], [SirketAdresi], [RefKategoriID], [RefCountryID], [RefAdminID], [RefSatisElemaniID], [RefMusteriID]) VALUES (2, N'Ayvansaray Üni ', N'Balat', 1, 1, 1, 3, NULL)
INSERT [dbo].[Sirket] ([SirketID], [SirketAdi], [SirketAdresi], [RefKategoriID], [RefCountryID], [RefAdminID], [RefSatisElemaniID], [RefMusteriID]) VALUES (3, N'Sabancı', N'Kocaeli', 3, 19, 3, 3, NULL)
INSERT [dbo].[Sirket] ([SirketID], [SirketAdi], [SirketAdresi], [RefKategoriID], [RefCountryID], [RefAdminID], [RefSatisElemaniID], [RefMusteriID]) VALUES (4, N'Turkcell', N'İstanbul', 2, 228, 2, 2, NULL)
INSERT [dbo].[Sirket] ([SirketID], [SirketAdi], [SirketAdresi], [RefKategoriID], [RefCountryID], [RefAdminID], [RefSatisElemaniID], [RefMusteriID]) VALUES (5, N'Ayvansaray Üni ', N'Balat', 4, 19, 3, 2, 1)
INSERT [dbo].[Sirket] ([SirketID], [SirketAdi], [SirketAdresi], [RefKategoriID], [RefCountryID], [RefAdminID], [RefSatisElemaniID], [RefMusteriID]) VALUES (6, N'Sabancı', N'İstanbul', 1, 49, 3, 3, 1)
SET IDENTITY_INSERT [dbo].[Sirket] OFF
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [RefKategoriID], [RefUrunMiktarID], [Fiyat]) VALUES (1, N'asdfghj', 1, 2, 12.0000)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [RefKategoriID], [RefUrunMiktarID], [Fiyat]) VALUES (2, N'Xiaomi', 2, 2, 1320.0000)
INSERT [dbo].[Urun] ([UrunID], [UrunAdi], [RefKategoriID], [RefUrunMiktarID], [Fiyat]) VALUES (3, N'Bilgisayar', 1, 2, 1320.0000)
SET IDENTITY_INSERT [dbo].[Urun] OFF
SET IDENTITY_INSERT [dbo].[UrunMiktar] ON 

INSERT [dbo].[UrunMiktar] ([UrunMiktarID], [Cesit]) VALUES (1, N'Kilogram')
INSERT [dbo].[UrunMiktar] ([UrunMiktarID], [Cesit]) VALUES (2, N'Adet')
INSERT [dbo].[UrunMiktar] ([UrunMiktarID], [Cesit]) VALUES (3, N'Kasa')
INSERT [dbo].[UrunMiktar] ([UrunMiktarID], [Cesit]) VALUES (4, N'Litre')
SET IDENTITY_INSERT [dbo].[UrunMiktar] OFF
SET IDENTITY_INSERT [dbo].[UyelikBilgileri] ON 

INSERT [dbo].[UyelikBilgileri] ([UyeID], [KullaniciAdi], [Ad], [Soyad], [Email], [Telefon], [RefCountryID], [RerAspNetUserID]) VALUES (1, N'okan günerhan', N'okan', N'günerhan', N'okangunerhann@gmail.com', N'7654324444', 20, N'b38e1ed4-7367-4af9-9880-86a021bb7e54')
SET IDENTITY_INSERT [dbo].[UyelikBilgileri] OFF
SET IDENTITY_INSERT [dbo].[YapilacakGorevler] ON 

INSERT [dbo].[YapilacakGorevler] ([YapilacakGorevID], [RefKategoriID], [RefSatisElemaniId], [RefMusteriID], [GorevBitirmeTarihi], [Notlar], [RefSirketID]) VALUES (1, 1, 2, NULL, CAST(N'2018-02-03 00:00:00' AS SmallDateTime), N'ythgrfd', 2)
INSERT [dbo].[YapilacakGorevler] ([YapilacakGorevID], [RefKategoriID], [RefSatisElemaniId], [RefMusteriID], [GorevBitirmeTarihi], [Notlar], [RefSirketID]) VALUES (2, 1, 3, 2, CAST(N'2019-01-04 00:00:00' AS SmallDateTime), N'ythgrfd', 1)
SET IDENTITY_INSERT [dbo].[YapilacakGorevler] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 28.04.2019 14:28:32 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 28.04.2019 14:28:32 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 28.04.2019 14:28:32 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 28.04.2019 14:28:32 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 28.04.2019 14:28:32 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 28.04.2019 14:28:32 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Musteri]  WITH CHECK ADD  CONSTRAINT [FK_Musteri_Baglanti] FOREIGN KEY([RefBaglantiID])
REFERENCES [dbo].[Baglanti] ([BaglantiID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Musteri] CHECK CONSTRAINT [FK_Musteri_Baglanti]
GO
ALTER TABLE [dbo].[Satıs]  WITH CHECK ADD  CONSTRAINT [FK_Satıs_YapilacakGorevler] FOREIGN KEY([RefYapilacakGorevID])
REFERENCES [dbo].[YapilacakGorevler] ([YapilacakGorevID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Satıs] CHECK CONSTRAINT [FK_Satıs_YapilacakGorevler]
GO
ALTER TABLE [dbo].[Sirket]  WITH CHECK ADD  CONSTRAINT [FK_Sirket_Adminler] FOREIGN KEY([RefAdminID])
REFERENCES [dbo].[Adminler] ([AdminID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sirket] CHECK CONSTRAINT [FK_Sirket_Adminler]
GO
ALTER TABLE [dbo].[Sirket]  WITH CHECK ADD  CONSTRAINT [FK_Sirket_Countries] FOREIGN KEY([RefCountryID])
REFERENCES [dbo].[Countries] ([CountryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sirket] CHECK CONSTRAINT [FK_Sirket_Countries]
GO
ALTER TABLE [dbo].[Sirket]  WITH CHECK ADD  CONSTRAINT [FK_Sirket_Kategori] FOREIGN KEY([RefKategoriID])
REFERENCES [dbo].[Kategori] ([KategoriID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sirket] CHECK CONSTRAINT [FK_Sirket_Kategori]
GO
ALTER TABLE [dbo].[Sirket]  WITH CHECK ADD  CONSTRAINT [FK_Sirket_Musteri] FOREIGN KEY([RefMusteriID])
REFERENCES [dbo].[Musteri] ([MusteriID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sirket] CHECK CONSTRAINT [FK_Sirket_Musteri]
GO
ALTER TABLE [dbo].[Sirket]  WITH CHECK ADD  CONSTRAINT [FK_Sirket_SatisElemani] FOREIGN KEY([RefSatisElemaniID])
REFERENCES [dbo].[SatisElemani] ([SatisElemanID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sirket] CHECK CONSTRAINT [FK_Sirket_SatisElemani]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Kategori] FOREIGN KEY([RefKategoriID])
REFERENCES [dbo].[Kategori] ([KategoriID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Kategori]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_UrunMiktar] FOREIGN KEY([RefUrunMiktarID])
REFERENCES [dbo].[UrunMiktar] ([UrunMiktarID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_UrunMiktar]
GO
ALTER TABLE [dbo].[UyelikBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_UyelikBilgileri_AspNetUsers] FOREIGN KEY([RerAspNetUserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UyelikBilgileri] CHECK CONSTRAINT [FK_UyelikBilgileri_AspNetUsers]
GO
ALTER TABLE [dbo].[UyelikBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_UyelikBilgileri_Countries] FOREIGN KEY([RefCountryID])
REFERENCES [dbo].[Countries] ([CountryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UyelikBilgileri] CHECK CONSTRAINT [FK_UyelikBilgileri_Countries]
GO
ALTER TABLE [dbo].[YapilacakGorevler]  WITH CHECK ADD  CONSTRAINT [FK_YapilacakGorevler_SatisElemani1] FOREIGN KEY([RefSatisElemaniId])
REFERENCES [dbo].[SatisElemani] ([SatisElemanID])
GO
ALTER TABLE [dbo].[YapilacakGorevler] CHECK CONSTRAINT [FK_YapilacakGorevler_SatisElemani1]
GO
ALTER TABLE [dbo].[YapilacakGorevler]  WITH CHECK ADD  CONSTRAINT [FK_YapilacakGorevler_Sirket1] FOREIGN KEY([RefSirketID])
REFERENCES [dbo].[Sirket] ([SirketID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[YapilacakGorevler] CHECK CONSTRAINT [FK_YapilacakGorevler_Sirket1]
GO
USE [master]
GO
ALTER DATABASE [AyvansarayBitirmeProjem] SET  READ_WRITE 
GO
