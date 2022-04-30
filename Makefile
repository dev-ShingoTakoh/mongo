# 引数
P=null
S=null

# サービスのビルドを実行します。
build:
	docker-compose build

# コンテナを作成して、起動します。オプションで-dをつけることでバックグラウンドで実行することができます。
up:
	docker-compose up -d

# サービスのビルドからコンテナ作成、起動までをバックグランドで行います。
up-build:
	docker-compose up -d --build

# DAB(Distributed Application Bundles)というのを作成します。
# これは事前に作成したイメージをdockerのregistryにpushしておく必要があります(ローカルにpushでも可)
bundle:
	docker-compose bundle

# docker-compose.ymlで書かれてる内容が表示されます。
config:
	docker-compose config

# 構築されたサービスを参考にそのコンテナを作ります。
create:
	docker-compose create

# docker-compose.ymlに書かれているサービスを参考にコンテナを停止し、そのコンテナとネットワークを削除します。
down:
	docker-compose down

# コンテナからのイベントを受信します。
events:
	docker-compose events

# コマンドの一覧を表示します。
help:
	docker-compose help

# 対象のイメージの情報を表示します。
images:
	docker-compose images

# コンテナを強制停止します。
kill:
	docker-compose kill

# サービスのログを出力します。
logs:
	docker-compose logs

# サービスを一旦停止します。
# (一時停止したサービスは強制削除、強制開始ができずunpauseをしてからでないと作業ができなくなるので注意してください。)
pause:
	docker-compose pause

# 割り当てているポートを表示します。引数でサービス名とポート番号が必要になります。
port:
	@echo docker-compose port $(S) $(P)

# コンテナの一覧を表示します。
ps:
	docker-compose ps

# サービスのイメージをプルしてきます。
pull:
	docker-compose pull

# サービスのイメージをプッシュします。
push:
	@echo docker-compose push $(S)

# コンテナを再起動します。
restart:
	docker-compose restart

# 停止中のコンテナを削除します。
rm:
	docker-compose rm

# サービスを開始します。これは既にコンテナがある状態でなければなりません。
start:
	docker-compose start

# サービスを停止します。
stop:
	docker-compose stop

# 各コンテナのプロセス情報を表示します。
top:
	docker-compose top

# サービスの再開をします。pauseしている状態から復帰するのですが、pauseしている状態から復帰するにはこのコマンドが必要です。
unpause:
	docker-compose unpause

# docker-composeのバージョンを表示します。
version:
	docker-compose version

# コンテナ、イメージ、ボリューム、ネットワークそして未定義コンテナ、全てを一括消去するコマンド
down-rmi:
	docker-compose down --rmi all --volumes --remove-orphans

# Mongoのコンテナに入る
mongo-container:
	docker-compose exec mongo bash

# Mongo Expressのコンテナに入る
express-container:
	docker-compose exec mongo-express bash

# MongoDBにログインする
mongo-login:
	docker-compose exec mongo bash -c "mongo admin -u root -p example"