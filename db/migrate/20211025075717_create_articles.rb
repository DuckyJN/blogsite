class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :subheader
      t.text :body, null: false, default: ""
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
