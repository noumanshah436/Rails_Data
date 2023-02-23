class AddColor < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :color, :string, default: "", null: false, limit:25

  end
end
