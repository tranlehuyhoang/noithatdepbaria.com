<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        .header {
            background: #fdcc7f;
            color: #344943;
            padding: 20px;
            text-align: center;
        }
        .content {
            padding: 20px;
            background: #fff;
            border: 1px solid #ddd;
        }
        .info-item {
            margin-bottom: 10px;
        }
        .label {
            font-weight: bold;
            color: #344943;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h2>Thông Tin Liên Hệ Mới</h2>
        </div>
        <div class="content">
            <div class="info-item">
                <span class="label">Họ và tên:</span> {{ $data['name'] }}
            </div>
            <div class="info-item">
                <span class="label">Email:</span> {{ $data['email'] }}
            </div>
            <div class="info-item">
                <span class="label">Số điện thoại:</span> {{ $data['phone'] }}
            </div>
            <div class="info-item">
                <span class="label">Tiêu đề:</span> {{ $data['title'] }}
            </div>
            <div class="info-item">
                <span class="label">Nội dung:</span>
                <p>{{ $data['content'] }}</p>
            </div>
        </div>
    </div>
</body>
</html>
