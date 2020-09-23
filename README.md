### アプリケーション名

「kitto-kasuo」

### アプリケーション概要

「学生と社会人が話せる機会を提供するサービスです。」

### 公開 URL

https://kitto-katsuo.herokuapp.com/

認証情報
ID: admin
Pass: 1234

### テスト用アカウント

・「購入者用」　
メールアドレス: 111@gmail.com
パスワード: 111
購入用カード情報
番号：4242424242424242
期限：12 月/20 年
セキュリティコード：111

・「出品者用」
メールアドレス名: 222@gmail.com
パスワード: 222

### データベース設計

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
