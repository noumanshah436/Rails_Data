class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :size
      t.text :description, null: false
      t.string :model
      t.boolean :status
      t.integer :quantity
      t.references :user, foreign_key: true, null: false


      t.timestamps
    end
  end
end
