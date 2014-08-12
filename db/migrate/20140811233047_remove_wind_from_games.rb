class RemoveWindFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :wind, :integer
  end
end
