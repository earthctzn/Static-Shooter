class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :game_score
      t.integer :high_score
      t.string :player_id
      t.string :game_id

      t.timestamps
    end
  end
end
