USE [activities]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityEvents]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityEvents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[ActivityId] [int] NOT NULL,
	[Time] [time](7) NULL,
 CONSTRAINT [PK_ActivityEvents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direction]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Direction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartEvent] [datetime] NOT NULL,
	[EndEvent] [datetime] NOT NULL,
	[DirectionId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[PathPhoto] [nvarchar](50) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participant]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Participant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResourceActivity]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourceActivity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityId] [int] NOT NULL,
	[ResourceName] [nvarchar](50) NOT NULL,
	[ResourcePath] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ResourceActivity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusRequest]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusRequest](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StatusRequest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserActivity]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ActivityId] [int] NOT NULL,
 CONSTRAINT [PK_UserActivity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserEvent]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEvent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserEvent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRequest]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRequest](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RequestId] [int] NOT NULL,
 CONSTRAINT [PK_UserRequest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.06.2022 1:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[GenderId] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](25) NOT NULL,
	[DirectionId] [int] NULL,
	[RoleId] [int] NOT NULL,
	[PhotoPath] [nvarchar](max) NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Number] UNIQUE NONCLUSTERED 
(
	[IdNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ActivityEvents]  WITH CHECK ADD  CONSTRAINT [FK_ActivityEvents_Activity] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[Activity] ([ID])
GO
ALTER TABLE [dbo].[ActivityEvents] CHECK CONSTRAINT [FK_ActivityEvents_Activity]
GO
ALTER TABLE [dbo].[ActivityEvents]  WITH CHECK ADD  CONSTRAINT [FK_ActivityEvents_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([ID])
GO
ALTER TABLE [dbo].[ActivityEvents] CHECK CONSTRAINT [FK_ActivityEvents_Events]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_City]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Direction] FOREIGN KEY([DirectionId])
REFERENCES [dbo].[Direction] ([ID])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Direction]
GO
ALTER TABLE [dbo].[Participant]  WITH CHECK ADD  CONSTRAINT [FK_Participant_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Participant] CHECK CONSTRAINT [FK_Participant_Country]
GO
ALTER TABLE [dbo].[Participant]  WITH CHECK ADD  CONSTRAINT [FK_Participant_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Participant] CHECK CONSTRAINT [FK_Participant_Users]
GO
ALTER TABLE [dbo].[ResourceActivity]  WITH CHECK ADD  CONSTRAINT [FK_ResourceActivity_Activity] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[Activity] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResourceActivity] CHECK CONSTRAINT [FK_ResourceActivity_Activity]
GO
ALTER TABLE [dbo].[UserActivity]  WITH CHECK ADD  CONSTRAINT [FK_UserActivity_Activity] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[Activity] ([ID])
GO
ALTER TABLE [dbo].[UserActivity] CHECK CONSTRAINT [FK_UserActivity_Activity]
GO
ALTER TABLE [dbo].[UserActivity]  WITH CHECK ADD  CONSTRAINT [FK_UserActivity_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserActivity] CHECK CONSTRAINT [FK_UserActivity_Users]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([ID])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_Events]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_Users]
GO
ALTER TABLE [dbo].[UserRequest]  WITH CHECK ADD  CONSTRAINT [FK_UserRequest_StatusRequest] FOREIGN KEY([RequestId])
REFERENCES [dbo].[StatusRequest] ([ID])
GO
ALTER TABLE [dbo].[UserRequest] CHECK CONSTRAINT [FK_UserRequest_StatusRequest]
GO
ALTER TABLE [dbo].[UserRequest]  WITH CHECK ADD  CONSTRAINT [FK_UserRequest_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserRequest] CHECK CONSTRAINT [FK_UserRequest_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Direction] FOREIGN KEY([DirectionId])
REFERENCES [dbo].[Direction] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Direction]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Gender]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
USE [master]
GO
ALTER DATABASE [activities] SET  READ_WRITE 
GO
