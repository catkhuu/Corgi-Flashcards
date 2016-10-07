class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :card_id, { null: false }
      t.integer :round_id, { null: false }

      t.timestamps(null: false)
    end

    # add_foreign_key :guesses, :cards
    # add_foreign_key :guesses, :rounds

  end
end
