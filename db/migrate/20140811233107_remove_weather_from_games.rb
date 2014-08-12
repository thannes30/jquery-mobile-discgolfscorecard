class RemoveWeatherFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :weather, :string
  end
end
