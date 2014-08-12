class RemoveTemperatureFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :temperature, :integer
  end
end
