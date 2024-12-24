# ベースイメージとしてphpMyAdmin公式イメージを使用
FROM phpmyadmin:latest

# 環境変数を設定（MySQLサーバー情報を追加）
ENV PMA_HOST=db \
    PMA_PORT=3306 \
    PMA_USER=gobou \
    PMA_PASSWORD=gobou

# デフォルトのポート80を公開
EXPOSE 80

# カスタム設定ファイル（例: config.inc.php）を追加する場合

# コンテナ起動時にphpMyAdminを実行
CMD ["apache2-foreground"]

