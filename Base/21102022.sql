USE [master]
GO
/****** Object:  Database [Sistema]    Script Date: 21/10/2022 20:05:17 ******/
CREATE DATABASE [Sistema] ON  PRIMARY 
( NAME = N'Sistema', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Sistema.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sistema_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Sistema_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 COLLATE Modern_Spanish_CI_AS
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sistema].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sistema] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sistema] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sistema] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sistema] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sistema] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sistema] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sistema] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sistema] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sistema] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sistema] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sistema] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sistema] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sistema] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sistema] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sistema] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sistema] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sistema] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sistema] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sistema] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sistema] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sistema] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sistema] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sistema] SET RECOVERY FULL 
GO
ALTER DATABASE [Sistema] SET  MULTI_USER 
GO
ALTER DATABASE [Sistema] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sistema] SET DB_CHAINING OFF 
GO
USE [Sistema]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EMP_ID] [numeric](18, 0) NOT NULL,
	[EMP_DNI] [int] NULL,
	[EMP_APE] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[EMP_NOM] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[EMP_DIR] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[EMP_SEC_ID] [int] NOT NULL,
	[EMP_DAT_NAC] [datetime] NULL,
	[EMP_CRE_DAT] [datetime] NULL,
	[EMP_CRE_ID] [int] NOT NULL,
	[EMP_BAJ_DAT] [datetime] NULL,
	[EMP_BAJ_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fichadas]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fichadas](
	[FIC_ID] [int] IDENTITY(1,1) NOT NULL,
	[FIC_EMP_ID] [numeric](18, 0) NOT NULL,
	[FIC_DAT] [datetime] NULL,
	[FIC_BAJ_DAT] [datetime] NULL,
	[FIC_BAJ_USR] [datetime] NULL,
	[FIC_ALT_PC] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_Fichadas] PRIMARY KEY CLUSTERED 
(
	[FIC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[PAIS_ID] [int] IDENTITY(1,1) NOT NULL,
	[PAIS_NOM] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[PAIS_CRE_DAT] [datetime] NOT NULL,
	[PAIS_CRE_ID] [int] NOT NULL,
	[PAIS_BAJ_DAT] [datetime] NULL,
	[PAIS_BAJ_ID] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[PAIS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sectores]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sectores](
	[SEC_ID] [int] IDENTITY(1,1) NOT NULL,
	[SEC_NOM] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[SEC_CRE_DAT] [datetime] NOT NULL,
	[SEC_CRE_ID] [int] NOT NULL,
	[SEC_BAJ_DAT] [datetime] NULL,
	[SEC_BAJ_ID] [int] NULL,
 CONSTRAINT [PK_Sectores] PRIMARY KEY CLUSTERED 
(
	[SEC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[USR_ID] [int] IDENTITY(1,1) NOT NULL,
	[USR_NIC] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[USR_APE] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[USR_NOM] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[USR_PAS] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[USR_CRE_DAT] [datetime] NOT NULL,
	[USR_CRE_ID] [int] NOT NULL,
	[USR_BAJ_DAT] [datetime] NULL,
	[USR_BAJ_ID] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[USR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Empleados] ([EMP_ID], [EMP_DNI], [EMP_APE], [EMP_NOM], [EMP_DIR], [EMP_SEC_ID], [EMP_DAT_NAC], [EMP_CRE_DAT], [EMP_CRE_ID], [EMP_BAJ_DAT], [EMP_BAJ_ID]) VALUES (CAST(10005002 AS Numeric(18, 0)), 30123455, N'Medina', N'Rodolfo', N'Calle falsa 123', 2, CAST(N'1990-01-01T00:00:00.000' AS DateTime), CAST(N'2022-10-16T00:00:00.000' AS DateTime), 1008, NULL, NULL)
INSERT [dbo].[Empleados] ([EMP_ID], [EMP_DNI], [EMP_APE], [EMP_NOM], [EMP_DIR], [EMP_SEC_ID], [EMP_DAT_NAC], [EMP_CRE_DAT], [EMP_CRE_ID], [EMP_BAJ_DAT], [EMP_BAJ_ID]) VALUES (CAST(77940735 AS Numeric(18, 0)), 62226665, N'philips', N'Morti', N'21312', 2, CAST(N'1990-01-02T00:00:00.000' AS DateTime), CAST(N'2022-10-22T00:00:00.000' AS DateTime), 1008, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Fichadas] ON 

INSERT [dbo].[Fichadas] ([FIC_ID], [FIC_EMP_ID], [FIC_DAT], [FIC_BAJ_DAT], [FIC_BAJ_USR], [FIC_ALT_PC]) VALUES (34, CAST(10005002 AS Numeric(18, 0)), CAST(N'2022-10-20T20:07:10.313' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Fichadas] ([FIC_ID], [FIC_EMP_ID], [FIC_DAT], [FIC_BAJ_DAT], [FIC_BAJ_USR], [FIC_ALT_PC]) VALUES (35, CAST(10005002 AS Numeric(18, 0)), CAST(N'2022-10-20T20:17:34.230' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Fichadas] ([FIC_ID], [FIC_EMP_ID], [FIC_DAT], [FIC_BAJ_DAT], [FIC_BAJ_USR], [FIC_ALT_PC]) VALUES (36, CAST(10005002 AS Numeric(18, 0)), CAST(N'2022-10-20T20:17:51.480' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Fichadas] ([FIC_ID], [FIC_EMP_ID], [FIC_DAT], [FIC_BAJ_DAT], [FIC_BAJ_USR], [FIC_ALT_PC]) VALUES (37, CAST(10005002 AS Numeric(18, 0)), CAST(N'2022-10-20T20:17:58.240' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Fichadas] ([FIC_ID], [FIC_EMP_ID], [FIC_DAT], [FIC_BAJ_DAT], [FIC_BAJ_USR], [FIC_ALT_PC]) VALUES (38, CAST(10005002 AS Numeric(18, 0)), CAST(N'2022-10-20T20:21:15.460' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Fichadas] ([FIC_ID], [FIC_EMP_ID], [FIC_DAT], [FIC_BAJ_DAT], [FIC_BAJ_USR], [FIC_ALT_PC]) VALUES (39, CAST(10005002 AS Numeric(18, 0)), CAST(N'2022-10-20T20:21:22.180' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Fichadas] ([FIC_ID], [FIC_EMP_ID], [FIC_DAT], [FIC_BAJ_DAT], [FIC_BAJ_USR], [FIC_ALT_PC]) VALUES (40, CAST(10005002 AS Numeric(18, 0)), CAST(N'2022-10-20T20:25:38.780' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Fichadas] ([FIC_ID], [FIC_EMP_ID], [FIC_DAT], [FIC_BAJ_DAT], [FIC_BAJ_USR], [FIC_ALT_PC]) VALUES (41, CAST(77940735 AS Numeric(18, 0)), CAST(N'2022-10-20T20:25:45.177' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Fichadas] ([FIC_ID], [FIC_EMP_ID], [FIC_DAT], [FIC_BAJ_DAT], [FIC_BAJ_USR], [FIC_ALT_PC]) VALUES (42, CAST(77940735 AS Numeric(18, 0)), CAST(N'2022-10-20T20:37:01.870' AS DateTime), NULL, NULL, N'DESKTOP-D5FL463')
SET IDENTITY_INSERT [dbo].[Fichadas] OFF
GO
SET IDENTITY_INSERT [dbo].[Sectores] ON 

INSERT [dbo].[Sectores] ([SEC_ID], [SEC_NOM], [SEC_CRE_DAT], [SEC_CRE_ID], [SEC_BAJ_DAT], [SEC_BAJ_ID]) VALUES (2, N'Administracion', CAST(N'2022-10-16T00:00:00.000' AS DateTime), 1008, NULL, NULL)
INSERT [dbo].[Sectores] ([SEC_ID], [SEC_NOM], [SEC_CRE_DAT], [SEC_CRE_ID], [SEC_BAJ_DAT], [SEC_BAJ_ID]) VALUES (3, N'Gerencia', CAST(N'2022-10-16T00:00:00.000' AS DateTime), 1008, NULL, NULL)
INSERT [dbo].[Sectores] ([SEC_ID], [SEC_NOM], [SEC_CRE_DAT], [SEC_CRE_ID], [SEC_BAJ_DAT], [SEC_BAJ_ID]) VALUES (4, N'Mantenimiento', CAST(N'2022-10-16T00:00:00.000' AS DateTime), 1008, NULL, NULL)
INSERT [dbo].[Sectores] ([SEC_ID], [SEC_NOM], [SEC_CRE_DAT], [SEC_CRE_ID], [SEC_BAJ_DAT], [SEC_BAJ_ID]) VALUES (5, N'Limpieza', CAST(N'2022-10-16T00:00:00.000' AS DateTime), 1008, NULL, NULL)
INSERT [dbo].[Sectores] ([SEC_ID], [SEC_NOM], [SEC_CRE_DAT], [SEC_CRE_ID], [SEC_BAJ_DAT], [SEC_BAJ_ID]) VALUES (6, N'Ventas', CAST(N'2022-10-16T00:00:00.000' AS DateTime), 1008, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sectores] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([USR_ID], [USR_NIC], [USR_APE], [USR_NOM], [USR_PAS], [USR_CRE_DAT], [USR_CRE_ID], [USR_BAJ_DAT], [USR_BAJ_ID]) VALUES (1008, N'asd', N'asd', N'asd', N'123123', CAST(N'2022-09-20T13:00:00.000' AS DateTime), 1, CAST(N'2022-09-20T13:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Usuarios] ([USR_ID], [USR_NIC], [USR_APE], [USR_NOM], [USR_PAS], [USR_CRE_DAT], [USR_CRE_ID], [USR_BAJ_DAT], [USR_BAJ_ID]) VALUES (1009, N'PJUAN', N'PEREZ', N'JUAN', N'123', CAST(N'2022-09-29T20:29:13.560' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Usuarios] ([USR_ID], [USR_NIC], [USR_APE], [USR_NOM], [USR_PAS], [USR_CRE_DAT], [USR_CRE_ID], [USR_BAJ_DAT], [USR_BAJ_ID]) VALUES (1010, N'RODO', N'MEDINA', N'NICOLAS', N'123', CAST(N'2022-09-29T20:32:49.640' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Usuarios] ([USR_ID], [USR_NIC], [USR_APE], [USR_NOM], [USR_PAS], [USR_CRE_DAT], [USR_CRE_ID], [USR_BAJ_DAT], [USR_BAJ_ID]) VALUES (1011, N'GMARTA', N'GOMEZ', N'MARTA', N'123', CAST(N'2022-10-13T20:16:08.930' AS DateTime), 1010, CAST(N'2022-10-20T19:58:02.620' AS DateTime), 1010)
INSERT [dbo].[Usuarios] ([USR_ID], [USR_NIC], [USR_APE], [USR_NOM], [USR_PAS], [USR_CRE_DAT], [USR_CRE_ID], [USR_BAJ_DAT], [USR_BAJ_ID]) VALUES (1012, N'ZLUDMILA', N'ZAEN', N'LUDMILA', N'1234', CAST(N'2022-10-16T00:19:38.427' AS DateTime), 1010, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Sectores] FOREIGN KEY([EMP_SEC_ID])
REFERENCES [dbo].[Sectores] ([SEC_ID])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Sectores]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Usuarios] FOREIGN KEY([EMP_CRE_ID])
REFERENCES [dbo].[Usuarios] ([USR_ID])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Usuarios]
GO
ALTER TABLE [dbo].[Pais]  WITH CHECK ADD  CONSTRAINT [FK_Pais_Usuarios] FOREIGN KEY([PAIS_CRE_ID])
REFERENCES [dbo].[Usuarios] ([USR_ID])
GO
ALTER TABLE [dbo].[Pais] CHECK CONSTRAINT [FK_Pais_Usuarios]
GO
ALTER TABLE [dbo].[Sectores]  WITH CHECK ADD  CONSTRAINT [FK_Sectores_Usuarios] FOREIGN KEY([SEC_CRE_ID])
REFERENCES [dbo].[Usuarios] ([USR_ID])
GO
ALTER TABLE [dbo].[Sectores] CHECK CONSTRAINT [FK_Sectores_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[SP_EMP_GET_NAME]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_EMP_GET_NAME]
@emp_id int
as
select emp_ape +', '+ emp_nom
from empleados
where emp_id=@emp_id
GO
/****** Object:  StoredProcedure [dbo].[SP_FIC_INS]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_FIC_INS]

@FIC_EMP_ID int,
@FIC_ALT_PC varchar(50)

as

insert  Fichadas(FIC_EMP_ID,FIC_DAT,FIC_ALT_PC)
values (@FIC_EMP_ID,getdate(),@FIC_ALT_PC)
GO
/****** Object:  StoredProcedure [dbo].[SP_USU_DEL]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_USU_DEL]
@USR_ID int,
@USR_BAJ_ID int
as
update Usuarios 
set USR_BAJ_DAT=getdate(),USR_BAJ_ID=@USR_BAJ_ID
where USR_ID=@USR_ID 
GO
/****** Object:  StoredProcedure [dbo].[SP_USU_GET_LOG]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_USU_GET_LOG]
@USR_NIC varchar(50),
@USR_PAS varchar(50)
as

select USR_NIC,USR_APE,USR_NOM,USR_ID
from Usuarios
where USR_NIC=@USR_NIC  and 
USR_PAS=@USR_PAS and usr_baj_dat is null and usr_baj_id is null
GO
/****** Object:  StoredProcedure [dbo].[SP_USU_INS]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_USU_INS]

@USR_NIC varchar(50),
@USR_APE varchar(50),
@USR_NOM varchar(50),
@USR_PAS varchar(50),
@USR_CRE_ID int

as

insert  Usuarios(USR_NIC,USR_APE,USR_NOM,USR_PAS,USR_CRE_DAT,USR_CRE_ID)
values (@USR_NIC,@USR_APE,@USR_NOM,@USR_PAS,getdate(),@USR_CRE_ID)

GO
/****** Object:  StoredProcedure [dbo].[SP_USU_LIST]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_USU_LIST]
as
select USR_ID as 'ID', USR_NIC as 'USUARIO',USR_APE as 'APELLIDO' ,USR_NOM as 'NOMBRE',USR_CRE_DAT as 'FECHA DE CREACION',  usr_pas
from Usuarios 
where USR_BAJ_DAT is null 
and usr_baj_id is null
GO
/****** Object:  StoredProcedure [dbo].[SP_USU_LIST_ELI]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_USU_LIST_ELI]
as
select USR_ID as 'ID', USR_NIC as 'USUARIO',USR_APE as 'APELLIDO' ,USR_NOM as 'NOMBRE',
USR_CRE_DAT as 'FECHA DE CREACION',usr_pas
from Usuarios 
where USR_BAJ_DAT is not null 
and usr_baj_id is not null

GO
/****** Object:  StoredProcedure [dbo].[SP_USU_REC]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_USU_REC]
@USR_ID int
as
update Usuarios 
set USR_BAJ_DAT=NULL,USR_BAJ_ID=NULL
where USR_ID=@USR_ID 
GO
/****** Object:  StoredProcedure [dbo].[SP_USU_UPD]    Script Date: 21/10/2022 20:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_USU_UPD]
@USR_ID int,
@USR_NIC varchar(50),
@USR_APE varchar(50),
@USR_NOM varchar(50),
@USR_PAS varchar(50)
as
update Usuarios
set USR_NIC=@USR_NIC,USR_APE=@USR_APE,USR_NOM=@USR_NOM,USR_PAS=@USR_PAS
where USR_ID=@USR_ID


GO
USE [master]
GO
ALTER DATABASE [Sistema] SET  READ_WRITE 
GO
