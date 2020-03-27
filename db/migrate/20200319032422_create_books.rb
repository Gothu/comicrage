class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books, id: :integer do |t|
      t.string :title
      t.text :comment
      t.text :image
      t.string :writer
      t.integer :price
      t.integer :stock
      t.integer :category_id, index: true, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
