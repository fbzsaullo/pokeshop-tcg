class CardsController < ApplicationController
  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
    @pokedb = Pokedb.new
  end

  def create
    @card = Card.new(card_params)
    db = Pokedb.find(params[:card][:name].to_i)
    @card.name = db.name
    @card.category = db.category
    @card.rarity = db.rarity
    @card.image = db.image
    @card.user = current_user
    if @card.save
      redirect_to card_path(@card)
    else
      render :new
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    db = Pokedb.find_by(name: params[:card][:name])
    @card = Card.find(params[:id])
    @card.name = db.name
    @card.category = db.category
    @card.rarity = db.rarity
    @card.image = db.image
    @card.price = params[:card][:price]
    @card.update(name: @card.name, price: @card.price)
    redirect_to card_path
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to root_path
  end

  private

  def card_params
    params.require(:card).permit(:name, :price)
  end
end
