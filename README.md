# Gig so match

# アプリケーション概要
気軽に音声ファイルを投稿することができ、気になる音源があったら、
自分の音源と他の音源をミックスして聞くことができる


# URL

## テスト用 アカウント
 

# 利用方法
URLに遷移すれば既に投稿されている音声ファイルを視聴したり、気になる音源同士をミックスして聞くことができます。

投稿するにはアカウント登録が必要です。


# 目指した課題解決
弾いてみた動画や、動画、音声の投稿が一般となっている中で、
投稿時のミックス作業に時間をとってしまうと感じた。
厳密にはもっと深い技術が必要と思うが、
「気軽に弾いてみたバンドを聞ける」「気軽に歌ってみたの音源が聞ける」
という
”投稿はしたい、でも、ミックスなんてわからない”人たちに使い易くしたかった。

# 要件
## ユーザー機能の登録
誰が投稿したのかがわかる。
## オーディオファイルの投稿
メイン機能
音声ファイルを投稿できる
## オーディオファイルのセッション機能
任意の複数のオーディオファイルを同時に再生できる
## オーディオのお気に入り機能
オーディオファイルをあとから簡単に見返すことができる機能
## ユーザー同士のコミュニケーションルームの実装
ユーザー同士のトークルームを実装
## コメント機能の実装
ファイルごとにコメント機能を実装

## ビューの作成
投稿ページの実装
一覧ページの実装
同時再生ページの実装

## 動画対応
今時、動画で対応できた方良い。

# 機能


# 実装予定機能
・ユーザー同士のトークルーム
・お気に入り機能
・コメント機能
・動画対応

# ER図
# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| --------           | ------  | ----------- |
| name               | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| profile            | text    | null: false |



### Asociation

- has_many :sound

## sound テーブル

| Column       | Type       | Options                        |
| -------      | ---------  | ------------------------------ |
| title        | string     | null: false;                   |
| explain      | text       | null: false;                   |
| file         | integer    | null: false;                   |
| user         | references | null: false;                   |


### Association

- belongs_to :user
- has_many :session_sounds
- has_many :sessions, through :session_sounds


## session_sounds テーブル

| Column          | Type       | Options                         |
| ------          | ------     | -----------                     |
| sound           | references | null: false , foreign_key: true |
| session         | references | null: false , foreign_key: true |

### Association
- belongs_to :sound
- belongs_to :session


## session テーブル

| Column          | Type       | Options                         |
| ------          | ------     | -----------                     |
| room            | string     | null: false                     |


### Association

- has_many :session_sounds
- has_many :sounds through :session_sounds


# ローカルでの動作方法
開発環境 
ruby ver 6.0.0
carrierwave
AWS S3

```
git clone
```
```
bundle install
```
