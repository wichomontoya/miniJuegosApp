class CreateRankings < ActiveRecord::Migration[5.0]
  def change
    create_table :rankings do |t|
      t.references :users, foreign_key: true
      t.references :games, foreign_key: true
      t.integer :ranking

      t.timestamps
    end
  end
end
