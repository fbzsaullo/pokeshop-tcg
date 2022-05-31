# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

all_cards = Pokemon::Card.where(page: 1, pageSize: 151)

all_cards.each do |card|
  name = card.name
  type = card.types
  rarity = card.rarity
  image = card.images.large
  price = 99.99
  Card.new(name: name, type: type, rarity: rarity, image: image, price: price, user_id: 1)
end
