class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :user_id, { null: false }
      t.integer :deck_id,  { null:false }

      t.timestamps(null: false)
    end
    # add_foreign_key :rounds, :users
    # add_foreign_key :rounds, :decks

  end
end
