# Script khởi chạy nhanh Đồ Án Đồng Bộ Tệp Tin (FileSynchronization_Nhom14)
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " HỆ THỐNG ĐỒNG BỘ TỆP TIN CLIENT - SERVER (NHÓM 14) " -ForegroundColor Yellow
Write-Host "==========================================================" -ForegroundColor Cyan

# Kiểm tra Maven
if (-not (Get-Command mvn -ErrorAction SilentlyContinue)) {
    Write-Host "[!] Không tìm thấy lệnh 'mvn' trong PATH." -ForegroundColor Red
    Write-Host "[*] Vui lòng cài đặt Maven hoặc chạy qua NetBeans IDE (F6)." -ForegroundColor Yellow
    Pause
    Exit
}

Write-Host "[1/2] Đang biên dịch mã nguồn qua Maven..." -ForegroundColor Green
mvn clean compile -DskipTests
if ($LASTEXITCODE -ne 0) {
    Write-Host "[X] Biên dịch thất bại!" -ForegroundColor Red
    Pause
    Exit
}

Write-Host "[2/2] Khởi chạy ứng dụng MainLauncherForm..." -ForegroundColor Green
mvn exec:java -Dexec.mainClass="com.nhom14.filesync.gui.MainLauncherForm"
