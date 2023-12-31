USE [PartialZ]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 06-07-2023 18:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Email] [nvarchar](150) NULL,
	[Password] [nvarchar](max) NULL,
	[BusinessTitle] [nvarchar](500) NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[IsVerified] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifedDate] [datetime] NULL,
	[LoginOTP] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_IsVerified]  DEFAULT ((0)) FOR [IsVerified]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_CD]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_LMD]  DEFAULT (getdate()) FOR [LastModifedDate]
GO
