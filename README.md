
### アプリケーション名
### 「kitto勝男」 
(fishman.png)

### アプリケーション概要
### 「高校生と大学生が視野を広げるために、安価に社会人とのお話できる1時間を購入できるサービスです。」

## 🌐 App URL
https://kitto-katsuo.herokuapp.com/

## :key:Basic認証番号
ID: admin
Pass: 1234

### テスト用アカウント

## :bust_in_silhouette: 「出品者用」
メールアドレス名: 222@gmail.com
パスワード: 222

## :busts_in_silhouette: 「購入者用」　
メールアドレス: 111@gmail.com <br>
パスワード: 111  <br>
購入用カード情報 番号：4242424242424242  <br>
　　　　　　　　有効期限：12 月/20 年    <br>
        　　　セキュリティコード：111


### :computer: 使用技術(開発環境)
Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code / Trello / Draw.io /Adobe XD 


### :pencil2: デザイン設計/ワイヤーフレーム
https://xd.adobe.com/view/d9bd4993-7080-43d1-888f-5979c2d82faa-8cee/


### :open_file_folder:データベース設計
![画像名](ER図面.png) 
https://drive.google.com/file/d/1nJHTUF4NiHQphii31tVkrSqc6k1B-Uon/view

### テーブル設計
## Users テーブル

| Column              | Type    | Options                   |
| ------------------- | ------- | ------------------------- |
| nickname            | string  | null: false               |
| email               | string  | null: false ,unique: true |
| password            | string  | null: false               |
| family_name         | string  | null: false               |
| last_name           | string  | null: false               |
| family_name_kana    | string  | null: false               |
| last_name_kana      | string  | null: false               |
| birth_day           | date    | null: false               |
| student_division_id | integer | null: false               |

### Association

- has_many :tickets
- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages
- has_many :orders

## Tickets テーブル

| Column       | Type       | Options                         |
| ------------ | ---------- | ------------------------------- |
| name         | string     | null: false                     |
| image        | string     | null: false                     |
| introduction | text       | null: false                     |
| category_id  | integer    | null: false                     |
| user         | references | null: false , foreign_key: true |

### Association

- belongs_to :user
- has_many :rooms
- has_many :comments
- has_many :orders

## Orders テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| price  | integer    | null: false                    |
| user   | references | null: false ,foreign_key: true |
| ticket | references | null: false ,foreign_key: true |

### Association

- belongs_to :ticket
- belongs_to :user

### Room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false ,foreign_key: true |
| ticket | references | null: false ,foreign_key: true |
| room   | references | null: false ,foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

### Rooms テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     |                                |
| ticket | references | null: false ,foreign_key: true |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :tickets, through: room_users
- has_many :messages

### Messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false ,foreign_key: true |
| room    | references | null: false ,foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
