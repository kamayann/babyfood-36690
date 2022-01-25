## usersテーブル

| Column             | Type        | Options                   |
| ------------------ | ----------- | ------------------------- |
| email              | string      | null: false, unique: true |
| encrypted_password | string      | null: false               |
| nickname           | string      | null: false               |
| relationship       | integer     | null: false               |

### Association
- has_many :babys

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



