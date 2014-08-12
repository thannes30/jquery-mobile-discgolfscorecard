class User < ActiveRecord::Base
  has_many :games
  has_many :scores, through: :games
  has_secure_password

  validates :username, presence: true
  validates :username, :length => {:within => 3..20, too_short: "Username must be more than 3 characters.", too_long: "Username must be less than 20 characters."}
end
