# ベースイメージを指定
FROM python:3.9-slim

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係をコピーし、インストール
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# アプリケーションファイルをコピー
COPY . .

# ポートを開放
EXPOSE 5000

# アプリケーションを起動
CMD ["python", "app2.py"]
