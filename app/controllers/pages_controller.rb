class PagesController < ApplicationController
  def home
    @cards = Card.all
  end
end
