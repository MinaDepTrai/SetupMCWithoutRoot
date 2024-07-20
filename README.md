
# Thiết Lập và Khởi Động Máy Chủ Minecraft

Repository này chứa các script để thiết lập và khởi động một máy chủ Minecraft với Java 17. Các script này cho phép bạn tải về và cấu hình máy chủ mà không cần quyền root. Ngoài ra, bạn có thể chỉ định dung lượng RAM để phân bổ cho máy chủ khi khởi động.

## Yêu Cầu

Hãy đảm bảo bạn đã cài đặt `wget` và `tar` trên hệ thống của mình. Bạn cũng cần có kết nối internet để tải xuống Java và các file máy chủ.

## Sử Dụng

### Bước 1: Clone Repository

Trước tiên, clone repository từ GitHub về máy tính của bạn:

```sh
git clone https://github.com/MinaDepTrai/SetupMCWithoutRoot/
cd SetupMCWithoutRoot
```

### Bước 2: Thiết Lập Máy Chủ

Chạy script thiết lập để tải về và cấu hình Java 17 và máy chủ Minecraft phiên bản 1.20.6:

1. **Cấp quyền thực thi cho script thiết lập**:

    ```sh
    chmod +x setup_server.sh
    ```

2. **Chạy script thiết lập**:

    ```sh
    ./setup_server.sh
    ```

### Bước 3: Khởi Động Máy Chủ

Sau khi thiết lập máy chủ, sử dụng script khởi động để chạy máy chủ với dung lượng RAM mong muốn.

1. **Cấp quyền thực thi cho script khởi động**:

    ```sh
    chmod +x start_server.sh
    ```

2. **Chạy script khởi động**:

    ```sh
    ./start_server.sh
    ```

    Script sẽ yêu cầu bạn nhập dung lượng RAM để phân bổ cho máy chủ. Nếu bạn không chỉ định, nó sẽ mặc định là 1024MB.

## Lưu Ý

- Script này chỉ dành cho hệ điều hành Linux.
- Script này sẽ tải server Minecraft phiên bản 1.20.6.
- Hãy đảm bảo bạn có đủ quyền để thực thi các script và tạo các thư mục ở vị trí mong muốn.
- Đảm bảo hệ thống của bạn đáp ứng các yêu cầu tối thiểu để chạy máy chủ Minecraft với dung lượng RAM đã chỉ định.

Bằng cách làm theo các bước này, bạn sẽ có thể thiết lập và khởi động máy chủ Minecraft thành công.

# Sẽ ra mắt những phiên bản mới hơn trong tương lai.

# Ủng hộ cho Tác Giả 1 follow Facebook nhaaa💕
FB Cá Nhân: fb.me/bbinaty.2007
