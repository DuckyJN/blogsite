class CreateProfile < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :username, null: false
      t.integer :user_id, null: false
      t.string :first_name, null: false
      t.string :last_name
      t.integer :gender, null: false
      t.date :birthday, null: false

      t.timestamps
    end
  end
end
