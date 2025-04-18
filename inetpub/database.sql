USE [master]
GO
/****** Object:  Database [tarecha_spasial]    Script Date: 04/26/2013 07:00:58 ******/
CREATE DATABASE [tarecha_spasial] ON  PRIMARY 
( NAME = N'tarecha_spasial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\tarecha_spasial.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tarecha_spasial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\tarecha_spasial_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tarecha_spasial] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tarecha_spasial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tarecha_spasial] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [tarecha_spasial] SET ANSI_NULLS OFF
GO
ALTER DATABASE [tarecha_spasial] SET ANSI_PADDING OFF
GO
ALTER DATABASE [tarecha_spasial] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [tarecha_spasial] SET ARITHABORT OFF
GO
ALTER DATABASE [tarecha_spasial] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [tarecha_spasial] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [tarecha_spasial] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [tarecha_spasial] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [tarecha_spasial] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [tarecha_spasial] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [tarecha_spasial] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [tarecha_spasial] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [tarecha_spasial] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [tarecha_spasial] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [tarecha_spasial] SET  DISABLE_BROKER
GO
ALTER DATABASE [tarecha_spasial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [tarecha_spasial] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [tarecha_spasial] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [tarecha_spasial] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [tarecha_spasial] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [tarecha_spasial] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [tarecha_spasial] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [tarecha_spasial] SET  READ_WRITE
GO
ALTER DATABASE [tarecha_spasial] SET RECOVERY SIMPLE
GO
ALTER DATABASE [tarecha_spasial] SET  MULTI_USER
GO
ALTER DATABASE [tarecha_spasial] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [tarecha_spasial] SET DB_CHAINING OFF
GO
USE [tarecha_spasial]
GO
/****** Object:  Table [dbo].[tb_kategori]    Script Date: 04/26/2013 07:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_kategori](
	[id_kategori] [int] IDENTITY(1,1) NOT NULL,
	[kategori] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_kategori] PRIMARY KEY CLUSTERED 
(
	[id_kategori] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_tb_kategori] UNIQUE NONCLUSTERED 
(
	[kategori] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_kategori] ON
INSERT [dbo].[tb_kategori] ([id_kategori], [kategori]) VALUES (25, N'Gedung')
INSERT [dbo].[tb_kategori] ([id_kategori], [kategori]) VALUES (22, N'Gunung')
INSERT [dbo].[tb_kategori] ([id_kategori], [kategori]) VALUES (23, N'Pulau')
INSERT [dbo].[tb_kategori] ([id_kategori], [kategori]) VALUES (24, N'Selat')
INSERT [dbo].[tb_kategori] ([id_kategori], [kategori]) VALUES (26, N'Tambang')
SET IDENTITY_INSERT [dbo].[tb_kategori] OFF
/****** Object:  Table [dbo].[tb_lokasi]    Script Date: 04/26/2013 07:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_lokasi](
	[id_lokasi] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NOT NULL,
	[latitude] [real] NOT NULL,
	[longitude] [real] NOT NULL,
	[latitude2] [real] NULL,
	[longitude2] [real] NULL,
	[radius] [int] NULL,
	[algoritma] [char](3) NOT NULL,
	[id_kategori] [int] NOT NULL,
 CONSTRAINT [PK_tb_lokasi] PRIMARY KEY CLUSTERED 
(
	[id_lokasi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_lokasi] ON
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (39, N'Pulau Sempu', -8.438431, 112.690308, NULL, NULL, 150, N'RHD', 23)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (41, N'Gunung Semeru', -8.107833, 112.9223, NULL, NULL, 150, N'RHD', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (42, N'Gunung Bromo', -7.931576, 112.93631, -8.005824, 113.010857, NULL, N'RHD', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (43, N'Gunung Panderman', -7.904006, 112.49649, NULL, NULL, 35, N'RHD', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (44, N'Gunung Arjuna', -7.76504, 112.589722, NULL, NULL, 150, N'BF ', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (45, N'Gunung Raung', -8.119251, 114.055206, NULL, NULL, 150, N'BF ', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (46, N'Krakatau', -6.101361, 105.424484, NULL, NULL, 40, N'RHD', 23)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (47, N'Anak Krakatau', -6.101361, 105.424484, NULL, NULL, 40, N'RHD', 23)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (55, N'Tambang Grasberg', -4.0568, 137.113, NULL, NULL, 50, N'RHD', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (56, N'Kampus UIN', -7.947739, 112.606262, -7.954366, 112.609131, NULL, N'RHD', 25)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (57, N'Gunung Argopuro', -7.964478, 113.566338, NULL, NULL, 150, N'RHD', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (58, N'Kampus 3 UMM', -7.918508, 112.594727, -7.925712, 112.601753, NULL, N'RHD', 25)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (59, N'Gunung Gede', -6.792024, 106.984215, NULL, NULL, 100, N'RHD', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (60, N'Gunung Rinjani', -8.409763, 116.459106, NULL, NULL, 250, N'RHD', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (61, N'Gunung Rinjani', -8.373497, 116.375778, -8.434475, 116.4879, NULL, N'RHD', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (62, N'Gunung Ijen', -8.06673, 114.250031, NULL, NULL, 100, N'RHD', 22)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (63, N'Tambang Grasberg', -4.0568, 137.113, NULL, NULL, 50, N'RHD', 26)
INSERT [dbo].[tb_lokasi] ([id_lokasi], [nama], [latitude], [longitude], [latitude2], [longitude2], [radius], [algoritma], [id_kategori]) VALUES (64, N'PLTU Paiton', -7.703044, 113.558846, -7.727059, 113.597282, NULL, N'RHD', 25)
SET IDENTITY_INSERT [dbo].[tb_lokasi] OFF
/****** Object:  View [dbo].[view_lokasi]    Script Date: 04/26/2013 07:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_lokasi]
AS
SELECT     dbo.tb_lokasi.nama, dbo.tb_lokasi.latitude, dbo.tb_lokasi.longitude, dbo.tb_lokasi.latitude2, dbo.tb_lokasi.longitude2, dbo.tb_lokasi.radius, dbo.tb_lokasi.algoritma, 
                      dbo.tb_kategori.kategori, dbo.tb_lokasi.id_lokasi
FROM         dbo.tb_lokasi INNER JOIN
                      dbo.tb_kategori ON dbo.tb_lokasi.id_kategori = dbo.tb_kategori.id_kategori
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_lokasi"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 174
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_kategori"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 95
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_lokasi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_lokasi'
GO
/****** Object:  ForeignKey [FK_tb_lokasi_tb_kategori]    Script Date: 04/26/2013 07:00:59 ******/
ALTER TABLE [dbo].[tb_lokasi]  WITH CHECK ADD  CONSTRAINT [FK_tb_lokasi_tb_kategori] FOREIGN KEY([id_kategori])
REFERENCES [dbo].[tb_kategori] ([id_kategori])
GO
ALTER TABLE [dbo].[tb_lokasi] CHECK CONSTRAINT [FK_tb_lokasi_tb_kategori]
GO
