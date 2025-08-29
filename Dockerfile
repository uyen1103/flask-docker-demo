# 1. Dùng image Python nhẹ
FROM python:3.9-slim

# 2. Đặt thư mục làm việc trong container
WORKDIR /app

# 3. Copy và cài thư viện
COPY requirements.txt .
RUN pip install -r requirements.txt

# 4. Copy toàn bộ code vào container
COPY . .

# 5. Lệnh chạy app khi container khởi động
CMD ["python", "app.py"]
