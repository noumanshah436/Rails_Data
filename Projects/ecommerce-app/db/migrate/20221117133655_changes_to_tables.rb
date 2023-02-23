class ChangesToTables < ActiveRecord::Migration[5.2]
  def change

    remove_column :products, :price, :decimal
    remove_column :products, :status, :boolean

    # change_column_null :products, :name, false
    # change_column_default :products, :approved, from: true, to: false


    # rename_column :products, :status, :active

    # add_column :products, :price, :decimal, precision: 5, scale: 2


  end
end
