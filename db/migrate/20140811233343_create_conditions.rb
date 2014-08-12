class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :weather
      t.integer :wind
      t.integer :temperature
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
