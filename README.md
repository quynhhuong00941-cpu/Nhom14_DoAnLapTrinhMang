# ĐỒ ÁN CUỐI KỲ: ỨNG DỤNG ĐỒNG BỘ TỆP TIN (CLIENT-SERVER FILE SYNCHRONIZATION)

* **Học phần**: Lập Trình Mạng Máy Tính  
* **Lớp**: 23DTHB1  
* **Mã nhóm**: Nhóm 14  
* **Trường**: Đại học Công Nghệ TP.HCM (HUTECH)  
* **Giảng viên hướng dẫn**: Thầy Nguyễn Văn  

---

## 👥 BẢNG MA TRẬN ĐÓNG GÓP CỦA THÀNH VIÊN (CONTRIBUTION MATRIX)
*(Theo đúng quy định mục 6 trong Quy trình & Ràng buộc thực hiện dự án trên Git/GitHub)*

| MSSV | Họ và Tên | Công việc đã thực hiện | Pull Requests / Merge Requests |
| :---: | :--- | :--- | :---: |
| **2380601506** | **Trần Quốc Nguyễn** | • Khởi tạo kiến trúc dự án Maven, .gitignore, script chạy.<br>• Xây dựng bảo mật SSL/TLS (PKCS12), chống Path Traversal.<br>• Quản lý khóa tệp đa luồng (FileLockManager).<br>• Thiết kế Socket TCP SyncServer đa luồng & giao diện ServerForm. | **#1, #2, #7** |
| **2380602014** | **Lý Quốc Thái** | • Định nghĩa tập lệnh giao thức tầng ứng dụng & PacketStream.<br>• Xây dựng cấu trúc gói tin ChunkPacket & ChunkAck.<br>• Hiện thực hóa động cơ ChunkEngine (chia/ghép khối 64KB - 256KB).<br>• Xây dựng cơ chế Stop-and-Wait ACK và Resume Transfer với file tạm `.part`. | **#3, #4** |
| **2380600941** | **Bùi Nhật Quỳnh Hương** *(Nhóm trưởng)* | • Xây dựng mô hình Metadata (FileMetadata, SyncPlan, SyncItem).<br>• Tiện ích băm SHA-256 toàn vẹn tệp & quét thư mục NIO.2.<br>• Thuật toán phân tích sai khác SyncDiffEngine.<br>• Quy tắc giải quyết xung đột Conflict Resolution (bảo toàn dữ liệu).<br>• Xây dựng bộ kiểm thử tự động TestRunner pass 100% & tổng hợp báo cáo. | **#5, #6, #10** |
| **2380602385** | **Nguyễn Trung Trực** | • Thiết kế giao diện Swing hiện đại ModernTheme.<br>• Xây dựng SyncClient kết nối Socket TCP/SSL.<br>• Cơ chế lập lịch tự động AutoSyncScheduler không chồng phiên.<br>• Xây dựng giao diện ClientForm, thanh tiến trình JProgressBar theo luồng EDT.<br>• Web Dashboard HTTP Server (cổng 8088) & MainLauncherForm. | **#8, #9** |

---

## 🚀 CÁCH KHỞI CHẠY ỨNG DỤNG

### Cách 1: Mở và chạy trên Apache NetBeans (Khuyên dùng)
1. Mở NetBeans -> **File** -> **Open Project** -> Chọn thư mục `FileSynchronization_Nhom14`.
2. Bấm phím **F6** (Run Project) để mở **MainLauncherForm**.
3. Từ bảng điều khiển trung tâm:
   * Bấm **Mở Server** (Port `8888`, tùy chọn SSL).
   * Bấm **Mở Client** (IP `localhost`, Port `8888`).
   * Bấm **Mở Web Dashboard** (Xem giám sát tại `http://localhost:8088`).

### Cách 2: Chạy nhanh bằng script PowerShell
```powershell
.\run.ps1
```

---

## 🧪 KẾT QUẢ KIỂM THỬ (QA SUITE)
Chạy bộ kiểm thử tự động toàn diện qua Maven:
```powershell
mvn test
```
Tất cả các ca kiểm thử (quét thư mục, băm SHA-256, chia ghép chunk, truyền Stop-and-Wait ACK, giải quyết xung đột conflict resolution, resume transfer) đều đạt kết quả **100% PASS**.

---

## 📑 QUY TRÌNH PHÁT TRIỂN & PHÂN NHÁNH TRÊN GITHUB
* **Nhánh chính (`main`)**: Được khóa và bảo vệ. Mọi thay đổi đều thông qua Pull Request.
* **Quy tắc đặt tên nhánh**: `feature/<MSSV>-issue-<Số_Issue>-<Tên_ngắn_gọn>`
* **Quy tắc commit**: Tuân thủ chuẩn Conventional Commits (`feat:`, `chore:`, `test:`, `docs:`).
* **Review chéo**: Mỗi Pull Request bắt buộc có ít nhất 1 thành viên khác trong nhóm kiểm tra và Approve trước khi merge.
