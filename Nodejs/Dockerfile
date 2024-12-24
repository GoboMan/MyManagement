# ベースイメージの指定
FROM node:20

# 作業ディレクトリを設定
WORKDIR /usr/src/app

# package.jsonをコピーして依存関係をインストール
COPY package*.json ./
RUN npm install

# ソースコードをコピー
COPY . .

# アプリが使用するポート
EXPOSE 3000

# アプリケーションを実行
CMD ["node", "index.js"]
