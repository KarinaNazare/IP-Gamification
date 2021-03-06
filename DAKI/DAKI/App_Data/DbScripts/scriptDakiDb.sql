--USE [DAKI]
GO
/****** Object:  Table [dbo].[Achievement]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Achievement](
	[AchievementId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](128) NOT NULL,
	[Description] [varchar](256) NULL,
	[ImageURL] [varchar](256) NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_Achievement] PRIMARY KEY CLUSTERED 
(
	[AchievementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Badge]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Badge](
	[BadgeId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](128) NOT NULL,
	[Description] [varchar](256) NULL,
	[ImageUrl] [varchar](max) NOT NULL,
	[NecessaryPoints] [int] NOT NULL,
 CONSTRAINT [PK_Badge] PRIMARY KEY CLUSTERED 
(
	[BadgeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](128) NOT NULL,
	[Description] [varchar](256) NULL,
	[ParentId] [int] NULL,
	[Rules] [bit] ,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DepSupToDep]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON

GO
/****** Object:  Table [dbo].[Job]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job](
	[JobId] [int] NOT NULL,
	[Title] [varchar](128) NOT NULL,
	[Manages] [bit] NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[Surname] [varchar](128) NOT NULL,
	[BirthDate] [date] NULL,
	[Adress] [varchar](max) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonHasJobInDep]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonHasJobInDep](
	[PersonId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[StartingDate] [date] NOT NULL,
	[Salary] [int] NULL,
 CONSTRAINT [PK_PersonHasJobInDep] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC,
	[JobId] ASC,
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prize]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prize](
	[PrizeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[Description] [varchar](max) NULL,
	[Cost] [int] NOT NULL,
	[Limit] [int] NOT NULL,
 CONSTRAINT [PK_Prize] PRIMARY KEY CLUSTERED 
(
	[PrizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserBuysPrize]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBuysPrize](
	[UserId] [int] NOT NULL,
	[PrizeId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_UserBuysPrize] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[PrizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserHasAchievement]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserHasAchievement](
	[AchievementId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserHasAchievement] PRIMARY KEY CLUSTERED 
(
	[AchievementId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserHasBadge]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserHasBadge](
	[BadgeId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserHasBadge] PRIMARY KEY CLUSTERED 
(
	[BadgeId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Email] [varchar](128) NOT NULL,
	[CurrentPoints] [int] NOT NULL,
	[Points] [int] NOT NULL,
	[PersonId] [int] NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Mebership]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Mebership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NOT NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NOT NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_webpages_Mebership] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] NOT NULL,
	[RoleName] [varchar](256) NOT NULL,
 CONSTRAINT [PK_webpages_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[webpages_UserInRoles]    Script Date: 4/9/2016 4:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UserInRoles](
	[RoleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_webpages_UserInRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Badge] ADD  CONSTRAINT [DF_Badge_NecessaryPoints]  DEFAULT ((0)) FOR [NecessaryPoints]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_DepSupToDep_Rules]  DEFAULT ((1)) FOR [Rules]
GO
ALTER TABLE [dbo].[Job] ADD  CONSTRAINT [DF_Job_Manages]  DEFAULT ((0)) FOR [Manages]
GO
ALTER TABLE [dbo].[PersonHasJobInDep] ADD  CONSTRAINT [DF_PersonHasJobInDep_StartingDate]  DEFAULT (getdate()) FOR [StartingDate]
GO
ALTER TABLE [dbo].[Prize] ADD  CONSTRAINT [DF_Prize_Cost]  DEFAULT ((0)) FOR [Cost]
GO
ALTER TABLE [dbo].[Prize] ADD  CONSTRAINT [DF_Prize_Limit]  DEFAULT ((100)) FOR [Limit]
GO
ALTER TABLE [dbo].[UserBuysPrize] ADD  CONSTRAINT [DF_UserBuysPrize_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[UserProfile] ADD  CONSTRAINT [DF_UserProfile_CurrentPoints]  DEFAULT ((0)) FOR [CurrentPoints]
GO
ALTER TABLE [dbo].[UserProfile] ADD  CONSTRAINT [DF_UserProfile_Points]  DEFAULT ((0)) FOR [Points]
GO
ALTER TABLE [dbo].[webpages_Mebership] ADD  CONSTRAINT [DF_webpages_Mebership_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[webpages_Mebership] ADD  CONSTRAINT [DF_webpages_Mebership_IsConfirmed]  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[webpages_Mebership] ADD  CONSTRAINT [DF_webpages_Mebership_LastPasswordFailureDate]  DEFAULT (getdate()) FOR [LastPasswordFailureDate]
GO
ALTER TABLE [dbo].[webpages_Mebership] ADD  CONSTRAINT [DF_webpages_Mebership_PasswordVerificationTokenExpirationDate]  DEFAULT (dateadd(day,(30),getdate())) FOR [PasswordVerificationTokenExpirationDate]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Department] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Department] ([DepartmentId])
ON UPDATE NO ACTION
ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Department]
GO
ALTER TABLE [dbo].[PersonHasJobInDep]  WITH CHECK ADD  CONSTRAINT [FK_PersonHasJobInDep_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonHasJobInDep] CHECK CONSTRAINT [FK_PersonHasJobInDep_Department]
GO
ALTER TABLE [dbo].[PersonHasJobInDep]  WITH CHECK ADD  CONSTRAINT [FK_PersonHasJobInDep_Job] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([JobId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonHasJobInDep] CHECK CONSTRAINT [FK_PersonHasJobInDep_Job]
GO
ALTER TABLE [dbo].[PersonHasJobInDep]  WITH CHECK ADD  CONSTRAINT [FK_PersonHasJobInDep_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonHasJobInDep] CHECK CONSTRAINT [FK_PersonHasJobInDep_Person]
GO
ALTER TABLE [dbo].[UserBuysPrize]  WITH CHECK ADD  CONSTRAINT [FK_UserBuysPrize_Prize] FOREIGN KEY([PrizeId])
REFERENCES [dbo].[Prize] ([PrizeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserBuysPrize] CHECK CONSTRAINT [FK_UserBuysPrize_Prize]
GO
ALTER TABLE [dbo].[UserBuysPrize]  WITH CHECK ADD  CONSTRAINT [FK_UserBuysPrize_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserBuysPrize] CHECK CONSTRAINT [FK_UserBuysPrize_UserProfile]
GO
ALTER TABLE [dbo].[UserHasAchievement]  WITH CHECK ADD  CONSTRAINT [FK_UserHasAchievement_Achievement] FOREIGN KEY([AchievementId])
REFERENCES [dbo].[Achievement] ([AchievementId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserHasAchievement] CHECK CONSTRAINT [FK_UserHasAchievement_Achievement]
GO
ALTER TABLE [dbo].[UserHasAchievement]  WITH CHECK ADD  CONSTRAINT [FK_UserHasAchievement_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserHasAchievement] CHECK CONSTRAINT [FK_UserHasAchievement_UserProfile]
GO
ALTER TABLE [dbo].[UserHasBadge]  WITH CHECK ADD  CONSTRAINT [FK_UserHasBadge_Badge] FOREIGN KEY([BadgeId])
REFERENCES [dbo].[Badge] ([BadgeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserHasBadge] CHECK CONSTRAINT [FK_UserHasBadge_Badge]
GO
ALTER TABLE [dbo].[UserHasBadge]  WITH CHECK ADD  CONSTRAINT [FK_UserHasBadge_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserHasBadge] CHECK CONSTRAINT [FK_UserHasBadge_UserProfile]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_Person]
GO
ALTER TABLE [dbo].[webpages_Mebership]  WITH CHECK ADD  CONSTRAINT [FK_webpages_Mebership_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[webpages_Mebership] CHECK CONSTRAINT [FK_webpages_Mebership_UserProfile]
GO
ALTER TABLE [dbo].[webpages_UserInRoles]  WITH CHECK ADD  CONSTRAINT [FK_webpages_UserInRoles_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UserInRoles] CHECK CONSTRAINT [FK_webpages_UserInRoles_UserProfile]
GO
ALTER TABLE [dbo].[webpages_UserInRoles]  WITH CHECK ADD  CONSTRAINT [FK_webpages_UserInRoles_webpages_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[webpages_UserInRoles] CHECK CONSTRAINT [FK_webpages_UserInRoles_webpages_Roles]
GO
