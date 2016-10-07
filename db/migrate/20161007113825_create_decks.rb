class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string  :name, { null: false }
      t.integer :creator_id

      t.timestamps(null: false)
    end
    add_foreign_key :decks, :users, column: :creator_id
  end
end
