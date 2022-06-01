# Populate your users first

all_cards = Pokemon::Card.where(page: 1, pageSize: 5)

all_cards.each do |card|
  name = card.name
  category = card.types.first
  rarity = card.rarity
  image = card.images.large
  price = 9.99
  user_id = rand(1..5)
  Card.create(name: name, category: category, rarity: rarity, image: image, price: price, user_id: user_id)
end

cards_db = Pokemon::Card.where(page: 1, pageSize: 15)

cards_db.each do |card|
  name = card.name
  category = card.types.first
  rarity = card.rarity
  image = card.images.large
  Pokedb.create(name: name, category: category, rarity: rarity, image: image)
end
