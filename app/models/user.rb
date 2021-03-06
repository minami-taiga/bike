class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	attachment :profile_image

	has_many :items, dependent: :destroy
	has_many :item_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	validates :name, presence: true
  	validates :email, presence: true

end
