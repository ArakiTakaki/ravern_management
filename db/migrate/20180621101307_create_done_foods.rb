class CreateDoneFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :done_foods do |t|
      t.references :Client, foreign_key: true
      t.references :Food, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
