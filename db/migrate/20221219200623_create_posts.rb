class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :content
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
