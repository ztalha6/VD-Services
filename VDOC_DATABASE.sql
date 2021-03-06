USE [UserDetails]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[ModelNo] [nvarchar](50) NULL,
	[RegistrationNo] [nvarchar](50) NULL,
	[ShowroomAddress] [nvarchar](50) NULL,
	[StartingMileage] [int] NULL,
	[CurrentMileage] [int] NULL,
	[NextOil] [int] NULL,
	[NextTyre] [int] NULL,
	[NextFuel] [int] NULL,
	[NextTuning] [int] NULL,
	[NextFilter] [int] NULL,
	[NextPlug] [int] NULL,
	[InsertedBy] [nvarchar](max) NULL,
	[InsertedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Cars_1] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maintenance]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maintenance](
	[MaintenanceId] [int] NOT NULL,
	[CarId] [int] NULL,
	[MaintenanceTypeId] [int] NULL,
	[Mieage] [int] NULL,
	[InsertedBy] [nvarchar](max) NULL,
	[InsertedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaintenanceTypes]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaintenanceTypes](
	[MaintenanceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[MaintenanceType] [nvarchar](max) NULL,
 CONSTRAINT [PK_MaintenanceTypes] PRIMARY KEY CLUSTERED 
(
	[MaintenanceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mechanics]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mechanics](
	[MechanicID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[InsertedBy] [nvarchar](max) NULL,
	[InsertedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Mechanics] PRIMARY KEY CLUSTERED 
(
	[MechanicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationLogs]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationLogs](
	[NotificationLogId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[CarId] [int] NOT NULL,
	[Type] [nvarchar](50) NULL,
	[IsSend] [bit] NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK_NotificationLogs] PRIMARY KEY CLUSTERED 
(
	[NotificationLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[IsSend] [bit] NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Type] [nvarchar](50) NOT NULL,
	[Mileage] [int] NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trackers]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trackers](
	[TrackerID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[CarId] [int] NULL,
	[Company] [nvarchar](50) NULL,
	[ModelNo] [nvarchar](50) NULL,
	[IEMINo] [nvarchar](50) NULL,
	[DateofPurchase] [nvarchar](50) NULL,
	[InsertedBy] [nvarchar](max) NULL,
	[InsertedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Trackers] PRIMARY KEY CLUSTERED 
(
	[TrackerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLocation]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLocation](
	[email] [nvarchar](50) NOT NULL,
	[longitude] [int] NULL,
	[latitude] [int] NULL,
 CONSTRAINT [PK_UserLocation] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[email] [nvarchar](50) NOT NULL,
	[paswword] [nvarchar](50) NULL,
	[firstName] [nvarchar](max) NULL,
	[lastName] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[InsertedBy] [nvarchar](max) NULL,
	[InsertedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarID], [Email], [Company], [ModelNo], [RegistrationNo], [ShowroomAddress], [StartingMileage], [CurrentMileage], [NextOil], [NextTyre], [NextFuel], [NextTuning], [NextFilter], [NextPlug], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'bari@gmail.com', N'Toyota', N'honda gli', N'ER2211', N'house no. asdasdasdad ', NULL, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([CarID], [Email], [Company], [ModelNo], [RegistrationNo], [ShowroomAddress], [StartingMileage], [CurrentMileage], [NextOil], [NextTyre], [NextFuel], [NextTuning], [NextFilter], [NextPlug], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'talha@gmail.com', N'Toyota', N'honda', N'as7711', N'house no. asdasdasdad ', 4456, 5130, 333, 444, 555, 666, 777, 888, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([CarID], [Email], [Company], [ModelNo], [RegistrationNo], [ShowroomAddress], [StartingMileage], [CurrentMileage], [NextOil], [NextTyre], [NextFuel], [NextTuning], [NextFilter], [NextPlug], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (1018, N'yyy@gmail.com', N'Honda', N'Civic', N'asad23', N'sdfdsfs43', 1, 1, 2, 3, 4, 5, 6, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([CarID], [Email], [Company], [ModelNo], [RegistrationNo], [ShowroomAddress], [StartingMileage], [CurrentMileage], [NextOil], [NextTyre], [NextFuel], [NextTuning], [NextFilter], [NextPlug], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (1021, N'ttt@gmail.com', N'adasdasd', N'asdasda3', N'3443dd', N'asdasd333', 1000, 1191, 1500, 3000, 1200, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([CarID], [Email], [Company], [ModelNo], [RegistrationNo], [ShowroomAddress], [StartingMileage], [CurrentMileage], [NextOil], [NextTyre], [NextFuel], [NextTuning], [NextFilter], [NextPlug], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (1026, N'eee@gmail.com', N'sfsdfsdfs', N'sdfsdf44', N'34234edd', N'sdfsdf4', 233, 4566, 433, 6566, 4766, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([CarID], [Email], [Company], [ModelNo], [RegistrationNo], [ShowroomAddress], [StartingMileage], [CurrentMileage], [NextOil], [NextTyre], [NextFuel], [NextTuning], [NextFilter], [NextPlug], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (1030, N'jb@gmail.com', N'toyota', N'asss', N'asasa333', N'khi', 1, 1, 4, 2, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([CarID], [Email], [Company], [ModelNo], [RegistrationNo], [ShowroomAddress], [StartingMileage], [CurrentMileage], [NextOil], [NextTyre], [NextFuel], [NextTuning], [NextFilter], [NextPlug], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (1031, N'hola@gmail.com', N'hogo', N'asasd', N'34252s', N'as3', 1, 1, 4, 2, 6, 2, 2, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([CarID], [Email], [Company], [ModelNo], [RegistrationNo], [ShowroomAddress], [StartingMileage], [CurrentMileage], [NextOil], [NextTyre], [NextFuel], [NextTuning], [NextFilter], [NextPlug], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (1032, N'ff@gmail.com', N'sdfs', N'dsfd', N's23', N'khi', 2, 2, 3, 3, 4, 5, 6, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cars] ([CarID], [Email], [Company], [ModelNo], [RegistrationNo], [ShowroomAddress], [StartingMileage], [CurrentMileage], [NextOil], [NextTyre], [NextFuel], [NextTuning], [NextFilter], [NextPlug], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (1033, N'qq@gmail.com', N'dfgdf', N'dfgfd', N'3234242', N'khi', 3, 3, 10, 5, 4, 5, 6, 7, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Mechanics] ON 

INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Manzoor', N'Auto Worskhop', N'03362462131', NULL, 24.9081285, 67.0772594, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Naseer', N'Auto Worskhop', N'03032508258', NULL, 24.9387643, 67.1554043, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Jeewan', N'Auto Worskhop', N'03032508258', NULL, 24.9445562, 67.1475125, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Ashar', N'Auto Worskhop', N'03032508258', NULL, 24.9105923, 67.0443976, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Kareem', N'Auto Worskhop', N'03032508258', NULL, 24.9192358, 67.0507186, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'Jannat Ustad', N'Auto Worskhop', N'03032508258', NULL, 24.9363932, 67.0539088, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'Irshad', N'Auto Worskhop', N'03032508258', NULL, 24.9176191, 67.0249325, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'Auto Solutions', N'Car Worskhop', N'03032508258', NULL, 24.9328215, 67.1010251, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, N'Salman', N'Auto Worskhop', N'03032508258', NULL, 24.9683723, 67.0641464, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, N'Road Link', N'Auto Worskhop', N'03032508258', NULL, 24.8209343, 67.081977, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, N'Team', N'Mechanics', N'03032508258', NULL, 24.957102, 67.0566338, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (12, N'Car', N'Worskhop', N'03032508258', NULL, 24.9627219, 67.0672423, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (13, N'F.B', N'Auto Worskhop', N'03032508258', NULL, 24.8349524, 67.0672207, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (14, N'Jehangir', N'Auto Worskhop', N'03032508258', NULL, 24.9772194, 67.0635945, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (15, N'Rauf', N'Auto Worskhop', N'03032508258', NULL, 24.9718418, 67.0608436, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (16, N'Shahnawaz', N'Auto Worskhop', N'03032508258', NULL, 24.9377163, 67.0547587, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (17, N'Ghazi', N'Autos', N'03032508258', NULL, 24.8455796, 67.0527636, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (18, N'Manzoor', N'Auto Workshop', N'03362462131', NULL, 24.9081285, 67.0772594, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (19, N'Karamat', N'Car Mechanic', N'03362462131', NULL, 24.9623864, 67.0674653, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (20, N'Saleem', N'Autos', N'03362462131', NULL, 24.9555541, 67.0683436, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (21, N'Haider', N'Autos', N'03362462131', NULL, 24.9477491, 67.0641394, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (22, N'Talib', N'Autos', N'03362462131', NULL, 24.9482972, 67.0481936, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (23, N'Ammanat', N'Car Mechanics', N'03362462131', NULL, 24.9508294, 67.0511481, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (24, N'Desinet', N'Auto Workshop', N'03362462131', NULL, 24.9637568, 67.0644969, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (25, N'Umer', N'Car Mechanics', N'03362462131', NULL, 24.9311369, 67.0159658, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (26, N'Power Plug -', N'The Car Mechanics', N'03362462131', NULL, 24.9450494, 67.0722993, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (27, N'Naveed', N'Autos', N'03362462131', NULL, 24.9720925, 67.0670658, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (28, N'Moin', N'Auto Workshop', N'03362462131', NULL, 24.8953359, 67.0670658, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (29, N'Naveed', N'Auto Shop', N'03362462131', NULL, 24.9593206, 67.0433368, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (30, N'Tahir', N'Auto Car', N'03362462131', NULL, 24.953974, 67.0553684, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (31, N'Saleem', N'Auto Mechanic', N'03362462131', NULL, 24.9505176, 67.0720675, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (32, N'Daniyal', N'Engineering Work', N'03362462131', NULL, 24.9600854, 67.0717515, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (33, N'Aqeel', N'Mechanic', N'03362462131', NULL, 24.9563162, 67.0713615, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (34, N'Ali', N'Autos', N'03362462131', NULL, 24.9139879, 67.1012185, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (35, N'Ahmed', N'Auto Workshop', N'03362462131', NULL, 24.8569281, 67.2649362, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (36, N'Hassan', N'Auto Mechanics', N'03362462131', NULL, 24.9456257, 67.0677996, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (37, N'Salman', N'Autos', N'03362462131', NULL, 24.9512556, 67.060272, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (38, N'Hadi', N'Auto Car', N'03362462131', NULL, 24.837953, 67.081647, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (39, N'Bari', N'Auto Workshop', N'03362462131', NULL, 24.928526, 67.062986, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (40, N'Wahaj', N'Auto Mechanics', N'03362462131', NULL, 24.9340277, 67.0775994, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (41, N'Yasir', N'Autos', N'03362462131', NULL, 24.954517, 67.059898, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (42, N'Raja', N'Mechanics', N'03362462131', NULL, 24.9647504, 67.0534752, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (43, N'Bilal', N'Car Mechanics', N'03362462131', NULL, 24.9590172, 67.0766046, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (44, N'Saad', N'Autos', N'03362462131', NULL, 24.9590367, 67.0765831, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (45, N'Mehmood', N'Auto Workshop', N'03362462131', NULL, 24.966244, 67.0673068, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (46, N'Arif', N'Auto Mechanics', N'03362462131', NULL, 24.9478594, 67.0685868, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (47, N'Ramoo', N'Mechanics', N'03362462131', NULL, 24.9257524, 67.0618766, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (48, N'Irshad', N'Auto Workshop', N'03362462131', NULL, 24.8826753, 67.9945088, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (49, N'Rafiq', N'Auto Mechanics', N'03362462131', NULL, 24.9490859, 67.0524541, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (50, N'Anees', N'Autos', N'03362462131', NULL, 24.9468985, 67.0788407, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mechanics] ([MechanicID], [FirstName], [LastName], [Phone], [Address], [Latitude], [Longitude], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (51, N'Shareef', N'Autos', N'03362462131', NULL, 24.9617502, 67.0527752, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mechanics] OFF
GO
SET IDENTITY_INSERT [dbo].[NotificationLogs] ON 

INSERT [dbo].[NotificationLogs] ([NotificationLogId], [Email], [CarId], [Type], [IsSend], [DateTime]) VALUES (1, N'qq@gmail.com', 1033, N'tyre', 1, CAST(N'2021-04-25T09:00:00.000' AS DateTime))
INSERT [dbo].[NotificationLogs] ([NotificationLogId], [Email], [CarId], [Type], [IsSend], [DateTime]) VALUES (3, N'qq@gmail.com', 1033, N'Oil', 1, CAST(N'2021-04-26T10:01:51.933' AS DateTime))
INSERT [dbo].[NotificationLogs] ([NotificationLogId], [Email], [CarId], [Type], [IsSend], [DateTime]) VALUES (4, N'qq@gmail.com', 1033, N'Oil', 1, CAST(N'2021-04-26T10:04:23.637' AS DateTime))
INSERT [dbo].[NotificationLogs] ([NotificationLogId], [Email], [CarId], [Type], [IsSend], [DateTime]) VALUES (5, N'qq@gmail.com', 1033, N'Oil', 1, CAST(N'2021-04-26T21:33:20.763' AS DateTime))
SET IDENTITY_INSERT [dbo].[NotificationLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (1, N'yyy@gmail.com', N'Oil', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (2, N'yyy@gmail.com', N'Tyre', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (3, N'yyy@gmail.com', N'Fuel', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (4, N'yyy@gmail.com', N'Tuning', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (5, N'yyy@gmail.com', N'Filter', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (7, N'yyy@gmail.com', N'Plug', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (8, N'jawwadtst101@gmail.com', N'Oil', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (9, N'jawwadtst101@gmail.com', N'Tyre', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (10, N'jawwadtst101@gmail.com', N'Fuel', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (11, N'jawwadtst101@gmail.com', N'Tuning', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (12, N'jawwadtst101@gmail.com', N'Filter', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (13, N'jawwadtst101@gmail.com', N'Plug', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (44, N'jb@gmail.com', N'Oil', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (45, N'jb@gmail.com', N'Tyre', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (46, N'jb@gmail.com', N'Fuel', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (47, N'jb@gmail.com', N'Tuning', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (48, N'jb@gmail.com', N'Filter', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (49, N'jb@gmail.com', N'Plug', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (50, N'hola@gmail.com', N'Oil', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (51, N'hola@gmail.com', N'Tyre', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (52, N'hola@gmail.com', N'Fuel', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (53, N'hola@gmail.com', N'Tuning', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (54, N'hola@gmail.com', N'Filter', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (55, N'hola@gmail.com', N'Plug', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (56, N'ff@gmail.com', N'Oil', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (57, N'ff@gmail.com', N'Tyre', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (58, N'ff@gmail.com', N'Fuel', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (59, N'ff@gmail.com', N'Tuning', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (60, N'ff@gmail.com', N'Filter', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (61, N'ff@gmail.com', N'Plug', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (62, N'qq@gmail.com', N'Oil', 1)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (63, N'qq@gmail.com', N'Tyre', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (64, N'qq@gmail.com', N'Fuel', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (65, N'qq@gmail.com', N'Tuning', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (66, N'qq@gmail.com', N'Filter', 0)
INSERT [dbo].[Notifications] ([NotificationId], [Email], [Type], [IsSend]) VALUES (67, N'qq@gmail.com', N'Plug', 0)
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
INSERT [dbo].[Settings] ([Type], [Mileage]) VALUES (N'Filter', 5)
INSERT [dbo].[Settings] ([Type], [Mileage]) VALUES (N'Fuel', 3)
INSERT [dbo].[Settings] ([Type], [Mileage]) VALUES (N'Oil', 1)
INSERT [dbo].[Settings] ([Type], [Mileage]) VALUES (N'Plug', 6)
INSERT [dbo].[Settings] ([Type], [Mileage]) VALUES (N'Tuning', 4)
INSERT [dbo].[Settings] ([Type], [Mileage]) VALUES (N'Tyre', 2)
GO
SET IDENTITY_INSERT [dbo].[Trackers] ON 

INSERT [dbo].[Trackers] ([TrackerID], [Email], [CarId], [Company], [ModelNo], [IEMINo], [DateofPurchase], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, N'yyy@gmail.com', NULL, N'concox', N'asdas33', N'4353676787', N'22.12.20', NULL, NULL, NULL, NULL)
INSERT [dbo].[Trackers] ([TrackerID], [Email], [CarId], [Company], [ModelNo], [IEMINo], [DateofPurchase], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (14, N'ttt@gmail.com', NULL, N'adasdasd', N'asdasdasd33', N'333232234242', N'33377', NULL, NULL, NULL, NULL)
INSERT [dbo].[Trackers] ([TrackerID], [Email], [CarId], [Company], [ModelNo], [IEMINo], [DateofPurchase], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (15, N'eee@gmail.com', NULL, N'sfsdfsdf44', N'sefsfd44', N'345245234324', N'445566', NULL, NULL, NULL, NULL)
INSERT [dbo].[Trackers] ([TrackerID], [Email], [CarId], [Company], [ModelNo], [IEMINo], [DateofPurchase], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (20, N'jb@gmail.com', NULL, N'gosafe', N'ggh77', N'22277373', N'112233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Trackers] ([TrackerID], [Email], [CarId], [Company], [ModelNo], [IEMINo], [DateofPurchase], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (21, N'hola@gmail.com', NULL, N'gosafe', N'aa33', N'22233444', N'2234', NULL, NULL, NULL, NULL)
INSERT [dbo].[Trackers] ([TrackerID], [Email], [CarId], [Company], [ModelNo], [IEMINo], [DateofPurchase], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (22, N'ff@gmail.com', NULL, N'gosafe', N'ss33', N'223456789', N'1323', NULL, NULL, NULL, NULL)
INSERT [dbo].[Trackers] ([TrackerID], [Email], [CarId], [Company], [ModelNo], [IEMINo], [DateofPurchase], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (23, N'qq@gmail.com', NULL, N'asdad', N'asdada', N'234253453', N'11223', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Trackers] OFF
GO
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'bari@gmail.com', N'talha', N'firstNameController', N'lastNameController', N'phoneController', N'cityController', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'eee@gmail.com', N'eee', N'eee', N'eee', N'23232323', N'khi', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'ff@gmail.com', N'ffff', N'ffff', N'fffff', N'2332234324', N'khi', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'hadi@gmail.com', N'hadi', N'hadi', N'N/A', N'32242342', N'Karachi', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'hamza@gmail.com', N'hamza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'hehe@gmail.com', N'talha', N'firstNameController', N'lastNameController', N'phoneController', N'cityController', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'hola@gmail.com', N'hola', N'hola', N'hola', N'112233455', N'khi', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'jawwad@gmail.com', N'jawwad', N'Jawwad', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'jb@gmail.com', N'jjbb', N'jb', N'jb', N'32423423432445', N'khi', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'qq@gmail.com', N'qqqq', N'qq', N'qq', N'1123213123', N'khi', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'saad@gmail.com', N'saad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'talha@gmail.com', N'talha', N'Talha', N'Zahid', N'0336254261', N'KHI', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'ttt@gmail.com', N'ttt', N'asasda', N'sdasdasd', N'23424234', N'khi', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([email], [paswword], [firstName], [lastName], [phone], [city], [InsertedBy], [InsertedAt], [UpdatedBy], [UpdatedAt]) VALUES (N'yyy@gmail.com', N'yyy', N'yyy', N'yyy', N'3543535345', N'khi', NULL, NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Users] FOREIGN KEY([Email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Users]
GO
ALTER TABLE [dbo].[Maintenance]  WITH CHECK ADD  CONSTRAINT [FK_Maintenance_Cars] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[Maintenance] CHECK CONSTRAINT [FK_Maintenance_Cars]
GO
ALTER TABLE [dbo].[Maintenance]  WITH CHECK ADD  CONSTRAINT [FK_Maintenance_MaintenanceTypes] FOREIGN KEY([MaintenanceTypeId])
REFERENCES [dbo].[MaintenanceTypes] ([MaintenanceTypeId])
GO
ALTER TABLE [dbo].[Maintenance] CHECK CONSTRAINT [FK_Maintenance_MaintenanceTypes]
GO
ALTER TABLE [dbo].[Trackers]  WITH CHECK ADD  CONSTRAINT [FK_Trackers_Cars] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[Trackers] CHECK CONSTRAINT [FK_Trackers_Cars]
GO
ALTER TABLE [dbo].[Trackers]  WITH CHECK ADD  CONSTRAINT [FK_Trackers_Users] FOREIGN KEY([Email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[Trackers] CHECK CONSTRAINT [FK_Trackers_Users]
GO
ALTER TABLE [dbo].[UserLocation]  WITH CHECK ADD  CONSTRAINT [FK_UserLocation_Users] FOREIGN KEY([email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[UserLocation] CHECK CONSTRAINT [FK_UserLocation_Users]
GO
/****** Object:  StoredProcedure [dbo].[usp_CheckLoginDetails]    Script Date: 17-May-21 9:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_CheckLoginDetails]
(
	@UserId nvarchar(40),
	@Password nvarchar(50)
)
AS  
	BEGIN
		DECLARE @IsLoginCorrect BIT
		SET @IsLoginCorrect = 0
		
		IF EXISTS (select '#' from [dbo].[Users] where [email] = @UserId and [paswword]= @Password)
		begin
			SET @IsLoginCorrect = 1
		end

		SELECT @IsLoginCorrect AS '@IsLoginCorrect'
	END
GO
