class Item < ApplicationRecord
	belongs_to :user
	attachment :image
	has_many :item_comments, dependent: :destroy
end
