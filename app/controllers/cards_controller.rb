class CardsController < ApplicationController
  def new
    @deck = Deck.find(params[:deck_id])
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    
    @card.deck_id = params[:deck_id]

    if @card.save
      redirect_to deck_path(id: @card.deck_id)
    end
  end

  def index
    @cards = Card.where(deck_id: params[:deck_id])
    @deck_id = params[:deck_id]
  end

  def show  
    @card = Card.find_by(id: params[:id])
  end

  def edit
    @card = Card.find_by(id: params[:id])
  end

  def update
    @card = Card.find_by(id:  params[:id])

    if @card.update(card_params)
      redirect_to deck_path(id: @card.deck_id)
    end
  end

  private

  def card_params
    params.require(:card).permit(:content_front, :content_back, :deck_id)
  end
end
