# README

## usersテーブル

| Column             | Type       | Options                        |
| -------------------| ---------- | ------------------------------ |
| nickname           | string     | null: false                    |
| email              | string     | null: false, unique: true                    |
| encrypted_password | string     | null: false                    |
| family_name	       | string	    | null: false                    |
| first_name         | string	    | null: false	                   |
| family_name_kana	 | string	    | null: false                    |
| first_name_kana    | string	    | null: false                    |
| birth_day	         | date	      | null: false                    |


### Association

 belongs_to :user
 has_many :items
 has_many :purchases


## purchasesテーブル

| Column               | Type       | Options                          |
| ---------------------| ---------- | -------------------------------- |
| orders               | references | null: false, foreign_key: true   |
| post_code	           | string	    | null: false                      |
| prefecture_id	       | integer	  | null: false                      |
| city	               | string	    | null: false                      |
| address	             | string	    | null: false                      |
| building_name	       | string     |                                  |
| phone_number	       | string     | null: false                      |

### Association

 belongs_to :order



## itemsテーブル

| Column               | Type       | Options                          |
|--------------------- | ---------- | -------------------------------- |
| image                | string     |	null: false                      |
| name	               | string     |	null: false                      |
| description	         | text	      | null: false                      |
| category_id	         | integer	  | null: false, foreign_key: true   |
| item_status_id	     | integer    | null: false                      |
| shipping_cost_id	   | integer	  | null: false                      |
| prefecture_id	       | integer	  | null: false                      |
| shipping_days_id	   | integer    |	null: false                      |
| price	               | integer    | null: false                      |


### Association

belongs_to :user
belongs_to :orders

## orders テーブル

| Column               | Type       | Options                          |
|--------------------- | ---------- | -------------------------------- |
| user                 | references	| null: false, foreign_key: true   |
| item                 | references	| null: false, foreign_key: true   |

### Association

belongs_to :user
belongs_to :item
