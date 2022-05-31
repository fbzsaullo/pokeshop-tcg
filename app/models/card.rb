class Card < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :name, :category, :rarity, :image, :price, presence: true
end
