class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :card

  validates :card_id, :round_id, presence: true
  validate :validate_card_id, :validate_round_id

  def validate_card_id
    errors.add(:card_id, "does not exist") unless Card.exists?(self.card_id)
  end

  def validate_round_id
    errors.add(:round_id, "does not exist") unless Round.exists?(self.round_id)
  end
end
