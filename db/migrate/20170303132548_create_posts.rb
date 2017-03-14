class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :excerpt
      t.date :create_date
      t.string :author
      t.text :body
      t.string :category_id

      t.timestamps
    end
  end
end
