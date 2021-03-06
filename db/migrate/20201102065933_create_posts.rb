class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string  :bookname,        null: false
      t.string  :author,          null: false
      t.string  :text,            null: false
      t.string  :story,           null: false
      # t.integer :category_id,     null: false
      # t.integer :recommend_id,    null: false
      t.integer :user_id,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
