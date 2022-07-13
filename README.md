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
| user_id              | integer    | null: false, foreign_key: true   |
| post_code	           | string	    | null: false                      |
| prefecture_id	       | integer	  | null: false                      |
| city	               | string	    | null: false                      |
| address	             | string	    | null: false                      |
| building_name	       | string     |                                  |
| phone_number	       | string     |                                  |

### Association

 belongs_to :user



## itemsテーブル

| Column               | Type       | Options                          |
|--------------------- | ---------- | -------------------------------- |
| name	               | string     |	null: false                      |
| price	               | string	    | null: false                      |
| description	         | string	    | null: false                      |
| item_status_id	     | integer    | null: false                      |
| shipping_cost_id	   | integer	  | null: false                      |
| shipping_days_id	   | integer    |	null: false                      |
| prefecture_id	       | integer	  | null: false                      |
| judgment	           | string     |                                  |
| category_id	         | integer	  | null: false, foreign_key: true   |
| shipping_id	         | integer	  | null: false, foreign_key: true   |
| user                 | references	| null: false, foreign_key: true   |

### Association

belongs_to :user
belongs_to :category
belongs_to_active_hash :status
belongs_to_active_hash :prefecture
belongs_to :category

