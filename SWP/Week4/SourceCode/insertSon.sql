SET IDENTITY_INSERT Gender ON
INSERT INTO gender (gender_id, gender_name) VALUES 
(1, N'Nam'), 
(2, N'Nữ');
SET IDENTITY_INSERT Gender OFF

insert into Role(role_name) values 
('admin'),
('Student'),
('Lecturer'),
('Marketing'),
('Sales')

insert into "user" (user_email, password, full_name, user_img, gender_id, user_dob, user_phone, user_address, user_wallet, role_id, user_time, user_status, Score) 
values 
('son@gmail.com','YvzV1AkiYao7bz5c9EHeow==', N'chu sơn', 'img/tempAvatar.jpg', 1, '2003-05-27', '0363938085', N'Sơn Tây', 1000, 2, '2003-05-27', 1, 0),
('chi@gmail.com','YvzV1AkiYao7bz5c9EHeow==', N'Minh Chi', 'img/tempAvatar.jpg', 2, '2003-05-27', '0363938085', 'Hà Nội', 1000, 2, '2003-05-27', 1, 0),
('manh@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Phan Tiến Mạnh', 'img/tempAvatar.jpg', 1, '2003-01-01', '0442511630', N'Hà Nội', 1000, 1, '2023-05-26', 1, 0),
('linh@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Thị Ngọc Linh', 'img/tempAvatar.jpg', 2, '2003-01-01', '0460429023', N'Hà Nội', 1000, 1, '2023-05-26', 1, 0),
('quocAnh@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Võ Quốc Anh', 'img/tempAvatar.jpg', 1, '2003-01-01', '0827784536', N'Hà Nội', 1000, 1, '2023-05-26', 1, 0),
('TuAnh@gmail.com', 'YvzV1AkiYao7bz5c9EHeow==', N'Phan Nguyễn Tú Anh', 'img/tempAvatar.jpg', 2, '2003-01-01', '0197295039', N'Hà Nội', 1000, 1, '2023-05-26', 1, 0),
('dinhvu@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Trịnh Đình Vũ', 'img/tempAvatar.jpg', 1, '2003-01-01', '0442511630', N'Nam Định', 1000, 2, '2023-05-26', 1, 0),
('haianh@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Hải Anh', 'img/tempAvatar.jpg', 1, '2003-01-01', '0577951519', N'Hồ Chí Minh', 1000, 2, '2023-05-26', 1, 0),
('nhatlinh@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Chu Nhật Linh', 'img/tempAvatar.jpg', 2, '2003-01-01', '0783130637', N'Thanh Hoá', 1000, 2, '2023-05-26', 1, 0),
('thanhtra@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Phùng Thanh Trà', 'img/tempAvatar.jpg', 2, '2003-01-01', '0168700393', N'Đà Nẵng', 1000, 2, '2023-05-26', 1, 0),
('minhtam@gmail.com', 'YvzV1AkiYao7bz5c9EHeow==', N'Đinh Ngọc Minh Tâm', 'img/tempAvatar.jpg', 2, '2003-05-27', '0556335383', N'Hải Phòng', 1000, 4, '2023-05-26', 1, 0),
('tiendat@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Trần Tiến Đạt', 'img/tempAvatar.jpg', 1, '2003-01-01', '0836942901', N'Cà Mau', 1000, 3, '2023-05-26', 1, 0),
('quanghuy@gmail.com', 'YvzV1AkiYao7bz5c9EHeow==', N'Đỗ Quang Huy', 'img/tempAvatar.jpg', 1, '2003-01-01', '0239381909', N'Hà Nội', 1000, 3, '2023-05-26', 1, 0),
('maihuong@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Mai Hương', 'img/tempAvatar.jpg', 2, '2003-01-01', '0231248582', N'Hà Nội', 1000, 3, '2023-05-26', 1, 0),
('thaoduong@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Vũ Thị Thảo Dương', 'img/tempAvatar.jpg', 2, '2003-01-01', '0593996287', N'Hà Nội', 1000, 5, '2023-05-26', 1, 0),
('nguyenhongnhung@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Hồng Nhung', 'img/tempAvatar.jpg', 2, '2003-01-01', '0438875162', N'Nam Định', 1000, 3, '2023-05-26', 1, 0),
('nguyenmanhtrung@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Nguyễn Mạnh Trung', 'img/tempAvatar.jpg', 1, '2003-01-01', '0437905918', N'Bình Định', 1000, 2, '2023-05-26', 1, 0),
('dangquy@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Đặng Hoàng Quý', 'img/tempAvatar.jpg', 2, '2003-01-01', '0333842851', N'Bình Định', 1000, 3, '2023-05-26', 1, 0)

select * from subject 

INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Công nghệ thông tin', N'https://i.ytimg.com/vi/CJlckNl0KFU/hq720.jpg?sqp=-%E2%80%A6AFwAcABBg==&rs=AOn4CLClq5CDznc_poNMEtAdr-O4xPFA5g', N'Trong môn học này, bạn có thể học nhiều ngôn ngữ lập trình khác nhau.')
INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Toán', N'https://i.ytimg.com/vi/gSVHaIWIgUE/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLDckRJcwXYnnQtJ2kUYPX6VtIp2KA', N'Trong chủ đề này, bạn có thể tìm hiểu về toán học trong lĩnh vực công nghệ thông tin.')
INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Nhạc cụ', N'https://i.ytimg.com/vi/FpTlgWy5UUU/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLBvQfUgiQhsak1KckNc-KkRTHzykg', N'Trong môn học này, bạn có thể tham gia các khóa học cơ bản về cách chơi nhạc cụ.')
INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Ngôn ngữ', N'https://i.ytimg.com/vi/wkjSBC-_bDA/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLCSsSNhyijp7aPD2qVbxdDfaI6JHg', N'Trong môn học này, bạn có thể học nhiều ngôn ngữ khác nhau')
INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Kinh Doanh', N'https://i.ytimg.com/vi/G7VWp_U-eo8/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLCuDh3B8RKQ-8-dJpQSLhhVvX5D0w', N'Trong chủ đề này, bạn có thể học các khóa học kinh doanh cơ bản.')
INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Sức khoẻ', N'https://i.ytimg.com/vi/VJ_s51QGbg8/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLAtzjxsl6Dflrjtv8RLrdDGHnMn1w', N'Ở bộ môn này, bạn có thể học các khóa học về cách chăm sóc sức khỏe đúng cách và khoa học.')

SET IDENTITY_INSERT Level ON 
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (1, N'Basic')
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (2, N'Intermediate')
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (3, N'Advanced')
SET IDENTITY_INSERT Level OFF

INSERT INTO Course VALUES (1,N'Xác suất thống kê I',N'img/course-2-1.png',75000,N'Khóa học xác suất và thống kê là một khóa học cơ bản giúp người học hiểu về cách tính toán và áp dụng các khái niệm cơ bản của hai lĩnh vực này. Nó được thiết kế để giúp người mới bắt đầu có được kiến thức và kỹ năng căn bản trong xác suất và thống kê.

Trong khóa học này, bạn sẽ được giới thiệu với các khái niệm cơ bản như biến số, phân phối, chuỗi thời gian và mô hình hồi quy tuyến tính. Bạn sẽ học cách tính toán trung bình, phương sai, độ lệch chuẩn và các đại lượng thống kê khác.

Bên cạnh đó, khóa học cũng sẽ giúp bạn hiểu rõ hơn về các phương pháp thống kê cơ bản để xác định mối quan hệ giữa các biến số trong tập dữ liệu. Bạn sẽ học cách xây dựng mô hình cho các dữ liệu liên tục và rời rạc.

Khóa học sử dụng các ví dụ và bài tập giúp người học áp dụng những kiến thức đã học vào thực tế và nắm vững các kỹ năng thống kê cơ bản. Với khóa học này, bạn sẽ có được nền tảng vững chắc để tiếp tục học tập và phát triển kiến thức thực tế trong lĩnh vực xác suất và thống kê."','2022-03-04 00:00:00',2,1,1,30,N'Xác suất thống kê cho người mới bắt đầu'),
	(2,N'Đại số tuyến tính I',N'img/course-2-2.png',75000,N'Khóa học đại số tuyến tính là một khóa học cơ bản trong toán học, và được giới thiệu cho những người mới bắt đầu học toán. Khóa học này giảng dạy về các phương pháp để giải các bài toán liên quan đến hệ đại số tuyển tính.

Trong khóa học này, bạn sẽ bắt đầu với kiến ​​thức cơ bản về đại số tuyến tính, bao gồm các khái niệm về ma trận, vector và hệ phương trình tuyến tính. Sau đó, bạn sẽ học về các phép tính cơ bản trong đại số tuyến tính, bao gồm cộng, trừ, nhân ma trận và tích vô hướng.

Sau khi hoàn thành phần cơ bản, khóa học sẽ tiếp tục với việc giải các hệ phương trình tuyến tính bằng các phương pháp khác nhau, bao gồm phương pháp khử Gauss và định thức. Bạn sẽ học cách áp dụng các phương pháp này vào các ví dụ thực tế, như trong khoa học máy tính và kĩ thuật điện tử.

Khóa học đại số tuyến tính rất quan trọng trong nhiều lĩnh vực khác nhau, bao gồm khoa học máy tính, kĩ thuật và khoa học dữ liệu. Nếu bạn muốn bắt đầu học toán hoặc muốn nâng cao kiến ​​thức của mình trong lĩnh vực này, thì đây là một khóa học tuyệt vời để bắt đầu.','2022-03-05 00:00:00',2,1,1,30,N'Đại số tuyến tính cho người mới bắt đầu'),
	(3,N'Giải tích I',N'img/course-2-3.png',75000,N'Khóa học giải tích là một khóa học cơ bản trong toán học và nó dành cho những người mới bắt đầu học toán. Khóa học này sẽ giúp bạn hiểu các khái niệm cơ bản của giải tích, từ đó giúp bạn có thể áp dụng kiến thức này vào các vấn đề trong cuộc sống hàng ngày.

Trong khóa học này, bạn sẽ bắt đầu với các khái niệm cơ bản như đạo hàm và tích phân. Bạn sẽ học cách tính đạo hàm của một hàm số và cách sử dụng đạo hàm để tìm cực trị của một hàm số. Sau đó, khóa học sẽ giới thiệu cho bạn về tích phân và các phương pháp tính toán tích phân đơn giản.

Sau khi hoàn thành phần cơ bản, khóa học sẽ tiếp tục với việc giới thiệu cho bạn các khái niệm cao cấp hơn, bao gồm phép tích phân đường, phép tích phân ba chiều và phương trình vi phân. Bạn sẽ học cách sử dụng các phương pháp này để giải quyết các vấn đề trong nhiều lĩnh vực khác nhau, bao gồm khoa học máy tính, kỹ thuật và vật lý.

Khóa học giải tích rất quan trọng trong nhiều lĩnh vực, đặc biệt là trong khoa học tự nhiên và kỹ thuật. Nếu bạn muốn bắt đầu học toán hoặc muốn nâng cao kiến ​​thức của mình trong lĩnh vực này, thì đây là một khóa học tuyệt vời để bắt đầu.','2022-03-06 00:00:00',2,1,1,30,N'Giải tích cho người mới bắt đầu'),
	(4,N'Toán rời rạc I',N'img/course-2-4.png',75000,N'Khóa học toán rời rạc là một khóa học cơ bản trong toán học và giành cho những người mới bắt đầu học toán. Khóa học này sẽ giúp bạn hiểu các khái niệm cơ bản của toán rời rạc, từ đó giúp bạn có thể áp dụng kiến thức này vào các vấn đề trong cuộc sống hàng ngày.

Trong khóa học này, bạn sẽ được giới thiệu với các khái niệm cơ bản như tập hợp, đồ thị, quan hệ và logic. Bạn sẽ học cách phân tích các tập hợp, hiểu được các thuộc tính cơ bản của chúng và cách sử dụng chúng để giải quyết các vấn đề.

Sau khi hoàn thành phần cơ bản, khóa học sẽ giới thiệu cho bạn về các khái niệm nâng cao hơn, bao gồm lượng tử, hàm sinh và combinatorics. Bạn sẽ học cách sử dụng các phương pháp này để giải quyết các vấn đề liên quan đến xác suất và thống kê, và áp dụng chúng vào các ví dụ thực tế như trong khoa học máy tính, tài chính và kinh doanh.

Khóa học toán rời rạc là rất quan trọng trong nhiều lĩnh vực, đặc biệt là trong khoa học máy tính, kỹ thuật và kinh doanh. Nếu bạn muốn bắt đầu học toán hoặc muốn nâng cao kiến ​​thức của mình trong lĩnh vực này, thì đây là một khóa học tuyệt vời để bắt đầu.','2022-03-07 00:00:00',2,1,1,30,N'Toán rời rạc cho người mới bắt đầu'),
	(5,N'Hình học giải tích I',N'img/course-2-5.png',75000,N'Khóa học hình học giải tích là một khóa học cơ bản trong toán học và chủ yếu dành cho những người mới bắt đầu học toán. Khóa học này sẽ giúp bạn hiểu các khái niệm cơ bản của hình học giải tích, từ đó giúp bạn có thể áp dụng kiến thức này vào các vấn đề trong cuộc sống hàng ngày.

Trong khóa học này, bạn sẽ được giới thiệu với các khái niệm cơ bản về không gian vector và đại số tuyến tính, từ đó bạn sẽ học cách áp dụng các khái niệm này để giải quyết các vấn đề hình học. Bạn sẽ học cách biểu diễn các đối tượng hình học như điểm, đường, mặt phẳng và đa giác bằng cách sử dụng ma trận và vector.

Sau khi hoàn thành phần cơ bản, khóa học sẽ giới thiệu cho bạn về các khái niệm nâng cao hơn, bao gồm hình học riêng và giải tích riêng. Bạn sẽ học cách tính gradient và divergence của một hàm số, và cách sử dụng chúng để giải quyết các vấn đề liên quan đến hình học và vật lý.

Khóa học hình học giải tích là rất quan trọng trong nhiều lĩnh vực, đặc biệt là trong khoa học máy tính, kỹ thuật và vật lý. Nếu bạn muốn bắt đầu học toán hoặc muốn nâng cao kiến ​​thức của mình trong lĩnh vực này, thì đây là một khóa học tuyệt vời để bắt đầu.','2022-03-08 00:00:00',2,1,1,30,N'Hình học giải tích cho người mới bắt đầu'),
	(6,N'Đại số đại cương',N'img/course-2-6.png',75000,N'Khóa học đại số đại cương là một khóa học cung cấp kiến thức cơ bản về đại số cho người mới bắt đầu. Khóa học này giúp bạn hiểu các khái niệm cơ bản của đại số, bao gồm các phép tính cộng, trừ, nhân, chia, và quy tắc ưu tiên trong các phép tính.

Ngoài ra, khóa học còn giới thiệu về các khái niệm quan trọng như biểu thức đại số, phép nghịch đảo, phân số và định lý Pythagoras. Bạn sẽ được học cách giải các bài toán đơn giản sử dụng các kiến thức này.

Các bài tập trong khóa học cũng rất hữu ích để bạn có thể áp dụng các kiến thức đã học vào thực tế. Cuối khóa học, bạn sẽ có được nền tảng vững chắc về đại số để tiếp tục học tập những chủ đề nâng cao hơn, chẳng hạn như đại số tuyến tính hay đại số đại số.

Một số khóa học đại số đại cương có thể yêu cầu kiến thức toán học cơ bản, tuy nhiên, nếu bạn không có kiến thức toán học trước đó, các khóa học này cũng sẽ giúp bạn học được những kỹ năng cần thiết để giải quyết các bài toán đơn giản.

Khóa học đại số đại cương là một khóa học cung cấp kiến thức cơ bản về đại số cho người mới bắt đầu. Khóa học này giúp bạn hiểu các khái niệm cơ bản của đại số, bao gồm các phép tính cộng, trừ, nhân, chia, và quy tắc ưu tiên trong các phép tính.

Ngoài ra, khóa học còn giới thiệu về các khái niệm quan trọng như biểu thức đại số, phép nghịch đảo, phân số và định lý Pythagoras. Bạn sẽ được học cách giải các bài toán đơn giản sử dụng các kiến thức này.

Các bài tập trong khóa học cũng rất hữu ích để bạn có thể áp dụng các kiến thức đã học vào thực tế. Cuối khóa học, bạn sẽ có được nền tảng vững chắc về đại số để tiếp tục học tập những chủ đề nâng cao hơn, chẳng hạn như đại số tuyến tính hay đại số đại số.

Một số khóa học đại số đại cương có thể yêu cầu kiến thức toán học cơ bản, tuy nhiên, nếu bạn không có kiến thức toán học trước đó, các khóa học này cũng sẽ giúp bạn học được những kỹ năng cần thiết để giải quyết các bài toán đơn giản.','2022-03-09 00:00:00',2,1,1,30,N'Giới thiệu về môn đại số'),
	(7,N'Thực hành tính toán',N'img/course-2-7.png',75000,N'Khóa học thực hành tính toán cho người mới bắt đầu có thể bao gồm các chủ đề sau:

Các phép tính cơ bản: Khóa học có thể bắt đầu với việc giới thiệu các phép tính cơ bản như cộng, trừ, nhân và chia để xây dựng nền tảng cho tổ hợp tính toán phức tạp hơn.

Thực hành với bộ đếm: Khóa học có thể cho sinh viên thực hành với bộ đếm để làm quen với các số học cơ bản và cách tính toán chúng.

Đổi đơn vị đo: Các bài tập trong khóa học có thể yêu cầu sinh viên chuyển đổi giữa các đơn vị đo khác nhau như mét, feet, inch, kilogram, pound, gram,...

Tính toán trong cuộc sống hàng ngày: Khóa học có thể giải thích những ví dụ cụ thể trong cuộc sống hàng ngày khi phải áp dụng tính toán như tính thuế, tính tiền tip, tính lương,...

Sử dụng ứng dụng tính toán: Ngoài việc sử dụng máy tính, khóa học có thể giới thiệu các ứng dụng tính toán khác như bảng tính Excel, Matlab, Python để giúp sinh viên có thể áp dụng kiến thức tính toán vào các bài toán thực tế.

Giải quyết vấn đề: Khóa học có thể cung cấp cho sinh viên một số bài toán để thực hành giải quyết vấn đề và trình bày các phương pháp, kết quả của mình.

Tất cả các chủ đề trên đều được thiết kế để giúp sinh viên mới bắt đầu tích lũy kiến thức và kỹ năng tính toán cơ bản và ứng dụng chúng vào cuộc sống hàng ngày.','2022-03-10 00:00:00',2,1,1,30,N'Cung cấp các kĩ năng thực hành tính toán cơ bản'),
	(8,N'Topo đại cương',N'img/course-2-8.png',75000,N'Topology là một nhánh của toán học nghiên cứu tính chất không gian và đường cong. Một khóa học topology cho người mới bắt đầu thường bao gồm các khái niệm cơ bản, ví dụ như:

Khái niệm về tập hợp, độ đo khoảng cách và hình dạng của các đối tượng không gian.
Các khái niệm cơ bản trong topology như định nghĩa về không gian metric, không gian topological, và các tính chất của chúng như liên thông, phân hoạch, đóng/mở, được xác định bằng cách sử dụng các tập con.
Các định lý cơ bản trong topology như định lý Banach-Tarski (về phân tích một khối cầu thành nhiều phần và tái lắp chúng thành hai khối cầu có diện tích lớn hơn), định lý Euler (liên quan đến số dạng của các đa diện trên không gian Euclide) và định lý Jordan (đưa ra điều kiện để một đường cong được chia thành hai phần không giao).
Ứng dụng của topology trong các lĩnh vực khác như vật lý, sinh học, kinh tế, và máy tính.
Một khóa học topology cho người mới bắt đầu thường sử dụng phương pháp giảng dạy trực quan, với việc sử dụng hình ảnh và ví dụ để giải thích các khái niệm và định lý. Ngoài ra, các bài tập và ví dụ cũng được sử dụng để giúp học sinh hiểu sâu hơn các khái niệm và áp dụng chúng vào những vấn đề thực tế.','2022-03-11 00:00:00',2,1,1,30,N'Giới thiệu về Topology'),
	(9,N'Cơ sở hình học vi phân',N'img/course-2-9.png',75000,N'Khóa học cơ sở hình học vi phân là một khóa học giúp người học hiểu về các khái niệm và công cụ cơ bản của hình học vi phân. Khóa học bao gồm các chủ đề như đạo hàm, tích phân và các ứng dụng của chúng trong hình học và vật lý.

Trong khóa học này, người học sẽ được giới thiệu với các khái niệm căn bản của đạo hàm, bao gồm đạo hàm riêng, đạo hàm của hàm số tổng quát và một số tính chất quan trọng của đạo hàm. Sau đó, khóa học sẽ tiếp tục với tích phân, bao gồm tích phân không xác định, tích phân xác định và tích phân đường cong.

Ngoài ra, khóa học cũng giới thiệu các ứng dụng của hình học vi phân trong các lĩnh vực khác nhau, bao gồm các bài toán liên quan đến tốc độ và gia tốc, tìm diện tích và thể tích, các bài toán tối ưu và các bài toán liên quan đến các phương trình vi phân.

Để tiếp cận khóa học này, người học cần có kiến thức căn bản về đại số và tính toán, bao gồm giải phương trình và véc-tơ. Ngoài ra, người học cũng cần có hiểu biết cơ bản về các hàm số và đồ thị của chúng.','2022-03-12 00:00:00',2,1,1,30,N'Giới thiệu về hình học vi phân'),
	(10,N'Giải tích hàm',N'img/course-2-10.png',100000,N'Khóa học về Giải tích hàm sẽ cung cấp cho bạn những kiến thức và kỹ năng cần thiết để phân tích, giải quyết các bài toán liên quan đến tích phân và vi phân. Khóa học này thường bao gồm các chủ đề như lượng giác, đạo hàm, tích phân, nguyên hàm, tính giới hạn và các ứng dụng của Giải tích hàm trong các lĩnh vực khác nhau.

Trong khóa học này, bạn sẽ học cách tính đạo hàm của một hàm số, tìm giá trị cực trị và các điểm uốn của một đồ thị. Bạn cũng sẽ được học cách tính tích phân của một hàm và sử dụng các công thức tích phân để giải quyết các bài toán phức tạp. Ngoài ra, bạn còn được giới thiệu với khái niệm nguyên hàm và các ứng dụng của nó.

Khóa học có thể được thiết kế cho các sinh viên khoa học, kỹ thuật, toán học hoặc các chuyên ngành liên quan đến quản lý, kinh tế, y tế... Các phương pháp giảng dạy trong khóa học có thể bao gồm bài giảng trực tiếp, thảo luận nhóm và các bài tập thực hành để hỗ trợ việc học tập của sinh viên.','2022-03-13 00:00:00',2,1,1,60,N'Nâng cao kĩ năng giải tích với giải tích hàm'),
	(11,N'Thống kê ứng dụng',N'img/course-2-11.png',100000,N'Khóa học về thống kê ứng dụng sẽ cung cấp cho học viên những kiến thức cơ bản và nâng cao về thống kê và ứng dụng của nó. Khóa học này giúp các học viên hiểu được lý thuyết thống kê và cách áp dụng nó vào các tình huống thực tế trong công việc hoặc nghiên cứu.

Trong khóa học, học viên sẽ được giới thiệu về các phương pháp thống kê cơ bản, bao gồm những khái niệm quan trọng như độ tin cậy, tần suất, trung bình, độ lệch chuẩn và phương sai. Họ cũng sẽ được hướng dẫn cách sử dụng các công cụ thống kê để phân tích dữ liệu và đưa ra kết luận chính xác từ những thông tin thu thập được.

Ngoài ra, khóa học còn giới thiệu về các phương pháp thống kê tiên tiến như hồi quy tuyến tính, ANOVA và phân tích chiều sâu (PCA), và cách áp dụng chúng để giải quyết các vấn đề phức tạp hơn.

Cuối cùng, khóa học cũng sẽ đưa ra một số ví dụ cụ thể về ứng dụng thống kê trong nhiều lĩnh vực, bao gồm kinh doanh, khoa học dữ liệu và y học. Học viên sẽ được trang bị những kiến thức cần thiết để áp dụng thống kê vào công việc hoặc nghiên cứu của mình một cách hiệu quả và chuyên nghiệp.','2022-03-14 00:00:00',2,2,1,60,N'Áp dụng thông kê vào bài toán thực tiễn'),
	(12,N'Giải tích phức',N'img/course-2-12.png',100000,N'Khóa học về giải tích phức là một khóa học chuyên sâu về các phương pháp và kỹ thuật trong lĩnh vực giải tích phức. Giải tích phức là một nhánh của toán học nghiên cứu tính toán trên số phức, bao gồm các hàm phức, tích phức, đạo hàm phức và tích phân phức.

Trong khóa học này, sinh viên sẽ học về các khái niệm cơ bản của giải tích phức, bao gồm các hàm phức liên tục, đạo hàm phức, tích phân phức, phép biến đổi Fourier và chuỗi Laurent. Sinh viên sẽ được giới thiệu với các ứng dụng quan trọng của giải tích phức trong các lĩnh vực khác nhau, như lý thuyết điều khiển, vật lý lượng tử và khoa học máy tính.

Các chủ đề cụ thể có thể bao gồm:

Phương pháp tính toán với các hàm phức
Tích phân phức và nguyên hàm phức
Chuỗi Laurent
Định lí Morera và định lí Cauchy
Đạo hàm phức và công thức Cauchy–Riemann
Nguyên lý siêu còi và phép biến đổi Fourier
Các ứng dụng của giải tích phức trong lý thuyết điều khiển, vật lý lượng tử và khoa học máy tính.
Khóa học này thường là một phần của chương trình đào tạo tiên tiến trong toán học và các ngành liên quan. Sau khi hoàn thành, sinh viên sẽ có được kiến thức cơ bản và kỹ năng để áp dụng giải tích phức vào việc nghiên cứu và giải quyết các vấn đề thực tế.','2022-03-15 00:00:00',2,2,1,60,N'Nâng cao kĩ năng giải tích với giải tích phức'),
	(13,N'Giải tích II',N'img/course-2-13.png',100000,N'Khóa học Giải tích II là một khóa học tiên tiến trong lĩnh vực toán học, thông thường được dạy trong các trường đại học và cao đẳng. Khóa học này nhằm cung cấp cho sinh viên kiến ​​thức về các chủ đề toán học tiên tiến như: tích phân đa biến, chuỗi công bội, dãy Fourier và giải phương trình vi phân.

Các chủ đề cụ thể có thể bao gồm:

Tích phân đa biến: Tổng quan về tích phân đa biến, và các công thức tính toán cơ bản.

Chuỗi công bội: Tổng quan về chuỗi công bội và chuỗi Taylor, các định lý của chúng và ứng dụng của chúng.

Các định lý về tích phân: Bao gồm định lý Fubini và các định lý về tích phân Riemann và Lebesgue.

Dãy Fourier: Tổng quan về dãy Fourier và ứng dụng của chúng trong giải phương trình vi phân.

Phương trình vi phân: Giới thiệu về phương trình vi phân và các phương pháp giải phương trình vi phân đặc biệt, bao gồm phương pháp Picard, phương pháp Laplace và phương pháp sinh.

Trong khóa học này, sinh viên sẽ được thực hành giải quyết các bài tập và ứng dụng thực tế của các chủ đề toán học tiên tiến này. Khóa học Giải tích II là một bước tiến quan trọng trong việc nâng cao kiến ​​thức toán học của sinh viên và chuẩn bị cho các khóa học toán học chuyên sâu hơn sau này.','2022-03-16 00:00:00',2,2,1,60,N'Nâng tầm kiến thức về bộ môn giải tích'),
	(14,N'Đại số tuyến tính II',N'img/course-2-14.png',100000,N'Khóa học Đại số tuyến tính II (Linear Algebra II) là một khóa học cao cấp trong lĩnh vực đại số tuyến tính, nó xây dựng trên các kiến thức cơ bản đã được định nghĩa trong khóa học Đại số tuyến tính I.

Trong khóa học này, sinh viên sẽ tìm hiểu về các chủ đề như không gian vector, ánh xạ tuyến tính, ma trận và định thức, giá trị riêng và vector riêng, phân tích giá trị suy biến và ứng dụng của đại số tuyến tính trong thực tế.

Ngoài ra, sinh viên cũng sẽ học cách giải quyết các bài toán liên quan đến các chủ đề này bằng cách sử dụng các kỹ thuật tính toán và kĩ năng lập trình.

Khóa học này có thể được áp dụng rộng rãi trong nhiều lĩnh vực như khoa học máy tính, vật lý, kinh tế học, quản lý kinh doanh và nhiều lĩnh vực khác.','2022-03-17 00:00:00',2,2,1,60,N'Nâng tầm kiến thức về bộ môn đại số tuyến tính'),
	(15,N'Toán rời rạc II',N'img/course-2-15.png',100000,N'Khóa học Toán rời rạc II (Discrete Mathematics II) là một khóa học tiên tiến trong lĩnh vực toán học, được thiết kế để giúp sinh viên có kiến thức cơ bản về Toán rời rạc tiếp tục phát triển các kỹ năng và kiến ​​thức chuyên sâu về lý thuyết đồ thị, lý thuyết tối ưu, lý thuyết mã hóa, lý thuyết ngôn ngữ hình thức, lý thuyết thông tin, và một số chủ đề khác.

Khóa học này bao gồm các chủ đề như: Đồ thị và tổ hợp, Các thuật toán trên đồ thị, Lý thuyết tối ưu, Tổ hợp và xác suất, Lập trình tối ưu, Độ phức tạp tính toán, Lý thuyết mã hóa và Giải mã, Ngôn ngữ hình thức và Tính toán lý thuyết thông tin.

Sinh viên sẽ được học các khái niệm và công cụ cơ bản để thiết kế, phân tích và cải tiến các thuật toán, cũng như phát triển các kỹ năng lập trình để giải quyết các vấn đề liên quan đến đồ thị và tối ưu hoá. Ngoài ra, sinh viên sẽ được giới thiệu các khái niệm cơ bản về lý thuyết thông tin và mã hóa để xây dựng các hệ thống bảo mật và truyền thông hiệu quả.

Khóa học Toán rời rạc II là một khóa học quan trọng và rất hữu ích đối với những ai quan tâm đến các chủ đề liên quan đến toán học ứng dụng và khoa học máy tính.','2022-03-18 00:00:00',2,2,1,60,N'Nâng tầm kiến thức về bộ môn toán rời rạc'),
	(16,N'Hình học giải tích II',N'img/course-2-16.png',100000,N'Khóa học Hình học giải tích II là một khóa học nâng cao trong ngành Toán học, tập trung vào việc khai thác các kiến thức về hình học và giải tích để giải quyết các bài toán phức tạp. Trong khóa học này, sinh viên sẽ được học về các chủ đề như:

Nghiên cứu về các dạng số phức và ứng dụng của chúng trong hình học.

Các phép biến đổi hình học và tính chất của chúng, bao gồm phép xoay, phép tịnh tiến và phép co giãn.

Phương pháp tính tích phân đường và ứng dụng trong tìm diện tích và thể tích.

Bài toán về đường cong và diện tích bị giới hạn bởi đường cong.

Tính chất của các đường cong nổi tiếng như parabol, elip, hyperbol và cycloid.

Sinh viên sẽ được học thông qua các bài giảng lý thuyết cùng với các bài tập thực hành để áp dụng các kiến thức đã học vào giải quyết các bài toán thực tế. Khóa học này đòi hỏi sinh viên có kiến thức cơ bản về hình học giải tích và các kỹ năng tính toán, do đó nó thường được giảng dạy ở trình độ cao hơn trong chương trình Toán học của các trường đại học.','2022-03-19 00:00:00',2,2,1,60,N'Nâng tầm kiến thức về bộ môn hình học giải tích'),
	(17,N'Xác suất thống kê II',N'img/course-2-17.png',100000,N'Khóa học về Xác suất thống kê II là một khóa học tiên tiến trong lĩnh vực xác suất và thống kê. Khóa học này tập trung vào các phương pháp nâng cao để giải quyết các vấn đề phức tạp trong xác suất và thống kê.

Trong khóa học này, sinh viên sẽ được học các chủ đề như:

Các phân phối xác suất liên tục và rời rạc, bao gồm phân phối chuẩn, phân phối Poisson, phân phối nhị thức, phân phối đa thức và phân phối gamma.
Các phương pháp ước lượng tham số, bao gồm phương sai, phương sai trung bình, tỷ lệ, phân phối và trung vị.
Kiểm định giả thuyết và kiểm định độ tin cậy.
Đặc điểm của các phương pháp phân tích dữ liệu, bao gồm phân tích biến thể, phân tích phương sai (ANOVA), phân tích hồi quy tuyến tính và phi tuyến tính.
Áp dụng các phương pháp xác suất và thống kê để giải quyết các vấn đề thực tế.
Khóa học này dành cho sinh viên đã có kiến thức cơ bản về xác suất và thống kê, và cần nâng cao kiến ​​thức để áp dụng vào các lĩnh vực khác nhau như khoa học dữ liệu, kinh doanh, tài chính, y tế và nhiều ngành công nghiệp khác.','2022-03-20 00:00:00',2,2,1,60,N'Nâng tầm kiến thức về bộ môn xác suất thống kê'),
	(18,N'Lý thuyết nhóm và biểu diễn nhóm',N'img/course-2-18.png',100000,N'Khóa học về lý thuyết nhóm và biểu diễn nhóm là một khóa học chuyên sâu giúp học viên hiểu rõ về lý thuyết cơ bản của các nhóm và cách biểu diễn chúng. Trong khóa học này, học viên sẽ được giới thiệu về các định nghĩa và thuộc tính cơ bản của nhóm, bao gồm nhóm Abel, nhóm chuẩn, nhóm đơn, nhóm vòng, và nhóm Lie.

Sau đó, học viên sẽ được giảng dạy về các loại biểu diễn nhóm, bao gồm biểu diễn đối xứng, biểu diễn ma trận, biểu diễn biến đổi tuyến tính và biểu diễn suy biến. Họ sẽ học cách phân tích và kết hợp các biểu diễn nhóm, tạo ra các biểu diễn mới và áp dụng chúng vào các ứng dụng trong vật lý, toán học và khoa học máy tính.

Trong quá trình học, học viên sẽ được giải thích các ví dụ cụ thể và các bài toán khó trong lý thuyết nhóm và biểu diễn nhóm. Họ cũng sẽ được thực hành qua các bài tập và dự án nhỏ để trau dồi kỹ năng phân tích và giải quyết vấn đề.

Cuối cùng, khóa học sẽ kết thúc với các bài giảng về ứng dụng của lý thuyết nhóm và biểu diễn nhóm trong các lĩnh vực khác nhau như vật lý hạt nhân, vật lý lượng tử, hoặc lý thuyết mạng neural. Khóa học này sẽ cung cấp cho học viên các kiến thức cần thiết để nghiên cứu và làm việc trong các lĩnh vực này.','2022-03-21 00:00:00',2,2,1,60,N'Hiểu rõ hơn về lý thuyết nhóm và biểu diễn nhóm'),
	(19,N'Topo vi phân',N'img/course-2-19.png',100000,N'Khóa học về Topo vi phân sẽ giúp sinh viên hiểu về các khái niệm cơ bản và ứng dụng của Topo vi phân trong toán học và các lĩnh vực liên quan như khoa học máy tính, kinh tế học, vật lý và sinh học.

Trong khóa học này, sinh viên sẽ được giới thiệu về các khái niệm căn bản của Topo vi phân như không gian metric, không gian topological, đỉnh và đường biên, đường cong, tập mở và tập đóng, hàm liên tục và hàm đồng nhất. Sau đó, sinh viên sẽ học về các công cụ và kỹ thuật cần thiết để nghiên cứu lý thuyết Topo vi phân, như bổ đề Urysohn, định lý Tychonoff và định lý Banach-Alaoglu.

Bên cạnh đó, khóa học cũng giúp sinh viên áp dụng Topo vi phân vào các vấn đề thực tế. Ví dụ, trong khoa học máy tính, Topo vi phân được sử dụng để phát hiện các điểm nổi bật trong hình ảnh, xử lý ngôn ngữ tự nhiên và phân tích dữ liệu. Trong kinh tế học, Topo vi phân được sử dụng để nghiên cứu các vấn đề tài chính và tối ưu hoá.

Cuối cùng, khóa học Topo vi phân cũng đưa ra những bài toán thực tế và giúp sinh viên rèn luyện kỹ năng giải quyết vấn đề và suy luận logic.','2022-03-22 00:00:00',2,2,1,60,N'Hiểu rõ hơn về Topo vi phân'),
	(20,N'Không gian vector Topo',N'img/course-2-20.png',150000,N'Khóa học về không gian vector topo là một khóa học chuyên sâu trong lĩnh vực toán học, tập trung vào việc nghiên cứu các tính chất của không gian vector và không gian topo. Khóa học này thường được giảng dạy ở trình độ đại học hoặc sau đại học.

Trong khóa học này, sinh viên sẽ được học về các khái niệm và tính chất cơ bản của không gian vector và không gian topo như: độc lập tuyến tính, hạng của một không gian vector, không gian con và không gian làm phẳng, quan hệ giữa căn cứ và chiều của một không gian vector, topology trên không gian vector và các tính chất cơ bản của một không gian topo như định nghĩa liên thông, tiếp xúc và đo đạc.

Sinh viên sẽ được học cách áp dụng các kiến thức và kỹ năng này để giải quyết các bài toán và ứng dụng thực tế, bao gồm các vấn đề về quy hoạch tuyến tính, hệ phương trình đại số tuyến tính, phân tích dữ liệu, thiết kế mạng và nhiều lĩnh vực khác.

Khóa học này sẽ giúp sinh viên phát triển khả năng tư duy logic, trừu tượng hóa và giải quyết vấn đề, cũng như mở rộng kiến thức, hiểu biết và cách tiếp cận trong lĩnh vực toán học.','2022-03-23 00:00:00',2,3,1,60,N'Hiểu rõ hơn về không gian vector Topo'),
	(21,N'Cơ sở hình học vi phân',N'img/course-2-21.png',150000,N'Khóa học về Cơ sở hình học vi phân (Foundations of Differential Geometry) là một khóa học tiên tiến trong lĩnh vực Toán học, giúp sinh viên hiểu và ứng dụng các khái niệm cơ bản của Hình học vi phân trong nghiên cứu các vấn đề liên quan đến khoa học máy tính, Khoa học vật liệu, và các lĩnh vực khác.

Khóa học này bao gồm các chủ đề như: Không gian Euclid và không gian riêng biệt, Độ cong và độ cong riêng, Hình học đại số, Các chiếu song song và bề mặt, Lý thuyết đường cong và bề mặt riêng biệt, Các đa tọa độ và các tổ hợp tensor.

Sinh viên sẽ được học các khái niệm cơ bản về định nghĩa các khái niệm như đường cong, bề mặt, độ cong và độ cong riêng, và áp dụng chúng để giải quyết các vấn đề liên quan đến tối ưu hoá, xử lý hình ảnh và cảm nhận thị giác. Ngoài ra, sinh viên sẽ được giới thiệu về các công cụ toán học cơ bản để giải quyết các vấn đề phức tạp trong lĩnh vực này.

Khóa học Cơ sở hình học vi phân là một khóa học quan trọng và rất hữu ích cho những ai quan tâm đến các chủ đề liên quan đến toán học ứng dụng, khoa học máy tính và các ngành công nghệ khác. Nó cũng là một cơ hội tuyệt vời để học các kiến ​​thức và kỹ năng cần thiết để nghiên cứu tiếp các chủ đề liên quan đến Hình học vi phân và các lĩnh vực liên quan.','2022-03-24 00:00:00',2,3,1,90,N'Hiểu rõ hơn về cơ sở hình học vi phân'),
	(22,N'Hình học đại số',N'img/course-2-22.png',150000,N'Khóa học hình học đại số là một khóa học toán học cơ bản, nghiên cứu về các đối tượng hình học như điểm, đường, mặt trong không gian và kết hợp với đại số để xây dựng các mô hình đầy đủ hơn. Khóa học này sẽ giúp sinh viên hiểu được các khái niệm căn bản trong hình học đại số, bao gồm hệ tọa độ, phương trình đường thẳng và mặt phẳng, vector, ma trận và định lý Pythagoras.

Trong khóa học, sinh viên sẽ học cách sử dụng các công cụ hình học đại số để giải quyết các vấn đề thực tế trong khoa học máy tính, kỹ thuật, thiết kế đồ họa và khoa học vật lý. Sinh viên cũng sẽ được đào tạo để nắm vững các kỹ năng tính toán trên các hình học đại số để giải các bài toán liên quan đến khối lượng, diện tích, thể tích, độ dốc, độ cong và khoảng cách.

Ngoài ra, khóa học còn giúp sinh viên rèn luyện kỹ năng tư duy logic, phân tích và giải quyết các vấn đề, đặc biệt là trong lĩnh vực khoa học máy tính. Khóa học hình học đại số cung cấp cho sinh viên nền tảng kiến thức chắc chắn và kỹ năng cần thiết để phát triển sự nghiệp trong lĩnh vực này.','2022-03-25 00:00:00',2,3,1,90,N'Hiểu rõ hơn về hình học đại số'),
	(23,N'Đại số tuyến tính III',N'img/course-2-23.png',150000,N'Khóa học Đại số tuyến tính III là một khóa học nâng cao về đại số tuyến tính, được thiết kế để giúp sinh viên hiểu sâu hơn về các khái niệm và ứng dụng của đại số tuyến tính trong các lĩnh vực khoa học khác nhau.

Trong khóa học này, sinh viên sẽ được học về các chủ đề như: không gian vector, phép biến đổi tuyến tính, ma trận, giá trị riêng và vectơ riêng, đa thức ma trận và phép đồng nhất. Ngoài ra, sinh viên cũng sẽ được thực hành trên các bài tập và ví dụ để rèn luyện kỹ năng áp dụng kiến thức vào thực tiễn.

Khóa học Đại số tuyến tính III thường được dạy trong chương trình đào tạo các ngành khoa học tự nhiên, kỹ thuật, toán học và các ngành liên quan. Với kiến thức từ khóa học này, sinh viên có thể áp dụng vào nhiều lĩnh vực như khoa học máy tính, xử lý ảnh, điện tử, cơ học, vật lý và nhiều lĩnh vực khác.','2022-03-26 00:00:00',2,3,1,90,N'Làm chủ môn đại số tuyến tính'),
	(24,N'Lý thuyết số',N'img/course-2-24.png',150000,N'Khóa học lý thuyết số là một khóa học toán học cung cấp kiến thức về các tính chất của số nguyên và các phép toán liên quan đến chúng. Khóa học này tập trung vào việc nghiên cứu các tính chất cơ bản của số nguyên, ví dụ như cách phân tích một số thành các thừa số nguyên tố, tính chẵn lẻ của số và ước chung lớn nhất của các số.

Ngoài ra, khóa học lý thuyết số cũng bao gồm các chủ đề như lượng giác, hoán vị và kỹ thuật mã hóa. Học viên sẽ được học về những phương pháp để giải các bài toán liên quan đến lý thuyết số, xây dựng các thuật toán và áp dụng chúng trong thực tiễn.

Khóa học lý thuyết số có rất nhiều ứng dụng trong khoa học máy tính, mật mã học và công nghệ thông tin. Nó cũng rất hữu ích cho những người làm việc với các hệ thống mã hóa và bảo mật, cũng như cho những người quan tâm đến các vấn đề liên quan đến an toàn thông tin.','2022-03-27 00:00:00',2,3,1,90,N'Hiểu rõ hơn về lý thuyết số'),
	(25,N'Giải tích phổ toán tử',N'img/course-2-25.png',150000,N'Khóa học Giải tích phổ Toán tử là một khóa học chuyên sâu trong lĩnh vực Toán học, giúp sinh viên hiểu và áp dụng các phương pháp của Giải tích phổ để giải quyết các bài toán liên quan đến các phổ toán tử.

Trong khóa học này, sinh viên sẽ được học về các khái niệm cơ bản của Toán tử và phổ Toán tử, bao gồm các khái niệm về các phép biến đổi Fourier và Laplace, ứng dụng của chúng trong việc giải phương trình vi phân và các bài toán liên quan đến các phổ toán tử.

Sinh viên cũng sẽ được học về các kỹ thuật tiên tiến trong Giải tích phổ Toán tử, bao gồm các phương pháp phân tích Vi phân, các phương pháp nghiên cứu tích phân và các phương pháp phân rã thức.

Ngoài ra, khóa học cũng đề cập đến những ứng dụng của Giải tích phổ Toán tử trong các lĩnh vực khác nhau như Vật lý lý thuyết, Cơ học lượng tử và Xử lý tín hiệu.

Tóm lại, khóa học Giải tích phổ Toán tử là một khóa học chuyên sâu, cung cấp cho sinh viên các kiến thức và kỹ năng cần thiết để có thể giải quyết các bài toán liên quan đến các phổ toán tử trong nhiều lĩnh vực khác nhau.','2022-03-28 00:00:00',2,3,1,90,N'Hiểu rõ hơn về giải tích phổ toán tử'),
	(26,N'Quá trình ngẫu nhiên',N'img/course-2-26.png',150000,N'Khóa học quá trình ngẫu nhiên là một khóa học đầy thú vị và hữu ích cho những ai muốn tìm hiểu về lý thuyết xác suất và các ứng dụng của nó trong cuộc sống hàng ngày. Trong khóa học này, bạn sẽ học cách mô hình hoá và phân tích các quá trình ngẫu nhiên, từ đó có thể dự đoán các sự kiện trong tương lai.

Bạn sẽ được hướng dẫn chi tiết về lý thuyết xác suất, bao gồm các khái niệm cơ bản như biến ngẫu nhiên, phân phối xác suất và kỳ vọng. Sau đó, bạn sẽ học về các loại quá trình ngẫu nhiên như quá trình Markov, quá trình Poisson và quá trình Gauss.

Trong quá trình học, bạn sẽ được áp dụng các kiến thức đã học để giải quyết các vấn đề thực tế, chẳng hạn như dự đoán số lượng xe cộ đi qua một ngã tư trong một khoảng thời gian nhất định, hoặc tính toán xác suất của một sự kiện nào đó xảy ra.

Cuối cùng, khi hoàn thành khóa học, bạn sẽ có kiến thức và kỹ năng để áp dụng lý thuyết xác suất vào cuộc sống hàng ngày của mình, từ đó giúp bạn ra các quyết định thông minh hơn và hiểu rõ hơn về các khái niệm xác suất trong cuộc sống.','2022-03-29 00:00:00',2,3,1,90,N'Hiểu rõ hơn về quá trình ngẫu nhiên'),
	(27,N'Điều kiển tối ưu',N'img/course-2-27.png',150000,N'Khóa học về điều khiển tối ưu là một khóa học chuyên sâu về việc tối ưu hóa các hệ thống động. Khóa học này bao gồm các khái niệm cơ bản về lý thuyết tối ưu và phương pháp điều khiển tối ưu, bao gồm:

Tối ưu hoá: Các khái niệm cơ bản về tối ưu hoá, định nghĩa hàm mục tiêu, ràng buộc và phương pháp giải quyết bài toán tối ưu.

Điều khiển tối ưu: Tổng quan về điều khiển tối ưu, bao gồm các phương pháp như điều khiển quy hoạch tuyến tính (LQR), điều khiển tối ưu dựa trên mô hình (MPC) và phương pháp điều khiển tối ưu dựa trên kế hoạch (OPC).

Ứng dụng: Các ứng dụng của điều khiển tối ưu trong các lĩnh vực như robot, điều khiển tự động, điều khiển động cơ, điều khiển hàng không vũ trụ...

Thực hành: Khóa học cung cấp các bài tập thực hành để giúp sinh viên thực hành và nắm vững kiến thức.

Sinh viên sau khi hoàn thành khóa học sẽ có hiểu biết sâu rộng về lý thuyết tối ưu và phương pháp điều khiển tối ưu, cũng như tìm hiểu được cách áp dụng kiến thức này vào thực tế.','2022-03-30 00:00:00',2,3,1,90,N'Học cách điều khiển tối ưu'),
	(28,N'Tối ưu rời rạc',N'img/course-2-28.png',150000,N'Khóa học về tối ưu rời rạc (discrete optimization) nhằm giúp sinh viên và chuyên gia trong lĩnh vực này học được các kỹ năng và công cụ để giải quyết các vấn đề tối ưu hóa trong các bài toán rời rạc.

Khóa học sẽ giới thiệu các phương pháp tối ưu rời rạc cơ bản, bao gồm thủ tục tìm kiếm địa phương, giải thuật di truyền, và phương pháp cắt nhánh và cận. Sinh viên cũng có thể học cách sử dụng các công cụ tối ưu hóa, chẳng hạn như các phần mềm tối ưu hóa động và các thư viện tối ưu hóa.

Ngoài ra, khóa học còn tập trung vào các ứng dụng của tối ưu rời rạc trong các lĩnh vực như kinh tế, khoa học máy tính, và kỹ thuật. Sinh viên sẽ được đưa ra các bài toán thực tế và học cách áp dụng các kỹ thuật tối ưu rời rạc để giải quyết chúng.

Tổng quan lại, khóa học về tối ưu rời rạc cung cấp cho sinh viên một nền tảng vững chắc để giải quyết các vấn đề tối ưu hóa rời rạc, từ đó giúp họ trở thành những chuyên gia trong lĩnh vực này.','2022-03-31 00:00:00',2,3,1,90,N'Học cách tối ưu rời rạc'),
	(29,N'Lý thuyết ước lượng và kiểm định giả thuyết',N'img/course-2-29',150000,N'Khóa học về Lý thuyết ước lượng và Kiểm định giả thuyết là một khóa học trong lĩnh vực Thống kê, giúp sinh viên hiểu và áp dụng các phương pháp thống kê để ước lượng và kiểm định giả thuyết.

Trong khóa học này, sinh viên sẽ được học về các khái niệm cơ bản của Thống kê như: biến số, tập dữ liệu, trung bình, phương sai, độ lệch chuẩn và phân phối xác suất.

Sinh viên sẽ được hướng dẫn về các phương pháp ước lượng, bao gồm ước lượng điểm và ước lượng khoảng tin cậy. Khóa học cũng đề cập đến các phương pháp kiểm định giả thuyết, bao gồm kiểm định giả thuyết về trung bình, kiểm định giả thuyết về phương sai và kiểm định giả thuyết về tỷ lệ.

Ngoài ra, khóa học còn đưa ra các ứng dụng của Lý thuyết ước lượng và Kiểm định giả thuyết trong các lĩnh vực khác nhau như Kinh tế học, Y học và Khoa học máy tính.

Tóm lại, khóa học về Lý thuyết ước lượng và Kiểm định giả thuyết là một khóa học cung cấp cho sinh viên các kiến thức và kỹ năng cần thiết để có thể áp dụng các phương pháp thống kê để ước lượng và kiểm định những giả thuyết trong nhiều lĩnh vực khác nhau.','2022-04-01 00:00:00',2,3,1,90,N'Nắm rõ lý thuyết ước lượng và kiểm định giả thuyết'),
	(30,N'Nhập môn lập trình C',N'img/course-1-1.png',80000,N'Khóa học "Nhập môn lập trình C" là một khóa học cơ bản dành cho những người mới bắt đầu muốn học lập trình. Trong khóa học này, bạn sẽ học được kiến thức cơ bản về ngôn ngữ lập trình C và cách sử dụng những công cụ cơ bản để phát triển các ứng dụng đơn giản.

Khóa học sẽ bắt đầu với việc giới thiệu về C, cú pháp và cách thức hoạt động của ngôn ngữ này. Sau đó, bạn sẽ học về biến, kiểu dữ liệu, câu lệnh điều kiện, vòng lặp và các hàm cơ bản trong C.

Bạn cũng sẽ được hướng dẫn cách sử dụng các công cụ phát triển ứng dụng C cơ bản, bao gồm trình biên dịch và trình gỡ lỗi. Khóa học cũng sẽ trang bị cho bạn kỹ năng debug và tối ưu mã nguồn.

Sau khi hoàn thành khóa học, bạn sẽ có kiến thức cơ bản về lập trình C và có thể tiếp tục học tập về các chủ đề liên quan như lập trình hướng đối tượng và phát triển ứng dụng trên nhiều nền tảng khác nhau.','2022-04-02 00:00:00',1,1,1,30,N'Lập trình cơ bản với ngôn ngữ C'),
	(31,N'Nhập môn lập trình C++',N'img/course-1-2.png',80000,N'Khóa học "Nhập môn lập trình C++" là khóa học cơ bản dành cho những người mới bắt đầu học lập trình. Trong khóa học này, bạn sẽ được giới thiệu về ngôn ngữ lập trình C++ và các khái niệm cơ bản của lập trình như biến, hàm, điều kiện và vòng lặp.

Khóa học sẽ bao gồm các chủ đề như cách sử dụng các công cụ phát triển phần mềm để viết mã C++, cách tạo và sử dụng các biến, kiểu dữ liệu, hàm và toán tử trong C++. Bạn cũng sẽ học cách sử dụng các câu lệnh điều kiện và các vòng lặp để điều khiển luồng chương trình.

Điểm nổi bật của khóa học này là các ví dụ minh họa cụ thể và các bài tập thực hành giúp bạn hiểu rõ hơn về cách áp dụng kiến thức vào thực tế. Cuối khóa học, bạn sẽ có kiến thức cơ bản về lập trình C++ để phát triển các ứng dụng đơn giản.','2022-04-03 00:00:00',1,1,1,30,N'Lập trình cơ bản với ngôn ngữ C++'),
	(32,N'Nhập môn lập trình C#',N'img/course-1-3.png',80000,N'Khóa học "Nhập môn lập trình C#" được thiết kế để giúp người học có kiến thức cơ bản về lập trình hoặc chưa từng tiếp xúc với ngôn ngữ lập trình C# có thể học và hiểu được các khái niệm cơ bản của ngôn ngữ này.

Trong khóa học, người học sẽ được giới thiệu về cách sử dụng các công cụ lập trình C#, bao gồm Visual Studio và .NET Framework. Ngoài ra, khóa học cũng sẽ giới thiệu về cấu trúc chương trình C# cơ bản, cú pháp và cách viết mã.

Người học sẽ học được cách sử dụng các biến, kiểu dữ liệu, toán tử và điều kiện trong ngôn ngữ lập trình C#. Họ cũng sẽ tìm hiểu về vòng lặp và mảng, cách sử dụng chúng để xử lý dữ liệu.

Cuối cùng, khóa học sẽ giúp người học hiểu các khái niệm cơ bản về hướng đối tượng, và cách sử dụng các lớp, đối tượng, phương thức và thuộc tính.

Với những kiến thức thu được sau khóa học, người học sẽ có khả năng phát triển các ứng dụng đơn giản trong C# và hiểu được cách xây dựng các chương trình lớn hơn.','2022-04-04 00:00:00',1,1,1,30,N'Lập trình cơ bản với ngôn ngữ C#'),
	(33,N'Nhập môn lập trình Java',N'img/course-1-4.png',80000,N'Khóa học Nhập môn lập trình Java là khóa học dành cho những người mới bắt đầu học lập trình. Trong khóa học này, bạn sẽ được giới thiệu về cú pháp của ngôn ngữ lập trình Java và các khái niệm cơ bản trong lập trình hướng đối tượng.

Bạn sẽ học cách viết các chương trình đơn giản bằng Java, từ các ví dụ đơn giản đến các chương trình phức tạp hơn. Khóa học sẽ đi sâu vào các chủ đề như biến, kiểu dữ liệu, toán tử, điều kiện, vòng lặp, mảng, chuỗi và phương thức.

Ngoài ra, bạn cũng sẽ được học cách xử lý ngoại lệ và nhập xuất dữ liệu. Điều quan trọng là khóa học sẽ giúp bạn hiểu rõ các khái niệm cơ bản như lớp, đối tượng, kế thừa, đóng gói và trừu tượng hóa.

Khóa học Nhập môn lập trình Java sẽ giúp bạn có được những kiến thức cơ bản để tiếp tục học các khóa học nâng cao hơn trong lĩnh vực lập trình Java.','2022-04-05 00:00:00',1,1,1,30,N'Lập trình cơ bản với ngôn ngữ Java'),
	(34,N'Nhập môn lập trình Python',N'img/course-1-5.png',80000,N'Khóa học "Nhập môn lập trình Python" là một khóa học cơ bản dành cho những người mới bắt đầu học lập trình. Trong khóa học này, bạn sẽ được giới thiệu về cách sử dụng ngôn ngữ lập trình Python để tạo ra các chương trình đơn giản.

Khóa học bao gồm các chủ đề như cú pháp và cấu trúc của ngôn ngữ Python, biến và kiểu dữ liệu, câu lệnh điều kiện và vòng lặp, hàm và module, cùng với các thực hành và bài tập để giúp bạn nắm vững kiến thức đã học được.

Sau khi hoàn thành khóa học này, bạn sẽ có kiến thức cơ bản về lập trình Python và sẵn sàng tiếp tục học các khóa học lập trình nâng cao hơn.','2022-04-06 00:00:00',1,1,1,30,N'Lập trình cơ bản với ngôn ngữ Python'),
	(35,N'Nhập môn cơ sở dữ liệu',N'img/course-1-6.png',80000,N'Khóa học Nhập môn cơ sở dữ liệu là khóa học cung cấp cho học viên kiến thức cơ bản về quản lý cơ sở dữ liệu (CSDL). Trong khóa học này, học viên sẽ được giới thiệu về các khái niệm và các kỹ thuật cơ bản để thiết kế, triển khai và truy vấn một CSDL.

Các chủ đề cụ thể được bao gồm trong khóa học này bao gồm:

Kiến trúc của CSDL
Ngôn ngữ truy vấn cơ sở dữ liệu SQL
Phân tích và thiết kế cơ sở dữ liệu
Các loại cơ sở dữ liệu quan hệ và phi quan hệ
Đối tượng học viên của khóa học này có thể là sinh viên ngành Công nghệ thông tin, các nhà phát triển phần mềm mới bắt đầu hoặc các chuyên gia công nghệ thông tin mong muốn cải thiện kỹ năng của mình về quản lý cơ sở dữ liệu. Sau khi hoàn thành khóa học, học viên sẽ hiểu được các khái niệm cơ bản và kỹ thuật của quản lý cơ sở dữ liệu, giúp họ trở thành các chuyên gia trong lĩnh vực này.','2022-04-07 00:00:00',1,1,1,30,N'Học cách sử dụng SQL Server'),
	(36,N'Nhập môn IOT',N'img/course-1-7.png',80000,N'Khóa học "Nhập môn IoT" là một khóa học cơ bản giúp bạn hiểu về Internet of Things (IoT) và cách thức hoạt động của nó. Trong khóa học này, bạn sẽ được giới thiệu về các thành phần cơ bản của IoT, bao gồm các thiết bị đầu cuối, cảm biến, công nghệ mạng và dịch vụ điện toán đám mây.

Khóa học bắt đầu với việc giải thích khái niệm IoT và tầm quan trọng của nó trong thế giới kỹ thuật số hiện đại. Sau đó, bạn sẽ học cách thiết kế và triển khai các ứng dụng IoT đơn giản sử dụng các nền tảng và công nghệ phổ biến như Arduino, Raspberry Pi và các dịch vụ điện toán đám mây.

Trong khóa học, bạn sẽ được hướng dẫn cách lập trình các thiết bị IoT và cách sử dụng các cảm biến để thu thập dữ liệu từ môi trường xung quanh. Bạn cũng sẽ được giải thích về các mạng IoT và cách chúng hoạt động, bao gồm mạng LAN, mạng Wi-Fi, Bluetooth, ZigBee và LoRaWAN.

Cuối cùng, bạn sẽ được hướng dẫn cách lưu trữ dữ liệu IoT và phân tích nó để đưa ra các thông tin hữu ích. Sau khi hoàn thành khóa học, bạn sẽ có kiến thức cơ bản về IoT và có thể tiếp tục học tập về các chủ đề liên quan như phát triển ứng dụng IoT phức tạp hơn và triển khai các giải pháp IoT cho các doanh nghiệp và tổ chức.','2022-04-08 00:00:00',1,1,1,30,N'Học cách tạo ra một mạch Arduino đơn giản'),
	(37,N'Nhập môn cấu trúc dữ liệu và giải thuật',N'img/course-1-8.png',80000,N'Khóa học "Nhập môn cấu trúc dữ liệu và giải thuật" là một khóa học cơ bản dành cho những người mới bắt đầu muốn học về cách tổ chức và xử lý các dữ liệu trong máy tính. Trong khóa học này, bạn sẽ được hướng dẫn về cách sử dụng các cấu trúc dữ liệu phổ biến như mảng, danh sách liên kết, hàng đợi, ngăn xếp, cây và đồ thị để giải quyết các vấn đề thực tế.

Bạn cũng sẽ được giới thiệu về các giải thuật phổ biến như tìm kiếm nhị phân, sắp xếp nhanh, sắp xếp chọn và thuật toán Dijkstra để giải quyết các vấn đề liên quan đến cấu trúc dữ liệu. Khóa học cũng sẽ giúp bạn nắm vững các kỹ thuật thường được sử dụng để phân tích hiệu suất của các giải thuật.

Sau khi hoàn thành khóa học, bạn sẽ có kiến ​​thức cơ bản về cấu trúc dữ liệu và giải thuật và có khả năng áp dụng chúng vào việc giải quyết các vấn đề thực tế trong công việc lập trình. Bạn cũng sẽ có thể tiếp tục học tập về các chủ đề nâng cao hơn trong lĩnh vực này.','2022-04-09 00:00:00',1,1,1,30,N'Học các cấu trúc dữ liệu và thuật toán thông dụng'),
	(38,N'Nhập môn lập trình hướng đối tượng',N'img/course-1-9.png',80000,N'Khóa học Nhập môn lập trình hướng đối tượng là một khóa học cơ bản giúp các học viên hiểu và áp dụng các khái niệm cơ bản của lập trình hướng đối tượng (OOP). Khóa học bao gồm các chủ đề như định nghĩa lớp, đối tượng, phương thức và thuộc tính, kế thừa, đa hình, đóng gói và các quy tắc thiết kế OOP.

Trong khóa học này, học viên sẽ được hướng dẫn thông qua các bài tập thực tế, đảm bảo họ có thể áp dụng những kiến thức đã học được vào những ứng dụng thực tế. Ngoài ra, các học viên sẽ được giới thiệu với ngôn ngữ lập trình Java hoặc Python để xây dựng các chương trình hướng đối tượng đơn giản.

Khóa học này phù hợp cho những người mới bắt đầu học lập trình hoặc muốn chuyển sang lập trình hướng đối tượng và mong muốn có kiến thức cơ bản về OOP. Sau khi hoàn thành khóa học, học viên sẽ có thể tự tin trong việc áp dụng OOP vào trong các dự án lớn hơn và phát triển các ứng dụng phức tạp hơn bằng cách sử dụng các ngôn ngữ lập trình OOP khác nhau.','2022-04-10 00:00:00',1,1,1,30,N'Học lập trình hướng đối tượng với Java'),
	(39,N'Nhập môn cấu trúc và tổ chức máy tính',N'img/course-1-10.png',80000,N'Khóa học "Nhập môn cấu trúc và tổ chức máy tính" là một khóa học cơ bản dành cho những người mới bắt đầu với lĩnh vực khoa học máy tính. Khóa học này sẽ giúp bạn hiểu được cách thức hoạt động của máy tính, từ các khái niệm căn bản như bộ nhớ, CPU, tín hiệu điện...và cách phân tích cấu trúc và tổ chức của chúng.

Trong khóa học, bạn sẽ được hướng dẫn về các kiến thức cơ bản về cấu trúc và tổ chức của máy tính, bao gồm kiến trúc bộ xử lý, bộ nhớ và thiết bị ngoại vi. Bạn sẽ học cách thiết kế và triển khai các thuật toán cơ bản, đồng thời áp dụng những kiến thức đã học để hiểu rõ hơn về các ứng dụng thực tế của máy tính.

Các chủ đề cụ thể trong khóa học bao gồm: kiến trúc von Neumann, các loại bộ xử lý (CPU), các loại bộ nhớ (RAM, ROM, Cache), các loại thiết bị ngoại vi (bàn phím, chuột, máy in, màn hình,...), cách thức hoạt động của hệ điều hành và phần mềm ứng dụng.

Khóa học này là một bước đầu tuyệt vời cho những người mới bắt đầu với khoa học máy tính, giúp bạn hiểu rõ hơn về cách thức hoạt động của máy tính - một trong những lĩnh vực quan trọng nhất trong thời đại công nghệ số ngày nay.','2022-04-11 00:00:00',1,1,1,30,N'Các lý thuyết cơ bản về cấu trúc và tổ chức máy tính'),
	(40,N'Lập trình game với Unity',N'img/course-1-11.png',120000,N'Khóa học "Lập trình game với Unity" sẽ giúp người học có kiến thức cần thiết để thiết kế và phát triển các trò chơi sử dụng công cụ Unity.

Trong khóa học, người học sẽ được giới thiệu về các khái niệm cơ bản của Unity, bao gồm các thành phần cấu tạo nên một trò chơi như đối tượng, ánh sáng, camera và vật liệu. Họ sẽ tìm hiểu cách tạo ra các đối tượng trong trò chơi, thiết lập các thuộc tính và tạo ra các kịch bản.

Khóa học cũng sẽ giúp người học hiểu về cách tạo ra các animating cho các đối tượng trong trò chơi, bao gồm cách tạo ra các animation controller và animator trong Unity. Ngoài ra, người học sẽ tìm hiểu cách tạo ra các hiệu ứng đặc biệt như ánh sáng, âm thanh và hình ảnh.

Cuối cùng, khóa học sẽ giúp người học hiểu về lập trình game với Unity, bao gồm cách sử dụng C# trong Unity để tạo ra các kịch bản và điều khiển các đối tượng trong trò chơi. Người học sẽ học được cách tạo ra các kịch bản điều khiển đối tượng, cách thiết lập các collider và rigidbody, và cách sử dụng các script để tạo ra các trò chơi động.

Với những kiến thức thu được sau khóa học, người học sẽ có khả năng phát triển các trò chơi đơn giản trong Unity và hiểu được cách xây dựng các trò chơi lớn hơn.','2022-04-12 00:00:00',1,2,1,60,N'Lập trình game đơn giản với Unity và C#'),
	(41,N'Lập trình phần mềm với Window Form',N'img/course-1-12.png',120000,N'Khóa học về Lập trình phần mềm với Windows Form là một khóa học chuyên sâu giúp bạn học cách phát triển các ứng dụng Windows Desktop chuyên nghiệp. Trong khóa học này, bạn sẽ học được cách sử dụng Framework .NET và ngôn ngữ lập trình C# để tạo ra các giao diện người dùng độc đáo cho các ứng dụng Windows.

Khóa học này bao gồm những kiến thức cơ bản về lập trình, bao gồm cách thiết kế giao diện người dùng, tương tác với các thành phần của hệ thống, đọc và viết dữ liệu vào cơ sở dữ liệu và giao tiếp với các Web Service. Ngoài ra, bạn sẽ cũng được hướng dẫn cách sử dụng các công cụ phát triển phần mềm như Visual Studio để xây dựng các ứng dụng Windows hiệu quả.

Sau khi hoàn thành khóa học, bạn sẽ có năng lực phát triển các ứng dụng Windows đa dạng và chất lượng cao bao gồm các ứng dụng quản lý, ứng dụng desktop, ứng dụng đồ họa, ứng dụng di động và rất nhiều loại ứng dụng khác. Đặc biệt, bạn sẽ có kiến thức và kỹ năng để tiếp tục học tập và phát triển bản thân trong lĩnh vực lập trình phần mềm.','2022-04-13 00:00:00',1,2,1,60,N'Thiết kế và lập trình một ứng dụng đơn giản với Window Form'),
	(42,N'Lập trình website với ASP.net',N'img/course-1-13.png',120000,N'Khóa học về Lập trình website với ASP.net là một khóa học thực hành về việc phát triển các ứng dụng web động dựa trên nền tảng Microsoft .NET. Khóa học này cung cấp cho học viên kiến thức và kỹ năng cần thiết để tạo ra các trang web đáp ứng được các yêu cầu của khách hàng.

Trong khóa học này, học viên sẽ được giới thiệu về cấu trúc của một ứng dụng web, những công nghệ mới nhất của ASP.net và những công cụ lập trình cần thiết để xây dựng ứng dụng web. Học viên sẽ được hướng dẫn cách tạo các trang web với các tính năng cơ bản như đăng nhập, đăng ký, quản lý người dùng và quản lý dữ liệu.

Ngoài ra, học viên cũng sẽ học cách tối ưu hóa mã nguồn, quản lý phiên làm việc và bảo mật ứng dụng web. Khóa học cũng bao gồm các chủ đề liên quan đến việc triển khai ứng dụng web, bao gồm cách triển khai trên máy chủ local và cách triển khai trên các môi trường đám mây.

Khóa học về Lập trình website với ASP.net phù hợp cho những người muốn học cách tạo ra các ứng dụng web động chất lượng cao và mong muốn sử dụng ASP.net để xây dựng các ứng dụng web có tính năng phong phú. Học viên không yêu cầu phải có kiến thức về lập trình trước đó, tuy nhiên kiến thức căn bản về lập trình sẽ giúp ích cho việc học khóa học này.','2022-04-14 00:00:00',1,2,1,60,N'Thiết kế và lập trình một website cơ bản với ASP.net'),
	(43,N'Trí tuệ nhân tạo và máy học',N'img/course-1-14.png',120000,N'Khóa học về Trí tuệ nhân tạo và Máy học là một khóa học đầy thử thách và hiện đại, giới thiệu các khái niệm, nguyên lý và ứng dụng của trí tuệ nhân tạo và máy học. Khóa học này cung cấp cho học viên kiến thức về các thuật toán của máy học và trí tuệ nhân tạo, bao gồm học máy, mạng nơ-ron, học sâu và nhiều hơn nữa.

Học viên sẽ được hướng dẫn để có thể áp dụng những kiến thức họ học được vào các bài toán thực tiễn trong các lĩnh vực khác nhau như nhận diện hình ảnh, xử lý ngôn ngữ tự nhiên, dự đoán và phân tích dữ liệu. Ngoài ra, học viên cũng sẽ được trang bị kỹ năng lập trình và sử dụng các công cụ phát triển phổ biến như Python, TensorFlow, PyTorch, Keras và Scikit-Learn.

Khóa học này sẽ giúp các học viên có khả năng trở thành những chuyên gia về trí tuệ nhân tạo và máy học có thể tham gia vào các dự án phát triển sản phẩm mới, cải tiến các hệ thống hiện có và giải quyết các bài toán khó trong nhiều lĩnh vực khác nhau.','2022-04-15 00:00:00',1,2,1,60,N'Tìm hiểu về trí tuệ nhân tạo và máy học'),
	(44,N'Khoa học dữ liệu và phân tích Big Data',N'img/course-1-15.png',120000,N'Khóa học về Khoa học dữ liệu và phân tích Big Data giúp học viên hiểu được cách sử dụng các công cụ và kỹ thuật phân tích dữ liệu để phát hiện ra những thông tin quan trọng và đưa ra các quyết định có tính thực tiễn. Trong khóa học, học viên sẽ được hướng dẫn cách thu thập, xử lý và phân tích dữ liệu lớn từ các nguồn khác nhau, bao gồm cả dữ liệu có cấu trúc và không có cấu trúc.

Ngoài ra, khóa học cũng giúp học viên nắm được các kỹ thuật phân tích dữ liệu như Machine Learning, Data Mining và Statistical Analysis, giúp họ có thể áp dụng các phương pháp này để tìm kiếm các mối quan hệ giữa dữ liệu và đưa ra dự đoán hoặc khuyến nghị cho các bộ phận khác trong tổ chức.

Khóa học về Khoa học dữ liệu và phân tích Big Data là sự lựa chọn tuyệt vời cho những ai muốn học hỏi và phát triển kỹ năng trong lĩnh vực này. Các học viên sẽ được hướng dẫn bởi những chuyên gia hàng đầu trong lĩnh vực này và có cơ hội thực hành thông qua các dự án thực tế. Sau khi hoàn thành khóa học, học viên sẽ trang bị được kiến thức và kỹ năng cần thiết để bắt đầu sự nghiệp trong lĩnh vực Khoa học dữ liệu và phân tích Big Data.','2022-04-16 00:00:00',1,2,1,60,N'Tìm hiểu về khoa học dữ liệu và Big Data'),
	(45,N'Bảo mật và đảm bảo thông tin',N'img/course-1-16.png',120000,N'Khóa học về Bảo mật và Đảm bảo Thông tin là một chương trình đào tạo hoàn chỉnh về các vấn đề liên quan đến an ninh mạng và bảo vệ thông tin. Trong khóa học này, sinh viên sẽ được giới thiệu với các nguy cơ và mối đe dọa tiềm ẩn cho hệ thống thông tin của tổ chức và cách ngăn chặn chúng.

Ngoài ra, khóa học cũng sẽ bao gồm các phương pháp và công nghệ hiện đại để bảo vệ thông tin, bao gồm mã hóa, chứng thực, kiểm soát truy cập và giám sát. Sinh viên sẽ được hướng dẫn cách thực hiện các bài kiểm tra kiểm soát, phân tích rủi ro và xây dựng chiến lược bảo mật cho tổ chức.

Khóa học này sẽ cung cấp cho sinh viên những kỹ năng cần thiết để đảm bảo an toàn và bảo vệ thông tin của tổ chức trong một môi trường ngày càng phức tạp và đầy thách thức của thế giới kỹ thuật số hiện nay.','2022-04-17 00:00:00',1,2,1,60,N'Tìm hiểu về bảo mật và đảm bảo thông tin'),
	(46,N'Công nghệ Blockchain',N'img/course-1-17.png',120000,N'Khóa học về Công nghệ Blockchain là một khóa học chuyên sâu về cách hoạt động và ứng dụng của công nghệ blockchain. Trong khóa học này, học viên sẽ được giới thiệu về các khái niệm cơ bản của blockchain, bao gồm cách thức hoạt động của các giao dịch blockchain, các loại blockchain khác nhau và cách chúng có thể được áp dụng trong các lĩnh vực khác nhau.

Khóa học cũng sẽ trang bị cho học viên kiến ​​thức về các ứng dụng blockchain, bao gồm các ví dụ về cách blockchain đã được ứng dụng trong các lĩnh vực như tài chính, y tế và chuỗi cung ứng. Học viên cũng sẽ được hướng dẫn để xây dựng các ứng dụng blockchain đơn giản bằng cách sử dụng các công cụ lập trình phổ biến như Solidity và Ethereum.

Khóa học này sẽ hướng đến các chuyên gia công nghệ, kỹ sư phần mềm, nhà phát triển web và các chuyên gia an ninh mạng muốn tìm hiểu về công nghệ blockchain và các ứng dụng của nó trong thực tiễn. Sau khi hoàn thành khóa học, học viên sẽ có được kiến ​​thức cơ bản về blockchain và cách áp dụng nó trong các ứng dụng thực tế.','2022-04-18 00:00:00',1,2,1,60,N'Tìm hiểu về công nghệ Blockchain'),
	(47,N'Kiến trúc Đám mây và Ảo hóa',N'img/course-1-18.png',120000,N'Khóa học về Kiến trúc Đám mây và Ảo hóa là một khóa học tổng quan về các khái niệm cơ bản của kiến trúc đám mây và công nghệ ảo hóa. Khóa học này giải thích chi tiết về kiến trúc đám mây, bao gồm các khái niệm như IaaS, PaaS, SaaS, và các dịch vụ đám mây công cộng, riêng tư và hybrid.

Ngoài ra, khóa học cũng cung cấp cho bạn các khái niệm về ảo hóa, bao gồm các công nghệ ảo hóa máy chủ, ảo hóa mạng và ảo hóa lưu trữ. Bạn sẽ được hướng dẫn cách triển khai các máy ảo, tạo và quản lý mạng ảo, và cách sử dụng các phần mềm quản lý ảo hóa.

Khóa học này còn cung cấp các kỹ thuật và công cụ để hoàn thiện hiệu suất, độ tin cậy, khả năng mở rộng và bảo mật trong kiến trúc đám mây và ảo hóa. Bạn sẽ được hướng dẫn cách xác định và giải quyết các vấn đề hiệu suất của kiến trúc đám mây và ảo hóa.

Với khóa học về Kiến trúc Đám mây và Ảo hóa, bạn sẽ có được nền tảng để triển khai các giải pháp đám mây và ảo hóa trong môi trường thực tế.','2022-04-19 00:00:00',1,2,1,60,N'Tìm hiểu về Kiến trúc Đám mây và Ảo hóa'),
	(48,N'Tương tác Người - Máy',N'img/course-1-19.png',120000,N'Khóa học về Tương tác Người - Máy là một khóa học chuyên sâu về lĩnh vực trí tuệ nhân tạo, tập trung vào việc nghiên cứu và phát triển các kỹ thuật để cải thiện tính tương tác giữa người và máy. Khóa học này cung cấp cho sinh viên các kiến thức và kỹ năng cần thiết để thiết kế và phát triển các ứng dụng tương tác người-máy thông minh.

Trong khóa học này, sinh viên sẽ được học các khái niệm cơ bản của trí tuệ nhân tạo, bao gồm học máy, xử lý ngôn ngữ tự nhiên và thị giác máy tính. Sinh viên cũng sẽ được hướng dẫn cách áp dụng các phương pháp này để phát triển các ứng dụng tương tác người-máy như trợ lý ảo, robot thông minh và hệ thống tương tác đa phương tiện.

Khóa học này cũng sẽ đưa ra các thảo luận về các vấn đề liên quan đến đạo đức và an ninh trong tương tác người-máy, giúp sinh viên hiểu rõ hơn về vai trò và trách nhiệm của các nhà phát triển trong việc xây dựng các ứng dụng tương tác người-máy.

Khóa học về Tương tác Người - Máy là một khóa học đầy thử thách và cung cấp cho sinh viên những kỹ năng vượt trội để trở thành các chuyên gia trong lĩnh vực này.','2022-04-20 00:00:00',1,2,1,60,N'Tìm hiểu về Robotics'),
	(49,N'Thị giác máy tình và Xử lý hình ảnh',N'img/course-1-20.png',200000,N'Khóa học về Thị giác máy tính và xử lý hình ảnh là một khóa học cơ bản trong lĩnh vực khoa học máy tính và công nghệ thông tin. Khóa học này sẽ giúp cho các học viên hiểu được cách thức hoạt động của thị giác máy tính và các kỹ thuật xử lý hình ảnh.

Trong khóa học, các học viên sẽ được học cách phân tích hình ảnh, trích xuất đặc trưng, giải mã hình ảnh và nhận dạng đối tượng. Họ cũng sẽ được giới thiệu về các thuật toán xử lý hình ảnh phổ biến như OpenCV và Deep Learning để giải quyết các vấn đề liên quan đến hình ảnh.

Ngoài ra, khóa học còn đưa ra các ứng dụng của Thị giác máy tính và xử lý hình ảnh trong thực tế như nhận dạng khuôn mặt, xử lý ảnh y tế, tự động hóa công nghiệp và xe tự hành.

Tổng quan về khóa học này là giúp các học viên hiểu rõ về cách thức hoạt động của thị giác máy tính và các kỹ thuật xử lý hình ảnh, từ đó phát triển các kỹ năng cần thiết để áp dụng trong thực tế và tăng cường khả năng giải quyết các vấn đề liên quan đến hình ảnh.','2022-04-21 00:00:00',1,3,1,90,N'Tìm hiểu về nhận diện hình ảnh với OpenAI'),
	(50,N'Phát triển và Thiết kế Web Nâng cao',N'img/course-1-21.png',200000,N'Khóa học về Phát triển và Thiết kế Web Nâng cao là một khóa học chuyên sâu dành cho những người đã có kiến ​​thức cơ bản về lập trình và thiết kế web. Trong khóa học này, bạn sẽ được tìm hiểu các kỹ thuật phát triển web tiên tiến và được đào tạo để xây dựng các ứng dụng web đa nền tảng và động.

Bạn sẽ học cách tạo ra các trang web tương tác sử dụng HTML, CSS, JavaScript và các thư viện phổ biến như ReactJS, AngularJS và VueJS. Bạn cũng sẽ được giới thiệu với các công nghệ back-end như NodeJS và Ruby on Rails để phát triển các ứng dụng web động.

Khóa học cũng sẽ đưa ra các kỹ thuật thiết kế web chuyên sâu để bạn có thể tạo ra các giao diện người dùng đẹp và thân thiện. Bạn sẽ học cách tùy chỉnh các mẫu thiết kế sử dụng CSS và Bootstrap, tạo các hiệu ứng động bằng jQuery và tối ưu hóa trang web của mình cho tốc độ tải nhanh và kích thước trang nhỏ hơn.

Cuối cùng, bạn sẽ được hướng dẫn cách triển khai ứng dụng web của mình trên các nền tảng phổ biến như AWS và Heroku. Sau khi hoàn thành khóa học, bạn sẽ có kiến ​​thức và kỹ năng để thiết kế và phát triển các ứng dụng web đa nền tảng, động và ấn tượng.','2022-04-22 00:00:00',1,3,1,90,N'Học cách phát triển một trang web nâng cao'),
	(51,N'Ứng dụng và Bảo mật của IoT',N'img/course-1-22.png',200000,N'Khóa học "Ứng dụng và bảo mật IoT" là một khóa học chuyên sâu về cách áp dụng công nghệ IoT vào các ứng dụng thực tế và đảm bảo an ninh thông tin trong quá trình triển khai. Trong khóa học này, sinh viên sẽ được giới thiệu với các khía cạnh cơ bản của IoT, từ cách hoạt động của các thiết bị IoT đến việc thu thập và xử lý dữ liệu.

Ngoài ra, khóa học cũng tập trung vào các vấn đề về bảo mật và riêng tư trong môi trường IoT. Sinh viên sẽ được hướng dẫn tìm hiểu về các vấn đề như phát hiện xâm nhập, mã hóa dữ liệu và kiểm soát truy cập để đảm bảo an toàn thông tin cho các hệ thống IoT.

Thông qua khóa học này, sinh viên sẽ có cơ hội học hỏi từ các chuyên gia hàng đầu trong lĩnh vực IoT và bảo mật, đồng thời sử dụng các công cụ và kỹ thuật mới nhất để thiết kế, triển khai và quản lý các hệ thống IoT an toàn và hiệu quả.','2022-04-23 00:00:00',1,3,1,90,N'Tìm hiểu về ứng dụng và bảo mật của IoT'),
	(52,N'Tính toán lượng tử và Mật mã học',N'img/course-1-23.png',200000,N'Khóa học về Tính toán lượng tử và Mật mã học là một chương trình đào tạo tiên tiến nhằm cung cấp các kiến thức và kỹ năng cần thiết để hiểu và sử dụng các phương pháp tính toán lượng tử trong bảo mật thông tin. Khóa học này cung cấp cho học viên kiến ​​thức cơ bản về lý thuyết lượng tử, thuật toán lượng tử và các ứng dụng của chúng trong mật mã học.

Trong khóa học này, học viên sẽ được giới thiệu với các khái niệm cơ bản về lý thuyết lượng tử như trạng thái lượng tử, phép đo lượng tử và nguyên tắc không xác định Heisenberg. Họ sẽ được hướng dẫn cách áp dụng các phép tính toán lượng tử để giải quyết các bài toán liên quan đến xử lý thông tin.

Sau khi đã có kiến thức cơ bản về lý thuyết lượng tử, học viên sẽ được giải thích về các thuật toán lượng tử như Grover''s algorithm, Shor''s algorithm, và Deutsch-Jozsa algorithm. Họ sẽ được thực hành các phương pháp này và giải quyết các bài toán liên quan đến mật mã học.

Cuối cùng, khóa học sẽ tập trung vào các ứng dụng của tính toán lượng tử trong mật mã học. Học viên sẽ được giới thiệu với các thuật toán mật mã học như BB84 protocol, Quantum key distribution, và Quantum signature schemes. Họ sẽ học cách áp dụng các phương pháp này để xây dựng các hệ thống bảo mật thông tin chống lại các cuộc tấn công.

Với khóa học về Tính toán lượng tử và Mật mã học này, học viên sẽ có kiến thức cơ bản về lý thuyết lượng tử, thuật toán lượng tử và ứng dụng của chúng trong mật mã học. Họ sẽ có khả năng áp dụng những kiến thức này để nghiên cứu và phát triển các giải pháp bảo mật thông tin mới dựa trên tính toán lượng tử.','2022-04-24 00:00:00',1,3,1,90,N'Tìm hiểu về tính toán lượng tử và Mật mã học'),
	(53,N'Ghi-ta cho người mới bắt đầu',N'img/course-3-1.png',75000,N'Khóa học Ghita là một khóa học dành cho người mới bắt đầu chơi đàn ghita, giúp họ có thể học cách chơi ghita từ những kiến thức cơ bản nhất.

Trong khóa học, bạn sẽ được hướng dẫn về các yếu tố cơ bản của ghita như cách cầm đàn, cách đánh và bấm các nốt nhạc, các kỹ thuật căn bản để tránh sai sót khi chơi, v.v. Bạn sẽ học theo từng bài học, từ dễ đến khó, có bài tập giúp củng cố kiến thức đã học và rèn luyện kỹ năng.

Ngoài ra, các khóa học Ghita thường cung cấp các tài liệu học tập như sách hướng dẫn và video hướng dẫn để bạn có thể tự học tập theo tốc độ của mình.

Tùy vào nhu cầu và mong muốn của bạn, khóa học Ghita có thể dài hoặc ngắn, có thể đi sâu vào những kỹ thuật chơi ghita cao cấp hơn hoặc chỉ tập trung vào các kỹ năng cơ bản. Việc tìm hiểu kỹ năng cơ bản này sẽ giúp bạn có nền tảng vững chắc khi tiến thêm vào những khóa học ghita khó hơn.','2022-04-25 00:00:00',3,1,1,30,N'Học các hợp âm cơ bản của guitar'),
	(54,N'Piano cho người mới bắt đầu',N'img/course-3-2.png',75000,N'Khóa học Piano cho người mới bắt đầu sẽ giúp bạn có được kiến thức cơ bản và kỹ năng chơi đàn Piano. Trong khóa học, bạn sẽ được giới thiệu về các yếu tố cơ bản của âm nhạc, các nốt nhạc, nhịp điệu và những quy tắc cơ bản trong chơi Piano.

Bạn sẽ bắt đầu bằng cách học cách đặt tay trên bàn phím, vị trí các ngón tay và cách sử dụng các ngón tay để chơi các nốt nhạc. Sau đó, bạn sẽ học cách đánh các nốt nhạc và nhịp điệu cơ bản. Ngoài ra, khóa học cũng sẽ giúp bạn hiểu về các ký hiệu âm nhạc và cách đọc những ký hiệu đó trên bản nhạc.

Trong quá trình học, bạn sẽ được đưa qua các bài học về các bản nhạc đơn giản, từ đó tích lũy kinh nghiệm và luyện tập để phát triển kỹ năng chơi đàn Piano của mình. Khóa học cũng có thể bao gồm các bài học video, tổ chức lớp học trực tuyến hoặc cá nhân, và các bài tập luyện tay.

Khi hoàn thành khóa học này, bạn sẽ có đủ năng lực để chơi các bản nhạc đơn giản và thực hành độc lập. Bạn cũng có thể tiếp tục học Piano trên một cấp độ cao hơn để phát triển kỹ năng của mình.','2022-04-26 00:00:00',3,1,1,30,N'Làm quen với piano và đánh các bài hát đơn giản'),
	(55,N'Vi-ô-lông cho người mới bắt đầu ',N'img/course-3-3.png',75000,N'Khóa học Vi-ô-lông là một khóa học nhạc cụ dành cho người mới bắt đầu. Nó cung cấp kiến thức cơ bản về vi-ô-lông, từ cách cầm cây gậy và đánh các âm thanh cơ bản đến các kỹ thuật chơi như vibrato và tremolo.

Trong khóa học này, bạn sẽ học các yếu tố cơ bản của âm nhạc như nốt nhạc, giai điệu và nhịp điệu. Bạn sẽ cũng được giới thiệu với các bài hát cơ bản để luyện tập, từ đó phát triển khả năng chơi nhạc của mình.

Ngoài ra, khóa học còn giúp bạn hiểu rõ hơn về lịch sử và văn hoá của vi-ô-lông, các loại vi-ô-lông và phụ kiện đi kèm nó. Cuối cùng, bạn sẽ có cơ hội tham gia vào các buổi biểu diễn và hòa nhạc, giúp bạn phát triển kỹ năng trình diễn của mình.

Tóm lại, nếu bạn muốn học cách chơi vi-ô-lông từ cơ bản đến nâng cao, khóa học Vi-ô-lông là lựa chọn tốt cho bạn.','2022-04-27 00:00:00',3,1,1,30,N'Làm quen với cây đàn violin và chơi các bài hát đơn giản'),
	(56,N'Trống cho người mới bắt đầu',N'img/course-3-4.png',75000,N'Khóa học "Trống cho người mới bắt đầu" là một khóa học nhằm giúp cho những người chưa có kinh nghiệm về trống có thể học cách chơi trống. Khóa học này sẽ giới thiệu với bạn các kiến thức cơ bản về trống, từ cách cầm và đánh trống đến cách đọc sheet nhạc.

Trong khóa học này, bạn sẽ học được:

Các kỹ thuật cơ bản để cầm và đánh trống
Cách hiểu và đọc sheet nhạc đơn giản
Tập luyện và phát triển kỹ năng đánh trống căn bản
Ngoài ra, trong khóa học còn có các bài tập và thực hành để giúp bạn ứng dụng các kỹ năng đã học vào thực tế. Với khóa học "Trống cho người mới bắt đầu", bạn sẽ có được kiến thức và kỹ năng cần thiết để bắt đầu tiếp cận việc chơi trống một cách tự tin và thành thạo.','2022-04-28 00:00:00',3,1,1,30,N'Hướng dẫn các kỹ thuật đánh trống cơ bản cho người mới bắt đầu'),
	(57,N'Sáo cho người mới bắt đầu',N'img/course-3-5.png',75000,N'Khóa học Sáo dành cho người mới bắt đầu sẽ giúp bạn tìm hiểu về nhạc cụ Sáo và hướng dẫn cách chơi Sáo cơ bản. Trong khóa học, bạn sẽ được hướng dẫn về các kỹ thuật cầm Sáo, thở đúng và phát âm các nốt nhạc. Khóa học cũng sẽ giới thiệu cho bạn những kiến thức cơ bản về lý thuyết nhạc và hợp âm.

Bạn sẽ được học các bài hát đơn giản để trau dồi kỹ năng chơi Sáo của mình. Khóa học cũng sẽ cung cấp cho bạn các tài liệu và video hướng dẫn để bạn có thể tự học tập tại nhà sau khi khóa học kết thúc.

Ngoài ra, khóa học sẽ giúp bạn phát triển kỹ năng nghe nhạc và cảm nhận âm nhạc một cách sâu sắc hơn. Bạn sẽ có cơ hội tạo ra những giai điệu đẹp và tinh tế bằng cách kết hợp các nốt nhạc trên Sáo.

Tóm lại, khóa học Sáo cho người mới bắt đầu là một khóa học rất tốt để bắt đầu học chơi nhạc cụ Sáo. Nó sẽ giúp bạn phát triển các kỹ năng cơ bản và giới thiệu cho bạn những kiến thức về lý thuyết nhạc cần thiết để trở thành một nghệ sĩ Sáo tài năng.','2022-04-29 00:00:00',3,1,1,30,N'Làm quen với sáo trúc và chơi các bài nhạc đơn giản'),
	(58,N'Sắc-xô-phôn cho người mới bắt đầu',N'img/course-3-6.png',75000,N'Khóa học Saxophone cho người mới bắt đầu sẽ giúp bạn có được kiến thức và kỹ năng cơ bản để chơi đàn saxophone. Trong khóa học, bạn sẽ được giới thiệu về các loại đàn saxophone, từ cách lựa chọn và bảo quản đàn đến cách lắp màng, dây và các phụ kiện khác.

Bạn sẽ bắt đầu bằng cách học cách cầm đàn, đặt miệng và thở vào đàn để tạo ra âm thanh. Sau đó, bạn sẽ học cách chơi các nốt nhạc cơ bản, các yếu tố trong kỹ thuật thổi, nghệ thuật phrasing và cách bộc lộ tình cảm thông qua âm nhạc.

Trong quá trình học, bạn sẽ được hướng dẫn qua các bài học về các bản nhạc đơn giản, từ đó tích lũy kinh nghiệm và luyện tập để phát triển kỹ năng chơi đàn saxophone của mình. Khóa học cũng có thể bao gồm các bài học video, tổ chức lớp học trực tuyến hoặc cá nhân, và các bài tập luyện tay.

Ngoài ra, khóa học còn giúp bạn hiểu về lịch sử và các thể loại âm nhạc phổ biến trong chơi đàn saxophone. Bạn sẽ học về các nghệ sĩ saxophone nổi tiếng và cách họ đã ảnh hưởng đến âm nhạc hiện đại.

Khi hoàn thành khóa học này, bạn sẽ có đủ năng lực để chơi các bản nhạc đơn giản và thực hành độc lập. Bạn cũng có thể tiếp tục học saxophone trên một cấp độ cao hơn để phát triển kỹ năng của mình.','2022-04-30 00:00:00',3,1,1,30,N'Hướng dẫn các kỹ thuật thổi kèn cơ bản'),
	(59,N'Ơ-ku-le-le cho người mới bắt đầu',N'img/course-3-7.png',75000,N'Khóa học Ơ-ku-le-le là một khóa học âm nhạc dành cho người mới bắt đầu, giúp bạn học cách chơi nhạc cụ Ơ-ku-le-le, một loại nhạc cụ gỗ có nguồn gốc từ Hawaii.

Trong khóa học này, bạn sẽ học các kỹ thuật cơ bản của Ơ-ku-le-le, bao gồm cách cầm đàn, đánh các nốt nhạc cơ bản và chuyển đổi giữa các nốt nhạc. Bạn cũng sẽ được hướng dẫn về cách đọc tab âm nhạc để có thể chơi các bài hát trên đàn.

Ngoài ra, khóa học còn giúp bạn hiểu rõ về lịch sử và văn hoá của Ơ-ku-le-le, cũng như học cách chơi các bản nhạc truyền thống của Hawaii và các địa phương khác trên thế giới.

Cuối cùng, khóa học cũng giúp bạn phát triển kỹ năng diễn xuất trên sân khấu bằng cách tập luyện với các bài hát và biểu diễn trước công chúng.

Tóm lại, nếu bạn muốn học cách chơi và hiểu rõ về Ơ-ku-le-le, khóa học này là một lựa chọn tuyệt vời cho bạn, cung cấp cho bạn các kiến thức cơ bản và kỹ năng để bắt đầu chơi nhạc trên đàn.','2022-05-01 00:00:00',3,1,1,30,N'Học các hợp âm ukulele cơ bản'),
	(60,N'Các kỹ thuật Ghi-ta nâng cao',N'img/course-3-8.png',90000,N'Khóa học "Các kỹ thuật Ghi-ta nâng cao" là một khóa học dành cho các nghệ sĩ guitar có kinh nghiệm hoặc đã từng học qua khóa học guitar cơ bản và mong muốn phát triển thêm các kỹ thuật chơi guitar nâng cao.

Trong khóa học này, bạn sẽ học được:

Các kỹ thuật chơi đệm giọng (fingerstyle) và đệm đơn (flatpicking)
Các kỹ thuật chơi solo và improvisation
Các kỹ thuật về âm nhạc đương đại, điện tử, jazz và blues
Cách chơi các phong cách như flamenco, classical và bossa nova
Cách luyện tập và phát triển kỹ năng chơi guitar nâng cao
Ngoài ra, trong khóa học này, bạn sẽ được hướng dẫn cách đọc sheet nhạc và tablature và thực hành để ứng dụng các kỹ thuật đã học vào việc chơi guitar nâng cao.

Khóa học "Các kỹ thuật Ghi-ta nâng cao" sẽ giúp bạn trở thành một nghệ sĩ guitar đầy tự tin với các kỹ thuật chơi guitar nâng cao và công nghệ mới nhất.','2022-05-02 00:00:00',3,2,1,60,N'Học các kĩ thuật guitar nâng cao'),
	(61,N'Các kỹ thuật Piano nâng cao',N'img/course-3-9.png',90000,N'Khóa học Các kỹ thuật Piano nâng cao nhằm giúp cho người học piano tăng cường kỹ năng và kiến thức về âm nhạc, từ đó có thể phát triển sự chuyên nghiệp và truyền cảm hứng đến khán giả. Khóa học này dành cho các pianist đã có kiến thức và kinh nghiệm chơi đàn, và muốn tiếp tục phát triển khả năng của mình.

Trong khóa học này, người học sẽ được giới thiệu với các kỹ thuật chơi đàn nâng cao, bao gồm:

Kỹ thuật pedal: Học viên sẽ được hướng dẫn sử dụng pedal để tạo ra các hiệu ứng âm thanh đặc biệt, tăng tính cảm xúc và sắc thái của bản nhạc.

Kỹ thuật phối hợp tay trái và tay phải: Học viên sẽ tập trung vào việc phối hợp tay trái và tay phải để tạo ra những bản nhạc đầy đủ và sống động hơn.

Kỹ thuật chuyển nhanh giữa các nốt nhạc: Học viên sẽ học các kỹ thuật để chuyển nhanh và chính xác giữa các nốt nhạc trong bản nhạc.

Kỹ thuật chơi đệm: Học viên sẽ tìm hiểu về các kỹ thuật chơi đệm để tăng khả năng sáng tạo và biến đổi bản nhạc.

Kỹ thuật cải tiến việc chơi bản nhạc: Học viên sẽ được hướng dẫn cách cải tiến việc chơi bản nhạc, như thêm giai điệu, tạo ra các phần solo và tự do sáng tạo trên bản nhạc đã có sẵn.

Khóa học này cũng cung cấp cho học viên những bài tập và bản nhạc để tập luyện, giúp họ phát triển kỹ năng và khả năng chơi đàn piano của mình.','2022-05-03 00:00:00',3,2,1,60,N'Học các kĩ thuật piano nâng cao'),
	(62,N'Biểu diễn Vi-ô-lông nâng cao',N'img/course-3-10.png',90000,N'Khóa học Biểu diễn Vi-ô-lông nâng cao sẽ giúp bạn phát triển kỹ năng biểu diễn và cải thiện khả năng chơi đàn Vi-ô-lông của mình. Trong khóa học này, bạn sẽ được hướng dẫn về các kỹ thuật biểu diễn chuyên sâu như vibrato, staccato, legato, phrasing và các kỹ thuật tròn âm.

Bạn sẽ được giới thiệu về các bản nhạc nâng cao và khó khăn hơn, từ đó tích lũy kinh nghiệm và luyện tập để phát triển kỹ năng của mình. Khóa học cũng sẽ giúp bạn hiểu rõ hơn về các phương pháp học tập hiệu quả, cách phân tích và thực hiện bản nhạc, cách tiếp cận với các thể loại âm nhạc khác nhau và làm thế nào để phát triển phong cách biểu diễn riêng của mình.

Ngoài ra, khóa học sẽ giúp bạn rèn luyện kỹ năng dùng tai nghe để cảm nhận âm nhạc, giúp bạn có thể đưa ra các quyết định đúng đắn về điệu và tốc độ phù hợp khi biểu diễn.

Khóa học Biểu diễn Vi-ô-lông nâng cao có thể bao gồm các lớp học trực tuyến hoặc cá nhân với giáo viên giàu kinh nghiệm, các buổi thảo luận về kỹ thuật và phong cách biểu diễn, các buổi tập trung thực hành và các buổi biểu diễn công cộng.

Khi hoàn thành khóa học này, bạn sẽ có khả năng biểu diễn các bản nhạc khó hơn và phát triển phong cách biểu diễn riêng của mình. Bạn cũng có thể tiếp tục học tập và phát triển kỹ năng của mình trong các khóa học Vi-ô-lông chuyên sâu khác.','2022-05-04 00:00:00',3,2,1,60,N'Học cách trình diễn violin'),
	(63,N'Sáng tác Sắc-xô-phôn nâng cao',N'img/course-3-11.png',90000,N'Khóa học Sáng tác Saxophone nâng cao là một khóa học dành cho những người chơi saxophone có kinh nghiệm và mong muốn tìm hiểu về quá trình sáng tác nhạc cho saxophone. Khóa học này giúp học viên nắm vững các kiến thức cơ bản về lý thuyết âm nhạc, từ đó phát triển và ứng dụng các kỹ năng sáng tác để tạo ra những tác phẩm saxophone độc đáo và sáng tạo.

Trong khóa học này, học viên sẽ được giảng dạy các kỹ năng sáng tác như phát triển ý tưởng, viết nhạc và soạn phần cho saxophone. Họ cũng sẽ được hướng dẫn về các kỹ thuật biểu diễn âm nhạc để có thể tạo ra những bản nhạc thật đầy cảm xúc.

Ngoài ra, khóa học còn tập trung vào việc nghiên cứu và phân tích các tác phẩm saxophone của các nghệ sĩ nổi tiếng, từ đó học viên có thể học hỏi và áp dụng vào quá trình sáng tác của mình.

Khóa học Sáng tác Saxophone nâng cao sẽ giúp học viên phát triển kỹ năng sáng tác và biểu diễn nhạc cụ saxophone, đồng thời mở rộng kiến thức về âm nhạc để có thể tự tin sáng tác những bản nhạc độc đáo của riêng mình.','2022-05-05 00:00:00',3,2,1,60,N'Học cách sáng tác một bản nhạc Sắc-xô-phôn hay'),
	(64,N'Kỹ thuật Trống nâng cao',N'img/course-3-12.png',90000,N'Khóa học về Kỹ thuật Trống nâng cao sẽ giúp cho những người đã có kiến thức cơ bản về trống hoặc đã từng tập luyện trống có thể tiếp cận và phát triển kỹ thuật của mình lên một tầm cao mới.

Trong khóa học này, học viên sẽ được giảng dạy về các kỹ thuật chơi trống nâng cao như: ghost notes, polyrhythms, linear drumming, phrasing, hi-hat control, foot technique, improvisation, và nhiều kỹ thuật khác. Họ cũng sẽ học cách phối hợp và đồng điệu cùng các nhạc công khác trong một ban nhạc.

Ngoài ra, học viên sẽ được trang bị kiến thức về lý thuyết âm nhạc để có thể hiểu rõ hơn cách sử dụng những kỹ thuật này trong một bài hát cụ thể.

Khóa học sẽ cung cấp cả lý thuyết và thực hành, qua đó giúp học viên phát triển kỹ năng chơi trống của mình lên một tầm cao mới và trở thành một nhạc công trống nâng cao.','2022-05-06 00:00:00',3,2,1,60,N'Các kỹ thuật nâng cao khi đánh trống'),
	(65,N'Biểu diễn Sáo nâng cao',N'img/course-3-13.png',90000,N'Khóa học Biểu diễn Sáo nâng cao nhằm giúp cho người học sáo tăng cường kỹ năng và kiến thức về âm nhạc, từ đó có thể phát triển sự chuyên nghiệp và truyền cảm hứng đến khán giả. Khóa học này dành cho các người chơi sáo đã có kiến thức và kinh nghiệm chơi đàn, và muốn tiếp tục phát triển khả năng của mình.

Trong khóa học này, người học sẽ được giới thiệu với các kỹ thuật biểu diễn sáo nâng cao, bao gồm:

Kỹ thuật thổi: Học viên sẽ được hướng dẫn các kỹ thuật thổi sáo để tạo ra các hiệu ứng âm thanh đặc biệt, tăng tính cảm xúc và sắc thái của bản nhạc.

Kỹ thuật thở và phối hợp hơi: Học viên sẽ tập trung vào việc phối hợp thở và hơi để tạo ra những bản nhạc đầy đủ và sống động hơn.

Kỹ thuật chuyển nhanh giữa các nốt nhạc: Học viên sẽ học các kỹ thuật để chuyển nhanh và chính xác giữa các nốt nhạc trong bản nhạc.

Kỹ thuật trình diễn: Học viên sẽ tìm hiểu về các kỹ thuật trình diễn để tăng khả năng sáng tạo và biến đổi bản nhạc.

Kỹ thuật cải tiến việc biểu diễn: Học viên sẽ được hướng dẫn cách cải tiến việc biểu diễn, như thêm giai điệu, tạo ra các phần solo và tự do sáng tạo trên bản nhạc đã có sẵn.

Khóa học này cũng cung cấp cho học viên những bài tập và bản nhạc để tập luyện, giúp họ phát triển kỹ năng và khả năng biểu diễn sáo của mình.','2022-05-07 00:00:00',3,2,1,60,N'Học các kĩ thuật biểu diễn sáo nâng cao'),
	(66,N'Nhạc cụ dân tộc Việt Nam',N'img/course-3-14.png',90000,N'Khóa học Nhạc cụ dân tộc Việt Nam sẽ giúp bạn hiểu và trải nghiệm âm nhạc dân tộc đặc trưng của Việt Nam thông qua việc tìm hiểu về các loại nhạc cụ dân tộc và cách chơi chúng.

Trong khóa học này, bạn sẽ được giới thiệu với các loại nhạc cụ dân tộc, bao gồm đàn bầu, đàn tranh, đàn nguyệt, đàn tỳ bà và nhiều loại nhạc cụ khác. Bạn sẽ được hướng dẫn về cách thức chơi nhạc cụ, từ cách cầm đàn, điệu nhảy của ngón tay đến cách kết hợp các âm thanh để tạo ra âm nhạc đẹp mắt.

Ngoài ra, khóa học cũng sẽ giúp bạn hiểu rõ hơn về lịch sử và văn hóa dân tộc Việt Nam, từ đó có thể tìm hiểu sâu hơn về ý nghĩa của âm nhạc dân tộc và cách áp dụng trong việc biểu diễn.

Khóa học Nhạc cụ dân tộc Việt Nam có thể bao gồm các lớp học trực tuyến hoặc cá nhân với giáo viên giàu kinh nghiệm, các buổi thảo luận về lịch sử và văn hóa dân tộc, các buổi tập trung thực hành và các buổi biểu diễn công cộng.

Khi hoàn thành khóa học này, bạn sẽ có kiến thức về các loại nhạc cụ dân tộc Việt Nam và cách chơi chúng. Bạn cũng có thể tiếp tục học tập và phát triển kỹ năng của mình trong các khóa học Nhạc cụ dân tộc khác, hoặc áp dụng kiến thức đã được học để biểu diễn âm nhạc dân tộc đặc trưng của Việt Nam.','2022-05-08 00:00:00',3,2,1,60,N'Tìm hiểu về các loại nhạc cụ dân tộc Việt Nam'),
	(67,N'Biểu diễn và sáng tác nhạc',N'img/course-3-15.png',120000,N'Khóa học Biểu diễn và sáng tác nhạc là một khóa học đa dạng, giúp các học viên nắm vững cả kỹ năng biểu diễn và sáng tác nhạc. Trong khóa học này, học viên sẽ được hướng dẫn cách biểu diễn các thể loại nhạc khác nhau trên nhiều loại nhạc cụ khác nhau, bao gồm cả piano, guitar, violin và các nhạc cụ gõ. Họ sẽ được hướng dẫn về các kỹ thuật biểu diễn, từ cách cầm nhạc cụ, cách đánh các nốt nhạc đến cách di chuyển trên sân khấu.

Bên cạnh đó, học viên sẽ được giới thiệu với các kiến thức cơ bản về lý thuyết âm nhạc, từ đó phát triển khả năng sáng tác nhạc của mình. Khóa học này sẽ giúp học viên nắm vững các kỹ năng sáng tác như phát triển ý tưởng, viết nhạc và soạn phần cho các loại nhạc cụ khác nhau. Họ cũng sẽ được hướng dẫn về cách xây dựng các giai điệu, tạo động lực cho bản nhạc và cách sử dụng các công cụ sáng tạo để tạo ra những bản nhạc độc đáo.

Ngoài ra, khóa học này cũng tập trung vào việc thực hành sáng tác và biểu diễn nhạc trực tiếp. Học viên sẽ được giảng dạy về cách thu âm và sản xuất âm nhạc chuyên nghiệp để có thể hoàn thiện các bản nhạc của mình.

Tóm lại, khóa học Biểu diễn và sáng tác nhạc là một khóa học đa dạng và toàn diện giúp các học viên nắm vững kỹ năng biểu diễn và sáng tác nhạc, từ đó phát triển sự nghiệp trong lĩnh vực âm nhạc.','2022-05-09 00:00:00',3,3,1,90,N'Hướng dẫn biểu diễn và sáng tác nhạc cho nghệ sĩ'),
	(68,N'Sản xuất nhạc và kỹ thuật âm thanh',N'img/course-3-16.png',120000,N'Khóa học Sản xuất nhạc và kỹ thuật âm thanh là một khóa học toàn diện giúp học viên nắm vững các kiến thức và kỹ năng cần thiết để sản xuất, sáng tác và phối nhạc chuyên nghiệp.

Trong khóa học này, học viên sẽ được giảng dạy về các công cụ, phần mềm và thiết bị cần thiết để sản xuất, chỉnh sửa và phối nhạc. Họ sẽ học cách lựa chọn các loại âm thanh và hiệu ứng để tạo ra các bản nhạc chất lượng cao và đồng thời giảm thiểu tiếng ồn và nhiễu trong quá trình sản xuất.

Ngoài ra, học viên sẽ được hướng dẫn về các kỹ thuật chuyên sâu trong việc mix và master bài hát để đưa chúng lên một tầm cao mới. Khóa học cũng cung cấp cho học viên kiến thức về lý thuyết âm nhạc và cách áp dụng nó trong quá trình sản xuất.

Học viên sẽ được thực hành qua nhiều bài tập và dự án thực tế để có thể áp dụng các kỹ thuật đã học vào sản xuất và phối nhạc thực tế. Khóa học cũng sẽ giúp học viên phát triển kỹ năng làm việc độc lập và đồng thời cũng cung cấp cho họ các kỹ năng giao tiếp và làm việc trong một dự án nhóm.

Sau khi hoàn thành khóa học, học viên sẽ có kiến thức cơ bản và kỹ năng chuyên sâu để sản xuất và phối nhạc chuyên nghiệp, từ đó có thể phát triển sự nghiệp của mình trong ngành âm nhạc.','2022-05-10 00:00:00',3,3,1,90,N'Thành thạo phương thức sản xuất nhạc và các kĩ thuật âm thanh'),
	(69,N'Kinh doanh âm nhạc và khởi nghiệp',N'img/course-3-17.png',120000,N'Khóa học Kinh doanh âm nhạc và khởi nghiệp là một khóa học giúp các sinh viên, người yêu âm nhạc hoặc những người đam mê kinh doanh có thể hiểu rõ hơn về cách kinh doanh trong ngành âm nhạc. Khóa học này sẽ cung cấp cho học viên kiến thức về quản lý kinh doanh, tài chính, tiếp thị, phân tích thị trường và xây dựng thương hiệu trong lĩnh vực âm nhạc.

Nội dung của khóa học bao gồm:

Giới thiệu lĩnh vực kinh doanh âm nhạc: Đây là phần giới thiệu tổng quan về ngành kinh doanh âm nhạc, từ đó học viên có thể hiểu rõ hơn về cơ hội và thách thức mà ngành này đem lại.

Quản lý kinh doanh âm nhạc: Phần này sẽ cung cấp cho học viên kiến thức về quản lý kinh doanh trong ngành âm nhạc, từ việc lập kế hoạch kinh doanh, quản lý tài chính, đẩy mạnh chiến lược marketing và xây dựng chiến lược phát triển doanh nghiệp.

Tài chính và đầu tư: Phần này cung cấp cho học viên kiến thức cơ bản về tài chính của doanh nghiệp âm nhạc, từ việc quản lý ngân sách, đầu tư và chiến lược tài chính.

Tiếp thị và phân tích thị trường: Học viên sẽ được giới thiệu các kỹ thuật phân tích thị trường để hiểu hơn về yêu cầu của khách hàng và đối thủ cạnh tranh, từ đó xử lý và đưa ra các giải pháp kinh doanh phù hợp.

Xây dựng thương hiệu: Phần này sẽ giúp học viên hiểu thêm về ý nghĩa của việc xây dựng thương hiệu trong ngành âm nhạc, từ việc định vị thương hiệu, phát triển logo và thông điệp quảng cáo.

Khóa học cũng sẽ đưa ra một số ví dụ thực tế và bài tập để học viên có thể áp dụng các kiến thức đã học vào thực tế. Sau khi hoàn thành khóa học, học viên sẽ có được kiến thức cơ bản để khởi động và vận hành một doanh nghiệp âm nhạc theo cách chuyên nghiệp.','2022-05-11 00:00:00',3,3,1,90,N'Làm sao để bắt đầu kinh doanh âm nhạc và khởi nghiệp'),
	(70,N'Giáo dục âm nhạc và nghiên cứu giảng dạy',N'img/course-3-18.png',120000,N'Khóa học Giáo dục âm nhạc và nghiên cứu giảng dạy sẽ giúp bạn hiểu rõ hơn về vai trò của âm nhạc trong giáo dục và các phương pháp giảng dạy hiệu quả trong lĩnh vực này.

Trong khóa học này, bạn sẽ được giới thiệu với các lý thuyết và phương pháp giảng dạy âm nhạc hiện đại nhất, bao gồm cả cách thiết kế và triển khai các chương trình giảng dạy âm nhạc cho các cấp độ từ mầm non đến đại học. Bạn sẽ tìm hiểu cách sử dụng công nghệ để tăng tính tương tác và hiệu quả trong giảng dạy âm nhạc, cũng như cách đánh giá và đo lường kết quả học tập của học sinh.

Ngoài ra, khóa học sẽ giúp bạn hiểu rõ hơn về cách phát triển và thúc đẩy tư duy sáng tạo của học sinh thông qua âm nhạc. Bạn sẽ được hướng dẫn về cách tổ chức các hoạt động giáo dục âm nhạc để khuyến khích học sinh tìm kiếm và phát triển tài năng âm nhạc của mình.

Khóa học Giáo dục âm nhạc và nghiên cứu giảng dạy có thể bao gồm các lớp học trực tuyến hoặc cá nhân với giáo viên giàu kinh nghiệm, các buổi thảo luận về các chủ đề liên quan đến giáo dục âm nhạc, các buổi tập trung thực hành và các buổi giảng dạy thực tế.

Khi hoàn thành khóa học này, bạn sẽ có kiến thức và kỹ năng để thiết kế và triển khai các chương trình giảng dạy âm nhạc hiệu quả và khuyến khích sự phát triển tư duy sáng tạo của học sinh. Bạn cũng có thể áp dụng kiến thức đã được học để phát triển sự nghiệp trong lĩnh vực giáo dục âm nhạc hoặc tổ chức các hoạt động giáo dục cho cộng đồng.','2022-05-12 00:00:00',3,3,1,90,N'Nghiên cứu về các phương pháp giáo dục âm nhạc và ứng dụng thực tiễn'),
	(71,N'Tiếng Anh cho người mới bắt đầu',N'img/course-4-1.png',75000,N'Khóa học Tiếng Anh cho người mới bắt đầu là một khóa học giúp các học viên có thể học và sử dụng tiếng Anh cơ bản trong cuộc sống hàng ngày. Khóa học này giúp người học tiếng Anh phát triển khả năng nghe, nói, đọc và viết thông qua các hoạt động và bài tập thực tế.

Trong khóa học này, học viên sẽ được giới thiệu với các kiến thức cơ bản như cách phát âm, từ vựng, ngữ pháp, cấu trúc câu và các kỹ năng giao tiếp cơ bản. Họ cũng sẽ được hướng dẫn cách sử dụng tiếng Anh trong các tình huống thường gặp như mua sắm, đặt phòng khách sạn, đi du lịch, trò chuyện với bạn bè và đồng nghiệp.

Ngoài ra, học viên cũng sẽ học cách đọc hiểu văn bản tiếng Anh và viết các bài luận ngắn đơn giản. Khóa học này cung cấp cho học viên nhiều cơ hội thực hành, bao gồm cả các hoạt động nhóm và cá nhân để giúp họ cải thiện khả năng ngôn ngữ của mình.

Tóm lại, khóa học Tiếng Anh cho người mới bắt đầu là một khóa học cơ bản, giúp các học viên phát triển kỹ năng sử dụng tiếng Anh trong cuộc sống hàng ngày và chuẩn bị cho những khóa học tiếng Anh cao cấp hơn trong tương lai.','2022-05-13 00:00:00',4,1,1,30,N'Làm quen với môn Tiếng Anh'),
	(72,N'Tiếng Nhật cho trình độ N5',N'img/course-4-2.png',75000,N'Khóa học Tiếng Nhật cho trình độ N5 là một khóa học cơ bản, giúp người học có thể hiểu và sử dụng các từ vựng, ngữ pháp và ký hiệu kanji đơn giản trong Tiếng Nhật.

Trong khóa học này, người học sẽ được giảng dạy về cách giao tiếp cơ bản trong Tiếng Nhật, bao gồm cách chào hỏi, giới thiệu bản thân và nhắn tin. Người học sẽ học cách đọc và viết các ký hiệu hiragana, katakana và khoảng 100 ký hiệu kanji thông dụng.

Ngoài ra, khóa học cũng sẽ tập trung vào việc đọc hiểu và nghe hiểu tiếng Nhật đơn giản. Người học sẽ học cách đọc và hiểu các câu đơn giản theo chủ đề như gia đình, thực phẩm, mua sắm, du lịch và nghề nghiệp.

Họ cũng sẽ được giới thiệu với các thuật ngữ cơ bản của ngữ pháp Nhật Bản và học cách xây dựng các câu đơn giản theo thứ tự từ. Khóa học cũng sẽ tập trung vào việc luyện tập phát âm chính xác và sử dụng các từ vựng, ngữ pháp và ký hiệu kanji đúng cách.

Sau khi hoàn thành khóa học, người học sẽ có thể hiểu và sử dụng được các từ vựng, ngữ pháp và ký hiệu kanji đơn giản trong Tiếng Nhật, đủ để giao tiếp cơ bản với người Nhật. Họ cũng sẽ có thể đọc và hiểu được các văn bản và tin tức đơn giản bằng Tiếng Nhật.','2022-05-14 00:00:00',4,1,1,30,N'Ngữ pháp và từ vựng Tiếng Nhật cơ bản'),
	(73,N'Tiếng Anh cho người đi làm',N'img/course-4-3.png',75000,N'Khóa học Tiếng Anh cho người đi làm thường được thiết kế để cung cấp cho học viên các kỹ năng cần thiết để giao tiếp hiệu quả trong môi trường làm việc bằng Tiếng Anh. Khóa học này có thể bao gồm các nội dung như:

Từ vựng và ngữ pháp cơ bản: Học viên sẽ được giới thiệu các từ vựng và ngữ pháp cơ bản để sử dụng trong các tình huống giao tiếp văn phòng.

Kỹ năng nghe và nói: Học viên sẽ được rèn luyện kỹ năng nghe hiểu và nói Tiếng Anh thông qua các hoạt động luyện tập và thực hành.

Giao tiếp trong công việc: Học viên sẽ học cách giao tiếp trong các tình huống liên quan đến công việc, chẳng hạn như thảo luận với đồng nghiệp, trình bày ý kiến, thuyết trình...

Viết văn bản công việc: Học viên sẽ được hướng dẫn viết email, báo cáo, tin nhắn và các tài liệu khác liên quan đến công việc.

Kỹ năng xử lý thông tin: Học viên sẽ học cách đọc và hiểu các tài liệu văn phòng, báo cáo, hợp đồng...

Cải thiện phát âm: Học viên sẽ được hướng dẫn cách phát âm chuẩn và diễn đạt rõ ràng.

Khóa học Tiếng Anh cho người đi làm có thể được tổ chức linh hoạt, với các lịch học và thời gian học phù hợp với lịch trình công việc của học viên. Ngoài ra, các khóa học này thường được giảng dạy bởi các giáo viên có kinh nghiệm trong việc dạy Tiếng Anh cho người đi làm và sử dụng phương pháp học tập hiệu quả để giúp học viên tiến bộ nhanh chóng.','2022-05-15 00:00:00',4,1,1,30,N'Các câu giao tiếp thông dụng bằng Tiếng Anh trong môi trường làm việc'),
	(74,N'Tiếng Pháp ngữ pháp và từ vựng cơ bản',N'img/course-4-4.png',75000,N'Khóa học Tiếng Pháp ngữ pháp và từ vựng cơ bản sẽ giúp bạn hiểu và sử dụng tiếng Pháp một cách chính xác, tự tin và lưu loát hơn. Trong khóa học này, bạn sẽ được giới thiệu với các quy tắc ngữ pháp cơ bản của tiếng Pháp và học cách sử dụng các từ vựng phổ biến trong giao tiếp hàng ngày.

Ban đầu, khóa học sẽ bắt đầu từ những kiến thức căn bản về chữ cái, số đếm, cách nói ngày tháng, thời gian và các từ vựng hàng ngày. Sau đó, khóa học sẽ giới thiệu cho bạn các quy tắc ngữ pháp cơ bản như thì hiện tại đơn, quá khứ đơn, tương lai đơn, cách sử dụng tính từ và danh từ, cách sử dụng giới từ, và các câu hỏi thông dụng.

Bạn sẽ được học qua các bài tập thực hành để có thể áp dụng kiến thức đã học vào thực tế. Bên cạnh đó, khóa học cũng sẽ cung cấp cho bạn các tài liệu bổ sung như sách giáo khoa, video hướng dẫn và bài kiểm tra để giúp bạn nâng cao trình độ tiếng Pháp của mình.

Khóa học Tiếng Pháp ngữ pháp và từ vựng cơ bản thích hợp cho những người mới bắt đầu học tiếng Pháp hoặc những người đã có chút kiến thức về tiếng Pháp và muốn nâng cao trình độ của mình. Sau khi hoàn thành khóa học này, bạn sẽ có thể hiểu và sử dụng tiếng Pháp một cách chính xác, tự tin và lưu loát hơn trong giao tiếp hàng ngày.','2022-05-16 00:00:00',4,1,1,30,N'Nắm chắc ngữ pháp cơ bản của Tiếng Pháp và một số từ vựng phổ biến'),
	(75,N'Tiếng Đức ngữ pháp và từ vựng cơ bản',N'img/course-4-5.png',75000,N'Khóa học Tiếng Đức ngữ pháp và từ vựng cơ bản là một khóa học giúp các học viên có thể hiểu và sử dụng tiếng Đức cơ bản. Khóa học này tập trung vào việc giới thiệu ngữ pháp và từ vựng cơ bản để giúp học viên xây dựng cơ sở vững chắc cho việc học tiếng Đức.

Trong khóa học này, học viên sẽ được giới thiệu với các kiến thức cơ bản như cách phát âm, bảng chữ cái, cấu trúc câu đơn giản và các dạng động từ cơ bản. Họ cũng sẽ được hướng dẫn sử dụng các từ vựng cơ bản để giao tiếp trong các tình huống thông thường như đi mua sắm, đặt phòng khách sạn, đi du lịch và trò chuyện với bạn bè.

Ngoài ra, học viên cũng sẽ học cách đọc và viết các câu đơn giản, bao gồm cả việc áp dụng các ngữ pháp và từ vựng đã học vào việc xây dựng câu. Họ cũng sẽ được hướng dẫn cách sử dụng các từ liên kết để liên kết các ý tưởng trong bài viết.

Khóa học Tiếng Đức ngữ pháp và từ vựng cơ bản cung cấp cho học viên nhiều cơ hội thực hành, bao gồm cả các hoạt động nhóm và cá nhân để giúp họ cải thiện khả năng tiếng Đức của mình.

Tóm lại, khóa học Tiếng Đức ngữ pháp và từ vựng cơ bản là một khóa học cơ bản, giúp các học viên phát triển kỹ năng sử dụng tiếng Đức trong cuộc sống hàng ngày và chuẩn bị cho những khóa học tiếng Đức cao cấp hơn trong tương lai.','2022-05-17 00:00:00',4,1,1,30,N'Nắm chắc ngữ pháp cơ bản của Tiếng Đức và một số từ vựng phổ biến'),
	(76,N'Tiếng Nhật cho trình độ N4',N'img/course-4-6.png',75000,N'Khóa học Tiếng Nhật cho trình độ N4 là một khóa học nâng cao, giúp người học có thể tiếp cận với những cấu trúc ngữ pháp và từ vựng phức tạp hơn trong Tiếng Nhật.

Trong khóa học này, người học sẽ được giảng dạy về các chủ đề sâu hơn, bao gồm cả kinh tế, chính trị, văn hóa và lịch sử của Nhật Bản. Họ sẽ được trang bị các công cụ để hiểu và sử dụng các cấu trúc ngữ pháp phức tạp hơn như phương thức so sánh, mệnh đề, câu điều kiện và các trạng từ.

Ngoài ra, khóa học cũng tập trung vào việc nâng cao kỹ năng đọc và nghe hiểu của người học. Họ sẽ học cách đọc hiểu các văn bản và tin tức phức tạp hơn, và cũng sẽ luyện tập nghe hiểu qua các bài hội thoại, cuộc phỏng vấn và các đoạn tin tức.

Họ cũng sẽ được giới thiệu với các ký hiệu kanji mới và học cách sử dụng chúng trong các văn bản và tin tức. Khóa học cũng sẽ giúp người học cải thiện kỹ năng viết bằng cách luyện tập viết các bài văn ngắn, bao gồm các câu hỏi và trả lời, các mẩu tin tức và các đơn đặt hàng.

Sau khi hoàn thành khóa học, người học sẽ có thể hiểu và sử dụng được các cấu trúc ngữ pháp và từ vựng phức tạp hơn trong Tiếng Nhật. Họ cũng sẽ có thể đọc, nghe và viết các văn bản và tin tức phức tạp bằng Tiếng Nhật và có thể giao tiếp hiệu quả với người Nhật trong các tình huống hàng ngày và công việc.','2022-05-18 00:00:00',4,1,1,30,N'Ôn thi N4 Tiếng Nhật'),
	(77,N'Luyện tập kỹ năng thuyết trình bằng Tiếng Anh',N'img/course-4-7.png',75000,N'Khóa học "Luyện tập kỹ năng thuyết trình bằng Tiếng Anh" là một khóa học chuyên sâu nhằm giúp bạn phát triển kỹ năng thuyết trình trong tiếng Anh. Khóa học này cung cấp cho bạn các kỹ năng cần thiết để chuẩn bị và thực hiện một bài thuyết trình thành công.

Trong khóa học, bạn sẽ được hướng dẫn về các nguyên tắc cơ bản của thuyết trình, từ việc chuẩn bị nội dung đến cách trình bày một bài thuyết trình hiệu quả. Bạn sẽ được học về cách tổ chức ý tưởng, lựa chọn từ ngữ phù hợp, sử dụng kỹ thuật trình bày linh hoạt và thu hút sự chú ý của khán giả.

Ngoài ra, khóa học cũng cung cấp cho bạn cơ hội để thực hành thuyết trình trước một nhóm người, giúp bạn cải thiện kỹ năng giao tiếp và tự tin trong việc trình bày ý tưởng.

Cuối cùng, khi hoàn thành khóa học này, bạn sẽ có khả năng thuyết trình một cách hiệu quả và tự tin trong việc sử dụng tiếng Anh để truyền đạt thông điệp của mình.','2022-05-19 00:00:00',4,1,1,30,N'Học tập và rèn dũa kỹ năng sử dụng Tiếng Anh khi thuyết trình'),
	(78,N'Các câu thả thính bằng tiếng Pháp',N'img/course-4-8.png',75000,N'Khóa học "Các câu thả thính bằng tiếng Pháp" là một khóa học dành cho những người muốn học cách sử dụng các câu nói thả thính trong tiếng Pháp. Trong khóa học này, bạn sẽ được học cách sử dụng từ vựng và ngữ pháp cơ bản để tạo ra các câu nói thả thính đầy sức hấp dẫn.

Các chủ đề trong khoá học này bao gồm:

Từ vựng và ngữ pháp cơ bản để sử dụng trong các câu nói thả thính.
Cách sử dụng các câu hỏi để tạo sự quan tâm và khám phá về đối tượng của mình.
Cách sử dụng các câu nói thính có tính gợi cảm và lãng mạn để thu hút sự chú ý của đối tượng.
Cách sử dụng ngôn ngữ cơ thể và kỹ năng giao tiếp để tạo ấn tượng.
Bạn sẽ được học từ các giáo viên người bản ngữ, họ sẽ cung cấp cho bạn kiến thức và kinh nghiệm của họ để giúp bạn trở thành một người nói tiếng Pháp tự tin và thu hút. Sau khi hoàn thành khoá học này, bạn sẽ có thể áp dụng những gì đã học vào cuộc sống hàng ngày của mình và tạo ra mối quan hệ mới đầy cảm hứng và lãng mạn.','2022-05-20 00:00:00',4,1,1,30,N'Các câu thả thính lãng mạng bằng Tiếng Pháp'),
	(79,N'Luyện thi IELTS 6.0',N'img/course-4-9.png',90000,N'Khóa học Luyện thi IELTS 6.0 là một khóa học đặc biệt được thiết kế để giúp các học viên có thể cải thiện kỹ năng tiếng Anh của mình và đạt được điểm số IELTS tối thiểu là 6.0. Khóa học này bao gồm những bài học về ngữ pháp, từ vựng, đọc hiểu, viết và nói, giúp học viên có thể tự tin sử dụng tiếng Anh trong các kỳ thi quốc tế như IELTS.

Trong khóa học, các học viên sẽ được giảng dạy bởi các giáo viên chuyên nghiệp và có kinh nghiệm trong lĩnh vực giảng dạy tiếng Anh cho người nước ngoài. Họ sẽ giúp học viên hiểu và áp dụng các kỹ năng tiếng Anh cần thiết để đạt được điểm số IELTS mong muốn.

Khóa học cũng cung cấp các bài kiểm tra thường xuyên để đánh giá trình độ tiếng Anh của học viên và giúp họ cải thiện những kỹ năng còn yếu. Ngoài ra, học viên còn có cơ hội tham gia vào các hoạt động thực tế, như phỏng vấn tiếng Anh và thảo luận nhóm để rèn luyện khả năng nói và nghe.

Với khóa học Luyện thi IELTS 6.0, các học viên sẽ có cơ hội nâng cao trình độ tiếng Anh của mình và đạt được điểm số IELTS mong muốn để theo đuổi học vấn hoặc công việc của mình ở nước ngoài.','2022-05-21 00:00:00',4,2,1,60,N'Ôn tập 4 kỹ năng để tự tin lấy chứng chỉ IELTS 6.0'),
	(80,N'Tiếng Nhật cho trình độ N3',N'img/course-4-10.png',90000,N'Khóa học Tiếng Nhật cho trình độ N3 sẽ giúp cho những người đã có kiến thức cơ bản về tiếng Nhật có thể nâng cao kỹ năng ngôn ngữ của mình. Trình độ N3 tương đương với khả năng sử dụng tiếng Nhật thông thạo ở mức độ giao tiếp hàng ngày, có thể đọc hiểu các đoạn văn đơn giản và giao tiếp tương đối trôi chảy.

Trong khóa học này, sinh viên sẽ được học về từ vựng và ngữ pháp phức tạp hơn so với trình độ N4 và N5. Sinh viên sẽ học các kĩ năng như đọc hiểu các văn bản hội thoại hay các bài viết với độ khó tương đối, viết các bài luận đơn giản và diễn đạt ý kiến của mình về một số chủ đề cụ thể. Đồng thời, khóa học cũng sẽ tập trung vào việc luyện nghe và nói để cải thiện khả năng giao tiếp hàng ngày của học viên.

Để đạt được trình độ N3, học viên cần phải nắm vững khoảng 3000 từ vựng và 300 cấu trúc ngữ pháp cơ bản. Trong khóa học này, sinh viên sẽ tiếp tục mở rộng vốn từ vựng và cấu trúc ngữ pháp của mình để có thể sử dụng tiếng Nhật trong nhiều tình huống khác nhau.

Khóa học Tiếng Nhật cho trình độ N3 sẽ giúp các học viên có thể chuẩn bị cho kỳ thi N3 JLPT (Japanese Language Proficiency Test) hoặc sử dụng để giao tiếp hàng ngày trong cuộc sống và công việc.','2022-05-22 00:00:00',4,2,1,60,N'Luyện thi tiếng Nhật lấy chứng chỉ N3'),
	(81,N'Tiếng Nhật cho trình độ N2',N'img/course-4-11.png',90000,N'Khóa học Tiếng Nhật cho trình độ N2 là một khóa học tiếp cận nâng cao dành cho những người đã có kiến thức cơ bản và muốn tăng cường kỹ năng giao tiếp, đọc hiểu và viết văn bản tiếng Nhật. Trong khóa học này, sinh viên sẽ học được các kỹ năng chính sau đây:

Ngữ pháp: Học về các loại câu phức tạp và cách sử dụng các từ ngữ phức tạp trong câu.

Từ vựng: Học new words and phrases liên quan đến chủ đề cụ thể.

Đọc hiểu: Học cách đọc và hiểu các văn bản bao gồm cả các bài đọc ngắn, chuyên đề và tin tức.

Viết: Học cách viết các bài luận đơn giản, các câu hỏi và trả lời.

Giao tiếp: Học cách giao tiếp một cách tự tin bằng cách thực hành các cuộc đối thoại và trò chuyện.

Khóa học này cũng sẽ giúp sinh viên ôn tập và củng cố lại kiến thức đã học ở trình độ N3, và giúp chuẩn bị cho kỳ thi trình độ N2.','2022-05-23 00:00:00',4,2,1,60,N'Luyện thi tiếng Nhật lấy chứng chỉ N2'),
	(82,N'Tiếng Pháp ngữ pháp và từ vựng nâng cao',N'img/course-4-12.png',90000,N'Khóa học Tiếng Nhật cho trình độ N2 là một khóa học tiếp cận nâng cao dành cho những người đã có kiến thức cơ bản và muốn tăng cường kỹ năng giao tiếp, đọc hiểu và viết văn bản tiếng Nhật. Trong khóa học này, sinh viên sẽ học được các kỹ năng chính sau đây:

Ngữ pháp: Học về các loại câu phức tạp và cách sử dụng các từ ngữ phức tạp trong câu.

Từ vựng: Học new words and phrases liên quan đến chủ đề cụ thể.

Đọc hiểu: Học cách đọc và hiểu các văn bản bao gồm cả các bài đọc ngắn, chuyên đề và tin tức.

Viết: Học cách viết các bài luận đơn giản, các câu hỏi và trả lời.

Giao tiếp: Học cách giao tiếp một cách tự tin bằng cách thực hành các cuộc đối thoại và trò chuyện.

Khóa học này cũng sẽ giúp sinh viên ôn tập và củng cố lại kiến thức đã học ở trình độ N3, và giúp chuẩn bị cho kỳ thi trình độ N2.','2022-05-24 00:00:00',4,2,1,60,N'Nắm chắc ngữ pháp Tiếng Pháp nâng cao và các từ vựng thông dụng'),
	(83,N'Tiếng Đức ngữ pháp và từ vựng nâng cao',N'img/course-4-13.png',90000,N'Khóa học Tiếng Đức ngữ pháp và từ vựng nâng cao sẽ giúp bạn cải thiện kỹ năng nói, viết và đọc tiếng Đức của mình. Trong khóa học này, bạn sẽ học được các kiến thức về ngữ pháp và từ vựng tiên tiến hơn so với trình độ tiếng Đức trung bình.

Các chủ đề chính trong khóa học này bao gồm:

Ngữ pháp: Trọng tâm của khóa học là về cách sử dụng các thì trong tiếng Đức (Quá khứ hoàn thành, Tương lai đơn, Tương lai hoàn thành,...), các dạng câu phức tạp (đại từ quan hệ, động từ kép, động từ phrasal), và cách sử dụng giới từ, liên từ và trạng từ trong câu.

Từ vựng: Khóa học này sẽ giới thiệu cho bạn các từ vựng mới trong các lĩnh vực chuyên môn như kinh tế, khoa học, công nghệ thông tin, y tế, tài chính và truyền thông.

Kỹ năng giao tiếp: Bạn sẽ được luyện tập kỹ năng nói và viết để có thể giao tiếp một cách tự tin hơn với người bản xứ. Các hoạt động thảo luận, viết bài và phát âm sẽ được tích hợp trong khóa học để giúp bạn trau dồi kỹ năng này.

Đọc hiểu và nghe hiểu: Bạn sẽ được đào tạo kỹ năng đọc hiểu và nghe hiểu bằng cách đọc các bài báo tiếng Đức và nghe các đoạn hội thoại thực tế của người bản xứ.

Khóa học Tiếng Đức ngữ pháp và từ vựng nâng cao sẽ giúp bạn nâng cao trình độ tiếng Đức của mình, phục vụ cho các mục đích học tập, làm việc hay du lịch.','2022-05-25 00:00:00',4,2,1,60,N'Nắm chắc ngữ pháp Tiếng Đức nâng cao và các từ vựng thông dụng'),
	(84,N'Tiếng Nhật cho trình độ N1',N'img/course-4-14.png',100000,N'Khóa học tiếng Nhật trình độ N1 là một khóa học chuyên sâu dành cho những người muốn nâng cao trình độ tiếng Nhật của mình. Trình độ N1 tương đương với trình độ cao nhất trong bảng đánh giá trình độ tiếng Nhật (JLPT) và được coi là trình độ khó nhất.

Trong khóa học này, học viên sẽ học về văn phong và tài liệu chuyên nghiệp, cải thiện kỹ năng đọc hiểu và nghe hiểu thông tin phức tạp, nâng cao và phát triển từ vựng và ngữ pháp tiếng Nhật. Họ cũng sẽ được rèn luyện kỹ năng viết và nói để có thể tự tin trình bày ý kiến và giao tiếp hiệu quả trong môi trường công việc hoặc giao tiếp hàng ngày.

Ngoài ra, khóa học còn tập trung vào giúp học viên nắm vững các kĩ năng làm bài thi JLPT N1, bao gồm các kĩ năng đọc hiểu, nghe hiểu, kanji, từ vựng và ngữ pháp.

Khóa học tiếng Nhật trình độ N1 là một khóa học rất thực tế và sẽ giúp học viên phát triển các kỹ năng cần thiết để thành công trong công việc và cuộc sống hàng ngày.','2022-05-26 00:00:00',4,3,1,90,N'Luyện thi tiếng Nhật lấy chứng chỉ N1'),
	(85,N'Tiếng Anh chuyên ngành công nghệ thông tin',N'img/course-4-15.png',100000,N'Khóa học Tiếng Anh chuyên ngành Công nghệ thông tin là một khóa học thiết kế để giúp sinh viên và chuyên gia trong ngành CNTT cải thiện khả năng sử dụng tiếng Anh chuyên ngành, đặc biệt là trong việc đọc, viết và giao tiếp trong môi trường làm việc quốc tế.

Trong khóa học này, bạn sẽ được học về các từ vựng, thuật ngữ và ngữ pháp liên quan đến Công nghệ thông tin. Bạn sẽ củng cố kiến thức về lĩnh vực này và rèn luyện khả năng đọc hiểu các tài liệu chuyên ngành, như báo cáo, tài liệu kỹ thuật hay sách vở. Ngoài ra, khóa học cũng sẽ tập trung vào cách viết email chuyên nghiệp, báo cáo kỹ thuật và chia sẻ thông tin trong môi trường làm việc CNTT.

Khóa học Tiếng Anh chuyên ngành Công nghệ thông tin còn giúp cho sinh viên hoặc chuyên gia có thể tự tin giao tiếp với đồng nghiệp và khách hàng quốc tế, đặc biệt là trong các cuộc họp trực tuyến hoặc trao đổi thông tin qua email.','2022-05-27 00:00:00',4,3,1,90,N'Từ vựng Tiếng Anh chuyên ngành công nghệ thông tin và cách sử dụng'),
	(86,N'Tiếng Anh chuyên ngành quản trị doanh nghiệp',N'img/course-4-16.png',100000,N'Khóa học Tiếng Anh chuyên ngành quản trị doanh nghiệp là một khóa học thiết thực và hữu ích cho những người đang hoặc sẽ làm việc trong lĩnh vực kinh doanh và quản trị. Khóa học này nhằm cung cấp cho học viên những kiến thức chuyên sâu về từ vựng, ngữ pháp và các kỹ năng liên quan đến quản trị, kinh doanh, tiếp thị và tài chính.

Trong khóa học này, học viên sẽ được hướng dẫn cách sử dụng tiếng Anh hiệu quả trong các tình huống công việc hàng ngày như giao tiếp qua email, thảo luận, thuyết trình, phỏng vấn và nhiều hơn nữa. Họ cũng sẽ học cách đọc và hiểu các tài liệu, báo cáo và thông tin về kinh doanh và quản trị, cũng như sử dụng các công cụ và phần mềm để hiểu rõ hơn về các số liệu và thống kê kinh doanh.

Ngoài ra, khóa học còn giúp học viên phát triển các kỹ năng mềm quan trọng như lãnh đạo, quản lý thời gian, giải quyết vấn đề và làm việc nhóm. Học viên sẽ được thực hành và trau dồi kỹ năng này thông qua các hoạt động nhóm và bài tập cá nhân.

Khóa học Tiếng Anh chuyên ngành quản trị doanh nghiệp là một lựa chọn tuyệt vời cho những người muốn nâng cao trình độ Tiếng Anh của mình và phát triển kỹ năng liên quan đến quản trị và kinh doanh.','2022-05-28 00:00:00',4,3,1,90,N'Từ vựng Tiếng Anh chuyên ngành quản trị doanh nghiệp và cách sử dụng'),
	(87,N'Ngôn ngữ học',N'img/course-4-17.png',100000,N'Khóa học Ngôn ngữ học là một khóa học nghiên cứu về ngôn ngữ và các yếu tố liên quan đến ngôn ngữ. Khóa học này có thể bao gồm nhiều chủ đề khác nhau, từ lịch sử phát triển của ngôn ngữ đến cách mà con người sử dụng ngôn ngữ để giao tiếp và suy nghĩ.

Các chủ đề thường được bao gồm trong khóa học này bao gồm:

Cấu trúc ngữ pháp: cách các từ được sắp xếp vào các câu, cấu trúc của các thành phần của câu (như danh từ, động từ và tính từ), và cách chúng tương tác với nhau.

Phân loại ngôn ngữ: loại ngôn ngữ (ví dụ: tiếng Anh, tiếng Tây Ban Nha, tiếng Trung Quốc), cách phân biệt giữa chúng và cách chúng ảnh hưởng đến cuộc sống hàng ngày của con người.

Sự phát triển của ngôn ngữ: cách ngôn ngữ đã phát triển qua thời gian, từ ngôn ngữ cổ đại đến ngôn ngữ hiện đại, và cách này ảnh hưởng đến cách con người sử dụng ngôn ngữ.

Ngôn ngữ và văn hóa: cách ngôn ngữ ảnh hưởng đến văn hóa, lối sống và tư duy của các quốc gia và bộ lạc khác nhau trên thế giới.

Các lý thuyết về học ngôn ngữ: cách con người học ngôn ngữ và cách nghiên cứu ngôn ngữ để hiểu rõ hơn quá trình này.

Khóa học Ngôn ngữ học có thể được dạy trong các trường đại học hoặc trung tâm nghiên cứu. Nó cũng có thể được phân chia thành các chuyên ngành khác nhau như Ngôn ngữ học áp dụng, Ngôn ngữ học so sánh và Ngôn ngữ học lý thuyết.','2022-05-29 00:00:00',4,3,1,90,N'Nghiên cứu chuyên sâu về các ngôn ngữ trên toàn thế giới'),
	(88,N'Kế hoạch và chiến lược kinh doanh',N'img/course-5-1.png',60000,N'Khóa học Kế hoạch và chiến lược kinh doanh là một khóa học đào tạo cung cấp cho học viên kiến ​​thức và kỹ năng cần thiết để phát triển kế hoạch và chiến lược kinh doanh hiệu quả cho tổ chức của họ. Trong khóa học này, học viên sẽ được giới thiệu về các phương pháp, công cụ và kỹ năng để phân tích thị trường, xác định mục tiêu kinh doanh, lập kế hoạch chiến lược, và theo dõi và đánh giá hiệu quả của chiến lược kinh doanh.

Một số chủ đề quan trọng trong khóa học bao gồm:

Phân tích SWOT: Đánh giá điểm mạnh, điểm yếu, cơ hội và thách thức của tổ chức để xác định các chiến lược phù hợp.
Xác định mục tiêu kinh doanh: Lựa chọn mục tiêu rõ ràng và phù hợp với các chiến lược kinh doanh.
Lập kế hoạch chiến lược: Xây dựng kế hoạch chiến lược chi tiết với các mục tiêu, các hoạt động và các chỉ tiêu rõ ràng.
Thực hiện và theo dõi kế hoạch: Đảm bảo rằng chiến lược kinh doanh được triển khai và theo dõi để đánh giá hiệu quả và thực hiện các điều chỉnh cần thiết.
Ngoài ra, khóa học cũng sẽ bao gồm các bài học về marketing, tài chính, quản trị nhân sự và quản lý rủi ro, để hỗ trợ cho việc phát triển các chiến lược kinh doanh hiệu quả.','2022-05-30 00:00:00',5,1,1,30,N'Làm quen với các khái niệm cơ bản về kế hoạch và chiến lược kinh doanh'),
	(89,N'Các khái niệm cơ bản về marketing',N'img/course-5-2.png',60000,N'Khóa học "Các khái niệm cơ bản về marketing" là một khóa học giới thiệu về các khái niệm và nguyên lý cơ bản trong lĩnh vực marketing. Khóa học này có thể dành cho những người mới bắt đầu hoặc muốn tìm hiểu cơ bản về marketing.

Trong khóa học này, bạn sẽ được giới thiệu về các khái niệm chính trong marketing như sản phẩm, giá cả, chương trình khuyến mãi và kênh phân phối. Bạn cũng sẽ tìm hiểu về quy trình marketing, từ việc nghiên cứu thị trường, lên kế hoạch, thực hiện và đánh giá kết quả.

Ngoài ra, khóa học cũng sẽ giúp bạn hiểu rõ hơn về khách hàng và cách thức tương tác với họ. Bạn sẽ được học cách xây dựng chiến lược marketing hiệu quả để thu hút và giữ chân khách hàng.

Cuối cùng, khóa học sẽ giúp bạn hiểu rõ hơn về vai trò của marketing trong thành công của doanh nghiệp và giúp bạn phát triển các kỹ năng cần thiết để làm việc trong lĩnh vực này.','2022-05-31 00:00:00',5,1,1,30,N'Làm quen với các khái niệm cơ bản về marketing'),
	(90,N'Kế toán và tài chính cơ bản',N'img/course-5-3.png',60000,N'Khóa học kế toán và tài chính cơ bản là một khóa học thiết yếu cho những người mới bắt đầu trong lĩnh vực kế toán và tài chính. Khóa học này giúp cho học viên có được kiến thức cơ bản về các nguyên tắc kế toán và tài chính, từ đó giúp họ xây dựng nền tảng chắc chắn để phát triển sự nghiệp trong lĩnh vực này.

Trong khóa học này, học viên sẽ được học về các khái niệm căn bản của kế toán và tài chính, bao gồm lịch sử phát triển, các nguyên tắc chung, phân loại tài sản, các phương pháp đánh giá tài sản, thu nhập và chi phí, báo cáo tài chính và quản lý tài chính. Ngoài ra, học viên sẽ được hướng dẫn cách sử dụng các công cụ và phần mềm hỗ trợ kế toán và tài chính hiện đại.

Khóa học này được thiết kế để phù hợp với những người chưa có kinh nghiệm hoặc ít kinh nghiệm trong lĩnh vực kế toán và tài chính. Sau khi hoàn thành khóa học này, học viên sẽ có được kiến thức cần thiết để áp dụng vào công việc kế toán và tài chính của mình, hoặc tiếp tục học tập với các khóa học cao cấp hơn để phát triển nghề nghiệp của mình.','2022-06-01 00:00:00',5,1,1,30,N'Nắm chắc kiến thức cơ bản về kế toán và tài chính'),
	(91,N'Hiểu về thị trường mục tiêu của bạn',N'img/course-5-4.png',60000,N'Khóa học "Hiểu về thị trường" nhằm giúp học viên có được hiểu biết sâu sắc về cách hoạt động và ảnh hưởng của thị trường tài chính đến nền kinh tế.

Trong khóa học này, các học viên sẽ được giới thiệu với các khái niệm cơ bản trong lĩnh vực tài chính và đầu tư, từ đó hiểu rõ hơn về cách hoạt động của thị trường chứng khoán, thị trường tiền tệ và thị trường hàng hóa.

Ngoài ra, khóa học sẽ giúp học viên hiểu được các yếu tố ảnh hưởng đến giá cả và xu hướng thị trường, từ đó có thể đưa ra quyết định đầu tư thông minh và đưa ra các chiến lược phù hợp với mục tiêu đầu tư của mình.

Khóa học này sẽ hỗ trợ cho các nhà đầu tư mới bắt đầu, những người muốn tìm hiểu và lấp đầy kiến thức cơ bản về thị trường, cũng như giúp tăng cường kỹ năng đầu tư cho những người đã có kinh nghiệm đầu tư.','2022-06-02 00:00:00',5,1,1,30,N'Nắm rõ các khái niệm cơ bản trong lĩnh vực tài chính và đầu tư'),
	(92,N'Kỹ thuật bán hàng và quản lí hệ khách hàng',N'img/course-5-5.png',60000,N'Khóa học "Kỹ thuật bán hàng và quản lí hệ khách hàng" nhằm giúp các học viên nắm được các kỹ năng, kiến thức cần thiết để có thể trở thành một nhân viên bán hàng hiệu quả và đồng thời có khả năng quản lý hệ thống khách hàng của doanh nghiệp một cách chuyên nghiệp.

Trong khóa học này, các học viên sẽ được giới thiệu các phương pháp và kỹ thuật bán hàng hiệu quả, từ việc xây dựng mối quan hệ với khách hàng, tìm kiếm khách hàng tiềm năng, đưa ra đề xuất sản phẩm và dịch vụ phù hợp, đến kỹ năng thuyết phục và đàm phán để chiến thắng được khách hàng.

Ngoài ra, khóa học cũng tập trung vào việc quản lí hệ thống khách hàng của doanh nghiệp, từ việc xây dựng cơ sở dữ liệu khách hàng, phân tích thông tin khách hàng để đưa ra các chiến lược tiếp thị phù hợp, đến việc xây dựng dịch vụ chăm sóc khách hàng để duy trì và phát triển khách hàng hiện tại.

Khóa học này sẽ hỗ trợ cho các nhân viên bán hàng, kinh doanh và quản lý doanh nghiệp muốn tăng cường kỹ năng bán hàng và quản lí hệ thống khách hàng, từ đó mang lại hiệu quả kinh doanh cao và đồng thời tang doanh thu cho doanh nghiệp.','2022-06-03 00:00:00',5,1,1,30,N'Nắm vững các kỹ năng, kiến thức cần thiết để có thể trở thành một nhân viên bán hàng hiệu quả'),
	(93,N'Nguồn nhân lực và quản lí nhân viên',N'img/course-5-6.png',60000,N'Khóa học về Nguồn nhân lực và quản lí nhân viên là một khóa học tập trung vào các kỹ năng cần thiết để quản lí và phát triển nguồn nhân lực trong doanh nghiệp. Khóa học này giúp sinh viên hiểu được ý nghĩa của việc quản lí nguồn nhân lực, đặc biệt là trong bối cảnh thị trường lao động hiện nay.

Trong khóa học, sinh viên sẽ được học về các khía cạnh cơ bản của quản lí nhân viên, bao gồm: tuyển dụng, đào tạo, phát triển và thăng tiến, xây dựng một môi trường làm việc tích cực, và giải quyết các vấn đề liên quan đến nhân viên.

Ngoài ra, khóa học còn giới thiệu các công cụ, kỹ thuật và phương pháp quản lí nhân viên hiệu quả, đảm bảo rằng các sinh viên hoàn thành khóa học có thể áp dụng được kiến thức vào thực tế trong công việc.

Tóm lại, khóa học về Nguồn nhân lực và quản lí nhân viên cung cấp cho sinh viên kiến thức và kỹ năng để trở thành một nhà quản lí nhân viên hiệu quả và thành công.','2022-06-04 00:00:00',5,1,1,30,N'Hiểu rõ ý nghĩa của việc quản lý nguồn nhân lực'),
	(94,N'Các cấu trúc pháp lý cho doanh nghiệp',N'img/course-5-7.png',80000,N'Khóa học "Các cấu trúc pháp lý cho doanh nghiệp" là một khóa học chuyên sâu về các khía cạnh pháp lý của việc thành lập và hoạt động doanh nghiệp. Khóa học này giúp học viên hiểu rõ các quy định pháp luật liên quan đến việc thành lập, hoạt động, quản lý và giải thể doanh nghiệp tại Việt Nam.

Trong khóa học, các chủ đề được bao gồm đầy đủ, từ việc lựa chọn loại hình doanh nghiệp phù hợp, đăng ký kinh doanh, thuế và bảo hiểm, quản lý nhân sự, đến các chủ đề pháp lý phức tạp như đầu tư, bảo vệ quyền sở hữu trí tuệ và quy định về cạnh tranh.

Học viên sẽ được trang bị kiến thức pháp lý cần thiết để có thể thành lập và điều hành một doanh nghiệp một cách hiệu quả và hợp pháp. Ngoài ra, khóa học cũng giúp học viên hiểu rõ hơn về quy trình và thủ tục liên quan đến việc xử lý các vấn đề pháp lý cho doanh nghiệp.

Khóa học được thiết kế để phù hợp với mọi người, từ những người mới bắt đầu quan tâm đến lĩnh vực pháp lý doanh nghiệp, cho đến những chuyên gia pháp lý đã có kinh nghiệm trong lĩnh vực này.','2022-06-05 00:00:00',5,1,1,30,N'Hiểu rõ các quy định pháp luật liên quan đến việc thành lập, hoạt động,quản lí và giải thể doanh nghiệp tại Việt Nam'),
	(95,N'Quản lý rủi ro và bảo hiểm',N'img/course-5-8.png',80000,N'Khóa học Quản lý rủi ro và bảo hiểm là một chương trình đào tạo cung cấp cho các học viên kiến thức và kỹ năng để quản lý rủi ro và áp dụng các phương pháp bảo hiểm trong việc giảm thiểu những tổn thất tiềm ẩn của các sự cố và tai nạn.

Chương trình này bao gồm các chủ đề như:

Hiểu về rủi ro và các loại rủi ro khác nhau
Phân tích rủi ro và đánh giá mức độ rủi ro
Thiết lập các chiến lược quản lý rủi ro
Hiểu về các sản phẩm bảo hiểm và cách thức hoạt động của chúng
Đánh giá và lựa chọn các sản phẩm bảo hiểm phù hợp
Thực hiện các biện pháp bảo hiểm để giảm thiểu rủi ro
Khóa học này sẽ giúp các học viên có được kiến thức và kỹ năng cần thiết để đối phó với những tình huống không may và giảm thiểu tổn thất trong công việc và cuộc sống hàng ngày.','2022-06-06 00:00:00',5,2,1,60,N'Cung cấp kiến thức và kĩ năng để quản lý rủi ro và áp dụng các phương pháp bảo hiểm'),
	(96,N'Thương mại điện tử và marketing số',N'img/course-5-9.png',80000,N'Khóa học Thương mại điện tử và Marketing số là một khóa học trực tuyến, chuyên sâu về các kỹ năng và kiến thức cơ bản để phát triển các chiến lược kinh doanh và tiếp thị thành công trên các nền tảng thương mại điện tử.

Trong khóa học này, bạn sẽ được giới thiệu với các khái niệm và cách thức thực hiện của thương mại điện tử, từ những khái niệm cơ bản cho đến các chiến lược tiếp thị số phức tạp, và các công cụ và kỹ thuật tiếp thị online hiện đại.

Bạn sẽ học cách xác định và phân tích đối tượng khách hàng, nghiên cứu thị trường, phát triển và triển khai các chiến lược quảng cáo và tiếp thị cho các sản phẩm và dịch vụ. Bạn cũng sẽ học cách phân tích và giám sát dữ liệu, đánh giá hiệu quả của chiến lược marketing của bạn và điều chỉnh chúng để đạt được kết quả tốt nhất.

Khóa học này sẽ giúp bạn có được kiến thức và kỹ năng cần thiết để thành công trong lĩnh vực thương mại điện tử và tiếp thị số','2022-06-07 00:00:00',5,2,1,60,N'Cung cấp kỹ năng và kiến thức cơ bản để phát triển các chiến lược kinh doanh và tiếp thị thành công trên các nền tảng thương mại điện tử.'),
	(97,N'Quản lý dòng tiền và ngân sách',N'img/course-5-10.png',80000,N'Khóa học Quản lý dòng tiền và ngân sách là một khóa học chuyên sâu về việc quản lý tài chính trong doanh nghiệp. Khóa học này sẽ giúp cho bạn hiểu rõ hơn về cách quản lý ngân sách và dòng tiền của doanh nghiệp một cách hiệu quả.

Trong khóa học này, bạn sẽ được học cách phân tích các báo cáo tài chính để đưa ra các quyết định quan trọng liên quan đến việc quản lý ngân sách và dòng tiền. Bạn sẽ được hướng dẫn cách lập kế hoạch ngân sách cho doanh nghiệp, xác định các nguồn tài chính và cách sử dụng chúng một cách hiệu quả.

Khóa học cũng sẽ giúp bạn hiểu rõ hơn về kiểm soát chi phí, cách xây dựng một dự án với ngân sách hợp lý và cách chỉnh sửa ngân sách khi cần thiết.

Cuối cùng, sau khi hoàn thành khóa học, bạn sẽ có kiến thức và kỹ năng cần thiết để quản lý tài chính và ngân sách của doanh nghiệp một cách chuyên nghiệp và hiệu quả.','2022-06-08 00:00:00',5,2,1,60,N'Hiểu rõ hơn về cách quản lý ngân sách và dòng tiền của doanh nghiệp một cách hiệu quả.'),
	(98,N'Phân tích kinh doanh và đưa ra quyết định',N'img/course-5-11.png',80000,N'Khóa học Phân tích kinh doanh và đưa ra quyết định dựa trên dữ liệu là một khóa học chuyên sâu về các phương pháp phân tích dữ liệu và ứng dụng của chúng trong việc ra quyết định kinh doanh. Khóa học này cung cấp cho học viên những kiến thức, kỹ năng và công cụ để có thể hiểu và phân tích dữ liệu kinh doanh, từ đó đưa ra những quyết định quan trọng cho doanh nghiệp.

Trong khóa học, học viên sẽ được giới thiệu những kỹ thuật phân tích dữ liệu phổ biến như phân tích tuyến tính, phân tích dữ liệu chuỗi thời gian, phân tích dữ liệu định lượng và định tính, và các phương pháp khác. Họ sẽ học cách áp dụng các kỹ thuật này vào việc phân tích các bộ số liệu kinh doanh, từ đó đưa ra các quyết định về chiến lược kinh doanh, quản lý rủi ro và tối ưu hóa hoạt động doanh nghiệp.

Thêm vào đó, khóa học cũng giới thiệu cho học viên các công cụ và phần mềm phân tích dữ liệu như Excel, Python và R. Họ sẽ học cách sử dụng các công cụ này để thu thập, xử lý và phân tích dữ liệu kinh doanh.

Cuối cùng, khóa học cũng đề cập đến những vấn đề liên quan đến bảo mật dữ liệu và đạo đức trong việc sử dụng dữ liệu kinh doanh. Học viên sẽ được giải thích về các quy định pháp lý liên quan đến bảo vệ dữ liệu và cách thức sử dụng dữ liệu một cách đúng đắn và trung thực.

Tóm lại, khóa học Phân tích kinh doanh và đưa ra quyết định dựa trên dữ liệu là một khóa học rất hữu ích cho những người muốn học cách phân tích dữ liệu kinh doanh và sử dụng nó để ra quyết định chiến lược cho doanh nghiệp.','2022-06-09 00:00:00',5,2,1,60,N'Cung cấp kiến thức, kỹ năng và công cụ để có thể hiểu và phân tích dữ liệu kinh doanh, từ đó đưa ra những quyết định quan trọng cho doanh nghiệp.'),
	(99,N'Lãnh đạo chiến lược và hành vi tổ chức',N'img/course-5-12.png',80000,N'Khóa học về Lãnh đạo chiến lược và hành vi tổ chức là một khóa học đào tạo nhằm giúp người học có thể hiểu và áp dụng các khái niệm, kỹ năng và phương pháp liên quan đến lãnh đạo chiến lược và hành vi tổ chức trong hoạt động kinh doanh.

Trong khóa học này, người học sẽ được trang bị kiến thức về cách xây dựng một chiến lược hiệu quả để giúp tổ chức đạt được các mục tiêu kinh doanh. Ngoài ra, người học cũng sẽ được hướng dẫn để tìm hiểu về các thuật ngữ và khái niệm liên quan đến lãnh đạo, quản lý, và hành vi tổ chức.

Khóa học này cũng đưa ra những ví dụ cụ thể để giải thích cách áp dụng các công cụ và kỹ năng lãnh đạo chiến lược và hành vi tổ chức trong thực tế. Ngoài ra, người học sẽ được tham gia vào các hoạt động thực hành để rèn luyện các kỹ năng cần thiết như quản lý thời gian, lãnh đạo nhóm, đàm phán và giải quyết xung đột, v.v.

Cuối cùng, khóa học này cũng nhấn mạnh tầm quan trọng của việc phát triển kỹ năng giao tiếp hiệu quả trong tổ chức và các kỹ năng lãnh đạo khác như lãnh đạo đổi mới và tạo dựng môi trường làm việc tích cực để thu hút và giữ chân nhân viên.','2022-06-10 00:00:00',5,2,1,60,N'Cung cấp các khái niệm, kỹ năng và phương pháp liên quan đến lãnh đạo chiến lược và hành vi tổ chức trong hoạt động kinh doanh'),
	(100,N'Tài chính công ty và quản lý tài chính',N'img/course-5-13.png',80000,N'Khóa học Tài chính công ty và Quản lý tài chính là một khóa học cung cấp cho sinh viên kiến ​​thức về quản lý tài chính trong một doanh nghiệp hoặc tổ chức. Khóa học này bao gồm các chủ đề như phân tích tài chính, quản lý dòng tiền, quản lý rủi ro, quản lý tài sản, quản trị vốn và quản lý chi phí.

Đối với phân tích tài chính, sinh viên sẽ học cách đánh giá hiệu suất tài chính của doanh nghiệp thông qua việc phân tích các số liệu tài chính, bao gồm bảng cân đối kế toán, báo cáo lưu chuyển tiền tệ và báo cáo kết quả kinh doanh.

Trong khi đó, quản lý dòng tiền sẽ tập trung vào việc quản lý các khoản thu và chi của doanh nghiệp để đảm bảo sự ổn định và đủ tiền để hoạt động.

Về quản lý rủi ro, sinh viên sẽ học cách đánh giá và giảm thiểu rủi ro trong các quyết định tài chính và đầu tư của doanh nghiệp.

Quản lý tài sản bao gồm việc quản lý các tài sản của doanh nghiệp, bao gồm cách sử dụng và bảo trì chúng để tối đa hóa giá trị.

Quản trị vốn và quản lý chi phí sẽ giúp sinh viên hiểu được cách quản lý vốn và chi phí của doanh nghiệp một cách hiệu quả, bao gồm cách tạo ngân sách và quản lý chi phí để đạt được mục tiêu kinh doanh.

Khóa học này sẽ cung cấp cho sinh viên kiến ​​thức để có thể thực hiện quản lý tài chính trong một doanh nghiệp hoặc tổ chức một cách hiệu quả và bền vững.','2022-06-11 00:00:00',5,2,1,60,N'Nghiên cứu các chủ đề như phân tích tài chính, quản lý dòng tiền, quản lý rủi ro, quản lý tài sản, quản trị vốn và quản lý chi phí'),
	(101,N'Kinh doanh quốc tế và quản lý đa văn hóa',N'img/course-5-14.png',80000,N'Khóa học Kinh doanh quốc tế và quản lý đa văn hóa (International Business and Cross-Cultural Management) là một chương trình đào tạo cao cấp cho những người muốn trang bị kiến thức và kỹ năng để hoạt động trong môi trường kinh doanh toàn cầu phức tạp và đa dạng.

Trong khóa học này, sinh viên sẽ học các kỹ năng cần thiết để phát triển và triển khai chiến lược kinh doanh ở các thị trường quốc tế. Các chủ đề chính bao gồm: quản trị tài chính quốc tế, tiếp thị toàn cầu, quản lý chuỗi cung ứng, quản lý rủi ro và quản lý văn hoá.

Ngoài ra, khóa học còn tập trung vào việc hiểu và giải quyết các vấn đề liên quan đến quản lý đa văn hoá. Sinh viên sẽ học được cách xây dựng và duy trì mối quan hệ đối tác hiệu quả với các đối tác quốc tế đến từ các nền văn hóa khác nhau, và cách thích nghi với các phong tục tập quán và thói quen kinh doanh của các nền văn hóa khác nhau.

Khóa học này đặc biệt phù hợp cho các chuyên gia kinh doanh quốc tế, giám đốc điều hành, nhà quản lý và các nhân viên cấp cao của các công ty đa quốc gia.','2022-06-12 00:00:00',5,2,1,60,N'Trang bị kiến thức và kỹ năng để hoạt động trong môi trường kinh doanh toàn cầu phức tạp và đa dạng'),
	(102,N'Đổi mới và khởi nghiệp',N'img/course-5-15.png',100000,N'Khóa học Đổi mới và khởi nghiệp là một chương trình đào tạo nhằm giúp các sinh viên, nhân viên văn phòng và những người quan tâm đến lĩnh vực kinh doanh hiểu rõ hơn về quá trình khởi nghiệp cùng với những kỹ năng cần thiết để thành công trong việc khởi nghiệp.

Khóa học này sẽ giúp người học tiếp cận với các khái niệm cơ bản về khởi nghiệp, từ việc tìm kiếm ý tưởng, xác định thị trường tiềm năng, phát triển sản phẩm và dịch vụ, đến việc xây dựng mối quan hệ với khách hàng và tìm nguồn vốn đầu tư.

Ngoài ra, khóa học sẽ cung cấp cho người học những kỹ năng cần thiết để quản lý một doanh nghiệp, bao gồm quản lý tài chính, quản lý nhân sự, marketing và kinh doanh trực tuyến.

Khóa học Đổi mới và khởi nghiệp thường được tổ chức dưới dạng các buổi học trực tiếp hoặc trực tuyến, và có thể kéo dài từ vài tuần đến vài tháng tùy vào chương trình của từng tổ chức đào tạo.','2022-06-13 00:00:00',5,3,1,90,N'Hiểu rõ hơn về quá trình khởi nghiệp cùng với những kỹ năng cần thiết để thành công trong việc khởi nghiệp'),
	(103,N'Quản lý chuỗi cung ứng và vận chuyển hàng hóa',N'img/course-5-16.png',100000,N'Khóa học về Quản lý chuỗi cung ứng và vận chuyển hàng hóa giúp sinh viên hiểu về cách quản lý quy trình vận chuyển, từ việc lập kế hoạch đến thực hiện và giám sát, để đảm bảo rằng hàng hóa được giao tới khách hàng một cách an toàn và đúng thời điểm.

Ngoài ra, khóa học này còn cung cấp cho sinh viên kiến thức về các phương pháp tối ưu hóa chuỗi cung ứng, từ việc thiết kế và triển khai chuỗi cung ứng đến việc quản lý nhà cung cấp và tối ưu hóa quá trình sản xuất. Sinh viên sẽ học cách tối ưu hóa các quy trình vận chuyển, thu gom và phân phối hàng hóa thông qua việc phân tích và đánh giá dữ liệu.

Ngoài ra, khóa học này còn bao gồm các chủ đề liên quan đến quản lý kho và lưu trữ hàng hóa, bao gồm cách xác định độ lớn của kho, cách quản lý kho và các chiến lược quản lý lưu thông hàng hóa.

Cuối cùng, sinh viên sẽ học cách áp dụng các công nghệ và phần mềm quản lý chuỗi cung ứng để cải thiện hiệu suất, tăng trưởng và đáp ứng nhanh chóng với nhu cầu của khách hàng. Khóa học này sẽ giúp sinh viên trang bị kiến ​​thức và kỹ năng cần thiết để quản lý chuỗi cung ứng và vận chuyển hàng hóa một cách hiệu quả và hiệu quả từ một doanh nghiệp hoặc tổ chức.','2022-06-14 00:00:00',5,3,1,90,N'Cung cấp kiến thức về quản lý quy trình vận chuyển'),
	(104,N'Sức khỏe toàn diện và phòng ngừa bệnh tật',N'img/course-6-1.png',75000,N'Khóa học về sức khỏe toàn diện và phòng ngừa bệnh tật là một khóa học giúp học viên có thể hiểu rõ về cách duy trì sức khỏe tốt và phòng ngừa các bệnh tật thông qua việc thay đổi lối sống và ăn uống. Khóa học này cung cấp cho học viên kiến thức về các loại thực phẩm, dinh dưỡng và cách thực hiện các bài tập thể dục để duy trì sức khỏe tốt. Học viên cũng sẽ được giải đáp những thắc mắc liên quan đến sức khỏe và bệnh tật thông qua các buổi thảo luận và thực hành thực tế. Ngoài ra, khóa học còn đưa ra các kỹ năng tâm lý và cách giảm stress giúp học viên có thể sống một cuộc sống cân bằng và hạnh phúc. Khóa học này sẽ giúp học viên có được kiến thức và kỹ năng để duy trì sức khỏe tốt và phòng ngừa bệnh tật trong cuộc sống hàng ngày.','2022-06-15 00:00:00',6,1,1,30,N'Hiểu biết về sức khỏe và cách phòng ngừa bệnh tật'),
	(105,N'Tập thể dục và dinh dưỡng cơ bản',N'img/course-6-2.png',75000,N'Khóa học về Tập thể dục và Dinh dưỡng cơ bản là chương trình giảng dạy về sức khỏe và thể chất, tập trung vào hai lĩnh vực chính là tập thể dục và dinh dưỡng.

Trong khóa học này, sinh viên sẽ học được các kiến thức cơ bản về tập thể dục và phát triển kỹ năng tập luyện đúng cách và hiệu quả. Các chủ đề cụ thể bao gồm: Lợi ích của tập thể dục cho sức khỏe, các kỹ thuật tập thể dục, cách thiết lập mục tiêu tập luyện và định kỳ theo dõi tiến độ tập luyện.

Ngoài ra, khóa học còn tập trung vào việc hiểu về dinh dưỡng và cách ăn uống lành mạnh để duy trì sức khỏe. Sinh viên sẽ được hướng dẫn về cách lựa chọn thực phẩm và chế độ ăn uống phù hợp, những nguyên tắc cơ bản của dinh dưỡng và tác động của dinh dưỡng đến sức khỏe.

Khóa học này rất hữu ích đối với những người muốn bắt đầu tập thể dục và muốn hiểu về những nguyên tắc cơ bản của dinh dưỡng để duy trì một lối sống lành mạnh. Nó cũng phù hợp cho những người làm việc trong ngành y tế, giáo dục và thể dục thể thao.','2022-06-16 00:00:00',6,1,1,30,N'Cung cấp kiến thức cơ bản về tập thể dục và phát triển kỹ năng tập luyện đúng cách và hiệu quả'),
	(106,N'Yoga và một tâm hồn đầy đủ',N'img/course-6-3.png',75000,N'Khóa học Yoga là một chương trình huấn luyện cơ thể và tâm trí, giúp bạn tăng cường sức khỏe và cân bằng tâm hồn. Trong khóa học này, bạn sẽ được hướng dẫn các động tác yoga, các kỹ thuật thở và các phương pháp thư giãn để giảm stress và căng thẳng.

Một tâm hồn đầy đủ là một trạng thái của tâm trí và cảm xúc khi chúng ta cảm thấy hài lòng với cuộc sống, có sự cân bằng trong công việc và mối quan hệ, và có khả năng giải tỏa stress và căng thẳng. Chỉ khi tâm hồn của chúng ta đầy đủ thì chúng ta mới có thể tận hưởng cuộc sống và thực hiện sứ mệnh của mình trong thế giới này. Việc thực hiện các bài tập yoga và kỹ thuật thở có thể giúp cân bằng cơ thể và tâm trí, giúp tâm hồn của bạn trở nên đầy đủ và cảm nhận cuộc sống một cách đầy trọn vẹn.','2022-06-17 00:00:00',6,1,1,30,N'Trong khóa học này, bạn sẽ được hướng dẫn các động tác yoga, các kỹ thuật thở và các phương pháp thư giãn để giảm stress và căng thẳng'),
	(107,N'Cải thiện giấc ngủ và nghỉ ngơi',N'img/course-6-4.png',75000,N'Khóa học "Cải thiện giấc ngủ và nghỉ ngơi" nhằm giúp bạn hiểu rõ hơn về cách hoạt động của giấc ngủ và tác động của nó đến sức khỏe và tinh thần của con người.

Trong khóa học này, bạn sẽ được tìm hiểu về các chủ đề sau:

Cơ chế hoạt động của giấc ngủ
Các bệnh lý liên quan đến giấc ngủ và cách điều trị
Các yếu tố ảnh hưởng đến giấc ngủ, ví dụ như thói quen sinh hoạt và môi trường sống
Các kỹ thuật thư giãn để giúp bạn có giấc ngủ sâu và ngon hơn
Bạn sẽ được học qua các bài giảng video, đọc tài liệu, và thực hành các kỹ thuật thư giãn như yoga và mindfulness. Khóa học cũng đưa ra các bài tập và phương pháp theo dõi giấc ngủ của bạn để giúp bạn cải thiện chất lượng giấc ngủ và nghỉ ngơi của mình.','2022-06-18 00:00:00',6,1,1,30,N'Khóa học này giúp bạn hiểu rõ hơn về cách hoạt động của giấc ngủ và tác động của nó đến sức khỏe và tinh thần của con người'),
	(108,N'Chăm sóc răng miệng và nha khoa',N'img/course-6-5.png',75000,N'Khóa học Chăm sóc răng miệng và nha khoa có thể bao gồm các chủ đề sau:

Kiến thức cơ bản về răng miệng: bao gồm cấu trúc của răng, chức năng của từng phần của răng và vai trò của răng trong hệ thống tiêu hóa.

Các loại bệnh lý về răng miệng: bao gồm sâu răng, viêm nướu, tấy đờm, viêm xoang và những vấn đề khác liên quan đến răng miệng.

Cách chăm sóc răng miệng: bao gồm các phương pháp chăm sóc răng miệng hàng ngày như đánh răng, dùng nước súc miệng và sử dụng chỉ tăm. Bên cạnh đó, còn giới thiệu các kỹ thuật chuyên sâu như điều trị mất răng, cắt tả và trồng răng.

Thực hành: sinh viên sẽ được thực hành các kỹ thuật chăm sóc răng miệng và nha khoa trên mô hình hoặc trên bệnh nhân thật.

An toàn vệ sinh: giúp sinh viên biết cách làm việc an toàn trong phòng khám nha khoa để tránh lây nhiễm cho bệnh nhân và cả cho mình.

Khóa học này giúp sinh viên có nền tảng kiến thức vững chắc về chăm sóc răng miệng và nha khoa, từ đó có thể áp dụng các kỹ thuật này trong thực tiễn nghề nghiệp của mình.','2022-06-19 00:00:00',6,1,1,30,N'Khóa học này giúp sinh viên có nền tảng kiến thức vững chắc về chăm sóc răng miệng và nha khoa'),
	(109,N'Điều trị đau lưng và cột sống',N'img/course-6-6.png',75000,N'Khóa học Điều trị đau lưng và cột sống là một khóa học y tế nhằm giúp các chuyên gia y tế và bệnh nhân có thể hiểu rõ hơn về nguyên nhân và điều trị của đau lưng và các vấn đề liên quan đến cột sống.

Trong khóa học này, người học sẽ được giảng dạy về các loại đau lưng phổ biến, cơ chế gây đau và các phương pháp điều trị khác nhau để giảm đau và tăng cường chức năng của cột sống. Các phương pháp điều trị có thể bao gồm các biện pháp tự chăm sóc, dùng thuốc hoặc các kỹ thuật phẫu thuật.

Ngoài ra, khóa học cũng sẽ giảng dạy về các yếu tố nguy cơ gây đau lưng và cách giảm thiểu chúng, cũng như cách duy trì một lối sống lành mạnh và chăm sóc cột sống để giảm thiểu nguy cơ mắc các vấn đề về sức khỏe ở khu vực này.

Khóa học này là rất hữu ích cho những người đang gặp phải vấn đề về đau lưng và cột sống, cũng như cho những người quan tâm đến sức khỏe của bản thân và muốn có kiến thức cơ bản về các vấn đề này.','2022-06-20 00:00:00',6,1,1,30,N'Hiểu rõ hơn về nguyên nhân và điều trị của đau lưng và các vấn đề liên quan đến cột sống'),
	(110,N'Quản lý căng thẳng và tâm lý học',N'img/course-6-7.png',90000,N'Khóa học Quản lý căng thẳng và tâm lý học là một chương trình đào tạo được thiết kế để giúp học viên hiểu rõ về căng thăng và cách quản lý nó. Trong khóa học này, học viên sẽ được giảng dạy cách nhận biết các dấu hiệu của căng thẳng và hiểu rõ nguyên nhân gây ra căng thẳng.

Ngoài ra, khóa học cũng cung cấp cho học viên kiến thức về tâm lý học, giúp họ hiểu được tầm quan trọng của tâm trí và tâm lý trong cuộc sống hàng ngày. Họ sẽ được hướng dẫn về các kỹ thuật giải tỏa căng thẳng và cách làm việc với suy nghĩ tiêu cực và cảm xúc.

Khóa học này còn đưa ra những bài tập thực hành, giúp học viên áp dụng những kỹ năng đã học được vào cuộc sống hàng ngày. Khóa học rất hữu ích cho những người muốn cải thiện sức khỏe tinh thần, tăng cường sự tự tin và đạt được thành công trong cuộc sống.','2022-06-21 00:00:00',6,2,1,60,N'Nắm bắt cách nhận biết các dấu hiệu của căng thẳng và hiểu rõ nguyên nhân gây ra căng thẳng'),
	(111,N'Sức khỏe tâm thần và điều trị tâm lý',N'img/course-6-8.png',90000,N'Khóa học Sức khỏe tâm thần và điều trị tâm lý là một chương trình đào tạo chuyên sâu về các vấn đề liên quan đến tâm lý và sức khỏe tâm thần. Khóa học này bao gồm nhiều chuyên đề, từ những cơ chế phát triển tâm lý, các rối loạn tâm lý thông thường, các phương pháp điều trị và quản lý tâm lý.

Các chủ đề trong khóa học này có thể bao gồm những vấn đề như: Các rối loạn tâm lý phổ biến (như trầm cảm, lo âu, rối loạn ái tình và các rối loạn khác), tâm lý học phát triển, tâm lý trị liệu, tâm lý học xã hội, tâm lý học công nghiệp và tổ chức, tâm lý học giáo dục, tâm lý học y tế và sức khỏe, và nhiều chủ đề khác.

Khóa học này được thiết kế để giúp sinh viên hiểu rõ hơn về các nguyên nhân và các phương pháp chữa trị rối loạn tâm lý nhằm cải thiện sức khỏe tâm thần của cá nhân và cộng đồng. Nội dung khóa học được xây dựng dựa trên những nghiên cứu và kinh nghiệm thực tiễn trong lĩnh vực tâm lý học.','2022-06-22 00:00:00',6,2,1,60,N'Khóa học này bao gồm nhiều chuyên đề, từ những cơ chế phát triển tâm lý, các rối loạn tâm lý thông thường, các phương pháp điều trị và quản lý tâm lý'),
	(112,N'Sức khỏe tình dục và sinh sản',N'img/course-6-9.png',90000,N'Khóa học Sức khỏe tình dục và sinh sản là một khóa học giáo dục về đời sống tình dục, các vấn đề liên quan đến sức khỏe tình dục và những phương pháp bảo vệ sức khỏe sinh sản. Khóa học này thường được thiết kế để cung cấp cho học viên các kiến ​​thức và kỹ năng cơ bản để có một cuộc sống tình dục an toàn, lành mạnh và tránh được các bệnh lây truyền qua đường tình dục.

Trong khóa học, học viên sẽ được giới thiệu với các chủ đề như: giới tính, sự khác biệt giữa nam và nữ, bệnh lây truyền qua đường tình dục, bảo vệ sức khỏe sinh sản và phương pháp tránh thai. Họ cũng sẽ được hướng dẫn cách đối phó với các tình huống xảy ra trong đời sống tình dục và làm thế nào để đưa ra quyết định thông thái và an toàn khi tham gia vào các hoạt động tình dục.

Một khóa học sức khỏe tình dục và sinh sản tốt cũng sẽ bao gồm các hoạt động thực hành để giúp học viên phát triển các kỹ năng cần thiết, như quan hệ tình dục an toàn, sử dụng bảo vệ sinh lý và việc kiểm tra sức khỏe định kỳ. Khóa học này có thể được cung cấp cho các đối tượng khác nhau, từ học sinh trung học đến người lớn.','2022-06-23 00:00:00',6,2,1,60,N'Khóa học này thường được thiết kế để cung cấp cho học viên các kiến ​​thức và kỹ năng cơ bản để có một cuộc sống tình dục an toàn, lành mạnh'),
	(113,N'Kế hoạch hóa gia đình',N'img/course-6-10.png',90000,N'Khóa học Kế hoạch hóa gia đình là một chương trình đào tạo thiết kế để giúp các hộ gia đình phát triển kế hoạch tài chính bền vững và hiệu quả. Khóa học này sẽ cung cấp cho người tham gia các kỹ năng và kiến ​​thức cần thiết để tạo ra kế hoạch tài chính đáng tin cậy, từ quản lý ngân sách hàng ngày cho đến quản lý các khoản tiết kiệm và đầu tư dài hạn.

Chương trình bao gồm các chủ đề như việc xác định mục tiêu tài chính của gia đình, tạo ngân sách hàng tháng, quản lý và giảm nợ, đầu tư và tiết kiệm, bảo hiểm và quản lý rủi ro tài chính. Các học viên sẽ được hưởng lợi từ các bài giảng trực tuyến, tài liệu hướng dẫn, và các buổi thảo luận trực tiếp với giáo viên và các sinh viên khác để giải đáp các câu hỏi và tìm kiếm giải pháp cho những vấn đề tài chính cá nhân của họ.

Khóa học Kế hoạch hóa gia đình được thiết kế để phù hợp với mọi đối tượng, bao gồm cả những người mới bắt đầu quản lý tài chính gia đình và những người đã có kinh nghiệm nhưng muốn cải thiện các kỹ năng quản lý tài chính của mình.','2022-06-24 00:00:00',6,2,1,60,N'Cung cấp cho người tham gia các kỹ năng và kiến ​​thức cần thiết để tạo ra kế hoạch tài chính đáng tin cậy'),
	(114,N'Y học thể thao và tập luyện chuyên nghiệp',N'img/course-6-11.png',90000,N'Khóa học Y học thể thao và tập luyện chuyên nghiệp là một chương trình đào tạo bao gồm các kiến thức về y học thể thao, dinh dưỡng, tập luyện và các kỹ năng cần thiết để trở thành một huấn luyện viên chuyên nghiệp.

Trong khóa học này, học viên sẽ được giảng dạy về cách phát hiện và điều trị các chấn thương thể thao, đặc biệt là những chấn thương phổ biến trong các môn thể thao khác nhau. Họ cũng sẽ tìm hiểu về cơ thể con người và cách ảnh hưởng của việc tập luyện đến sức khỏe của một người.

Ngoài ra, khóa học cũng đào tạo học viên về các phương pháp tập luyện hiệu quả, từ luyện tập cơ bản đến các phương pháp tập luyện chuyên sâu như đào tạo thể lực, giảm cân, tăng cường khả năng thể chất và linh hoạt.

Với khóa học Y học thể thao và tập luyện chuyên nghiệp, học viên sẽ trang bị cho mình những kỹ năng thiết yếu để trở thành một huấn luyện viên chuyên nghiệp và đáp ứng được nhu cầu ngày càng tăng về sức khỏe và thể hình của con người.','2022-06-25 00:00:00',6,2,1,60,N'Cung cấp kiến thức về y học thể thao, dinh dưỡng, tập luyện và các kỹ năng cần thiết để trở thành một huấn luyện viên chuyên nghiệp'),
	(115,N'Công nghệ y tế trong chẩn đoán và điều trị',N'img/course-6-12.png',90000,N'Khóa học Công nghệ y tế và tiên tiến trong chẩn đoán và điều trị là một khóa học chuyên sâu, cung cấp các kiến thức về các công nghệ mới nhất được sử dụng trong lĩnh vực y tế để chẩn đoán và điều trị bệnh.

Khóa học này bao gồm các chủ đề như:

Các phương pháp chẩn đoán hình ảnh như siêu âm, CT, MRI và PET/CT.
Sử dụng công nghệ để theo dõi sự tiến triển của bệnh và hiệu quả của liệu pháp.
Các công nghệ tiên tiến như truyền máu tự động, robot phẫu thuật và nanorobots.
Hiểu về các yếu tố ảnh hưởng đến việc áp dụng công nghệ trong y tế như đạo đức và giới hạn về kinh phí.
Các sinh viên tham gia khóa học sẽ được học từ các chuyên gia hàng đầu trong lĩnh vực y tế và công nghệ, và có cơ hội thực hành sử dụng các công cụ và thiết bị y tế tiên tiến.

Sau khi hoàn thành khóa học, sinh viên sẽ có kiến thức vững vàng về các công nghệ mới nhất trong lĩnh vực y tế, từ đó có thể áp dụng vào việc chẩn đoán và điều trị bệnh hiệu quả hơn.','2022-06-26 00:00:00',6,2,1,60,N'Cung cấp các kiến thức về các công nghệ mới nhất được sử dụng trong lĩnh vực y tế để chẩn đoán và điều trị bệnh'),
	(116,N'Nghiên cứu và phương pháp đánh giá sức khỏe',N'img/course-6-13.png',120000,N'Khóa học Nghiên cứu sức khỏe và phương pháp đánh giá hiệu quả là một khóa học chuyên sâu về nghiên cứu và đánh giá các biện pháp liên quan đến sức khỏe con người. Khóa học này bao gồm các chủ đề như:

Lý thuyết nghiên cứu sức khỏe: Bao gồm các khái niệm, lý thuyết và phương pháp nghiên cứu trong lĩnh vực sức khỏe.

Thiết kế nghiên cứu: Các kỹ thuật thiết kế nghiên cứu, bao gồm các phương pháp tiếp cận và kế hoạch nghiên cứu.

Phương pháp thu thập dữ liệu: Bao gồm các phương pháp thu thập dữ liệu trong nghiên cứu sức khỏe, như các cuộc khảo sát và phỏng vấn.

Phân tích dữ liệu: Bao gồm các phương pháp phân tích dữ liệu cơ bản, bao gồm cả phân tích đa biến.

Đánh giá hiệu quả: Các phương pháp đánh giá các biện pháp liên quan đến sức khỏe, bao gồm các phương pháp đánh giá kinh tế và xã hội.

Khóa học này sẽ giúp các học viên có kiến thức về các phương pháp nghiên cứu và đánh giá hiệu quả, từ đó giúp họ hiểu rõ hơn và làm việc hiệu quả hơn trong lĩnh vực sức khỏe.','2022-06-27 00:00:00',6,3,1,90,N'Cung cấp kiến thức về các phương pháp nghiên cứu và đánh giá hiệu quả, từ đó giúp họ hiểu rõ hơn và làm việc hiệu quả hơn trong lĩnh vực sức khỏe'),
	(117,N'Khoa học về căn bệnh và y tế cộng đồng',N'img/course-6-14.png',120000,N'Khoa học về căn bệnh và y tế cộng đồng là lĩnh vực nghiên cứu về sức khỏe của cộng đồng trong xã hội. Nó bao gồm các hoạt động, chương trình và chính sách nhằm cải thiện sức khỏe cộng đồng và ngăn ngừa bệnh tật.

Trong lĩnh vực này, các nhà khoa học nghiên cứu các yếu tố tác động đến sức khỏe cộng đồng như môi trường sống, chế độ ăn uống, lối sống, di truyền và những yếu tố xã hội - kinh tế - văn hóa. Họ cũng điều tra sự lây lan của các bệnh truyền nhiễm và không truyền nhiễm trong cộng đồng, phát triển các chương trình kiểm soát bệnh tật và xây dựng các chiến lược phòng chống dịch bệnh.

Đồng thời, Khoa học về căn bệnh và y tế cộng đồng cũng nghiên cứu và áp dụng các phương pháp và công nghệ tiên tiến để cải thiện chất lượng chăm sóc sức khỏe của cộng đồng, bao gồm các chiến lược phát triển vắc xin, thuốc điều trị, hoặc các phương pháp chẩn đoán sớm và đánh giá nguy cơ.

Với mục tiêu tạo ra một cộng đồng khỏe mạnh, y tế cộng đồng là một lĩnh vực quan trọng trong nghiên cứu y học và có vai trò to lớn trong việc nâng cao chất lượng cuộc sống cho cả một quốc gia.','2022-06-28 00:00:00',6,3,1,90,N'Nghiên cứu về các hoạt động, chương trình và chính sách nhằm cải thiện sức khỏe cộng đồng và ngăn ngừa bệnh tật'),
	(118,N'Các kỹ thuật phục hồi chức năng sau chấn thương',N'img/course-6-15.png',120000,N'Khóa học "Các kỹ thuật phục hồi chức năng sau chấn thương" là một khóa học giáo dục chuyên sâu trong lĩnh vực y tế, thường được cung cấp bởi các trường đại học hoặc tổ chức y tế uy tín.

Khóa học này nhằm giúp các chuyên gia y tế và nhân viên y tế có kiến thức và kỹ năng cần thiết để phục hồi chức năng của các bệnh nhân sau khi họ đã trải qua chấn thương. Khóa học bao gồm các chủ đề như đánh giá chức năng, kế hoạch điều trị, các kỹ thuật phục hồi chức năng, và các phương pháp đánh giá hiệu quả điều trị.

Trong khóa học này, sinh viên sẽ học các kỹ năng chẩn đoán bệnh nhân, xác định các vấn đề liên quan đến việc phục hồi chức năng và lựa chọn phương pháp phù hợp nhất cho từng trường hợp cụ thể. Họ cũng được đào tạo để thực hiện các kỹ thuật phục hồi chức năng như luyện tập vận động, điều chỉnh độ cứng của các khớp và cơ, massage và xoa bóp.

Khóa học này có thể phù hợp với các chuyên gia y tế, điều dưỡng viên, kỹ thuật viên phục hồi chức năng, và các chuyên gia liên quan đến phục hồi chức năng sau chấn thương. Sau khi hoàn thành khóa học, họ sẽ có kiến thức và kỹ năng để đáp ứng nhu cầu phục hồi chức năng cho bệnh nhân sau chấn thương.','2022-06-29 00:00:00',6,3,1,90,N'Cung cấp kiến thức và kỹ năng cần thiết để phục hồi chức năng của các bệnh nhân sau khi họ đã trải qua chấn thương');

insert into Manage_Course(user_id, course_id, course_Start, course_end) values
(11, 1, '2023-05-26', '2023-06-25'),
(11, 100, '2023-05-26', '2023-07-25'),
(11, 101, '2023-05-26', '2023-07-25'),
(11, 102, '2023-05-26', '2023-08-24'),
(11, 103, '2023-05-26', '2023-08-24'),
(11, 104, '2023-05-26', '2023-06-25')

--Sua path anh course
update course set course_img = 'img/tempAvatar.jpg'

SET IDENTITY_INSERT [dbo].[Section] ON
INSERT INTO Section(section_id, course_id, section_name, section_status) 
VALUES (1,1,N'Xác suất và phân phối xác suất',1),
	(2,1,N'Thống kê mô tả và ước lượng',1),
	(3,2,N'Tìm hạng và ma trận căn cứ của một ma trận',1),
	(4,2,N'Giải bài toán về không gian vector',1),
	(5,3,N'Tính giới hạn của một hàm số',1),
	(6,3,N'Tìm đạo hàm của một hàm số',1),
	(7,4,N'Tính tổng các dãy số hữu hạn hoặc vô hạn.',1),
	(8,4,N'Giải bài toán về chứng minh thông qua phương pháp quy nạp',1),
	(9,5,N'Tìm độ dài cung',1),
	(10,5,N'Tìm hệ số góc của đường tiếp tuyến ',1),
	(11,6,N'Giải bài toán về phân tích số nguyên',1),
	(12,6,N'Tìm một nhóm con có tính chất đặc biệt',1),
	(13,7,N'Giải bài toán tính toán số liệu thống kê',1),
	(14,7,N'Áp dụng thuật toán và phương pháp tính toán để giải quyết bài toán thực tế',1),
	(15,8,N'Tìm và xác định tính chất của các loại đồ thị',1),
	(16,8,N'Giải bài toán tìm đường đi ngắn nhất hoặc chu trình Hamilton trên đồ thị',1),
	(17,9,N'Tìm đạo hàm riêng và vector pháp tuyến của một hàm nhiều biến',1),
	(18,9,N'Giải bài toán về đường vi phân và bề mặt tiếp xúc trong không gian ba chiều',1),
	(19,10,N'Tính tích phân xác định',1),
	(20,10,N'Áp dụng quy tắc tích phân và phương pháp tích phân để tính diện tích ',1),
	(21,11,N'Áp dụng phân phối xác suất',1),
	(22,11,N'Thực hiện phân tích hồi quy',1),
	(23,12,N'Tìm và phân tích các hàm phức',1),
	(24,12,N'Giải bài toán tìm giá trị riêng',1),
	(25,13,N'Nghiên cứu về tích phân Riemann ',1),
	(26,13,N'Áp dụng các phương pháp nâng cao trong giải tích',1),
	(27,14,N'Định thức ma trận',1),
	(28,14,N'Không gian con',1),
	(29,15,N'Đồ thị Euler.',1),
	(30,15,N'Nguyên lý quy nạp',1),
	(31,16,N'Đường cong tọa độ.',1),
	(32,16,N'Bề mặt xoắn',1),
	(33,17,N'Phân phối chuẩn',1),
	(34,17,N'Kiểm định giả thuyết.',1),
	(35,18,N'Nhóm chính qui',1),
	(36,18,N'Biểu diễn nhóm',1),
	(37,19,N'Chuỗi Fourier',1),
	(38,19,N'Phương trình Laplace',1),
	(39,20,N'Tổ hợp tuyến tính',1),
	(40,20,N'Phép chiếu',1),
	(41,21,N'Phương trình vi phân',1),
	(42,21,N'Đường cong Gauss',1),
	(43,22,N'Vô hạn hình học',1),
	(44,22,N'Hình chiếu',1),
	(45,23,N'Đại số đa tuyến tính',1),
	(46,23,N'Ma trận đồng cấu',1),
	(47,24,N'Số nguyên tố',1),
	(48,24,N'Đồng dư',1),
	(49,25,N'Giá trị riêng',1),
	(50,25,N'Hàm phổ',1),
	(51,26,N'Quá trình Markov',1),
	(52,26,N'Phân phối Poisson',1),
	(53,27,N'Phương trình Hamilton-Jacobi-Bellman.',1),
	(54,27,N'Điều khiển đặt',1),
	(55,28,N'Bài toán xếp ba lô',1),
	(56,28,N'Bài toán ngắt dòng',1),
	(57,29,N'Phương pháp moment',1),
	(58,29,N'Kiểm định t-Student',1),
	(59,30,N'Sắp xếp mảng',1),
	(60,30,N'Tính toán ma trận',1);
SET IDENTITY_INSERT [dbo].[Section] OFF

SET IDENTITY_INSERT [dbo].[Quiz] ON
INSERT INTO Quiz(quiz_id, quiz_name, quiz_desc, section_id, quiz_status)
VALUES (1,N'Bài quiz 1: Xác suất và xác suất đồng thời',N'Làm bài quiz 1',1,N'True'),
	(2,N'Bài quiz 2: Phân phối Bernoulli và phân phối chuẩn',N'Làm bài quiz 2',1,N'True'),
	(3,N'Bài quiz 1: Độ tập trung và độ phân tán dữ liệu',N'Làm bài quiz 1',2,N'True'),
	(4,N'Bài quiz 2: Ước lượng điểm trung bình và sai số ước lượng',N'Làm bài quiz 2',2,N'True'),
	(5,N'Bài quiz 1: Tính hạng của ma trận',N'Làm bài quiz 1',3,N'True'),
	(6,N'Bài quiz 2: Tìm ma trận căn cứ',N'Làm bài quiz 2',3,N'True'),
	(7,N'Bài quiz 1: Tìm vectơ cơ sở và không gian sinh bởi các vectơ',N'Làm bài quiz 1',4,N'True'),
	(8,N'Bài quiz 2: Kiểm tra tính tạo thành và tìm hệ số tuyến tính',N'Làm bài quiz 2',4,N'True'),
	(9,N'Bài quiz 1: Tính giới hạn xác định và giới hạn vô hướng',N'Làm bài quiz 1',5,N'True'),
	(10,N'Bài quiz 2: Tính giới hạn vô hạn và giới hạn đồng nhất',N'Làm bài quiz 2',5,N'True'),
	(11,N'Bài quiz 1: Tính đạo hàm cơ bản',N'Làm bài quiz 1',6,N'True'),
	(12,N'Bài quiz 2: Đạo hàm của hàm hợp và hàm nghịch đảo',N'Làm bài quiz 2',6,N'True'),
	(13,N'Bài quiz 1: Tính tổng các số tự nhiên',N'Làm bài quiz 1',7,N'True'),
	(14,N'Bài quiz 2: Tính tổng các dãy số hình học',N'Làm bài quiz 2',7,N'True'),
	(15,N'Bài quiz 1: Chứng minh bằng quy nạp đơn giản',N'Làm bài quiz 1',8,N'True'),
	(16,N'Bài quiz 2: Chứng minh bằng quy nạp toàn diện',N'Làm bài quiz 2',8,N'True'),
	(17,N'Bài quiz 1: Tìm độ dài cung trên đồ thị',N'Làm bài quiz 1',9,N'True'),
	(18,N'Bài quiz 2: Tìm độ dài cung trong không gian',N'Làm bài quiz 2',9,N'True'),
	(19,N'Bài quiz 1: Tìm hệ số góc của đường tiếp tuyến với hàm số',N'Làm bài quiz 1',10,N'True'),
	(20,N'Bài quiz 2: Tìm hệ số góc của đường tiếp tuyến với đường cong',N'Làm bài quiz 2',10,N'True'),
	(21,N'Bài quiz 1: Phân tích số thành các thừa số nguyên tố.',N'Làm bài quiz 1',11,N'True'),
	(22,N'Bài quiz 2: Tìm số nguyên tố lớn nhất trong một khoảng cho trước',N'Làm bài quiz 2',11,N'True'),
	(23,N'Bài quiz 1: Tìm tập con có tổng lớn nhất',N'Làm bài quiz 1',12,N'True'),
	(24,N'Bài quiz 2: Tìm tập con có tích lớn nhất',N'Làm bài quiz 2',12,N'True'),
	(25,N'Bài quiz 1: Tính trung bình, phương sai và độ lệch chuẩn',N'Làm bài quiz 1',13,N'True'),
	(26,N'Bài quiz 2: Tính tỉ lệ phần trăm và trung vị',N'Làm bài quiz 2',13,N'True'),
	(27,N'Bài quiz 1: Áp dụng thuật toán tìm kiếm nhị phân',N'Làm bài quiz 1',14,N'True'),
	(28,N'Bài quiz 2: Áp dụng phương pháp gradient descent',N'Làm bài quiz 2',14,N'True'),
	(29,N'Bài quiz 1: Tìm số cạnh, số đỉnh và bậc của đồ thị',N'Làm bài quiz 1',15,N'True'),
	(30,N'Bài quiz 2: Xác định đồ thị có chu trình hay không',N'Làm bài quiz 2',15,N'True'),
	(31,N'Bài quiz 1: Tìm đường đi ngắn nhất bằng thuật toán Dijkstra',N'Làm bài quiz 1',16,N'True'),
	(32,N'Bài quiz 2: Tìm chu trình Hamilton bằng thuật toán quay lui',N'Làm bài quiz 2',16,N'True'),
	(33,N'Bài quiz 1: Tính đạo hàm riêng theo một biến',N'Làm bài quiz 1',17,N'True'),
	(34,N'Bài quiz 2: Tìm vector pháp tuyến của một điểm trên đồ thị hàm nhiều biến',N'Làm bài quiz 2',17,N'True'),
	(35,N'Bài quiz 1: Tính đạo hàm riêng và vector pháp tuyến của một đường vi phân',N'Làm bài quiz 1',18,N'True'),
	(36,N'Bài quiz 2: Tìm phương trình mặt tiếp xúc với một bề mặt',N'Làm bài quiz 2',18,N'True'),
	(37,N'Bài quiz 1: Tính tích phân không xác định của một hàm số đơn giản.',N'Làm bài quiz 1',19,N'True'),
	(38,N'Bài quiz 2: Tính tích phân không xác định dựa trên phương pháp thay đổi biến số.',N'Làm bài quiz 2',19,N'True'),
	(39,N'Bài quiz 1: Tính diện tích dưới đường cong.',N'Làm bài quiz 1',20,N'True'),
	(40,N'Bài quiz 2: Tính diện tích của một hình bị chặn bởi đồ thị hàm số.',N'Làm bài quiz 2',20,N'True'),
	(41,N'Bài quiz 1: Xác định xác suất của một sự kiện trong phân phối chuẩn',N'Làm bài quiz 1',21,N'True'),
	(42,N'Bài quiz 2: Tính giá trị đồ thị hàm mật độ xác suất.',N'Làm bài quiz 2',21,N'True'),
	(43,N'Bài quiz 1: Tìm hệ số hồi quy và phân tích ý nghĩa thống kê của chúng',N'Làm bài quiz 1',22,N'True'),
	(44,N'Bài quiz 2: Dự đoán giá trị đầu ra dựa trên mô hình hồi quy.',N'Làm bài quiz 2',22,N'True'),
	(45,N'Bài quiz 1: Tính giá trị tuyệt đối và đối số của một số phức.',N'Làm bài quiz 1',23,N'True'),
	(46,N'Bài quiz 2: Phân tích thành phần thực và ảo của một hàm phức.',N'Làm bài quiz 2',23,N'True'),
	(47,N'Bài quiz 1: Tìm giá trị riêng và vector riêng của một ma trận vuông.',N'Làm bài quiz 1',24,N'True'),
	(48,N'Bài quiz 2: Xác định tính chất của giá trị riêng thông qua đường cong đặc trưng.',N'Làm bài quiz 2',24,N'True'),
	(49,N'Bài quiz 1: Tính diện tích dưới đường cong sử dụng phương pháp tích phân Riemann.',N'Làm bài quiz 1',25,N'True'),
	(50,N'Bài quiz 2: Xác định tích phân xác định bằng tích phân Riemann.',N'Làm bài quiz 2',25,N'True'),
	(51,N'Bài quiz 1: Sử dụng phương pháp tích phân số Euler để tính toán.',N'Làm bài quiz 1',26,N'True'),
	(52,N'Bài quiz 2: Áp dụng phương pháp chuỗi lũy thừa để tính toán giá trị hàm.',N'Làm bài quiz 2',26,N'True'),
	(53,N'Bài quiz 1: Tính định thức của một ma trận vuông.',N'Làm bài quiz 1',27,N'True'),
	(54,N'Bài quiz 2: Kiểm tra tính khả nghịch của ma trận bằng định thức.',N'Làm bài quiz 2',27,N'True'),
	(55,N'Bài quiz 1: Xác định không gian con sinh bởi một tập hợp các vector.',N'Làm bài quiz 1',28,N'True'),
	(56,N'Bài quiz 2: Kiểm tra tính tạo thành và tồn tại của một không gian con.',N'Làm bài quiz 2',28,N'True'),
	(57,N'Bài quiz 1: Xác định tính kết nối và tính Euler của đồ thị.',N'Làm bài quiz 1',29,N'True'),
	(58,N'Bài quiz 2: Tìm chu trình Euler trên đồ thị.',N'Làm bài quiz 2',29,N'True'),
	(59,N'Bài quiz 1: Áp dụng nguyên lý quy nạp để chứng minh một đẳng thức trong một dãy số.',N'Làm bài quiz 1',30,N'True'),
	(60,N'Bài quiz 2: Sử dụng nguyên lý quy nạp để giải một bài toán tìm số lượng cách sắp xếp.',N'Làm bài quiz 2',30,N'True'),
	(61,N'Bài quiz 1: Xác định phương trình của một đường cong tọa độ đã cho',N'Làm bài quiz 1',31,N'True'),
	(62,N'Bài quiz 2: Tìm đặc điểm của đường cong tọa độ như độ dốc, độ cong, hoặc điểm cực trị.',N'Làm bài quiz 2',31,N'True'),
	(63,N'Bài quiz 1: Xác định phương trình và đồ thị của một bề mặt xoắn.',N'Làm bài quiz 1',32,N'True'),
	(64,N'Bài quiz 2: Tìm các điểm đặc biệt trên bề mặt xoắn như điểm cực trị, điểm uốn cong, hoặc điểm xoắn.',N'Làm bài quiz 2',32,N'True'),
	(65,N'Bài quiz 1: Tính xác suất hoặc diện tích dưới đường cong phân phối chuẩn.',N'Làm bài quiz 1',33,N'True'),
	(66,N'Bài quiz 2: Xác định giá trị z-score hoặc phân vị của một biến ngẫu nhiên theo phân phối chuẩn.',N'Làm bài quiz 2',33,N'True'),
	(67,N'Bài quiz 1: Thực hiện kiểm định giả thuyết về sự khác biệt giữa hai mẫu.',N'Làm bài quiz 1',34,N'True'),
	(68,N'Bài quiz 2: Xác định giả thuyết nên chấp nhận hoặc bác bỏ dựa trên kết quả kiểm định.',N'Làm bài quiz 2',34,N'True'),
	(69,N'Bài quiz 1: Tìm các nhóm con chính qui của một nhóm.',N'Làm bài quiz 1',35,N'True'),
	(70,N'Bài quiz 2: Xác định tính chất của nhóm chính qui như tính giao hoặc tính bù đối.',N'Làm bài quiz 2',35,N'True'),
	(71,N'Bài quiz 1: Tạo biểu đồ cột hoặc biểu đồ hình quạt để biểu diễn dữ liệu nhóm.',N'Làm bài quiz 1',36,N'True'),
	(72,N'Bài quiz 2: Sử dụng biểu đồ đường hoặc biểu đồ hộp để biểu diễn sự phân bố của dữ liệu nhóm.',N'Làm bài quiz 2',36,N'True'),
	(73,N'Bài quiz 1: Tính phép biến đổi Fourier của một chuỗi số.',N'Làm bài quiz 1',37,N'True'),
	(74,N'Bài quiz 2: Tìm chuỗi con của một chuỗi số dựa trên phép biến đổi Fourier.',N'Làm bài quiz 2',37,N'True'),
	(75,N'Bài quiz 1: Tìm giá trị hàm điều khiển thỏa mãn phương trình Laplace.',N'Làm bài quiz 1',38,N'True'),
	(76,N'Bài quiz 2: Giải phương trình Laplace cho một hình dạng hình học cụ thể.',N'Làm bài quiz 2',38,N'True'),
	(77,N'Bài quiz 1: Tính số cách chọn một số phần tử từ một tập hợp lớn và sắp xếp chúng theo một thứ tự cụ thể.',N'Làm bài quiz 1',39,N'True'),
	(78,N'Bài quiz 2: Áp dụng nguyên lý cộng và nguyên lý nhân để tính tổng số cách chọn và sắp xếp các phần tử.',N'Làm bài quiz 2',39,N'True'),
	(79,N'Bài quiz 1: Tìm phép chiếu của một vector lên một không gian con.',N'Làm bài quiz 1',40,N'True'),
	(80,N'Bài quiz 2: Xác định tính chất và tính toán phép chiếu trong một không gian vector.',N'Làm bài quiz 2',40,N'True'),
	(81,N'Bài quiz 1: Giải phương trình vi phân bậc nhất.',N'Làm bài quiz 1',41,N'True'),
	(82,N'Bài quiz 2: Tìm hàm số thỏa mãn một phương trình vi phân bậc hai',N'Làm bài quiz 2',41,N'True'),
	(83,N'Bài quiz 1: Tính toán độ cong và bán kính của một đường cong Gauss.',N'Làm bài quiz 1',42,N'True'),
	(84,N'Bài quiz 2: Xác định điểm xoắn và các đặc điểm khác của đường cong Gauss.',N'Làm bài quiz 2',42,N'True'),
	(85,N'Bài quiz 1: Tìm tổng của một dãy số vô hạn.',N'Làm bài quiz 1',43,N'True'),
	(86,N'Bài quiz 2: Áp dụng nguyên lý hội tụ để kiểm tra tính hội tụ của một dãy số vô hạn.',N'Làm bài quiz 2',43,N'True'),
	(87,N'Bài quiz 1: Tìm phép chiếu của một đối tượng trên một mặt phẳng.',N'Làm bài quiz 1',44,N'True'),
	(88,N'Bài quiz 2: Xác định tính chất và tính toán phép chiếu trong không gian ba chiều.',N'Làm bài quiz 2',44,N'True'),
	(89,N'Bài quiz 1: Tính tích vô hướng và tích vector trong không gian đa tuyến tính.',N'Làm bài quiz 1',45,N'True'),
	(90,N'Bài quiz 2: Xác định ma trận chuyển đổi và tìm ma trận nghịch đảo trong đại số đa ',N'Làm bài quiz 2',45,N'True'),
	(91,N'Bài quiz 1: Xác định ma trận đồng cấu và tính toán phép nhân ma trận.',N'Làm bài quiz 1',46,N'True'),
	(92,N'Bài quiz 2: Giải hệ phương trình tuyến tính bằng phương pháp ma trận đồng cấu.',N'Làm bài quiz 2',46,N'True'),
	(93,N'Bài quiz 1: Xác định một số là số nguyên tố hay không.',N'Làm bài quiz 1',47,N'True'),
	(94,N'Bài quiz 2: Tìm các số nguyên tố trong một khoảng cho trước.',N'Làm bài quiz 2',47,N'True'),
	(95,N'Bài quiz 1: Tìm số nguyên dương nhỏ nhất đồng dư với một số cho trước.',N'Làm bài quiz 1',48,N'True'),
	(96,N'Bài quiz 2: Kiểm tra tính chia hết và tính đồng dư của các số.',N'Làm bài quiz 2',48,N'True'),
	(97,N'Bài quiz 1: Tìm giá trị riêng và vector riêng tương ứng của một ma trận.',N'Làm bài quiz 1',49,N'True'),
	(98,N'Bài quiz 2: Áp dụng tính chất của giá trị riêng để giải bài toán liên quan.',N'Làm bài quiz 2',49,N'True'),
	(99,N'Bài quiz 1: Tính phép biến đổi Fourier của một hàm số.',N'Làm bài quiz 1',50,N'True'),
	(100,N'Bài quiz 2: Xác định tính chất và tính toán hàm phổ trong phân tích',N'Làm bài quiz 2',50,N'True'),
	(101,N'Bài quiz 1: Tính xác suất chuyển trạng thái trong một quá trình Markov.',N'Làm bài quiz 1',51,N'True'),
	(102,N'Bài quiz 2: Áp dụng ma trận chuyển trạng thái để tính xác suất ổn định trong quá trình Markov.',N'Làm bài quiz 2',51,N'True'),
	(103,N'Bài quiz 1: Tính xác suất xảy ra một số sự kiện trong một khoảng thời gian dựa trên phân phối Poisson.',N'Làm bài quiz 1',52,N'True'),
	(104,N'Bài quiz 2: Áp dụng phân phối Poisson để giải quyết các bài toán thực tế.',N'Làm bài quiz 2',52,N'True'),
	(105,N'Bài quiz 1: Giải phương trình Hamilton-Jacobi-Bellman trong một bài toán tối ưu.',N'Làm bài quiz 1',53,N'True'),
	(106,N'Bài quiz 2: Tìm hàm giá trị trong phương trình Hamilton-Jacobi-Bellman.',N'Làm bài quiz 2',53,N'True'),
	(107,N'Bài quiz 1: Thiết kế một hệ thống điều khiển đặt đơn giản.',N'Làm bài quiz 1',54,N'True'),
	(108,N'Bài quiz 2: Áp dụng phương pháp điều khiển đặt để giải quyết một bài toán cụ thể.',N'Làm bài quiz 2',54,N'True'),
	(109,N'Bài quiz 1: Tìm cách xếp các đồ vật vào ba lô sao cho tối ưu.',N'Làm bài quiz 1',55,N'True'),
	(110,N'Bài quiz 2: Xác định giới hạn trọng lượng và kích thước cho việc xếp ba lô.',N'Làm bài quiz 2',55,N'True'),
	(111,N'Bài quiz 1: Tìm cách ngắt dòng một dãy số thành các đoạn con có tổng nhỏ hơn một giá trị cho trước.',N'Làm bài quiz 1',56,N'True'),
	(112,N'Bài quiz 2: Áp dụng phương pháp tìm kiếm để giải quyết bài toán ngắt dòng.',N'Làm bài quiz 2',56,N'True'),
	(113,N'Bài quiz 1: Áp dụng phương pháp moment để xác định phân phối của một biến ngẫu nhiên.',N'Làm bài quiz 1',57,N'True'),
	(114,N'Bài quiz 2: Tính toán giá trị kỳ vọng và phương sai sử dụng phương pháp moment.',N'Làm bài quiz 2',57,N'True'),
	(115,N'Bài quiz 1: Kiểm định sự khác biệt giữa hai mẫu dựa trên phân phối t-Student.',N'Làm bài quiz 1',58,N'True'),
	(116,N'Bài quiz 2: Áp dụng kiểm định t-Student để đưa ra kết luận về sự khác biệt giữa hai nhóm.',N'Làm bài quiz 2',58,N'True'),
	(117,N'Bài quiz 1: Sắp xếp một mảng số nguyên theo thứ tự tăng dần sử dụng thuật toán Bubble Sort.',N'Làm bài quiz 1',59,N'True'),
	(118,N'Bài quiz 2: Sắp xếp một mảng số thực theo thứ tự giảm dần sử dụng thuật toán Selection Sort.',N'Làm bài quiz 2',59,N'True'),
	(119,N'Bài quiz 1: Tính tích hai ma trận vuông cùng kích thước.',N'Làm bài quiz 1',60,N'True'),
	(120,N'Bài quiz 2: Áp dụng phép nhân ma trận để tính toán hệ phương trình tuyến tính.',N'Làm bài quiz 2',60,N'True');
SET IDENTITY_INSERT [dbo].[Quiz] OFF

SET IDENTITY_INSERT [dbo].[Quiz_Result] ON
INSERT INTO Quiz_Result(quiz_result_id, quiz_id, user_id, quiz_status, quiz_grade, quiz_start, quiz_end, attempt)
VALUES (1,1,1,N'True',2,'2023-01-29 09:34:53','2023-01-29 09:35:39',1),
	(2,6,2,N'False',3,'2023-01-30 10:15:27','2023-01-30 10:16:13',3),
	(3,7,3,N'False',7,'2023-01-31 15:42:08','2023-01-31 15:42:54',8),
	(4,5,4,N'False',0,'2023-02-01 18:20:12','2023-02-01 18:20:58',2),
	(5,9,5,N'False',9,'2023-02-02 21:08:45','2023-02-02 21:09:31',3),
	(6,8,6,N'False',1,'2023-02-03 08:55:59','2023-02-03 08:56:45',4),
	(7,7,7,N'False',7,'2023-02-04 12:10:34','2023-02-04 12:11:20',2),
	(8,6,8,N'False',0,'2023-02-05 16:45:22','2023-02-05 16:46:08',7),
	(9,5,9,N'False',5,'2023-02-06 19:27:53','2023-02-06 19:28:39',3),
	(10,4,10,N'False',4,'2023-02-07 22:05:37','2023-02-07 22:06:23',5);
SET IDENTITY_INSERT [dbo].[Quiz_Result] OFF

SET IDENTITY_INSERT [dbo].[Question] ON
INSERT INTO Question(ques_id, ques_content, ques_note, quiz_id) 
VALUES (1,N'Hãy chọn đáp án đúng: 5 + 3 x 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',1),
	(2,N'Hãy chọn đáp án đúng: 4 x 3 - 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',1),
	(3,N'Hãy chọn đáp án đúng: 8 / 2 + 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',1),
	(4,N'Hãy chọn đáp án đúng: 7 - 4 + 6 / 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',1),
	(5,N'Hãy chọn đáp án đúng: 3 x (4 + 2) - 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',1),
	(6,N'Hãy chọn đáp án đúng: 9 - 2 x 3 + 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',1),
	(7,N'Hãy chọn đáp án đúng: 6 / 2 x 4 + 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',1),
	(8,N'Hãy chọn đáp án đúng: 2 + 4 - 1 x 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',1),
	(9,N'Hãy chọn đáp án đúng: 8 - (4 + 2 x 3) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',1),
	(10,N'Hãy chọn đáp án đúng: 7 x 2 - (4 + 1) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',1),
	(11,N'Hãy chọn đáp án đúng: 9 + 2 x 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',2),
	(12,N'Hãy chọn đáp án đúng: 6 x 4 - 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',2),
	(13,N'Hãy chọn đáp án đúng: 10 / 2 + 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',2),
	(14,N'Hãy chọn đáp án đúng: 5 - 2 + 4 / 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',2),
	(15,N'Hãy chọn đáp án đúng: 3 x (5 + 1) - 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',2),
	(16,N'Hãy chọn đáp án đúng: 7 - 3 x 2 + 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',2),
	(17,N'Hãy chọn đáp án đúng: 9 / 3 x 2 + 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',2),
	(18,N'Hãy chọn đáp án đúng: 4 + 2 - 3 x 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',2),
	(19,N'Hãy chọn đáp án đúng: 12 - (6 + 2 x 3) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',2),
	(20,N'Hãy chọn đáp án đúng: 8 x 2 - (5 + 3) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',3),
	(21,N'Hãy chọn đáp án đúng: 3 + 4 x 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',3),
	(22,N'Hãy chọn đáp án đúng: 6 x 3 - 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',3),
	(23,N'Hãy chọn đáp án đúng: 9 / 3 + 6 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',3),
	(24,N'Hãy chọn đáp án đúng: 8 - 5 + 2 / 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',3),
	(25,N'Hãy chọn đáp án đúng: 2 x (3 + 4) - 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',3),
	(26,N'Hãy chọn đáp án đúng: 7 - 2 x 4 + 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',3),
	(27,N'Hãy chọn đáp án đúng: 5 / 2 x 6 + 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',3),
	(28,N'Hãy chọn đáp án đúng: 1 + 3 - 2 x 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',3),
	(29,N'Hãy chọn đáp án đúng: 9 - (3 + 2 x 4) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',3),
	(30,N'Hãy chọn đáp án đúng: 6 x 2 - (4 + 2) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(31,N'Hãy chọn đáp án đúng: 7 x 3 + 4 / 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(32,N'Hãy chọn đáp án đúng: 2 - 4 + 6 x 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(33,N'Hãy chọn đáp án đúng: 10 / 5 + 2 - 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(34,N'Hãy chọn đáp án đúng: 3 + 5 - 1 x 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(35,N'Hãy chọn đáp án đúng: 8 - (2 + 3 x 2) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(36,N'Hãy chọn đáp án đúng: 4 x 2 - (3 + 1) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(37,N'Hãy chọn đáp án đúng: 9 + 6 / 3 - 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(38,N'Hãy chọn đáp án đúng: 5 - 2 + 3 x 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(39,N'Hãy chọn đáp án đúng: 7 x 2 + 5 / 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(40,N'Hãy chọn đáp án đúng: 1 + 3 - 2 x 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',4),
	(41,N'Hãy chọn đáp án đúng: 4 + 2 x 3 - 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',5),
	(42,N'Hãy chọn đáp án đúng: 8 x 3 - 6 / 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',5),
	(43,N'Hãy chọn đáp án đúng: 7 / 2 + 4 x 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',5),
	(44,N'Hãy chọn đáp án đúng: 6 - 3 + 2 x 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',5),
	(45,N'Hãy chọn đáp án đúng: 2 x (6 + 1) - 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',5),
	(46,N'Hãy chọn đáp án đúng: 9 - 4 x 2 + 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',5),
	(47,N'Hãy chọn đáp án đúng: 5 / 3 x 4 - 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',5),
	(48,N'Hãy chọn đáp án đúng: 3 + 2 - 1 x 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',5),
	(49,N'Hãy chọn đáp án đúng: 8 - (3 + 2 x 4) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',5),
	(50,N'Hãy chọn đáp án đúng: 6 x 3 + 4 - 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(51,N'Hãy chọn đáp án đúng: 5 + 3 x 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(52,N'Hãy chọn đáp án đúng: 4 x 3 - 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(53,N'Hãy chọn đáp án đúng: 8 / 2 + 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(54,N'Hãy chọn đáp án đúng: 7 - 4 + 6 / 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(55,N'Hãy chọn đáp án đúng: 3 x (4 + 2) - 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(56,N'Hãy chọn đáp án đúng: 9 - 2 x 3 + 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(57,N'Hãy chọn đáp án đúng: 6 / 2 x 4 + 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(58,N'Hãy chọn đáp án đúng: 2 + 4 - 1 x 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(59,N'Hãy chọn đáp án đúng: 8 - (4 + 2 x 3) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(60,N'Hãy chọn đáp án đúng: 7 x 2 - (4 + 1) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',6),
	(61,N'Hãy chọn đáp án đúng: 9 + 2 x 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(62,N'Hãy chọn đáp án đúng: 6 x 4 - 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(63,N'Hãy chọn đáp án đúng: 10 / 2 + 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(64,N'Hãy chọn đáp án đúng: 5 - 2 + 4 / 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(65,N'Hãy chọn đáp án đúng: 3 x (5 + 1) - 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(66,N'Hãy chọn đáp án đúng: 7 - 3 x 2 + 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(67,N'Hãy chọn đáp án đúng: 9 / 3 x 2 + 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(68,N'Hãy chọn đáp án đúng: 4 + 2 - 3 x 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(69,N'Hãy chọn đáp án đúng: 12 - (6 + 2 x 3) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(70,N'Hãy chọn đáp án đúng: 8 x 2 - (5 + 3) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(71,N'Hãy chọn đáp án đúng: 3 + 4 x 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(72,N'Hãy chọn đáp án đúng: 6 x 3 - 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',7),
	(73,N'Hãy chọn đáp án đúng: 9 / 3 + 6 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',8),
	(74,N'Hãy chọn đáp án đúng: 8 - 5 + 2 / 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',8),
	(75,N'Hãy chọn đáp án đúng: 2 x (3 + 4) - 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',8),
	(76,N'Hãy chọn đáp án đúng: 7 - 2 x 4 + 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',8),
	(77,N'Hãy chọn đáp án đúng: 5 / 2 x 6 + 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',8),
	(78,N'Hãy chọn đáp án đúng: 1 + 3 - 2 x 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',8),
	(79,N'Hãy chọn đáp án đúng: 9 - (3 + 2 x 4) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',8),
	(80,N'Hãy chọn đáp án đúng: 6 x 2 - (4 + 2) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',8),
	(81,N'Hãy chọn đáp án đúng: 7 x 3 + 4 / 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',9),
	(82,N'Hãy chọn đáp án đúng: 2 - 4 + 6 x 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',9),
	(83,N'Hãy chọn đáp án đúng: 10 / 5 + 2 - 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',9),
	(84,N'Hãy chọn đáp án đúng: 3 + 5 - 1 x 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',9),
	(85,N'Hãy chọn đáp án đúng: 8 - (2 + 3 x 2) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',9),
	(86,N'Hãy chọn đáp án đúng: 4 x 2 - (3 + 1) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',9),
	(87,N'Hãy chọn đáp án đúng: 9 + 6 / 3 - 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',9),
	(88,N'Hãy chọn đáp án đúng: 5 - 2 + 3 x 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',9),
	(89,N'Hãy chọn đáp án đúng: 7 x 2 + 5 / 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',9),
	(90,N'Hãy chọn đáp án đúng: 1 + 3 - 2 x 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',9),
	(91,N'Hãy chọn đáp án đúng: 4 + 2 x 3 - 1 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',10),
	(92,N'Hãy chọn đáp án đúng: 8 x 3 - 6 / 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',10),
	(93,N'Hãy chọn đáp án đúng: 7 / 2 + 4 x 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',10),
	(94,N'Hãy chọn đáp án đúng: 6 - 3 + 2 x 4 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',10),
	(95,N'Hãy chọn đáp án đúng: 2 x (6 + 1) - 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',10),
	(96,N'Hãy chọn đáp án đúng: 9 - 4 x 2 + 3 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',10),
	(97,N'Hãy chọn đáp án đúng: 5 / 3 x 4 - 2 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',10),
	(98,N'Hãy chọn đáp án đúng: 3 + 2 - 1 x 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',10),
	(99,N'Hãy chọn đáp án đúng: 8 - (3 + 2 x 4) = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',10),
	(100,N'Hãy chọn đáp án đúng: 6 x 3 + 4 - 5 = ?',N'Đây là dạng toán cơ bản, dựa vào các tính chất của phép tính để thực hiện',10);
SET IDENTITY_INSERT [dbo].[Question] OFF

SET IDENTITY_INSERT [dbo].[choices] ON
INSERT INTO choices(choice_id, choice_content, is_true, ques_id) VALUES (1,11,N'True',1),
	(2,91,N'False',1),
	(3,85,N'False',1),
	(4,27,N'False',1),
	(5,10,N'True',2),
	(6,91,N'False',2),
	(7,85,N'False',2),
	(8,27,N'False',2),
	(9,9,N'True',3),
	(10,91,N'False',3),
	(11,85,N'False',3),
	(12,27,N'False',3),
	(13,8,N'True',4),
	(14,91,N'False',4),
	(15,85,N'False',4),
	(16,27,N'False',4),
	(17,13,N'True',5),
	(18,91,N'False',5),
	(19,85,N'False',5),
	(20,27,N'False',5),
	(21,8,N'True',6),
	(22,91,N'False',6),
	(23,85,N'False',6),
	(24,27,N'False',6),
	(25,13,N'True',7),
	(26,91,N'False',7),
	(27,85,N'False',7),
	(28,27,N'False',7),
	(29,3,N'True',8),
	(30,91,N'False',8),
	(31,85,N'False',8),
	(32,27,N'False',8),
	(33,-2,N'True',9),
	(34,91,N'False',9),
	(35,85,N'False',9),
	(36,27,N'False',9),
	(37,8,N'True',10),
	(38,91,N'False',10),
	(39,85,N'False',10),
	(40,27,N'False',10),
	(41,19,N'True',11),
	(42,91,N'False',11),
	(43,85,N'False',11),
	(44,27,N'False',11),
	(45,21,N'True',12),
	(46,91,N'False',12),
	(47,85,N'False',12),
	(48,27,N'False',12),
	(49,8,N'True',13),
	(50,91,N'False',13),
	(51,85,N'False',13),
	(52,27,N'False',13),
	(53,6,N'True',14),
	(54,91,N'False',14),
	(55,85,N'False',14),
	(56,27,N'False',14),
	(57,14,N'True',15),
	(58,91,N'False',15),
	(59,85,N'False',15),
	(60,27,N'False',15),
	(61,5,N'True',16),
	(62,91,N'False',16),
	(63,85,N'False',16),
	(64,27,N'False',16),
	(65,7,N'True',17),
	(66,91,N'False',17),
	(67,85,N'False',17),
	(68,27,N'False',17),
	(69,3,N'True',18),
	(70,91,N'False',18),
	(71,85,N'False',18),
	(72,27,N'False',18),
	(73,0,N'True',19),
	(74,91,N'False',19),
	(75,85,N'False',19),
	(76,27,N'False',19),
	(77,10,N'True',20),
	(78,91,N'False',20),
	(79,85,N'False',20),
	(80,27,N'False',20),
	(81,11,N'True',21),
	(82,91,N'False',21),
	(83,85,N'False',21),
	(84,27,N'False',21),
	(85,13,N'True',22),
	(86,91,N'False',22),
	(87,85,N'False',22),
	(88,27,N'False',22),
	(89,9,N'True',23),
	(90,91,N'False',23),
	(91,85,N'False',23),
	(92,27,N'False',23),
	(93,5,N'True',24),
	(94,91,N'False',24),
	(95,85,N'False',24),
	(96,27,N'False',24),
	(97,13,N'True',25),
	(98,91,N'False',25),
	(99,85,N'False',25),
	(100,27,N'False',25),
	(101,0,N'True',26),
	(102,91,N'False',26),
	(103,85,N'False',26),
	(104,27,N'False',26),
	(105,16,N'True',27),
	(106,91,N'False',27),
	(107,85,N'False',27),
	(108,27,N'False',27),
	(109,-4,N'True',28),
	(110,91,N'False',28),
	(111,85,N'False',28),
	(112,27,N'False',28),
	(113,-4,N'True',29),
	(114,91,N'False',29),
	(115,85,N'False',29),
	(116,27,N'False',29),
	(117,6,N'True',30),
	(118,91,N'False',30),
	(119,85,N'False',30),
	(120,27,N'False',30),
	(121,24,N'True',31),
	(122,91,N'False',31),
	(123,85,N'False',31),
	(124,27,N'False',31),
	(125,14,N'True',32),
	(126,91,N'False',32),
	(127,85,N'False',32),
	(128,27,N'False',32),
	(129,3,N'True',33),
	(130,91,N'False',33),
	(131,85,N'False',33),
	(132,27,N'False',33),
	(133,4,N'True',34),
	(134,91,N'False',34),
	(135,85,N'False',34),
	(136,27,N'False',34),
	(137,0,N'True',35),
	(138,91,N'False',35),
	(139,85,N'False',35),
	(140,27,N'False',35),
	(141,3,N'True',36),
	(142,91,N'False',36),
	(143,85,N'False',36),
	(144,27,N'False',36),
	(145,10,N'True',37),
	(146,91,N'False',37),
	(147,85,N'False',37),
	(148,27,N'False',37),
	(149,15,N'True',38),
	(150,91,N'False',38),
	(151,85,N'False',38),
	(152,27,N'False',38),
	(153,15,N'True',39),
	(154,91,N'False',39),
	(155,85,N'False',39),
	(156,27,N'False',39),
	(157,-3,N'True',40),
	(158,91,N'False',40),
	(159,85,N'False',40),
	(160,27,N'False',40),
	(161,9,N'True',41),
	(162,91,N'False',41),
	(163,85,N'False',41),
	(164,27,N'False',41),
	(165,22,N'True',42),
	(166,91,N'False',42),
	(167,85,N'False',42),
	(168,27,N'False',42),
	(169,15,N'True',43),
	(170,91,N'False',43),
	(171,85,N'False',43),
	(172,27,N'False',43),
	(173,15,N'True',44),
	(174,91,N'False',44),
	(175,85,N'False',44),
	(176,27,N'False',44),
	(177,10,N'True',45),
	(178,91,N'False',45),
	(179,85,N'False',45),
	(180,27,N'False',45),
	(181,4,N'True',46),
	(182,91,N'False',46),
	(183,85,N'False',46),
	(184,27,N'False',46),
	(185,6,N'True',47),
	(186,91,N'False',47),
	(187,85,N'False',47),
	(188,27,N'False',47),
	(189,0,N'True',48),
	(190,91,N'False',48),
	(191,85,N'False',48),
	(192,27,N'False',48),
	(193,-3,N'True',49),
	(194,91,N'False',49),
	(195,85,N'False',49),
	(196,27,N'False',49),
	(197,19,N'True',50),
	(198,91,N'False',50),
	(199,85,N'False',50),
	(200,27,N'False',50),
	(201,11,N'True',51),
	(202,91,N'False',51),
	(203,85,N'False',51),
	(204,27,N'False',51),
	(205,10,N'True',52),
	(206,91,N'False',52),
	(207,85,N'False',52),
	(208,27,N'False',52),
	(209,9,N'True',53),
	(210,91,N'False',53),
	(211,85,N'False',53),
	(212,27,N'False',53),
	(213,8,N'True',54),
	(214,91,N'False',54),
	(215,85,N'False',54),
	(216,27,N'False',54),
	(217,13,N'True',55),
	(218,91,N'False',55),
	(219,85,N'False',55),
	(220,27,N'False',55),
	(221,8,N'True',56),
	(222,91,N'False',56),
	(223,85,N'False',56),
	(224,27,N'False',56),
	(225,13,N'True',57),
	(226,91,N'False',57),
	(227,85,N'False',57),
	(228,27,N'False',57),
	(229,3,N'True',58),
	(230,91,N'False',58),
	(231,85,N'False',58),
	(232,27,N'False',58),
	(233,-2,N'True',59),
	(234,91,N'False',59),
	(235,85,N'False',59),
	(236,27,N'False',59),
	(237,8,N'True',60),
	(238,91,N'False',60),
	(239,85,N'False',60),
	(240,27,N'False',60),
	(241,19,N'True',61),
	(242,91,N'False',61),
	(243,85,N'False',61),
	(244,27,N'False',61),
	(245,21,N'True',62),
	(246,91,N'False',62),
	(247,85,N'False',62),
	(248,27,N'False',62),
	(249,8,N'True',63),
	(250,91,N'False',63);
INSERT INTO choices(choice_id, choice_content, is_true, ques_id)
VALUES (251,85,N'False',63),
	(252,27,N'False',63),
	(253,6,N'True',64),
	(254,91,N'False',64),
	(255,85,N'False',64),
	(256,27,N'False',64),
	(257,14,N'True',65),
	(258,91,N'False',65),
	(259,85,N'False',65),
	(260,27,N'False',65),
	(261,5,N'True',66),
	(262,91,N'False',66),
	(263,85,N'False',66),
	(264,27,N'False',66),
	(265,7,N'True',67),
	(266,91,N'False',67),
	(267,85,N'False',67),
	(268,27,N'False',67),
	(269,3,N'True',68),
	(270,91,N'False',68),
	(271,85,N'False',68),
	(272,27,N'False',68),
	(273,0,N'True',69),
	(274,91,N'False',69),
	(275,85,N'False',69),
	(276,27,N'False',69),
	(277,10,N'True',70),
	(278,91,N'False',70),
	(279,85,N'False',70),
	(280,27,N'False',70),
	(281,11,N'True',71),
	(282,91,N'False',71),
	(283,85,N'False',71),
	(284,27,N'False',71),
	(285,13,N'True',72),
	(286,91,N'False',72),
	(287,85,N'False',72),
	(288,27,N'False',72),
	(289,9,N'True',73),
	(290,91,N'False',73),
	(291,85,N'False',73),
	(292,27,N'False',73),
	(293,5,N'True',74),
	(294,91,N'False',74),
	(295,85,N'False',74),
	(296,27,N'False',74),
	(297,13,N'True',75),
	(298,91,N'False',75),
	(299,85,N'False',75),
	(300,27,N'False',75),
	(301,0,N'True',76),
	(302,91,N'False',76),
	(303,85,N'False',76),
	(304,27,N'False',76),
	(305,16,N'True',77),
	(306,91,N'False',77),
	(307,85,N'False',77),
	(308,27,N'False',77),
	(309,-4,N'True',78),
	(310,91,N'False',78),
	(311,85,N'False',78),
	(312,27,N'False',78),
	(313,-4,N'True',79),
	(314,91,N'False',79),
	(315,85,N'False',79),
	(316,27,N'False',79),
	(317,6,N'True',80),
	(318,91,N'False',80),
	(319,85,N'False',80),
	(320,27,N'False',80),
	(321,24,N'True',81),
	(322,91,N'False',81),
	(323,85,N'False',81),
	(324,27,N'False',81),
	(325,14,N'True',82),
	(326,91,N'False',82),
	(327,85,N'False',82),
	(328,27,N'False',82),
	(329,3,N'True',83),
	(330,91,N'False',83),
	(331,85,N'False',83),
	(332,27,N'False',83),
	(333,4,N'True',84),
	(334,91,N'False',84),
	(335,85,N'False',84),
	(336,27,N'False',84),
	(337,0,N'True',85),
	(338,91,N'False',85),
	(339,85,N'False',85),
	(340,27,N'False',85),
	(341,3,N'True',86),
	(342,91,N'False',86),
	(343,85,N'False',86),
	(344,27,N'False',86),
	(345,10,N'True',87),
	(346,91,N'False',87),
	(347,85,N'False',87),
	(348,27,N'False',87),
	(349,15,N'True',88),
	(350,91,N'False',88),
	(351,85,N'False',88),
	(352,27,N'False',88),
	(353,15,N'True',89),
	(354,91,N'False',89),
	(355,85,N'False',89),
	(356,27,N'False',89),
	(357,-3,N'True',90),
	(358,91,N'False',90),
	(359,85,N'False',90),
	(360,27,N'False',90),
	(361,9,N'True',91),
	(362,91,N'False',91),
	(363,85,N'False',91),
	(364,27,N'False',91),
	(365,22,N'True',92),
	(366,91,N'False',92),
	(367,85,N'False',92),
	(368,27,N'False',92),
	(369,15,N'True',93),
	(370,91,N'False',93),
	(371,85,N'False',93),
	(372,27,N'False',93),
	(373,15,N'True',94),
	(374,91,N'False',94),
	(375,85,N'False',94),
	(376,27,N'False',94),
	(377,10,N'True',95),
	(378,91,N'False',95),
	(379,85,N'False',95),
	(380,27,N'False',95),
	(381,4,N'True',96),
	(382,91,N'False',96),
	(383,85,N'False',96),
	(384,27,N'False',96),
	(385,6,N'True',97),
	(386,91,N'False',97),
	(387,85,N'False',97),
	(388,27,N'False',97),
	(389,0,N'True',98),
	(390,91,N'False',98),
	(391,85,N'False',98),
	(392,27,N'False',98),
	(393,-3,N'True',99),
	(394,91,N'False',99),
	(395,85,N'False',99),
	(396,27,N'False',99),
	(397,19,N'True',100),
	(398,91,N'False',100),
	(399,85,N'False',100),
	(400,27,N'False',100);
SET IDENTITY_INSERT [dbo].[choices] OFF

SET IDENTITY_INSERT Ques_Result ON
INSERT INTO Ques_Result(ques_result_id, ques_id, user_id, ques_status, ques_flag, ques_answer, quiz_result_id) 
VALUES (1,1,1,N'True',N'False',3,1),
	(2,2,1,N'True',N'False',3,1),
	(3,3,1,N'True',N'False',3,1),
	(4,4,1,N'True',N'False',3,1),
	(5,5,1,N'True',N'False',3,1),
	(6,6,1,N'True',N'False',3,1),
	(7,7,1,N'True',N'False',3,1),
	(8,8,1,N'True',N'False',3,1),
	(9,9,1,N'True',N'False',3,1),
	(10,10,1,N'True',N'False',3,1),
	(11,51,2,N'False',N'False',3,2),
	(12,52,2,N'False',N'False',4,2),
	(13,53,2,N'False',N'False',1,2),
	(14,54,2,N'False',N'False',3,2),
	(15,55,2,N'False',N'False',2,2),
	(16,56,2,N'False',N'False',1,2),
	(17,57,2,N'False',N'False',3,2),
	(18,58,2,N'False',N'False',4,2),
	(19,59,2,N'False',N'False',1,2),
	(20,60,2,N'False',N'False',1,2),
	(21,61,3,N'True',N'False',2,3),
	(22,62,3,N'True',N'False',2,3),
	(23,63,3,N'True',N'False',2,3),
	(24,64,3,N'True',N'False',3,3),
	(25,65,3,N'True',N'False',3,3),
	(26,66,3,N'True',N'False',2,3),
	(27,67,3,N'True',N'False',2,3),
	(28,68,3,N'True',N'False',4,3),
	(29,69,3,N'True',N'False',2,3),
	(30,70,3,N'True',N'False',1,3),
	(31,41,4,N'True',N'False',3,4),
	(32,42,4,N'True',N'False',3,4),
	(33,43,4,N'True',N'False',3,4),
	(34,44,4,N'True',N'False',2,4),
	(35,45,4,N'True',N'False',3,4),
	(36,46,4,N'True',N'False',3,4),
	(37,47,4,N'True',N'False',1,4),
	(38,48,4,N'True',N'False',2,4),
	(39,49,4,N'True',N'False',2,4),
	(40,50,4,N'True',N'False',0,4),
	(41,81,5,N'False',N'False',0,5),
	(42,82,5,N'False',N'False',0,5),
	(43,83,5,N'False',N'False',0,5),
	(44,84,5,N'False',N'False',0,5),
	(45,85,5,N'False',N'False',0,5),
	(46,86,5,N'False',N'False',0,5),
	(47,87,5,N'False',N'False',0,5),
	(48,88,5,N'False',N'False',0,5),
	(49,89,5,N'False',N'False',0,5),
	(50,90,5,N'False',N'False',0,5),
	(51,71,6,N'True',N'False',3,6),
	(52,72,6,N'True',N'False',0,6),
	(53,73,6,N'True',N'False',1,6),
	(54,74,6,N'True',N'False',0,6),
	(55,75,6,N'True',N'False',4,6),
	(56,76,6,N'True',N'False',4,6),
	(57,77,6,N'True',N'False',4,6),
	(58,78,6,N'True',N'False',1,6),
	(59,79,6,N'True',N'False',1,6),
	(60,80,6,N'True',N'False',1,6),
	(61,61,7,N'True',N'False',1,7),
	(62,62,7,N'True',N'False',0,7),
	(63,63,7,N'True',N'False',1,7),
	(64,64,7,N'True',N'False',0,7),
	(65,65,7,N'True',N'False',1,7),
	(66,66,7,N'True',N'False',0,7),
	(67,67,7,N'True',N'False',0,7),
	(68,68,7,N'True',N'False',0,7),
	(69,69,7,N'True',N'False',0,7),
	(70,70,7,N'True',N'False',4,7),
	(71,51,8,N'True',N'False',1,8),
	(72,52,8,N'True',N'False',1,8),
	(73,53,8,N'True',N'False',2,8),
	(74,54,8,N'True',N'False',2,8),
	(75,55,8,N'True',N'False',3,8),
	(76,56,8,N'True',N'False',0,8),
	(77,57,8,N'True',N'False',0,8),
	(78,58,8,N'True',N'False',0,8),
	(79,59,8,N'True',N'False',0,8),
	(80,60,8,N'True',N'False',0,8),
	(81,41,9,N'False',N'False',2,9),
	(82,42,9,N'False',N'False',4,9),
	(83,43,9,N'False',N'False',2,9),
	(84,44,9,N'False',N'False',1,9),
	(85,45,9,N'False',N'False',3,9),
	(86,46,9,N'False',N'False',3,9),
	(87,47,9,N'False',N'False',3,9),
	(88,48,9,N'False',N'False',2,9),
	(89,49,9,N'False',N'False',3,9),
	(90,50,9,N'False',N'False',3,9),
	(91,31,10,N'True',N'False',1,10),
	(92,32,10,N'True',N'False',2,10),
	(93,33,10,N'True',N'False',2,10),
	(94,34,10,N'True',N'False',0,10),
	(95,35,10,N'True',N'False',0,10),
	(96,36,10,N'True',N'False',0,10),
	(97,37,10,N'True',N'False',0,10),
	(98,38,10,N'True',N'False',0,10),
	(99,39,10,N'True',N'False',0,10),
	(100,40,10,N'True',N'False',0,10);
SET IDENTITY_INSERT Ques_Result OFF
