class CardsController < ApplicationController
  def index
    @cards = Card.all
    if params[:query].present?
      @cards = Card.global_search(params[:query]).paginate(params[:page]).per(2)
    else
      @cards = Card.page(params[:page]).per(2)
    end
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
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
    @card = Card.find(params[:id])
    @card.update(card_params)
    redirect_to card_path
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to cards_path
  end

  private

  def card_params
    params.require(:card).permit(:name, :type, :rarity, :price, :image)
  end
end
