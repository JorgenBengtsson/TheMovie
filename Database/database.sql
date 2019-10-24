USE [TheMovie]
GO
/****** Object:  Table [dbo].[accesstokens]    Script Date: 2019-10-24 12:31:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accesstokens](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[token] [varchar](max) NOT NULL,
	[expires] [datetime] NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_accesstokens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 2019-10-24 12:31:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[movieId] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[tickets] [int] NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movies]    Script Date: 2019-10-24 12:31:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[movieid] [varchar](50) NOT NULL,
	[salong] [varchar](50) NOT NULL,
	[maxseats] [int] NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_movies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2019-10-24 12:31:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](500) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[accesstokens] ON 
GO
INSERT [dbo].[accesstokens] ([id], [token], [expires], [created]) VALUES (10, N'am9iZTpmODI5OGEyZi1lZmJkLTQ2YzUtYThiMC1lYmNiODdlNzdlY2M=', CAST(N'2019-10-24T11:36:20.787' AS DateTime), CAST(N'2019-10-24T10:36:20.787' AS DateTime))
GO
INSERT [dbo].[accesstokens] ([id], [token], [expires], [created]) VALUES (11, N'am9iZTozOWQzYzk4MS00MTUzLTRlYTgtYTkwOC1hZTdiYmVmNzQ4NTc=', CAST(N'2019-10-24T13:14:28.833' AS DateTime), CAST(N'2019-10-24T12:14:28.833' AS DateTime))
GO
INSERT [dbo].[accesstokens] ([id], [token], [expires], [created]) VALUES (12, N'am9iZTplN2JkNzIzMi03OGFlLTQ1OWEtOWVhNy01ZTg4OWY1ZDc0MWI=', CAST(N'2019-10-24T13:15:48.010' AS DateTime), CAST(N'2019-10-24T12:15:48.010' AS DateTime))
GO
INSERT [dbo].[accesstokens] ([id], [token], [expires], [created]) VALUES (13, N'am9iZTo0YjY2MTc2My0wYjhkLTQ5ZWEtOTk0NC04MWFmMmFjMGU0Mjc=', CAST(N'2019-10-24T13:18:40.697' AS DateTime), CAST(N'2019-10-24T12:18:40.697' AS DateTime))
GO
INSERT [dbo].[accesstokens] ([id], [token], [expires], [created]) VALUES (14, N'am9iZToyNDJhNDNkYy0yNGRiLTQ2ZDQtYmQ2OS01NjRmYjYyNTBlMjA=', CAST(N'2019-10-24T13:20:09.297' AS DateTime), CAST(N'2019-10-24T12:20:09.297' AS DateTime))
GO
INSERT [dbo].[accesstokens] ([id], [token], [expires], [created]) VALUES (15, N'am9iZTpiODhlN2EwMC0wMGZmLTQwYTEtOTA1YS0zY2I2MDk3ZTJhY2U=', CAST(N'2019-10-24T13:21:34.967' AS DateTime), CAST(N'2019-10-24T12:21:34.967' AS DateTime))
GO
INSERT [dbo].[accesstokens] ([id], [token], [expires], [created]) VALUES (16, N'am9iZTpiYWJkNGQ5ZC0yZGE4LTQ5N2ItOTMwNS1iMTY5NGRkOTA4NTM=', CAST(N'2019-10-24T13:22:55.087' AS DateTime), CAST(N'2019-10-24T12:22:55.087' AS DateTime))
GO
INSERT [dbo].[accesstokens] ([id], [token], [expires], [created]) VALUES (17, N'am9iZTpiNWM1MTgwMC0xZjEzLTRjZjYtOTdjNS1jOWYzZGI4MTNkOGU=', CAST(N'2019-10-24T13:24:03.943' AS DateTime), CAST(N'2019-10-24T12:24:03.943' AS DateTime))
GO
INSERT [dbo].[accesstokens] ([id], [token], [expires], [created]) VALUES (18, N'am9iZTo1M2M1YTBkZC1kMjA0LTQ5YTAtODA1Yi00NmM5N2EyMThiOWY=', CAST(N'2019-10-24T13:25:31.383' AS DateTime), CAST(N'2019-10-24T12:25:31.383' AS DateTime))
GO
INSERT [dbo].[accesstokens] ([id], [token], [expires], [created]) VALUES (19, N'am9iZTpmYzgxNWE1OS01NzgwLTQ3NTEtYWMxYy00NGYwNmJlMDg0NTY=', CAST(N'2019-10-24T13:27:47.587' AS DateTime), CAST(N'2019-10-24T12:27:47.587' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[accesstokens] OFF
GO
SET IDENTITY_INSERT [dbo].[booking] ON 
GO
INSERT [dbo].[booking] ([id], [movieId], [userid], [tickets], [created]) VALUES (2, 1, 1, 23, CAST(N'2019-10-24T12:27:54.613' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[booking] OFF
GO
SET IDENTITY_INSERT [dbo].[movies] ON 
GO
INSERT [dbo].[movies] ([id], [movieid], [salong], [maxseats], [date]) VALUES (1, N'475557', N'Stora Salongen', 45, CAST(N'2020-01-01T19:00:00.000' AS DateTime))
GO
INSERT [dbo].[movies] ([id], [movieid], [salong], [maxseats], [date]) VALUES (2, N'181812', N'Lilla Salongen', 22, CAST(N'2020-01-01T19:30:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[movies] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 
GO
INSERT [dbo].[user] ([id], [username], [password]) VALUES (1, N'jobe', N'kalle123')
GO
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[accesstokens] ADD  CONSTRAINT [DF_accesstokens_created]  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[booking] ADD  CONSTRAINT [DF_booking_created]  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [FK_booking_movies] FOREIGN KEY([movieId])
REFERENCES [dbo].[movies] ([id])
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [FK_booking_movies]
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [FK_booking_user] FOREIGN KEY([userid])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [FK_booking_user]
GO
