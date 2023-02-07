class CardItemsController < ApplicationController
  def create
    @card_item = CardItem.new(card_item_params)

    unless @card_item.save
      p  @card_item.errors.full_messages
    end
  end

  private

  def card_item_params
    params.permit(:card_id, :is_correct)
  end
end
