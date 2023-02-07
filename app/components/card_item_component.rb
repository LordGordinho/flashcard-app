class CardItemComponent < ViewComponent::Base
  def initialize(card:)
    @card = card
  end
end
