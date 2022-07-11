# README

## usersテーブル

| Column             | Type       | Options                        |
| -------------------| ---------- | ------------------------------ |
| nickname           | string     | null: false                    |
| email              | string     | null: false                    |
| encrypted_password | string     | null: false                    |
| family_name	       | string	    | null: false                    |
| first_name         | string	    | null: false	                   |
| family_name_kana	 | string	    | null: false                    |
| first_name_kana    | string	    | null: false                    |
| birth_day	         | date	      | null: false                    |


### Association

 belongs_to :destination dependent: :destroy
 belongs_to :card dependent: :destroy

## purchaseテーブル

| Column               | Type       | Options                          |
| ---------------------| ---------- | -------------------------------- |
| user_id              | integer    | null: false, foreign_key: true   |
| card_number          | string	    | null: false                      |
| card_expiration_date | string	    | null: false                      |
| security_code        | string	    | null: false                      |
| post_code	           | string	    | null: false                      |
| prefecture	         | string	    | null: false                      |
| city	               | string	    | null: false                      |
| address	             | string	    | null: false                      |
| building_name	       | string     |                                  |
| phone_number	       | string     |                                  |

### Association

 belongs_to :user


## productテーブル

| Column             | Type       | Options                          |
|--------------------| ---------- | -------------------------------- |
| name	             | string     |	null: false                      |
| price	             | string	    | null: false                      |
| description	       | string	    | null: false                      |
| status	           | string	    | null: false                      |
| shipping_cost	     | string	    | null: false                      |
| shipping_days	     | string     |	null: false                      |
| prefecture_id	     | string	    | null: false                      |
| product_condition  | string     | null: false                      |
| judgment	         | string     |                                  |
| category_id	       | integer	  | null: false, foreign_key: true   |
| shipping_id	       | integer	  | null: false, foreign_key: true   |
| user_id	           | references	| null: false, foreign_key: true   |


### Association

