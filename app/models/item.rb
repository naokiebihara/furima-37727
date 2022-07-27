class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user

  # アクティブハッシュとのアソシエーション
  belongs_to :category
  belongs_to :prefecture
  belongs_to :item_status
  belongs_to :shipping_cost
  belongs_to :shipping_date

  has_one_attached :image

  # ジャンルの選択が「--」の時は保存不可
  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :prefecture_id
    validates :item_status_id
    validates :shipping_cost_id
    validates :shipping_date_id
  end

end
