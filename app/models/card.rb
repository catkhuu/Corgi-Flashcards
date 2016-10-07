class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses

  validates :question, :answer, :deck_id, presence: true
  validate :validate_deck_id

  def validate_deck_id
    errors.add(:deck_id, "does not exist") unless Deck.exists?(self.deck_id)
  end
end
