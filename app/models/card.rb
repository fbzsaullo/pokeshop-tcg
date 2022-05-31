class Card < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :name, presence: true
  validates :category, presence: true
  validates :rarity, presence: true
  validates :image, presence: true
  validates :price, presence: true
end
