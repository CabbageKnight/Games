class CreateCabbages < ActiveRecord::Migration
  def change
    create_table :cabbages do |t|
      t.string :name
      t.integer :game_id
      t.text :content

      t.timestamps null: false
    end
  end
end
