 TIỂU LUẬN CHUYÊN NGÀNH
	
	Họ và tên sinh viên thực hiện 1: Trần Tôn Thanh Châu	 	        MSSV 1: 18110084 
	Họ và tên sinh viên thực hiện 2: Trần Trung Hiếu	 	 	MSSV 2: 18110107
	Họ và tên sinh viên thực hiện 3: Nguyễn Xuân Sang	 	 	MSSV 3: 18110191
	Sinh viên thuộc hệ CLC

	Đề tài: Xây dựng website bán hàng thương mại
	Mô tả: Xây dựng một website thương mại tương tự shopee. Cho phép người bán và người mua có thể thỏa sức trao đổi mà mua bán hàng hóa thông qua internet trong mùa dịch covid.
	Website được xây dựng trên mô hình MVC(Model- View- Controller)
*	Ngôn ngữ được sử dụng chính:
•	Front-end: HTML, CSS, Javascripts
•	Back-end: ASP.NET MVC Razor ( Net framework and Net core)
•	Database: SQL
*	Các phần chính của website:
1.	Area Admin
2.	Area User
3.	Area ShopOwner
*	Chức năng được xây dựng trong các Area
1.	Area Admin
STT	Tên chức năng	Mô tả	Thời gian thực hiện	Mục tiêu đạt được
1	Quản lý ShopOwner	Cho phép ShopOwner có được phép đăng kí kinh doanh trên website hay không, có thể xem thông tin của shop đã được đăng kí, xem đánh giá của khách hàng về shop, xóa 1 shop trên hệ thống website.
Cho phép duyệt và đăng kí Shop chính hãng trên hệ thống website	






Xây dựng được cơ bản các chức năng trong a
II.Area admin
a/Quản lý User	Quản lý thông tin tất cả User đang có trên hệ thống. Có quyền xóa User đang có trên hệ thống.	Tuần 1: Từ ngày 23/08/2021 đến ngày 29/08/2021	
b/Xếp hạng đánh giá các Shop thông qua đánh giá của các User.	Một bảng thứ tự xếp hàng về mức độ uy tín của các Shop thông qua báo cáo của người dùng. Từ đó phát hiện các Shop có mức độ đánh giá, uy tín thấp sẽ được nhắc nhở và tái phạm sẽ bị ban khỏi website.	
c/Tiếp nhận khiếu nại của User	Tiếp nhận các báo cáo của người dùng về các Shop có hiện tượng lừa đảo hay sản phẩm kém chất lượng để giải quyết.	
d/Flash Sale Cho phép tổ chức các sự kiện săn Sale. Các Shop tự đăng kí sản phẩm và giá sale, bên Admin sẽ tiếp nhận và đánh giá để lên kế hoạch tổ chức sự kiện. Các sản phẩm đăng kí Flash Sale thì chỉ có các Shop có mức độ uy tín cao mới được đăng kí sản phẩm.	
e/ Phân quyền Cho phép phân quyền tài khoảng User là ShopOwner, User hay Admin		

II.	User

1	Đăng nhập Cho phép người dùng sử dụng tài khoản riêng để đăng nhập vào website. Mỗi tài khoản sẽ chỉ đăng nhập vào được 1 vùng. Ví dụ như nếu đăng nhập tài khoản được phân quyền Admin thì khi đăng nhập sẽ vào vùng làm việc của Admin.		
Hoàn thiện được giao diện người dùng dành cho khách hàng
2 	Đăng kí	Cho phép đăng kí tài khoản sử dụng website. Tài khoản sẽ bao gồm thông tin cá nhân, kết nối Ebank,... Tài khoản khi đăng kí sẽ phải được Admin duyệt và chấp nhận để phân quyền sử dụng.	
3	Quản lý thông tin cá nhân	Cho phép khách hàng có thể xem thông tin cá nhân, thay đổi thông tin cá nhân. Xem lịch sử mua hàng. Thống kê tiền mua hàng.	
4	Tìm kiếm sản phẩm	Cho phép User có thể tìm kiếm sản phẩm theo mục, theo tên sản phẩm.	
5	Xem thông tin chi tiết sản phẩm	Cho phép User có thể xem chi tiết thông tin các sản phẩm có trên website		
6	Giỏ hàng	Cho phép User có thể thêm sản phẩm vào trong giỏ hàng, sửa thông tin giỏ hàng và tiến hành đặt hàng		
7	Thanh toán	Cho phép khách hàng lựa chọn chức năng thanh toán. Ví dụ như COD( nhân hàng rồi mới thanh toán) hay thanh toán Online.	
8	Đánh giá Shop	Cho phép User có thể đánh giá điểm uy tín và chất lượng của Shop sau khi nhận được sản phẩm. Thang điểm đánh giá là 5*.	
9	Theo dõi đơn hàng	Cho phép User có thể theo dõi đơn thông tin đơn hàng mình đã đặt		
10	Feedback	Cho phép khách hàng sau khi mua hàng có thể để lại feedback về sản phẩm của shop để người mua khác có thể tham khảo. Chỉ những người đã mua và thanh toán sản phẩm của Shop mới có quyền feedback.	
11	Gửi thông báo hỗ trợ	Cho phép người dùng có thể gửi thông tin để Admin hỗ trợ và giải quyết các vấn đề phát sinh.	
12	Liên hệ với shop	Cho phép khách hàng có thể liên hệ với chủ cửa hàng hoặc các bạn admin để từ đó có thể nhận tư vấn về các sản phẩm muốn mua	
III.	ShopOwner

1	Quản lý sản phẩm	Thêm sản phẩm mới.
Cho phép quản lý thông tin sản phẩm có trong Shop. Ví dụ như thay đổi tên sản phẩm, cập nhập số lượng sản phẩm có trong kho, thay đổi giá sản phẩm,… Xóa một sản phẩm bất kì của Shop đó.	 

Xây dựng được các chức năng để quản lý thông tin của cửa hàng dành cho chủ cửa hàng dể hoàn thiện website
2	Quản lý thông tin đặt hàng	Tiếp nhận đơn đặt hàng của khách hàng, xem thông tin của đơn hàng(VD như mã sản phẩm đặt, số lượng, thông tin địa chỉ khách hàng cần đặt). Liên hệ với khách hàng, thay đổi trạng thái đơn hàng.		
3	Thống kê doanh thu	Thống kê doanh thu của Shop theo từng tháng, theo quý,… Xuất file thống kê( VD như file Excel, PDF theo dạng bảng hoặc biểu đồ).
Thống kê doanh thu theo biểu đồ.	



	


