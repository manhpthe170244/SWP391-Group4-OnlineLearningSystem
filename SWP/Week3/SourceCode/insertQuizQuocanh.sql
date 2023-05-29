﻿SET IDENTITY_INSERT [dbo].[Quiz] ON
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