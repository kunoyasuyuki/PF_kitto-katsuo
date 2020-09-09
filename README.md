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
- has_many :entries
- has_many :orders
- has_many :messages
- has_one  :credit

## CREDIT テーブル
| Column              | Type    | Options     |
| --------------------| ------  | ----------- |
| card-number         | string  | null: false |
| expiration-date     | integer | null: false ,unique: true |
| security-code       | integer | null: false |
| user                | references | null: false , foreign_key: true|

### Association
- belongs_to :ticket

## TIKETS テーブル
| Column                     | Type   | Options     |
| ---------------------------| ------ | ----------- |
| name                       | string | null: false |
| image                      | string | null: false |
| introduction               | text   | null: false |
| user                       | references | null: false , foreign_key: true|
| category_id                | references | null: false , foreign_key: true|

### Association
- belongs_to :user
- has_many :entries
- has_many :orders
- has_one:category

## Orders テーブル
| ---------------------------| -----------| -------------------------------|
| price                      | integer    | null: false                    |
| user   　 　                | references | null: false ,foreign_key: true |
| tiket   　　                | references | null: false ,foreign_key: true |

### Association
- belongs_to :tiket
- belongs_to :user


## CATEGORY テーブル
| ---------------------------| ------  | ----------- |
| name                       | string  | null: false |

### Association
- belongs_to :tiket

### Entriesテーブル
| ---------------------------| ------     | ------------------------------ |
| user   　 　                | references | null: false ,foreign_key: true |
| tiket   　　                | references | null: false ,foreign_key: true |
| room    　　                | references | null: false ,foreign_key: true |

### Associatios
- belongs_to :tiket
- belongs_to :user
- has_one    :rooms

### Roomsテーブル
| ---------------------------| -----------| ------------------------------- |
| user   　 　                | references | null: false ,foreign_key: true |
| tiket   　　                | references | null: false ,foreign_key: true |

### Association
- belongs_to  :message
- has_one     :entries


### Messagesテーブル
| ---------------------------| -----------| ------------------------------- |
| message   　 　             | text       | null: false                     |
| user   　 　                | references | null: false ,foreign_key: true  |
| room    　　                | references | null: false ,foreign_key: true  |

### Association
- belongs_to  :room
- belongs_to  :user
