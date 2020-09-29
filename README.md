
## :bookmark: アプリケーション名<p align="center"> <img src="Kitto-katsuo.png" width=35% height=15%></p>

<p align ="center">
  <img src="top-image.png" width=60% height=20%>
</p>

### :bookmark: アプリケーション概要

### 学生が視野を広げるため、社会人とお話しする時間を安価に購入できるサービスです。

<br>

### :bookmark: 制作背景
##### :one: 私は、教育学部を卒業しましたが、教員とはならず民間企業に進みました。振り返ると、身近な社会人が教員だったということが強く影響し、職業選択の視野が狭まっていました。そのため、学生にとって気軽な価格で様々な職業の社会人とお話しできるサービスがあれば、より広い視野を持ち、進路を選択できる機会が増えるのではないかと考え制作いたしました。

##### :two: 教育実習を通じ、学校では予想以上にスマホやSNSが浸透していました。今後この流れは加速するため、情報の入手だけで終わらず、実際に若い人たちが、視野を広げていく体験を職業選択という切り口から経験できるサービスを提供したいと思い制作いたしました。
 
<br>

###   :boy: ペルソナ 
##### :one: 今の自分に少し自信が持て無かったり、目標とする将来像が明確にできない事に悩みつつも、未来に向かい成長したいという前向きな気持ちを秘めた、進路選択を控える学生(年齢は高校生以上)。<br>
##### :two: 目標とする将来像は明確になりつつも、その目標に近づくためのステップを明確にしたいと思っており、少しの迷いを抱えながら進路に向かい踏み出していこうとしている学生。<br><br><br>

##   :thought_balloon: ユーザストーリー <br><br>


### :anguished: 想定したユーザーが抱える課題 <br>
##### :one: 興味のある進路についてのネットの情報は入手できたが、実際の現場の方々の等身大の声が聞けず、自身の適性も分からないことから、進路選択に迷ってしまい踏み出せないでいる。 <br>
##### :two: 勉強と部活に追われ、忙しく時間が過ぎてしまい、自身の将来についての選択を見つめるきっかけが得られていない。 <br><br>

###  :bulb: ユーザの課題解決のための実装方針 <br>
##### :one: 使ってもらうためのハードルを下げるため、学生に手が届く金額でサービスを提供する。価格はユーザの学生区分に応じて、高校生は1,000円、それ以上の学生は1,500円として購入価格を一律設定することで、金銭的に気軽に使ってもらえるようにする。そして、チケットの購入を通じて自身の将来について見つめる時間を創出する。<br>

##### :two: 他のチケットサービスよりも、「職業」というキーワードに重視した設計をすることで、学生にとって職業という観点から将来についての選択を考えるための場を提供できるサービスに近づける。サイトのデザインは、学生が近づきやすいように設計し、できるだけ気軽に使ってもらえるように実装を進める。<br><br><br><br>


### :high_brightness: 制作したサイトイメージ 
<p align ="center">
<img src="https://user-images.githubusercontent.com/68989986/94395669-23f8d200-019b-11eb-8ce3-cbb797c8ade7.gif" width=60% height=20%>
</p> 

<br><br>

##### :balloon: サイトキャラクターに勝男という、昔は弱々しかった男の子を設定しました。そして、チケットの購入を通じての出会いがきっかけとなり、現在のたくましい勝男に成長したというイメージをサイト上で描きました。使ってもらう方にも勝男と同じような成長体験をして頂けることをイメージし、実装を進めました。

<br>

###  :muscle: 工夫した点 <br>
##### :one: DM機能の実装を行いました。ポートフォリオの作成を通して、最も難易度が高く、最も力を入れた機能となりました。きちんと、チケット毎にチャットルームが開き、出品者とチャットが開始されるDM機能を実装いたしました。
　　　
   　　　
<p align ="center">
<img src="https://user-images.githubusercontent.com/68989986/94394320-0aa25680-0198-11eb-92f1-6fa225018757.gif" width=60% height=20%>
</p> <br> 

##### :two: カテゴリ検索機能を実装し、ユーザが気になるカテゴリに対して素早くたどり着けるよう実装しました。
<p align ="center">
<img src="https://user-images.githubusercontent.com/68989986/94396014-f52f2b80-019b-11eb-8ab3-f1119fd1cecc.gif" width=60% height=20%>
</p> <br>

##### :three: 購入価格の自動調整機能を実装し、購入者の学生区分によって価格が自動で調整されるように実装しました。<br>　　(高校生は1,000円、大学生は1,500円で購入価格が一律で決定されます。)
<p align ="center">
<img src="https://user-images.githubusercontent.com/68989986/94397949-8f44a300-019f-11eb-8bd5-8a040f0e1af0.gif" width=60% height=20%>
</p> <br>

<br>

## 🌐 App URL

:link:https://kitto-katsuo.herokuapp.com/

## :key:Basic 認証番号

#### ID: admin
#### Password: 1234

### テスト用アカウント

#### :bust_in_silhouette: 「出品者用」

##### メールアドレス名: aaa111@gmail.com <br>
##### パスワード: aaa111

#### :busts_in_silhouette: 「購入者用」　

##### メールアドレス: bbb222@gmail.com <br>
##### パスワード: bbb222 <br>

#### :credit_card: 購入用カード情報 <br>
##### カード番号：4242424242424242 <br>
##### 有効期限：12 月/20 年 <br>
##### セキュリティコード：123

<br>

### :computer: 使用技術(開発環境)
#### Ruby / Ruby on Rails / Java Script / Html・Css / MySQL / GitHub / Heroku / AWS / Visual Studio Code / Trello / Draw.io /Adobe XD

<br>

### :pencil2: サイト設計 (ワイヤーフレーム)

<p align ="center">
  <img src="ワイヤーフレーム2.png" width=60% height=30%>
</p>

##### 【詳細ページ(Adobe XD)】:link: https://xd.adobe.com/view/d9bd4993-7080-43d1-888f-5979c2d82faa-8cee/

<br>

### :open_file_folder:データベース設計

<p align ="center">
  <img src="ER図面.png" width=60% height=10%>
</p>

##### 【詳細ページ(Draw.io)】:link: https://drive.google.com/file/d/1nJHTUF4NiHQphii31tVkrSqc6k1B-Uon/view

<br>

## :book:テーブル設計

### Users テーブル

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

### Tickets テーブル

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

### Orders テーブル

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
