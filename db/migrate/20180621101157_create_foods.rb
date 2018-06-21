class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :content
      t.integer :price
      t.string :image
      t.references :Category, foreign_key: true
      t.references :Course, foreign_key: true

      t.timestamps
    end
  end
end
