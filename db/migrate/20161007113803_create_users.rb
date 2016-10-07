class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :username, { null: false, limit: 35}
      t.string  :password_digest,  { null: false }
      t.string  :email,  { null: false }

      t.timestamps(null: false)
    end
  end
end
