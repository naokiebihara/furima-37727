# README


README
usersテーブル
Column	Type	Options
nickname	string	null: false
email	string	null: false, unique: true
encrypted_password	string	null: false
last_name	string	null: false
first_name	string	null: false
last_name_kana	string	null: false
first_name_kana	string	null: false
birthday	date	null: false
Association
has_many :items has_many :orders

purchasesテーブル
Column	Type	Options
order	references	null: false, foreign_key: true
post_code	string	null: false
prefecture_id	integer	null: false
city	string	null: false
address	string	null: false
building_name	string	
phone_number	string	null: false
Association
belongs_to :order

itemsテーブル
Column	Type	Options
user	references	null: false, foreign_key: true
name	string	null: false
description	text	null: false
category_id	integer	null: false
item_status_id	integer	null: false
shipping_cost_id	integer	null: false
prefecture_id	integer	null: false
shipping_day_id	integer	null: false
price	integer	null: false
Association
belongs_to :user has_one :order

orders テーブル
Column	Type	Options
user	references	null: false, foreign_key: true
item	references	null: false, foreign_key: true
Association
belongs_to :user belongs_to :item has_one :purchase