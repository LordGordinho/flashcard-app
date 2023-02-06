class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def create
    @deck = Deck.new(deck_params)

    if @deck.save
      redirect_to decks_path
    end
  end

  def update
    @deck = Deck.find(params[:id])

    @deck.update(deck_params)
  end

  def delete
    @deck = Deck.find(params[:id])

    @deck.delete
  end

  private

  def deck_params
    params.require(:deck).permit(:name)
  end
end
