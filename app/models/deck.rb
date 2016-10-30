require 'pry'
class Deck < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :rounds
  has_many :cards

  validates :name, :creator_id, presence: true
  validate :validate_creator_id

  def validate_creator_id
    errors.add(:creator_id, "does not exist") unless User.exists?(self.creator_id)
  end
#I'm trying to create an instance variable that would
# hold an array of remaining card objects
  def remaining_cards
    return @remaining_cards if @remaining_cards #this if statement prevents the variable from being overridden
    @remaining_cards = self.cards.to_a
    self.save #attempting to persist the data
    @remaining_cards
  end

  def check(guess, question)
    answer = Card.find_by(question: question)
    return true if answer && guess == answer.answer
    false
  end
######### bug #############
  def remove(question)
    @remaining_cards.delete(question) #when this method runs, @remaining_cards is nil for some reason
    self.save
  end
######### bug #############

end
