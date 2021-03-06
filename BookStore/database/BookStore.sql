
CREATE DATABASE [BookStore]
GO	
USE [BookStore]
GO
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_name] [nvarchar](255) NOT NULL,
	[account_email] [nvarchar](255) NOT NULL,
	[account_pass] [nvarchar](255) NOT NULL,
	[account_phone] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[total] [money] NOT NULL,
	[payment] [nvarchar](255) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[date] [date] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetails](
	[bill_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [nvarchar](255) NOT NULL,
	[account_id] [int] NOT NULL,
	[book_name] [nvarchar](255) NOT NULL,
	[book_image] [nvarchar](255) NOT NULL,
	[price] [money] NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[book_id] [nvarchar](255) NOT NULL,
	[category_id] [int] NOT NULL,
	[book_name] [nvarchar](255) NOT NULL,
	[book_image] [nvarchar](255) NOT NULL,
	[book_price] [money] NOT NULL,
	[book_description] [nvarchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[contact_name] [nvarchar](255) NOT NULL,
	[contact_email] [nvarchar](255) NOT NULL,
	[contact_title] [nvarchar](255) NOT NULL,
	[contact_message] [nvarchar](1000) NOT NULL,
	[contact_date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAdmin](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_name] [nvarchar](255) NOT NULL,
	[account_pass] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([account_id], [account_name], [account_email], [account_pass], [account_phone]) VALUES (1, N'user', N'user@gmail.com', N'user', N'0214521452')
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B01', 1, N'Con Chim Xanh Biếc Bay Về', N'images/books/book.jpg', 202500, N'Không giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cảnh chính là Sài Gòn – Thành phố Hồ Chí Minh nơi tác giả sinh sống (như là một sự đền đáp ân tình với mảnh đất miền Nam). Các nhân vật chính trong truyện cũng “lớn” hơn, với những câu chuyện mưu sinh lập nghiệp lắm gian nan thử thách của các sinh viên trẻ đầy hoài bão. Tất nhiên không thể thiếu những câu chuyện tình cảm động, kịch tính và bất ngờ khiến bạn đọc ngẩn ngơ, cười ra nước mắt. Và như trong mọi tác phẩm Nguyễn Nhật Ánh, sự tử tế và tinh thần hướng thượng vẫn là điểm nhấn quan trọng trong quyển sách mới này.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B02', 1, N'Bánh Mì Cô Đơn', N'images/books/book1.jpg', 96750, N'Cuốn tiểu thuyết Bánh Mì Cô Đơn của tác giả Judith Ryan Hendricks viết về những thân phận phụ nữ hết sức đời thương. Là Wyn Morrison, biết rất nhiều nhưng không rõ mình muốn gì? Là Christine Mayle, yêu sàn diễn đến cháy bỏng, nhưng không dễ gì tìm được người đàn ông của đời mình. Là người mẹ hoàn hảo của Wyn, sau nhiều năm trời im lặng đã mở ra những tâm sự chân thành cùng con gái. Là những phụ nữ vừa bình dị vừa độc đáo ở hiệu bánh Quen Srteet. Tất cả ít nhiều đã giúp Wyn nhìn lại chính mình sau khi mải sống cuộc đời nhung lụa của một cô vợ được cưới về chỉ cốt để làm sang cho chồng.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B03', 1, N'Hạnh Phúc Đích Thực', N'images/books/book2.jpg', 70400, N'Con người tìm đến thiền định vì họ muốn bản thân có thể đưa ra những quyết định đúng đắn, xóa bỏ những thói quen không tốt và hồi phục tốt hơn sau những thất vọng. Họ muốn cảm thấy gần gũi hơn với gia đình, bạn bè; muốn thoải mái dễ chịu hơn với chính cơ thể và tâm trí mình; hoặc trở thành một phần của điều gì đó lớn lao hơn bản thân họ.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B04', 1, N'Hạnh Phúc Không Nằm Trong Ví', N'images/books/book3.jpg', 50150, N'Trong cuộc sống hằng ngày, người ta thường hay đùa với nhau: “Tiền là tiên, là Phật.” Có lẽ không ngoa khi nói rằng cuộc sống hiện nay là cuộc sống của tiền bạc. Đa số mọi người đều coi tiền bạc là trọng tâm của đời mình, sống để kiếm tiền. Vui ở tiền bạc mà buồn cũng ở tiền bạc. Có tiền là có tất cả mà mất tiền là mất tất cả. Nhưng liệu có đúng như vậy không?')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B05', 1, N'Hạnh Phúc Thật Gần', N'images/books/book4.jpg', 53300, N'Hãy lật dở từng trang sách thật nhẹ nhàng để cảm nhận từng nhịp thở của sự hạnh phúc đang ở bên ta. Rồi một lúc nào đó bạn chợt nhận ra hạnh phúc chẳng đâu xa, chỉ đơn giản là những ánh nhìn cảm thông, thấu hiểu cũng đủ để trái tim ấm lại, tâm hồn sẽ cảm thấy nhẹ nhàng, thanh tịnh và sẵn sàng đón nhận những điều tuyệt vời mà cuộc sống này mang lại.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B06', 1, N'Nhẹ Gánh Ưu Phiền', N'images/books/book5.jpg', 76440, N'Sự thiện lương và bình an trong nội tâm của bạn sẽ góp phần tạo nên sự bình an của thế giới bên ngoài. Và sự bình an chung ấy sẽ ảnh hưởng đến nhiều người khác quanh bạn. Thế nên, ngay giây phút này, bạn hãy dám sống như một bông hoa, hồn nhiên nở, hết lòng dâng hiến vẻ đẹp và hương thơm cho đời.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B07', 1, N'Bão Giông Mới Là Cuộc Đời', N'images/books/book6.jpg', 87200, N'Chúng ta có luôn hài lòng với cuộc sống của mình không? Chư vị thánh hiền trong quá khứ dạy rằng nếu chia đời mình thành mười phần bằng nhau, ta thường chỉ thấy hạnh phúc một hoặc hai phần. Đức Phật cũng luôn dạy rằng đời là bể khổ. Dẫu không phải là đau khổ của sinh lão bệnh tử thì cũng không tránh được nỗi đau khi xa lìa người thân yêu, đối mặt với kẻ thù và không đạt được những điều mong muốn.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B08', 1, N'Dám Tha Thứ', N'images/books/book7.jpg', 56000, N'Dám Tha Thứ là một tác phẩm có sức lay động và ảnh hưởng mạnh mẽ đến cái nhìn của chúng ta về sự tha thứ. Bằng những kinh nghiệm thực tế của bản thân trong lĩnh vực điều trị tâm lý, bằng chính những đau khổ, mất mát của cuộc đời mình, tác giả đã đúc kết rằng: “Tha thứ có sức mạnh kết nối con người với nhau. Ngọn lửa hận thù từng ngự trị trong trái tim mỗi chúng ta đều có thể được thay thế bằng một tình yêu thương ấm áp”.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B09', 1, N'Ngày Mới Tự Làm Mới', N'images/books/book8.jpg', 48300, N'Những ngày cuối năm và nhất là khi cả dân tộc Việt Nam cùng chào đón năm mới âm lịch Kỷ Hợi 2019, rất nhiều Phật tử đã thỉnh và tặng nhau lịch thư pháp NĂM MỚI, TA CŨNG MỚI của Thiền sư Thích Nhất Hạnh. Một món quà đơn giản nhưng ý nghĩa vô cùng.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B10', 1, N'Muốn An Được An', N'images/books/book9.jpg', 41600, N'Ngày chủ nhật và cũng là ngày cuối cùng của tháng 11 năm 2014 tôi nhận được bản thảo cuốn sách Muốn an được an của thiền sư Thích Nhất Hạnh đã được sư cô Hội Nghiêm dịch ra tiếng Việt từ bản nguyên gốc tiếng anh Being peace. Tôi ngồi vào bàn rồi đọc ngay tức khắc. Và tôi giật mình.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B11', 1, N'Buông', N'images/books/book10.jpg', 68800, N'Khi tâm hồn trong sáng, vui vẻ là bạn đang tiến dần đến mục tiêu, thành công của cuộc sống mà chúng ta mong đợi. Chúng ta sẽ làm việc tốt hơn, sống đam mê hơn, nhân hậu, tha thứ và rộng mở, học thêm được nhiều điều…Hạnh phúc, bình an,yêu thương sẽ đến với bạn nhiều hơn khi biết buông bỏ. Hãy sống thật với bản thân mình để mang lại bình an cho mọi người.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B12', 2, N'Homo Deus', N'images/books/fbook.jpg', 181900, N'Yuval Noah Harari, author of the critically-acclaimed New York Times bestseller and international phenomenon Sapiens, returns with an equally original, compelling, and provocative book, turning his focus toward humanitys future, and our quest to upgrade humans into gods.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B13', 2, N'The Sun Is Also A Star', N'images/books/fbook1.jpg', 149600, N'Now a major motion picture starring Yara Shahidi and Charles Melton! The #1 New York Times bestseller and National Book Award finalist from the bestselling author of Everything, Everything will have you falling in love with Natasha and Daniel as they fall in love with each other!')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B14', 2, N'Ashes In The Snow', N'images/books/fbook2.jpg', 130500, N'An international bestseller, a #1 New York Times bestseller, and now a major motion picture! Ruta Sepetyss Between Shades of Gray is now the film Ashes in the Snow! This special movie tie-in edition features 16 pages of color movie stills starring Bel Powley and Jonah Hauer-King in never-before-seen footage and a behind-the-scenes look at the making of the movie, plus a brand-new letter from the author!')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B15', 2, N'between shades of gay', N'images/books/fbook3.jpg', 116900, N'Fifteen-year-old Lina is a Lithuanian girl living an ordinary life--until Soviet officers invade her home and tear her family apart. Separated from her father and forced onto a crowded train, Lina, her mother, and her young brother make their way to a Siberian work camp, where they are forced to fight for their lives. Lina finds solace in her art, documenting these events by drawing. Risking everything, she imbeds clues in her drawings of their location and secretly passes them along, hoping her drawings will make their way to her fathers prison camp. But will strength, love, and hope be enough for Lina and her family to survive?')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B16', 2, N'Wonder Women Warbringer', N'images/books/fbook4.jpg', 118300, N'Diana longs to prove herself to her legendary warrior sisters. But when the opportunity finally comes, she throws away her chance at glory and breaks Amazon law—risking exile—to save a mere mortal. Even worse, Alia Keralis is no ordinary girl and with this single brave act, Diana may have doomed the world.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B17', 2, N'The Revenge Of Magic', N'images/books/fbook5.jpg', 108750, N'When long-dead magical creatures are discovered all around the world, each buried with a book of magic, only children can unlock the dangerous power of the books in this start to an "imaginative and exciting" (Brandon Mull, #1 New York Times bestselling author) series from the author of the New York Times bestselling Story Thieves!')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B18', 2, N'Sorcery Of Phorns', N'images/books/fbook6.jpg', 266900, N'From the New York Times bestselling author of An Enchantment of Ravens comes an “enthralling adventure” (Kirkus Reviews, starred review) about an apprentice at a magical library who must battle a powerful sorcerer to save her kingdom.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B19', 2, N'Hollow City', N'images/books/fbook7.jpg', 208250, N'September 3, 1940. Ten peculiar children flee an army of deadly monsters. And only one person can help them—but she’s trapped in the body of a bird. The extraordinary journey that began in Miss Peregrine’s Home for Peculiar Children continues as Jacob Portman and his newfound friends journey to London, the peculiar capital of the world. There, they hope to find a cure for their beloved headmistress, Miss Peregrine. But in this war-torn city, hideous surprises lurk around every corner. And before Jacob can deliver the peculiar children to safety, he must make an important decision about his love for Emma Bloom.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B20', 2, N'The longest Ride', N'images/books/fbook8.jpg', 102400, N'In the tradition of his beloved first novel, "The Notebook," #1 "New York Times" bestselling author Nicholas Sparks returns with the remarkable story of two couples whose lives intersect in profound and surprising ways. Ira Levinson is in trouble. Ninety-one years old and stranded and injured after a car crash, he struggles to retain consciousness until a blurry image materializes beside him: his beloved wife Ruth, who passed away nine years ago.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B21', 2, N'Me Before You', N'images/books/fbook9.jpg', 209250, N'Louisa Clark is an ordinary girl living an exceedingly ordinary life--steady boyfriend, close family--who has barely been farther afield than their tiny village. She takes a badly needed job working for ex-Master of the Universe Will Traynor, who is wheelchair bound after an accident. Will has always lived a huge life--big deals, extreme sports, worldwide travel--and now he is pretty sure he cannot live the way he is.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B22', 2, N'Four', N'images/books/fbook10.jpg', 179350, N'What happens the morning after the night before, when the night before was when you did the most reckless thing of your life? I loved Andy Jones stylish portrayal of four people who make way too much history in one night, and just could not put it down until I found out the fate of each of them Catherine Isaac')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B23', 2, N'Not That Is Could Tell', N'images/books/fbook11.jpg', 168800, N'Everyone knows something about everyone else in the small town of Yellow Springs, but no one can make sense of the disappearance. Kristin was a sociable mother, school administrator, and doctor wife who did not seem all that bothered by her impending divorce. When the investigation launches, it turns up more questions than answers - with her soon-to-be-ex-husband, Paul at the centre.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B24', 1, N'Hai Số Phận', N'images/books/book11.jpg', 145250, N'“Hai số phận” làm rung động mọi trái tim quả cảm, nó có thể làm thay đổi cả cuộc đời bạn. Đọc cuốn sách này, bạn sẽ bị chi phối bởi cá tính của hai nhân vật chính, hoặc bạn là Kane, hoặc sẽ là Abel, không thể nào nhầm lẫn. Và điều đó sẽ khiến bạn thấy được chính mình. Khi bạn yêu thích tác phẩm này, người ta sẽ nhìn ra cá tính và tâm hồn thú vị của bạn! “Nếu có giải thưởng Nobel về khả năng kể chuyện, giải thưởng đó chắc chắn sẽ thuộc về Archer.”')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B25', 1, N'Mùa Chinh Chiến Ấy', N'images/books/book12.jpg', 125550, N'Chiến trường K giai đoạn cuối năm 1978 đến giữa những năm 1980 là nơi bộ đội Việt Nam phải đối mặt với một kẻ địch nguy hiểm, liều lĩnh và môi trường xa lạ, khắc nghiệt hơn cả hai cuộc kháng chiến trước đó. Trong bối cảnh âm thầm mà khốc liệt của gần 40 năm về trước ấy, truyện đưa người đọc theo dấu chân tuổi 18 của nhân vật “tôi” – người lính sư đoàn 307, đi tới tận những miền rừng núi heo hút xứ người. Đó là cuộc hành quân dài hàng ngàn cây số: từ Pleiku, theo đường 19 tiến về hướng Tây, để đẩy lùi và tiêu diệt tàn quân Khmer Đỏ ở vùng Đông - Bắc Campuchia.')
INSERT [dbo].[Books] ([book_id], [category_id], [book_name], [book_image], [book_price], [book_description]) VALUES (N'B26', 1, N'Tiền Trong Túi - Tình Trong Tim', N'images/books/book13.jpg', 84000, N'Sử dụng các câu chuyện của khách hàng và câu chuyện từ món nợ 20 ngàn đô đến tự do tài chính ở tuổi 28 của chính mình, Northrup đóng vai trò là người hướng dẫn trong hành trình tìm kiếm tự do tài chính của riêng bạn.Cô ấy sẽ chỉ cho bạn cách thay đổi niềm tin về tiền bạc, lập ngân sách, chi tiêu tương xứng với giá trị, thoát nợ, và nhiều hơn thế nữa. Tóm lại, cô ấy sẽ giúp bạn học cách yêu quý đồng tiền để từ đó, bạn có thể yêu quý cuộc đời mình.')
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Sách trong nước')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Sách nước ngoài')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[UserAdmin] ON 

INSERT [dbo].[UserAdmin] ([account_id], [account_name], [account_pass]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[UserAdmin] OFF
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD FOREIGN KEY([book_id])
REFERENCES [dbo].[Books] ([book_id])
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
USE [master]
GO
ALTER DATABASE [BookStore] SET  READ_WRITE 
GO
