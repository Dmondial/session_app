# アプリケーション概要
### 内容
Gig so matchは、
音声投稿を通じたコミュニケーションアプリです。<br>
気軽に自身の音声ファイルを投稿することができ、
アプリケーション内に気になる音源があったら、
自分の音源、または他の音源とさらに複数の音源をミックスして聞くことができます。<br>
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

現場の主要な機能は以下
* ログイン機能
* ユーザーページを用意
* ログイン時にアニメーションを実装
* 音源投稿
* 複数の音源をミックスして再生
* ダイレクトメッセージ機能
* お気に入り登録（ブックマーク）


## トップページ
* 1. ログインボタン
  * ログインページに遷移します。
* 2. 新規登録ボタン
  *  新規登録ページに遷移します。
* 3. ヘッダーロゴ
  * クリックするとトップページに遷移します。
* 4. 音源一覧
  * トップページには投稿された音源を投稿時間が早い方から降順で一覧表示しています。
* 5. 投稿ボタン
  *  クリックすると音源投稿ページに遷移します。
* 6. ログアウトボタン
  * クリックするとログアウトします。
* 7. マイページボタン
  * クリックするとマイページに遷移します。

![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/top_page1.png)
![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/top_page2.png)
![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/top_page3_signed_in.png)

## 音源投稿
1. 自分が録音した音源を投稿できる
2. 投稿するとルートパスの一覧ページに表示される
3. 音源の内容を記述できる（コードや雰囲気など）
![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/image/sound_post_page.png)
## ミックス機能
1. 音源一覧ページの **〜とセッション** ボタンをクリック
2. 選んだ音源と同時再生させるファイルを選んで **セッションを作成** をクリック
3. 任意の複数のファイルを同時再生できる

![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/image/session_create1_movie.gif)
![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/image/session_create2_movie.gif)

1. コントロールボタン
  * play,pause,resetのボタンでセッション内の音源を All Play, All Stop, All Reset　ができる
  
2. セッション音源
  * ***各音源は個別に音量調整、オンオフが可能***
![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/session_info.png)

## お気に入り機能
* 気に入った投稿をお気に入り登録でき、マイページで見返すことができる
  * **お気に入りのチェックはajax非同期通信で実装している**
![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/image/fav_movie1.gif)


## ダイレクトメッセージ機能
* 1. 新規DM作成ボタン
  * 新たにメッセージルームを作成するページへ遷移する
* 2. メッセージ部
  * 既存のメッセージがあれば右のオブジェクトに表示される
* 3. DMユーザー一覧
  * 現在ログインしているユーザーのDMルームが表示される
  * 表示されているユーザー名をクリックすると右のオブジェクトにメッセージが表示される
  * 自分が送信した時と相手が送信した時とで表示場所が変わる（自分（ログインしているユーザー）は右側、相手からのメッセージは左側）
* 4. メッセージ送信フォーム
  * メッセージのやりとりをする場合に使用

* DM機能で、他のユーザーとコミュニケーションが取れる
![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/DMpage.png)

## マイページ
* 1. プロフィール
  * 自身のプロフィールを用意 **未実装**
* 2. 遷移ボタン
  * 各ページへの遷移ボタン 
* 3. 自分の投稿一覧 
* 4. 自分の音源が入ったセッション一覧
  * **play,pause,resetで各セッションごとに試聴可能**

  ![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/mypage.png)





# 実装予定機能

- コメント機能
- 動画対応
- ユーザーアイコンの追加

# ER図
![](https://raw.github.com/wiki/Dmondial/session_app/readme_images/session_app_DB_ER.png)
<!-- # テーブル設計



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
- has_many :sounds through :session_sounds -->


# ローカルでの動作方法
開発環境 
- MacOS
- ruby ver 6.0.0
- carrierwave
- MySQL
- AWS S3


ターミナル上で任意のディレクトリに移動した上で<br>

```
git clone
```
git cloneしたディレクトリに移動し
以下のコマンドを実行
```
bundle install
rails db:migrate
rails s
```

デフォルトであれば以下のURLにアクセス
- url: localhost:3000

