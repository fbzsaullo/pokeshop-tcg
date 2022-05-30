class Card < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :type, presence: true
  validates :rarity, presence: true
  validates :image, presence: true
  validates :price, presence: true
end
