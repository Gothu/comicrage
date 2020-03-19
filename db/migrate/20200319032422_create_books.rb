class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :title
      t.text :comment
      t.text :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end