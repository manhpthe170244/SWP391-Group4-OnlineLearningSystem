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
('thaoduong@gmai.coml', 'YvzV1AkiYao7bz5c9EHeow==', N'Vũ Thị Thảo Dương', 'img/tempAvatar.jpg', 2, '2003-01-01', '0593996287', N'Hà Nội', 1000, 5, '2023-05-26', 1, 0)





select * from Role

SET IDENTITY_INSERT [dbo].[Gender] ON
INSERT INTO gender (gender_id, gender_name) VALUES 
(1, N'Nam'), 
(2, N'Nữ');

delete from gender

select * from "user"


insert into Role(role_name) values 
('admin'),
('Student'),
('Lecturer'),
('Marketing'),
('Sales')


select * from "User"


select * from subject 

INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Công nghệ thông tin', N'https://i.ytimg.com/vi/CJlckNl0KFU/hq720.jpg?sqp=-%E2%80%A6AFwAcABBg==&rs=AOn4CLClq5CDznc_poNMEtAdr-O4xPFA5g', N'Trong môn học này, bạn có thể học nhiều ngôn ngữ lập trình khác nhau.')
INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Toán', N'https://i.ytimg.com/vi/gSVHaIWIgUE/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLDckRJcwXYnnQtJ2kUYPX6VtIp2KA', N'Trong chủ đề này, bạn có thể tìm hiểu về toán học trong lĩnh vực công nghệ thông tin.')
INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Nhạc cụ', N'https://i.ytimg.com/vi/FpTlgWy5UUU/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLBvQfUgiQhsak1KckNc-KkRTHzykg', N'Trong môn học này, bạn có thể tham gia các khóa học cơ bản về cách chơi nhạc cụ.')
INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Ngôn ngữ', N'https://i.ytimg.com/vi/wkjSBC-_bDA/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLCSsSNhyijp7aPD2qVbxdDfaI6JHg', N'Trong môn học này, bạn có thể học nhiều ngôn ngữ khác nhau')
INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Kinh Doanh', N'https://i.ytimg.com/vi/G7VWp_U-eo8/hq720.jpg?sqp=-…AFwAcABBg==&rs=AOn4CLCuDh3B8RKQ-8-dJpQSLhhVvX5D0w', N'Trong chủ đề này, bạn có thể học các khóa học kinh doanh cơ bản.')
INSERT [dbo].[Subject] ([sub_name], [sub_img], [sub_desc]) VALUES (N'Sức khoẻ', N'https://i.ytimg.com/vi/VJ_s51QGbg8/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLAtzjxsl6Dflrjtv8RLrdDGHnMn1w', N'Ở bộ môn này, bạn có thể học các khóa học về cách chăm sóc sức khỏe đúng cách và khoa học.')

select * from Subject


SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (1, N'Basic')
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (2, N'Intermediate')
INSERT [dbo].[Level] ([level_id], [level_name]) VALUES (3, N'Advanced')
SET IDENTITY_INSERT [dbo].[Level] OFF


