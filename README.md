## usersテーブル

| Column             | Type        | Options                   |
| ------------------ | ----------- | ------------------------- |
| email              | string      | null: false, unique: true |
| encrypted_password | string      | null: false               |
| nickname           | string      | null: false               |
| relationship       | integer     | null: false               |

### Association
- has_many :baby_users
- has_many :babys, through: :baby_users

## babysテーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| nickname            | string     | null: false                    |
| birth_day           | date       | null: false                    |

### Association
- has_many :baby_users
- has_many :users, through: :baby_users
- has_many :meals

## baby_usersテーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| user                | references | null: false, foreign_key: true |
| baby                | references | null: false, foreign_key: true |

### Association
- belongs_to :baby
- belongs_to :user


## mealsテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| food               | string     | null: false                    |
| date               | date       | null: false                    |
| meal_time          | integer    | null: false                    |
| baby               | references | null: false, foreign_key: true |

### Association
- belongs_to :baby



