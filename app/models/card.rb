class Card < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :name, :category, :rarity, :image, :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_synopsis,
    against: [ :title, :synopsis ],
    using: {
      tsearch: { prefix: true }
    }
end
