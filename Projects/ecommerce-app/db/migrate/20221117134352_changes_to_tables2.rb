class ChangesToTables2 < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :price, :decimal, precision: 5, scale: 2, default: 0.0,null: false
    add_column :products, :active, :boolean, default: true, null: false

    change_column_null :products, :model, false
    change_column_null :products, :quantity, false
    change_column_null :products, :name, false
    change_column :products, :size, :integer, default: 0, null: false

  end
end
