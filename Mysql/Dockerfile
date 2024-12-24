#   MySQLの公式イメージを使用
FROM mysql:8.0

#   環境変数で初期設定
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=my_management
ENV MYSQL_USER=gobou
ENV MYSQL_PASSWORD=gobou

#   カスタム設定ファイルをコピーする（任意。今はない。）

#   port 3306を公開
EXPOSE 3306

# MySQLのデフォルトエントリーを使う
CMD ["mysqld"]
