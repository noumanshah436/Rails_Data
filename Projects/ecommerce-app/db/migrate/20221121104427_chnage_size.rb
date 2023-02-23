class ChnageSize < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :quantity, :integer, default: 0, null: false
    change_column :products, :size, :string, default: "1-3, 3-6", null: false

  end
end
