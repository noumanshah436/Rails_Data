class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :credit_card_number
      t.date :credit_card_expires_on

      t.timestamps
    end
  end
end
