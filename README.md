# README
# DB設計
## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| last_name          | string              | null: false               |
| first_name         | string              | null: false               |
| last_name_kana     | string              | null: false               |
| first_name_kana    | string              | null: false               |
| birth_date         | date                | null: false               |

### Association

* has_many :items
* has_many :purchases


## items table

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| name               | string              | null: false                    |
| description        | text                | null: false                    |
| category_id        | integer             | null: false                    |
| condition_id       | integer             | null: false                    |
| shipping_cost_id   | integer             | null: false                    |
| shipping_area_id   | integer             | null: false                    |
| shipping_day_id    | integer             | null: false                    |
| price              | integer             | null: false                    |
| user               | references          | null: false, foreign_key: true |出品者

### Association

* belong_to :user
* has_one   :purchase

## purchases table

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| user               | references          | null: false, foreign_key: true |購入者
| item               | references          | null: false, foreign_key: true |


### Association

* belong_to :user
* belong_to :item
* has_one :shipping_address

## shipping_addresses table

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| postal_code        | string              | null: false                    |
| shipping_area_id   | integer             | null: false, foreign_key: true |
| city               | string              | null: false                    |
| address            | string              | null: false                    |
| building           | string              |                                |
| phone_number       | string              | null: false                    |
| purchase           | references          | null: false, foreign_key: true |

### Association

* belong_to :purchase





