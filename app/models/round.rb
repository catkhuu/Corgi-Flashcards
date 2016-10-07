class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  has_many :guesses
  has_many :played_cards, through: :decks, source: :cards
end
