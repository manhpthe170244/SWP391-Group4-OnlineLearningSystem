insert into "user" (user_email, password, full_name, user_img, gender_id, user_dob, user_phone, user_address, user_wallet, role_id, user_time, user_status, Score) 
values 
('chuquyson4@gmail.com','12345', N'chu sơn', 'img/4.jpg', 1, '2003-05-27', 0363938085, N'Sơn Tây', 1000, 2, '2003-05-27', 1, 0),
('chi@gmail.com','12345', N'Minh Chi', 'img/5.jpg', 1, '2003-05-27', 0363938085, 'Nam Dinh', 1000, 2, '2003-05-27', 1, 0)


DELETE FROM "User"

INSERT INTO gender (gender_name) VALUES 
('Nam'), 
('Nữ');




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


