class Deck < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :rounds
  has_many :cards

  validates :name, :creator_id, presence: true
  validate :validate_creator_id

  def validate_creator_id
    errors.add(:creator_id, "does not exist") unless User.exists?(self.creator_id)
  end
end
