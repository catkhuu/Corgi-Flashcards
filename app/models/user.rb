class User < ActiveRecord::Base
  has_secure_password

  has_many :rounds
  has_many :decks, class_name: "User", foreign_key: :creator_id
  has_many :guesses, through: :rounds
  has_many :played_decks, through: :rounds, source: :deck

  validates :username, :email, presence: true
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
