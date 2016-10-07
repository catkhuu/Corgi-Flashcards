class Deck < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :rounds
  has_many :cards
end
