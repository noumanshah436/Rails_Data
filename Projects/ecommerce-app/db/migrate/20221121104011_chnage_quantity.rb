class ChnageQuantity < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :quantity, :string, default: "1-3", null: false
  end
end
