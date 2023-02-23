class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, limit: 16
      t.string :last_name
      t.string :email_address
      t.string :address_line_one
      t.string :address_line_two
      t.string :address_city
      t.string :address_state, limit: 2
      t.integer :address_zip

      t.timestamps
    end
  end
end
