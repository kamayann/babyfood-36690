## アプリ名
BabyFood
## 概要
離乳食の記録を残すためのアプリケーション。
離乳食を進めるときに、栄養バランスを考えたり何を食べさせたかを記録して、後から振り返れるようにすることを目的にしています。
## 本番環境
https://babyfood-36690.herokuapp.com/

テスト用アカウント<br>
   メールアドレス:test1@test.com<br>
   パスワード:111aaa

## 制作背景
今回、ペルソナを30歳女性、育休中で０歳児の子どもがいるという設定にしました。これは私の実の姉と重なる点が多々あり、彼女が長女の離乳食を進めるときに栄養バランスが気になったり、同じようなものをあげてしまいがちになるということから、それらの問題を解決するために作成しました。まず、離乳食の履歴を記述することで、どのように離乳食を進めていけているかの記録を取ったり、好みの味付けなども記載しておくことができます。そして、現時点ではまだ未実装ですが、今後栄養バランスも確認できるようにレーダーチャートなどを用いて実装していきたいと思っています。
また、姉が長女を保育所に入所させるときに、保育所から入所までに必ずこの食材を全て最低3回食べさせてくださいという宿題が出ていました。食材の種類は20種類以上あり、この宿題を進めていく過程でどの食材を食べさせていて、何がまだなのかわかりにくい状況に陥りました。こう言ったときにも、記録を取ることで手助けになるツールとして活躍できるものはないかと思い、作成いたしました。

## 使用技術
## バックエンド
Ruby,RubyonRails
## フロントエンド
HTML,SCSS,Bootstrap
##　データベース
MySQL
## アプリケーションサーバー
Heroku
## ソース管理
GitHub, GitHubDesktop
## エディタ
VSCode


## 今後実装したい機能
今後実装したい機能としましては、まず何をいつ食べさせたのかを確認しやすくするように、検索機能を実装したいと思っています。
そして、その後レーダーチャートなどを用いて食材それぞれがどのような栄養分布になっているのかを視覚的にわかるようにChart.jsを用いて実装したいと思っています。
また、現時点ではひとりの人が複数の子どもの情報を更新していく形になっているので、今後複数の人が、子どもたちの情報を更新していけるように、子どもにID情報を付加して、ユーザー登録した人は後からでも登録済みの子どもと紐づけられるようにしたいと思っています。

   
## DB設計
## usersテーブル

| Column             | Type        | Options                   |
| ------------------ | ----------- | ------------------------- |
| email              | string      | null: false, unique: true |
| encrypted_password | string      | null: false               |
| nickname           | string      | null: false               |
| relationship       | integer     | null: false               |

### Association
- has_many :babies

## babiesテーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| nickname            | string     | null: false                    |
| birth_day           | date       | null: false                    |

### Association
- has_many :meals
- belongs_to :user

## mealsテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| food               | string     | null: false                    |
| meal_date          | date       | null: false                    |
| meal_time          | integer    | null: false                    |
| baby               | references | null: false, foreign_key: true |

### Association
- belongs_to :baby



