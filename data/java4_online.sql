USE [online_entertainment2]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 10-04-2024 17:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VideoId] [nvarchar](20) NOT NULL,
	[UserId] [int] NOT NULL,
	[LikeDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shares]    Script Date: 10-04-2024 17:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shares](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VideoId] [nvarchar](20) NOT NULL,
	[UserId] [int] NOT NULL,
	[Emails] [nvarchar](100) NOT NULL,
	[ShareDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10-04-2024 17:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](11) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Admin] [bit] NOT NULL,
	[poster] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoGenre]    Script Date: 10-04-2024 17:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoGenre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[code] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 10-04-2024 17:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[Id] [nvarchar](20) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Poster] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Views] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[GenreId] [int] NOT NULL,
	[YearOfRelease] [int] NOT NULL,
	[Director] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Actor] [nvarchar](50) NOT NULL,
	[Times] [time](7) NOT NULL,
	[Trailer] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (5, N'bSFRi8joB1w', 1, CAST(N'2024-04-04' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (8, N'bSFRi8joB1w', 2, CAST(N'2024-04-04' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (9, N'MT3U4J0RpyA', 2, CAST(N'2024-02-07' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (10, N'n5E--ph5-P0', 2, CAST(N'2023-05-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (11, N'QwH1063b8t0', 3, CAST(N'2024-02-12' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (12, N'Tfjb0YDmm0M', 4, CAST(N'2023-09-07' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (13, N'ZaJb3nQB_vM', 4, CAST(N'2024-01-28' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (14, N'ZaJb3nQB_vM', 2, CAST(N'2024-01-23' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (16, N'MT3U4J0RpyA', 3, CAST(N'2024-01-15' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (17, N'7kszEYj2tt8', 3, CAST(N'2023-05-30' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (18, N'WkxBn1TfUj8', 3, CAST(N'2022-05-19' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (20, N'YtxzNRTqZFE', 3, CAST(N'2022-07-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (21, N'ZnZXkr7DwqM', 3, CAST(N'2024-02-15' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (22, N'7kszEYj2tt8', 4, CAST(N'2024-08-11' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (23, N'TKPmGjVFbrY', 4, CAST(N'2024-05-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (62, N'2RSwdmcuMuY', 6, CAST(N'2024-04-05' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (63, N'7cx9nCHsemc', 6, CAST(N'2024-04-05' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (66, N'bSFRi8joB1w', 6, CAST(N'2024-04-06' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (67, N'Mgjwq1ZzdPQ', 6, CAST(N'2024-04-06' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (68, N'ZnZXkr7DwqM', 6, CAST(N'2024-04-06' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (72, N'7kszEYj2tt8', 6, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (74, N'mKSrm4HKt9g', 6, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (79, N'e1d_hig2S2k', 6, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (82, N'2nNytDCln8c', 6, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (83, N'HsFm6Yk_HkE', 6, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (84, N'MT3U4J0RpyA', 14, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (88, N'MT3U4J0RpyA', 6, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (89, N'MT3U4J0RpyA', 1, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (92, N'2nNytDCln8c', 14, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (94, N'Mgjwq1ZzdPQ', 14, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (95, N'7cx9nCHsemc', 14, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (96, N'YtxzNRTqZFE', 14, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (97, N'HsFm6Yk_HkE', 14, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (98, N'q5m8UpTPCcc', 2, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (100, N'u3mupIlFIYQ', 2, CAST(N'2024-04-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (101, N'FWj-LrVsHk', 1, CAST(N'2024-04-10' AS Date))
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[Shares] ON 

INSERT [dbo].[Shares] ([Id], [VideoId], [UserId], [Emails], [ShareDate]) VALUES (1, N'gsNKk6aefow', 1, N'vantai@gmail.com', CAST(N'2024-04-04' AS Date))
INSERT [dbo].[Shares] ([Id], [VideoId], [UserId], [Emails], [ShareDate]) VALUES (3, N'n5E--ph5-P0', 1, N'nghia@gmail.com', CAST(N'2024-04-04' AS Date))
INSERT [dbo].[Shares] ([Id], [VideoId], [UserId], [Emails], [ShareDate]) VALUES (4, N'jk4Fy0nLEek', 3, N'thilai@gmail.com', CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Shares] ([Id], [VideoId], [UserId], [Emails], [ShareDate]) VALUES (5, N'QwH1063b8t0', 4, N'trantien@gmail.com', CAST(N'2024-01-29' AS Date))
INSERT [dbo].[Shares] ([Id], [VideoId], [UserId], [Emails], [ShareDate]) VALUES (6, N'WkxBn1TfUj8', 4, N'namgiang@gmail.com', CAST(N'2024-04-01' AS Date))
SET IDENTITY_INSERT [dbo].[Shares] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Password], [LastName], [FirstName], [PhoneNumber], [Email], [Address], [Admin], [poster]) VALUES (1, N'admin', N'456', N'hữu', N'nghĩa', N'0969773217', N'huunghia@gmail.com', N'Bình Định', 1, N'avatar nam 1.png')
INSERT [dbo].[Users] ([Id], [Username], [Password], [LastName], [FirstName], [PhoneNumber], [Email], [Address], [Admin], [poster]) VALUES (2, N'huunghia', N'123', N'nguyễn', N'nghĩa', N'0969773958', N'nghia@ggmail.com', N'TPHCM', 0, N'avatar nam 5.png')
INSERT [dbo].[Users] ([Id], [Username], [Password], [LastName], [FirstName], [PhoneNumber], [Email], [Address], [Admin], [poster]) VALUES (3, N'vantai', N'456', N'văn', N'tài', N'0386938501', N'tai@gmail.com', N'An Giang', 0, N'avatar nam 7.png')
INSERT [dbo].[Users] ([Id], [Username], [Password], [LastName], [FirstName], [PhoneNumber], [Email], [Address], [Admin], [poster]) VALUES (4, N'kimlien', N'789', N'kim', N'liên', N'0278496293', N'lien@gmail.com', N'Nam Định', 0, N'avatar nữ 4.png')
INSERT [dbo].[Users] ([Id], [Username], [Password], [LastName], [FirstName], [PhoneNumber], [Email], [Address], [Admin], [poster]) VALUES (5, N'lenam', N'123', N'lê', N'nam', N'0849372859', N'nam@gmail.com', N'Ninh Thuận', 0, N'avatar nam 2.png')
INSERT [dbo].[Users] ([Id], [Username], [Password], [LastName], [FirstName], [PhoneNumber], [Email], [Address], [Admin], [poster]) VALUES (6, N'phuongtrinh', N'123', N'phương', N'trinh', N'0495285938', N'trinh@gmail.com', N'TPHCM', 0, N'avatar nữ 6.png')
INSERT [dbo].[Users] ([Id], [Username], [Password], [LastName], [FirstName], [PhoneNumber], [Email], [Address], [Admin], [poster]) VALUES (14, N'nghia1234', N'123', N'Nghĩa', N'Nguyễn hữu', N'0969773217', N'nguyenhuunghia19998@gmail.com', N'17', 0, N'avatar nam 4.png')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[VideoGenre] ON 

INSERT [dbo].[VideoGenre] ([Id], [Title], [Description], [code]) VALUES (1, N'Phim hài hước', N'Sử dụng các tình huống hài hước, lời thoại dí dỏm và các nhân vật kỳ quặc để mang lại tiếng cười cho khán giả.', N'hai-huoc')
INSERT [dbo].[VideoGenre] ([Id], [Title], [Description], [code]) VALUES (2, N'Phim hài lãng mạn', N'Kết hợp hài hước với các yếu tố lãng mạn, thường xoay quanh các mối quan hệ và tình yêu.', N'hai-lang-man')
INSERT [dbo].[VideoGenre] ([Id], [Title], [Description], [code]) VALUES (3, N'Phim hài châm biếm', N'Sử dụng hài hước để châm biếm các vấn đề xã hội, chính trị hoặc văn hóa.', N'hai-cham-biem')
INSERT [dbo].[VideoGenre] ([Id], [Title], [Description], [code]) VALUES (4, N'Phim hài đen', N'Sử dụng hài hước để đề cập đến các chủ đề đen tối, cấm kỵ hoặc gây tranh cãi.', N'hai-den')
INSERT [dbo].[VideoGenre] ([Id], [Title], [Description], [code]) VALUES (5, N'Phim hài slapstick', N'Sử dụng hành động thể chất hài hước, cường điệu và ngớ ngẩn.', N'hai-slapstick')
INSERT [dbo].[VideoGenre] ([Id], [Title], [Description], [code]) VALUES (6, N'Phim hài hồi tưởng', N'Sử dụng hài hước để kể về những câu chuyện hoặc sự kiện trong quá khứ.', N'hai-hoi-tuong')
INSERT [dbo].[VideoGenre] ([Id], [Title], [Description], [code]) VALUES (7, N'Phim hài giả tưởng', N'Kết hợp hài hước với các yếu tố giả tưởng, thường liên quan đến các sinh vật huyền bí hoặc thế giới khác.', N'hai-gia-tuong')
INSERT [dbo].[VideoGenre] ([Id], [Title], [Description], [code]) VALUES (8, N'Phim hài hoạt hình', N'Sử dụng hình ảnh động để tạo ra tiếng cười.', N'hai-hoat-hinh')
SET IDENTITY_INSERT [dbo].[VideoGenre] OFF
GO
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'1cSGvqQHpjs', N'Network (1976) Official Trailer', N'Network.png', N'Network (Mạng lưới) là một bộ phim châm biếm sâu cay về ngành truyền hình và sự ảnh hưởng của nó đến xã hội. Phim xoay quanh Howard Beale (Peter Finch), một người dẫn chương trình tin tức đang gặp khủng hoảng tuổi tác và sự nghiệp.

Vì rating thấp, Howard tuyên bố sẽ tự tử trên sóng truyền hình. Lời tuyên bố này bất ngờ thu hút lượng người xem khổng lồ và khiến các nhà điều hành đài truyền hình nhận ra tiềm năng của nó.', 492041, 0, 3, 1976, N'Sidney Lumet', N'Đang cập nhật', N'Faye Dunaway, William Holden,...', CAST(N'00:02:59' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'2nNytDCln8c', N'Người Ngoài Hành Tinh Điên Cuồng', N'nguoi-ngoai-hanh-tinh.png', N'Cảnh Hạo (Hoàng Bột) cùng với người anh em tốt của mình là Đại Phi (Thẩm Đằng) một lòng muốn phát tài nhưng sự nghiệp của mỗi người đều vô cùng ảm đạm. Một hôm, sự xuất hiện ngoài ý muốn của “vị khách đến từ hành tinh khác” đã phá vỡ đi cuộc sống bình yên của cả hai. Lực lượng bí mật phương Tây cũng đã phái biệt đội điều tra tung tích toàn cầu của người ngoài hành tinh này và mở ra nhiều câu chuyện dở khóc dở cười khác nhau….', 5032, 1, 7, 2019, N'Ninh Hạo', N'Trung Quốc', N'Hoàng Bột, Thẩm Đằng,...', CAST(N'01:54:54' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'2RSwdmcuMuY', N'CÂU CHUYỆN ĐỒ CHƠI 1', N'ToyStory.png', N'Câu chuyện đồ chơi 1 là bộ phim hoạt hình máy tính đầu tiên của Pixar Animation Studios và Walt Disney Pictures. Phim kể về một nhóm đồ chơi sống động trong nhà của cậu bé Andy. Khi Andy nhận được món quà sinh nhật mới là Buzz Lightyear, một nhân vật hành động với nhiều tính năng hiện đại, Woody, anh chàng cao bồi đồ chơi yêu thích của Andy, cảm thấy bị đe dọa và ghen tị.', 203592, 0, 8, 1995, N'John Lasseter', N'Đang cập nhật', N'Tom Hanks, Tim Allen,...', CAST(N'01:36:39' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'7cx9nCHsemc', N'Killers of the Flower Moon', N'KillersoftheFlowerMoon.png', N'Killers of the Flower Moon (Sát thủ Vầng trăng Máu) là một bộ phim chính kịch, hình sự của đạo diễn Martin Scorsese dựa trên cuốn sách phi hư cấu cùng tên của David Grann. Phim lấy bối cảnh tại Oklahoma vào những năm 1920, kể về một loạt vụ giết người bí ẩn nhắm vào người Osage, một bộ tộc da đỏ giàu có sở hữu trữ lượng dầu mỏ khổng lồ.', 69322, 1, 4, 2023, N'Martin Scorsese', N'Đang  cập nhật', N'Leonardo DiCaprio, Robert De Niro,...', CAST(N'00:02:24' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'7kszEYj2tt8', N'Coco (2017)', N'Coco.png', N'Coco là một phim hoạt hình máy tính 3D của Pixar Animation Studios và Walt Disney Pictures. Phim lấy bối cảnh tại Mexico vào Lễ hội người chết, kể về Miguel, một cậu bé 12 tuổi có niềm đam mê mãnh liệt với âm nhạc nhưng bị gia đình cấm đoán. Khi vô tình lạc vào Vùng đất Linh hồn, Miguel gặp gỡ Ernesto de la Cruz, thần tượng âm nhạc của mình, và bắt đầu hành trình khám phá bí mật về gia đình và âm nhạc của mình.', 435982, 1, 8, 2017, N'Lee Unkrich, Adrian Molina', N'Đang cập nhật', N'Anthony Gonzalez, Gael García Bernal,...', CAST(N'00:19:38' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'9FXCSXuGTF4', N'Asteroid City - Official Trailer', N'AsteroidCity.png', N'Asteroid City (Thành phố Tiểu hành tinh) là một bộ phim hài hước, lãng mạn, khoa học viễn tưởng của đạo diễn Wes Anderson. Phim lấy bối cảnh tại một thị trấn hư cấu ở Arizona vào những năm 1950.

Câu chuyện xoay quanh một nhóm thanh thiếu niên tham gia vào một hội nghị dành cho những người trẻ tuổi quan tâm đến thiên văn học. Khi một vụ tai nạn bí ẩn xảy ra, các thành viên trong nhóm phải hợp tác để giải quyết bí ẩn và cứu lấy thị trấn của họ.', 68293, 1, 4, 2023, N'Wes Anderson', N'Mỹ', N'Tom Hanks, Tilda Swinton,...', CAST(N'00:02:25' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'bSFRi8joB1w', N'How To Maximise Space While Packing... ', N'mrbean1.jpg', N'Mr. Bean là một bộ phim hài truyền hình của Anh do Rowan Atkinson thủ vai chính. Bộ phim xoay quanh cuộc phiêu lưu của Mr. Bean, một người đàn ông kỳ quặc và ngốc nghếch, người luôn gặp rắc rối với những tình huống hàng ngày.', 6079, 1, 1, 1990, N'Rowan Atkinson, Richard Curtis', N'Anh', N'Mr. Bean', CAST(N'00:43:28' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'dtLMdWn8qA4', N'NGÀY XUI XẺO', N'ngay-xui-xeo.png', N'NGÀY XUI XẺO là một bộ phim hoạt hình vui nhộn kể về một ngày xui xẻo của một nhân vật. Phim bắt đầu với việc nhân vật này thức dậy muộn, vội vã đi làm và gặp phải hàng loạt những tình huống dở khóc dở cười.', 103596, 1, 8, 2022, N'Đang cập nhật', N'Việt Nam', N'Đang cập nhật', CAST(N'00:09:48' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'e1d_hig2S2k', N'Shrek (2001)', N'Shrek.png', N'Shrek là một phim hoạt hình máy tính 3D của DreamWorks Animation. Phim dựa trên quyển truyện tranh cùng tên của William Steig. Phim kể về Shrek, một con yêu tinh xanh sống ẩn dật trong đầm lầy, bất ngờ bị buộc phải giải cứu Công chúa Fiona xinh đẹp khỏi một con rồng phun lửa để lấy lại sự yên bình cho đầm lầy của mình.

Trên hành trình giải cứu Fiona, Shrek gặp gỡ Donkey, một con lừa vui tính và lắm lời, và cùng nhau họ đối mặt với nhiều thử thách và nguy hiểm.', 920387, 1, 8, 2001, N'Andrew Adamson, Vicky Jenson', N'Đang cập nhật', N'Mike Myers, Eddie Murphy,...', CAST(N'01:47:31' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'f1HSBJWhexk', N'Mash ', N'MASH.png', N'MAS*H là một bộ phim hài hước đen tối lấy bối cảnh chiến tranh Triều Tiên. Phim xoay quanh một nhóm bác sĩ và y tá thuộc Đơn vị Phẫu thuật Dã chiến Di động (MASH) 4077. Họ phải đối mặt với những khó khăn, nguy hiểm và mất mát của chiến tranh, nhưng vẫn giữ được tinh thần lạc quan và hài hước.', 602982, 1, 3, 1970, N'Robert Altman', N'Đang cập nhật', N'Donald Sutherland, Elliott Gould,...', CAST(N'01:51:07' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'FWj-LrVsHk', N'How to Train Your Dragon (2010)', N'HowtoTrainYourDragon.png', N'Bí Kíp Luyện Rồng (tựa gốc: How to Train Your Dragon) là một phim hoạt hình máy tính 3D của DreamWorks Animation. Phim lấy bối cảnh tại một ngôi làng Viking, nơi Hiccup, một cậu bé Viking yếu ớt nhưng thông minh, mơ ước trở thành một chiến binh diệt rồng. Sau khi kết bạn với Toothless, một con rồng bị thương, Hiccup bắt đầu thay đổi quan điểm của mọi người về loài rồng.', 459261, 1, 8, 2010, N'Chris Sanders, Dean DeBlois', N'Đang cập nhật', N'Jay Baruchel, Gerard Butler,...', CAST(N'01:35:44' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'g4Hbz2jLxvQ', N'SPIDER-MAN: INTO THE SPIDER-VERSE', N'IntotheSpider-Verse.png', N'Miles Morales, một thiếu niên sống ở Brooklyn, New York, vô tình bị nhện nhiễm phóng xạ cắn. Sau đó, cậu bé phát hiện ra mình có những sức mạnh giống như Người Nhện. Khi Kingpin, một kẻ phản diện nguy hiểm, mở cánh cổng đa vũ trụ, Miles gặp gỡ những Người Nhện từ các vũ trụ khác nhau và cùng họ hợp sức để ngăn chặn Kingpin và cứu lấy thế giới.', 234982, 1, 8, 2018, N'Bob Persichetti, Peter Ramsey,...', N'Đang cập nhật', N'Shameik Moore, Hailee Steinfeld,...', CAST(N'00:02:40' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'GjiZRzDVBBY', N'Finding Nemo', N'FindingNemo.png', N'Đi Tìm Nemo (tựa gốc: Finding Nemo) là một phim hoạt hình máy tính của Pixar Animation Studios và Walt Disney Pictures. Phim kể về hành trình đi tìm con trai Nemo của chú cá hề Marlin sau khi cậu bé bị bắt bởi một thợ lặn ở Great Barrier Reef.

Trên hành trình đầy gian nan và nguy hiểm, Marlin gặp gỡ Dory, một con cá regal blue tangric bị mất trí nhớ ngắn hạn. Cùng nhau, họ vượt qua nhiều thử thách và đối mặt với nhiều sinh vật kỳ lạ dưới đại dương để tìm kiếm Nemo.', 1024982, 1, 8, 2003, N'Andrew Stanton, Lee Unkrich,...', N'Đang cập nhật', N'Albert Brooks, Ellen DeGeneres, ...', CAST(N'01:07:48' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'gk5WiQWOXtY', N'The Big Lebowski (1998)', N'TheBigLebowski.png', N'The Big Lebowski (Bá tước Lebowski) là một bộ phim hài hước của anh em nhà Coen, kể về Jeff "The Dude" Lebowski (Jeff Bridges), một gã lười biếng, thích bowling và sống nhờ tiền trợ cấp của người vợ tỷ phú.

Cuộc sống của Dude bị đảo lộn khi một nhóm côn đồ xông vào nhà anh ta đòi tiền. Hóa ra họ nhầm anh ta với một triệu phú cùng tên. Dude quyết định đi tìm người triệu phú kia để đòi lại tiền và danh dự của mình.', 40125, 0, 4, 1998, N'Joel Coen, Ethan Coen', N'Đang cập nhật', N'Jeff Bridges, John Goodman,...', CAST(N'00:02:31' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'gsNKk6aefow', N'Lou', N'hai-cham-biem-ngan.png', N'Lou là một phim ngắn hoạt hình của Pixar được phát hành vào năm 2022. Phim kể về câu chuyện của một con chó săn mồi khổng lồ nhưng lại vô cùng dễ thương. Lou luôn tò mò về thế giới xung quanh và thích hóng chuyện mọi người.', 100239, 1, 3, 2015, N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', CAST(N'00:03:24' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'HsFm6Yk_HkE', N'This is Spinal Tap (1984) Trailer #1', N'ThisIsSpinalTap.png', N'This Is Spinal Tap là một phim mockumentary theo chân ban nhạc rock heavy metal hư cấu Spinal Tap trong chuyến lưu diễn vòng quanh nước Anh. Phim ghi lại những khoảnh khắc hài hước, lố bịch và đầy rẫy sự mỉa mai về cuộc sống của các thành viên ban nhạc, những người luôn gặp rắc rối trong các buổi biểu diễn và đời sống cá nhân.', 982356, 1, 6, 1984, N'Rob Reiner', N'Anh', N'Christopher Guest, Michael McKean,...', CAST(N'00:01:36' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'ht91zdpIjtM', N'Wall-E (2008)', N'Wall-E.png', N'Wall-E là một phim hoạt hình máy tính của Pixar Animation Studios và Walt Disney Pictures. Phim lấy bối cảnh Trái Đất vào năm 2805, nơi bị bao phủ bởi rác thải và con người đã di cư lên vũ trụ. Wall-E là một robot thu gom rác thải duy nhất còn lại trên Trái Đất.

Cuộc sống của Wall-E thay đổi khi Eve, một robot trinh sát tiên tiến, đến Trái Đất để tìm kiếm dấu hiệu của sự sống. Wall-E đem lòng yêu Eve và quyết định đi theo cô đến Axiom, con tàu vũ trụ khổng lồ nơi con người đang sinh sống.', 435925, 1, 8, 2008, N'Andrew Stanton', N'Đang cập nhật', N'Ben Burtt, Elissa Knight,...', CAST(N'01:39:26' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'jk4Fy0nLEek', N'Hai Kiếp Yêu Tinh 2018', N'hai-kiep-yeu-tinh.png', N'Hai Kiếp Yêu Tinh là một bộ phim hài hước lãng mạn Trung Quốc năm 2018 kể về câu chuyện tình yêu giữa một con hồ ly chín đuôi và một nhân viên văn phòng bình thường.', 60323, 1, 7, 2018, N'Trình Hiểu Đông', N'Trung Quốc', N'Lưu Diệc Phi, Phùng Thiệu Phong,..', CAST(N'01:42:56' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'LOMO_eSGcU4', N'Ferris Bueller''s Day Off (1986)', N'FerrisBuellerDayOff.png', N'Phim hoạt hình này dựa trên bộ phim cùng tên năm 1985, kể về 5 học sinh trung học bị buộc phải ở lại trường vào một ngày thứ Bảy.
Phim có nội dung hài hước, nhẹ nhàng và mang đến thông điệp về tình bạn và sự trưởng thành.', 657324, 0, 6, 1985, N'Đang cập nhật', N'Mỹ', N'Đang cập nhật', CAST(N'00:04:55' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'Mgjwq1ZzdPQ', N'Clueless (1995)', N'Clueless.png', N'Clueless là một bộ phim hài hước, lãng mạn của Mỹ lấy bối cảnh tại Beverly Hills, California. Phim xoay quanh Cher Horowitz, một cô gái tuổi teen xinh đẹp, giàu có và nổi tiếng, thích xen vào chuyện tình cảm của bạn bè.

Cher quyết định giúp đỡ Tai Frasier, một học sinh mới chuyển đến trường, bằng cách biến đổi ngoại hình và phong cách của cô ấy. Tuy nhiên, Cher soon realizes that she has her own problems to deal with, including her own love life.', 5672345, 1, 6, 1995, N'Amy Heckerling', N'Đang cập nhật', N'Alicia Silverstone, Stacey Dash,...', CAST(N'00:02:26' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'mKSrm4HKt9g', N'Tuyệt đỉnh Kungfu', N'tuyet-dinh-kunfu.png', N'Lấy bối cảnh Thượng Hải những năm 1940, phim kể về câu chuyện của A Tinh (Châu Tinh Trì), một tên côn đồ nhỏ mọn mơ ước gia nhập băng đảng "Búa Rìu". Trong một lần thực hiện nhiệm vụ, A Tinh vô tình vướng vào cuộc chiến giữa hai cao thủ võ lâm: Hỏa Vân Tà Năng (Lương Tiểu Long) và Nhất Chỉ Thiền (Nguyên Hoa). Nhờ cơ duyên, A Tinh lĩnh hội được bí kíp " Như Lai Thần Chưởng " và trở thành một cao thủ võ lâm.', 2452356, 1, 1, 2004, N'Châu Tinh Trì', N'Trung Quốc', N'Châu Tinh Trì, Lương Tiểu Long, Nguyên Hoa,...', CAST(N'00:10:20' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'MT3U4J0RpyA', N'Bản Chất Của Lãng Mạn', N'ban-chat-cua-lang-man.jpg', N'Bản Chất Của Lãng Mạn Be Melodramatic 2019 Full HD Vietsub Thuyết Minh Bản Chất Của Lãng Mạn (Be Melodramatic): Im Jin Joo, Lee Eun Jung và Hwang Han Joo là những người bạn thân đã bước vào ngưỡng tuổi 30.
Hwang Han Joo là trưởng nhóm tiếp thị cho một công ty sản xuất phim truyền hình. Cô là bà mẹ đơn thân đấu tranh để cân bằng giữa công việc và cuộc sống cá nhân khi nuôi dạy một đứa trẻ.', 4032, 1, 1, 2019, N'Byung-heon Lee,', N'Hàn Quốc', N'Gong Myung, Chun Woo‑Hee,..', CAST(N'00:01:31' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'n5E--ph5-P0', N'MỐI TÌNH KỲ LẠ (Lồng Tiếng)', N'moiTinhKyLa.png', N'Mối Tình Kỳ Lạ (Lồng Tiếng) 2023 là câu chuyện tình yêu hài hước, lãng mạn giữa hai người có tính cách và hoàn cảnh khác biệt.', 50201, 1, 2, 2023, N'Đang cập nhật', N'Đài loan', N'Cận Đông, Giang Sơ Ảnh...', CAST(N'02:01:12' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'oDU84nmSDZY', N'Mean Girls (2004)', N'MeanGirls.png', N'Cady Heron (Lindsay Lohan) là một cô bé 16 tuổi lớn lên ở Châu Phi. Khi cha mẹ cô chuyển về Mỹ, Cady phải nhập học tại một trường trung học ở Illinois. Tại đây, cô gặp gỡ và kết bạn với "The Plastics", một nhóm nữ sinh nổi tiếng gồm Regina George (Rachel McAdams), Gretchen Wieners (Lacey Chabert) và Karen Smith (Amanda Seyfried).', 346233, 1, 6, 2004, N'Mark Waters', N'Đang cập nhật', N'Lindsay Lohan, Rachel McAdams,...', CAST(N'00:02:26' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'OqVgCfZX-yE', N'Annie Hall Official Trailer #1', N'AnnieHall.png', N'Annie Hall là một bộ phim hài lãng mạn kinh điển của đạo diễn Woody Allen. Phim kể về câu chuyện tình yêu giữa Alvy Singer (Woody Allen), một diễn viên hài độc thoại, và Annie Hall (Diane Keaton), một ca sĩ nhạc jazz lập dị.

Mối quan hệ của họ đầy những khoảnh khắc hài hước và lãng mạn, nhưng cũng gặp phải nhiều thử thách do sự khác biệt về tính cách và quan điểm sống. Cuối cùng, họ nhận ra rằng họ không thể chung sống và quyết định chia tay.', 502293, 0, 2, 1977, N'Woody Allen', N'Đang cập nhật', N'Woody Allen, Diane Keaton,...', CAST(N'00:02:08' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'P9a3AiBJiqo', N'The Simpsons', N'Simpsons.png', N'Bộ phim châm biếm cuộc sống của tầng lớp lao động Mỹ, thể hiện qua góc nhìn của gia đình Simpson, một gia đình hoạt hình gồm có Homer, Marge, Bart, Lisa và Maggie. Gia đình sống ở Springfield, một thị trấn hư cấu ở Hoa Kỳ.', 5023, 0, 8, 1989, N'Matt Groening', N'Mỹ', N'Homer Simpson, Marge Simpson,...', CAST(N'00:11:52' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'q5m8UpTPCcc', N'Inside Out (2015)', N'InsideOut.png', N'Inside Out (tựa Việt: Bộ não kỳ diệu) là một phim hoạt hình máy tính 3D của Pixar Animation Studios và Walt Disney Pictures. Phim lấy bối cảnh bên trong tâm trí của Riley, một cô bé 11 tuổi đang phải trải qua những thay đổi lớn trong cuộc sống. Inside Out đưa người xem vào một hành trình khám phá thế giới của những cảm xúc, bao gồm Vui, Buồn, Giận Dữ, Sợ Hãi và Chảnh Chọe.', 702935, 1, 8, 2015, N'Pete Docter, Ronnie del Carmen', N'Đang cập nhật', N'Amy Poehler, Phyllis Smith,...', CAST(N'01:37:25' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'qqcEKvznZWs', N'Chúa bịp Thượng Hải', N'chua-bip.png', N'Bộ phim xoay quanh A Tinh (Châu Tinh Trì), một thanh niên ham chơi, lười biếng và có khả năng đặc biệt là đoán được bài trong các trò chơi cờ bạc. Sau khi vô tình gặp gỡ và giúp đỡ Trân (Củng Lợi), con gái của trùm mafia Hong Kong, A Tinh bị cuốn vào cuộc chiến tranh giành quyền lực giữa các băng đảng xã hội đen.', 3453476, 1, 1, 1991, N'Châu Tinh Trì', N'Trung Quốc', N'Châu Tinh Trì, Ngô Mạnh Đạt,...', CAST(N'01:29:05' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'qvsgGtivCgs', N'Back to the Future (1985)', N'BacktotheFuture.png', N'Trở Về Tương Lai (tựa gốc: Back to the Future) là một phim hoạt hình dựa trên bộ phim người đóng cùng tên. Phim kể về Marty McFly, một thiếu niên du hành thời gian về năm 1955 bằng cỗ máy thời gian DeLorean do người bạn thân của anh, Tiến sĩ Emmett Brown, chế tạo.

Tại đây, Marty vô tình gặp gỡ cha mẹ tương lai của mình và khiến họ không yêu nhau. Điều này dẫn đến nguy cơ Marty sẽ không được sinh ra. Marty phải tìm cách sửa chữa lỗi lầm của mình và quay trở lại hiện tại.', 872935, 0, 6, 1985, N'Robert Zemeckis', N'Đang cập nhật', N'Michael J. Fox, Christopher Lloyd,...', CAST(N'00:01:43' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'QwH1063b8t0', N'Review Phim Chuông Báo Tình Yêu Full 1-8 ', N'chuong-bao-tinh-yeu.jpg', N'Chuông Báo Tình Yêu Love Alarm 2019 Full HD Vietsub Thuyết Minh Câu chuyện kể về một xã hội nơi tồn tại một ứng dụng cho phép người dùng biết khi ai đó trong vòng 10 mét có tình cảm với họ. Mặc dù một ứng dụng như vậy được xã hội sử dụng rộng rãi, nhưng vẫn tồn tại một số người muốn tìm hiểu những người khác về cảm xúc theo cách lỗi thời.', 3049, 1, 1, 2019, N'Lee Na Jung', N'Hàn Quốc', N'Kim So‑hyun, Jung Ga‑ram,..', CAST(N'00:27:32' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N's7EdQ4FqbhY', N'Pulp Fiction (1994)', N'PulpFiction.png', N'Pulp Fiction (tựa tiếng Việt: Chuyện Tào Lao) là một bộ phim tâm lý tội phạm của đạo diễn Quentin Tarantino. Phim kể về những câu chuyện đan xen của các nhân vật thuộc thế giới ngầm Los Angeles, bao gồm hai sát thủ, một võ sĩ quyền anh và một bà vợ gangster.', 346237, 0, 6, 1994, N'Quentin Tarantino', N'Đang cập nhật', N'John Travolta, Samuel L. Jackson,...', CAST(N'00:03:05' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'tCtfTg4_TJw', N'Pháo Hoa Nhân Gia - Tập 02', N'phao-hoa-nhan-gian.jpg', N'Pháo Hoa Nhân Gia Islands 2024 Trong nhà Kiều Hải Vân, có một người phụ nữ mạnh mẽ và quyền lực. Cô đã lập ra một quy tắc: mỗi năm đến Tết, ai cũng phải về nhà ăn Tết. Đây là một truyền thống không ai từng phá vỡ cho đến khi Lý Y Cẩm - người cháu ngoan ngoãn nhất - bất ngờ đi ngược lại quy tắc này bằng việc đến nhà bạn trai ăn Tết. Hành động này đã gây ra sự mâu thuẫn trong gia tộc.', 19305, 1, 1, 2024, N'Chu Kỳ, Thu Đình,', N'Trung Quốc', N'Tôn Thiên, Trần Tĩnh Khả, Hứa Phàm,', CAST(N'00:46:04' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'Tfjb0YDmm0M', N'Pháo Hoa Nhân Gia - Tập 01', N'phao-hoa-nhan-gian.jpg', N'Pháo Hoa Nhân Gia Islands 2024 Trong nhà Kiều Hải Vân, có một người phụ nữ mạnh mẽ và quyền lực. Cô đã lập ra một quy tắc: mỗi năm đến Tết, ai cũng phải về nhà ăn Tết. Đây là một truyền thống không ai từng phá vỡ cho đến khi Lý Y Cẩm - người cháu ngoan ngoãn nhất - bất ngờ đi ngược lại quy tắc này bằng việc đến nhà bạn trai ăn Tết. Hành động này đã gây ra sự mâu thuẫn trong gia tộc.', 10248, 1, 1, 2024, N'Chu Kỳ, Thu Đình,', N'Trung Quốc', N'Tôn Thiên, Trần Tĩnh Khả,..', CAST(N'00:46:07' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'TKPmGjVFbrY', N'Life of Brian (1979)', N'LifeofBrian.png', N'Life of Brian (Cuộc đời Brian) là một bộ phim hài hước châm biếm của nhóm hài Monty Python. Phim kể về Brian of Nazareth (Graham Chapman), một người đàn ông Do Thái được sinh ra cùng ngày với Jesus Christ.

Cuộc đời của Brian bị ảnh hưởng bởi những sự kiện surrounding Jesus, và anh ta thường xuyên bị nhầm lẫn với Messiah. Brian tham gia vào một nhóm phiến quân chống La Mã, và cuối cùng bị đóng đinh trên cây thập tự giá.', 39405, 0, 3, 1979, N'Terry Jones', N'Đang cập nhật', N'Graham Chapman, John Cleese,...', CAST(N'00:02:50' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'tyOLJ99ysdU', N'Strangelove', N'Strangelove.png', N'Bộ phim xoay quanh một sự kiện giả tưởng: một viên tướng Mỹ mất trí đã ra lệnh tấn công hạt nhân Liên Xô. Khi tin tức được lan truyền, Tổng thống Mỹ và các cố vấn của ông phải tìm cách ngăn chặn thảm họa xảy ra.', 302943, 1, 3, 1964, N'Stanley Kubrick', N'Đang cập nhật', N'Peter Sellers, George C. Scott,...', CAST(N'00:10:02' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'u3mupIlFIYQ', N'The Breakfast Club (1985)', N'TheBreakfastClub.png', N'The Breakfast Club kể về câu chuyện của năm học sinh trung học từ những nhóm xã hội khác nhau bị bắt giam vào thứ bảy. Họ buộc phải dành cả ngày với nhau, và qua đó họ học cách vượt qua những định kiến ​​ban đầu và tìm thấy điểm chung.', 457234, 0, 6, 1985, N'John Hughes', N'Đang cập nhật', N'Emilio Estevez, Anthony Michael Hall,...', CAST(N'00:03:28' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'VKayG1TrfuE', N'Blazing Saddles (1974) ', N'BlazingSaddles.png', N'Trailer của Blazing Saddles (Yên ngựa rực lửa) mang phong cách hài hước đặc trưng của đạo diễn Mel Brooks.

Phim lấy bối cảnh một thị trấn miền Tây nước Mỹ.
Để hù dọa và thâu tóm đất đai, tên chính trị gia tham nhũng cố tình bổ nhiệm một cảnh sát trưởng da đen (Cleavon Little).
Tuy nhiên, vị cảnh sát trưởng này lại bất ngờ trở thành người bảo vệ chính nghĩa.
Bên cạnh đó, còn có một nhân vật khác do Gene Wilder thủ vai, hứa hẹn sẽ mang đến những tình huống hài hước.', 20394, 0, 3, 1974, N'Mel Brooks', N'Đang cập nhật', N'Cleavon Little, Gene Wilder,...', CAST(N'00:02:14' AS Time), 1)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'WkxBn1TfUj8', N'PHÀM NHÂN DỊ NĂNG', N'pham-nhan-di-nang.png', N'Phàm Nhân Dị Năng là câu chuyện về một người đàn ông bình thường bỗng dưng sở hữu năng lực siêu nhiên.', 59230, 1, 7, 2024, N'Đang cập nhật', N'Trung Quốc', N'Đang cập nhật', CAST(N'01:29:14' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'Wqy9cLL6K5w', N'A Clockwork Orange (1971)', N'ClockworkOrange.png', N'A Clockwork Orange là một bộ phim kinh điển của đạo diễn Stanley Kubrick, được chuyển thể từ tiểu thuyết cùng tên của Anthony Burgess. Phim lấy bối cảnh tương lai dystopian, nơi một băng đảng thanh thiếu niên, dẫn đầu bởi Alex DeLarge (Malcolm McDowell), gieo rắc nỗi kinh hoàng với những hành vi bạo lực và tội ác.', 30452, 1, 3, 1971, N'Stanley Kubrick', N'Đang cập nhật', N'Malcolm McDowell, Patrick Magee,..', CAST(N'01:22:30' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'YtxzNRTqZFE', N'Groundhog Day (1993)', N'GroundhogDay.png', N'Phil Connors, một biên tập viên dự báo thời tiết khó chịu, buộc phải trải qua cùng một ngày - Ngày Chuột Chũi (2 tháng 2) - lặp đi lặp lại nhiều lần. Ban đầu, anh ta chán nản và tức giận, nhưng sau đó anh ta bắt đầu tận dụng tình huống này để học hỏi những điều mới, giúp đỡ mọi người và tìm kiếm tình yêu.', 3457455, 0, 6, 1993, N'Harold Ramis', N'Đang cập nhật', N'Bill Murray, Andie MacDowell,...', CAST(N'01:40:02' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'ZaJb3nQB_vM', N'Tiên Cầu Đại Chiến', N'tien-cau-dai-chien.png', N'Tiên Cầu Đại Chiến là câu chuyện về cuộc chiến tranh giữa con người và người ngoài hành tinh trên một cây cầu khổng lồ nối liền Trái đất và Sao Hỏa.

Cây cầu Tiên Cầu là một công trình vĩ đại được xây dựng bởi con người và người ngoài hành tinh để hợp tác và giao thương. Tuy nhiên, một ngày nọ, người ngoài hành tinh bất ngờ tấn công cây cầu và Trái đất.', 120394, 1, 7, 2017, N'Đang cập nhật', N'Trung Quốc', N'Đang cập nhật', CAST(N'01:21:01' AS Time), 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Views], [Active], [GenreId], [YearOfRelease], [Director], [Country], [Actor], [Times], [Trailer]) VALUES (N'ZnZXkr7DwqM', N'Up (2009)', N'Up.png', N'Up là một phim hoạt hình máy tính của Pixar Animation Studios và Walt Disney Pictures. Phim kể về Carl Fredricksen, một ông lão 78 tuổi buộc hàng ngàn quả bóng bay vào ngôi nhà của mình và bay đến Paradise Falls, nơi ông hứa sẽ đưa người vợ quá cố Ellie của mình đến. Trên đường đi, ông gặp Russell, một cậu bé Hướng đạo sinh 8 tuổi, và cùng nhau họ trải qua một cuộc phiêu lưu đầy thú vị và nguy hiểm.', 3048593, 1, 8, 2009, N'Pete Docter, Bob Peterson', N'Đang cập nhật', N'Ed Asner, Christopher Plummer,...', CAST(N'01:37:12' AS Time), 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_USER_VIDEO]    Script Date: 10-04-2024 17:38:40 ******/
ALTER TABLE [dbo].[Favorites] ADD  CONSTRAINT [UQ_USER_VIDEO] UNIQUE NONCLUSTERED 
(
	[VideoId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__536C85E4E67EA298]    Script Date: 10-04-2024 17:38:40 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Admin]
GO
ALTER TABLE [dbo].[Videos] ADD  DEFAULT ((0)) FOR [Views]
GO
ALTER TABLE [dbo].[Videos] ADD  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[Videos] ADD  DEFAULT ((0)) FOR [Trailer]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Shares]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Shares]  WITH CHECK ADD FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Videos]  WITH CHECK ADD FOREIGN KEY([GenreId])
REFERENCES [dbo].[VideoGenre] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
