class CreateProfile < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :username, null: false
      t.integer :user_id, null: false
      t.string :first_name, null: true
      t.string :last_name, null: true
      t.integer :gender, null: true
      t.date :birthday, null: true

      t.timestamps
    end
  end
end
