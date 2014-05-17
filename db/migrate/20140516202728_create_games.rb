class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :course
      t.integer :temperature
      t.integer :wind
      t.string :weather

      t.timestamps
    end
  end
end
