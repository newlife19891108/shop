USE [haqiu]
GO
/****** Object:  Table [dbo].[address]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[address](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_userid] [int] NULL,
	[_tel] [varchar](50) NULL,
	[_mobile] [varchar](50) NULL,
	[_address] [varchar](150) NULL,
	[_name] [varchar](150) NULL,
	[_mail] [varchar](50) NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[admin]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_name] [varchar](50) NULL,
	[_pwd] [varchar](100) NULL,
	[_role] [int] NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[article]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[article](
	[_id] [int] NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_article] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[collect]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[collect](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_userid] [int] NULL,
	[_collecttime] [datetime] NULL,
	[_proid] [int] NULL,
	[_proname] [varchar](50) NULL,
	[_proprice] [money] NULL,
	[_proimage] [varchar](50) NULL,
 CONSTRAINT [PK_collect] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[downlist]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[downlist](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_title] [varchar](150) NULL,
	[_size] [varchar](50) NULL,
	[_click] [int] NULL,
	[_posttime] [datetime] NULL,
	[_uploadurl] [varchar](200) NULL,
 CONSTRAINT [PK_downlist] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fathercate]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fathercate](
	[_fathercateid] [int] IDENTITY(1,1) NOT NULL,
	[_fathername] [varchar](50) NULL,
 CONSTRAINT [PK_fathercate] PRIMARY KEY CLUSTERED 
(
	[_fathercateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[help]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[help](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_title] [varchar](50) NULL,
	[_content] [varchar](max) NULL,
	[_cateid] [int] NULL,
 CONSTRAINT [PK_help] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[helpcate]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[helpcate](
	[_cateid] [int] IDENTITY(1,1) NOT NULL,
	[_catename] [varchar](50) NULL,
 CONSTRAINT [PK_helpcate] PRIMARY KEY CLUSTERED 
(
	[_cateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[message]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[message](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_title] [varchar](50) NULL,
	[_content] [varchar](250) NULL,
	[_ip] [varchar](50) NULL,
	[_posttime] [datetime] NULL,
	[_reply] [varchar](200) NULL,
	[_state] [int] NULL,
 CONSTRAINT [PK_message] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[news]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[news](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_title] [varchar](150) NULL,
	[_from] [varchar](50) NULL,
	[_author] [varchar](50) NULL,
	[_top] [int] NULL,
	[_click] [int] NULL,
	[_content] [varchar](max) NULL,
	[_posttime] [datetime] NULL,
	[_cateid] [int] NULL,
	[_ispic] [int] NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[newscate]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[newscate](
	[_cateid] [int] IDENTITY(1,1) NOT NULL,
	[_catename] [varchar](50) NULL,
 CONSTRAINT [PK_newscate] PRIMARY KEY CLUSTERED 
(
	[_cateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orderdetail]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orderdetail](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_ordernum] [varchar](50) NULL,
	[_count] [int] NULL,
	[_sumprice] [money] NULL,
	[_sumweight] [varchar](50) NULL,
	[_proid] [int] NULL,
	[_price] [money] NULL,
	[_weight] [varchar](50) NULL,
	[_title] [varchar](50) NULL,
	[_size] [varchar](50) NULL,
	[_color] [varchar](50) NULL,
	[_proimage] [varchar](50) NULL,
	[_cate] [varchar](50) NULL,
 CONSTRAINT [PK_orderdetail_1] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ordertable]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ordertable](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_ordernum] [varchar](50) NULL,
	[_paystate] [int] NULL,
	[_prostate] [int] NULL,
	[_userid] [int] NULL,
	[_ordertime] [datetime] NULL,
	[_sellremarks] [varchar](350) NULL,
	[_buyremarks] [varchar](350) NULL,
	[_count] [int] NULL,
	[_address] [varchar](150) NULL,
	[_sumprice] [money] NULL,
	[_tel] [varchar](50) NULL,
	[_mobile] [varchar](50) NULL,
	[_name] [varchar](50) NULL,
	[_mail] [varchar](50) NULL,
	[_needbill] [int] NULL,
	[_waysgive] [varchar](50) NULL,
 CONSTRAINT [PK_ordertable_1] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[procate]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[procate](
	[_cateid] [int] IDENTITY(1,1) NOT NULL,
	[_catename] [varchar](50) NULL,
	[_fathercateid] [int] NOT NULL,
 CONSTRAINT [PK_procate] PRIMARY KEY CLUSTERED 
(
	[_cateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_title] [varchar](50) NULL,
	[_cateid] [int] NULL,
	[_marketprice] [money] NULL,
	[_localprice] [money] NULL,
	[_content] [varchar](max) NULL,
	[_posttime] [varchar](50) NULL,
	[_weight] [varchar](50) NULL,
	[_ischeap] [int] NULL,
	[_isrecommend] [int] NULL,
	[_top] [int] NULL,
	[_procount] [int] NULL,
	[_imageid] [varchar](50) NULL,
 CONSTRAINT [PK_produc] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[proimage]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[proimage](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[_imageid] [varchar](50) NOT NULL,
	[_imageurl] [varchar](100) NULL,
	[_color] [varchar](50) NULL,
	[_sizeid] [varchar](50) NULL,
 CONSTRAINT [PK_proimage] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[size]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[size](
	[_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[_sizeid] [varchar](50) NOT NULL,
	[_sizename] [varchar](50) NULL,
 CONSTRAINT [PK_size] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user]    Script Date: 2017/11/9 19:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[_userid] [int] IDENTITY(1,1) NOT NULL,
	[_username] [varchar](50) NULL,
	[_pwd] [varchar](50) NULL,
	[_email] [varchar](50) NULL,
	[_qq] [varchar](50) NULL,
	[_msn] [varchar](50) NULL,
	[_safequestion] [varchar](150) NULL,
	[_safepwd] [varchar](150) NULL,
	[_registtime] [datetime] NULL,
	[_logintime] [datetime] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[_userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[address] ON 

GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (1, 2, N'325434', N'423423423', N'fsdadf', N'dsfdsfsdfsdfsd', N'34324')
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (2, 17, N'2732675', N'13459463050', N'宁德市1', N'352105', N'王宁杰')
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (13, 19, N'2732675', N'13459463050', N'宁德市', N'王宁辉', N'352105')
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (14, 8, N'2732675', N'13459463050', N'宁德', N'王宁辉', N'352205')
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (15, 9, N'2732675', N'13459463050', N'福建省宁德市', N'王宁辉', N'352105')
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (16, 18, N'86567252', N'13705011717', N'福建省南安市乐风镇**村', N'黄福强', N'362324')
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (17, 20, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (18, 21, N'13626068079', N'13626068079', N'13626068079', N'张sir', N'362700')
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (19, 22, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (20, 23, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (21, 24, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (22, 25, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (23, 25, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[address] ([_id], [_userid], [_tel], [_mobile], [_address], [_name], [_mail]) VALUES (24, 27, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[address] OFF
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (4, N'张sir', N'41828B2FFDFDE304 ', 1)
GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (6, N'hfq', N'41828B2FFDFDE304 ', 1)
GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (7, N'wnh', N'41828B2FFDFDE304 ', 1)
GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (8, N'wwq', N'41828B2FFDFDE304 ', 1)
GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (9, N'cxj', N'41828B2FFDFDE304 ', 1)
GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (10, N'hjs', N'41828B2FFDFDE304 ', 1)
GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (13, N'阿伟', N'BF657CA0B9DBE3AE', 0)
GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (14, N'阿兵', N'8D5604ACA63CC0B0', 0)
GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (15, N'阿辉', N'B32407FBB71468F5', 0)
GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (19, N'阿q', N'23B30534DEC97077', 0)
GO
INSERT [dbo].[admin] ([_id], [_name], [_pwd], [_role]) VALUES (20, N'admin', N'1A870A4B843C2C8FDD3A9D2A7652305F', 0)
GO
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
INSERT [dbo].[article] ([_id], [name]) VALUES (0, N'文章')
GO
INSERT [dbo].[article] ([_id], [name]) VALUES (1, N'图文')
GO
SET IDENTITY_INSERT [dbo].[collect] ON 

GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (1, 15, CAST(0x00009DD8014DC345 AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (2, 15, CAST(0x00009DD8014DE656 AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (3, 15, CAST(0x00009DD8015450F0 AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (4, 15, CAST(0x00009DD801545EE4 AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (5, 15, CAST(0x00009DD8016FCF2F AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (6, 15, CAST(0x00009DD8016FDA89 AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (7, 15, CAST(0x00009DD8016FDC91 AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (8, 15, CAST(0x00009DD8016FEC30 AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (69, 22, CAST(0x00009DDC01200A87 AS DateTime), 32, N'我俄方二百二十二2', 5.0000, N'show_imageurl/show_20100824041323194.jpg')
GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (70, 22, CAST(0x00009DDC01222BAC AS DateTime), 43, N'板鞋', 22.0000, N'show_imageurl/show_20100824043059007.jpg')
GO
INSERT [dbo].[collect] ([_id], [_userid], [_collecttime], [_proid], [_proname], [_proprice], [_proimage]) VALUES (71, 9, CAST(0x00009DDC015FF689 AS DateTime), 39, N'科比穿过的裤子', 222.0000, N'show_imageurl/show_20100824042606585.jpg')
GO
SET IDENTITY_INSERT [dbo].[collect] OFF
GO
SET IDENTITY_INSERT [dbo].[downlist] ON 

GO
INSERT [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (9, N'O(∩_∩)O哈哈~', N'465.081KB', 81, CAST(0x00009DD900F936C2 AS DateTime), N'download/index_20100821030707000.rar')
GO
INSERT [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (15, N'练习', N'1.604KB', 0, CAST(0x00009DDC01452A45 AS DateTime), N'download/index_20100824074353365.txt')
GO
INSERT [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (16, N'5图与他人', N'1.604KB', 1, CAST(0x00009DDC0146A750 AS DateTime), N'download/index_20100824074918646.txt')
GO
INSERT [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (17, N'二级联动', N'78.728KB', 1, CAST(0x00009DDC0146C1F9 AS DateTime), N'download/index_20100824074941881.txt')
GO
INSERT [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (18, N'gg', N'Label', 0, CAST(0x00009DDC0150DF3B AS DateTime), N'Label')
GO
INSERT [dbo].[downlist] ([_id], [_title], [_size], [_click], [_posttime], [_uploadurl]) VALUES (19, N'gg', N'45KB', 1, CAST(0x00009DDC0150F241 AS DateTime), N'download/index_20100824082639756.doc')
GO
SET IDENTITY_INSERT [dbo].[downlist] OFF
GO
SET IDENTITY_INSERT [dbo].[fathercate] ON 

GO
INSERT [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (1, N'衣服')
GO
INSERT [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (2, N'裤子')
GO
INSERT [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (3, N'裙子')
GO
INSERT [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (4, N'帽子')
GO
INSERT [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (5, N'鞋子')
GO
INSERT [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (6, N'手套')
GO
INSERT [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (7, N'围巾')
GO
INSERT [dbo].[fathercate] ([_fathercateid], [_fathername]) VALUES (8, N'腰带')
GO
SET IDENTITY_INSERT [dbo].[fathercate] OFF
GO
SET IDENTITY_INSERT [dbo].[help] ON 

GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (44, N'问：京东商城所售商品都是正品行货吗？有售后保修吗？', N'答：京东商城所售商品都是正品行货，均自带机打发票。凭京东商城发票，所有商品都可以享受生产厂家的全国联保服务。京东商城将严格按照国家三包政策，针对所售商品履行保修、换货和退货的义务。您也可以到京东商城任一分公司售后部享受售后服务。 详见售后说明&gt;&gt; 京东商城所售商品都是正品行货，均自带机打发票。凭京东商城发票，所有商品都可以享受生产厂家的全国联保服务。京东商城将严格按照国家三包政策，针对所售商品履行保修、换货和退货的义务。您也可以到京东商城任一分公司售后部享受售后服务。 详见售后说明&gt;&gt; 京东商城所售商品都是正品行货，均自带机打发票。凭京东商城发票，所有商品都可以享受生产厂家的全国联保服务。京东商城将严格按照国家三包政策，针对所售商品履行保修、换货和退货的义务。您也可以到京东商城任一分公司售后部享受售后服务。 详见售后说明&gt;&gt; 京东商城所售商品都是正品行货，均自带机打发票。凭京东商城发票，所有商品都可以享受生产厂家的全国联保服务。京东商城将严格按照国家三包政策，针对所售商品履行保修、换货和退货的义务。您也可以到京东商城任一分公司售后部享受售后服务。 详见售后说明&gt;&gt; 京东商城所售商品都是正品行货，均自带机打发票。凭京东商城发票，所有商品都可以享受生产厂家的全国联保服务。京东商城将严格按照国家三包政策，针对所售商品履行保修、换货和退货的义务。您也可以到京东商城任一分公司售后部享受售后服务。 详见售后说明&gt;&gt; <br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />', 2)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (47, N'问：各种库存状态是什么意思？下单多久后可以发货？ ', N'答：现货： 库存有货，下单后会尽快发货，您可以立即下单；<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在途： 商品正在内部配货，一般1-2天有货，您可立即下单； <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;预订： 商品正在备货，一般下单后1-6天可发货，您可立即下单； <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 无货： 商品已售完，相应物流中心覆盖地区内的用户不能下单购买。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 现货： 库存有货，下单后会尽快发货，您可以立即下单；<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在途： 商品正在内部配货，一般1-2天有货，您可立即下单； <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;预订： 商品正在备货，一般下单后1-6天可发货，您可立即下单； <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 无货： 商品已售完，相应物流中心覆盖地区内的用户不能下单购买。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;现货： 库存有货，下单后会尽快发货，您可以立即下单；<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在途： 商品正在内部配货，一般1-2天有货，您可立即下单； <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;预订： 商品正在备货，一般下单后1-6天可发货，您可立即下单； <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 无货： 商品已售完，相应物流中心覆盖地区内的用户不能下单购买。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;预订： 商品正在备货，一般下单后1-6天可发货，您可立即下单； <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 无货： 商品已售完，相应物流中心覆盖地区内的用户不能下单购买。&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;现货： 库存有货，下单后会尽快发货，您可以立即下单；<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在途： 商品正在内部配货，一般1-2天有货，您可立即下单； <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;预订： 商品正在备货，一般下单后1-6天可发货，您可立即下单； <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 无货： 商品已售完，相应物流中心覆盖地区内的用户不能下单购买。&nbsp;', 2)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (48, N'问：无货商品什么时候能到货？ ', N'答：无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />', 2)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (49, N'问：下单后何时可以收到货？ ', N'答：在商品有现货的情况下，北京、上海、广州客户，下单后一般24小时内可收到货（郊区县配送时间可能会更长一些）；<br />
其它地区用户，将根据您的收货地址及所选择的配送方式而不同，一般到货时间在1-7天（极偏远地区配送时间可能会更长一些）；<br />
如果商品处于预订或在途状态，那么还应加上调配货时间。 <br />
在商品有现货的情况下，北京、上海、广州客户，下单后一般24小时内可收到货（郊区县配送时间可能会更长一些）；<br />
其它地区用户，将根据您的收货地址及所选择的配送方式而不同，一般到货时间在1-7天（极偏远地区配送时间可能会更长一些）；<br />
如果商品处于预订或在途状态，那么还应加上调配货时间。 <br />
在商品有现货的情况下，北京、上海、广州客户，下单后一般24小时内可收到货（郊区县配送时间可能会更长一些）；<br />
其它地区用户，将根据您的收货地址及所选择的配送方式而不同，一般到货时间在1-7天（极偏远地区配送时间可能会更长一些）；<br />
如果商品处于预订或在途状态，那么还应加上调配货时间。 <br />
在商品有现货的情况下，北京、上海、广州客户，下单后一般24小时内可收到货（郊区县配送时间可能会更长一些）；<br />
其它地区用户，将根据您的收货地址及所选择的配送方式而不同，一般到货时间在1-7天（极偏远地区配送时间可能会更长一些）；<br />
如果商品处于预订或在途状态，那么还应加上调配货时间。 <br />
在商品有现货的情况下，北京、上海、广州客户，下单后一般24小时内可收到货（郊区县配送时间可能会更长一些）；<br />
其它地区用户，将根据您的收货地址及所选择的配送方式而不同，一般到货时间在1-7天（极偏远地区配送时间可能会更长一些）；<br />
如果商品处于预订或在途状态，那么还应加上调配货时间。 <br />', 2)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (58, N'物流配送2', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 <br />
<br />
金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除50个积分做为运费；时间计算方法<br />
<br />
为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
&nbsp;<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
查看详细地图上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡&nbsp; <br />
查看详细地图广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡） <br />', 19)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (59, N'物流配送3', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 <br />
<br />
金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除50个积分做为运费；时间计算方法<br />
<br />
为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
&nbsp;<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
查看详细地图上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡&nbsp; <br />
查看详细地图广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡） <br />', 19)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (60, N'物流配送4', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 <br />
<br />
金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除50个积分做为运费；时间计算方法<br />
<br />
为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
&nbsp;<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
查看详细地图上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡&nbsp; <br />
查看详细地图广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡） <br />', 19)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (61, N'物流配送5', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 <br />
<br />
金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除50个积分做为运费；时间计算方法<br />
<br />
为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
&nbsp;<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
查看详细地图上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡&nbsp; <br />
查看详细地图广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡） <br />', 19)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (62, N'关于Hi币', N'关于Hi币关于Hi币关于Hi币关于Hi币关于Hi币关于Hi币<br />', 25)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (63, N'关于Hi币', N'关于Hi币关于Hi币关于Hi币关于Hi币关于Hi币关于Hi币<br />', 25)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (66, N'售后服务1', N'服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />', 20)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (67, N'售后服务2', N'服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。', 20)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (71, N'新手指南1', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 26)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (72, N'新手指南2', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 26)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (73, N'新手指南3', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 26)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (74, N'新手指南4', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 26)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (77, N'公司简介3', N'公司全名：石狮市玩帝贸易有限公司<br />
品牌：古由卡<br />
英文：guuka<br />
广告宣言：打造属于新生代自己的着装风格<br />
市场定位:16-24岁的春少年，喜欢潮流个性的新生代<br />
品牌发展：09年，进入淘宝，越居淘宝的男装品牌，热门的非主流男装品牌！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10年，进入淘宝商城，销售量为淘宝男装的10%<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的目标，在2011年，成为淘宝指定男装品牌供应商！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加入我们的团队吧，让梦想和我们一起腾飞！<br />
公司全名：石狮市玩帝贸易有限公司<br />
品牌：古由卡<br />
英文：guuka<br />
广告宣言：打造属于新生代自己的着装风格<br />
市场定位:16-24岁的春少年，喜欢潮流个性的新生代<br />
品牌发展：09年，进入淘宝，越居淘宝的男装品牌，热门的非主流男装品牌！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10年，进入淘宝商城，销售量为淘宝男装的10%<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的目标，在2011年，成为淘宝指定男装品牌供应商！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加入我们的团队吧，让梦想和我们一起腾飞！<br />', 21)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (79, N'招募专区3', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 23)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (82, N'问：下单后，我能做什么？', N'答：如果是在线支付方式，请您尽快完成付款，待付款被确认后我们会立即为您发货，<br />
如果选择自提或货到付款，您可以进入&ldquo;我的京东&rdquo;，在&ldquo;订单列表&rdquo;中找到您的订单，然后可随时查看订单处理状态，做好收货或者上门自提的准备。<br />
在您成功购物后，您还可以发表商品评价，向其他用户分享商品使用心得。 <br />
如果是在线支付方式，请您尽快完成付款，待付款被确认后我们会立即为您发货，<br />
如果选择自提或货到付款，您可以进入&ldquo;我的京东&rdquo;，在&ldquo;订单列表&rdquo;中找到您的订单，然后可随时查看订单处理状态，做好收货或者上门自提的准备。<br />
在您成功购物后，您还可以发表商品评价，向其他用户分享商品使用心得。如果是在线支付方式，请您尽快完成付款，待付款被确认后我们会立即为您发货，<br />
如果选择自提或货到付款，您可以进入&ldquo;我的京东&rdquo;，在&ldquo;订单列表&rdquo;中找到您的订单，然后可随时查看订单处理状态，做好收货或者上门自提的准备。<br />
在您成功购物后，您还可以发表商品评价，向其他用户分享商品使用心得。如果是在线支付方式，请您尽快完成付款，待付款被确认后我们会立即为您发货，<br />
如果选择自提或货到付款，您可以进入&ldquo;我的京东&rdquo;，在&ldquo;订单列表&rdquo;中找到您的订单，然后可随时查看订单处理状态，做好收货或者上门自提的准备。<br />
在您成功购物后，您还可以发表商品评价，向其他用户分享商品使用心得。&nbsp;<br />
<br />
&nbsp;<br />
<br />
<br />
<br />
<br />', 2)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (83, N'问：无货商品什么时候能到货？ ', N'答：无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 <br />
无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。 无货商品的到货时间根据配货情况而不同，无法准确估计，但您可以使用&ldquo;到货通知&rdquo;功能，一旦商品有货，我们会通过电子邮件等方式通知您。', 2)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (84, N'问：下单时可以指定送货时间吗？ ', N'答：可以，您下单时可以选择&ldquo;只工作日送货(双休日、假日不用送)&rdquo;、&ldquo;工作日、双休日与假日均可送货&rdquo;、&ldquo;只双休日、假日送货(工作日不用送)&rdquo;等时间类型，并选择是否提前电话确认。<br />
另外，您还可以在订单备注里填写更具体的需求，我们会尽量满足您的要求。 可以，您下单时可以选择&ldquo;只工作日送货(双休日、假日不用送)&rdquo;、&ldquo;工作日、双休日与假日均可送货&rdquo;、&ldquo;只双休日、假日送货(工作日不用送)&rdquo;等时间类型，并选择是否提前电话确认。<br />
另外，您还可以在订单备注里填写更具体的需求，我们会尽量满足您的要求。可以，您下单时可以选择&ldquo;只工作日送货(双休日、假日不用送)&rdquo;、&ldquo;工作日、双休日与假日均可送货&rdquo;、&ldquo;只双休日、假日送货(工作日不用送)&rdquo;等时间类型，并选择是否提前电话确认。<br />
另外，您还可以在订单备注里填写更具体的需求，我们会尽量满足您的要求。&nbsp;<br />
可以，您下单时可以选择&ldquo;只工作日送货(双休日、假日不用送)&rdquo;、&ldquo;工作日、双休日与假日均可送货&rdquo;、&ldquo;只双休日、假日送货(工作日不用送)&rdquo;等时间类型，并选择是否提前电话确认。<br />
另外，您还可以在订单备注里填写更具体的需求，我们会尽量满足您的要求。&nbsp;可以，您下单时可以选择&ldquo;只工作日送货(双休日、假日不用送)&rdquo;、&ldquo;工作日、双休日与假日均可送货&rdquo;、&ldquo;只双休日、假日送货(工作日不用送)&rdquo;等时间类型，并选择是否提前电话确认。<br />
另外，您还可以在订单备注里填写更具体的需求，我们会尽量满足您的要求。 <br />
<br />
<br />
<br />', 2)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (85, N'哪些地区支持货到付款？', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除50个积分做为运费；时间计算方法为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
<br />
上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡<br />
&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡 <br />
&nbsp;<br />
广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。<br />
&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡） <br />', 4)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (86, N'联系合作', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp; <br />
&nbsp;<br />
&nbsp;<br />', 22)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (87, N'哪些地区支持货到付款？', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州  长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除 50个积分做为运费；时间计算方法为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
<br />
上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡<br />
&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡 <br />
&nbsp;<br />
广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。<br />
&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡）', 4)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (88, N'哪些地区支持货到付款？', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州  长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除 50个积分做为运费；时间计算方法为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
<br />
上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡<br />
&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡 <br />
&nbsp;<br />
广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。<br />
&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡）', 4)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (89, N'哪些地区支持货到付款？', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州  长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除 50个积分做为运费；时间计算方法为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
<br />
上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡<br />
&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡 <br />
&nbsp;<br />
广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。<br />
&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡）', 4)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (90, N'哪些地区支持货到付款？', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州  长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除 50个积分做为运费；时间计算方法为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
<br />
上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡<br />
&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡 <br />
&nbsp;<br />
广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。<br />
&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡）', 4)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (99, N'关于哈邱', N'关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱<br />
关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱<br />
关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱<br />
关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱<br />
关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱关于哈邱<br />', 21)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (100, N'全球运营', N'全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营<br />
全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营<br />
全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营全球运营<br />', 21)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (101, N'售后服务3', N'服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处 理情况除外。<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。', 20)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (102, N'售后服务4', N'服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处 理情况除外。<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。', 20)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (103, N'联系合作', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超 过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不 超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处 理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO  依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和 联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙 伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp; <br />
&nbsp;<br />
&nbsp; <br />', 22)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (104, N'联系合作', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超 过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不 超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处 理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO  依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和 联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙 伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp; <br />
&nbsp;<br />
&nbsp; <br />', 22)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (105, N'联系合作', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超 过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不 超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处 理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO  依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和 联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙 伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp; <br />
&nbsp;<br />
&nbsp; <br />', 22)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (106, N'联系合作', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超 过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不 超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处 理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO  依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和 联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙 伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp; <br />
&nbsp;<br />
&nbsp; <br />', 22)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (107, N'招募专区', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 23)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (108, N'欢迎来电咨询', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 23)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (109, N'招募专区1', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 23)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (110, N'招募专区2', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 23)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (111, N'合作伙伴1', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;<br />', 24)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (112, N'合作伙伴2', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;<br />', 24)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (113, N'合作伙伴3', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;<br />', 24)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (114, N'合作伙伴4', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;<br />', 24)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (115, N'合作伙伴5', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;<br />', 24)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (116, N'关于订单', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、 汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00 &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />
<br />', 25)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (117, N'订单状态', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、 汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00 &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />
<br />', 25)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (118, N'订单购买', N'&uarr;Top如何提交订单浏览要购买的商品，点击&ldquo;购买&rdquo;商品会自动添加到购物车里。如果需要更改商品数量，需在商品所在栏目后的商品数量框中输入购买数量，点击&ldquo;更改&rdquo;按钮即可更改商品数量；选好商品后点击&ldquo;下一步&rdquo;，进行详细填写，收货人信息、付款方式、发票信息、配送方式等信息。如有备注信息，请在下方的&ldquo;备注信息&rdquo;中留言，留言不得超过15字。确认无误后点击&ldquo;提交订单&rdquo;，生成新订单并显示订单编号。可进入&ldquo;我的京东&rdquo;--&rarr;&ldquo;订单中心&rdquo;查看订单详细信息。<br />
&uarr;Top如何提交订单浏览要购买的商品，点击&ldquo;购买&rdquo;商品会自动添加到购物车里。如果需要更改商品数量，需在商品所在栏目后的商品数量框中输入购买数量，点击&ldquo;更改&rdquo;按钮即可更改商品数量；选好商品后点击&ldquo;下一步&rdquo;，进行详细填写，收货人信息、付款方式、发票信息、配送方式等信息。如有备注信息，请在下方的&ldquo;备注信息&rdquo;中留言，留言不得超过15字。确认无误后点击&ldquo;提交订单&rdquo;，生成新订单并显示订单编号。可进入&ldquo;我的京东&rdquo;--&rarr;&ldquo;订单中心&rdquo;查看订单详细信息。<br />
&uarr;Top如何提交订单浏览要购买的商品，点击&ldquo;购买&rdquo;商品会自动添加到购物车里。如果需要更改商品数量，需在商品所在栏目后的商品数量框中输入购买数量，点击&ldquo;更改&rdquo;按钮即可更改商品数量；选好商品后点击&ldquo;下一步&rdquo;，进行详细填写，收货人信息、付款方式、发票信息、配送方式等信息。如有备注信息，请在下方的&ldquo;备注信息&rdquo;中留言，留言不得超过15字。确认无误后点击&ldquo;提交订单&rdquo;，生成新订单并显示订单编号。可进入&ldquo;我的京东&rdquo;--&rarr;&ldquo;订单中心&rdquo;查看订单详细信息。<br />
&uarr;Top如何提交订单浏览要购买的商品，点击&ldquo;购买&rdquo;商品会自动添加到购物车里。如果需要更改商品数量，需在商品所在栏目后的商品数量框中输入购买数量，点击&ldquo;更改&rdquo;按钮即可更改商品数量；选好商品后点击&ldquo;下一步&rdquo;，进行详细填写，收货人信息、付款方式、发票信息、配送方式等信息。如有备注信息，请在下方的&ldquo;备注信息&rdquo;中留言，留言不得超过15字。确认无误后点击&ldquo;提交订单&rdquo;，生成新订单并显示订单编号。可进入&ldquo;我的京东&rdquo;--&rarr;&ldquo;订单中心&rdquo;查看订单详细信息。<br />
<br />', 25)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (119, N'会员服务', N'&uarr;Top如何提交订单浏览要购买的商品，点击&ldquo;购买&rdquo;商品会自动添加到购物车里。如果需要更改商品数量，需在商品所在栏目后的商品数量框中输入购买数量，点击&ldquo;更改&rdquo;按钮即可更改商品数量；选好商品后点击&ldquo;下一步&rdquo;，进行详细填写，收货人信息、付款方式、发票信息、配送方式等信息。如有备注信息，请在下方的&ldquo;备注信息&rdquo;中留言，留言不得超过15字。确认无误后点击&ldquo;提交订单&rdquo;，生成新订单并显示订单编号。可进入&ldquo;我的京东&rdquo;--&rarr;&ldquo;订单中心&rdquo;查看订单详细信息。<br />
&uarr;Top如何提交订单浏览要购买的商品，点击&ldquo;购买&rdquo;商品会自动添加到购物车里。如果需要更改商品数量，需在商品所在栏目后的商品数量框中输入购买数量，点击&ldquo;更改&rdquo;按钮即可更改商品数量；选好商品后点击&ldquo;下一步&rdquo;，进行详细填写，收货人信息、付款方式、发票信息、配送方式等信息。如有备注信息，请在下方的&ldquo;备注信息&rdquo;中留言，留言不得超过15字。确认无误后点击&ldquo;提交订单&rdquo;，生成新订单并显示订单编号。可进入&ldquo;我的京东&rdquo;--&rarr;&ldquo;订单中心&rdquo;查看订单详细信息。<br />
&uarr;Top如何提交订单浏览要购买的商品，点击&ldquo;购买&rdquo;商品会自动添加到购物车里。如果需要更改商品数量，需在商品所在栏目后的商品数量框中输入购买数量，点击&ldquo;更改&rdquo;按钮即可更改商品数量；选好商品后点击&ldquo;下一步&rdquo;，进行详细填写，收货人信息、付款方式、发票信息、配送方式等信息。如有备注信息，请在下方的&ldquo;备注信息&rdquo;中留言，留言不得超过15字。确认无误后点击&ldquo;提交订单&rdquo;，生成新订单并显示订单编号。可进入&ldquo;我的京东&rdquo;--&rarr;&ldquo;订单中心&rdquo;查看订单详细信息。<br />
&uarr;Top如何提交订单浏览要购买的商品，点击&ldquo;购买&rdquo;商品会自动添加到购物车里。如果需要更改商品数量，需在商品所在栏目后的商品数量框中输入购买数量，点击&ldquo;更改&rdquo;按钮即可更改商品数量；选好商品后点击&ldquo;下一步&rdquo;，进行详细填写，收货人信息、付款方式、发票信息、配送方式等信息。如有备注信息，请在下方的&ldquo;备注信息&rdquo;中留言，留言不得超过15字。确认无误后点击&ldquo;提交订单&rdquo;，生成新订单并显示订单编号。可进入&ldquo;我的京东&rdquo;--&rarr;&ldquo;订单中心&rdquo;查看订单详细信息。<br />
<br />', 25)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (120, N'订单状态解释', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 25)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (121, N'新手指南5', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、  汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00  &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />
南新手指南新手指南新手指南新手指南<br />', 26)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (122, N'公司简介2', N'公司全名：石狮市玩帝贸易有限公司<br />
品牌：古由卡<br />
英文：guuka<br />
广告宣言：打造属于新生代自己的着装风格<br />
市场定位:16-24岁的春少年，喜欢潮流个性的新生代<br />
品牌发展：09年，进入淘宝，越居淘宝的男装品牌，热门的非主流男装品牌！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10年，进入淘宝商城，销售量为淘宝男装的10%<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的目标，在2011年，成为淘宝指定男装品牌供应商！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加入我们的团队吧，让梦想和我们一起腾飞！<br />
公司全名：石狮市玩帝贸易有限公司<br />
品牌：古由卡<br />
英文：guuka<br />
广告宣言：打造属于新生代自己的着装风格<br />
市场定位:16-24岁的春少年，喜欢潮流个性的新生代<br />
品牌发展：09年，进入淘宝，越居淘宝的男装品牌，热门的非主流男装品牌！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10年，进入淘宝商城，销售量为淘宝男装的10%<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的目标，在2011年，成为淘宝指定男装品牌供应商！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加入我们的团队吧，让梦想和我们一起腾飞！<br />', 21)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (123, N'公司简介1', N'公司全名：石狮市玩帝贸易有限公司<br />
品牌：古由卡<br />
英文：guuka<br />
广告宣言：打造属于新生代自己的着装风格<br />
市场定位:16-24岁的春少年，喜欢潮流个性的新生代<br />
品牌发展：09年，进入淘宝，越居淘宝的男装品牌，热门的非主流男装品牌！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10年，进入淘宝商城，销售量为淘宝男装的10%<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的目标，在2011年，成为淘宝指定男装品牌供应商！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加入我们的团队吧，让梦想和我们一起腾飞！<br />
公司全名：石狮市玩帝贸易有限公司<br />
品牌：古由卡<br />
英文：guuka<br />
广告宣言：打造属于新生代自己的着装风格<br />
市场定位:16-24岁的春少年，喜欢潮流个性的新生代<br />
品牌发展：09年，进入淘宝，越居淘宝的男装品牌，热门的非主流男装品牌！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10年，进入淘宝商城，销售量为淘宝男装的10%<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的目标，在2011年，成为淘宝指定男装品牌供应商！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加入我们的团队吧，让梦想和我们一起腾飞！<br />', 21)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (124, N'物流配送1', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 <br />
<br />
金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除50个积分做为运费；时间计算方法<br />
<br />
为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
&nbsp;<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
查看详细地图上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡&nbsp; <br />
查看详细地图广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡） <br />', 19)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (125, N'京东商城所售商品都是正品行货吗？', N'答：京东商城所售商品都是正品行货，均自带机打发票。凭京东商城发票，所有商品都可以享受生产厂家的全国联保服务。京东商城将严格按照国家三包政策，针对所售商品履行保修、换货和退货的义务。您也可以到京东商城任一分公司售后部享受售后服务。 详见售后说明&gt;&gt; 京东商城所售商品都是正品行货，均自带机打发票。凭京东商城发票，所有商品都可以享受生产厂家的全国联保服务。京东商城将严格按照国家三包政策，针对所售商品履行保修、换货和退货的义务。您也可以到京东商城任一分公司售后部享受售后服务。 详见售后说明&gt;&gt; 京东商城所售商品都是正品行货，均自带机打发票。凭京东商城发票，所有商品都可以享受生产厂家的全国联保服务。京东商城将严格按照国家三包政策，针对所售商品履行保修、换货和退货的义务。您也可以到京东商城任一分公司售后部享受售后服务。 详见售后说明&gt;&gt; 京东商城所售商品都是正品行货，均自带机打发票。凭京东商城发票，所有商品都可以享受生产厂家的全国联保服务。京东商城将严格按照国家三包政策，针对所售商品履行保修、换货和退货的义务。您也可以到京东商城任一分公司售后部享受售后服务。 详见售后说明&gt;&gt; 京东商城所售商品都是正品行货，均自带机打发票。凭京东商城发票，所有商品都可以享受生产厂家的全国联保服务。京东商城将严格按照国家三包政策，针对所售商品履行保修、换货和退货的义务。您也可以到京东商城任一分公司售后部享受售后服务。 详见售后说明&gt;&gt; <br />
<br />
<br />
<br />
<br />', 2)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (126, N'货到付款的地区有哪些', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除 50个积分做为运费；时间计算方法为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
<br />
上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡<br />
&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡 <br />
&nbsp;<br />
广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。<br />
&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡）', 4)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (127, N'哪些地区货到付款', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除 50个积分做为运费；时间计算方法为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
<br />
上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡<br />
&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡 <br />
&nbsp;<br />
广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。<br />
&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡）', 4)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (128, N'货到付款的地区有哪些', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除 50个积分做为运费；时间计算方法为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
<br />
上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡<br />
&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡 <br />
&nbsp;<br />
广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。<br />
&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡）', 4)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (129, N'物流配送6', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 <br />
<br />
金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除50个积分做为运费；时间计算方法<br />
<br />
为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
&nbsp;<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
查看详细地图上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡&nbsp; <br />
查看详细地图广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡） <br />', 19)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (130, N'物流配送7', N'支持货到付款地区： 北京 上海 广州 广东 天津 苏州 杭州 无锡 山东 南京 厦门 武汉 成都 深圳 西安 宁波 东莞 沈阳 福州 重庆 温州 长沙 哈尔滨 宿迁 佛山 郑州 嘉兴 廊坊 绍兴 <br />
<br />
金华 珠海 太原 大连 长春 南昌 南通 合肥 常州 昆明 石家庄 浙江 贵阳 温馨提示： <br />
对于货到付款的订单，如果一个ID帐号在一个月内有过1次以上或一年内有过3次以上，无理由不接收我司配送的商品，我司将在相应的ID帐户里按每单扣除50个积分做为运费；时间计算方法<br />
<br />
为：成功提交订单后向前推算30天为一个月，成功提交订单后向前推算365天为一年，不以自然月和自然年计算。 <br />
选择支票支付方式，需要客户自行将支票内容填写完整且需要款到账后方可送货； POS机刷卡只支持带有银联标识的银行卡。 <br />
信用卡POS机刷卡消费超过4500元时，发卡银行按照相关规定有可能不向您赠送积分，具体信息请致电发卡行确认。 <br />
&nbsp;<br />
北京市： <br />
送货范围：北京全境十八区县无缝隙覆盖 <br />
支付形式：现金、刷卡、支票&nbsp; <br />
查看详细地图上海市： <br />
送货范围：除横沙岛、长兴岛以外的地区均可送达<br />
支付形式：现金、支票和POS机刷卡&nbsp; <br />
广州市： <br />
送货范围：东起：大观南路，东环高速公路；西至：华南快速干线；南起：珠江北岸；北至：北环高速公路，广园快速干线<br />
支付形式：现金、POS机刷卡&nbsp; <br />
查看详细地图广东省(除广州市区、深圳、花都、番禺)： <br />
送货范围：广东省除广州市区、花都、番禺（不含大学城）以外的地区。<br />
支付形式：现金<br />
运&nbsp; 费：免收固定运费，仅收取商品价格1%的运输附加费。&nbsp; <br />
天津市： <br />
送货范围：天津市全境<br />
支付形式：现金（和平区、河西区、南开区、河东区、河北区、红桥区、东丽区&lt;外环内&gt;同时支持POS机刷卡） <br />', 19)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (131, N'售后服务5', N'服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />', 20)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (132, N'售后服务6', N'服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />', 20)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (133, N'售后服务7', N'服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />', 20)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (134, N'公司简介4', N'公司全名：石狮市玩帝贸易有限公司<br />
品牌：古由卡<br />
英文：guuka<br />
广告宣言：打造属于新生代自己的着装风格<br />
市场定位:16-24岁的春少年，喜欢潮流个性的新生代<br />
品牌发展：09年，进入淘宝，越居淘宝的男装品牌，热门的非主流男装品牌！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10年，进入淘宝商城，销售量为淘宝男装的10%<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的目标，在2011年，成为淘宝指定男装品牌供应商！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加入我们的团队吧，让梦想和我们一起腾飞！<br />
公司全名：石狮市玩帝贸易有限公司<br />
品牌：古由卡<br />
英文：guuka<br />
广告宣言：打造属于新生代自己的着装风格<br />
市场定位:16-24岁的春少年，喜欢潮流个性的新生代<br />
品牌发展：09年，进入淘宝，越居淘宝的男装品牌，热门的非主流男装品牌！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10年，进入淘宝商城，销售量为淘宝男装的10%<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的目标，在2011年，成为淘宝指定男装品牌供应商！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加入我们的团队吧，让梦想和我们一起腾飞！<br />', 21)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (136, N'公司简介6', N'公司全名：石狮市玩帝贸易有限公司<br />
品牌：古由卡<br />
英文：guuka<br />
广告宣言：打造属于新生代自己的着装风格<br />
市场定位:16-24岁的春少年，喜欢潮流个性的新生代<br />
品牌发展：09年，进入淘宝，越居淘宝的男装品牌，热门的非主流男装品牌！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10年，进入淘宝商城，销售量为淘宝男装的10%<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的目标，在2011年，成为淘宝指定男装品牌供应商！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加入我们的团队吧，让梦想和我们一起腾飞！<br />
公司全名：石狮市玩帝贸易有限公司<br />
品牌：古由卡<br />
英文：guuka<br />
广告宣言：打造属于新生代自己的着装风格<br />
市场定位:16-24岁的春少年，喜欢潮流个性的新生代<br />
品牌发展：09年，进入淘宝，越居淘宝的男装品牌，热门的非主流男装品牌！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10年，进入淘宝商城，销售量为淘宝男装的10%<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们的目标，在2011年，成为淘宝指定男装品牌供应商！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 加入我们的团队吧，让梦想和我们一起腾飞！<br />', 21)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (137, N'联系合作', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;<br />', 22)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (138, N'联系合作', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;<br />', 22)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (139, N'联系合作', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;<br />', 22)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (141, N'招募专区4', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、 汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00 &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 23)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (142, N'招募专区5', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、 汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00 &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />', 23)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (143, N'合作伙伴6', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;<br />', 24)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (144, N'合作伙伴7', N'零库存零风险高回报单件代发--爆招&nbsp; 实力代理<br />
&nbsp;我们的承诺----每个代理都能月薪上万<br />
<br />
&nbsp;&nbsp; 选择我们的优势：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.品牌效应--古由卡的人气网络<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.厂家直销 千万库存 价格优势<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.真人模特&nbsp; 实物拍摄&nbsp; 杜绝假货<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.七天无理由退货-淘宝合作制定合作商<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.市场监控 统一零售价&nbsp; 良好的发展空间<br />
&nbsp;&nbsp;&nbsp;&nbsp; 您还在等什么？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 火热招收实体加盟商<br />
<br />
我们的经营理念 ：实体店和网店相结合的经营方式，使其更有竞争力!&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
网店+实店=零压货=高收益&nbsp;&nbsp; 打破传统营销模式 营造高效收益<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新时代的营销&nbsp; 1+1&gt;2？ 古由卡服饰 帮您实现<br />
<br />
=--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理商的等级制度<br />
每个代理商都有晋升的机会哦！请大家努力接单，共同创造财富！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级代理级别的条件！<br />
代理商的日均订单在10单以上者，可以申请超级代理商级别！审核期为一个礼拜（7天），由代理商想客服申请！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级代理商的优惠条件<br />
审核通过后，代理商可以享受每个商的代理价格（-1）的优惠条件！卖得越好，赚得越多哦，请代理商确保销量，因为客服会定期审核，若代理商的日均订单不超过10单，者降级为普通代理商！<br />
<br />
--------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 批发商的等级制度<br />
每个批发商也都有晋升的机会哦！请批发客户努力销售，共创财富佳绩！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成为超级批发商级别的条件！<br />
批发商每周平均进货在1万元以上者，可以申请超级批发商级别！审核期为一个月（4周），由批发商向客服申请！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 超级批发商的优惠条件<br />
审核通过后，批发商可以销售每个商品批价-1元的优惠条件！卖得越多，赚得越多哦！请批发商确保销售量，因为客服会定期审核，若批发商的每周平均进货量不超过1万则降级为普通批发商！<br />
<br />
<br />
<br />
<br />
服务承诺：自京东售后服务部收到返修品并确认属于质量故障开始计时，在100分钟内处理完您的一切售后问题！<br />
1、本服务仅针对购物15日内出现故障的客户，以客户收到产品之日起计算。 <br />
2、以京东售后服务部确认属于产品质量故障开始计时，产品质量故障以国家三包法等有关法律、法规为准。<br />
3、100分钟是指在京东售后拆包检测人员工作时间每周一至周五，上午9：00至12：00，下午13：00至17：00，法定节假日、停电等无法正常处理情况除外。 <br />
<br />
<br />
<br />
业务合作伙伴<br />
<br />
UROVO 依靠有价值的业务合作伙伴网络，为我们的客户提供用于识别、跟踪和管理供应链资产的目标解决方案。我们的合作伙伴、系统集成商、分销商、独立软件供应商和联盟是我们业务的基石和未来的发展空间。<br />
<br />
&nbsp;<br />
&nbsp;<br />
经销商合作<br />
双赢，是我们的目标，合作的目的是利用我们双方的资源，最终实现为我们共同的客户提供高价值解决方案。我们会根据合作伙伴的不同能力和承诺来确定合作伙伴。我们也会为我们的合作伙伴所做的努力给予回报，依此共赢。&nbsp;&nbsp; <br />
&nbsp;<br />
联盟合作<br />
共赢，是我们的目的。利用我们的资源，结合您的优势，共写新篇章。我们可通过多种合作模式，实现合作目的。&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
&nbsp;<br />', 24)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (145, N'新手指南6', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、 汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00 &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />
南新手指南新手指南新手指南新手指南<br />', 26)
GO
INSERT [dbo].[help] ([_id], [_title], [_content], [_cateid]) VALUES (146, N'新手指南7', N'Top订单状态解释等待订单确认：订单尚未获得确认，正常工作时间内，最迟3小时可以获得确认，如非正常工作时间，需要等到上班时间确认。 <br />
等待汇款：订单已获得确认，请按照确认后的总金额汇款，汇款完毕后请登记您的汇款信息，登记的汇款信息内容为：交易流水号、汇款时间、 汇入行、汇入卡号、汇款金额共５项。系统自动保留订单期限为3天，超过3天未汇清款项的订单，系统会自动将订单取消。 <br />
等待汇款确认：已提交汇款信息，财务人员正在查收汇款，会在查收到您的汇款后一个工作日内帮您确认款项。 <br />
等待分发：订单处于系统自动分发状态，每小时系统都会运行一次，运行后订单状态将改变。 <br />
等待打印出库单： 您的订单已经成功到达库房，正在等待库管打印出库单。这个过程一般比较短，无特殊情况，当日可以完成。 <br />
等待出库：网上订单被打印，目前订单在等待库房人员出库 ，无特殊情况，当日可以完成。 <br />
等待打包：订单已成功出库完毕，目前在等待打包，无特殊情况，当日可以完成！现在既可以查询到此次在京东所购买产品的产品序列号，产品出现任何问题，凭序 列号进行保修。 <br />
等待发货：已完成包装工作，正在等待承运人发货。 <br />
自提途中：订单已经出库完毕，正在由库房送往京东自提点途中，在此期间请勿上门自提。 <br />
等待上门提货：订单准备完毕，可以前来提货了。北京、上海，广州上门提货接待时间为9：00 &mdash;19：00。周六日正常接待上门提货！法定假日休息。所有上门提货订单一旦出库完毕，可以保留3天，在本状态超过3天（奥运期间，北京上门提货订单保留 时间延长至5天）未被提走的订单将被系统删除，货物另行销售。（如果需要查看上门提货具体地址，请点击这儿。） <br />
等待确认收货：您的货物已经发出，请您稍后注意查收。 <br />
已完成单：订单已成功完成交易，如收到产品有质量问题，请直接与售后部门联系。 <br />
&uarr;Top订单的维护订单取消：您可以进入&ldquo;订单中心&rdquo;自行取消订单<br />
南新手指南新手指南新手指南新手指南<br />', 26)
GO
SET IDENTITY_INSERT [dbo].[help] OFF
GO
SET IDENTITY_INSERT [dbo].[helpcate] ON 

GO
INSERT [dbo].[helpcate] ([_cateid], [_catename]) VALUES (2, N'常见问题')
GO
INSERT [dbo].[helpcate] ([_cateid], [_catename]) VALUES (4, N'货到付款')
GO
INSERT [dbo].[helpcate] ([_cateid], [_catename]) VALUES (19, N'物流配送')
GO
INSERT [dbo].[helpcate] ([_cateid], [_catename]) VALUES (20, N'售后服务')
GO
INSERT [dbo].[helpcate] ([_cateid], [_catename]) VALUES (21, N'公司简介')
GO
INSERT [dbo].[helpcate] ([_cateid], [_catename]) VALUES (22, N'联系合作')
GO
INSERT [dbo].[helpcate] ([_cateid], [_catename]) VALUES (23, N'招募专区')
GO
INSERT [dbo].[helpcate] ([_cateid], [_catename]) VALUES (24, N'合作伙伴')
GO
INSERT [dbo].[helpcate] ([_cateid], [_catename]) VALUES (25, N'会员服务')
GO
INSERT [dbo].[helpcate] ([_cateid], [_catename]) VALUES (26, N'新手指南')
GO
SET IDENTITY_INSERT [dbo].[helpcate] OFF
GO
SET IDENTITY_INSERT [dbo].[message] ON 

GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (1, N'闲逛哈丘', N'哇，这个商城的东西好丰富', N'127.0.0.1', CAST(0x00009DD90108B381 AS DateTime), N'我们会继续增加我们丰富的商品的', 1)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (2, N'打酱油来咯', N'这个商城还是不错的么，品种丰富，价格便宜', N'127.0.0.1', CAST(0x00009DD90112CC71 AS DateTime), N'谢谢，欢迎光临', 1)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (8, N'瞎逛来了``', N'没事来看看有没有便宜的东西', N'127.0.0.1', CAST(0x00009DD9015C5107 AS DateTime), N'自己到商城去看看不就知道了吗？', 1)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (9, N'衣服款式', N'衣服款式真多啊衣服款式真多啊衣服款式真多啊衣服款式真多啊衣服款式真多啊', N'127.0.0.1', CAST(0x00009DD901643E92 AS DateTime), NULL, 1)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (18, N'sfsdfdsf', N'sdfsdfds', N'127.0.0.1', CAST(0x00009DD901675A62 AS DateTime), N'别打这些乱七八招的字符', 1)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (19, N'cxvxcv', N'sdfdsfsdf', N'127.0.0.1', CAST(0x00009DD901675FD7 AS DateTime), N'别发这些乱七八遭的字符', 1)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (20, N'复古风', N'复古风复古风复古风复古风复古风复古风复古风复古风复古风复古风复古风', N'127.0.0.1', CAST(0x00009DD90168F606 AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (21, N'复古风', N'复古风复古风复古风复古风复古风复古风复古风', N'127.0.0.1', CAST(0x00009DD901690AFD AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (26, N'复古风', N'复古风复古风复古风复古风复古风', N'127.0.0.1', CAST(0x00009DD9016D58B2 AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (31, N'shit', N'shitshit', N'127.0.0.1', CAST(0x00009DDB00A75435 AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (35, N'ss', N'ss', N'127.0.0.1', CAST(0x00009DDC00EE71C2 AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (36, N'dfdf', N'dfdfd', N'192.168.1.115', CAST(0x00009DDC0120CC1C AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (37, N'dfdf', N'dfdfd', N'192.168.1.115', CAST(0x00009DDC0120D3FB AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (38, N'dfdf', N'dfdfd', N'192.168.1.115', CAST(0x00009DDC0120EA1E AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (39, N'sdfsd', N'sdfsdfd', N'127.0.0.1', CAST(0x00009DDC014DB4C0 AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (40, N'cc', N'cc', N'127.0.0.1', CAST(0x00009DDC014F68A7 AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (41, N'xcvcx', N'xcv', N'127.0.0.1', CAST(0x00009DDC014FBF64 AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (42, N'fuck', N'shit,ok?', N'127.0.0.1', CAST(0x00009DDC01544DF9 AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (43, N'dss', N'dds', N'127.0.0.1', CAST(0x00009DDC01548F16 AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (44, N'ddd', N'ddd', N'127.0.0.1', CAST(0x00009DDC0154957E AS DateTime), NULL, 0)
GO
INSERT [dbo].[message] ([_id], [_title], [_content], [_ip], [_posttime], [_reply], [_state]) VALUES (45, N'ss', N'ss', N'127.0.0.1', CAST(0x00009DDC0154A3F1 AS DateTime), NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[message] OFF
GO
SET IDENTITY_INSERT [dbo].[news] ON 

GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (25, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 70, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80016E851 AS DateTime), 20, 1)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (26, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 12, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80017BEF9 AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (27, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 6, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80017F775 AS DateTime), 22, 1)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (28, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 6, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001815F7 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (30, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 3, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800181613 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (32, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018162A AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (34, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018354B AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (36, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 2, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018356C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (38, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800183583 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (40, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (41, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (42, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (43, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 25, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800A47EAB AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (45, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800A47EE8 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (47, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800A47F08 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (49, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 2, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (50, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (51, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (52, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (53, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (54, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (55, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (56, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (57, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (58, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 5, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118924F AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (60, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (61, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (62, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 5, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA01189164 AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (63, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (64, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (65, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 5, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA01189164 AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (66, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (67, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (68, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 6, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA01189164 AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (69, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBF9 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (72, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (73, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (74, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (75, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (76, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (77, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (78, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (79, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (80, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (81, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (82, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 5, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (83, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (84, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (85, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (86, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 5, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDA0118EBA0 AS DateTime), 21, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (87, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (88, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (89, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (90, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (91, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (92, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (93, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 3, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (94, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (95, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (96, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 26, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800A47E28 AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (97, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800A47E28 AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (98, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800A47E28 AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (99, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 2, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (100, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (101, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (102, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 2, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (103, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (104, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 19, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (105, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 2, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (106, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (107, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (108, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (109, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (110, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (111, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 1, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (112, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (113, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (114, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 26, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800A47E28 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (115, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800A47E28 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (116, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD800A47E28 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (117, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (118, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (119, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD80018153C AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (120, N'中组部试点在京正局级干部到地方任职', N'哈秋网', N'ace', 1, 4, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (121, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (122, N'公安部原副局长相怀珠不满获刑12年判决上诉', N'哈秋网', N'ace', 0, 0, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DD8001834E0 AS DateTime), 20, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (123, N'七夕活动', N'哈秋网', N'admin', 0, 3, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDB009CB31D AS DateTime), 22, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (124, N'中组部试点在京正局级干部到地方任职 ', N'哈秋网', N'ace', 1, 14, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDB00A0D205 AS DateTime), 18, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (125, N'黄光裕胞兄黄俊钦涉嫌内幕交易等罪名被公诉', N'哈秋网', N'ace', 0, 5, N'<div>&nbsp;</div>
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt" align="left"><span style="color: black">　近期，在京的中央各直属机关、部委的2000多名司局官员们或多或少地关心着一个话题&mdash;&mdash;到地方</span><span style="color: black">&ldquo;</span><span style="color: black">交流任职</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据今年中组部干部任命</span><span style="color: black">&ldquo;</span><span style="color: black">新举措</span><span style="color: black">&rdquo;</span><span style="color: black">精神，各部委及中央直属机构将派出60名正局级干部到地方任职锻炼&mdash;&mdash;任职地方副市长或副书记。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">我们分到了2个名额，内部正在动员符合条件的司局长报名。</span><span style="color: black">&rdquo;</span><span style="color: black">一位国家发改委官员对本报记者透露，包括任命资格条件、监督等相关文件已下发各部委。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　和以往干部交流形式</span><span style="color: black">&ldquo;</span><span style="color: black">挂职</span><span style="color: black">&rdquo;</span><span style="color: black">不同，此次的提法是</span><span style="color: black">&ldquo;</span><span style="color: black">任职</span><span style="color: black">&rdquo;</span><span style="color: black">。据一位参与政策制定的专家透露，今年是试点，中组部有意明年进一步扩大中央到地方的任职人数范围。这也意味着今后干部任命更强调</span><span style="color: black">&ldquo;</span><span style="color: black">基层工作经验</span><span style="color: black">&rdquo;</span><span style="color: black">，及中央和地方互动。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><b><span style="color: black">5%</span></b><b><span style="color: black">司局</span></b><b><span style="color: black">&ldquo;</span></b><b><span style="color: black">京官</span></b><b><span style="color: black">&rdquo;</span></b><b><span style="color: black">赴地方</span></b></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这次派到地方任职的干部的选拔，基本程序是组织大家报名。</span><span style="color: black">&rdquo;</span><span style="color: black">参与此次干部任职政策指定专家对本报记者透露，</span><span style="color: black">&ldquo;</span><span style="color: black">目前中央直属机关司局级干部的报名，大概是5∶1的比例</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　据悉，今年中组部选派到地方去任职的官员名额是60个，目前中央直属机关的司局级官员在2000人左右，选派60名大约占5%。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">今年是试点，将来任职地方的人数，每年不会少于120名。</span><span style="color: black">&rdquo;</span><span style="color: black">上述参与政策制定的专家透露，</span><span style="color: black">&ldquo;</span><span style="color: black">整个局级干部中三分之二都没有基层工作经历，45岁以下的局级干部几乎都要轮一遍。</span><span style="color: black">&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　从人事政策角度看，中央机关官员</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">地方，对地方和</span><span style="color: black">&ldquo;</span><span style="color: black">交流</span><span style="color: black">&rdquo;</span><span style="color: black">官员本身都具有好处。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">司局级干部对于国家宏观的情况都比较了解，有全国的意识，对于政策的掌握更到位；长期在部委工作，与部委各部门的人比较熟，这样到了地方工作就便于地方与部委的沟通。</span><span style="color: black">&rdquo;</span><span style="color: black">北京师范大学政治与国际关系学院的施雪华教授对本报记者表示。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　而此次司局</span><span style="color: black">&ldquo;</span><span style="color: black">京官</span><span style="color: black">&rdquo;</span><span style="color: black">任职地方，背景则是新一轮干部人事制度改革。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　去年12月份中央正式向全国下发了《2010-2020年深化干部人事制度改革规划纲要》，《纲要》提出十一项举措。其中，提到</span><span style="color: black">&ldquo;</span><span style="color: black">加强从基层选拔干部</span><span style="color: black">&rdquo;</span><span style="color: black">。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　</span><span style="color: black">&ldquo;</span><span style="color: black">这就意味着以后选拔干部注重从基层选拔。</span><span style="color: black">&rdquo;</span><span style="color: black"> 据曾经参与此条政策制定的专家对本报记者分析，没有基层工作经历，就意味着不能担任局级以上的干部。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt" align="left"><span style="color: black">　　该专家表示，《纲要》已经确定，到了2020年没有基层任经验的领导干部原则上不能再提拔了。</span></div>', CAST(0x00009DDB00A6E8D5 AS DateTime), NULL, 0)
GO
INSERT [dbo].[news] ([_id], [_title], [_from], [_author], [_top], [_click], [_content], [_posttime], [_cateid], [_ispic]) VALUES (127, N'dedd', N'哈秋网', N'ddd', 0, 0, N'<img height="268" width="483" alt="" src="/UI/Files/image/image002.gif" />dd', CAST(0x00009DDC0103CBAD AS DateTime), 18, 1)
GO
SET IDENTITY_INSERT [dbo].[news] OFF
GO
SET IDENTITY_INSERT [dbo].[newscate] ON 

GO
INSERT [dbo].[newscate] ([_cateid], [_catename]) VALUES (18, N'站内新闻')
GO
INSERT [dbo].[newscate] ([_cateid], [_catename]) VALUES (19, N'军事新闻')
GO
INSERT [dbo].[newscate] ([_cateid], [_catename]) VALUES (20, N'国际新闻')
GO
INSERT [dbo].[newscate] ([_cateid], [_catename]) VALUES (21, N'国内新闻')
GO
INSERT [dbo].[newscate] ([_cateid], [_catename]) VALUES (22, N'时尚新闻')
GO
SET IDENTITY_INSERT [dbo].[newscate] OFF
GO
SET IDENTITY_INSERT [dbo].[orderdetail] ON 

GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (50, N'20100824050136554', 111, 3812073.0000, N'4773', 45, 34343.0000, N'43', N'科比与黄福强携手代言NIKE', N'XXS', N'红色', N'show_imageurl/show_20100824044442522.jpg', N'短袖')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (51, N'20100824050136554', 111, 24642.0000, N'3552', 39, 222.0000, N'32', N'科比穿过的裤子', N'XXS', N'红色', N'show_imageurl/show_20100824042606585.jpg', N'牛仔裤')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (52, N'20100824050136554', 111, 24642.0000, N'3552', 39, 222.0000, N'32', N'科比穿过的裤子', N'XXS', N'黄色', N'show_imageurl/show_20100824042651788.jpg', N'牛仔裤')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (53, N'20100824050136554', 222, 49284.0000, N'7104', 39, 222.0000, N'32', N'科比穿过的裤子', N'XS', N'红色', N'show_imageurl/show_20100824042606585.jpg', N'牛仔裤')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (54, N'20100824051124913', 33, 1133319.0000, N'1419', 45, 34343.0000, N'43', N'科比与黄福强携手代言NIKE', N'XXS', N'红色', N'show_imageurl/show_20100824044442522.jpg', N'短袖')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (55, N'20100824051124913', 33, 1133319.0000, N'1419', 45, 34343.0000, N'43', N'科比与黄福强携手代言NIKE', N'XS', N'绿色', N'show_imageurl/show_20100824044505116.jpg', N'短袖')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (56, N'20100824051124913', 23, 789889.0000, N'989', 45, 34343.0000, N'43', N'科比与黄福强携手代言NIKE', N'M', N'红色', N'show_imageurl/show_20100824044442522.jpg', N'短袖')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (57, N'20100824051124913', 11, 242.0000, N'11', 43, 22.0000, N'1', N'板鞋', N'L', N'红色', N'show_imageurl/show_20100824043059007.jpg', N'板鞋')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (58, N'20100824051204475', 1, 34343.0000, N'43', 45, 34343.0000, N'43', N'科比与黄福强携手代言NIKE', N'XXS', N'红色', N'show_imageurl/show_20100824044442522.jpg', N'短袖')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (59, N'20100824051225804', 1, 34343.0000, N'43', 45, 34343.0000, N'43', N'科比与黄福强携手代言NIKE', N'XXS', N'红色', N'show_imageurl/show_20100824044442522.jpg', N'短袖')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (60, N'20100824051234866', 10, 220.0000, N'10', 43, 22.0000, N'1', N'板鞋', N'L', N'红色', N'show_imageurl/show_20100824043059007.jpg', N'板鞋')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (61, N'20100824051234866', 1, 34343.0000, N'43', 45, 34343.0000, N'43', N'科比与黄福强携手代言NIKE', N'XXS', N'红色', N'show_imageurl/show_20100824044442522.jpg', N'短袖')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (62, N'20100824051530319', 1, 34343.0000, N'43', 45, 34343.0000, N'43', N'科比与黄福强携手代言NIKE', N'XXS', N'红色', N'show_imageurl/show_20100824044442522.jpg', N'短袖')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (63, N'20100824051605132', 1, 34343.0000, N'43', 45, 34343.0000, N'43', N'科比与黄福强携手代言NIKE', N'XXS', N'红色', N'show_imageurl/show_20100824044442522.jpg', N'短袖')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (64, N'20100824091446538', 1, 12.0000, N'1', 40, 12.0000, N'1', N'女生腰带', N'无', N'黑色', N'show_imageurl/show_20100824042747632.jpg', N'女士腰带')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (65, N'20100824091729225', 1, 22.0000, N'1', 43, 22.0000, N'1', N'板鞋', N'L', N'红色', N'show_imageurl/show_20100824043059007.jpg', N'板鞋')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (66, N'20100824091827038', 1, 344.0000, N'43', 42, 344.0000, N'43', N'苍天——空', N'XL', N'红色', N'show_imageurl/show_20100824043052538.jpg', N'牛仔裤')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (67, N'20100824091857069', 1, 222.0000, N'32', 39, 222.0000, N'32', N'科比穿过的裤子', N'XXS', N'红色', N'show_imageurl/show_20100824042606585.jpg', N'牛仔裤')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (68, N'20100824094302975', 99, 3399957.0000, N'4257', 45, 34343.0000, N'43', N'科比与黄福强携手代言NIKE', N'XXS', N'红色', N'show_imageurl/show_20100824044442522.jpg', N'短袖')
GO
INSERT [dbo].[orderdetail] ([_id], [_ordernum], [_count], [_sumprice], [_sumweight], [_proid], [_price], [_weight], [_title], [_size], [_color], [_proimage], [_cate]) VALUES (69, N'20100824094302975', 1, 344.0000, N'43', 42, 344.0000, N'43', N'苍天——空', N'XL', N'红色', N'show_imageurl/show_20100824043052538.jpg', N'牛仔裤')
GO
SET IDENTITY_INSERT [dbo].[orderdetail] OFF
GO
SET IDENTITY_INSERT [dbo].[ordertable] ON 

GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (66, N'20100824050136554', 0, 0, 18, CAST(0x00009DDC01195164 AS DateTime), NULL, N'放松放松的', 4, N'福建省南安市乐风镇**村', 3910641.0000, N'86567252', N'13705011717', N'黄福强', N'362324', 1, N'在线支付')
GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (67, N'20100824051124913', 0, 0, 18, CAST(0x00009DDC011C02E0 AS DateTime), NULL, N'sdafsdfs', 4, N'福建省南安市乐风镇**村', 3056769.0000, N'86567252', N'13705011717', N'黄福强', N'362324', 1, N'在线支付')
GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (68, N'20100824051204475', 0, 0, 18, CAST(0x00009DDC011C3138 AS DateTime), NULL, N'', 1, N'福建省南安市乐风镇**村', 34343.0000, N'86567252', N'13705011717', N'黄福强', N'362324', 0, N'在线支付')
GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (69, N'20100824051225804', 1, 1, 18, CAST(0x00009DDC011C4A37 AS DateTime), N'', N'', 1, N'福建省南安市乐风镇**村', 34343.0000, N'86567252', N'13705011717', N'黄福强', N'362324', 0, N'在线支付')
GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (70, N'20100824051234866', 0, 0, 21, CAST(0x00009DDC011C54D6 AS DateTime), NULL, N'eedddddddd', 2, N'13626068079', 34563.0000, N'13626068079', N'13626068079', N'张sir', N'362700', 1, N'货到付款')
GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (71, N'20100824051530319', 0, 0, 18, CAST(0x00009DDC011D2271 AS DateTime), NULL, N'', 1, N'福建省南安市乐风镇**村', 34343.0000, N'86567252', N'13705011717', N'黄福强', N'362324', 0, N'在线支付')
GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (72, N'20100824051605132', 0, 0, 18, CAST(0x00009DDC011D4B3D AS DateTime), NULL, N'j', 1, N'福建省南安市乐风镇**村', 34343.0000, N'86567252', N'13705011717', N'黄福强', N'362324', 0, N'在线支付')
GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (74, N'20100824091729225', 0, 0, 25, CAST(0x00009DDC015F98E5 AS DateTime), NULL, N'dasas', 1, N'adsasd', 22.0000, N'sda', N'dasa', N'ad', N'asd', 0, N'在线支付')
GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (75, N'20100824091827038', 0, 0, 9, CAST(0x00009DDC015FDCA5 AS DateTime), NULL, N'', 1, N'福建省宁德市', 344.0000, N'2732675', N'13459463050', N'王宁辉', N'352105', 0, N'在线支付')
GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (76, N'20100824091857069', 0, 0, 9, CAST(0x00009DDC015FFFD7 AS DateTime), NULL, N'', 1, N'福建省宁德市', 222.0000, N'2732675', N'13459463050', N'王宁辉', N'352105', 0, N'在线支付')
GO
INSERT [dbo].[ordertable] ([_id], [_ordernum], [_paystate], [_prostate], [_userid], [_ordertime], [_sellremarks], [_buyremarks], [_count], [_address], [_sumprice], [_tel], [_mobile], [_name], [_mail], [_needbill], [_waysgive]) VALUES (77, N'20100824094302975', 0, 0, 22, CAST(0x00009DDC01669E47 AS DateTime), NULL, N'', 2, N'aa', 3400301.0000, N'aa', N'aa', N'aa', N'aa', 0, N'在线支付')
GO
SET IDENTITY_INSERT [dbo].[ordertable] OFF
GO
SET IDENTITY_INSERT [dbo].[procate] ON 

GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (17, N'牛仔裤', 2)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (18, N'毛衣', 1)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (19, N'短袖', 1)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (20, N'短裤', 2)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (21, N'短裙', 3)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (22, N'迷你裙', 3)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (23, N'棒球帽', 4)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (24, N'太阳帽', 4)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (25, N'男士围巾', 7)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (26, N'女生手套', 6)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (27, N'女士围巾', 6)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (28, N'运动鞋', 5)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (29, N'板鞋', 5)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (30, N'男士腰带', 8)
GO
INSERT [dbo].[procate] ([_cateid], [_catename], [_fathercateid]) VALUES (31, N'女士腰带', 8)
GO
SET IDENTITY_INSERT [dbo].[procate] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (30, N'蓝碧草', 20, 144.0000, 121.0000, N'<p>动软.Net代码生成器Codematic 是一款为C#数据库程序员设计的自动代码生成器，Codematic 生成的代码基于面向对象的思想和三层架构设计，结合了Petshop中经典的思想和设计模式，融入了工厂模式，反射机制等等一些思想。采用Model+DAL +BLL+Web 的设计，主要实现在对应数据库中表的基类代码的自动生成，包括生成属性、添加、修改、删除、查询、存在性、Model 类构造等基础代码片断,支持不同3种架构代码生成，使程序员可以节省大量机械录入的时间和重复劳动，而将精力集中于核心业务逻辑的开发。 <br />
&nbsp;&nbsp; Codematic 同时提供方便的多类型数据库管理，查询分析器，SQL脚本生成，存储过程生成，数据库文档生成，Web项目发布，代码批量自动输出等多项开发工作中常用到的功能，您可以很方便轻松地进行项目开发。</p>
<p>版本更新：<br />
1. 完善了单类结构中非SQL数据库可能存在&ldquo;@&rdquo;，括号&quot;[&quot; 和 &quot;]的问题<br />
2. 完善了&ldquo;GetList&rdquo;方法缺少三参数重载。<br />
3. 完善了浏览数据库数据报错的问题。<br />
4. 数据库名和表实现按名称排序。<br />
5. 页面代码生成包含主键的问题。<br />
6. 增加了Access数据库字段类型映射机制。<br />
7. 增加了查看Oracle的存储过程。</p>
<p>&nbsp;</p>
<p>在线帮助：<a href="http://www.maticsoft.com">http://www.maticsoft.com</a><br />
此版本是一个开发中的版本，一些功能尚未彻底完成，难免有一些bug，如有问题请及时反馈。<br />
可以发邮件至<a href="mailto:maticsoft@sohu.com">maticsoft@sohu.com</a> 或者来 bbs.maticsoft.com交流。</p>
<p>&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;&equiv;</p>
<p>Builder&nbsp; 代码生成插件源码<br />
2.1版本以后增加了代码插件机制，支持可扩展的代码生成插件，用户可以定制自己的代码生成的插件，根据接口开发自己的代码生成方式，按用户需求进行代码生成。<br />
&nbsp;</p>', N'2010-8-24 11:01:08', N'233', 1, 1, 1, 34, N'20100824105818328')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (31, N'衣服 请问恶我', 17, 56.0000, 45.0000, N'<div style="text-align: center">好的啊大萨斯打毒蛇神殿阿达撒打开的撒</div>
<br />
<br />
&nbsp;<br />
<p class="MsoNormal" align="left" style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left; mso-pagination: widow-orphan"><b><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt">　企业增长与工资增长挂钩</span></b><span lang="EN-US" style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt"><o:p></o:p></span></p>
<p class="MsoNormal" align="left" style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left; mso-pagination: widow-orphan"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt">　　目前这份《工资条例<span lang="EN-US">(</span>草案<span lang="EN-US">)</span>》的内容主要包括工资决定的方式、最低工资、工资支付、特殊情况下的工资支付、工资的宏观调控、工资法律责任等<span lang="EN-US">9</span>个方面。<span lang="EN-US"><o:p></o:p></span></span></p>
<p class="MsoNormal" align="left" style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left; mso-pagination: widow-orphan"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt">　　记者了解到，目前社会各界最关心的是工资增长机制如何确定。<span lang="EN-US"><o:p></o:p></span></span></p>
<p class="MsoNormal" align="left" style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left; mso-pagination: widow-orphan"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt">　　中国劳动保障报社法律事务中心副主任鲁志峰认为，《条例》草案中最大的亮点是工资增长需要协商，企业增长要与职工工资增长适度挂钩，<span lang="EN-US">&ldquo;</span>将来要工会代表职工来协商，最重要的就是工资增长机制和工资协商这两块<span lang="EN-US">&rdquo;</span>。<span lang="EN-US"><o:p></o:p></span></span></p>
<p class="MsoNormal" align="left" style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left; mso-pagination: widow-orphan"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt">　　而此前曾有消息称，《条例》草案确定职工工资增长应充分考虑当地<span lang="EN-US">CPI</span>因素。对此，几位参与草案讨论的人士未予证实。<span lang="EN-US"><o:p></o:p></span></span></p>
<p class="MsoNormal" align="left" style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left; mso-pagination: widow-orphan"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt">　　人社部相关人士也向记者透露：<span lang="EN-US">&ldquo;CPI</span>确实是调薪应该考虑的因素，有些地区多年不涨工资，有些地区虽然规定了最低工资，但是调节职工工资分配，最终还是要依靠建立职工工资正常增长机制。<span lang="EN-US">&rdquo;<o:p></o:p></span></span></p>
<p class="MsoNormal" align="left" style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left; mso-pagination: widow-orphan"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt">　　学者们的看法是，职工工资究竟能够涨多少，应该有一个合理的空间作为参考。<span lang="EN-US"><o:p></o:p></span></span></p>
<span style="font-size: 10.5pt; color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">　　人社部劳动工资研究所研究员马小丽认为，建立职工工资正常增长机制，一是要建制度，</span>', N'2010-8-24 11:01:43', N'1', 1, 1, 1, 6465, N'20100824105754625')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (32, N'我俄方二百二十二2', 25, 34.0000, 5.0000, N'热额头', N'2010-8-24 2:11:08', N'53', 0, 0, 0, 654, N'20100824021028328')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (33, N'T恤', 19, 45.0000, 44.0000, N'<div style="text-align: left; line-height: 17.25pt; margin: 11.25pt 0cm" align="left"><b><span style="color: black">　企业增长与工资增长挂钩</span></b></div>
<div style="text-align: left; line-height: 17.25pt; margin: 11.25pt 0cm" align="left"><span style="color: black">　　目前这份《工资条例(草案)》的内容主要包括工资决定的方式、最低工资、工资支付、特殊情况下的工资支付、工资的宏观调控、工资法律责任等9个方面。</span></div>
<div style="text-align: left; line-height: 17.25pt; margin: 11.25pt 0cm" align="left"><span style="color: black">　　记者了解到，目前社会各界最关心的是工资增长机制如何确定。</span></div>
<div style="text-align: left; line-height: 17.25pt; margin: 11.25pt 0cm" align="left"><span style="color: black">　　中国劳动保障报社法律事务中心副主任鲁志峰认为，《条例》草案中最大的亮点是工资增长需要协商，企业增长要与职工工资增长适度挂钩，&ldquo;将来要工会代表职工来协商，最重要的就是工资增长机制和工资协商这两块&rdquo;。</span></div>
<div style="text-align: left; line-height: 17.25pt; margin: 11.25pt 0cm" align="left"><span style="color: black">　　而此前曾有消息称，《条例》草案确定职工工资增长应充分考虑当地CPI因素。对此，几位参与草案讨论的人士未予证实。</span></div>
<div style="text-align: left; line-height: 17.25pt; margin: 11.25pt 0cm" align="left"><span style="color: black">　　人社部相关人士也向记者透露：&ldquo;CPI确实是调薪应该考虑的因素，有些地区多年不涨工资，有些地区虽然规定了最低工资，但是调节职工工资分配，最终还是要依靠建立职工工资正常增长机制。&rdquo;</span></div>
<div style="text-align: left; line-height: 17.25pt; margin: 11.25pt 0cm" align="left"><span style="color: black">　　学者们的看法是，职工工资究竟能够涨多少，应该有一个合理的空间作为参考。</span></div>
<span style="color: black; font-size: 10.5pt">　　人社部劳动工资研究所研究员马小丽认为，建立职工工资正常增长机制，一是要建制度，</span>', N'2010-8-24 4:11:04', N'1', 1, 1, 1, 34, N'20100824040914085')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (34, N'特价短袖', 17, 45.0000, 30.0000, N'<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">本报北京8月3日电&nbsp;&nbsp;(记者白天亮)《国务院国资委2009年回顾》今天发布，这是国资委首次对外公开发布年度回顾，重点向社会披露中央企业履行社会责任的情况，同时对社会上广为关注的央企国有资产保值增值、税负、薪酬、垄断等状况进行了回应。国资委副主任黄淑和表示，这是国资委提高透明度，落实政务公开，接受社会监督的一项内容，今后将定期发布。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　&mdash;&mdash;国有资产保值增值方面，《回顾》显示，2002年到2009年，中央企业的资产总额从7.13万亿元增加到21万亿元，年均增长16.74%；营业收入从3.36万亿元增加到12.63万亿元，年均增长20.8%；实现利润从2405亿元增加到8151亿元，年均增长19%。从2006年开始，中央企业向国家上缴国有资本收益，已累计上缴1371亿元。2009年中央企业完成向社保基金转持国有股55.3亿股，对应的市值为429.68亿元。</span></div>', N'2010-8-24 4:12:30', N'1', 1, 1, 1, 22, N'20100824041104850')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (35, N'特价衣服', 17, 55.0000, 30.0000, N'&lt;div style=&quot;margin: 0cm 0cm 11.25pt; line-height: 17.25pt; text-align: left&quot; align=&quot;left&quot;&gt;&lt;span style=&quot;color: black&quot;&gt;本报北京8月3日电&amp;nbsp;&amp;nbsp;(记者白天亮)《国务院国资委2009年回顾》今天发布，这是国资委首次对外公开发布年度回顾，重点向社会披露中央企业履行社会责任的情况，同时对社会上广为关注的央企国有资产保值增值、税负、薪酬、垄断等状况进行了回应。国资委副主任黄淑和表示，这是国资委提高透明度，落实政务公开，接受社会监督的一项内容，今后将定期发布。&lt;/span&gt;&lt;/div&gt; &lt;div style=&quot;margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left&quot; align=&quot;left&quot;&gt;&lt;span style=&quot;color: black&quot;&gt;　　&amp;mdash;&amp;mdash;国有资产保值增值方面，《回顾》显示，2002年到2009年，中央企业的资产总额从7.13万亿元增加到21万亿元，年均增长16.74%；营业收入从3.36万亿元增加到12.63万亿元，年均增长20.8%；实现利润从2405亿元增加到8151亿元，年均增长19%。从2006年开始，中央企业向国家上缴国有资本收益，已累计上缴1371亿元。2009年中央企业完成向社保基金转持国有股55.3亿股，对应的市值为429.68亿元。&lt;/span&gt;&lt;/div&gt;', N'2010-8-24 4:13:16', N'1', 1, 1, 1, 32, N'20100824041230819')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (36, N'裤子', 17, 100.0000, 33.0000, N'', N'2010-8-24 4:15:20', N'1', 1, 1, 1, 34, N'20100824041316538')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (37, N'经典帽子', 24, 34.0000, 12.0000, N'<div style="text-align: left; line-height: 17.25pt; margin: 11.25pt 0cm" align="left"><span style="color: black">　&mdash;&mdash;垄断行业调整改革方面，《回顾》介绍了电力、石油化工、通信三个行业。其中电力行业，通过改革，目前华能等7家电力央企发电总量占全国总量的比重在一半左右，最大的华能集团仅占全国发电量的11%，市场准入早已放开，已形成竞争格局。石油石化行业，《回顾》指出，中央企业主要有三家石油化工企业。在世界主要50个石油生产国和石油消费国中，76%的国家是一个国家只有一家石油公司，20%的国家是不超过3家石油公司。通信行业，三家央企通过调整重组，实现了全业务经营，形成了竞争格局。</span></div>', N'2010-8-24 4:26:43', N'1', 1, 1, 1, 21, N'20100824042437616')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (38, N'科比穿过的裤子', 17, 333.0000, 222.0000, N'<strong>企业增长与工资增长挂钩</strong>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　目前这份《工资条例(草案)》的内容主要包括工资决定的方式、最低工资、工资支付、特殊情况下的工资支付、工资的宏观调控、工资法律责任等9个方面。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　记者了解到，目前社会各界最关心的是工资增长机制如何确定。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　中国劳动保障报社法律事务中心副主任鲁志峰认为，《条例》草案中最大的亮点是工资增长需要协商，企业增长要与职工工资增长适度挂钩，&ldquo;将来要工会代表职工来协商，最重要的就是工资增长机制和工资协商这两块&rdquo;。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　而此前曾有消息称，《条例》草案确定职工工资增长应充分考虑当地CPI因素。对此，几位参与草案讨论的人士未予证实。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　人社部相关人士也向记者透露：&ldquo;CPI确实是调薪应该考虑的因素，有些地区多年不涨工资，有些地区虽然规定了最低工资，但是调节职工工资分配，最终还是要依靠建立职工工资正常增长机制。&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　学者们的看法是，职工工资究竟能够涨多少，应该有一个合理的空间作为参考。</span></div>
<span style="font-size: 10.5pt; color: black">　　人社部劳动工资研究所研究员马小丽认为，建立职工工资正常增长机制，一是要建制度，</span>', N'2010-8-24 4:27:21', N'32', 1, 1, 1, 234, N'20100824042440585')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (39, N'科比穿过的裤子', 17, 333.0000, 222.0000, N'<strong>企业增长与工资增长挂钩</strong>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　目前这份《工资条例(草案)》的内容主要包括工资决定的方式、最低工资、工资支付、特殊情况下的工资支付、工资的宏观调控、工资法律责任等9个方面。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　记者了解到，目前社会各界最关心的是工资增长机制如何确定。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　中国劳动保障报社法律事务中心副主任鲁志峰认为，《条例》草案中最大的亮点是工资增长需要协商，企业增长要与职工工资增长适度挂钩，&ldquo;将来要工会代表职工来协商，最重要的就是工资增长机制和工资协商这两块&rdquo;。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　而此前曾有消息称，《条例》草案确定职工工资增长应充分考虑当地CPI因素。对此，几位参与草案讨论的人士未予证实。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　人社部相关人士也向记者透露：&ldquo;CPI确实是调薪应该考虑的因素，有些地区多年不涨工资，有些地区虽然规定了最低工资，但是调节职工工资分配，最终还是要依靠建立职工工资正常增长机制。&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　学者们的看法是，职工工资究竟能够涨多少，应该有一个合理的空间作为参考。</span></div>
<span style="font-size: 10.5pt; color: black">　　人社部劳动工资研究所研究员马小丽认为，建立职工工资正常增长机制，一是要建制度，</span>', N'2010-8-24 4:27:28', N'32', 1, 1, 1, 234, N'20100824042440585')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (40, N'女生腰带', 31, 23.0000, 12.0000, N'<div style="text-align: left; line-height: 17.25pt; margin: 11.25pt 0cm" align="left"><span style="color: black">　&mdash;&mdash;垄断行业调整改革方面，《回顾》介绍了电力、石油化工、通信三个行业。其中电力行业，通过改革，目前华能等7家电力央企发电总量占全国总量的比重在一半左右，最大的华能集团仅占全国发电量的11%，市场准入早已放开，已形成竞争格局。石油石化行业，《回顾》指出，中央企业主要有三家石油化工企业。在世界主要50个石油生产国和石油消费国中，76%的国家是一个国家只有一家石油公司，20%的国家是不超过3家石油公司。通信行业，三家央企通过调整重组，实现了全业务经营，形成了竞争格局。</span></div>', N'2010-8-24 4:28:26', N'1', 1, 1, 1, 133, N'20100824042643757')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (41, N'女生手套', 31, 34.0000, 22.0000, N'', N'2010-8-24 4:30:01', N'1', 1, 1, 1, 13, N'20100824042826397')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (42, N'苍天——空', 17, 433.0000, 344.0000, N'<span id="ctl00_ContentPlaceHolder1_content_s">&nbsp;
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">本报北京8月3日电&nbsp;&nbsp;(记者白天亮)《国务院国资委2009年回顾》今天发布，这是国资委首次对外公开发布年度回顾，重点向社会披露中央企业履行社会责任的情况，同时对社会上广为关注的央企国有资产保值增值、税负、薪酬、垄断等状况进行了回应。国资委副主任黄淑和表示，这是国资委提高透明度，落实政务公开，接受社会监督的一项内容，今后将定期发布。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　&mdash;&mdash;国有资产保值增值方面，《回顾》显示，2002年到2009年，中央企业的资产总额从7.13万亿元增加到21万亿元，年均增长16.74%；营业收入从3.36万亿元增加到12.63万亿元，年均增长20.8%；实现利润从2405亿元增加到8151亿元，年均增长19%。从2006年开始，中央企业向国家上缴国有资本收益，已累计上缴1371亿元。2009年中央企业完成向社保基金转持国有股55.3亿股，对应的市值为429.68亿元。<br />
<span id="ctl00_ContentPlaceHolder1_content_s">&nbsp;
<div style="margin: 0cm 0cm 11.25pt; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">本报北京8月3日电&nbsp;&nbsp;(记者白天亮)《国务院国资委2009年回顾》今天发布，这是国资委首次对外公开发布年度回顾，重点向社会披露中央企业履行社会责任的情况，同时对社会上广为关注的央企国有资产保值增值、税负、薪酬、垄断等状况进行了回应。国资委副主任黄淑和表示，这是国资委提高透明度，落实政务公开，接受社会监督的一项内容，今后将定期发布。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　&mdash;&mdash;国有资产保值增值方面，《回顾》显示，2002年到2009年，中央企业的资产总额从7.13万亿元增加到21万亿元，年均增长16.74%；营业收入从3.36万亿元增加到12.63万亿元，年均增长20.8%；实现利润从2405亿元增加到8151亿元，年均增长19%。从2006年开始，中央企业向国家上缴国有资本收益，已累计上缴1371亿元。2009年中央企业完成向社保基金转持国有股55.3亿股，对应的市值为429.68亿元。</span></div>
</span></span></div>
</span>', N'2010-8-24 4:32:01', N'43', 1, 1, 1, 43, N'20100824043011304')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (43, N'板鞋', 29, 55.0000, 22.0000, N'', N'2010-8-24 4:32:01', N'1', 1, 1, 1, 33, N'20100824043001694')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (44, N'鞋子', 29, 55.0000, 34.0000, N'', N'2010-8-24 4:35:45', N'1', 1, 1, 1, 32, N'20100824043201147')
GO
INSERT [dbo].[product] ([_id], [_title], [_cateid], [_marketprice], [_localprice], [_content], [_posttime], [_weight], [_ischeap], [_isrecommend], [_top], [_procount], [_imageid]) VALUES (45, N'科比与黄福强携手代言NIKE', 19, 434343.0000, 34343.0000, N'<br />
记者了解到，目前社会各界最关心的是工资增长机制如何确定。
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　中国劳动保障报社法律事务中心副主任鲁志峰认为，《条例》草案中最大的亮点是工资增长需要协商，企业增长要与职工工资增长适度挂钩，&ldquo;将来要工会代表职工来协商，最重要的就是工资增长机制和工资协商这两块&rdquo;。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　而此前曾有消息称，《条例》草案确定职工工资增长应充分考虑当地CPI因素。对此，几位参与草案讨论的人士未予证实。</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　人社部相关人士也向记者透露：&ldquo;CPI确实是调薪应该考虑的因素，有些地区多年不涨工资，有些地区虽然规定了最低工资，但是调节职工工资分配，最终还是要依靠建立职工工资正常增长机制。&rdquo;</span></div>
<div style="margin: 11.25pt 0cm; line-height: 17.25pt; text-align: left" align="left"><span style="color: black">　　学者们的看法是，职工工资究竟能够涨多少，应该有一个合理的空间作为参考。</span></div>
<span style="font-size: 10.5pt; color: black">　　人社部劳动工资研究所研究员马小丽认为，建立职工工资正常增长机制，一是要建制度，</span>', N'2010-8-24 4:46:25', N'43', 1, 1, 1, 43, N'20100824044328350')
GO
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[proimage] ON 

GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (98, N'20100824105754625', N'show_imageurl/show_20100824041229866.jpg', N'黄色', N'20100824105904062')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (99, N'20100824105818328', N'show_imageurl/show_20100824041152960.jpg', N'红色', N'20100824105924109')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (100, N'20100824105818328', N'show_imageurl/show_20100824041202991.jpg', N'白色', N'20100824105954437')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (101, N'20100824105754625', N'show_imageurl/show_20100824041245304.jpg', N'白色', N'20100824110017031')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (102, N'20100824021028328', N'show_imageurl/show_20100824041323194.jpg', N'红色', N'20100824021056093')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (103, N'20100824040914085', N'show_imageurl/show_20100824041013085.jpg', N'白色', N'20100824041013397')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (104, N'20100824040914085', N'show_imageurl/show_20100824041036819.jpg', N'红色', N'20100824041036819')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (105, N'20100824041104850', N'show_imageurl/show_20100824041205663.jpg', N'白色', N'20100824041205694')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (107, N'20100824041316538', N'show_imageurl/show_20100824041514147.jpg', N'蓝色', N'20100824041514147')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (108, N'20100824105754625', N'show_imageurl/show_20100824041634147.jpg', N'红色', N'20100824041634163')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (109, N'20100824041230819', N'show_imageurl/show_20100824041849335.jpg', N'红色', N'20100824041849335')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (110, N'20100824041316538', N'show_imageurl/show_20100824041909960.jpg', N'红色', N'20100824041909960')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (111, N'20100824042440585', N'show_imageurl/show_20100824042606585.jpg', N'红色', N'20100824042606585')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (112, N'20100824042437616', N'show_imageurl/show_20100824042619366.jpg', N'白色', N'20100824042619366')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (113, N'20100824042440585', N'show_imageurl/show_20100824042633960.jpg', N'黑色', N'20100824042633975')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (114, N'20100824042440585', N'show_imageurl/show_20100824042651788.jpg', N'黄色', N'20100824042651788')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (115, N'20100824042643757', N'show_imageurl/show_20100824042747632.jpg', N'黑色', N'20100824042747632')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (116, N'20100824042826397', N'show_imageurl/show_20100824042955304.jpg', N'黑色', N'20100824042955304')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (117, N'20100824043011304', N'show_imageurl/show_20100824043052538.jpg', N'红色', N'20100824043052554')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (118, N'20100824043011304', N'show_imageurl/show_20100824043057616.jpg', N'白色', N'20100824043057632')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (119, N'20100824043001694', N'show_imageurl/show_20100824043059007.jpg', N'红色', N'20100824043059007')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (120, N'20100824043011304', N'show_imageurl/show_20100824043103804.jpg', N'白色', N'20100824043103819')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (121, N'20100824043011304', N'show_imageurl/show_20100824043119554.jpg', N'绿色', N'20100824043119569')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (122, N'20100824043201147', N'show_imageurl/show_20100824043518554.jpg', N'黑色', N'20100824043518554')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (123, N'20100824044328350', N'show_imageurl/show_20100824044442522.jpg', N'红色', N'20100824044442522')
GO
INSERT [dbo].[proimage] ([_id], [_imageid], [_imageurl], [_color], [_sizeid]) VALUES (124, N'20100824044328350', N'show_imageurl/show_20100824044505116.jpg', N'绿色', N'20100824044505132')
GO
SET IDENTITY_INSERT [dbo].[proimage] OFF
GO
SET IDENTITY_INSERT [dbo].[size] ON 

GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (244, N'', N'XXS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (245, N'20100824105904062', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (246, N'20100824105904062', N'XXL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (247, N'20100824105924109', N'S')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (248, N'20100824105924109', N'XS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (249, N'20100824105954437', N'XS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (250, N'20100824105954437', N'XXL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (251, N'20100824110017031', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (252, N'20100824110017031', N'XXL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (253, N'20100824105904062', N'XXS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (256, N'20100824021056093', N'XXL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (257, N'20100824021056093', N'L')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (258, N'20100824041013397', N'L')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (259, N'20100824041013397', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (260, N'20100824041036819', N'XXL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (261, N'20100824041036819', N'L')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (262, N'20100824041205694', N'L')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (263, N'20100824041205694', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (264, N'20100824041514147', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (265, N'20100824041634163', N'XXS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (266, N'20100824041634163', N'M')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (267, N'20100824042606585', N'XXS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (268, N'20100824042606585', N'XS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (269, N'20100824042606585', N'L')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (270, N'20100824042633975', N'L')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (271, N'20100824042633975', N'S')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (272, N'20100824042633975', N'XXS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (273, N'20100824042651788', N'XXS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (274, N'20100824042651788', N'M')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (275, N'20100824042606585', N'S')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (276, N'20100824043059007', N'L')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (277, N'20100824043518554', N'L')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (278, N'20100824044442522', N'XXS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (279, N'20100824044442522', N'M')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (280, N'20100824044442522', N'M')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (281, N'20100824044442522', N'XS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (282, N'20100824044505132', N'XS')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (283, N'20100824044505132', N'S')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (284, N'20100824044505132', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (285, N'20100824042955304', N'XXL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (286, N'20100824042955304', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (287, N'20100824042955304', N'L')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (288, N'20100824043052554', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (289, N'20100824043052554', N'XXL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (290, N'20100824043057632', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (291, N'20100824043057632', N'XXL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (292, N'20100824043103819', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (293, N'20100824043103819', N'XXL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (294, N'20100824043119569', N'XL')
GO
INSERT [dbo].[size] ([_id], [_sizeid], [_sizename]) VALUES (295, N'20100824043119569', N'XXL')
GO
SET IDENTITY_INSERT [dbo].[size] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (2, N'win', N'1226', N'512963806@qq.com', N'512963806', NULL, N'我的名字叫什么?', N'w昂您', CAST(0x00009DD700000000 AS DateTime), NULL)
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (8, N'w', N'BF657CA0B9DBE3AE', N'512963806@qq.com', N'512963806', N'哈哈哈哈哈哈哈', N'我是谁的谁', N'她的他', CAST(0x00009DD700000000 AS DateTime), CAST(0x00009DD90119A73C AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (9, N'win.vs', N'3D9EFE0C90564204', N'512963806@qq.com', N'379318604', N'我是帅哥吗？', N'我是谁的谁？', N'她的他', CAST(0x00009DD700000000 AS DateTime), CAST(0x00009DDD00017E9B AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (10, N'dgf', N'3D9EFE0C90564204', N'wnh@qq.com', N'325432545', N'', N'dsfdsf', N'dsfdsg', NULL, NULL)
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (11, N'11', N'3DB61F0ADF3CE0FE', N'hhh@qq.com', N'1111', N'1111', N'111', N'111', NULL, NULL)
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (12, N'bin', N'3D9EFE0C90564204', N'379318604@qq.com', N'379318604', N'3', N'张柏芝复出', N'说的', NULL, NULL)
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (13, N'hua', N'3D9EFE0C90564204', N'379318605@qq.com', N'379318605', N'3', N'张柏芝复出', N'说的', CAST(0x00009DD800B37BB7 AS DateTime), NULL)
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (14, N'', N'A5FE015405306BF7', N'2134214@qq.com', N'', N'', N'', N'', CAST(0x00009DD800B7EFBB AS DateTime), NULL)
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (15, N'jie', N'BF657CA0B9DBE3AE', N'wnj@qq.com', N'34324325', N'', N'c发生的vgfdv', N'呆宿舍', CAST(0x00009DD800BC117A AS DateTime), NULL)
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (16, N'', N'3D9EFE0C90564204', N'dfsfsd@qq.com', N'', N'', N'', N'', CAST(0x00009DD800C0E1A5 AS DateTime), NULL)
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (17, N'sdf', N'BF657CA0B9DBE3AE', N'wewr@qq.com', N'3543542', N'', N'dsfdsf', N'dsfdsfds', CAST(0x00009DD800C37963 AS DateTime), NULL)
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (18, N'hfq', N'A5FE015405306BF7', N'hfq@qq.com', N'1', N'1', N'1', N'1', CAST(0x00009DD9009E7892 AS DateTime), CAST(0x00009DDC011EDEB0 AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (19, N'宁辉', N'3DB61F0ADF3CE0FE', N'123@qq.com', N'512963806', N'http://www.baidu.com', N'我是谁的谁？', N'她的他', CAST(0x00009DD900C47AC2 AS DateTime), CAST(0x00009DD900E80E56 AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (20, N'111111', N'3DB61F0ADF3CE0FE', N'1146458323@qq.com', N'11111111111', N'11111111111', N'111111', N'111111', CAST(0x00009DDC010BAC74 AS DateTime), CAST(0x00009DDC01622F2A AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (21, N'你好啊', N'D385CA51C5DF6E15D2BBF7356B9CE4FE', N'757808689@qq.com', N'757808689', N'757808689', N'757808689', N'757808689', CAST(0x00009DDC010BE3D3 AS DateTime), CAST(0x00009DDC011BB0D2 AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (22, N'神之右手', N'83F1F221592C5989E183B041414CAD15', N'343374078@qq.com', N'343374078', N'', N'我是谁', N'123', CAST(0x00009DDC010C1A5F AS DateTime), CAST(0x00009DDC0166327A AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (23, N'111111', N'BF657CA0B9DBE3AE', N'111111@qq.com', N'1111111111', N'1111111111', N'111111', N'111111', CAST(0x00009DDC010CD7B9 AS DateTime), CAST(0x00009DDC010CD7B9 AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (24, N'111111', N'3DB61F0ADF3CE0FE', N'1111111@123.com', N'111111', N'111111', N'111111', N'111111', CAST(0x00009DDC010E17EB AS DateTime), CAST(0x00009DDC010E17EB AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (25, N'xiao', N'23B30534DEC97077', N'123@163.com', N'123', N'123', N'123', N'123', CAST(0x00009DDC01146077 AS DateTime), CAST(0x00009DDC015EE9AD AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (26, N'xiao', N'23B30534DEC97077', N'123@163.com', N'123', N'123', N'123', N'123', CAST(0x00009DDC0114607B AS DateTime), CAST(0x00009DDC0114607B AS DateTime))
GO
INSERT [dbo].[user] ([_userid], [_username], [_pwd], [_email], [_qq], [_msn], [_safequestion], [_safepwd], [_registtime], [_logintime]) VALUES (27, N'admin', N'1A870A4B843C2C8FDD3A9D2A7652305F', N'admin@admin.com', N'111111111', N'111111111', N'源码下载 ', N'mycodes.net', CAST(0x00009DEA00B9C39A AS DateTime), CAST(0x0000A3D7015B77AC AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[admin] ADD  CONSTRAINT [DF_admin__role]  DEFAULT ((0)) FOR [_role]
GO
ALTER TABLE [dbo].[collect] ADD  CONSTRAINT [DF_collect__collecttime]  DEFAULT (getdate()) FOR [_collecttime]
GO
ALTER TABLE [dbo].[downlist] ADD  CONSTRAINT [DF_downlist__click]  DEFAULT ((0)) FOR [_click]
GO
ALTER TABLE [dbo].[downlist] ADD  CONSTRAINT [DF_downlist__posttime]  DEFAULT (getdate()) FOR [_posttime]
GO
ALTER TABLE [dbo].[message] ADD  CONSTRAINT [DF_message__posttime]  DEFAULT (getdate()) FOR [_posttime]
GO
ALTER TABLE [dbo].[message] ADD  CONSTRAINT [DF_message__state]  DEFAULT ((0)) FOR [_state]
GO
ALTER TABLE [dbo].[news] ADD  CONSTRAINT [DF_news__top]  DEFAULT ((0)) FOR [_top]
GO
ALTER TABLE [dbo].[news] ADD  CONSTRAINT [DF_news__click]  DEFAULT ((0)) FOR [_click]
GO
ALTER TABLE [dbo].[news] ADD  CONSTRAINT [DF_news__posttime]  DEFAULT (getdate()) FOR [_posttime]
GO
ALTER TABLE [dbo].[news] ADD  CONSTRAINT [DF_news__ispic]  DEFAULT ((0)) FOR [_ispic]
GO
ALTER TABLE [dbo].[ordertable] ADD  CONSTRAINT [DF_order_paystate]  DEFAULT ((0)) FOR [_paystate]
GO
ALTER TABLE [dbo].[ordertable] ADD  CONSTRAINT [DF_order_prostate]  DEFAULT ((0)) FOR [_prostate]
GO
ALTER TABLE [dbo].[ordertable] ADD  CONSTRAINT [DF_order_ordertime]  DEFAULT (getdate()) FOR [_ordertime]
GO
ALTER TABLE [dbo].[ordertable] ADD  CONSTRAINT [DF_ordertable__needbill]  DEFAULT ((0)) FOR [_needbill]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product__weight]  DEFAULT ((0)) FOR [_weight]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product__ischeap]  DEFAULT ((0)) FOR [_ischeap]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product__isrecommend]  DEFAULT ((0)) FOR [_isrecommend]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product__top]  DEFAULT ((0)) FOR [_top]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF_user__registtime]  DEFAULT (getdate()) FOR [_registtime]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF_user__logintime]  DEFAULT (getdate()) FOR [_logintime]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [fk_address_userid] FOREIGN KEY([_userid])
REFERENCES [dbo].[user] ([_userid])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [fk_address_userid]
GO
ALTER TABLE [dbo].[collect]  WITH CHECK ADD  CONSTRAINT [fk_collect_userid] FOREIGN KEY([_userid])
REFERENCES [dbo].[user] ([_userid])
GO
ALTER TABLE [dbo].[collect] CHECK CONSTRAINT [fk_collect_userid]
GO
ALTER TABLE [dbo].[help]  WITH CHECK ADD  CONSTRAINT [FK_help_helpcate] FOREIGN KEY([_cateid])
REFERENCES [dbo].[helpcate] ([_cateid])
GO
ALTER TABLE [dbo].[help] CHECK CONSTRAINT [FK_help_helpcate]
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD  CONSTRAINT [FK_news_article] FOREIGN KEY([_ispic])
REFERENCES [dbo].[article] ([_id])
GO
ALTER TABLE [dbo].[news] CHECK CONSTRAINT [FK_news_article]
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD  CONSTRAINT [fk_newstypeid] FOREIGN KEY([_cateid])
REFERENCES [dbo].[newscate] ([_cateid])
GO
ALTER TABLE [dbo].[news] CHECK CONSTRAINT [fk_newstypeid]
GO
ALTER TABLE [dbo].[procate]  WITH CHECK ADD  CONSTRAINT [FK_procate_fathercate] FOREIGN KEY([_fathercateid])
REFERENCES [dbo].[fathercate] ([_fathercateid])
GO
ALTER TABLE [dbo].[procate] CHECK CONSTRAINT [FK_procate_fathercate]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_product_cateid] FOREIGN KEY([_cateid])
REFERENCES [dbo].[procate] ([_cateid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_product_cateid]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'address', @level2type=N'COLUMN',@level2name=N'_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'address', @level2type=N'COLUMN',@level2name=N'_userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'address', @level2type=N'COLUMN',@level2name=N'_tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'address', @level2type=N'COLUMN',@level2name=N'_mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送货地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'address', @level2type=N'COLUMN',@level2name=N'_address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'address', @level2type=N'COLUMN',@level2name=N'_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'address', @level2type=N'COLUMN',@level2name=N'_mail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin', @level2type=N'COLUMN',@level2name=N'_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin', @level2type=N'COLUMN',@level2name=N'_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin', @level2type=N'COLUMN',@level2name=N'_pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin', @level2type=N'COLUMN',@level2name=N'_role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'collect', @level2type=N'COLUMN',@level2name=N'_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'collect', @level2type=N'COLUMN',@level2name=N'_userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收藏时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'collect', @level2type=N'COLUMN',@level2name=N'_collecttime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 产品id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'collect', @level2type=N'COLUMN',@level2name=N'_proid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'collect', @level2type=N'COLUMN',@level2name=N'_proname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'collect', @level2type=N'COLUMN',@level2name=N'_proprice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'collect', @level2type=N'COLUMN',@level2name=N'_proimage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'downlist', @level2type=N'COLUMN',@level2name=N'_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'downlist', @level2type=N'COLUMN',@level2name=N'_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'downlist', @level2type=N'COLUMN',@level2name=N'_click'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'downlist', @level2type=N'COLUMN',@level2name=N'_posttime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'downlist', @level2type=N'COLUMN',@level2name=N'_uploadurl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'help', @level2type=N'COLUMN',@level2name=N'_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'help', @level2type=N'COLUMN',@level2name=N'_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'help', @level2type=N'COLUMN',@level2name=N'_cateid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帮助类别id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'helpcate', @level2type=N'COLUMN',@level2name=N'_cateid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帮助类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'helpcate', @level2type=N'COLUMN',@level2name=N'_catename'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'message', @level2type=N'COLUMN',@level2name=N'_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'message', @level2type=N'COLUMN',@level2name=N'_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'message', @level2type=N'COLUMN',@level2name=N'_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'message', @level2type=N'COLUMN',@level2name=N'_posttime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'message', @level2type=N'COLUMN',@level2name=N'_reply'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'message', @level2type=N'COLUMN',@level2name=N'_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'news', @level2type=N'COLUMN',@level2name=N'_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'news', @level2type=N'COLUMN',@level2name=N'_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'news', @level2type=N'COLUMN',@level2name=N'_from'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'news', @level2type=N'COLUMN',@level2name=N'_author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'news', @level2type=N'COLUMN',@level2name=N'_top'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'news', @level2type=N'COLUMN',@level2name=N'_click'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'news', @level2type=N'COLUMN',@level2name=N'_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'news', @level2type=N'COLUMN',@level2name=N'_posttime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'news', @level2type=N'COLUMN',@level2name=N'_cateid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否图文' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'news', @level2type=N'COLUMN',@level2name=N'_ispic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'newscate', @level2type=N'COLUMN',@level2name=N'_cateid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'newscate', @level2type=N'COLUMN',@level2name=N'_catename'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orderdetail', @level2type=N'COLUMN',@level2name=N'_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orderdetail', @level2type=N'COLUMN',@level2name=N'_count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orderdetail', @level2type=N'COLUMN',@level2name=N'_sumprice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orderdetail', @level2type=N'COLUMN',@level2name=N'_sumweight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'orderdetail', @level2type=N'COLUMN',@level2name=N'_proid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_ordernum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_paystate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_prostate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_ordertime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卖家备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_sellremarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'买家备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_buyremarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总项数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_sumprice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收获人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ordertable', @level2type=N'COLUMN',@level2name=N'_mail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品类别id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'procate', @level2type=N'COLUMN',@level2name=N'_cateid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'procate', @level2type=N'COLUMN',@level2name=N'_catename'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_cateid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_marketprice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'本网站价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_localprice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上市时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_posttime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品重量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_weight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否特价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_ischeap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_isrecommend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_top'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'_procount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'proimage', @level2type=N'COLUMN',@level2name=N'_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'proimage', @level2type=N'COLUMN',@level2name=N'_imageid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user', @level2type=N'COLUMN',@level2name=N'_userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user', @level2type=N'COLUMN',@level2name=N'_username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user', @level2type=N'COLUMN',@level2name=N'_pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user', @level2type=N'COLUMN',@level2name=N'_email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qq' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user', @level2type=N'COLUMN',@level2name=N'_qq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MSN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user', @level2type=N'COLUMN',@level2name=N'_msn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user', @level2type=N'COLUMN',@level2name=N'_safequestion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user', @level2type=N'COLUMN',@level2name=N'_safepwd'
GO
USE [master]
GO
ALTER DATABASE [haqiu] SET  READ_WRITE 
GO
