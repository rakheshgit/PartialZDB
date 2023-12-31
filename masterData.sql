USE [PartialZ]
GO
SET IDENTITY_INSERT [dbo].[EmailTemplates] ON 

INSERT [dbo].[EmailTemplates] ([ID], [Template], [Subject], [Description], [IsActive], [CreatedDate], [LastModifedDate]) VALUES (1, N'<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Email Verification</title>
  <style>
    /* Inline styles */
    body {
      font-family: Arial, sans-serif;
      font-size: 14px;
      line-height: 1.5;
    }
    h2 {
      font-size: 18px;
    }
    a {
      display: inline-block;
      background-color: #6600cc;
      color: #ffffff;
      padding: 10px 20px;
      text-decoration: none;
      border-radius: 4px;
    }
  </style>
</head>
<body>
  <h2>Email Verification</h2>
  <p>Dear member,</p>
  <p>Thank you for registering. Please click the button below to verify your email address:</p>
  <!--[if mso]>
  <v:roundrect xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w="urn:schemas-microsoft-com:office:word" href="$$VERIFICATION_URL$$" style="height:40px;v-text-anchor:middle;width:200px;" arcsize="10%" strokecolor="#6600cc" fillcolor="#6600cc">
    <w:anchorlock/>
    <center style="color:#ffffff;font-family:sans-serif;font-size:14px;font-weight:bold;">Verify Email</center>
  </v:roundrect>
  <![endif]-->
  <!--[if !mso]><!-->
  <a href="$$VERIFICATION_URL$$" target="_blank">Verify Email</a>
  <!--<![endif]-->
  <p>If you didn''t register on our website, you can ignore this email.</p>
  <p>Thank you,<br>PartialZ Team</p>
</body>
</html>
', N'Important: Verify your email to access your account', N'Important: Verify your email to access your account', 1, CAST(N'2023-07-02T11:48:41.573' AS DateTime), CAST(N'2023-07-02T11:48:41.573' AS DateTime))
INSERT [dbo].[EmailTemplates] ([ID], [Template], [Subject], [Description], [IsActive], [CreatedDate], [LastModifedDate]) VALUES (2, N'<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login OTP</title>
  <style>
    /* Inline styles */
    body {
      font-family: Arial, sans-serif;
      font-size: 14px;
      line-height: 1.5;
    }
    h2 {
      font-size: 18px;
    }
    p {
      margin-bottom: 10px;
    }
    .otp-code {
      font-size: 24px;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <h2>Login OTP</h2>
  <p>Dear User,</p>
  <p>Your One-Time Password (OTP) for login is:</p>
  <p class="otp-code">$$OTP_CODE$$</p>
  <p>Please enter this OTP to access your account.</p>
  <p>If you didn''t request this OTP, please ignore this email.</p>
  <p>Thank you,<br>PartialZ Team</p>
</body>
</html>
', N'Your One-Time Password (OTP) for Login', N'Your One-Time Password (OTP) for Login', 1, CAST(N'2023-07-06T16:35:47.320' AS DateTime), CAST(N'2023-07-06T16:35:47.320' AS DateTime))
SET IDENTITY_INSERT [dbo].[EmailTemplates] OFF
GO
