# アプリケーション概要
### 内容
Gig so matchは、
音声投稿を通じたコミュニケーションアプリです。</br>
気軽に自身の音声ファイルを投稿することができ、
アプリケーション内に気になる音源があったら、
自分の音源、または他の音源とさらに複数の音源をミックスして聞くことができます。</br>
また,投稿者同士のダイレクトメッセージ機能で他の投稿者とコミュニケーションを図ることが可能です。

# アプリケーション遷移用リンク
### URL
https://session-app-20201222.herokuapp.com/

### ベーシック認証
- user: adminadmin
- pass: 11112222
### テスト用 アカウント
##### アカウント１
- name: テスト 
- email: sample@sample.com 
- password: abc123

##### アカウント２
- name: チェック 
- email: test@test.com 
- password: abc123
 

# 利用方法
URLに遷移すれば既に投稿されている音声ファイルを視聴できます。

投稿済み音源の試聴以外の機能を利用するには、アカウントを作成してログインが必要です。

ログインすると、音源投稿、セッション、DM機能、お気に入り機能が利用できます。


# 目指した課題解決
* ペルソナ
  * 26歳男性
楽器や音楽が好きで弾いてみたなどアマチュアも含めて気になっている


* ## 気軽に投稿！気軽にミックス！
弾いてみた動画や、動画、音声の投稿が一般となっている中で、
投稿時のミックス作業に時間をとってしまう、また技術的ハードルが高いと感じた。

* 例１）
  * 自分が弾いた（歌った）音源で「気軽に弾いてみたバンドのサウンドを聞ける」「気軽に歌ってみたの音源が聞ける」

* 例２）
  * 気に入った他人の演奏音源を複数混ぜて再生したらカッコいいかもしれない



”投稿はしたい、でも、ミックスなんてわからない”
”かっこいい、素敵な演奏を聴きたい、　でも、ミックスなんてめんどくさい"


という人たちが使い易くできればと思い制作を進めました。

# 要件
* ## 機能
  * ユーザー機能の登録
    * 誰が投稿したかが分かる

  * オーディオファイルの投稿
    * メイン機能
    * 音声ファイルを投稿できる
  * オーディオファイルのセッション機能
    * 任意の複数のオーディオファイルを同時に再生できる

  * オーディオのお気に入り機能
    * オーディオファイルをあとから簡単に見返すことできる

  * ユーザー同士のコミュニケーションルームの実装
    * ユーザー同士のトークルームを実装
  * コメント機能の実装
    * ファイルごとにコメント機能を実装



## 動画対応
今時、動画で対応できた方良い。

# 機能説明

* 一つ気になる投稿を選んで、一緒に再生させたい他のファイルを選ぶ
* 任意の複数のファイルを同時再生できる
* 気に入った投稿をお気に入り登録でき、マイページで見返すことができる
* DM機能で、他のユーザーとメールのやりとりができる


![move1](https://raw.github.com/wiki/Dmondial/session_app/images/move1.gif)

![move2](https://raw.github.com/wiki/Dmondial/session_app/images/move2.gif)


# 実装予定機能

- コメント機能
- 動画対応
- ユーザーアイコンの追加

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
-ruby ver 6.0.0
-carrierwave
-AWS S3

```
git clone
bundle install
rails db:migrate
rails s
```

デフォルトであればいかにアクセス
- url: localhost:3000

