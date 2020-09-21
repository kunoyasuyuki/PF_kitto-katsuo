# テーブル設計

## USERS テーブル
| Column              | Type    | Options     |
| --------------------| --------| ----------- |
| nickname            | string  | null: false |
| email               | string  | null: false ,unique: true |
| password            | string  | null: false |
| family_name         | string  | null: false |
| last_name           | string  | null: false |
| family_name_kana    | string  | null: false |
| last_name_kana      | string  | null: false |
| birth_day           | date    | null: false |
| student_division_id | integer | null: false |

### Association
- has_many :tickets 
- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages
- has_many :orders


## TICKETS テーブル
| Column                     | Type   | Options     |
| ---------------------------| ------ | ----------- |
| name                       | string | null: false |
| image                      | string | null: false |
| introduction               | text   | null: false |
| user                       | references | null: false , foreign_key: true|
| category_id                | references | null: false , foreign_key: true|


### Association
- belongs_to :user
- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages
- has_many :orders


## Orders テーブル
| ---------------------------| -----------| -------------------------------|
| price                      | integer    | null: false                    |
| user   　 　                | references | null: false ,foreign_key: true |
| ticket   　　               | references | null: false ,foreign_key: true |

### Association
- belongs_to :ticket
- belongs_to :user


### Room_usersテーブル
| ---------------------------| ------     | ------------------------------ |
| user   　 　                | references | null: false ,foreign_key: true |
| ticket   　　               | references | null: false ,foreign_key: true |
| room    　　                | references | null: false ,foreign_key: true |

### Association
- belongs_to :room
- belongs_to :ticket
- belongs_to :user


### Roomsテーブル
| ---------------------------| -----------| ------------------------------- |
| name                       |     string | null: false                     |


### Association
- has_many :room_users
- has_many :users, through: room_users
- has_many :tickets, through: room_users
- has_many :messages


### Messagesテーブル
| ---------------------------| -----------| ------------------------------- |
| content   　 　             | string     | null: false                     |
| user   　 　                | references | null: false ,foreign_key: true  |
| room    　　                | references | null: false ,foreign_key: true  |

### Association
- belongs_to  :room
- belongs_to  :user
- belongs_to  :tickets
