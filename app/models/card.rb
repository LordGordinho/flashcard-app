class Card < ApplicationRecord
  belongs_to :deck
  has_many :card_items

  after_save :add_position

  def add_position
    return if position.present?

    last_card = Card.where('created_at < ? AND deck_id = ?', created_at, deck_id)

    self.update_column(:position, (last_card.count + 1))
  end
end
