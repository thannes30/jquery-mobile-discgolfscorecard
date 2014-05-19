class Game < ActiveRecord::Base
  has_many :scores
  has_many :users, through: :scores


  def get_weather
  end

end
