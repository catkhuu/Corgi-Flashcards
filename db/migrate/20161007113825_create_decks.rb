class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string  :name, { null: false }
      t.integer :creator_id, { null: false }

      t.timestamps(null: false)
    end

    # add_foreign_key :decks, :users, name: :creator_id
  end
end
