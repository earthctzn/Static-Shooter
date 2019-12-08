class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :high_score
      t.string :player_name
      t.string :game_id

      t.timestamps
    end
  end
end
