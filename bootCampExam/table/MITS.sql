USE [MITS]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Street1] [nvarchar](1024) NULL,
	[Street2] [varchar](1024) NULL,
	[CityID] [int] NOT NULL,
	[PostalCode] [varchar](50) NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NOT NULL,
	[StateID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[AddressID] [int] NOT NULL,
	[HomePhone] [varchar](50) NULL,
	[MobilePhone] [varchar](50) NULL,
	[WorkPhone] [varchar](50) NULL,
	[WorkEmail] [varchar](255) NULL,
	[OtherEmail] [varchar](255) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[BirthPlace] [varchar](50) NOT NULL,
	[BPJSKerjaNo] [varchar](50) NULL,
	[BPJSSehatNo] [varchar](50) NULL,
	[DriverLicenseExpDate] [datetime2](7) NULL,
	[DriverLicenseNo] [varchar](50) NULL,
	[EmpNo] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NOT NULL,
	[NoKTP] [varchar](50) NOT NULL,
	[NPWP] [varchar](50) NOT NULL,
	[PhotoPath] [varchar](255) NULL,
	[ContactID] [int] NULL,
	[GenderID] [int] NOT NULL,
	[LoginDetailsID] [int] NOT NULL,
	[MaritalStatusID] [int] NOT NULL,
	[NationalityID] [int] NOT NULL,
	[ReligionID] [int] NOT NULL,
	[WorkShiftID] [int] NOT NULL,
 CONSTRAINT [PK__Employee__3214EC27445FB473] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Employee__3214EC261B126804] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginDetails]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginDetails](
	[LoginID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IsEnable] [bit] NOT NULL,
 CONSTRAINT [PK_LoginDetails] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaritalStatus]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaritalStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MaritalStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nationality]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationality](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Nationality] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religion]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Religion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 4/30/2018 10:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkShift]    Script Date: 4/30/2018 10:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkShift](
	[ShiftID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WorkShift] PRIMARY KEY CLUSTERED 
(
	[ShiftID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Countries]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK1h7valoq3rlamlbduqq7d4j1n] FOREIGN KEY([CityID])
REFERENCES [dbo].[Cities] ([ID])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK1h7valoq3rlamlbduqq7d4j1n]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK5c9b740gxtgwwdy2bu9lvtda8] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK5c9b740gxtgwwdy2bu9lvtda8]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FKAB929B8278451767] FOREIGN KEY([CityID])
REFERENCES [dbo].[Cities] ([ID])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FKAB929B8278451767]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK7852A769742323C6] FOREIGN KEY([StateID])
REFERENCES [dbo].[States] ([ID])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK7852A769742323C6]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FKbkec1kddjg4w1n9ae0kkev9k] FOREIGN KEY([StateID])
REFERENCES [dbo].[States] ([ID])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FKbkec1kddjg4w1n9ae0kkev9k]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Addresses] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Addresses] ([ID])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_Addresses]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK11tpklkipoama3mffb16etrid] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Addresses] ([ID])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK11tpklkipoama3mffb16etrid]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK14AC0F6539B6B42F] FOREIGN KEY([MaritalStatusID])
REFERENCES [dbo].[MaritalStatus] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK14AC0F6539B6B42F]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK14AC0F653BC3AAB5] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK14AC0F653BC3AAB5]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK14AC0F655D89C3B] FOREIGN KEY([NationalityID])
REFERENCES [dbo].[Nationality] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK14AC0F655D89C3B]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK14AC0F6587E0CD95] FOREIGN KEY([ReligionID])
REFERENCES [dbo].[Religion] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK14AC0F6587E0CD95]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK14AC0F65B11AB285] FOREIGN KEY([LoginDetailsID])
REFERENCES [dbo].[LoginDetails] ([LoginID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK14AC0F65B11AB285]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK14AC0F65DD804985] FOREIGN KEY([WorkShiftID])
REFERENCES [dbo].[WorkShift] ([ShiftID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK14AC0F65DD804985]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK14AC0F65EB4DB7E6] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contacts] ([ContactID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK14AC0F65EB4DB7E6]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK3tqwbjr6ktfjukcjh7htsrpeh] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contacts] ([ContactID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK3tqwbjr6ktfjukcjh7htsrpeh]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FKbjnpjtgdb3l9hd4s5g13n9rbg] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FKbjnpjtgdb3l9hd4s5g13n9rbg]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FKbxa6rsa5kse06ivgidhwn6p1r] FOREIGN KEY([LoginDetailsID])
REFERENCES [dbo].[LoginDetails] ([LoginID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FKbxa6rsa5kse06ivgidhwn6p1r]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FKdycpsim3ywevsnwfo10ac9p9p] FOREIGN KEY([MaritalStatusID])
REFERENCES [dbo].[MaritalStatus] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FKdycpsim3ywevsnwfo10ac9p9p]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FKeur3s301r2vuhj63x1mbdqyny] FOREIGN KEY([NationalityID])
REFERENCES [dbo].[Nationality] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FKeur3s301r2vuhj63x1mbdqyny]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FKf19y8v3n3w9rxexx9rkdnwy44] FOREIGN KEY([ReligionID])
REFERENCES [dbo].[Religion] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FKf19y8v3n3w9rxexx9rkdnwy44]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FKjwobx436yhcwv6xvmpysavtsn] FOREIGN KEY([WorkShiftID])
REFERENCES [dbo].[WorkShift] ([ShiftID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FKjwobx436yhcwv6xvmpysavtsn]
GO
