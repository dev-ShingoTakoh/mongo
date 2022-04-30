<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/5.1.0/github-markdown.min.css">

# MongoDB / Mongo Express to Docker

## 概要

Dockerを使用してMongoDB、Mongo-Expressの環境を構築する。

## 目次
[事前準備](#anchor1)  
[環境](#anchor2)  
[実行コマンド](#anchor3)  
[環境の削除](#anchor4)  
[参考リンク](#anchor5)  

<a id="anchor1"></a>

## 事前準備

- Makefileを一部使用しています。Macの場合はHomebrewをインストールしていると使用できると思いますが、Windowsの場合は下記リンクを参考に実行環境を整えてください。

  [Windows10環境でmakeをする方法](https://camedphone.com/archives/1192)

  ※MacでHomebrewをインストールしていない場合は下記リンクからインストールしてください。  
  [Homebrew](https://brew.sh/index_ja)

<a id="anchor2"></a>

## 環境

<a id="anchor3"></a>

## 実行コマンド

- コンテナ起動

~~~sh
make up
~~~
  
- コンテナログイン
  - Mongo
  ~~~sh
  make mongo-container
  ~~~
  - Mongo Express
  ~~~sh
  make express-container
  ~~~

- MongoDBログイン

~~~sh
make mongo-login
~~~

<a id="anchor4"></a>

## 環境の削除

### コンテナのみ削除する場合

- コンテナを停止する

~~~sh
make stop 
~~~

- 停止したコンテナを削除する

~~~sh
make rm
~~~

### コンテナ・ボリューム・イメージ・ネットワーク全て削除する場合

- 削除されるのはdocker-compose.ymlで記述している内容に限ります。

~~~sh
make down-rmi
~~~


<a id="anchor5"></a>

## 参考リンク
