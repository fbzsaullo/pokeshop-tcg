class Card < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :name, :category, :rarity, :image, :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_type,
    against: [ :name, :category ],
    using: {
      tsearch: { prefix: true }
    }
end
