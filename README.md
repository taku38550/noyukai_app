# アプリケーション名
noyukai_app

# アプリケーション概要
農家同士での記事の投稿、ユーザー間でコミュニケーションをとることで、

近況報告と情報共有を行うことができる。

# URL
https://noyukaiapp.onrender.com

# テスト用アカウント
・ Basic確認パスワード:admin

・ Basic認証ID:2222

・ メールアドレス:test10@test.com

・ パスワード:test10

# 利用方法

## 記事の投稿
1.ヘッダーの「新規登録」ボタンをクリックし、ユーザーの新規登録を行う。

2.同じくヘッダーとトップ画面右下の「投稿する」ボタンから記事の詳細（タイトル・内容・画像）を入力して投稿する。

3.投稿完了後にトップ画面に表示された各記事をクリックすることで記事の詳細ページに遷移する。

4.記事の詳細ページでは記事の詳細（タイトル・内容・画像）の確認のほか、コメントの投稿を行う。


## チャット機能
1.ヘッダーの「チャットを行う」ボタンをクリックし、チャット一覧ページに遷移する。

2.「チャットを作成する」ボタンをクリックし、チャットルームの新規作成を行う。

3.選択したユーザーとチャットを行う。

# アプリケーションを作成した背景
自身が在籍していた農業系の専門学校では卒業生や在校生間で近況報告や情報交換が出来ておらず、

関係性が疎遠になりつつあるという実態がある。

その為、全ての関係者へ学校からの諸連絡や就農状況の確認が

行き届いていないという課題が発生していた。

それを踏まえ、学校関係者全てがログインして近況報告やユーザー間のコミュニケーションが可能な

情報共有できるアプリケーションを開発することにした。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1EbCpU1G1IFgZS5SngBWiD57SY_EvcWtTFjLLj6yno3w/edit#gid=1914500483

# 実装した機能についての画像やGIFおよびその説明

「投稿する」ボタンをクリックすることで記事の投稿ができる。

[![Image from Gyazo](https://i.gyazo.com/9dff1f0b8a9f02cab6b058c6254e5ae4.gif)](https://gyazo.com/9dff1f0b8a9f02cab6b058c6254e5ae4)

投稿された記事をクリックすることで、その記事の詳細ページに遷移できる。

[![Image from Gyazo](https://i.gyazo.com/475f69e2d959025f04868dc6ea9d0acd.gif)](https://gyazo.com/475f69e2d959025f04868dc6ea9d0acd)

ユーザー名をクリックすることで、そのユーザーの詳細ページに遷移できる。

[![Image from Gyazo](https://i.gyazo.com/251ef0861af74a5724d65369c8bb97f0.gif)](https://gyazo.com/251ef0861af74a5724d65369c8bb97f0)

「チャットを行う」ボタンをクリックすることでチャットルーム一覧ページに遷移し、各チャットルーム名をクリックするとチャット内容が表示される。

[![Image from Gyazo](https://i.gyazo.com/076a27719c8107e452b7a8b6835aebab.gif)](https://gyazo.com/076a27719c8107e452b7a8b6835aebab)


# 実装予定の機能
現在、いいね機能とクレジットカード決済機能の実装を検討中

投稿された記事にいいねを押したり、アプリ内でクレジットカード決済にて

会費の徴収を行うことができる機能を実装する予定である。

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/ef1f9e7ac3e000938b60c2321649bb82.png)](https://gyazo.com/ef1f9e7ac3e000938b60c2321649bb82)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/f9bddfd799e374a52b2c1956f89fea38.png)](https://gyazo.com/f9bddfd799e374a52b2c1956f89fea38)

# 開発環境
・フロントエンド

・バックエンド

・インフラ

・テキストエディタ

・タスク管理

# ローカルでの動作確認
以下のコマンドを順に実行。

1.このリポジトリをクローンする

% git clone https://github.com/taku38550/noyukai_app

2.リポジトリに入る

% cd noyukai_app

3.依存関係をインストールする

% yarn

4.データベースの作成、移行の実行、データベースのセットアップを行う

% yarn migrate

5.アプリを実行する

% yarn start




