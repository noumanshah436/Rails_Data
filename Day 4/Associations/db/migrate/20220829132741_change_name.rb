class ChangeName < ActiveRecord::Migration[5.2]
  def change
    change_column :accounts, :account_number, :integer
  end
end
