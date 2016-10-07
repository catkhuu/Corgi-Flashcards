class User < ActiveRecord::Base
  has_many :rounds
  has_many :decks, class_name: "User", foreign_key: :creator_id
  has_many :guesses, through: :rounds
  has_many :played_decks, through: :rounds, source: :deck
end
