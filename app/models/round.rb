class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  has_many :guesses
  has_many :played_cards, through: :deck, source: :cards

  validates :user_id, :deck_id, presence: true
  validate :validate_user_id, :validate_deck_id

  def validate_user_id
    errors.add(:user_id, "does not exist") unless User.exists?(self.user_id)
  end

  def validate_deck_id
    errors.add(:deck_id, "does not exist") unless Deck.exists?(self.deck_id)
  end

  def correct_guesses
    # this still needs some work
    self.guesses.select {|guess| guess.card_id.count == 1}.count
  end
end
