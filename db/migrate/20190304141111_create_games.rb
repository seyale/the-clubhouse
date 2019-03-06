class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :host, index: true, foreign_key: {to_table: :users}
      t.string :skill_level
      t.string :game_type
      t.date :date
      t.time :time
      t.text :additional_info
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
