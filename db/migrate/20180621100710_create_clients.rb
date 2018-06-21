class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :table_number
      t.references :Course, foreign_key: true
      t.integer :client_count
      t.datetime :check_in
      t.datetime :check_out

      t.timestamps
    end
  end
end
