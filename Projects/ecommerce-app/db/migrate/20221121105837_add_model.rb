class AddModel < ActiveRecord::Migration[5.2]
  def change
    change_column_null :products, :model, true
  end
end
