class PagesController < ApplicationController
  def home
    if params[:query].present?
      @cards = Card.search_by_name_and_type(params[:query])
    else
      @cards = Card.all
    end
  end
end
