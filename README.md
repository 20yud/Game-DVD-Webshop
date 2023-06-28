## Installation


| App | Link |
| ------ | ------ |
| Java | https://www.java.com/download/ie_manual.jsp|
| MySQL Installer| https://dev.mysql.com/downloads/installer/ |
| MySQL Workbench | https://dev.mysql.com/downloads/workbench/ |
| Eclipse | https://www.eclipse.org/downloads/ |
| Lombok | https://repo1.maven.org/maven2/org/projectlombok/lombok/1.18.28/lombok-1.18.28.jar |
## Tải File Code
Sau khi đã tải xong và giải nén các file zip

```sh
Mở Java để cài đặt
```

```sh
Cài đặt MySQL Installer 
```

```sh
Cài đặt MySQL Workbench
Kết nối đến Server
Mở File->Open MySQL Script->Chọn file script.sql trong thư mục script trong file code
Bôi đen tất cả-> Run
```

```sh
Copy Folder WebProject trong file copy vào Folder có đường dẫn C:\Users\{ten}\eclipse-workspace
```

```sh
Cài đặt Eclipse 
Chọn Help-> Eclipse Marketplace-> Search "Spring tool 4"-> Install
```

```sh
Chọn File->Open Projects From File System-> Directory->Chọn Folder WebProject tại C:\Users\{ten}\eclipse-workspace
Đợi load đầy đủ Plugin
```

```sh
Chọn project WebProject->Maven->Update Project->Ok
Hoặc có thể ấn Alt+F5->Chọn WebProject->OK
```

```sh
Chọn project WebProject->Run As->Spring Boot App
Vào Browser nhập đường link: http://localhost:8080/home
```